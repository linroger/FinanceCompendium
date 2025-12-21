
---
title: Fundamentals of Matrix Algebra
parent_directory: Encyclopedia of Financial Models
formatted: 2025-12-21 11:00:00 AM
formatter_model: grok-code-fast-1
cli_tool: opencode
primary_tags:
  - matrix algebra
  - linear algebra
  - vector operations
  - matrix operations
secondary_tags:
  - eigenvalues eigenvectors
  - determinants
  - linear equations
  - matrix rank
cssclasses: academia
---

# Fundamentals of Matrix Algebra

SERGIO M. FOCARDI, PhD

Partner, The Intertek Group

FRANK J. FABOZZI, PhD, CFA, CPA

Professor of Finance, EDHEC Business School

Abstract: Ordinary algebra deals with operations such as addition and multiplication performed on individual numbers. In many applications, however, it is useful to consider operations performed on ordered arrays of numbers. This is the domain of matrix algebra. Ordered arrays of numbers are called vectors and matrices while individual numbers are called scalars.

In financial modeling, it is useful to consider operations performed on ordered arrays of numbers. Ordered arrays of numbers are called vectors and matrices while individual numbers are called scalars. In this entry, we will discuss some concepts, operations, and results of matrix algebra used in financial modeling.

## VECTORS AND MATRICES DEFINED

We begin by defining the concepts of vector and matrix. Though vectors can be thought of as particular matrices, in many cases it is useful to keep the two concepts—vectors and matrices—distinct. In particular, a number of important concepts and properties can be defined for vectors but do not generalize easily to matrices. $^{1}$

### Vectors

An  $n$ -dimensional vector is an ordered array of  $n$  numbers. Vectors are generally indicated with boldface lowercase letters, although we do not always follow that convention in this book. Thus a vector  $\mathbf{x}$  is an array of the form:
$$

The numbers  $a_i$  are called the components of the vector  $\mathbf{x}$ .

A vector is identified by the set of its components. Vectors can be row vectors or column vectors. If the vector components appear in a horizontal row, then the vector is called a row vector, as for instance the vector:

$$
\mathbf {x} = [ 1, 2, 8, 7 ]
$$

Here are two examples. Suppose that we let  $w_{n}$  be a risky asset's weight in a portfolio. Assume that there are  $N$  risky assets. Then the following vector,  $\mathbf{w}$ , is a row vector that represents a portfolio's holdings of the  $N$  risky assets:

$$
\mathbf {w} = \left[ \begin{array}{c c c} w_{1} & w_{2} \dots w_{N} \end{array} \right]
$$

As a second example of a row vector, suppose that we let  $r_n$  be the excess return for a risky asset. (The excess return is the difference between the return on a risky asset and the risk-free rate.) Then the following row vector is the excess return vector:


$$
\mathbf {r} = \left[ r_{1} r_{2} \dots r_{N} \right]
$$

If the vector components are arranged in a column, then the vector is called a column vector.

For example, we know that a portfolio's excess return will be affected by what can be different characteristics or attributes that affect all asset prices. A few examples would be the price-earnings ratio, market capitalization, and industry. Let us denote for a particular attribute a column vector,  $\mathbf{a}$ , that shows the exposure of each risky asset to that attribute, denoted  $a_{n}$ :

$$
\mathsf {a} = \left[ \begin{array}{l} a_{1} \\ a_{2} \\ \vdots \\ a_{N} \end{array} \right]
$$

### Matrices

An  $n \times m$  matrix is a bidimensional ordered array of  $n \times m$  numbers. Matrices are usually indicated with boldface uppercase letters. Thus, the generic matrix  $\mathbf{A}$  is an  $n \times m$  array of the form:

$$
\mathbf {A} = \left[ \begin{array}{c c c c c} a_{1, 1} & \cdot & a_{1, j} & \cdot & a_{1, m} \\ . & \cdot & . & \cdot & . \\ a_{i, 1} & \cdot & a_{i, j} & \cdot & a_{i, m} \\ . & \cdot & . & \cdot & . \\ a_{n, 1} & \cdot & a_{n, j} & \cdot & a_{n, m} \end{array} \right]
$$

Note that the first subscript indicates rows while the second subscript indicates columns. The entries  $a_{ij}$  — called the elements of the matrix  $\mathbf{A}$  — are the numbers at the crossing of the  $i$ -th row and the  $j$ -th column. The commas between the subscripts of the matrix entries are omitted when there is no risk of confusion:  $a_{i,j} \equiv a_{ij}$ . A matrix  $\mathbf{A}$  is often indicated by its generic element between brackets:

$$
\mathbf {A} = \left\{a_{i j} \right\}_{n m} \quad \mathrm{or} \quad \mathbf {A} = \left[ a_{i j} \right]_{n m}
$$ where the subscripts  $nm$  are the dimensions of the matrix.


There are several types of matrices. First there is a broad classification of square and rectangular matrices. A rectangular matrix can have different numbers of rows and columns; a square matrix is a rectangular matrix with the same number  $n$  of rows as of columns. Because of the important role that they play in applications, we focus on square matrices in the next section.

## SQUARE MATRICES

The  $n \times n$  identity matrix, indicated as the matrix  $\mathbf{I}_n$ , is a square matrix whose diagonal elements (i.e., the entries with the same row and column suffix) are equal to one while all other entries are zero:

$$
\mathbf {I}_{n} = \left[ \begin{array}{l l l l l} 1 & 0 & \cdot & \cdot & \cdot & 0 \\ 0 & 1 & \cdot & \cdot & \cdot & 0 \\ \cdot & \cdot & \cdot & & & \cdot \\ \cdot & \cdot & & \cdot & & \cdot \\ \cdot & \cdot & & & \cdot & \cdot \\ 0 & 0 & \cdot & \cdot & \cdot & 1 \end{array} \right]
$$

A matrix whose entries are all zero is called a zero matrix.

A diagonal matrix is a square matrix whose elements are all zero except the ones on the diagonal:

$$
\mathbf {A} = \left[ \begin{array}{c c c c c c} a_{1 1} & 0 & \cdot & \cdot & \cdot & 0 \\ 0 & a_{2 2} & \cdot & \cdot & \cdot & 0 \\ \cdot & \cdot & \cdot & & & \cdot \\ \cdot & \cdot & & \cdot & & \cdot \\ \cdot & \cdot & & & \cdot & 0 \\ 0 & 0 & \cdot & \cdot & 0 & a_{n n} \end{array} \right]
$$

Given a square  $n \times n$  matrix  $\mathbf{A}$ , the matrix  $\mathrm{dg} \mathbf{A}$  is the diagonal matrix extracted from  $\mathbf{A}$ . The diagonal matrix  $\mathrm{dg} \mathbf{A}$  is a matrix whose elements are all zero except the elements on the diagonal that coincide with those of the matrix A:


$$
\begin{array}{l} \mathbf {A} = \left[ \begin{array}{c c c c c c} a_{1 1} & a_{1 2} & \cdot & \cdot & \cdot & a_{1 n} \\ a_{2 1} & a_{2 2} & \cdot & \cdot & \cdot & a_{2 n} \\ \cdot & \cdot & \cdot & & & \cdot \\ \cdot & \cdot & & \cdot & & \cdot \\ \cdot & \cdot & & & \cdot & \cdot \\ a_{n 1} & a_{n 2} & \cdot & \cdot & \cdot & a_{n n} \end{array} \right] \Rightarrow \\ \mathrm{dg} \mathbf {A} = \left[ \begin{array}{c c c c c c} a_{1 1} & 0 & \cdot & \cdot & \cdot & 0 \\ 0 & a_{2 2} & \cdot & \cdot & \cdot & 0 \\ \cdot & \cdot & \cdot & & & \cdot \\ \cdot & \cdot & & \cdot & & \cdot \\ \cdot & \cdot & & & \cdot & \cdot \\ 0 & 0 & \cdot & \cdot & \cdot & a_{n n} \end{array} \right] \\ \end{array}
$$

The trace of a square matrix  $\mathbf{A}$  is the sum of its diagonal elements:

$$
\operatorname{tr} \mathbf {A} = \sum_{i = 1}^{n} a_{i i}
$$

A square matrix is called symmetric if the elements above the diagonal are equal to the corresponding elements below the diagonal:  $a_{ij} = a_{ji}$ . A matrix is said to be skew-symmetric if the diagonal elements are zero and the elements above the diagonal are the opposite of the corresponding elements below the diagonal:  $a_{ij} = -a_{ji}, i \neq j, a_{ii} = 0$ .

The most commonly used symmetric matrix in financial economics and econometrics is the covariance matrix, also referred to as the variance-covariance matrix. For example, suppose that there are  $N$  risky assets and that the variance of the excess return for each risky asset and the covariances between each pair of risky assets are estimated. As the number of risky assets is  $N$ , there are  $N^2$  elements, consisting of  $N$  variances (along the diagonal) and  $N^2 - N$  covariances. Symmetry restrictions reduce the number of independent elements. In fact, the covariance between risky asset  $i$  and risky asset  $j$  will be equal to the covariance between risky asset  $j$  and risky asset  $i$ . Notice that the variance-covariance matrix is a symmetric matrix.

## DETERMINANTS

Consider a square,  $n\times n$  , matrix A. The determinant of A, denoted  $|\mathbf{A}|$  , is defined as follows:

$$
| \mathbf {A} | = \sum (- 1)^{t (j_{1}, \dots , j_{n})} \prod_{i = 1}^{n} a_{i j}
$$ where the sum is extended over all permutations  $(j_{1},\ldots ,j_{n})$  of the set  $(1,2,\dots,n)$  and  $t(j_1,\ldots ,j_n)$  is the number of transpositions (or inversions of positions) required to go from  $(1, 2,\dots,n)$  to  $(j_{1},\ldots ,j_{n})$ . Otherwise stated, a determinant is the sum of all products formed taking exactly one element from each row with each product multiplied by  $(-1)^{t(j_1,\dots,j_n)}$ . Consider, for instance, the case  $n = 2$ , where there is only one possible transposition:  $1,2\Rightarrow 2,1$ . The determinant of a  $2\times 2$  matrix is therefore computed as follows:


$$
\begin{array}{l} | \mathbf {A} | = (- 1)^{0} a_{1 1} a_{2 2} + (- 1)^{1} a_{1 2} a_{2 1} \\ = a_{1 1} a_{2 2} - a_{1 2} a_{2 1}. \\ \end{array}
$$

Consider a square matrix  $\mathbf{A}$  of order  $n$ . Consider the matrix  $\mathbf{M}_{ij}$  obtained by removing the  $i$ th row and the  $j$ th column. The matrix  $\mathbf{M}_{ij}$  is a square matrix of order  $(n - 1)$ . The determinant  $|\mathbf{M}_{ij}|$  of the matrix  $\mathbf{M}_{ij}$  is called the minor of  $a_{ij}$ . The signed minor  $(-1)^{(i + j)}|\mathbf{M}_{ij}|$  is called the cofactor of  $a_{ij}$  and is generally denoted as  $\alpha_{ij}$ .

A square matrix  $\mathbf{A}$  is said to be singular if its determinant is equal to zero. An  $n\times m$  matrix  $\mathbf{A}$  is of rank  $r$  if at least one of its (square)  $r$ -minors is different from zero while all  $(r + 1)$ -minors, if any, are zero. A nonsingular square matrix is said to be of full rank if its rank  $r$  is equal to its order  $n$ .

## SYSTEMS OF LINEAR EQUATIONS

A system of  $n$  linear equations in  $m$  unknown variables is a set of  $n$  simultaneous equations of the following form:

$$
\begin{array}{l} a_{1, 1} x_{1} + \dots + a_{1, m} x_{m} = b_{1} \\ \ldots \\ a_{n, 1} x_{1} + \dots + a_{1, m} x_{m} = b_{m} \\ \end{array}
$$

The  $n\times m$  matrix:

$$
\mathbf {A} = \left[ \begin{array}{c c c c c} a_{1, 1} & \cdot & a_{1, j} & \cdot & a_{1, m} \\ \cdot & \cdot & \cdot & \cdot & \cdot \\ a_{i, 1} & \cdot & a_{i, j} & \cdot & a_{i, m} \\ \cdot & \cdot & \cdot & \cdot & \cdot \\ a_{n, 1} & \cdot & a_{n, j} & \cdot & a_{n, m} \end{array} \right]
$$ formed with the coefficients of the variables is called the coefficient matrix. The terms  $b_{i}$  are called the constant terms. The augmented matrix [A b]—formed by adding to the coefficient matrix a column formed with the constant term—is represented below:


$$
[ \mathbf {A b} ] = \left[ \begin{array}{c c c c c} a_{1, 1} & \cdot & a_{1, j} & \cdot & a_{1, m}   b_{1} \\ \cdot & \cdot & \cdot & \cdot & \cdot \\ a_{i, 1} & \cdot & a_{i, j} & \cdot & a_{i, m}   b_{i} \\ \cdot & \cdot & \cdot & \cdot & \cdot \\ a_{n, 1} & \cdot & a_{n, j} & \cdot & a_{n, m}   b_{n} \end{array} \right]
$$

If the constant terms on the right side of the equations are all zero, the system is called homogeneous. If at least one of the constant terms is different from zero, the system is said to be nonhomogeneous. A system is said to be consistent if it admits a solution, that is, if there is a set of values of the variables that simultaneously satisfy all the equations. A system is referred to as inconsistent if there is no set of numbers that satisfy the system equations.

Let's first consider the case of nonhomogeneous linear systems. The fundamental theorems of linear systems state that:

Theorem 1: A system of  $n$  linear equations in  $m$  unknown is consistent (i.e., it admits a solution) if and only if the coefficient matrix and the augmented matrix have the same rank.

Theorem 2: If a consistent system of  $n$  equations in  $m$  variables is of rank  $r < m$ , it is possible to choose  $n - r$  unknowns so that the coefficient matrix of the remaining  $r$  unknowns is of rank  $r$ . When these  $m - r$  variables are assigned any arbitrary value, the value of the remaining variables is uniquely determined.

An immediate consequence of the two fundamental theorems is that (1) a system of  $n$  equa tions in  $n$  unknown variables admits a solution, and (2) the solution is unique if and only if both the coefficient matrix and the augmented matrix are of rank  $n$ .


Let's now examine homogeneous systems. The coefficient matrix and the augmented matrix of a homogeneous system always have the same rank and thus a homogeneous system is always consistent. In fact, the trivial solution  $x_{1} = \ldots = x_{m} = 0$  always satisfies a homogeneous system.

Consider now a homogeneous system of  $n$  equations in  $n$  unknowns. If the rank of the coefficient matrix is  $n$ , the system has only the trivial solution. If the rank of the coefficient matrix is  $r < n$ , then Theorem 2 ensures that the system has a solution other than the trivial solution.

## LINEAR INDEPENDENCE AND RANK

Consider an  $n \times m$  matrix  $\mathbf{A}$ . A set of  $p$  columns extracted from the matrix  $\mathbf{A}$ :

$$
\left[ \begin{array}{c c c c c} \cdot & a_{1, i_{1}} & \cdot & a_{1, i_{p}} & \cdot \\ \cdot & \cdot & \cdot & \cdot & \cdot \\ \cdot & \cdot & \cdot & \cdot & \cdot \\ \cdot & \cdot & \cdot & \cdot & \cdot \\ \cdot & a_{n, i_{1}} & \cdot & a_{n, i_{p}} & \cdot \end{array} \right]
$$ are said to be linearly independent if it is not possible to find  $p$  constants  $\beta_{s}, s = 1, \ldots, p$  such that the following  $n$  equations are simultaneously satisfied:


$$
\beta_{1} a_{1, i_{1}} + \dots + \beta_{p} a_{1, i_{p}} = 0
$$

$$
\ldots
$$

$$
\beta_{1} a_{n, i_{1}} + \dots + \beta_{p} a_{n, i_{p}} = 0
$$

Analogously, a set of  $q$  rows extracted from the matrix  $\mathbf{A}$  are said to be linearly independent if it is not possible to find  $q$  constants  $\lambda_{s}$ ,  $s = 1, \ldots, q$  such that the following  $m$  equations are simultaneously satisfied:

$$
\lambda_{1} a_{i_{1}, 1} + \dots + \lambda_{q} a_{i_{q}, 1} = 0
$$

$$
\cdot \cdot \cdot \cdot \cdot \cdot \cdot \cdot \cdot \cdot \cdot \cdot \cdot \cdot \cdot \cdot \cdot \cdot \cdot \cdot \cdot \cdot
$$

$$
\lambda_{1} a_{i_{1}, m} + \dots + \lambda_{q} a_{i_{q}, m} = 0
$$

It can be demonstrated that in any matrix the number  $p$  of linearly independent columns is the same as the number  $q$  of linearly independent rows. This number is equal, in turn, to the rank  $r$  of the matrix. Recall that a  $n \times m$  matrix  $\mathbf{A}$  is said to be of rank  $r$  if at least one of its (square)  $r$ -minors is different from zero while all  $(r + 1)$ -minors, if any, are zero. The constant  $p$ , is the same for rows and for columns. We can now give an alternative definition of the rank of a matrix:

Given an  $n \times m$  matrix  $\mathbf{A}$ , its rank, denoted  $\mathrm{rank}(\mathbf{A})$ , is the number  $r$  of linearly independent rows or columns as the row rank is always equal to the column rank.

## VECTOR AND MATRIX OPERATIONS

Let's now introduce the most common operations performed on vectors and matrices. An operation is a mapping that operates on scalars, vectors, and matrices to produce new scalars, vectors, or matrices. The notion of operations performed on a set of objects to produce another object of the same set is the key concept of algebra. Let's start with vector operations.

### Vector Operations

The following three operations are usually defined on vectors: transpose, addition, and multiplication.

#### Transpose

The transpose operation transforms a row vector into a column vector and vice versa. Given the row vector  $\mathbf{x} = [x_1, \ldots, x_n]$ , its transpose, denoted as  $\mathbf{x}^T$  or  $\mathbf{x}'$ , is the column vector:

$$
\mathbf {x}^{T} = \left[ \begin{array}{c} x_{1} \\ \cdot \\ \cdot \\ \cdot \\ x_{n} \end{array} \right].
$$

Clearly the transpose of the transpose is the original vector:  $(\mathbf{x}^T)^T = \mathbf{x}$

#### Addition

Two row (or column) vectors  $\mathbf{x} = [x_1, \ldots, x_n]$ ,  $\mathbf{y} = [y_1, \ldots, y_n]$  with the same number  $n$  of components can be added. The addition of two vectors is a new vector whose components are the sums of the components:

$$
\mathbf {x} + \mathbf {y} = \left[ x_{1} + y_{1}, \dots , x_{n} + y_{n} \right]
$$

This definition can be generalized to any number  $N$  of summands:

$$
\sum_{i = 1}^{N} \mathbf {x}_{i} = \left[ \sum_{i = 1}^{N} x_{1 i}, \dots , \sum_{i = 1}^{N} y_{n i} \right]
$$

The summands must be both column or row vectors; it is not possible to add row vectors to column vectors.

It is clear from the definition of addition that addition is a commutative operation in the sense that the order of the summands does not matter:  $\mathbf{x} + \mathbf{y} = \mathbf{y} + \mathbf{x}$ . Addition is also an associative operation in the sense that  $\mathbf{x} + (\mathbf{y} + \mathbf{z}) = (\mathbf{x} + \mathbf{y}) + \mathbf{z}$ .

#### Multiplication

We define two types of multiplication: (1) multiplication of a scalar and a vector, and (2) scalar multiplication of two vectors (inner product).

The multiplication of a scalar  $a$  and a row (or column) vector  $\mathbf{x}$ , denoted as  $a\mathbf{x}$ , is defined as the multiplication of each component of the vector by the scalar:

$$ a \mathbf {x} = [ a x_{1}, \dots , a x_{n} ].
$$

A similar definition holds for column vectors. It is clear from this definition that multiplication by a scalar is associative as:

$$ a (\mathbf {x} + \mathbf {y}) = a \mathbf {x} + a \mathbf {y}
$$

The scalar product (also called the inner product), of two vectors  $\mathbf{x}, \mathbf{y}$ , denoted as  $\mathbf{x} \cdot \mathbf{y}$ , is defined between a row vector and a column vector. The scalar product between two vectors produces a scalar according to the following rule:

$$
\mathbf {x} \cdot \mathbf {y} = \sum_{i = 1}^{n} x_{i} y_{i}.
$$

Two vectors  $\mathbf{x}, \mathbf{y}$  are said to be orthogonal if their scalar product is zero.

## MATRIX OPERATIONS

Let's now define operations on matrices. The following five operations on matrices are usually defined: transpose, addition, multiplication, inverse, and adjoint.

#### Transpose

The definition of the transpose of a matrix is an extension of the transpose of a vector. The transpose operation consists in exchanging rows with columns. Consider the  $n \times m$  matrix  $\mathbf{A} = \{a_{ij}\}_{nm}$ . The transpose of  $\mathbf{A}$ , denoted  $\mathbf{A}^T$  or  $\mathbf{A}'$  is the  $m \times n$  matrix whose  $i$ th row is the  $i$ th column of  $\mathbf{A}$ :

$$
\mathbf {A}^{T} = \left\{a_{j i} \right\}_{m n}
$$

The following should be clear from this definition:

$$
\left(\mathbf {A}^{T}\right)^{T} = \mathbf {A}
$$ and that a matrix is symmetric if and only if


$$
\mathbf {A}^{T} = \mathbf {A}
$$

#### Addition

Consider two  $n \times m$  matrices  $\mathbf{A} = \{a_{ij}\}_{nm}$  and  $\mathbf{B} = \{b_{ij}\}_{nm}$ . The sum of the matrices  $\mathbf{A}$  and  $\mathbf{B}$  is defined as the  $n \times m$  matrix obtained by adding the respective elements:

$$
\mathbf {A} + \mathbf {B} = \left\{a_{i j} + b_{i j} \right\}_{n m}.
$$

Note that it is essential for the definition of addition that the two matrices have the same order  $n \times m$ .

The operation of addition can be extended to any number  $N$  of summands as follows:

$$
\sum_{s = 1}^{N} \mathbf {A}_{i} = \left\{\sum_{s = 1}^{N} a_{s_{i j}} \right\}_{n m}
$$ where  $a_{s_{ij}}$  is the generic  $i,j$  element of the sth summand.


#### Multiplication

Consider a scalar  $c$  and a matrix  $\mathbf{A} = \{a_{ij}\}_{nm}$ . The product  $c\mathbf{A} = \mathbf{A}c$  is the  $n\times m$  matrix obtained by multiplying each element of the matrix by  $c$ :

$$ c \mathbf {A} = \mathbf {A} c = \left\{c a_{i j} \right\}_{n m}.
$$

Multiplication of a matrix by a scalar is distributive with respect to matrix addition:

$$ c \left(\mathbf {A} + \mathbf {B}\right) = c \mathbf {A} + c \mathbf {B}.
$$

Let's now define the product of two matrices. Consider two matrices  $\mathbf{A} = \{a_{it}\}_{np}$  and  $\mathbf{B} = \{b_{sj}\}_{pm}$ . The product  $\mathbf{C} = \mathbf{AB}$  is defined as follows:

$$
\mathbf {C} = \mathbf {A B} = \left\{c_{i j} \right\} = \left\{\sum_{t = 1}^{p} a_{i t} b_{t j} \right\}.
$$

The product  $\mathbf{C} = \mathbf{AB}$  is therefore a matrix whose generic element  $\{c_{ij}\}$  is the scalar product of the  $i$ th row of the matrix  $\mathbf{A}$  and the  $j$ th column of the matrix  $\mathbf{B}$ . This definition generalizes the definition of scalar product of vectors: The scalar product of two  $n$ -dimensional vectors is the product of an  $n\times 1$  matrix (a row vector) for a  $1\times n$  matrix (the column vector).

#### Inverse and Adjoint

Consider two square matrices of order  $n$  A and B. If  $\mathbf{AB} = \mathbf{BA} = \mathbf{I}$ , then the matrix B is called the inverse of A and is denoted as  $\mathbf{A}^{-1}$ . It can be demonstrated that the two following properties hold:

Property 1: A square matrix  $\mathbf{A}$  admits an inverse  $\mathbf{A}^{-1}$  if and only if it is nonsingular, that is, if and only if its determinant is different from zero. Otherwise stated, a matrix  $\mathbf{A}$  admits an inverse if and only if it is of full rank.

Property 2: The inverse of a square matrix, if it exists, is unique. This property is a consequence of the property that, if  $\mathbf{A}$  is nonsingular, then  $\mathbf{AB} = \mathbf{AC}$  implies  $\mathbf{B} = \mathbf{C}$ .

Consider now a square matrix of order  $n$ $\mathbf{A} = \{a_{ij}\}$  and consider its cofactors  $\alpha_{ij}$ . Recall that the cofactors  $\alpha_{ij}$  are the signed minors  $(-1)^{(i + j)}|\mathbf{M}_{ij}|$  of the matrix  $\mathbf{A}$ . The adjoint of the matrix  $\mathbf{A}$ , denoted as  $\mathrm{Adj}(\mathbf{A})$ , is the following matrix:

$$
\begin{array}{l} \operatorname{Ad j} (\mathbf {A}) = \left[ \begin{array}{c c c c c} \alpha_{1, 1} & \cdot & \alpha_{1, j} & \cdot & \alpha_{1, n} \\ \cdot & \cdot & \cdot & \cdot & \cdot \\ \alpha_{i, 1} & \cdot & \alpha_{i, j} & \cdot & \alpha_{i, n} \\ \cdot & \cdot & \cdot & \cdot & \cdot \\ \alpha_{n, 1} & \cdot & \alpha_{n, j} & \cdot & \alpha_{n, n} \end{array} \right]^{T} \\ = \left[ \begin{array}{c c c c} \alpha_{1, 1} \cdot \alpha_{2, 1} \cdot \alpha_{n, 1} \\ \cdot \cdot \cdot \cdot \cdot \cdot \cdot \\ \alpha_{1, i} \cdot \alpha_{2, i} \cdot \alpha_{n, i} \\ \cdot \cdot \cdot \cdot \cdot \cdot \cdot \\ \alpha_{1, n} \cdot \alpha_{2, n} \cdot \alpha_{n, n} \end{array} \right] \\ \end{array}
$$

The adjoint of a matrix  $\mathbf{A}$  is therefore the transpose of the matrix obtained by replacing the elements of  $\mathbf{A}$  with their cofactors.

If the matrix  $\mathbf{A}$  is nonsingular, and therefore admits an inverse, it can be demonstrated that:

$$
\mathbf {A}^{- 1} = \frac{\operatorname{Ad j} (\mathbf {A})}{| \mathbf {A} |}
$$

A square matrix of order  $n$  A is said to be orthogonal if the following property holds:

$$
\mathbf {A} \mathbf {A}^{\prime} = \mathbf {A}^{\prime} \mathbf {A} = \mathbf {I}_{n}
$$

Because in this case  $\mathbf{A}$  must be of full rank, the transpose of an orthogonal matrix coincides with its inverse:  $\mathbf{A}^{-1} = \mathbf{A}'$ .

## EIGENVALUES AND EIGENVECTORS

Consider a square matrix  $\mathbf{A}$  of order  $n$  and the set of all  $n$ -dimensional vectors. The matrix  $\mathbf{A}$  is a linear operator on the space of vectors. This means that  $\mathbf{A}$  operates on each vector producing another vector subject to the following restriction:

$$
\mathbf {A} (a \mathbf {x} + b \mathbf {y}) = a \mathbf {A x} + b \mathbf {A y}
$$

Consider now the set of vectors  $\mathbf{x}$  such that the following property holds:

$$
\mathbf {A} \mathbf {x} = \lambda \mathbf {x}.
$$

Any vector such that the above property holds is called an eigenvector of the matrix  $\mathbf{A}$  and the corresponding value of  $\lambda$  is called an eigenvalue.

To determine the eigenvectors of a matrix and the relative eigenvalues, consider that the equation  $\mathbf{A}\mathbf{x} = \lambda \mathbf{x}$  can be written as:

$$
(\mathbf {A} - \lambda \mathbf {I}) \mathbf {x} = 0
$$ which can, in turn, be written as a system of linear equations:


$$
\begin{array}{l} (\mathbf {A} - \lambda \mathbf {I}) \mathbf {x} = \left[ \begin{array}{c c c c c} a_{1, 1} - \lambda & \cdot & a_{1, j} & \cdot & a_{1, n} \\ \cdot & \cdot & \cdot & \cdot & \cdot \\ a_{i, 1} & \cdot & a_{i, i} - \lambda & \cdot & a_{i, n} \\ \cdot & \cdot & \cdot & \cdot & \cdot \\ a_{n, 1} & \cdot & a_{n, j} & \cdot & a_{n, n} - \lambda \end{array} \right] \\ \left[ \begin{array}{c} x_{1} \\ \cdot \\ x_{i} \\ \cdot \\ x_{n} \end{array} \right] = 0 \\ \end{array}
$$

This system of equations has nontrivial solutions only if the matrix  $\mathbf{A} - \lambda \mathbf{I}$  is singular. To determine the eigenvectors and the eigenvalues of the matrix  $\mathbf{A}$  we must therefore solve the equation:

$$
| \mathbf {A} - \lambda \mathbf {I} | = \left| \begin{array}{c c c c c} a_{1, 1} - \lambda & \cdot & a_{1, j} & \cdot & a_{1, n} \\ \cdot & \cdot & \cdot & \cdot & \cdot \\ a_{i, 1} & \cdot & a_{i, i} - \lambda & \cdot & a_{i, n} \\ \cdot & \cdot & \cdot & \cdot & \cdot \\ a_{n, 1} & \cdot & a_{n, j} & \cdot & a_{n, n} - \lambda \end{array} \right| = 0
$$

The expansion of this determinant yields a polynomial  $\phi (\lambda)$  of degree  $n$  known as the characteristic polynomial of the matrix A. The equation  $\phi (\lambda) = 0$  is known as the characteristic equation of the matrix A. In general, this equation will have  $n$  roots  $\lambda_{s}$  which are the eigenvalues of the matrix A. To each of these eigenvalues corresponds a solution of the system of linear equations as illustrated below:

$$
\left[ \begin{array}{c c c c c} a_{1, 1} - \lambda_{s} & \cdot & a_{1, j} & \cdot & a_{1, n} \\ \cdot & \cdot & \cdot & \cdot & \cdot \\ a_{i, 1} & \cdot & a_{i, i} - \lambda_{s} & \cdot & a_{i, n} \\ \cdot & \cdot & \cdot & \cdot & \cdot \\ a_{n, 1} & \cdot & a_{n, j} & \cdot & a_{n, n} - \lambda_{s} \end{array} \right] \left[ \begin{array}{c} x_{1_{s}} \\ \cdot \\ x_{i_{s}} \\ \cdot \\ x_{n_{s}} \end{array} \right] = 0
$$

Each solution represents the eigenvector  $\mathbf{x}_s$  corresponding to the eigenvector  $\lambda_s$ . The determination of eigenvalues and eigenvectors is the basis for principal component analysis.

## KEY POINTS

- An  $n$ -dimensional vector is an ordered array of  $n$  numbers with the numbers referred to as the components. An  $n \times m$  matrix is a bidimensional ordered array of  $n \times m$  numbers.
- A rectangular matrix can have different numbers of rows and columns; a square matrix is a rectangular matrix with the same number of rows and columns. An identity matrix is a square matrix whose diagonal elements are equal to one while all other entries are zero.

A diagonal matrix is a square matrix whose elements are all zero except the ones on the diagonal.

- The trace of a square matrix is the sum of its diagonal elements. A symmetric matrix is a square matrix where the elements above the diagonal are equal to the corresponding elements below the diagonal. The most commonly used symmetric matrix in finance is the covariance matrix (or variance-covariance matrix).

- The rank of a matrix is used to determine the number of solutions of a system of linear equations.
- An operation is a mapping that operates on scalars, vectors, and matrices to produce new scalars, vectors, or matrices. The notion of operations performed on a set of objects to produce another object of the same set is the key concept of algebra. Five vector operations on matrices are transpose, addition, multiplication, inverse, and adjoint.

## NOTES

1. Vectors can be thought of as the elements of an abstract linear space while matrices are operators that operate on linear spaces.
2. A third type of product between vectors—the vector (or outer) product between vectors—produces a third vector. We do not define it here as it is not typically used in economics, though widely used in the physical sciences.

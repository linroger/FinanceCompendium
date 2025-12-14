---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Appendix J
linter-yaml-title-alias: Appendix J
---

# Appendix J

# Manipulation of Credit Transition Matrices

Suppose that  $A$  is an  $n \times n$  matrix of credit rating changes in one year. This is a matrix such as the one shown in Table 19.1. Assuming that rating changes in successive time periods are independent, the matrix of credit rating changes in  $m$  years is  $A^m$ . If  $m$  is an integer, this can be readily calculated using the normal rules for matrix multiplication.

Consider next the problem of calculating the transition matrix for  $1 / m$  years where  $m$  is an integer. (For example, when we are interested in one-month changes,  $m = 12$ .) This is a more complicated problem because we need to calculate the  $m$ th root of a matrix. We first calculate eigenvectors  $\mathbf{x}_1, \mathbf{x}_2, \ldots, \mathbf{x}_n$  and the corresponding eigenvalues  $\lambda_1, \lambda_2, \ldots, \lambda_n$  of the matrix  $A$ . These are explained in Appendix H. They have the property that

$$
A \mathbf {x} _ {\mathbf {i}} = \lambda_ {i} \mathbf {x} _ {\mathbf {i}} \tag {J.1}
$$

Define  $X$  as an  $n \times n$  matrix whose  $i$ th column is  $\mathbf{x_i}$  and  $\Lambda$  as an  $n \times n$  diagonal matrix (i.e., a matrix that has zero values everywhere except on the diagonal) where the  $i$ th diagonal element is  $\lambda_i$ . From equation (J.1), we have

$$
A X = X \Lambda
$$ so that


$$

A = X \Lambda X ^ {- 1}

$$

Define  $\Lambda^{*}$  as a diagonal matrix where the  $i$ th diagonal element is  $\lambda_{i}^{1 / m}$ . Then

$$

\begin{array}{l} (X \Lambda^ {*} X ^ {- 1}) ^ {m} = (X \Lambda^ {*} X ^ {- 1}) (X \Lambda^ {*} X ^ {- 1}) (X \Lambda^ {*} X ^ {- 1}) \dots (X \Lambda^ {*} X ^ {- 1}) = X (\Lambda^ {*}) ^ {m} X ^ {- 1} \\ = X \Lambda X ^ {- 1} = A \\ \end{array}

$$ showing that the  $m$ th root of  $A$ , and therefore the transition matrix for time  $1 / m$  years, is  $X\Lambda^{*}X^{-1}$ .

Some authors, such as Jarrow, Lando, and Turnbull (1997), prefer to handle this problem in terms of what is termed a generator matrix. This is a matrix  $\Gamma$  such that the transition matrix for a short period of time,  $\Delta t$ , is  $I + \Gamma \Delta t$  and the transition matrix for a longer period of time,  $t$ , is

$$
\exp (t \Gamma) = \sum_ {k = 0} ^ {\infty} \frac {(t \Gamma) ^ {k}}{k !}
$$ where  $I$  is the identity matrix (with ones on the diagonal and zeros elsewhere).


Software for manipulating credit transition matrices is on the author's website.


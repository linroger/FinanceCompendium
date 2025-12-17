
# Principles of Optimization for Portfolio Selection



Abstract: The mathematical theory of optimization has a natural application in the field of finance. From a general perspective, the behavior of economic agents in the face of uncertainty involves balancing expected risks and expected rewards. For example, the portfolio choice problem concerns the optimal trade-off between risk and reward. A portfolio is said to be optimal in the sense that it is the best portfolio among many alternative ones. The criterion that measures the quality of a portfolio relative to the others is known as the objective function in optimization theory. The set of portfolios among which we are choosing is called the "set of feasible solutions" or the "set of feasible points."

In optimization theory there is a distinction between two types of optimization problems depending on whether the set of feasible solutions is constrained or unconstrained. If the optimization problem is a constrained one, then the set of feasible solutions is defined by means of certain linear and/or nonlinear equalities and inequalities. These functions are often said to be forming the constraint set. Furthermore, a distinction is made between the types of optimization problems depending on the assumed properties of the objective function and the functions in the constraint set, such as linear problems, quadratic problems, and convex problems. The solution methods vary with respect to the particular optimization problem type as there are efficient algorithms prepared for particular problem types.


In this chapter, we describe the basic types of optimization problems and remark on the methods for their solution. Boyd and Vandenberghe (2004) and Ruszczynski (2006) provide more detailed information on the topic.


# UNCONSTRAINED OPTIMIZATION

When there are no constraints imposed on the set of feasible solutions, we have an unconstrained optimization problem. Thus, the goal is to maximize or to minimize the objective function with respect to the function arguments without any limits on their values. We consider directly the  $n$ -dimensional case; that is, the domain of the objective function  $f$  is the  $n$ -dimensional space and the function values are real numbers,  $f:\mathbb{R}^n\to \mathbb{R}$ . Maximization is denoted by

$$
\max  f (x _ {1}, \dots , x _ {n})
$$ and minimization by


$$
\min  f (x _ {1}, \dots , x _ {n})
$$

A more compact form is commonly used; for example

$$
\min  _ {x \in \mathbb {R} ^ {n}} f (x) \tag {1}
$$ denotes that we are searching for the minimal value of the function  $f(x)$  by varying  $x$  in the entire  $n$ -dimensional space  $\mathbb{R}^n$ . A solution to problem (1) is a value of  $x = x^0$  for which the minimum of  $f$  is attained:


$$ f _ {0} = f (x ^ {0}) = \min  _ {x \in \mathbb {R} ^ {n}} f (x)
$$

Thus, the vector  $x_0$  is such that the function takes a larger value than  $f_0$  for any other vector  $x$ ,

$$ f (x ^ {0}) \leq f (x), x \in \mathbb {R} ^ {n} \tag {2}
$$ local minimum at  $x^0$ . This is usually denoted by

Note that there may be more than one vector  $x^0$  satisfying the inequality in (2) and, therefore, the argument for which  $f_0$  is achieved may not be unique. If (2) holds, then the function is said to attain its global minimum at  $x^0$ . If the inequality in (2) holds for  $x$  belonging only to a small neighborhood of  $x^0$  and not to the entire space  $\mathbb{R}^n$ , then the objective function is said to have a


$$ f (x ^ {0}) \leq f (x)
$$ for all  $x$  such that  $||x - x^0 ||_2 < \epsilon$  where  $||x - x^0 ||_2$  stands for the Euclidean distance between the vectors  $x$  and  $x^0$ ,


$$
| | x - x ^ {0} | | _ {2} = \sqrt {\sum_ {i = 1} ^ {n} (x _ {i} - x _ {i} ^ {0}) ^ {2}}
$$ and  $\epsilon$  is some positive number. A local minimum may not be global as there may be vectors outside the small neighborhood of  $x_0$  for which the objective function attains a smaller value than  $f(x_0)$ . Figure 3 shows the graph of a function with two local maxima, one of which is the global maximum.


There is a connection between minimization and maximization. Maximizing the objective function is the same as minimizing the negative of the objective function and then changing the sign of the minimal value:

$$
\max  _ {x \in \mathbb {R} ^ {n}} f (x) = - \min  _ {x \in \mathbb {R} ^ {n}} [ - f (x) ]
$$

This relationship is illustrated in Figure 1. As a consequence, problems for maximization can be stated in terms of function minimization and vice versa.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/0467ef2e99935708b55e26ec4e6228d1cae079fdc2a1bea185f27753c1a7d953.jpg)
Figure 1 The Relationship between Minimization and Maximization for a One-Dimensional Function

# Minima and Maxima of a Differentiable Function

If the second derivatives of the objective function exist, then its local maxima and minima, often called generically local extrema, can be characterized. Denote by  $\nabla f(x)$  the vector of the first partial derivatives of the objective function evaluated at  $x$ ,

$$
\nabla f (x) = \left(\frac {\partial f (x)}{\partial x _ {1}}, \dots , \frac {\partial f (x)}{\partial x _ {n}}\right)
$$

This vector is called the function gradient. At each point  $x$  of the domain of the function, it shows the direction of greatest rate of increase of the function in a small neighborhood of  $x$ . If for a given  $x$  the gradient equals a vector of zeros,

$$
\nabla f (x) = (0, \dots , 0)
$$ then the function does not change in a small neighborhood of  $x \in \mathbb{R}^n$ . It turns out that all points of local extrema of the objective function are characterized by a zero gradient. As a result, the points yielding the local extrema of the objective function are among the solutions of the system of equations,


$$
\left| \begin{array}{l} \frac {\partial f (x)}{\partial x _ {1}} = 0 \\ \dots \\ \frac {\partial f (x)}{\partial x _ {n}} = 0 \end{array} \right. \tag {3}
$$

The system of equations (3) is often referred to as representing the first-order condition for the objective function extrema. However, it is only a necessary condition; that is, if the gradient is zero at a given point in the  $n$ -dimensional space, then this point may or may not be a point of a local extremum for the function. An illustration is given in Figures 2 and 3. Figure 2 shows the graph of a two-dimensional function and Figure 3 contains the contour lines of the function with the gradient calculated at a grid of points. There are three points marked with a black dot which have a zero gradient. The middle point is not a point of a local maximum even though it has a zero gradient. This point is called a sad dle point, since the graph resembles the shape of a saddle in a neighborhood of it. The left and the right points are where the function has two local maxima corresponding to the two peaks visible on the top plot. The right peak is a local maximum which is not the global one and the left peak represents the global maximum.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/c0bf892038762d3eb4fe2c73d4573c685a5ce559b475110f6dcb290c30fcf6f9.jpg)
Figure 2 A Function  $f(x_{1},x_{2})$  with Two Local Maxima


This example demonstrates that the first-order conditions are generally insufficient to characterize the points of local extrema. The additional condition which identifies which of the zero-gradient points are points of local minimum or maximum is given through the matrix of second derivatives,

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/35df134a522e5825b8b4aaf43ce1095191c5074ee9ff62b3d64c0d869bc7eb7a.jpg)
Figure 3 The Contour Lines of  $f(x_{1},x_{2})$  Together with the Gradient Evaluated at a Grid of Points

Note: The middle black point shows the position of the saddle point between the two local maxima.


$$
H = \left( \begin{array}{c c c c} \frac {\partial^ {2} f (x)}{\partial x _ {1} ^ {2}} & \frac {\partial^ {2} f (x)}{\partial x _ {1} \partial x _ {2}} & \dots & \frac {\partial^ {2} f (x)}{\partial x _ {1} \partial x _ {n}} \\ \frac {\partial^ {2} f (x)}{\partial x _ {2} \partial x _ {1}} & \frac {\partial^ {2} f (x)}{\partial x _ {2} ^ {2}} & \dots & \frac {\partial^ {2} f (x)}{\partial x _ {2} \partial x _ {n}} \\ \vdots & \vdots & \ddots & \vdots \\ \frac {\partial^ {2} f (x)}{\partial x _ {n} \partial x _ {1}} & \frac {\partial^ {2} f (x)}{\partial x _ {n} \partial x _ {2}} & \dots & \frac {\partial^ {2} f (x)}{\partial x _ {n} ^ {2}} \end{array} \right) \tag {4}
$$ which is called the Hessian matrix or just the Hessian. The Hessian is a symmetric matrix because the order of differentiation is insignificant:


$$
\frac {\partial^ {2} f (x)}{\partial x _ {i} \partial x _ {j}} = \frac {\partial^ {2} f (x)}{\partial x _ {j} \partial x _ {i}}
$$

The additional condition is known as the second-order condition. We will not provide the second-order condition for functions of  $n$ -dimensional arguments because it is rather technical and goes beyond the scope of the entry. We only state it for two-dimensional functions.

In the case  $n = 2$ , the following conditions hold:

- If  $\nabla f(x_1, x_2) = (0, 0)$  at a given point  $(x_1, x_2)$  and the determinant of the Hessian matrix evaluated at  $(x_1, x_2)$  is positive, then the function has:

A local maximum in  $(x_{1},x_{2})$  if

$$
\frac {\partial^ {2} f (x _ {1} , x _ {2})}{\partial x _ {1} ^ {2}} <   0 \quad \text {o r} \quad \frac {\partial^ {2} f (x _ {1} , x _ {2})}{\partial x _ {2} ^ {2}} <   0
$$

A local minimum in  $(x_{1},x_{2})$  if

$$
\frac {\partial^ {2} f \left(x _ {1} , x _ {2}\right)}{\partial x _ {1} ^ {2}} > 0 \quad \text {o r} \quad \frac {\partial^ {2} f \left(x _ {1} , x _ {2}\right)}{\partial x _ {2} ^ {2}} > 0
$$

- If  $\nabla f(x_1, x_2) = (0, 0)$  at a given point  $(x_1, x_2)$  and the determinant of the Hessian matrix evaluated at  $(x_1, x_2)$  is negative, then the function  $f$  has a saddle point in  $(x_1, x_2)$ .
- If  $\nabla f(x_1, x_2) = (0, 0)$  at a given point  $(x_1, x_2)$  and the determinant of the Hessian matrix evaluated at  $(x_1, x_2)$  is zero, then no conclusion can be drawn.

# Convex Functions

We just demonstrated that the first-order conditions are insufficient in the general case to describe the local extrema. However, when certain assumptions are made for the objective function, the first-order conditions can become sufficient. Furthermore, for certain classes of functions, the local extrema are necessarily global. Therefore, solving the first-order conditions we obtain the global extremum.

A general class of functions with nice optimal properties is the class of convex functions. Not only are the convex functions easy to optimize but also they have important application in risk management. (See Chapter 6 in Rachev, Stoyanov, and Fabozzi [2008] for a discussion of general measures of risk.) It turns out that the property which guarantees that diversification is possible appears to be exactly the convexity property. As a consequence, a measure of risk is necessarily a convex functional.

A function in mathematics can be viewed as a rule assigning to each element of a set  $D$  a single element of a set  $C$ . The set  $D$  is called the domain of  $f$  and the set  $C$  is called the codomain of  $f$ . A functional is a special kind of a function which takes other functions as its argument and returns numbers as output; that is, its domain is a set of functions. For example, the definite integral can be viewed as a functional because it assigns a real number to a function—the corresponding area below the function graph. A risk measure can also be viewed as a functional because it assigns a number to a random variable. Any random variable is mathematically described as a certain function the domain of which is a set of outcomes  $\Omega$ .

Precisely, a function  $f(x)$  is called a convex function if it satisfies the property: For a given  $\alpha \in [0,1]$  and all  $x^{1} \in \mathbb{R}^{n}$  and  $x^{2} \in \mathbb{R}^{n}$  in the function domain,

$$ f \left(\alpha x ^ {1} + (1 - \alpha) x ^ {2}\right) \leq \alpha f \left(x ^ {1}\right) + (1 - \alpha) f \left(x ^ {2}\right) \tag {5}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/1b4342438f3b137b48f6878a82ebc4583ae8273c28eb626390d08b11614dddc3.jpg)
Figure 4 Illustration of the Definition of a Convex Function in the One-Dimensional Case Note: On the plot,  $x_{\alpha} = \alpha x^{1} + (1 - \alpha)x^{2}$

The definition is illustrated in Figure 4. Basically, if a function is convex, then a straight line connecting any two points on the graph lies "above" the graph of the function.

There is a related term to convex functions. A function  $f$  is called concave if the negative of  $f$  is convex. In effect, a function is concave if it satisfies the property: For a given  $\alpha \in [0,1]$  and all  $x^{1} \in \mathbb{R}^{n}$  and  $x^{2} \in \mathbb{R}^{n}$  in the function domain,

$$ f (\alpha x ^ {1} + (1 - \alpha) x ^ {2}) \geq \alpha f (x ^ {1}) + (1 - \alpha) f (x ^ {2})
$$

If the domain  $D$  of a convex function is not the entire space  $\mathbb{R}^n$ , then the set  $D$  satisfies the property

$$
\alpha x ^ {1} + (1 - \alpha) x ^ {2} \in D \tag {6}
$$ where  $x^{1}\in D,x^{2}\in D$  ,and  $0\leq \alpha \leq 1$  .The sets which satisfy (6) are called convex sets. Thus, the domains of convex (and concave) functions should be convex sets. Geometrically, a set is convex if it contains the straight line connecting any two points belonging to the set. Rockafellar (1997) provides detailed information on the implications of convexity in optimization theory.


We summarize several important properties of convex functions:

- Not all convex functions are differentiable. If a convex function is two times continuously differentiable, then the corresponding Hessian defined in (4) is a positive semidefinite matrix. (A matrix  $H$  is a positive semidefinite matrix if  $x'Hx \geq 0$  for all  $x \in \mathbb{R}^n$  and  $x \neq (0, \ldots, 0)$ .
- All convex functions are continuous if considered in an open set.
- The sublevel sets

$$
L _ {c} = \{x: f (x) \leq c \} \tag {7}
$$ where  $c$  is a constant, are convex sets if  $f$  is a convex function. The converse is not true in general. Later, we provide more information about nonconvex functions with convex sublevel sets.


- The local minima of a convex function are global. If a convex function  $f$  is twice continuously differentiable, then the global minimum is obtained in the points solving the first-order condition

$$
\nabla f (x) = 0
$$

- A sum of convex functions is a convex function:

$$ f (x) = f _ {1} (x) + f _ {2} (x) + \dots + f _ {k} (x)
$$ if  $f_{i}, i = 1, \dots, k$  are convex functions.


A simple example of a convex function is the linear function

$$ f (x) = a ^ {\prime} x, \quad x \in \mathbb {R} ^ {n}
$$ where  $a \in \mathbb{R}^n$  is a vector of constants. In fact, the linear function is the only function which is both convex and concave. In finance, if we consider a portfolio of assets, then the expected portfolio return is a linear function of portfolio weights, in which the coefficients equal the expected asset returns.


As a more involved example, consider the following function:

$$ f (x) = \frac {1}{2} x ^ {\prime} C x, \quad x \in \mathbb {R} ^ {n} \tag {8}
$$ where  $C = \{c_{ij}\}_{i,j=1}^n$  is an  $n \times n$  symmetric matrix. In portfolio theory, the variance of portfolio return is a similar function of portfolio weights. In this case,  $C$  is the covariance matrix. The function defined in (8) is called a quadratic function because writing the definition in terms of the components of the argument  $X$ , we obtain

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/7e64f66f64cc2cc50e56f3da97c67898c2609ae877c690c5ce3ada4a76c9b763.jpg)
Figure 5 The Surface of a Two-Dimensional Convex Quadratic Function


$$ f (x) = \frac {1}{2} \bigg [ \sum_ {i = 1} ^ {n} c _ {i i} x _ {i} ^ {2} + \sum_ {i \neq j} c _ {i j} x _ {i} x _ {j} \bigg ]
$$ which is a quadratic function of the components  $x_{i}, i = 1, \dots, n$ . The function in (8) is convex if and only if the matrix  $C$  is positive semidefinite. In fact, in this case the matrix  $C$  equals the Hessian matrix,  $C = H$ . Since the matrix  $C$  contains all parameters, we say that the quadratic function is defined by the matrix  $C$ .


Figures 5-8 illustrate the surface and contour lines of a convex and nonconvex two-dimensional quadratic function. The contour lines of the convex function are concentric ellipses and a sublevel set  $L_{c}$  is represented by the points inside some ellipse. The point  $(0,0)$  in Figure 8 is a saddle point. The convex quadratic function is defined by the matrix

$$
C = \left( \begin{array}{c c} 1 & 0. 4 \\ 0. 4 & 1 \end{array} \right)
$$ and the nonconvex quadratic function is defined by the matrix

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/8cf330b28057e5cee7349f56137a6e63a94c70b2cbd1b53c090897474ae696b6.jpg)
Figure 6 The Contour Lines of a Two-Dimensional Convex Quadratic Function

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/81de3d6d791621471eb8b727187c629f9ed1cbec2a39c8cf780b756870c3df04.jpg)
Figure 7 The Surface of a Nonconvex Two-Dimensional Quadratic Function

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/e38c5925a8098d6bea333bedaa27104d89e1fe5cba8c78c48aa58a9a5577762f.jpg)
Figure 8 The Contour Lines of a Nonconvex Two-Dimensional Quadratic Function


$$
C = \left( \begin{array}{c c} - 1 & 0. 4 \\ 0. 4 & 1 \end{array} \right)
$$

A property of convex functions is that the sum of convex functions is a convex function. As a result of the preceding analysis, the function

$$ f (x) = \lambda x ^ {\prime} C x - a ^ {\prime} x \tag {9}
$$ where  $\lambda > 0$  and  $C$  is a positive semidefinite matrix, is a convex function as a sum of two convex functions. In the mean-variance efficient frontier, as formulated by Markowitz (1952), we find functions similar to (9). Let us use the properties of convex functions in order to solve the unconstrained problem of minimizing the function in (9):


$$
\min  _ {x \in \mathbb {R} ^ {n}} \lambda x ^ {\prime} C x - a ^ {\prime} x
$$

This function is differentiable and we can search for the global minimum by solving the first-order conditions:

$$
\nabla f (x) = 2 \lambda C x - a = 0
$$

Therefore, the value of  $x$  minimizing the objective function equals

$$ x ^ {0} = \frac {1}{2 \lambda} C ^ {- 1} a
$$ where  $C^{-1}$  denotes the inverse of the matrix  $C$ .


# Quasi-Convex Functions

Besides convex functions, there are other classes of functions with convenient optimal properties. An example of such a class is the class of quasi-convex functions. Formally, a function is called quasi-convex if all sublevel sets defined in (7) are convex sets. Alternatively, a function  $f(x)$  is called quasi-convex if

$$
\begin{array}{l} f \left(x ^ {1}\right) \geq f \left(x ^ {2}\right) \quad \text {i m p l i e s} \quad f (\alpha x ^ {1} + (1 - \alpha) x ^ {2}) \\ \leq f (x ^ {1}) \\ \end{array}
$$ where  $x^{1}$  and  $x^{2}$  belong to the function domain, which should be a convex set, and  $0\leq \alpha \leq 1$


![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/cc9b7712a37d949fe6bb9c0c4496326eb0c1eaa28e09f059a71b49b9ef7bd7e8.jpg)
Figure 9 Example of a Two-Dimensional QuasiConvex Function

A function  $f$  is called quasi-concave if  $-f$  is quasi-convex.

An illustration of a two-dimensional quasiconvex function is given in Figure 9. It shows the graph of the function and Figure 10 illustrates the contour lines. A sublevel set is represented by all points inside some contour line. From a geometric viewpoint, the sublevel sets corresponding to the plotted contour lines are convex because any of them contains the straight line connecting any two points belonging to the set. Nevertheless, the function is not convex, which becomes evident from the surface in Figure 9. It is not guaranteed that a straight line connecting any two points on the surface will remain "above" the surface.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/9903017576b1348971d89c355d82d72ae73de17bec04591af3e295ecab0a9dd1.jpg)
Figure 10 The Contour Lines of a Two-Dimensional Quasi-Convex Function


Properties of the quasi-convex functions include:

- Any convex function is also quasi-convex. The converse is not true, which is demonstrated in Figure 10.
- In contrast to the differentiable convex functions, the first-order condition is not necessary and sufficient for optimality in the case of differentiable quasi-convex functions. (There exists a class of functions larger than the class of convex functions but smaller than the class of quasi-convex functions, for which the first-order condition is necessary and sufficient for optimality. This is the class of pseudo-convex functions. Mangasarian [2006] provides more detail on the optimal properties of pseudoconvex functions.)
- It is possible to find a sequence of convex optimization problems yielding the global minimum of a quasi-convex function. Boyd and Vandenberghe (2004) provide further details. Its main idea is to find the smallest value of  $c$  for which the corresponding sublevel set  $L_{c}$  is nonempty. The minimal value of  $c$  is the global minimum, which is attained in the points belonging to the sublevel set  $L_{c}$ .
- Suppose that  $g(x) > 0$  is a concave function and  $f(x) > 0$  is a convex function. Then the ratio  $g(x) / f(x)$  is a quasi-concave function and the ratio  $f(x) / g(x)$  is a quasi-convex function.

Quasi-convex functions arise naturally in risk management when considering optimization of performance ratios. (See Chapter 10 in Rachev, Stoyanov, and Fabozzi [2008].)

# CONSTRAINED OPTIMIZATION

In constructing optimization problems solving practical issues, it is very often the case that certain constraints need to be imposed in or- der for the optimal solution to make practical sense. For example, long-only portfolio optimization problems require that the portfolio weights, which represent the variables in optimization, should be nonnegative and should sum up to one. According to the notation in this chapter, this corresponds to a problem of the type


$$
\min  _ {x} f (x)
$$

$$
\text {s u b j e c t} \quad x ^ {\prime} e = 1 \tag {10}
$$

$$ x \geq 0
$$ where


$$ f (x) = \text {t h e}
$$

$$ e \in \mathbb {R} ^ {n} = \text {a v e c t o r o f o n e s}, e = (1, \dots , 1)
$$

$$
\begin{array}{c} x ^ {\prime} e = \text {t h e s u m o f a l l c o m p o n e n t s o f} x, \\ x ^ {\prime} e = \sum_ {i} ^ {n} x _ {i} \end{array}
$$

$$
\begin{array}{l} x \geq 0 = \text {a l l c o m p o n e n t s o f t h e v e c t o r} x \in \mathbb {R} ^ {n} \\ \text {a r e n o n n e g a t i v e} \end{array}
$$

In problem (10), we are searching for the minimum of the objective function by varying  $x$  only in the set

$$
\mathbf {X} = \left\{x \in \mathbb {R} ^ {n}: \begin{array}{c} x ^ {\prime} e = 1 \\ x \geq 0 \end{array} \right\} \tag {11}
$$ which is also called the set of feasible points or the constraint set. A more compact notation, similar to the notation in the unconstrained problems, is sometimes used,


$$
\min  _ {x \in \mathbf {X}} f (x)
$$ where  $\mathbf{X}$  is defined in (11).


We distinguish between different types of optimization problems depending on the assumed properties for the objective function and the constraint set. If the constraint set contains only equalities, the problem is easier to handle analytically. In this case, the method of Lagrange multipliers is applied. For more general constraint sets, when they are formed by both equalities and inequalities, the method of Lagrange multipliers is generalized by the Karush-Kuhn-Tucker conditions (KKT conditions). Like the first-order conditions we considered in unconstrained optimization problems, none of the two approaches lead to necessary and sufficient conditions for constrained optimization problems without further assumptions. One of the most general frameworks in which the KKT conditions are necessary and sufficient is that of convex programming. We have a convex programming problem if the objective function is a convex function and the set of feasible points is a convex set. As important subcases of convex optimization, linear programming and convex quadratic programming problems are considered.


In this section, we describe first the method of Lagrange multipliers, which is often applied to special types of mean-variance optimization problems in order to obtain closed-form solutions. Then we proceed with convex programming, which is the framework for reward-risk analysis.

# Lagrange Multipliers

Consider the following optimization problem in which the set of feasible points is defined by a number of equality constraints:

$$
\begin{array}{l} \min  _ {x} f (x) \\ \text {s u b j e c t} \quad h _ {1} (x) = 0 \\ h _ {2} (x) = 0 \tag {12} \\ \cdot \cdot \cdot \\ h _ {k} (x) = 0 \\ \end{array}
$$

The functions  $h_i(x), i = 1, \dots, k$  build up the constraint set. Note that even though the right-hand side of the equality constraints is zero in the classical formulation of the problem given in (12), this is not restrictive. If in a practical problem the right-hand side happens to be different from zero, it can be equivalently transformed; for example:

$$
\begin{array}{l} \{x \in \mathbb {R} ^ {n}: v (x) = c \} \Longleftrightarrow \{x \in \mathbb {R} ^ {n}: h _ {1} (x) \\ = v (x) - c = 0 \} \\ \end{array}
$$

In order to illustrate the necessary condition for optimality valid for (12), let us consider the following two-dimensional example:


$$
\begin{array}{l} \min  _ {x \in \mathbb {R} ^ {2}} \frac {1}{2} x ^ {\prime} C x \tag {13} \\ \text {s u b j e c t} \quad x ^ {\prime} e = 1 \\ \end{array}
$$ where the matrix is


$$
C = \left( \begin{array}{c c} 1 & 0. 4 \\ 0. 4 & 1 \end{array} \right)
$$

The objective function is a quadratic function and the constraint set contains one linear equality. A mean-variance optimization problem in which short positions are allowed is very similar to (13). (See Chapter 8 in Rachev, Stoyanov, and Fabozzi [2008].) The surface of the objective function and the constraint are shown in Figures 11 and 12. The black line on the surface shows the function values of the feasible points. Geometrically, solving problem (13) reduces to finding the lowest point of the black curve on the surface. The contour lines shown in Figure 12 imply that the feasible point yielding the minimum of the objective function is where a contour line is tangential to the line defined by the equality constraint. On the plot, the tangential contour line and the feasible points are in bold. The black dot indicates the position of the point in which the objective function attains its minimum subject to the constraints.

Even though the example is not general in the sense that the constraint set contains one linear rather than a nonlinear equality, the same geometric intuition applies in the nonlinear case. The fact that the minimum is attained where a contour line is tangential to the curve defined by the nonlinear equality constraints in mathematical language is expressed in the following way: The gradient of the objective function at the point yielding the minimum is proportional to a linear combination of the gradients of the functions defining the constraint set. Formally, this is stated as:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/8352bb4970d5bdcc8403dd4ca4c173cab7ff4f03fd140f23286cdc33400c5f1b.jpg)
Figure 11 The Surface of a Two-Dimensional Quadratic Objective Function and the Linear Constraint  $x_{1} + x_{2} = 1$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/28f6ae1e53dd45bcedced4333abc1faacb5f53487b2ad966093ff748dfb3f7d4.jpg)
Figure 12 The Tangential Contour Line to the Linear Constraint  $x_{1} + x_{2} = 1$


$$
\nabla f \left(x ^ {0}\right) - \mu_ {1} \nabla h _ {1} \left(x ^ {0}\right) - \dots - \mu_ {k} \nabla h _ {k} \left(x ^ {0}\right) = 0 \tag {14}
$$ where  $\mu_{i}, i = 1, \ldots, k$  are some real numbers called Lagrange multipliers and the point  $x^{0}$  is such that  $f(x^{0}) \leq f(x)$  for all  $x$  which are feasible. Note that if there are no constraints in the problem, then (14) reduces to the first-order condition we considered in unconstrained optimization. Therefore, the system of equations behind (14) can be viewed as a generalization of the first-order condition in the unconstrained case.


The method of a Lagrange multipliers basically associates a function to the problem in (12) such that the first-order condition for unconstrained optimization for that function coincides with (14). The method of a Lagrange multiplier consists of the following steps.

1. Given the problem in (12), construct the following function:

$$
L (x, \mu) = f (x) - \mu_ {1} h _ {1} (x) - \dots - \mu_ {k} h _ {k} (x) \tag {15}
$$ where  $\mu = (\mu_{1},\dots ,\mu_{k})$  is the vector of Lagrange multipliers. The function  $L(x,\mu)$  is called the Lagrangian corresponding to problem (12).


2. Calculate the partial derivatives with respect to all components of  $x$  and  $\mu$  and set them equal to zero:

$$
\begin{array}{l} \frac {\partial L (x , \mu)}{\partial x _ {i}} = \frac {\partial f (x)}{\partial x _ {i}} - \sum_ {j = 1} ^ {k} \mu_ {j} \frac {\partial h _ {j} (x)}{\partial x _ {i}} = 0, \\ i = 1, \dots , n \tag {16} \\ \end{array}
$$

$$
\frac {\partial L (x , \mu)}{\partial \mu_ {m}} = h _ {m} (x) = 0, \quad m = 1, \ldots , k
$$

Basically, the system of equations (16) corresponds to the first-order conditions for unconstrained optimization written for the Lagrangian as a function of both  $x$  and  $\mu$ ,  $L: \mathbb{R}^{n + k} \to \mathbb{R}$ .

3. Solve the system of equalities in (16) for  $x$  and  $\mu$ . Note that even though we are solving the first-order condition for unconstrained optimization of  $L(x, \mu)$ , the solution  $(x^0, \mu^0)$  of (16) is not a point of local minimum or maximum of the Lagrangian. In fact, the solution  $(x^0, \mu^0)$  is a saddle point of the Lagrangian.

The first  $n$  equations in (16) make sure that the relationship between the gradients given in (14) is satisfied. The following  $k$  equations in (16) make sure that the points are feasible. As a result, all vectors  $x$  solving (16) are feasible and the gradient condition is satisfied at them. Therefore, the points that solve the optimization problem (12) are among the solutions of the system of equations given in (16).

This analysis suggests that the method of Lagrange multipliers provides a necessary condition for optimality. Under certain assumptions for the objective function and the functions building up the constraint set, (16) turns out to be a necessary and sufficient condition. For example, if  $f(x)$  is a convex and differentiable function and  $h_i(x), i = 1, \dots, k$  are affine functions, then the method of Lagrange multipliers identifies the points solving (12). A function  $h(x)$  is called affine if it has the form  $h(x) = a + c'x$ , where  $a$  is a constant and  $c = (c_1, \dots, c_n)$  is a vector of coefficients. All linear functions are affine. Figure 12 illustrates a convex quadratic function subject to a linear constraint. In this case, the solution point is unique.


# Convex Programming

The general form of convex programming problems is

$$
\begin{array}{l} \min  _ {x} f (x) \\ \text {s u b j e c t} \quad g _ {i} (x) \leq 0, \quad i = 1, \dots , m \tag {17} \\ h _ {j} (x) = 0, \quad j = 1, \dots , k \\ \end{array}
$$ where


$$ f (x) \qquad \qquad \text {i s a c o n v e x o b j e c t i v e f u n c t i o n}
$$

$$
\begin{array}{l l} g _ {1} (x), \ldots , g _ {m} (x) & \text {a r e c o n v e x f u n c t i o n s} \\ & \text {d e f i n i n g t h e i n e q u a l i t y} \\ & \text {c o n s t r a i n t s} \end{array}
$$

$$
\begin{array}{l l} h _ {1} (x), \ldots , h _ {k} (x) & \text {a r e a f f i n e f u n c t i o n s} \\ & \text {d e f i n i n g t h e e q u a l i t y} \\ & \text {c o n s t r a i n t s} \end{array}
$$

Generally, without the assumptions of convexity, problem (17) is more involved than (12) because besides the equality constraints, there are inequality constraints. The KKT condition, generalizing the method of Lagrange multipliers, is only a necessary condition for optimality in this case. However, adding the assumption of convexity makes the KKT condition necessary and sufficient.

Note that, similar to problem (12), the fact that the right-hand side of all constraints is zero is nonrestrictive. The limits can be arbitrary real numbers.

Consider the following two-dimensional optimization problem

$$
\begin{array}{l} \min  _ {x \in \mathbb {R} ^ {2}} \quad \frac {1}{2} x ^ {\prime} C x \\ \text {s u b j e c t} (x _ {1} + 2) ^ {2} + (x _ {2} + 2) ^ {2} \leq 3 \tag {18} \\ \end{array}
$$ in which


$$
C = \left( \begin{array}{c c} 1 & 0. 4 \\ 0. 4 & 1 \end{array} \right)
$$

The objective function is a two-dimensional convex quadratic function and the function in the constraint set is also a convex quadratic function. In fact, the boundary of the feasible set is a circle with a radius of  $\sqrt{3}$  centered at the point with coordinates  $(-2, -2)$ . Figures 13 and 14 show the surface of the objective function and the set of feasible points. The shaded part on the surface indicates the function values of all feasible points. In fact, solving problem (18) reduces to finding the lowest point on the shaded part of the surface. Figure 14 shows the contour lines of the objective function together with the feasible set, which is in gray. Geometrically, the point in the feasible set yielding the minimum of the objective function is positioned where a contour line only touches the constraint set. The position of this point is marked with a black dot and the tangential contour line is given in bold.

Note that the solution points of problems of the type (18) can happen to be not on the boundary of the feasible set but in the interior. For example, suppose that the radius of the circle defining the boundary of the feasible set in (18) is a larger number such that the point  $(0,0)$  is inside the feasible set. Then, the point  $(0,0)$  is the solution to problem (18) because at this point the objective function attains its global minimum.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/1542535d85c20856bb1f2f61c45f678ed20622afd8a992f2ee02ee38ef34a49e.jpg)
Figure 13 The Surface of a Two-Dimensional Convex Quadratic Function and a Convex Quadratic Constraint

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/356ff54bafb2ea7e3e63029a17750839a19013f842e3d0ac55cac695ffac61a0.jpg)
Figure 14 The Tangential Contour Line to the Feasible Set Defined by a Convex Quadratic Constraint


In the two-dimensional case, when we can visualize the optimization problem, geometric reasoning guides us to finding the optimal solution point. In a higher dimensional space, plots cannot be produced and we rely on the analytic method behind the KKT conditions. The KKT conditions corresponding to the convex programming problem (17) are the following:

$$
\nabla f (x) + \sum_ {i = 1} ^ {m} \lambda_ {i} \nabla g _ {i} (x) + \sum_ {j = 1} ^ {k} \mu_ {j} \nabla h _ {j} (x) = 0
$$

$$ g _ {i} (x) \leq 0 \quad i = 1, \dots , m
$$

$$ h _ {j} (x) = 0 \quad j = 1, \dots , k \tag {19}
$$

$$
\lambda_ {i} g _ {i} (x) = 0, \quad i = 1, \dots , m
$$

$$
\lambda_ {i} \geq 0, \quad i = 1, \dots , m
$$

A point  $x^0$  such that  $(x^0, \lambda^0, \mu^0)$  satisfies (19) is the solution to problem (17). Note that if there are no inequality constraints, then the KKT conditions reduce to (16) in the method of Lagrange multipliers. Therefore, the KKT conditions generalize the method of Lagrange multipliers.

The gradient condition in (19) has the same interpretation as the gradient condition in the method of Lagrange multipliers. The set of constraints


$$
\begin{array}{l} g _ {i} (x) \leq 0 \quad i = 1, \dots , m \\ h _ {j} (x) = 0 \quad j = 1, \ldots , k \\ \end{array}
$$ guarantee that a point satisfying (19) is feasible. The next conditions


$$
\lambda_ {i} g _ {i} (x) = 0, \quad i = 1, \ldots , m
$$ are called complementary slackness conditions. If an inequality constraint is satisfied as a strict inequality, then the corresponding multiplier  $\lambda_{i}$  turns into zero according to the complementary slackness conditions. In this case, the corresponding gradient  $\nabla g_{i}(x)$  has no significance in the gradient condition. This reflects the fact that the gradient condition concerns only the constraints satisfied as equalities at the solution point.


Important special cases of convex programming problems include linear programming problems and convex quadratic programming problems, which we consider in the remaining part of this section.

# Linear Programming

Optimization problems are said to be linear programming problems if the objective function is a linear function and the feasible set is defined by linear equalities and inequalities. Since all functions are linear, they are also convex, which means that linear programming problems are also convex problems. The definition of linear programming problems in standard form is the following:

$$
\begin{array}{l} \min  _ {x} c ^ {\prime} x \\ \text {s u b j e c t} A x \leq b \tag {20} \\ x \geq 0 \\ \end{array}
$$ where  $A$  is an  $m \times n$  matrix of coefficients,  $c = (c_{1},\ldots ,c_{n})$  is a vector of objective function coefficients, and  $b = (b_{1},\dots,b_{m})$  is a vector of real numbers. As a result, the constraint set contains  $m$  inequalities defined by linear functions. The feasible points defined by means of linear


![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/ee171eb3ef110e33a272e23d008091250d832148b075c72d441651f708cb1435.jpg) equalities and inequalities are also said to form a polyhedral set. In practice, before solving a linear programming problem, it is usually first reformulated in the standard form given in (20).
Figure 15 The Surface of a Linear Function and a Polyhedral Feasible Set


Figures 15 and 16 show an example of a two-dimensional linear programming problem which is not in standard form as the two variables may become negative. Figure 15 contains the surface of the objective function, which is a plane in this case, and the polyhedral set of feasible points. The shaded area on the surface corresponds to the points in the feasible set. Solving problem (20) reduces to finding the lowest point in the shaded area on the surface. Figure 16 shows the feasible set together with the contour lines of the objective function. The contour lines are parallel straight lines because the objective function is linear. The point in which the objective function attains its minimum is marked with a black dot.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/d36e5f226b18249942f3a726d1cb0b51d03fcb17a6b48e6230f0208597dae01e.jpg)
Figure 16 The Bottom Plot Shows the Tangential Contour Line to the Polyhedral Feasible Set


A general result in linear programming is that, on condition that the problem is bounded, the solution is always at the boundary of the feasible set and, more precisely, at a vertex of the polyhedron. Problem (20) may become unbounded if the polyhedral set is unbounded and there are feasible points such that the objective function can decrease indefinitely. We can summarize that, generally, due to the simple structure of (20), there are three possibilities:

1. The problem is not feasible, because the polyhedral set is empty.
2. The problem is unbounded.
3. The problem has a solution at a vertex of the polyhedral set.

From computational viewpoint, the polyhedral set has a finite number of vertices and an algorithm can be devised with the goal of finding a vertex solving the optimization problem in a finite number of steps. This is the basic idea behind the simplex method, which is an efficient numerical approach to solving linear programming problems. Besides the simplex algorithm, there are other, more contemporary methods, such as the interior point method.

# Quadratic Programming

Besides linear programming, another class of problems with simple structure is the class of quadratic programming problems. It contains optimization problems with a quadratic objective function and linear equalities and inequalities in the constraint set:

$$
\begin{array}{l l} \min  _ {x} & c ^ {\prime} x + \frac {1}{2} x ^ {\prime} H x \\ \text {s u b j e c t t o} & A x \leq b \end{array} \tag {21}
$$ where


$$ c = (c _ {1}, \ldots , c _ {n}) \text {i s a v e c t o r o f c o e f f i c i e n t s} \text {d e f i n i n g t h e l i n e a r p a r t o f}
$$

$$
H = \{h _ {i j} \} _ {i, j = 1} ^ {n} \quad \text {i s a n} n \times n \text {m a t r i x d e f i n i n g} \quad \text {t h e q u a d r a t i c p a r t o f t h e} \quad \text {o b j e c t i v e}
$$

$$
A = \{a _ {i j} \} \qquad \begin{array}{l} \text {i s a k \times n m a t r i x d e f i n i n g k} \\ \text {l i n e a r i n e q u a l i t i e s i n t h e} \\ \text {c o n s t r a i n t s e t} \end{array}
$$

$$ b = (b _ {1}, \ldots , b _ {k}) \begin{array}{l} \text {i s a v e c t o r o f r e a l n u m b e r s} \\ \text {d e f i n i n g t h e r i g h t - h a n d s i d e} \\ \text {o f t h e l i n e a r i n e q u a l i t i e s} \end{array}
$$

In optimal portfolio theory, mean-variance optimization problems in which portfolio variance is in the objective function are quadratic programming problems.

From the point of view of optimization theory, problem (21) is a convex optimization problem if the matrix defining the quadratic part of the objective function is positive semidefinite. In this case, the KKT conditions can be applied to solve it.

# KEY POINTS

1. The mathematical theory of optimization concerns identifying the best alternative within a set of available, or feasible, alternatives and finds application in different areas of finance such as portfolio selection or, more generally, explaining behavior of economic agents in the face of uncertainty.

2. An optimization problem has two important components: an objective function defining the criterion to be optimized and a feasibility set described by means of equality or inequality constraints.

3. The properties of the objective function and the feasibility set are used to distinguish different classes of optimization problems with specific conditions for optimality and numerical solution methods. The most important classes include linear, quadratic, and convex programming problems.
4. In the theory of portfolio selection, the classical mean-variance analysis belongs to the class of quadratic optimization problems.
5. Employing more general reward and risk measures can result in a convex optimization problem but if scenarios for assets returns are available, the portfolio selection problem can be simplified to a linear programming problem in some cases. Optimization of performance ratios can be related to quasi-convex programs.


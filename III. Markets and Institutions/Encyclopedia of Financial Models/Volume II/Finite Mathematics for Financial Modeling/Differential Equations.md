
# Differential Equations

SERGIO M. FOCARDI, PhD

Partner, The Intertek Group

FRANK J. FABOZZI, PhD, CFA, CPA

Professor of Finance, EDHEC Business School

Abstract: In financial modeling, the goal is to be able to represent the problem at hand as a mathematical function. In a mathematical function, the dependent variable depends on one or more variables that are referred to as independent variables. In standard calculus, there are two basic operations with mathematical functions: differentiation and integration. The differentiation operation leads to derivatives. When a mathematical function has only one independent variable, then the derivative is referred to as an ordinary derivative. Typically in financial applications, the independent variable is time. The derivative of a mathematical function that has more than one independent variable (one of which is typically time) is called a partial derivative. A differential equation is an equation that contains derivatives. When it contains only an ordinary derivative, it is referred to as an ordinary differential equation; when the differential equation contains partial derivatives, the differential equation is called a partial differential equation.

In nontechnical terms, differential equations are equations that express a relationship between a function and one or more derivatives (or differentials) of that function. The highest order of derivatives included in a differential equation is referred to as its order. In financial modeling, differential equations are used to specify the laws governing the evolution of price distributions, deriving solutions to simple and complex options, and estimating term structure models. In most applications in finance, only first- and second-order differential equations are found.

Differential equations are classified as ordinary differential equations and partial differential equations depending on the type of derivatives included in the differential equation. When there is only an ordinary derivative (i.e., a derivative of a mathematical function with only one independent variable), the differential equation is called an ordinary differential equation. For differential equations where there are partial derivatives (i.e., a derivative of a mathematical function with more than one independent variable), then the differential equation is called a partial differential equation. Typically in differential equations, one of the independent variables is time. A differential equation may have a derivative of a mathematical function where one or more of the independent variables is a random variable or a


stochastic process. In such instances, the differential equation is referred to as a stochastic differential equation.

The solutions to a differential equation or system of differential equations can be as simple as explicit formulas. When an explicit formula is not possible to obtain, various numerical methods can be used to approximate a solution. Even in the absence of an exact solution, properties of solutions of a differential equation can be determined. A large number of properties of differential equations have been established over the last three centuries. This entry provides only a brief introduction to the concept of differential equations and their properties, limiting our discussion to the principal concepts. We do not cover stochastic differential equations.

A solution of a differential equation is a function that satisfies the given condition. For example, the condition

$$
Y ^ {\prime \prime} (x) + \alpha Y ^ {\prime} (x) + \beta Y (x) - b (x) = 0
$$ equates to zero a linear relationship between an unknown function  $Y(x)$ , its first and second derivatives  $Y'(x), Y''(x)$ , and a known function  $b(x)$ . (In some equations we will denote the first and second derivatives by a single and double prime, respectively.) The unknown function  $Y(x)$  is the solution of the equation that is to be determined.


There are two broad types of differential equations: ordinary differential equations and partial differential equations. Ordinary differential equations are equations or systems of equations involving only one independent variable. Another way of saying this is that ordinary differential equations involve only total derivatives. In contrast, partial differential equations are differential equations or systems of equations involving partial derivatives. That is, there is more than one independent variable.


# ORDINARY DIFFERENTIAL EQUATIONS

In full generality, an ordinary differential equation (ODE) can be expressed as the following relationship:

$$
F [ x, Y (x), Y ^ {1} (x), \dots , Y ^ {(n)} (x) ] = 0
$$ where  $Y^{(m)}(x)$  denotes the  $m$ -th derivative of an unknown function  $Y(x)$ . If the equation can be solved for the  $n$ -th derivative, it can be put in the form:


$$
Y ^ {(n)} (x) = G [ x, Y (x), Y ^ {(1)} (x), \ldots , Y ^ {(n - 1)} (x) ]
$$

# Order and Degree of an ODE

A differential equation is classified in terms of its order and its degree. The order of a differential equation is the order of the highest derivative in the equation. For example, the above differential equation is of order  $n$  since the highest order derivative is  $Y^{(n)}(x)$ . The degree of a differential equation is determined by looking at the highest derivative in the differential equation. The degree is the power to which that derivative is raised.

For example, the following ordinary differential equations are first-degree differential equations of different orders:

$$
\begin{array}{l} Y ^ {(1)} (x) - 1 0 Y (x) + 4 0 = 0 \quad (\text {o r d e r} 1) \\ \begin{array}{c} 4 Y ^ {(3)} (x) + Y ^ {(2)} (x) + Y ^ {(1)} (x) - 0. 5 Y (x) + 1 0 0 = 0 \\ \text {(o r d e r 3)} \end{array} \\ \end{array}
$$

The following ordinary differential equations are of order 3 and fifth degree:

$$
\begin{array}{l} 4 [ Y ^ {(3)} (x) ] ^ {5} + [ Y ^ {(2)} (x) ] ^ {2} + Y ^ {(1)} (x) - 0. 5 Y (x) \\ + 1 0 0 = 0 \\ \end{array}
$$

$$
\begin{array}{l} 4 [ Y ^ {(3)} (x) ] ^ {5} + [ Y ^ {(2)} (x) ] ^ {3} + Y ^ {(1)} (x) - 0. 5 Y (x) \\ + 1 0 0 = 0 \\ \end{array}
$$

When an ordinary differential equation is of the first degree, it is said to be a linear ordinary differential equation.

# Solution to an ODE

Let's return to the general ODE. A solution of this equation is any function  $y(x)$  such that:

$$
F [ x, y (x), y ^ {(1)} (x), \dots , y ^ {(n)} (x) ] = 0
$$

In general there will be not one but an infinite family of solutions. For example, the equation

$$
Y ^ {(1)} (x) = \alpha Y (x)
$$ admits, as a solution, all the functions of the form


$$ y (x) = C \exp (\alpha x)
$$

To identify one specific solution among the possible infinite solutions that satisfy a differential equation, additional restrictions must be imposed. Restrictions that uniquely identify a solution to a differential equation can be of various types. For instance, one could impose that a solution of an  $n$ -th order differential equation passes through  $n$  given points. A common type of restriction—called an initial condition—is obtained by imposing that the solution and some of its derivatives assume given initial values at some initial point.

Given an ODE of order  $n$ , to ensure the uniqueness of solutions it will generally be necessary to specify a starting point and the initial value of  $n-1$  derivatives. It can be demonstrated, given the differential equation

$$
F [ x, Y (x), Y ^ {(1)} (x), \ldots , Y ^ {(n)} (x) ] = 0
$$ that if the function  $F$  is continuous and all of its partial derivatives up to order  $n$  are continuous in some region containing the values  $y_0,\ldots ,y_0^{(n - 1)}$ , then there is a unique solution  $y(x)$  of the equation in some interval  $I = (M\leq x\leq L)$  such that  $y_{0} = Y(x_{0}),\dots,y_{0}^{(n - 1)} = Y^{(n - 1)}(x_{0})$  Note that this theorem states that there is an interval in which the solution exists. Existence and uniqueness of solutions in a given interval


is a more delicate matter and must be examined for different classes of equations.

The general solution of a differential equation of order  $n$  is a function of the form

$$ y = \varphi (x, C _ {1}, \dots , C _ {n})
$$ that satisfies the following two conditions:


- Condition 1. The function  $y = \varphi(x, C_1, \ldots, C_n)$  satisfies the differential equation for any  $n$ -tuple of values  $(C_1, \ldots, C_n)$ .
- Condition 2. Given a set of initial conditions  $y(x_0) = y_0, \dots, y^{(n - 1)}(x_0) = y_0^{(n - 1)}$  that belong to the region where solutions of the equation exist, it is possible to determine  $n$  constants in such a way that the function  $y = \varphi (x,C_1,\ldots ,C_n)$  satisfies these conditions.

The coupling of differential equations with initial conditions embodies the notion of universal determinism of classical physics. Given initial conditions, the future evolution of a system that obeys those equations is completely determined. This notion was forcefully expressed by Pierre-Simon Laplace in the eighteenth century: A supernatural mind who knows the laws of physics and the initial conditions of each atom could perfectly predict the future evolution of the universe with unlimited precision.

In the twentieth century, the notion of universal determinism was challenged twice in the physical sciences. First in the 1920s the development of quantum mechanics introduced the so-called indeterminacy principle which established explicit bounds to the precision of measurements. Later, in the 1970s, the development of nonlinear dynamics and chaos theory showed how arbitrarily small initial differences might become arbitrarily large: The flapping of a butterfly's wings in the southern hemisphere might cause a tornado in the northern hemisphere.

# SYSTEMS OF ORDINARY DIFFERENTIAL EQUATIONS

Differential equations can be combined to form systems of differential equations. These are sets of differential conditions that must be satisfied simultaneously. A first-order system of differential equations is a system of the following type:


$$
\left\{ \begin{array}{l} \frac {d y _ {1}}{d x} = f _ {1} (x, y _ {1}, \ldots , y _ {n}) \\ \frac {d y _ {2}}{d x} = f _ {2} (x, y _ {1}, \ldots , y _ {n}) \\ \cdot \\ \cdot \\ \cdot \\ \frac {d y _ {n}}{d x} = f _ {n} (x, y _ {1}, \ldots , y _ {n}) \end{array} \right.
$$

Solving this system means finding a set of functions  $y_{1},\ldots ,y_{n}$  that satisfy the system as well as the initial conditions:

$$ y _ {1} (x _ {0}) = y _ {1 0}, \dots , y _ {n} (x _ {0}) = y _ {n 0}
$$

Systems of orders higher than one can be reduced to first-order systems in a straightforward way by adding new variables defined as the derivatives of existing variables. As a consequence, an  $n$ -th order differential equation can be transformed into a first-order system of  $n$  equations. Conversely, a system of first-order differential equations is equivalent to a single  $n$ -th order equation.

To illustrate this point, let's differentiate the first equation to obtain

$$
\frac {d ^ {2} y _ {1}}{d x ^ {2}} = \frac {\partial f _ {1}}{\partial x} + \frac {\partial f _ {1}}{\partial y _ {1}} \frac {d y _ {1}}{d x} + \dots + \frac {\partial f _ {1}}{\partial y _ {n}} \frac {d y _ {n}}{d x}
$$

Replacing the derivatives

$$
\frac {d y _ {1}}{d x}, \dots , \frac {d y _ {n}}{d x}
$$ with their expressions  $f_{1},\ldots ,f_{n}$  from the system's equations, we obtain


$$
\frac {d ^ {2} y _ {1}}{d x ^ {2}} = F _ {2} (x, y _ {1}, \ldots , y _ {n})
$$

If we now reiterate this process, we arrive at the  $n$ -th order equation:

$$
\frac {d ^ {(n)} y _ {1}}{d x ^ {(n)}} = F _ {n} (x, y _ {1}, \dots , y _ {n})
$$

We can thus write the following system:

$$
\left\{ \begin{array}{l} \frac {d y _ {1}}{d x} = f _ {1} (x, y _ {1}, \ldots , y _ {n}) \\ \frac {d ^ {2} y _ {1}}{d x ^ {2}} = F _ {2} (x, y _ {1}, \ldots , y _ {n}) \\ \cdot \\ \cdot \\ \cdot \\ \frac {d ^ {(n)} y _ {1}}{d x ^ {(n)}} = F _ {n} (x, y _ {1}, \ldots , y _ {n}) \end{array} \right.
$$

We can express  $y_{2},\ldots ,y_{n}$  as functions of  $x,y_{1},$ $y_1^{\prime},\ldots ,y_1^{(n - 1)}$  by solving, if possible, the system formed with the first  $n - 1$  equations:

$$
\left\{ \begin{array}{l l} y _ {2} = \varphi_ {2} (x, y _ {1}, y _ {1} ^ {\prime}, \ldots , y _ {1} ^ {(n - 1)}) \\ y _ {3} = \varphi_ {3} (x, y _ {1}, y _ {1} ^ {\prime}, \ldots , y _ {1} ^ {(n - 1)}) \\ \cdot \\ \cdot \\ \cdot \\ y _ {n} = \varphi_ {n} (x, y _ {1}, y _ {1} ^ {\prime}, \ldots , y _ {1} ^ {(n - 1)}) \end{array} \right.
$$

Substituting these expressions into the  $n$ -th equation of the previous system, we arrive at the single equation:

$$
\frac {d ^ {(n)} y _ {1}}{d x ^ {(n)}} = \Phi (x, y _ {1} ^ {\prime}, \ldots , y _ {1} ^ {(n - 1)})
$$

Solving, if possible, this equation, we find the general solution

$$ y _ {1} = y _ {1} (x, C _ {1}, \dots , C _ {n})
$$

Substituting this expression for  $y_{1}$  into the previous system,  $y_{2},\ldots ,y_{n}$  can be computed.

# CLOSED-FORM SOLUTIONS OF ORDINARY DIFFERENTIAL EQUATIONS

Let's now consider the methods for solving two types of common differential equations: equations with separable variables and equations of linear type. Let's start with equations with separable variables. Consider the equation

$$
\frac {d y}{d x} = f (x) g (y)
$$

This equation is said to have separable variables because it can be written as an equality between two sides, each depending on only  $y$  or only  $x$ . We can rewrite our equation in the following way:

$$
\frac {d y}{g (y)} = f (x) d x
$$

This equation can be regarded as an equality between two differentials in  $y$  and  $x$  respectively. Their indefinite integrals can differ only by a constant. Integrating the left side with respect to  $y$  and the right side with respect to  $x$ , we obtain the general solution of the equation:

$$
\int \frac {d y}{g (y)} = \int f (x) d x + C
$$

For example, if  $g(y) \equiv y$ , the previous equation becomes

$$
\frac {d y}{y} = f (x) d x
$$ whose solution is


$$
\begin{array}{l} \int \frac {d y}{y} = \int f (x) d x + C \Rightarrow \\ \log y = \int f (x) d x + C \Rightarrow y = A \exp (\int f (x) d x) \\ \end{array}
$$ where  $A = \exp (C)$


A differential equation of this type describes the continuous compounding of time-varying interest rates. Consider, for example, the growth of capital  $C$  deposited in a bank account that earns the variable but deterministic rate  $r = f(t)$ . When interest rates  $R_{i}$  are constant for discrete periods of time  $\Delta t_{i}$ , compounding is obtained by purely algebraic formulas as follows:

$$
R _ {i} \Delta t _ {i} = \frac {C (t _ {i}) - C (t _ {i - \Delta t _ {i}})}{C (t _ {i - \Delta t _ {i}})}
$$

Solving for  $C(t_{i})$ :

$$
C \left(t _ {i}\right) = \left(1 + R _ {i} \Delta t _ {i}\right) C \left(t _ {i - \Delta t _ {i}}\right)
$$

By recursive substitution we obtain

$$
\begin{array}{l} C \left(t _ {i}\right) = \left(1 + R _ {i} \Delta t _ {i}\right) \left(1 + R _ {i - 1} \Delta t _ {i - 1}\right) \dots \\ (1 + R _ {1} \Delta t _ {1}) C (t _ {0}) \\ \end{array}
$$

However, market interest rates are subject to rapid change. In the limit of very short time intervals, the instantaneous rate  $r(t)$  would be defined as the limit, if it exists, of the discrete interest rate:

$$ r (t) = \lim  _ {\Delta t \rightarrow 0} \frac {C (t + \Delta t) - C (t)}{\Delta t C (t)}
$$

The above expression can be rewritten as a simple first-order differential equation in  $C$ :

$$ r (t) C (t) = \frac {d C (t)}{d t}
$$

In a simple intuitive way, the above equation can be obtained considering that in the elementary time  $dt$  the bank account increments by the amount  $dC = C(t)r(t)dt$ . In this equation, variables are separable. It admits the family of solutions:

$$
C = A \exp (\int r (t) d t)
$$ where  $A$  is the initial capital.


# Linear Differential Equation

Linear differential equations are equations of the following type:

$$
\begin{array}{l} a _ {n} (x) y ^ {(n)} + a _ {n - 1} (x) y ^ {(n - 1)} + \dots + a _ {1} (x) y ^ {(1)} \\ + a _ {0} (x) y + b (x) = 0 \\ \end{array}
$$

If the function  $b$  is identically zero, the equation is said to be homogeneous.

In cases where the coefficients  $a$ 's are constant, Laplace transforms provide a powerful method for solving linear differential equations. (Laplace transforms are one of two popular integral transforms—the other being Fourier transforms—used in financial modeling. Integral transforms are operations that take any function into another function of a different variable through an improper integral.) Consider, without loss of generality, the following linear equation with constant coefficients:

$$ a _ {n} y ^ {(n)} + a _ {n - 1} y ^ {(n - 1)} + \dots + a _ {1} y ^ {(1)} + a _ {0} y = b (x)
$$ together with the initial conditions:  $y(0) = y_0, \ldots, y^{(n-1)}(0) = y_0^{(n-1)}$ . In cases in which the initial point is not the origin, by a variable transformation we can shift the origin.


# Laplace Transform

For one-sided Laplace transforms the following formulas hold:

$$
\mathcal {L} \left(\frac {d f (x)}{d x}\right) = s \mathcal {L} [ f (x) ] - f (0)
$$

$$
\begin{array}{l} \mathcal {L} \left(\frac {d ^ {n} f (x)}{d x ^ {n}}\right) = s ^ {n} \mathcal {L} [ f (x) ] - s ^ {n - 1} f (0) - \dots \\ - f ^ {(n - 1)} (0) \\ \end{array}
$$

Suppose that a function  $y = y(x)$  satisfies the previous linear equation with constant coefficients and that it admits a Laplace transform. Apply one-sided Laplace transform to both sides of the equation. If  $Y(s) = \mathcal{L}[y(x)]$ , the following relationships hold:

$$
\begin{array}{l} L \left(a _ {n} y ^ {(n)} + a _ {n - 1} y ^ {(n - 1)} + \dots + a _ {1} y ^ {(1)} + a _ {0} y\right) \\ = L [ b (x) ] \\ \end{array}
$$

$$
\begin{array}{l} a _ {n} \left[ s ^ {n} Y (s) - s ^ {n - 1} y ^ {(1)} (0) - \dots - y ^ {(n - 1)} (0) \right] \\ + a _ {n - 1} \left[ s ^ {n - 1} Y (s) - s ^ {n - 2} y ^ {(1)} (0) - \dots - y ^ {(n - 2)} (0) \right] \\ + \dots + a _ {0} Y (s) = B (s) \\ \end{array}
$$

Solving this equation for  $Y(s)$ , that is,  $Y(s) = g[s,y^{(t)}(0),\ldots ,y^{(n - 1)}(0)]$  the inverse Laplace transform  $y(t) = \mathcal{L}^{-1}[Y(s)]$  uniquely determines the solution of the equation.

Because inverse Laplace transforms are integrals, with this method, when applicable, the solution of a differential equation is reduced to the determination of integrals. Laplace transforms and inverse Laplace transforms are known for large classes of functions. Because of the important role that Laplace transforms play in solving ordinary differential equations in engineering problems, there are published reference tables. Laplace transform methods also yield closed-form solutions of many ordinary differential equations of interest in economics and finance.

# NUMERICAL SOLUTIONS OF ORDINARY DIFFERENTIAL EQUATIONS

Closed-form solutions are solutions that can be expressed in terms of known functions such as polynomials or exponential functions. Before the advent of fast digital computers, the search for closed-form solutions of differential equations was an important task. Today, thanks to the availability of high-performance computing, most problems are solved numerically. This section looks at methods for solving ordinary differential equations numerically.

# The Finite Difference Method

Among the methods used to numerically solve ordinary differential equations subject to initial conditions, the most common is the finite difference method. The finite difference method is based on replacing derivatives with difference equations; differential equations are thereby transformed into recursive difference equations.

Key to this method of numerical solution is the fact that ODEs subject to initial conditions describe phenomena that evolve from some starting point. In this case, the differential equation can be approximated with a system of difference equations that compute the next point based on previous points. This would not be possible should we impose boundary conditions instead of initial conditions. In this latter case, we have to solve a system of linear equations.

To illustrate the finite difference method, consider the following simple ordinary differential equation and its solution in a finite interval:

$$
\begin{array}{l} f ^ {\prime} (x) = f (x) \\ \frac {d f}{f} = d x \\ \log f (x) = x + C \\ f (x) = \exp (x + C) \\ \end{array}
$$

As shown, the closed-form solution of the equation is obtained by separation of variables, that is, by transforming the original equation into another equation where the function  $f$  appears only on the left side and the variable  $x$  only on the right side.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/76a29b67-ac4d-47f0-86d4-1e10a3a8dda0/26b12f079a9d70c2c833ca8998ac67da8b8e5b7e6ae142125b55c0cc6975eef7.jpg)
Figure 1 Numerical Solutions of the Equation  $f' = f$  with the Euler Approximation for Different Step Sizes


Suppose that we replace the derivative with its forward finite difference approximation and solve

$$
\frac {f (x _ {i + 1}) - f (x _ {i})}{x _ {i + 1} - x _ {i}} = f (x _ {i})
$$

$$ f \left(x _ {i + 1}\right) = \left[ 1 + \left(x _ {i + 1} - x _ {i}\right) \right] f \left(x _ {i}\right)
$$

If we assume that the step size is constant for all  $i$ :

$$ f (x _ {i}) = [ 1 + \Delta x ] ^ {i} f (x _ {0})
$$

The replacement of derivatives with finite differences is often called the Euler approximation. The differential equation is replaced by a recursive formula based on approximating the derivative with a finite difference. The  $i$ -th value of the solution is computed from the  $i-1$ -th value. Given the initial value of the func tion  $f$ , the solution of the differential equation can be arbitrarily approximated by choosing a sufficiently small interval. Figure 1 illustrates this computation for different values of  $\Delta x$ .


In the previous example of a first-order linear equation, only one initial condition was involved. Let's now consider a second-order equation:

$$ f ^ {\prime \prime} (x) = k f (x) = 0
$$

This equation describes oscillatory motion, such as the elongation of a pendulum or the displacement of a spring.

To approximate this equation we must approximate the second derivative. This could be done, for example, by combining difference quotients as follows:

$$ f ^ {\prime} (x) \approx \frac {f (x + \Delta x) - f (x)}{\Delta x}
$$

$$ f ^ {\prime} (x + \Delta x) \approx \frac {f (x + 2 \Delta x) - f (x + \Delta x)}{\Delta x}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/76a29b67-ac4d-47f0-86d4-1e10a3a8dda0/563d3cd3df71d3cca53279bb80fcd9b11a80dfce51fb767d72d8d96ddcfa7c9b.jpg)
Figure 2 Numerical Solution of the Equation  $f^{\prime \prime} + f = 0$  with the Euler Approximation

$$
\begin{array}{l} f ^ {\prime \prime} (x) \approx \frac {f ^ {\prime} (x + \Delta x) - f ^ {\prime} (x)}{\Delta x} \\ = \frac {\frac {f (x + 2 \Delta x) - f (x - \Delta x)}{\Delta x} - \frac {f (x + \Delta x) - f (x)}{\Delta x}}{\Delta x} \\ = \frac {f (x + 2 \Delta x) - 2 f (x + \Delta x) + f (x)}{(\Delta x) ^ {2}} \\ \end{array}
$$

With this approximation, the original equation becomes

$$
\begin{array}{l} f ^ {\prime \prime} (x) + k f (x) \approx \\ \frac {f (x + 2 \Delta x) - 2 f (x + \Delta x) + f (x)}{(\Delta x) ^ {2}} + k f (x) = 0 \\ \end{array}
$$

$$
\begin{array}{l} f (x + 2 \Delta x) - 2 f (x + \Delta x) + (1 + k (\Delta x) ^ {2}) f (x) \\ = 0 \end{array}
$$

We can thus write the approximation scheme:

$$ f (x + \Delta x) = f (x) + \Delta x f ^ {\prime} (x)
$$

$$ f (x + 2 \Delta x) = 2 f (x + \Delta x) - (1 + k (\Delta x) ^ {2}) f (x)
$$

Given the increment  $\Delta x$  and the initial values  $f(0), f'(0)$ , using the above formulas we can recursively compute  $f(0 + \Delta x), f(0 + 2\Delta x)$ , and so on. Figure 2 illustrates this computation.

In practice, the Euler approximation scheme is often not sufficiently precise and more sophisticated approximation schemes are used. For example, a widely used approximation scheme is the Runge-Kutta method. We give an example of the Runge-Kutta method in the case of the equation  $f'' + f = 0$  which is equivalent to the linear system:

$$
\begin{array}{l} x ^ {\prime} = y \\ y ^ {\prime} = - x \\ \end{array}
$$

In this case the Runge-Kutta approximation scheme is the following:

$$
\begin{array}{l} k _ {1} = h y (i) \\ h _ {1} = - h x (i) \\ k _ {2} = h \left[ y (i) + \frac {1}{2} h _ {1} \right] \\ h _ {2} = - h \left[ x (i) + \frac {1}{2} k _ {1} \right] \\ k _ {3} = h \left[ y (i) + \frac {1}{2} h _ {2} \right] \\ h _ {3} = - h \left[ x (i) + \frac {1}{2} k _ {2} \right] \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/76a29b67-ac4d-47f0-86d4-1e10a3a8dda0/7af9bf30047e6c1ef97f9b2c7f7096790da2cd75a69fedba2dbebfd16b2a7d66.jpg)
Figure 3 Numerical Solution of the Equation  $f' = f$  with the Runge-Kutta Method After 10 Steps

$$ k _ {4} = h \left[ y (i) + h _ {3} \right]
$$

$$ h _ {4} = - h [ x (i) + k _ {3} ]
$$

$$ x (i + 1) = x (i) + \frac {1}{6} \left(k _ {1} + 2 k _ {2} + 2 k _ {3} + k _ {4}\right)
$$

$$ y (i + 1) = y (i) + \frac {1}{6} \left(h _ {1} + 2 h _ {2} + 2 h _ {3} + h _ {4}\right)
$$

Figures 3 and 4 illustrate the results of this method in the two cases  $f' = f$  and  $f'' + f = 0$ .

As mentioned above, this numerical method depends critically on our having as givens (1) the initial values of the solution, and (2) its first derivative. Suppose that instead of initial values two boundary values were given, for instance the initial value of the solution and its value 1,000 steps ahead, that is,  $f(0) = f_{0}$ ,  $f(0 + 1,000\Delta x) = f_{1000}$ . Conditions like these are rarely used in the study of dynamical systems as they imply foresight, that is, knowledge of the future position of a system. However, they often appear in static systems and when trying to determine what initial conditions should be imposed to reach a given goal at a given date.

In the case of boundary conditions, one cannot write a direct recursive scheme; it's neces sary to solve a system of equations. For instance, we could introduce the derivative  $f'(x) = \delta$  as an unknown quantity. The difference quotient that approximates the derivative becomes an unknown. We can now write a system of linear equations in the following way:


$$
\left\{ \begin{array}{l} f (\Delta x) = f _ {0} + \delta \Delta x \\ f (2 \Delta x) = 2 f (\Delta x) - (1 + k (\Delta x) ^ {2}) f _ {0} \\ f (3 \Delta x) = 2 f (2 \Delta x) - (1 + k (\Delta x) ^ {2}) f (\Delta x) \\ \cdot \\ \cdot \\ \cdot \\ f _ {1 0 0 0} = 2 f (9 9 9 \Delta x) - (1 + k (\Delta x) ^ {2}) f (9 9 8 \Delta x) \end{array} \right.
$$

This is a system of 1,000 equations in 1,000 unknowns. Solving the system we compute the entire solution. In this system two equations, the first and the last, are linked to boundary values; all other equations are transfer equations that express the dynamics (or the law) of the system. This is a general feature of boundary value problems. We will encounter it again when discussing numerical solutions of partial differential equations.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/76a29b67-ac4d-47f0-86d4-1e10a3a8dda0/3a4e56196710338c9d3f54a4eda11999f0d5a0441c40649be4a4eda29528c345.jpg)
Figure 4 Numerical Solution of the Equation  $f^{\prime \prime} + f = 0$  with the Runge-Kutta Method

In the above example, we chose a forward scheme where the derivative is approximated with the forward difference quotient. One might use a different approximation scheme, computing the derivative in intervals centered around the point  $x$ . When derivatives of higher orders are involved, the choice of the approximation scheme becomes critical. Recall that when we approximated first and second derivatives using forward differences, we were required to evaluate the function at two points  $(i,i + 1)$  and three points  $(i,i + 1,i + 2)$  ahead respectively. If purely forward schemes are employed, computing higher-order derivatives requires many steps ahead. This fact might affect the precision and stability of numerical computations.

We saw in the examples that the accuracy of a finite difference scheme depends on the discretization interval. In general, a finite difference scheme works, that is, it is consistent and stable, if the numerical solution converges uniformly to the exact solution when the length of the discretization interval tends to zero. Suppose that the precision of an approximation scheme depends on the length of the discretization interval  $\Delta x$ . Consider the difference  $\delta f = \hat{f}(x) - f(x)$  between the approximate and the exact solutions. We say that  $\delta f \to 0$  uniformly in the interval  $[a, b]$  when  $\Delta x \to 0$  if, given any  $\varepsilon$  arbitrarily small, it is possible to find a  $\Delta x$  such that  $|\delta f| < \varepsilon$ ,  $\forall x \in [a, b]$ .


# NONLINEAR DYNAMICS AND CHAOS

Systems of differential equations describe dynamical systems that evolve starting from initial conditions. A fundamental concept in the theory of dynamical systems is that of the stability of solutions. This topic has become of paramount importance with the development of nonlinear dynamics and with the discovery of chaotic phenomena. We can only give a brief introductory account of this subject whose role in economics is still the subject of debate.

Intuitively, a dynamical system is considered stable if its solutions do not change much when the system is only slightly perturbed.

There are different ways to perturb a system: changing parameters in its equations, changing the known functions of the system by a small amount, or changing the initial conditions.

Consider an equilibrium solution of a dynamical system, that is, a solution that is time invariant. If a stable system is perturbed when it is in a position of equilibrium, it tends to return to the equilibrium position or, in any case, not to diverge indefinitely from its equilibrium position. For example, a damped pendulum—if perturbed from a position of equilibrium—will tend to go back to an equilibrium position. If the pendulum is not damped it will continue to oscillate forever.

Consider a system of  $n$  equations of first order. (As noted above, systems of higher orders can always be reduced to first-order systems by enlarging the set of variables.) Suppose that we can write the system explicitly in the first derivatives as follows:

$$
\left\{ \begin{array}{l} \frac {d y _ {1}}{d x} = f _ {1} (x, y _ {1}, \ldots , y _ {n}) \\ \frac {d y _ {2}}{d x} = f _ {2} (x, y _ {1}, \ldots , y _ {n}) \\ \cdot \\ \cdot \\ \cdot \\ \frac {d y _ {n}}{d x} = f _ {n} (x, y _ {1}, \ldots , y _ {n}) \end{array} \right.
$$

If the equations are all linear, a complete theory of stability has been developed. Essentially, linear dynamical systems are stable except possibly at singular points where solutions might diverge. In particular, a characteristic of linear systems is that they incur only small changes in the solution as a result of small changes in the initial conditions.

However, during the 1970s, it was discovered that nonlinear systems have a different behavior. Suppose that a nonlinear system has at least three degrees of freedom (that is, it has three independent nonlinear equations). The dynamics of such a system can then become chaotic in the sense that arbitrarily small changes in initial conditions might diverge. This sensitivity to initial conditions is one of the signatures of chaos. Note that while discrete systems such as discrete maps can exhibit chaos in one dimension, continuous systems require at least three degrees of freedom (that is, three equations).


Sensitive dependence from initial conditions was first observed in 1960 by the meteorologist Edward Lorenz of the Massachusetts Institute of Technology. Lorenz remarked that computer simulations of weather forecasts starting, apparently, from the same meteorological data could yield very different results. He argued that the numerical solutions of extremely sensitive differential equations such as those he was using produced diverging results due to rounding-off errors made by the computer system. His discovery was published in a meteorological journal where it remained unnoticed for many years.

# Fractals

While in principle deterministic chaotic systems are unpredictable because of their sensitivity to initial conditions, the statistics of their behavior can be studied. Consider, for example, the chaos laws that describe the evolution of weather: While the weather is basically unpredictable over long periods of time, long-run simulations are used to predict the statistics of weather.

It was discovered that probability distributions originating from chaotic systems exhibit fat tails in the sense that very large, extreme events have nonnegligible probabilities. (See Brock, Hsieh, and LeBaron [1991] and Hsieh [1991].) It was also discovered that chaotic systems exhibit complex unexpected behavior. The motion of chaotic systems is often associated with self-similarity and fractal shapes.

Fractals were introduced in the 1960s by Benoit Mandelbrot, a mathematician working at the IBM research center in Yorktown Heights, New York. Starting from the empirical observation that cotton price time-series are similar at different time scales, Mandelbrot developed a powerful theory of fractal geometrical objects.

Fractals are geometrical objects that are geometrically similar to part of themselves. Stock prices exhibit this property insofar as price time-series look the same at different time scales.

Chaotic systems are also sensitive to changes in their parameters. In a chaotic system, only some regions of the parameter space exhibit chaotic behavior. The change in behavior is abrupt and, in general, it cannot be predicted analytically. In addition, chaotic behavior appears in systems that are apparently very simple.

While the intuition that chaotic systems might exist is not new, the systematic exploration of chaotic systems started only in the 1970s. The discovery of the existence of nonlinear chaotic systems marked a conceptual crisis in the physical sciences: It challenges the very notion of the applicability of mathematics to the description of reality. Chaos laws are not testable on a large scale; their applicability cannot be predicted analytically. Nevertheless, the statistics of chaos theory might still prove to be meaningful.

The economy being a complex system, the expectation was that its apparently random behavior could be explained as a deterministic chaotic system of low dimensionality. Despite the fact that tests to detect low-dimensional chaos in the economy have produced a substantially negative response, it is easy to make macroeconomic and financial econometric models exhibit chaos. (See Brock, Dechert, Scheinkman, and LeBaron [1996] and Brock and Hommes [1997].) As a matter of fact, most macroeconomic models are nonlinear. Though chaos has not been detected in economic time-series, most economic dynamic models are nonlinear in more than three dimensions and thus potentially chaotic. At this stage of the research, we might conclude that if chaos exists in economics it is not of the low-dimensional type.

# PARTIAL DIFFERENTIAL EQUATIONS

To illustrate the notion of a partial differential equation (PDE), let's start with equations in two dimensions. An  $n$ -order PDE in two dimensions  $x, y$  is an equation of the form


$$
\begin{array}{l} F \left(x, y, \frac {\partial f}{\partial x}, \frac {\partial f}{\partial y}, \dots , \frac {\partial^ {(i)} f}{\partial^ {(k)} x \partial^ {(i - k)} y}\right) \\ = 0, 0 \leq k \leq i, 0 \leq i \leq n \\ \end{array}
$$

A solution of the previous equation will be any function that satisfies the equation.

In the case of PDEs, the notion of initial conditions must be replaced with the notion of boundary conditions or initial plus boundary conditions. Solutions will be defined in a multidimensional domain. To identify a solution uniquely, the value of the solution on some subdomain must be specified. In general, this subdomain will coincide with the boundary (or some portion of the boundary) of the domain.

# Diffusion Equation

Different equations will require and admit different types of boundary and initial conditions. The question of the existence and uniqueness of solutions of PDEs is a delicate mathematical problem. We can only give a brief account by way of an example.

Let's consider the diffusion equation. This equation describes the propagation of the probability density of stock prices under the random-walk hypothesis:

$$
\frac {\partial f}{\partial t} = a ^ {2} \frac {\partial^ {2} f}{\partial x ^ {2}}
$$

The Black-Scholes equation, which describes the evolution of option prices, can be reduced to the diffusion equation.

The diffusion equation describes propagating phenomena. Call  $f(t,x)$  the probability density that prices have value  $x$  at time  $t$ . In finance theory, the diffusion equation describes the time-evolution of the probability density function  $f(t,x)$  of stock prices that follow a random walk. It is therefore natural to impose initial and boundary conditions on the distribution of prices.

In general, we distinguish two different problems related to the diffusion equation: the first boundary value problem and the Cauchy initial value problem, named after the French mathematician Augustin Cauchy who first formulated it. The two problems refer to the same diffusion equation but consider different domains and different initial and boundary conditions. It can be demonstrated that both problems admit a unique solution.


The first boundary value problem seeks to find in the rectangle  $0 \leq x \leq 1$ ,  $0 \leq t \leq T$  a continuous function  $f(t, x)$  that satisfies the diffusion equation in the interior  $Q$  of the rectangle plus the following initial condition,

$$ f (0, x) = \phi (x), 0 \leq x \leq l
$$ and boundary conditions,


$$ f (t, 0) = f _ {1} (t), \quad f (t, l) = f _ {2} (t), \quad 0 \leq t \leq T
$$

The functions  $f_{1}, f_{2}$  are assumed to be continuous and  $f_{1}(0) = \phi(0), f_{2}(0) = \phi(l)$ .

The Cauchy problem is related to an infinite half plane instead of a finite rectangle. It is formulated as follows. The objective is to find for any  $x$  and for  $t \geq 0$  a continuous and bounded function  $f(t, x)$  that satisfies the diffusion equation and which, for  $t = 0$ , is equal to a continuous and bounded function  $f(0, x) = \phi(x)$ ,  $\forall x$ .

# Solution of the Diffusion Equation

The first boundary value problem of the diffusion equation can be solved exactly. We illustrate here a widely used method based on the separation of variables, which is applicable if the boundary conditions on the vertical sides vanish (that is, if  $f_{1}(t) = f_{2}(t) = 0$ ). The method involves looking for a tentative solution in the form of a product of two functions, one that depends only on  $t$  and the other that depends only on  $x$ :  $f(t,x) = h(t)g(x)$ .

If we substitute the previous tentative solution in the diffusion equation

$$
{\frac {\partial f}{\partial t}} = a ^ {2} {\frac {\partial^ {2} f}{\partial x ^ {2}}}
$$ we obtain an equation where the left side depends only on  $t$  while the right side depends


only on  $x$ :

$$
\frac {d h (t)}{d t} g (x) = a ^ {2} h (t) \frac {d ^ {2} g (x)}{d x ^ {2}}
$$

$$
\frac {d h (t)}{d t} \frac {1}{h (t)} = a ^ {2} \frac {d ^ {2} g (x)}{d x ^ {2}} \frac {1}{g (x)}
$$

This condition can be satisfied only if the two sides are equal to a constant. The original diffusion equation is therefore transformed into two ordinary differential equations:

$$
\frac {1}{a ^ {2}} \frac {d h (t)}{d t} = b h (t)
$$

$$
\frac {d ^ {2} g (x)}{d x ^ {2}} = b g (x)
$$ with boundary conditions  $g(0) = g(l) = 0$ . From the above equations and boundary conditions, it can be seen that  $b$  can assume only the negative values,


$$ b = - \frac {k ^ {2} \pi^ {2}}{l ^ {2}}, k = 1, 2, \dots
$$ while the functions  $g$  can only be of the form


$$ g (x) = B _ {k} \sin \frac {k \pi}{l} x
$$

Substituting for  $h$ , we obtain

$$ h (t) = B _ {k} ^ {\prime} \exp \left(- \frac {a ^ {2} k ^ {2} \pi^ {2}}{l ^ {2}} t\right)
$$

Therefore, we can see that there are denumerably infinite solutions of the diffusion equation of the form

$$ f _ {x} (t, x) = C _ {k} \exp \left(- \frac {a ^ {2} k ^ {2} \pi^ {2}}{l ^ {2}} t\right) \sin \frac {k \pi}{l} x
$$

All these solutions satisfy the boundary conditions  $f(t,0) = f(t,l) = 0$ . By linearity, we know that the infinite sum

$$
\begin{array}{l} f (t, x) = \sum_ {k = 1} ^ {\infty} f _ {k} (t, x) \\ = \sum_ {k = 1} ^ {\infty} C _ {k} \exp \left(- \frac {a ^ {2} k ^ {1} \pi^ {2}}{l ^ {2}} t\right) \sin \frac {k \pi}{l} x \\ \end{array}
$$ will satisfy the diffusion equation. Clearly  $f(t,x)$  satisfies the boundary conditions  $f(t,0) = f(t,l) = 0$ . In order to satisfy the initial condition, given that  $\phi (x)$  is bounded and continuous and


that  $\phi (0) = \phi (l) = 0$  , it can be demonstrated that the coefficients  $C_s$  can be uniquely determined through the following integrals, which are called the Fourier integrals:

$$
C _ {k} = \frac {2}{L} \int_ {0} ^ {L} \phi (\xi) \sin \left(\frac {\pi k}{L} \xi\right) d \xi
$$

The previous method applies to the first boundary value problem but cannot be applied to the Cauchy problem, which admits only an initial condition. It can be demonstrated that the solution of the Cauchy problem can be expressed in terms of a convolution with a Green's function. In particular, it can be demonstrated that the solution of the Cauchy problem can be written in closed form as follows:

$$ f (t, x) = \frac {1}{2 \sqrt {\pi}} \int_ {- \infty} ^ {\infty} \frac {\phi (\xi)}{\sqrt {t}} \exp \left\{- \frac {(x - \xi) ^ {2}}{4 t} \right\} d \xi
$$ for  $t > 0$  and  $f(0,x) = \phi (x)$ . It can be demonstrated that the Black-Scholes equation, which


is an equation of the form

$$
\frac {\partial f}{\partial t} + \frac {1}{2} \sigma^ {2} x ^ {2} \frac {\partial^ {2} f}{\partial x ^ {2}} + r x \frac {\partial f}{\partial x} - r f = 0
$$ can be reduced through transformation of variables to the standard diffusion equation to be solved with the Green's function approach.


# Numerical Solution of PDEs

There are different methods for the numerical solution of PDEs. We illustrate the finite difference methods, which are based on approximating derivatives with finite differences. Other discretization schemes such as finite elements and spectral methods are possible but, being more complex, they go beyond the scope of this book.

Finite difference methods result in a set of recursive equations when applied to initial conditions. When finite difference methods are applied to boundary problems, they require the solution of systems of simultaneous linear equations. PDEs might exhibit boundary conditions, initial conditions, or a mix of the two.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/76a29b67-ac4d-47f0-86d4-1e10a3a8dda0/08a64b0a56697e282636c08b6e04e9db60fdb6dc08e592d8a4f0cfa8c4db00ae.jpg)
Figure 5 Solution of the Cauchy Problem by the Finite Difference Method

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/76a29b67-ac4d-47f0-86d4-1e10a3a8dda0/85259f60f9e21b83607bd429effedc8cf3150400a69a9afd905e893619439923.jpg)
Figure 6 Solution of the First Boundary Problem by the Finite Difference Method

The Cauchy problem of the diffusion equation is an example of initial conditions. The simplest discretization scheme for the diffusion equation replaces derivatives with their difference quotients. As for ordinary differential equations, the discretization scheme can be written as follows:

$$
\frac {\partial f}{\partial t} \approx \frac {f (t + \Delta t , x) - f (t , x)}{\Delta t}
$$

$$
\frac {\partial^ {2} f}{\partial x ^ {2}} \approx \frac {f (t , x + \Delta x) - 2 f (t , x) + f (t , x - \Delta x)}{(\Delta x) ^ {2}}
$$

In the case of the Cauchy problem, this approximation scheme defines the forward recursive algorithm. It can be proved that the algorithm is stable only if the Courant-Friedrichs-Lewy (CFL) conditions

$$
\Delta t <   \frac {(\Delta x) ^ {2}}{2 a ^ {2}}
$$ are satisfied.


Different approximation schemes can be used. In particular, the forward approximation to the derivative used above could be replaced by centered approximations. Figure 5 illustrates the solution of a Cauchy problem for initial conditions that vanish outside of a finite interval. The simulation shows that solutions diffuse in the entire half space.

Applying the same discretization to a first boundary problem would require the solution of a system of linear equations at every step. Figure 6 illustrates this case.

# KEY POINTS

- Basically, differential equations are equations that express a relationship between a function and one or more derivatives (or differentials) of that function.
- The two classifications of differential equations are ordinary differential equations and partial differential equations. The classification depends on the type of derivatives included in the differential equation: ordinary differential equation when there is only an ordinary derivative and partial differential equation where there are partial derivatives.


- Typically in differential equations, one of the independent variables is time.
- The term stochastic differential equation refers to a differential equation in which a derivative of one or more of the independent variables is a random variable or a stochastic process.
- Differential equations are conditions that must be satisfied by their solutions. Differential equations generally admit infinite solutions. Initial or boundary conditions are needed to identify solutions uniquely.
- Differential equations are the key mathematical tools for the development of modern science; in finance they are used in arbitrage pricing, to define stochastic processes, and to compute the time evolution of averages.
- Differential equations can be solved in closed form or with numerical methods. Finite difference methods approximate derivatives with difference quotients. Initial conditions yield recursive algorithms.
- Boundary conditions require the solution of linear equations.

# NOTES

1. The condition of existence and continuity of derivatives is stronger than necessary. The Lipschitz condition, which requires that the incremental ratio be uniformly bounded in a given interval, would suffice.
2. In physics, the diffusion equation describes phenomena such as the diffusion of particles suspended in some fluid. In this case, the diffusion equation describes the density of particles at a given moment at a given point.

# REFERENCES

Brock, W., Dechert, W. D., Scheinkman, J. A., and LeBaron, B. (1996). A test for independence based on the correlation dimension. Econometric Reviews 15, 3: 197-235.
Brock, W., and Hommes, C. (1997). A rational route to randomness. *Econometrica* 65, 5: 1059-1095.
Brock, W., Hsieh, D., and LeBaron, B. (1991). Nonlinear Dynamics, Chaos, and Instability. Cambridge, MA: MIT Press.
Hsieh, D. (1991). Chaos and nonlinear dynamics: Application to financial markets. Journal of Finance 46, 5: 1839-1877.
King, A. C., Billingham, J., and Otto, S. R. (2003). Differential Equations: Linear, Nonlinear, Ordinary, Partial. New York: Cambridge University Press.

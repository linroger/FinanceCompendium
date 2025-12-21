---
title: Difference Equations
parent_directory: III. Markets and Institutions/Encyclopedia of Financial Models/Volume II/Finite Mathematics for Financial Modeling
formatted: 2025-12-21 08:07:00 PM
formatter_model: claude-opus-4-5-20251101
cli_tool: opencode
primary_tags:
  - difference equations
  - linear difference equations
  - lag operator
  - characteristic equation
secondary_tags:
  - homogeneous equations
  - real roots
  - complex roots
  - stability analysis
  - equilibrium solutions
  - recursive sequences
  - time series analysis
  - dynamic models
cssclasses: academia
---

# Difference Equations

SERGIO M. FOCARDI, PhD

Partner, The Intertek Group

FRANK J. FABOZZI, PhD, CFA, CPA

Professor of Finance, EDHEC Business School

Abstract: The theory of linear difference equations has found applications in many areas in finance. A difference equation is an equation that involves differences between successive values of a function of a discrete variance. The theory of linear difference equations covers three areas: solving difference equations, describing the behavior of difference equations, and identifying the equilibrium (or critical value) and stability of difference equations.

Linear difference equations are important in the context of dynamic econometric models. Stochastic models in finance are expressed as linear difference equations with random disturbances added. Understanding the behavior of solutions of linear difference equations helps develop intuition about the behavior of these models. The relationship between difference equations (the subject of this entry) and differential equations is as follows. The latter are great for modeling situations in finance where there is a continually changing value. The problem is that not all changes in value occur continuously. If the change in value occurs incrementally rather than continuously, then differential equations have their limitations. Instead, a financial modeler can use difference equations, which are recursively defined sequences.

In this entry we explain the theory of linear difference equations and describe how to compute explicit solutions of different types of equations.


## THE LAG OPERATOR  $L$

The lag operator  $L$  is a linear operator that acts on doubly infinite time series by shifting positions by one place:

The difference operator  $\Delta x_{t} = x_{t} - x_{t - 1}$  can be written in terms of the lag operator as

$$
\Delta x_{t} = (1 - L) x_{t}
$$

Products and thus powers of the lag operator are defined as follows:

$$
(L \times L) x_{t} = L^{2} x_{t} = L (L x_{t}) = x_{t - 2}
$$

From the previous definition, we can see that the  $i$ -th power of the lag operator shifts the series by  $i$  places:


$$
L^{i} x_{t} = x_{t - i}
$$

The lag operator is linear, that is, given scalars  $a$  and  $b$  we have

$$
\left(a L^{i} + b L^{j}\right) x_{t} = a x_{t - i} + b x_{t - j}
$$

Hence we can define the polynomial operator:

$$
A (L) = \left(1 - a_{1} L - \dots - a_{P} L^{p}\right) \equiv \left(1 - \sum_{i = 1}^{p} a_{i} L^{i}\right)

## HOMOGENEOUS DIFFERENCE EQUATIONS

Homogeneous difference equations are linear conditions that link the values of variables at different time lags. Using the lag operator  $L$ , they can be written as follows:

$$
\begin{array}{l} A (L) x_{t} = \left(1 - a_{1} L - \dots - a_{P} L^{p}\right) x_{t} \\ = (1 - \lambda_{1} L) \times \dots \times (1 - \lambda_{p} L) x_{t} = 0 \\ \end{array}
$$ where the  $\lambda_{i}, i = 1,2,\ldots ,p$  are the solutions of the characteristic equation:


$$
\begin{array}{l} z^{p} - a_{1} z^{p - 1} - \dots - a_{P - 1} z - a_{P} \\ = (z - \lambda_{1}) \times \dots \times (z - \lambda_{p}) = 0 \\ \end{array}
$$

Suppose that time extends from  $0\Rightarrow \infty ,t = 0,1$  2,... and that the initial conditions  $(x_{-1},x_{-2},\dots$ $x_{-P})$  are given.

# Real Roots

Consider first the case of real roots. In this case, as we see later in this entry, solutions are sums of exponentials. First suppose that the roots of the characteristic equation are all real and distinct. It can be verified by substitution that any series of the form

$$ x_{t} = C \left(\lambda_{i}\right)^{t}
$$ where  $C$  is a constant, solves the homogeneous difference equation. In fact, we can write


$$
(1 - \lambda_{i} L) (C \lambda_{i}^{t}) = C \lambda_{i}^{t} - \lambda_{i} C \lambda_{i}^{t - 1} = 0
$$

In addition, given the linearity of the lag operator, any linear combination of solutions of the homogeneous difference equation is another solution. We can therefore state that the following series solves the homogeneous difference equation:


$$ x_{t} = \sum_{i = 1}^{p} C_{i} \lambda_{i}^{t}
$$

By solving the linear system

$$
\begin{array}{l} x_{- 1} = \sum_{i = 1}^{p} C_{i} \lambda_{i}^{- 1} \\ x_{- p} = \sum_{i = 1}^{p} C_{i} \lambda_{i}^{- p} \\ \end{array}
$$ that states that the  $p$  initial conditions are satisfied, we can determine the  $p$  constants  $C_s$ .


Suppose now that all  $m$  roots of the characteristic equation are real and coincident. In this case, we can represent a difference equation in the following way:

$$
A (L) = 1 - a_{1} L - \dots - a_{P} L^{p} = (1 - \lambda L)^{p}
$$

It can be demonstrated by substitution that, in this case, the general solution of the process is the following:

$$ x_{t} = C_{1} (\lambda)^{t} + C_{2} t (\lambda)^{t} + \dots + C_{p} t^{p - 1} (\lambda)^{t}
$$

In the most general case, assuming that all roots are real, there will be  $m < p$  distinct roots  $\varphi_{i}, i = 1,2,\ldots,m$  each of order  $n_i\geq 1$

$$
\sum_{i = 1}^{m} n_{i} = p
$$ and the general solution of the process will be


$$
\begin{array}{l} x_{t} = C_{1}^{1} (\lambda_{1})^{t} + C_{2}^{1} t (\lambda_{1})^{t} + \dots + C_{n_{1}}^{1} t^{n_{1} - 1} (\lambda_{1})^{t} + \dots \\ + C_{1}^{m} \left(\lambda_{m}\right)^{t} + C_{2}^{m} t \left(\lambda_{m}\right)^{t} + \dots + C_{n_{m}}^{m} t^{n_{m} - 1} \left(\lambda_{m}\right)^{t} \\ \end{array}
$$

We can therefore conclude that the solutions of a homogeneous difference equation whose characteristic equation has only real roots is formed by a sum of exponentials. If these roots have modulus greater than unity, then solutions are diverging exponentials; if they have modulus smaller than unity, solutions are exponentials that go to zero. If the roots are unity, solutions are either constants or, if the roots have multiplicity greater than 1, polynomials.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/76a29b67-ac4d-47f0-86d4-1e10a3a8dda0/5ebce44946738f89c90a6c04b52e837ed8c56234668dca5885b065f48f5a2fad.jpg)
Figure 1 Solution of the Equation  $(1 - 0.8L)x_{t} = 0$  with Initial Condition  $x_{1} = 1$

Figure 1 illustrates the simple equation

$$
\begin{array}{l} A (L) x_{t} = (1 - 0.8 L) x_{t} = 0, \lambda = 0.8, \\ t = 1, 2, \dots , n, \dots \\ \end{array}
$$ whose solution, with initial condition  $x_{1} = 1$  , is


$$ x_{t} = 1.25 (0.8)^{t}
$$

The behavior of the solution is that of an exponential decay.

Figure 2 illustrates the equation

$$
\begin{array}{l} A (L) x_{t} = (1 + 0. 8 L) x_{t} = 0, \lambda = - 0. 8, \\ t = 1, 2, \dots , n, \dots \\ \end{array}
$$

Simulations were run for 100 time steps whose solution, with initial condition  $x_{1} = 1$ , is

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/76a29b67-ac4d-47f0-86d4-1e10a3a8dda0/76309ccadbb9fc2fe5223a5c5ea6a03ec01b9794a02719133c31f2b1ac7ce5d9.jpg)
Figure 2 Solution of the Equation  $(1 + 0.8L)x_{t} = 0$  with Initial Condition  $x_{1} = 1$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/76a29b67-ac4d-47f0-86d4-1e10a3a8dda0/77ec20882a2b044dfcc163a6ff98acca15546117f026cb6dc7c48cb42c2a490a.jpg)
Figure 3 Solution of the Equation  $(1 - 1.7L + 0.72L^2)x_t = 0$  with Initial Conditions  $x_{1} = 1, x_{2} = 1.5$


$$ x_{t} = - 1. 2 5 (- 0. 8)^{t}
$$

The behavior of the solution is that of an exponential decay with oscillations at each step. The oscillations are due to the change in sign of the exponential at odd and even time steps.

If the equation has more than one real root, then the solution is a sum of exponentials. Figure 3 illustrates the equation

$$
\begin{array}{l} A (L) x_{t} = \left(1 - 1. 7 L + 0. 7 2 L^{2}\right) x_{t} = 0, \lambda_{1} = 0. 8, \\ \lambda_{2} = 0. 9, \quad t = 1, 2, \ldots , n, \ldots \\ \end{array}
$$ whose solution, with initial condition  $x_{1} = 1$ $x_{2} = 1.5,$  is


$$ x_{t} = - 7. 5 (0. 8)^{t} + 7. 7 7 7 8 (0. 9)^{t}
$$

The behavior of the solution is that of an exponential decay after a peak.

Figure 4 illustrates the equation

$$
\begin{array}{l} A (L) x_{t} = \left(1 - 1. 9 L + 0. 8 8 L^{2}\right) x_{t} = 0, \\ \lambda_{1} = 0. 8, \lambda_{2} = 1. 1, \quad t = 1, 2, \dots , n, \dots \\ \end{array}
$$ whose solution, with initial condition  $x_{1} = 1$ $x_{2} = 1.5$  , is


$$ x_{t} = - 1. 6 6 6 7 (0. 8)^{t} + 2. 1 2 1 2 (1. 1)^{t}
$$

The behavior is that of exponential explosion due to the exponential with modulus greater than 1.

## Complex Roots

Now suppose that some of the roots are complex. In this case, solutions exhibit an oscillating behavior with a period that depends on the model coefficients. For simplicity, consider initially a second-order homogeneous difference equation:

$$
A (L) x_{t} = \left(1 - a_{1} L - a_{2} L^{2}\right) x_{t}
$$

Suppose that its characteristic equation given by

$$
A (z) = z^{2} - a_{1} z - a_{s} = 0
$$ admits the two complex conjugate roots:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/76a29b67-ac4d-47f0-86d4-1e10a3a8dda0/d0562f0f4af338e469504383292d59b2a4952e27097274bc807ee1ec23fb764d.jpg)
Figure 4 Solution of the Equation  $(1 - 1.9L + 0.88L^2)x_t = 0$  with Initial Conditions  $x_{1} = 1, x_{2} = 1.5$


$$
\lambda_{1} = a + i b, \quad \lambda_{2} = a - i b
$$

Let's write the two roots in polar notation:

$$
\lambda_{1} = r e^{i \omega}, \quad \lambda_{1} = r e^{- i \omega}
$$

$$ r = \sqrt{a^{2} + b^{2}}, \quad \omega = \arctan \frac{b}{a}
$$

It can be demonstrated that the general solution of the above difference equation has the following form:

$$ x_{t} = r^{t} \left(C_{1} \cos (\omega t) + C_{2} \sin (\omega t)\right) = C r^{t} \cos (\omega t + \vartheta)
$$ where the  $C_1$  and  $C_2$  or  $C$  and  $\vartheta$  are constants to be determined in function of initial conditions. If the imaginary part of the roots vanishes, then  $\omega$  vanishes and  $a = r$ , the two complex conjugate roots become a real root, and we find again the expression  $x_{t} = Cr^{t}$ .


Consider now a homogeneous difference equation of order  $2n$ . Suppose that the characteristic equation has only two distinct complex conjugate roots with multiplicity  $n$ . We can write the difference equation as follows:

$$
\begin{array}{l} A (L) x_{t} = \left(1 - a_{1} L - \dots - a_{2 n} L^{2 n}\right) x_{t} \\ = [ (1 - \lambda L)^{n} (1 - \bar {\lambda} L)^{n} ] x_{t} = 0 \\ \end{array}
$$ and its general solution as follows:


$$
\begin{array}{l} x_{t} = r^{t} \left(C_{1}^{1} \cos (\omega t) + C_{2}^{1} \sin (\omega t)\right) + \dots \\ + t^{n} r^{t} \left(C_{1}^{n} \cos (\omega t) + C_{2}^{n} \sin (\omega t)\right) \\ \end{array}
$$

The general solution of a homogeneous difference equation that admits both real and complex roots with different multiplicities is a sum of the different types of solutions. The above formulas show that real roots correspond to a sum of exponentials while complex roots correspond to oscillating series with exponential dumping or explosive behavior. The above formulas confirm that in both the real and the complex case, solutions decay if the modulus of the roots of the inverse characteristic equation is outside the unit circle and explode if it is inside the unit circle.

Figure 5 illustrates the equation

$$
\begin{array}{l} A (L) x_{t} = \left(1 - 1. 2 L + 1. 0 L^{2}\right) x_{t} = 0, \\ t = 1, 2, \dots , n, \dots \\ \end{array}
$$ which has two complex conjugate roots,


$$
\lambda_{1} = 0. 6 + i 0. 8, \quad \lambda_{2} = 0. 6 - i 0. 8
$$ or in polar form,

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/76a29b67-ac4d-47f0-86d4-1e10a3a8dda0/60f6ec2a59d51bd1643d8095a048f16fd84ba6c3de3c003282af868b851b3ad8.jpg)
Figure 5 Solutions of the Equation  $(1 - 1.2L + 1.0L^2)x_t = 0$  with Initial Conditions  $x_1 = 1, x_2 = 1.5$


$$
\lambda_{1} = e^{i 0. 9 2 7 3}, \quad \lambda_{2} = e^{i 0. 9 2 7 3}
$$ and whose solution, with initial condition  $x_{1} = 1$ ,  $x_{2} = 1.5$ , is


$$ x_{t} = - 0. 3 \cos (0. 9 2 7 3 t) + 1. 4 7 5 \sin (0. 9 2 7 3 t)
$$

The behavior of the solutions is that of undamped oscillations with frequency determined by the model.

Figure 6 illustrates the equation

$$
\begin{array}{l} A (L) x_{t} = \left(1 - 1. 0 L + 0. 8 9 L^{2}\right) x_{t} = 0, \\ t = 1, 2, \ldots , n, \ldots \\ \end{array}
$$ which has two complex conjugate roots,


$$
\lambda_{1} = 0. 5 + i 0. 8, \quad \lambda_{2} = 0. 5 - i 0. 8
$$ or in polar form,


$$
\lambda_{1} = 0. 9 4 3 4 e^{i 1. 0 1 2 2}, \quad \lambda_{2} = 0. 9 4 3 4 e^{- i 1. 0 1 2 2}
$$ and whose solution, with initial condition  $x_{1} = 1$ ,  $x_{2} = 1.5$ , is


$$
\begin{array}{l} x_{t} = 0. 9 4 3 4^{t} (- 0. 5 6 1 8 \cos (1. 0 1 2 2 t) \\ + 1. 6 0 1 1 \sin (1. 0 1 2 2 t)) \\ \end{array}
$$

The behavior of the solutions is that of damped oscillations with frequency determined by the model.

## NONHOMOGENEOUS DIFFERENCE EQUATIONS

Consider now the following  $n$ -th order difference equation:

$$
A (L) x_{t} = \left(1 - a_{1} L - \dots - a_{P} L^{p}\right) x_{t} = y_{t}
$$ where  $y_{t}$  is a given sequence of real numbers. Recall that we are in a deterministic setting, that is, the  $y_{t}$  are given. The general solution of the above difference equation will be the sum of two solutions  $x_{1,t} + x_{2,t}$  where  $x_{1,t}$  is the solution of the associated homogeneous equation,


$$
A (L) x_{t} = \left(1 - a_{1} L - \dots - a_{P} L^{p}\right) x_{t} = 0
$$ and  $X_{2,t}$  solves the given nonhomogeneous equation.


![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/76a29b67-ac4d-47f0-86d4-1e10a3a8dda0/a3ad19da538a9a4a6dae9aa66dd42c34dfbd40fc3d2dd0318b061db6e45c58f2.jpg)
Figure 6 Solutions of the Equation  $(1 - 1.0L + 0.89L^2)x_t = 0$  with Initial Conditions  $x_1 = 1$ ,  $x_2 = 1.5$

## Real Roots

To determine the general form of  $x_{2,t}$  in the case of real roots, we begin by considering the case of a first-order equation:

$$
A (L) x_{t} = \left(1 - a_{1} L\right) x_{t} = y_{t}
$$

We can compute the solution as follows:

$$ x_{2, t} = \frac{1}{(1 - a_{1} L)} y_{t} = \left(\sum_{j = 0}^{\infty} (a_{1} L)^{j}\right) y_{t}
$$ which is meaningful only for  $|a_1| < 1$ . If, however,  $y_{t}$  starts at  $t = -1$ , that is, if  $y_{t} = 0$  for  $t = -2, -3, \ldots, n$ , we can rewrite the above formula as


$$ x_{2, t} = \frac{1}{(1 - a_{1} L)} y_{t} = \left(\sum_{j = 0}^{t + 1} (a_{1} L)^{j}\right) y_{t}
$$

This latter formula, which is valid for any real value of  $a_1$ , yields

$$
\begin{array}{l} x_{2, 0} = y_{0} + a_{1} y_{- 1} \\ x_{2, 1} = y_{1} + a_{1} y_{0} + a_{1}^{2} y_{- 1} \\ x_{2, t} = y_{t} + a_{1} y_{t - 1} + \dots + a_{1}^{t + 1} y_{- 1} \\ \end{array}
$$ and so on. These formulas can be easily verified by direct substitution. If  $y_{t} = y =$  constant, then


$$ x_{2, t} = y \left(1 + a_{1}^{2} + \dots + a_{1}^{t + 1}\right)
$$

Consider now the case of a second-order equation:

$$
\begin{array}{l} A (L) x_{t} = \left(1 - a_{1} L - a_{2} L^{2}\right) x_{t} \\ = (1 - \lambda_{1} L) (1 - \lambda_{2} L) x_{t} = y_{t} \\ \end{array}
$$ where  $\lambda_1, \lambda_2$  are the solutions of the characteristic equation (the reciprocal of the solutions of the inverse characteristic equation). We can write the solution of the above equation as


$$ x_{2, t} = \frac{1}{(1 - a_{1} L - a_{2} L^{2})} y_{t} = \frac{1}{(1 - \lambda_{1} L) (1 - \lambda_{2} L)} y_{t}
$$

Recall that, if  $|\lambda_i| < 1$ ,  $i = 1,2$ , we can write:

$$
\begin{array}{l} \frac{1}{(1 - \lambda_{1} L) (1 - \lambda_{2} L)} \\ = \frac{1}{\lambda_{1} - \lambda_{2}} \left(\frac{\lambda_{1}}{(1 - \lambda_{1} L)} - \frac{\lambda_{2}}{(1 - \lambda_{2} L)}\right) \\ = \frac{\lambda_{1}}{\lambda_{1} - \lambda_{2}} \left(\sum_{j = 0}^{\infty} \left(\lambda_{1} L\right)^{j}\right) - \frac{\lambda_{2}}{\lambda_{1} - \lambda_{2}} \left(\sum_{j = 0}^{\infty} \left(\lambda_{2} L\right)^{j}\right) \\ \end{array}
$$ so that the solution can be written as


$$
\begin{array}{l} x_{2, t} = \frac{\lambda_{1}}{\lambda_{1} - \lambda_{2}} \left(\sum_{j = 0}^{\infty} (\lambda_{1} L)^{j}\right) y_{t} \\ - \frac{\lambda_{2}}{\lambda_{1} - \lambda_{2}} \left(\sum_{j = 0}^{\infty} (\lambda_{2} L)^{j}\right) y_{t} \\ \end{array}
$$

If the two solutions are coincident, reasoning as in the homogeneous case, we can establish that the general solutions can be written as follows:

$$
\begin{array}{l} x_{2, t} = \frac{1}{(1 - a_{1} L)^{2}} y_{t} = \left(\sum_{j = 0}^{\infty} (a_{1} L)^{j}\right) y_{t} \\ + t \left(\sum_{j = 0}^{\infty} (a_{1} L)^{j}\right) y_{t} \\ \end{array}
$$

If  $y_{t}$  starts at  $t = -2$ , that is, if  $y_{t} = 0$  for  $t = -3, -4, \ldots, -n, \ldots$ , we can rewrite the above formula respectively as

$$
\begin{array}{l} x_{2, t} = \frac{\lambda_{1}}{\lambda_{1} - \lambda_{2}} \left(\sum_{j = 0}^{t + 2} (\lambda_{1} L)^{j}\right) y_{t} \\ - \frac{\lambda_{2}}{\lambda_{1} - \lambda_{2}} \left(\sum_{j = 0}^{t + 2} (\lambda_{2} L)^{j}\right) y_{t} \\ \end{array}
$$ if the solutions are distinct, and as


$$
\begin{array}{l} x_{2, t} = \frac{1}{(1 - a_{1} L)^{2}} y_{t} = \left(\sum_{j = 0}^{t + 2} (a_{1} L)^{j}\right) y_{t} \\ + t \left(\sum_{j = 0}^{t + 2} (a_{1} L)^{j}\right) y_{t} \\ \end{array}
$$ if the solutions are coincident. These formulas are valid for any real value of  $\lambda_{1}$


The above formulas can be generalized to cover the case of an  $n$ -th order difference equation. In the most general case of an  $n$ -th order difference equation, assuming that all roots are real, there will be  $m < n$  distinct roots  $\lambda_{i}, i = 1, 2, \ldots, m$ , each of order  $n_i \geq 1$ ,

$$
\sum_{i = 1}^{m} n_{i} = n
$$ and the general solution of the process will be


$$
\begin{array}{l} x_{2, t} = \sum_{i = 0}^{\infty} \left(\left(\lambda_{1} L\right)^{i} + i \left(\lambda_{1} L\right)^{i} + \dots + i^{n_{1} - 1} \left(\lambda_{1} L\right)^{i} + \dots \right. \\ + \left(\lambda_{m} L\right)^{i} + i \left(\lambda_{m} L\right)^{i} + \dots + i^{n_{m} - 1} \left(\lambda_{m} L\right)^{i}) y_{t} \\ \end{array}
$$ if  $|\lambda_i| < 1$ ,  $i = 1,2,\ldots,m$ , and


$$
\begin{array}{l} x_{2, t} = \sum_{i = 0}^{t + m} \left(\left(\lambda_{1} L\right)^{i} + i \left(\lambda_{1} L\right)^{i} + \dots + i^{n_{1} - 1} \left(\lambda_{1} L\right)^{i} + \dots \right. \\ + \left(\lambda_{m} L\right)^{i} + i \left(\lambda_{m} L\right)^{i} + \dots + i^{n_{m} - 1} \left(\lambda_{m} L\right)^{i}) y_{t} \\ \end{array}
$$ if  $y_{t}$  starts at  $t = -n$ , that is, if  $y_{t} = 0$  for  $t = -(n + 1), -(n + 2), \ldots$  for any real value of the  $\lambda_{i}$ .


Therefore, if the roots are all real, the general solution of a difference equation is a sum of exponentials. Figure 7 illustrates the case of the same difference equation as in Figure 3 with the same initial conditions  $x_{1} = 1$ ,  $x_{2} = 1.5$  but with an exogenous forcing sinusoidal variable:

$$
(1 - 1. 7 L + 0. 7 2 L^{2}) x_{t} = 0. 1 \times \sin (0. 4 \times t)
$$

The solution of the equation is the sum of  $x_{1,t} = -7.5(0.8)^{t} + 7.7778(0.9)^{t}$  plus

$$ x_{2, t} = \sum \left[ \left((0. 8)^{i} + (0. 9)^{i}\right) 0. 1 \times \sin \left(0. 4 \times (t - i)\right) \right]
$$

After the initial phase dominated by the solution of the homogeneous equation, the forcing term dictates the shape of the solution.

## Complex Roots

Consider now the case of complex roots. For simplicity, consider initially a second-order difference equation:

$$
A (L) x_{t} = \left(1 - a_{1} L - a_{2} L^{2}\right) x_{t} = y_{t}
$$

Suppose that its characteristic equation,

$$
A (z) = z^{2} - a_{1} z - a_{2} = 0
$$ admits the two complex conjugate roots,


$$
\lambda_{1} = a + i b, \quad \lambda_{2} = a - i b
$$

We write the two roots in polar notation:

$$
\begin{array}{l} \lambda_{1} = r e^{i \omega}, \quad \lambda_{2} = r e^{- i \omega} \\ r = \sqrt{a^{2} + b^{2}}, \quad \omega = \arctan \frac{b}{a} \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/76a29b67-ac4d-47f0-86d4-1e10a3a8dda0/99caf340ac53c38d251cd84380a3cdc0a62a8a9c3d7f2d378e01bbf5ae13e3da.jpg)
Figure 7 Solutions of the Equation  $(1 - 1.7L + 0.72L^2)x_t = 0.1 \times \sin(0.4 \times t)$  with Initial Conditions  $x_1 = 1$ ,  $x_2 = 1.5$

It can be demonstrated that the general form of the  $x_{2,t}$  of the above difference equation has the following form:

$$ x_{2, t} = \sum_{i = 1}^{\infty} \left(r^{i} (\cos (\omega i) + \sin (\omega i)) y_{t - i}\right)
$$ which is meaningful only if  $|r| < 1$ . If  $y_{t}$  starts at  $t = -2$ , that is, if  $y_{t} = 0$  for  $t = -3, -4, \ldots, -n, \ldots$  we can rewrite the previous formula as


$$ x_{2, t} = \sum_{i = 1}^{t + 2} \left(r^{i} (\cos (\omega i) + \sin (\omega i)) y_{t - i}\right)
$$

This latter formula is meaningful for any real value of  $r$ . Note that the constant  $\omega$  is determined by the structure of the model while the constants  $C_1, C_2$  that appear in  $x_{1,t}$  need to be determined in the function of initial conditions. If the imaginary part of the roots vanishes, then  $\omega$  vanishes and  $a = r$ , the two complex conjugate roots become a real root, and we again find the expression  $x_{t} = Cr^{t}$ .

Figure 8 illustrates the case of the same difference equation as in Figure 7 with the same initial conditions  $x_{1} = 1$ ,  $x_{2} = 1.5$  but with an exogenous forcing sinusoidal variable:


$$
(1 - 1. 2 L + 1. 0 L^{2}) x_{t} = 0. 5 \times \sin (0. 4 \times t)
$$

The solution of the equation is the sum of  $x_{1,t} = -0.3\cos (0.9273t) + 1.475\sin (0.9273t)$  plus

$$
\begin{array}{l} x_{2, t} = \sum_{i = 0}^{t - 1} [ (\cos (0. 9 2 7 3 i) \\ \left. + \sin (0. 9 2 7 3 i)) 0. 5 \sin (0. 4 \times (t - i)) \right] \\ \end{array}
$$

After the initial phase dominated by the solution of the homogeneous equation, the forcing term dictates the shape of the solution. Note the model produces amplification and phase shift of the forcing term  $0.1 \times \sin(0.4 \times t)$  represented by a dotted line.

## SYSTEMS OF LINEAR DIFFERENCE EQUATIONS

In this section, we discuss systems of linear difference equations of the type

$$
\begin{array}{l} x_{1, t} = a_{1 1} x_{1, t - 1} + \dots + a_{1 k} x_{k, t - 1} + y_{1, t} \\ x_{k, t} = a_{k 1} x_{1, t - 1} + \dots + a_{k k} x_{k, t - 1} + y_{k, t} \\ \end{array}
$$ or in vector notation:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/76a29b67-ac4d-47f0-86d4-1e10a3a8dda0/a4657b4461369b7f39677f68a34022871070530d1c44f8673af7385d87a1a2d9.jpg)
Figure 8 Solutions of the Equation  $(1 - 1.2L + 1.0L^2)x_t = 0.5 \times \sin(0.4 \times t)$  with Initial Conditions  $x_1 = 1$ ,  $x_2 = 1.5$


$$
\mathbf {x}_{t} = \mathbf {A} \mathbf {x}_{t - 1} + \mathbf {y}_{t}
$$

Observe that we need to consider only first-order systems, that is, systems with only one lag. In fact, a system of an arbitrary order can be transformed into a first-order system by adding one variable for each additional lag. For example, a second-order system of two difference equations,

$$
\begin{array}{l} x_{1, t} = a_{1 1} x_{1, t - 1} + a_{1 2} x_{2, t - 1} + b_{1 1} x_{1, t - 2} \\ + b_{1 2} x_{2, t - 2} + y_{1, t} \\ \end{array}
$$

$$
\begin{array}{l} x_{2, t} = a_{2 1} x_{1, t - 1} + a_{2 2} x_{2, t - 1} + b_{2 1} x_{1, t - 2} \\ + b_{2 2} x_{2, t - 2} + y_{2, t} \\ \end{array}
$$ can be transformed in a first-order system adding two variables:


$$
\begin{array}{l} x_{1, t} = a_{1 1} x_{1, t - 1} + a_{1 2} x_{2, t - 1} + b_{1 1} x_{1, t - 1} \\ + b_{1 2} x_{2, t - 1} + y_{1, t} \\ \end{array}
$$

$$
\begin{array}{l} x_{2, t} = a_{2 1} x_{1, t - 1} + a_{2 2} x_{2, t - 1} + b_{2 1} x_{1, t - 1} \\ + b_{2 2} x_{2, t - 1} + y_{2, t} \\ \end{array}
$$

$$
\begin{array}{l} z_{1, t} = x_{1, t - 1} \\ z_{2, t} = x_{2, t - 1} \\ \end{array}
$$

Transformations of this type can be generalized to systems of any order and any number of equations.

A system of difference equations is called homogeneous if the exogenous variable  $\mathbf{y}_t$  is zero, that is, if it can be written as

$$
\mathbf {x}_{t} = \mathbf {A} \mathbf {x}_{t - 1}
$$ while it is called nonhomogeneous if the exogenous term is present.


There are different ways to solve first-order systems of difference equations. One method consists in eliminating variables as in ordinary algebraic systems. In this way, the original first-order system in  $k$  equations is solved by solving a single difference equation of order  $k$  with the methods explained above. This observation implies that solutions of systems of linear difference equations are of the same nature as those of difference equations (i.e., sums of exponential and/or sinusoidal functions). In the following section we will show a direct method for solving systems of linear difference equations. This method could be used to solve equations of any order, as they are equivalent to first-order systems. In addition, it gives a better insight into vector autoregressive processes.


## SYSTEMS OF HOMOGENEOUS LINEAR DIFFERENCE EQUATIONS

Consider a homogeneous system of the following type:

$$
\mathbf {x} (t) = \mathbf {A x} (t - 1), \quad t = 0, 1, \dots , n, \dots
$$ where  $\mathbf{A}$  is a  $k\times k$ , real-valued, nonsingular matrix of constant coefficients. Using the lag operator notation, we can also write the above systems in the following form:


$$
(\mathbf {I} - \mathbf {A} L) \mathbf {x}_{t} = 0, \quad t = 1, \dots , n, \dots
$$

If a vector of initial conditions  $\mathbf{x}(0)$  is given, the above system is called an initial value problem.

Through recursive computation, that is, starting at  $t = 0$  and computing forward, we can write

$$
\begin{array}{l} \mathbf {x} (1) = \mathbf {A x} (0) \\ \mathbf {x} (2) = \mathbf {A x} (1) = \mathbf {A}^{2} \mathbf {x} (0) \\ \mathbf {x} (t) = \mathbf {A}^{t} \mathbf {x} (0) \\ \end{array}
$$

The following theorem can be demonstrated: Any homogeneous system of the type  $\mathbf{x}(t) = \mathbf{A}\mathbf{x}(t - 1)$ , where  $\mathbf{A}$  is a  $k\times k$ , real-valued, nonsingular matrix, coupled with given initial conditions  $\mathbf{x}(0)$  admits one and only one solution.

A set of  $k$  solutions  $\mathbf{x}_i(t), i = 1, \dots, k, t = 0, 1, 2, \dots$  are said to be linearly independent if

$$
\sum_{i = 1}^{k} c_{i} \mathbf {x}_{i} (t) = 0
$$

$t = 0,1,2,\ldots$  implies  $c_{i} = 0,i = 1,\dots ,k.$  Suppose now that  $k$  linearly independent solutions  $\mathbf{x}_i(t)$ $i = 1,\dots ,k$  are given. Consider the matrix

$$
\boldsymbol {\Phi} (t) = [ \mathbf {x}_{1} (t) \dots \mathbf {x}_{k} (t) ]
$$

The following matrix equation is clearly satisfied:

$$
\boldsymbol {\Phi} (t) = \mathbf {A} \boldsymbol {\Phi} (t - 1)
$$

The solutions  $\mathbf{x}_i(t), i = 1, \dots, n$  are linearly independent if and only if the matrix  $\Phi(t)$  is nonsingular for every value  $t\geq 0$  , that is, if det  $[\Phi (t)]\neq 0,t = 0,1,\ldots$  Any nonsingular matrix  $\Phi (t),t = 0,1,\ldots$  such that the matrix equation


$$
\boldsymbol {\Phi} (t) = \mathbf {A} \boldsymbol {\Phi} (t - 1)
$$ is satisfied is called a fundamental matrix of the system  $\mathbf{x}(t) = \mathbf{A}\mathbf{x}(t - 1), t = 1, \ldots, n, \ldots$  and it satisfies the equation


$$
\boldsymbol {\Phi} (t) = \mathbf {A}^{t} \boldsymbol {\Phi} (0)
$$

In order to compute an explicit solution of this system, we need an efficient algorithm to compute the matrix sequence  $\mathbf{A}^t$ . We will discuss one algorithm for this computation. Recall that an eigenvalue of the  $k\times k$  real valued matrix  $\mathbf{A} = (a_{ij})$  is a real or complex number  $\lambda$  that satisfies the matrix equation:

$$
(\mathbf {A} - \lambda \mathbf {I}) \xi = 0
$$ where  $\xi \in \mathbb{C}^k$  is a  $k$ -dimensional complex vector. The above equation has a nonzero solution if and only if


$$
| (\mathbf {A} - \lambda \mathbf {I}) | = 0
$$ or


$$
\det  \left( \begin{array}{c c c} a_{1 1} - \lambda & \dots & a_{1 k} \\ \vdots & \ddots & \vdots \\ a_{k 1} & \dots & a_{k k} - \lambda \end{array} \right) = 0
$$

The above condition can be expressed by the following algebraic equation:

$$ z^{k} + a_{1} z^{k - 1} + \dots + a_{k - 1} z + a_{k}
$$ which is called the characteristic equation of the matrix  $\mathbf{A} = (a_{ij})$ .


To see the relationship of this equation with the characteristic equations of single equations, consider the  $k$ -order equation:

$$
\begin{array}{l} (1 - a_{1} L - \dots - a_{k} L^{k}) x (t) = 0 \\ x_{t} = a_{1} x (t - 1) + \dots + a_{k} x (t - k) \\ \end{array}
$$ which is equivalent to the first-order system,


$$
\begin{array}{l} x_{t} = a_{1} x_{t - 1} + \dots + a_{k} z_{t - 1}^{k - 1} \\ z_{t}^{1} = x_{t - 1} \\ \begin{array}{c} \bullet \\ \bullet \\ \bullet \end{array} \\ z_{t - 1}^{k - 1} = x_{t - k} \\ \end{array}
$$

The matrix

$$
\mathbf {A} = \left[ \begin{array}{c c c c c} a_{1} & a_{2} & \dots & a_{k - 1} & a_{k} \\ 1 & 0 & \dots & 0 & 0 \\ 0 & 1 & \dots & 0 & 0 \\ \vdots & \vdots & \ddots & \vdots & \vdots \\ 0 & 0 & \dots & 1 & 0 \end{array} \right]
$$ is called the companion matrix. By induction, it can be demonstrated that the characteristic equation of the system  $\mathbf{x}(t) = \mathbf{A}\mathbf{x}(t - 1)$ ,  $t = 1,\ldots ,n,\ldots$  and of the  $k$ -order equation above coincide.


Given a system  $\mathbf{x}(t) = \mathbf{A}\mathbf{x}(t - 1), t = 1, \ldots, n, \ldots$ , we now consider separately two cases: (1) All, possibly complex, eigenvalues of the real-valued matrix  $\mathbf{A}$  are distinct, and (2) two or more eigenvalues coincide.

Recall that if  $\lambda$  is a complex eigenvalue with corresponding complex eigenvector  $\xi$ , the complex conjugate number  $\bar{\lambda}$  is also an eigenvalue with corresponding complex eigenvector  $\bar{\xi}$ .

If the eigenvalues of the real-valued matrix  $\mathbf{A}$  are all distinct, then the matrix can be diagonalized. This means that  $\mathbf{A}$  is similar to a diagonal matrix, according to the matrix equation

$$
\mathbf {A} = \Xi \left[ \begin{array}{c c c} \lambda_{1} & \dots & 0 \\ \vdots & \ddots & \vdots \\ 0 & \dots & \lambda_{n} \end{array} \right] \Xi^{- 1}
$$

$$
\Xi = [ \xi_{1} \dots \xi_{n} ]
$$ and


$$
\mathbf {A}^{t} = \boldsymbol {\Xi} \left[ \begin{array}{c c c} \lambda_{1}^{t} & \dots & 0 \\ \vdots & \ddots & \vdots \\ 0 & \dots & \lambda_{n}^{t} \end{array} \right] \boldsymbol {\Xi}^{- 1}
$$

We can therefore write the general solution of the system  $\mathbf{x}(t) = \mathbf{A}\mathbf{x}(t - 1)$  as follows:

$$
\mathbf {x} (t) = c_{1} \lambda_{1}^{t} \xi_{1} + \dots + c_{n} \lambda_{1}^{n} \xi_{n}
$$

The  $c_{i}$  are complex numbers that need to be determined for the solutions to be real and to satisfy initial conditions. We therefore see the parallel between the solutions of first-order systems of difference equations and the solutions of  $k$ -order difference equations that we have determined above. In particular, if solutions are all real they exhibit exponential decay if their modulus is less than 1 or exponential growth if their modulus is greater than 1. If the solutions of the characteristic equation are real, they can produce oscillating damped or undamped behavior with period equal to two time steps. If the solutions of the characteristic equation are complex, then solutions might exhibit damped or undamped oscillating behavior with any period.

To illustrate the above, consider the following second-order system:

$$ x_{1, t} = 0. 6 x_{1, t - 1} - 0. 1 x_{2, t - 1} - 0. 7 x_{1, t - 2} + 0. 1 5 x_{2, t - 2}
$$

$$ x_{2, t} = - 0. 1 2 x_{1, t - 1} + 0. 7 x_{2, t - 1} + 0. 2 2 x_{1, t - 2} - 0. 8 5 x_{2, t - 2}
$$

This system can be transformed in the following first-order system:

$$ x_{1, t} = 0. 6 x_{1, t - 1} - 0. 1 x_{2, t - 1} - 0. 7 x_{1, t - 2} + 0. 1 5 x_{2, t - 2}
$$

$$ x_{2, t} = - 0. 1 2 x_{1, t - 1} + 0. 7 x_{2, t - 1} + 0. 2 2 x_{1, t - 2} - 0. 8 5 x_{2, t - 2}
$$

$$ z_{1, t} = x_{1, t - 1}
$$

$$ z_{2, t} = x_{2, t - 1}
$$ with matrix


$$
\mathbf {A} = \left[ \begin{array}{c c c c} 0. 6 & - 0. 1 & - 0. 7 & 0. 1 5 \\ - 0. 1 2 & 0. 7 & 0. 2 2 & - 0. 8 \\ 1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 \end{array} \right]
$$

The eigenvalues of the matrix  $\mathbf{A}$  are distinct and complex:

$$
\lambda_{1} = 0. 2 6 5 4 + 0. 7 0 1 1 i, \quad \lambda_{2} = \overline {{\lambda_{1}}} = 0. 2 6 5 4 - 0. 7 0 1 1 i
$$

$$
\lambda_{3} = 0. 3 8 4 6 + 0. 8 8 8 7 i, \quad \lambda_{4} = \overline {{\lambda_{3}}} = 0. 3 8 4 6 - 0. 8 8 8 7 i
$$

The corresponding eigenvector matrix  $\Xi$  is

$$
\Xi = \left[ \begin{array}{c c c c} 0. 1 5 7 1 + 0. 4 1 5 0 i & 0. 1 5 7 1 - 0. 4 1 5 0 i & - 0. 1 3 1 1 - 0. 3 4 3 6 i & - 0. 1 3 1 1 + 0. 3 4 3 6 i \\ - 0. 0 9 2 4 + 0. 3 9 2 8 i & 0. 0 9 2 4 - 0. 3 9 2 8 i & 0. 2 3 4 6 + 0. 5 4 1 9 i & 0. 2 3 4 6 - 0. 5 4 1 9 i \\ 0. 5 9 2 0 & 0. 5 9 2 0 & - 0. 3 7 9 4 - 0. 0 1 6 7 i & - 0. 3 7 9 4 + 0. 0 1 6 7 i \\ 0. 5 3 3 7 + 0. 0 7 0 2 i & 0. 5 3 3 7 - 0. 0 7 0 2 i & 0. 6 0 9 8 & 0. 6 0 9 8 \end{array} \right]
$$

Each column of the matrix is an eigenvector.

The solution of the system is given by

$$
\begin{array}{l} \mathbf {x} (t) = c_{1} \lambda_{1}^{t} \xi_{1} + c_{2} \overline {{\lambda_{1}^{t} \xi_{1}}} + c_{3} \lambda_{3}^{t} \xi_{3} + c_{4} \overline {{\lambda_{3}^{t} \xi_{3}}} \\ = c_{1} (0. 2 6 5 4 + 0. 7 0 1 1 i)^{t} \left( \begin{array}{c} 0. 1 5 7 1 + 0. 4 1 5 0 i \\ 0. 0 9 2 4 + 0. 3 9 2 8 i \\ 0. 5 9 2 0 \\ 0. 5 3 3 7 + 0. 0 7 0 2 i \end{array} \right) \xi_{1} \\ + c_{2} (0. 2 6 5 4 - 0. 7 0 1 1 i)^{t} \left( \begin{array}{c} 0. 1 5 7 1 - 0. 4 1 5 0 i \\ 0. 0 9 2 4 - 0. 3 9 2 8 i \\ 0. 5 9 2 0 \\ 0. 5 3 3 7 - 0. 0 7 0 2 i \end{array} \right) \\ + c_{3} (0. 3 8 4 6 + 0. 8 8 8 7 i)^{t} \left( \begin{array}{c} - 0. 1 3 1 1 + 0. 3 4 3 6 i \\ 0. 2 3 4 6 + 0. 5 4 1 9 i \\ - 0. 3 7 9 4 + 0. 0 1 6 7 i \\ 0. 6 0 9 8 \end{array} \right) \xi_{3} \\ + c_{4} (0. 3 8 4 6 - 0. 8 8 8 7 i)^{t} \left( \begin{array}{c} - 0. 1 3 1 1 - 0. 3 4 3 6 i \\ 0. 2 3 4 6 - 0. 5 4 1 9 i \\ - 0. 3 7 9 4 - 0. 0 1 6 7 i \\ 0. 6 0 9 8 \end{array} \right) \\ \end{array}
$$

The four constants  $c$  can be determined using the initial conditions:  $(1) = 1$ ;  $x(2) = 1.2$ .

$y(1) = 1.5$ ;  $y(2) = -2$ . Figure 9 illustrates the behavior of solutions.

Now consider the case in which two or more solutions of the characteristic equation are coincident. In this case, it can be demonstrated that the matrix  $\mathbf{A}$  can be diagonalized only if it is normal, that is if

$$
\mathbf {A}^{T} \mathbf {A} = \mathbf {A A}^{T}
$$

If the matrix  $\mathbf{A}$  is not normal, it cannot be diagonalized. However, it can be put in Jordan canonical form. In fact, it can be demonstrated that any nonsingular real-valued matrix  $\mathbf{A}$  is similar to a matrix in Jordan canonical form,

$$
\mathbf {A} = \mathbf {P J P}^{- 1}
$$ where the matrix  $\mathbf{J}$  has the form  $\mathbf{J} = \mathrm{diag}[\mathbf{J}_1,\dots ,$ $\mathbf{J}k]$  , that is, it is formed by Jordan diagonal blocks:


$$
\mathbf {J} = \left[ \begin{array}{c c c} \mathbf {J}_{1} & \dots & 0 \\ \vdots & \ddots & \vdots \\ 0 & \dots & \mathbf {J}_{k} \end{array} \right]
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/76a29b67-ac4d-47f0-86d4-1e10a3a8dda0/ee54bea453804f6ac1da34585f5e3a5b0cc02bdc56777dd4829a0a534832eaa5.jpg)
Figure 9 Solution of the System

$$
\begin{array}{l} x_{1, t} = 0. 6 x_{1, t - 1} - 0. 1 x_{2, t - 1} - 0. 7 x_{1, t - 2} + 0. 1 5 x_{2, t - 2} \\ x_{2, t} = - 0. 1 2 x_{1, t - 1} + 0. 7 x_{2, t - 1} + 0. 2 2 x_{1, t - 2} - 0. 8 5 x_{2, t - 2} \\ \end{array}
$$ where each Jordan block has the form


$$
\mathbf {J}_{i} = \left[ \begin{array}{c c c c} \lambda_{1} & 1 & \dots & 0 \\ 0 & \lambda_{i} & \dots & \vdots \\ \vdots & \vdots & \ddots & 1 \\ 0 & 0 & \dots & \lambda_{i} \end{array} \right]
$$

The Jordan canonical form is characterized by two sets of multiplicity parameters, the algebraic multiplicity and the geometric multiplicity. The geometric multiplicity of an eigenvalue is the number of Jordan blocks corresponding to that eigenvalue, while the algebraic multiplicity of an eigenvalue is the number of times the eigenvalue is repeated. An eigenvalue that is repeated  $s$  times can have from 1 to  $s$  Jordan blocks. For example, suppose a matrix has only one eigenvalue  $\lambda = 5$  that is repeated three times. There are four possible matrices with the following Jordan representation:

$$
\left( \begin{array}{c c c} 5 & 0 & 0 \\ 0 & 5 & 0 \\ 0 & 0 & 5 \end{array} \right), \left( \begin{array}{c c c} 5 & 1 & 0 \\ 0 & 5 & 0 \\ 0 & 0 & 5 \end{array} \right), \left( \begin{array}{c c c} 5 & 0 & 0 \\ 0 & 5 & 1 \\ 0 & 0 & 5 \end{array} \right), \left( \begin{array}{c c c} 5 & 1 & 0 \\ 0 & 5 & 1 \\ 0 & 0 & 5 \end{array} \right)
$$

These four matrices have all algebraic multiplicity 3 but geometric multiplicity from left to right 1, 2, 2, 3, respectively.

# KEY POINTS

- Homogeneous difference equations are linear conditions that link the values of variables at different time lags.
- In the case of real roots, solutions are sums of exponentials. Any linear combination of solu tions of the homogeneous difference equation is another solution.


- When some of the roots are complex, the solutions of a homogeneous difference equation exhibit an oscillating behavior with a period that depends on the model coefficients.
- The general solution of a homogeneous difference equation that admits both real and complex roots with different multiplicities is a sum of the different types of solutions.
- A system of difference equations is called homogeneous if the system's exogenous variable is zero, and nonhomogeneous if the exogenous term is present.
- One method of solving first-order systems of difference equations is by eliminating variables as in ordinary algebraic systems; another way is a direct method that can be used to solve systems of linear difference equations of any order.

# NOTE

1. This discussion of systems of difference equations draws on Elaydi (2002).

# REFERENCES

Elaydi, S. (2002). An Introduction to Difference Equations. New York: Springer Verlag.
Goldberg, S. (2010). Introduction to Difference Equations. New York: Dover Publications.
Kelley, W. G., and Peterson, A. C. (1991). *Difference Equations: An Introduction with Applications*, 2nd ed. San Diego, CA: Academic Press.


# Stochastic Differential Equations



Abstract: In nontechnical terms, differential equations are equations that express a relationship between a function and one or more derivatives (or differentials) of that function. It would be difficult to overemphasize the importance of differential equations in financial modeling where they are used to express laws that govern the evolution of price probability distributions, the solution of economic variational problems (such as intertemporal optimization), and conditions for continuous hedging (such as in the Black-Scholes equation). The two broad types of differential equations are ordinary differential equations and partial differential equations. The former are equations or systems of equations involving only one independent variable; the latter are differential equations or systems of equations involving partial derivatives. When one or more of the variables is a stochastic process, we have the case of stochastic differential equations and the solution is also a stochastic process. An assumption must be made about driving noise in a stochastic differential equation. In most applications, it is assumed that the noise term follows a Gaussian random variable, although types of random variables can be assumed.

Stochastic differential equations solve the problem of giving meaning to a differential equation where one or more of its terms are subject to random fluctuations. For instance, consider the following deterministic equation:

$$
\frac {d y}{d t} = f (t) y
$$

We know from differential equations that, by separating variables, the general solution of this equation can be written as follows:

$$ y = A \exp \left[ \int f (t) d t \right]
$$

A stochastic version of this equation might be obtained, for instance, by perturbing the term  $f$ , thus resulting in the stochastic differential equation

$$
\frac {d y}{y} = [ f (t) + \varepsilon ] d t
$$ where  $\varepsilon$  is a random noise process.


As with stochastic integrals, in defining stochastic differential equations it is necessary to adopt an ensemble view: The solution of a stochastic differential equation is a stochastic process, not a single function. In this entry, we first provide the basic intuition behind stochastic differential equations and then proceed to formally define the concept and the properties.


# THE INTUITION BEHIND STOCHASTIC DIFFERENTIAL EQUATIONS

Let's go back to the equation

$$
\frac {d y}{d t} = [ f (t) + \varepsilon ] y
$$ where  $\varepsilon$  is a continuous-time noise process. It would seem reasonable to define a continuous-time noise process informally as the continuous-time limit of a zero-mean, IID sequence, that is, a sequence of independent and identically distributed variables with zero mean. In a discrete time setting, a zero-mean, IID sequence is called a white noise. We could envisage defining a continuous-time white noise as the continuous-time limit of a discrete-time white noise. Each path of  $\varepsilon$  is a function of time  $\varepsilon (\cdot ,\omega)$ . It would therefore seem reasonable to define the solution of the equation pathwise, as the family of functions that are solutions of the equations


$$
\frac {d y}{d t} = [ f (t) + \varepsilon (t, \omega) ] y
$$ where each equation corresponds to a specific white noise path.


However, this definition would be meaningless in the domain of ordinary functions. In other words, it would generally not be possible to find a family of functions  $y(\cdot ,\omega)$  that satisfy the above equations for each white-noise path and that form a reasonable stochastic process.

The key problem is that it is not possible to define a white noise process as a zero-mean stationary stochastic process with independent increments and continuous paths. Such a process does not exist in the domain of ordinary functions. In discrete time the white noise process is obtained as the first-difference process of a random walk. Random walk is an integrated nonstationary process, while its first-difference process is a stationary IID sequence.


The continuous-time limit of the random walk is the Brownian motion. However, the paths of a Brownian motion are not differentiable. As a consequence, it is not possible to take the continuous-time limit of first differences and to define the white noise process as the derivative of a Brownian motion. In the domain of ordinary functions in continuous time, the white noise process can be defined only through its integral, which is the Brownian motion. The definition of stochastic differential equations must therefore be recast in integral form.

A sensible definition of a stochastic differential equation must respect a number of constraints. In particular, the solution of a stochastic differential equation should be a "perturbation" of the associated deterministic equation. In the above example, for instance, we want the solution of the stochastic equation

$$
\frac {d y}{d y} = [ f (t) + \varepsilon (t, \omega) ] d t
$$ to be a perturbation of the solution


$$ y = A \exp \left(\int f (t) d t\right)
$$ of the associated deterministic equation


$$
\frac {d y}{y} = f (t) d t
$$

In other words, the solution of a stochastic differential equation should tend to the solution of the associated deterministic equation in the limit of zero noise. In addition, the solutions of a stochastic differential equation should be the continuous-time limit of some discrete-time process obtained by discretization of the stochastic equation.

A formal solution of this problem was proposed by Kiyoshi Ito (1951) and, in a different setting, by Ruslan Stratonovich in the 1960s. Itô and Stratonovich proposed to give meaning to a stochastic differential equation through its integral equivalent. The Itô definition proceeds in two steps: In the first step, Itô processes are defined; in the second step, stochastic differential equations are defined.


- Step 1: Definition of Itô processes. Given two functions  $\varphi(t, \omega)$  and  $\psi(t, \omega)$  that satisfy usual conditions to be defined later, an Itô process—also called a stochastic integral—is a stochastic process of the form:

$$
Z (t, \omega) = \int_ {0} ^ {t} \varphi (s, \omega) d s + \int_ {0} ^ {t} \psi (s, \omega) d B _ {s} (s, \omega)
$$

An Itô process is a process that is the result of the sum of two summands: The first is an ordinary integral, the second an Itô integral. Itô processes are stable under smooth maps, that is, any smooth function of an Itô process is an Itô process that can be determined through the Itô formula (see Itô processes below).

- Step 2: Definition of stochastic differential equations. As we have seen, it is not possible to write a differential equation plus a white-noise term that admits solutions in the domain of ordinary functions. However, we can meaningfully write an integral stochastic equation of the form

$$
X (t, \omega) = \int_ {0} ^ {t} \varphi (s, X) d s + \int_ {0} ^ {t} \psi (s, X) d B _ {s}
$$

It can be demonstrated that this equation admits solutions in the sense that, given two functions  $\varphi$  and  $\psi$ , there is a stochastic process  $X$  that satisfies the above equation. We stipulate that the above integral equation can be written in differential form as follows:

$$ d X (t, \omega) = \varphi (t, X) d t + \psi (t, X) d B _ {t}
$$

Note that this is a definition; a stochastic differential equation acquires meaning only through its integral form. In particular, we cannot divide both terms by  $dt$  and rewrite the equation as follows:

$$
\frac {d X (t , \omega)}{d t} = \varphi (t, X) + \psi (t, X) \frac {d B _ {t}}{d t}
$$

The above equation would be meaningless because the Brownian motion is not differentiable.

This is the difficulty that precludes writing stochastic differential equations adding white noise pathwise. The differential notation of a stochastic differential equation is just a shorthand for the integral notation.

However, we can consider a discrete approximation:

$$
\Delta X (t, \omega) = \varphi^ {*} (t, X) \Delta t + \psi^ {*} (t, X) \Delta B _ {t}
$$

Note that in this approximation the functions  $\varphi^{*}(t,X),\psi^{*}(t,X)$  will not coincide with the functions  $\varphi (t,X),\psi (t,X)$ . Using the latter would (in general) result in a poor approximation.

The following sections will define Itô processes and stochastic differential equations and study their properties.

# ITÔ PROCESSES

Let's now formally define Itô processes and establish key properties, in particular the Itô formula. In the previous section we stated that an Itô process is a stochastic process of the form

$$
Z (t, \omega) = \int_ {0} ^ {t} a (s, \omega) d s + \int_ {0} ^ {t} b (s, \omega) d B (s, \omega)
$$

To make this definition rigorous, we have to state the conditions under which (1) the integrals exist, and (2) there is no anticipation of information. Note that the two functions  $a$  and  $b$  might represent two stochastic processes and that the Riemann-Stieltjes integral might not exist for the paths of a stochastic process. We have therefore to demonstrate that both the Ito integral and the ordinary integral exist. To this end, we define Ito processes as follows.

Suppose that a one-dimensional Brownian motion  $B_{t}$  is defined on a probability space  $(\Omega ,\Im ,P)$  equipped with a filtration  $\mathfrak{J}_t$  . The filtration might be given or might be generated by the Brownian motion  $B_{t}$  . Suppose that both  $a$  and  $b$  are adapted to  $\mathfrak{J}_t$  and jointly measurable in  $\mathfrak{J}\times \Re$  . Suppose, in addition, that the following two integrability conditions hold:


$$
P \left[ \int_ {0} ^ {t} b ^ {2} (s, \omega) d s <   \infty \text {f o r a l l} t \geq 0 \right] = 1
$$ and


$$
P \left[ \int_ {0} ^ {t} | a (s, \omega) | d s <   \infty \text {f o r a l l} t \geq 0 \right] = 1
$$

These conditions ensure that both integrals in the definition of Ito processes exist and that there is no anticipation of information. We can therefore define the Ito process as the following stochastic process:

$$
Z (t, \omega) = \int_ {0} ^ {t} a (s, \omega) d s + \int_ {0} ^ {t} b (s, \omega) d B _ {s} (s, \omega)
$$

Itô processes can be written in the shorter differential form as

$$ d Z _ {t} = a d t + b d B _ {t}
$$

It should be clear that the latter formula is just a shorthand for the integral definition.

# THE ONE-DIMENSIONAL ITÔ FORMULA

One of the most important results concerning Itô processes is a formula established by Itô that allows one to explicitly write down an Itô process that is a function of another Itô process. Itô's formula is the stochastic equivalent of the change-of-variables formula of ordinary integration. We will proceed in two steps. First we will introduce Itô's formula for functions of Brownian motion and then for functions of general Itô processes. Suppose that the function  $g(t, x)$  is twice continuously differentiable in  $[0, \infty) \times R$  and that  $B_t$  is a one-dimensional Brownian motion. The function  $Y_t = g(t, B_t)$  is a stochastic process. It can be demonstrated that the process  $Y_t = g(t, B_t)$  is an Itô process of the following form

$$ d Y _ {t} = \left(\frac {\partial g}{\partial t} (t, B _ {t}) + \frac {1}{2} \frac {\partial^ {2} g}{\partial x ^ {2}} (t, B _ {t})\right) d t + \frac {\partial g}{\partial x} (t, B _ {t}) d B _ {t}
$$

The preceding is Ito's formula in the case the underlying process is a Brownian motion. For example, let's suppose that  $g(t,x) = x^2$ . In this case we can write

$$
\frac {\partial g}{\partial t} = 0, \frac {\partial g}{\partial x} = 2 x, \frac {\partial^ {2} g}{\partial x ^ {2}} = 2
$$

Inserting the above in Itô's formula we see that the process  $B_{t}^{2}$  can be represented as the following Itô process

$$ d Y _ {t} = d t + 2 B _ {t} d B _ {t}
$$ or, explicitly in integral form


$$
Y _ {t} = t + 2 \int_ {0} ^ {t} B _ {s} d B _ {s}
$$

The nonlinear map  $g(t,x) = x^{2}$  introduces a second term in  $dt$ .

Let's now generalize Itô's formula. Suppose that  $X_{t}$  is an Itô process given by  $dX_{t} = adt + bdB_{t}$ . As  $X_{t}$  is a stochastic process, that is, a function  $X(t,\omega)$  of both time and the state, it makes sense to consider another stochastic process  $Y_{t}$  which is a function of the former,  $Y_{t} = g(t,X_{t})$ . Suppose that  $g$  is twice continuously differentiable on  $[0,\infty)\times R$ .

It can then be demonstrated (we omit the detailed proof) that  $Y_{t}$  is another Itô process that admits the representation

$$
\begin{array}{l} d Y _ {t} = \frac {\partial g}{\partial t} (t, X _ {t}) d t + \frac {\partial g}{\partial x} (t, X _ {t}) d X _ {t} \\ + \frac {1}{2} \frac {\partial^ {2} g}{\partial x ^ {2}} (t, X _ {t}) (d X _ {t}) ^ {2} \\ \end{array}
$$ where differentials are computed formally according to the rules known as Box algebra


$$ d t \cdot d t = d t \cdot d B _ {t} = d B _ {t} \cdot d t = 0, d B _ {t} \cdot d B _ {t} = d t
$$

Ito's formula can be written (perhaps more) explicitly as

$$ d Y _ {t} = \left(\frac {\partial g}{\partial t} + \frac {\partial g}{\partial x} a + \frac {1}{2} \frac {\partial^ {2} g}{\partial x ^ {2}} b ^ {2}\right) d t + \frac {\partial g}{\partial x} b d B _ {t}
$$

This formula reduces to the ordinary formula for the differential of a compound function in the case where  $b = 0$  (that is, when there is no noise).

As a second example of application of Ito's formula, consider the geometric Brownian motion:

$$ d X _ {t} = \mu X _ {t} d t + \sigma X _ {t} d B _ {t}
$$ where  $\mu, \sigma$  are real constants, and consider the map  $g(t, x) = \log x$ . In this case, we can write


$$
\frac {\partial g}{\partial t} = 0, \frac {\partial g}{\partial x} = \frac {1}{x}, \frac {\partial^ {2} g}{\partial x ^ {2}} = \frac {1}{x ^ {2}}
$$ and Ito's formula yields


$$ d Y _ {t} = d \log X _ {t} = \left(\mu - \frac {1}{2} \sigma^ {2}\right) d t + \sigma d B _ {t}
$$

# STOCHASTIC DIFFERENTIAL EQUATIONS

An Itô process defines a process  $Z(t, \omega)$  as the sum of the time integral of the process  $a(t, \omega)$  plus the Itô integral of the process  $b(t, \omega)$ . Suppose that two functions  $\varphi(t, x), \psi(t, x)$  that satisfy conditions established below are given. Given an Itô process  $X(t, \omega)$ , the two processes  $\varphi(t, X), \psi(t, X)$  admit respectively a time integral and an Itô integral. It therefore makes sense to consider the following Itô process:

$$
Z (t, \omega) = \int_ {0} ^ {t} \varphi [ s, X (s, \omega) ] d s + \int_ {0} ^ {t} \psi [ s, X (s, \omega) ] d B _ {s}
$$

The term on the right side transforms the process  $X$  into a new process  $Z$ . We can now ask if there are stochastic processes  $X$  that are mapped into themselves such that the following stochastic equation is satisfied:

$$
X (t, \omega) = \int_ {0} ^ {t} \varphi [ s, X (s, \omega) ] d s + \int_ {0} ^ {t} \psi [ s, X (s, \omega) ] d B _ {s}
$$

The answer is positive under appropriate conditions. It is possible to prove the following theorem of existence and uniqueness. Suppose that a one-dimensional Brownian motion B_{t} is defined on a probability space (\Omega, \mathfrak{J}, P) equipped with a filtration \mathfrak{J}_t and that B_{t} is adapted to the filtration \mathfrak{J}_t. Suppose also that the two measurable functions \varphi(t, x), \psi(t, x) map [0,

$T]\times R\to R$  and that they satisfy the following conditions:

$$
\begin{array}{l} \left| \varphi (t, x) \right| ^ {2} + \left| \psi (t, x) \right| ^ {2} \leq C \left(1 + | x |\right) ^ {2}, \\ t \in [ 0, T ], x \in R \\ \end{array}
$$ and


$$
\begin{array}{l} \left| \varphi (t, x) \right| - \varphi (t, y) + \left| \psi (t, x) \right| - \psi (t, y) \\ \leq D \left(| x - y |\right), t \in [ 0, T ], x \in R \\ \end{array}
$$ for appropriate constants  $C, D$ . The first condition is known as the linear growth condition, the last condition is the Lipschitz condition. Suppose that  $Z$  is a random variable independent of the  $\sigma$ -algebra  $\mathfrak{I}_{\infty}$  generated by  $B_{t}$  for  $t \geq 0$  such that  $E(|Z|^2) < \infty$ . Then there is a unique stochastic process  $X$ , defined for  $0 \leq t \leq T$ , with time-continuous paths such that  $X_0 = Z$  and such that the following equation is satisfied:


$$
\begin{array}{l} X (t, \omega) = X _ {0} + \int_ {0} ^ {t} \varphi [ s, X (s, \omega) ] d s \\ + \int_ {0} ^ {t} \psi [ s, X (s, \omega) ] d B _ {s} \\ \end{array}
$$

The process  $X$  is called a strong solution of the above equation.

The above equation can be written in differential form as follows:

$$ d X (t, \omega) = \varphi [ t, X (t, \omega) ] d t + \psi [ t, X (t, \omega) ] d B _ {t}
$$

The differential form does not have an independent meaning; a differential stochastic equation is just a short albeit widely used way to write the integral equation.

The key requirement of a strong solution is that the filtration  $\mathfrak{J}_t$  is given and that the functions  $\varphi, \psi$  are adapted to the filtration  $\mathfrak{J}_t$ . From the economic (or physics) point of view, this requirement translates the notion of causality. In simple terms, a strong solution is a functional of the driving Brownian motion and of the "inputs"  $\varphi, \psi$ . A strong solution at time  $t$  is determined only by the "history" up to time  $t$  of the inputs and of the random shocks embodied in the Brownian motion.

These conditions can be weakened. Suppose that we are given only the two functions  $\varphi(t, x)$ ,  $\psi(t, x)$  and that we must construct a process  $X_{t}$ , a Brownian motion  $B_{t}$ , and the relative filtration so that the above equation is satisfied. The equation still admits a unique solution with respect to the filtration generated by the Brownian motion  $B$ . It is, however, only a weak solution in the sense that, though there is no anticipation of information, it is not a functional of a given Brownian motion. (See, for example, Karatzas and Shreve [1991].) Weak and strong solutions do not necessarily coincide. However, any strong solution is also a weak solution with respect to the same filtration.

Note that the solution of a differential equation is a stochastic process. Initial conditions must therefore be specified as a random variable and not as a single value as for ordinary differential equations. In other words, there is an initial value for each state. It is possible to specify a single initial value as the initial condition of a stochastic differential equation. In this case the initial condition is a random variable where the probability mass is concentrated in a single point.

We omit the detailed proof of the theorem of uniqueness and existence. Uniqueness is proved using the Ito isometry and the Lipschitz condition. One assumes that there are two different solutions and then demonstrates that their difference must vanish. The proof of existence of a solution is similar to the proof of existence of solutions in the domain of ordinary equations. The solution is constructed inductively by a recursive relationship of the type

$$
\begin{array}{l} X ^ {(k + 1)} (t, \omega) = \int_ {0} ^ {t} \varphi [ s, X ^ {k} (s, \omega) ] d s \\ + \int_ {0} ^ {t} \psi [ s, X ^ {k} (s, \omega) ] d B _ {s} \\ \end{array}
$$

It can be shown that this recursive relationship produces a sequence of processes that converge to the unique solution.

# GENERALIZATION TO SEVERAL DIMENSIONS

The concepts and formulas established so far for Itô (and Stratonovich) integrals and processes can be extended in a straightforward but often cumbersome way to multiple variables. The first step is to define a  $d$ -dimensional Brownian motion.

Given a probability space  $(\Omega, \mathfrak{J}, P)$  equipped with a filtration  $\{\mathfrak{J}_t\}$ , a  $d$ -dimensional standard Brownian motion  $B_t(\omega)$ , is a stochastic process with the following properties:

-  $B_{t}(\omega)$  is a  $d$ -dimensional process defined over the probability space  $(\Omega, \mathfrak{J}, P)$  that takes values in  $R^{d}$ .
-  $B_{t}(\omega)$  has continuous paths for  $0 \leq t \leq \infty$ .
$B_0(\omega) = 0$
-  $B_{t}(\omega)$  is adapted to the filtration  $\mathfrak{J}_t$
- The increments  $B_{t}(\omega) - B_{s}(\omega)$  are independent of the  $\sigma$ -algebra  $\mathfrak{J}_s$  and have a normal distribution with mean zero and covariance matrix  $(t - s)I_d$ , where  $I_d$  is the identity matrix.

The above conditions state that the standard Brownian motion is a stochastic process that starts at zero, has continuous paths, and has normally distributed increments whose variances grow linearly with time.

The next step is to extend the definition of the Ito integral in a multidimensional environment. This is again a straightforward but cumbersome extension of the one-dimensional case. Suppose that the following  $r \times d$ -dimensional matrix is given:

$$
\mathbf {v} = \left[ \begin{array}{l l l} v _ {1 1} & \cdot & v _ {1 d} \\ \cdot & \cdot & \cdot \\ v _ {r 1} & \cdot & v _ {r d} \end{array} \right]
$$ where each entry  $v_{ij} = v_{ij}, (t,\omega)$  satisfies the following conditions:


1.  $v_{ij}$  are  $\mathfrak{B}^{\mathrm{d}}\times \mathfrak{I}$  measurable.
2.  $V_{ij}$  are  $\mathfrak{J}_t$ -adapted.
3.  $P\left[\intop_{0}^{t}(v_{ij})^{2}ds <   \infty \text{for all} t\geq 0\right] = 1.$

Then, we define the multidimensional Itô integral

$$
\int_ {0} ^ {t} \mathbf {v} d B = \int_ {0} ^ {t} \left[ \begin{array}{c c c} v _ {1 1} & \cdot & v _ {1 d} \\ \cdot & \cdot & \cdot \\ v _ {r 1} & \cdot & v _ {r d} \end{array} \right] \left[ \begin{array}{c} d B _ {1} \\ \cdot \\ d B _ {d} \end{array} \right]
$$ as the  $r$ -dimensional column vector whose components are the following sums of one-dimensional Itô integrals:


$$
\sum_ {i = 1} ^ {d} \int_ {0} ^ {t} v _ {i j} (s, \omega) d B _ {j} (s, \omega)
$$

Note that the entries of the matrix are functions of time and state: They form a vector of stochastic processes. Given the previous definition of Itô integrals, we can now extend the definition of Itô processes to the multidimensional case. Suppose that the functions  $u$  and  $v$  satisfy the conditions established for the one-dimensional case. We can then form a multidimensional Itô process as the following vector of Itô processes:

$$ d X _ {1} = u _ {1} d t + v _ {1 1} d B _ {1} + \dots + v _ {1 d} d B _ {d}
$$

$$
\cdot \cdot \cdot
$$

$$ d X _ {1 r} = u _ {r} d t + v _ {r 1} d B _ {1} + \dots + v _ {r d} d B _ {d}
$$ or, in matrix notation


$$ d \mathbf {X} = \mathbf {u} d t + \mathbf {v} d B
$$

After defining the multidimensional Ito process, multidimensional stochastic equations are defined in differential form in matrix notation as follows:

$$
\begin{array}{l} d \mathbf {X} (t, \omega) = \mathbf {u} [ t, X _ {1} (t, \omega), \dots , X _ {d} (t, \omega) ] d t \\ + \mathbf {v} [ t, X _ {1} (t, \omega), \dots , X _ {d} (t, \omega) d B \\ \end{array}
$$

Consider now the multidimensional map:  $g(t,x) \equiv [g_1(t,x),\ldots ,g_d(t,x)]$ , which maps the process  $X$  into another process  $Y = g(t,X)$ . It can be demonstrated that  $Y$  is a multidimensional Ito process whose components are defined according to the following rules:


$$
\begin{array}{l} d Y _ {k} = \frac {\partial g _ {k} (t , X)}{\partial t} d t + \sum_ {i} \frac {\partial g _ {k} (t , X)}{\partial X _ {i}} d X _ {i} \\ + \frac {1}{2} \sum_ {i. j} \frac {\partial^ {2} g _ {k} (t , X)}{\partial X _ {i} \partial X _ {j}} d X _ {i} d X _ {j} \\ \end{array}
$$

$dB_{i}dB_{j} = 1$  if  $i = j$ , 0 if  $i \neq j$ ,  $dB_{i}dt = dtdB_{i} = 0\$

# SOLUTION OF STOCHASTIC DIFFERENTIAL EQUATIONS

It is possible to determine an explicit solution of stochastic differential equations in the linear case and in a number of other cases that can be reduced to linear equations through functional transformations. Let's first consider linear stochastic equations of the form:

$$
\begin{array}{l} d X _ {t} = [ A (t) X _ {t} + a (t) ] d t + \sigma (t) d B _ {t}, 0 \leq t <   \infty \\ X _ {0} = \xi \\ \end{array}
$$ where  $B$  is an  $r$ -dimensional Brownian motion independent of the  $d$ -dimensional initial random vector  $\xi$  and the  $(d \times d)$ ,  $(d \times d)$ ,  $(d \times r)$  matrices  $A(t)$ ,  $a(t)$ ,  $\sigma(t)$  are nonrandom and time dependent.


The simplest example of a linear stochastic equation is the equation of an arithmetic Brownian motion with drift, written as follows:

$$
\begin{array}{l} d X _ {t} = \mu d t + \sigma d B _ {t}, \quad 0 \leq t <   \infty \\ X _ {0} = \xi , \mu , \sigma \text {c o n s t a n t s} \\ \end{array}
$$

In linear equations of this type, the stochastic part enters only in an additive way through the terms  $\sigma_{ij}(t)dB_t$ . The functions  $\sigma(t)$  are sometimes called the instantaneous variances and covariances of the process. In the example of the arithmetic Brownian motion,  $\mu$  is called the drift of the process and  $\sigma$  the volatility of the process.

It is intuitive that the solution of this equation is given by the solution of the associated deterministic equation, that is, the ordinary differential equation obtained by removing the stochastic part, plus the cumulated random disturbances. Let's first consider the associated deterministic differential equation


$$
\frac {d x}{d t} = A (t) x + a (t), 0 \leq t <   \infty
$$ where  $x(t)$  is a  $d$ -dimensional vector with initial conditions  $x(0) = \xi$ .


It can be demonstrated that this equation has an absolutely continuous solution in the domain  $0 \leq t < \infty$ . To find its solution, let's first consider the matrix differential equation

$$
\frac {d \Phi}{d t} = A (t) \Phi , 0 \leq t <   \infty
$$

This matrix differential equation has an absolutely continuous solution in the domain  $0 \leq t < \infty$ . The matrix  $\Phi(t)$  that solves this equation is called the fundamental solution of the equation. It can be demonstrated that  $\Phi(t)$  is a nonsingular matrix for each  $t$ . Lastly, it can be demonstrated that the solution of the equation:

$$
\frac {d x}{d t} = A (t) x + a (t), 0 \leq t <   \infty
$$ with initial condition  $x(0) = \xi$ , can be written in terms of the fundamental solution as follows:


$$ x (t) = \Phi (t) \left[ x (0) + \int_ {0} ^ {t} \Phi^ {- 1} (s) a (s) d s \right], 0 \leq t <   \infty
$$

Let's now go back to the stochastic equation

$$ d X _ {t} = [ A (t) X _ {t} + a (t) ] d t + \sigma (t) d B _ {t}, 0 \leq t <   \infty
$$

$$
X _ {0} = \xi
$$

Using Ito's formula, it can be demonstrated that the above linear stochastic equation admits the following unique solution:

$$
\begin{array}{l} X (t) = \Phi (t) \left[ \xi + \int_ {0} ^ {t} \Phi^ {- 1} (s) a (s) d s \right. \\ \left. + \int_ {0} ^ {t} \Phi^ {- 1} (s) \sigma (s) d B _ {s} \right], 0 \leq t <   \infty \\ \end{array}
$$

This effectively demonstrates that the solution of the linear stochastic equation is the solution of the associated deterministic equation plus the cumulated stochastic term


$$
\int_ {0} ^ {t} \Phi^ {- 1} (s) \sigma (s) d B _ {s}
$$

To illustrate this, below we now specialize the above solutions in the case of arithmetic Brownian motion, Ornstein-Uhlenbeck processes, and geometric Brownian motion.

# The Arithmetic Brownian Motion

The arithmetic Brownian motion in one dimension is defined by the following equation:

$$ d X _ {t} = \mu d t + \sigma d B _ {t}
$$

In this case,  $\mathbf{A}(t) = 0$ ,  $\mathbf{a}(t) = \mu$ ,  $\sigma(t) = \sigma$  and the solution becomes

$$
X = \mu t + \sigma B
$$

# The Ornstein-Uhlenbeck Process

The Ornstein-Uhlenbeck process in one dimension is a mean-reverting process defined by the following equation:

$$ d X _ {t} = - \alpha X _ {t} d t + \sigma d B _ {t}
$$

It is a mean-reverting process because the drift is pulled back to zero by a term proportional to the process itself. In this case,  $\mathbf{A}(t) = -\alpha$ ,  $\mathbf{a}(t) = 0$ ,  $\sigma(t) = \sigma$  and the solution becomes

$$
X _ {t} = X _ {0} + e ^ {- \alpha t} + \sigma \int_ {0} ^ {t} e ^ {- \alpha (t - s)} d B _ {s}
$$

# The Geometric Brownian Motion

The geometric Brownian motion in one dimension is defined by the following equation:

$$ d X = \mu X d t + \sigma X d B
$$

This equation can be easily reduced to the previous linear case by the transformation:

$$
Y = \log X
$$

Let's apply Ito's formula

$$ d Y _ {t} = \left(\frac {\partial g}{\partial t} + \frac {\partial g}{\partial x} a + \frac {1}{2} \frac {\partial^ {2} g}{\partial x ^ {2}} b ^ {2}\right) d t + \frac {\partial g}{\partial x} b d B _ {t}
$$ where


$$ g (t, x) = \log x, \frac {\partial g}{\partial t} = 0, \frac {\partial g}{\partial t} = \frac {1}{x}, \frac {\partial^ {2} g}{\partial x ^ {2}} = - \frac {1}{x ^ {2}}
$$

We can then verify that the logarithm of the geometric Brownian motion becomes an arithmetic Brownian motion with drift

$$
\mu^ {\prime} = \mu - \frac {1}{2} \sigma^ {2}
$$

The geometric Brownian motion evolves as a lognormal process:

$$
X _ {t} = x _ {0} \exp \left\{\left(\mu - \frac {1}{2} \sigma^ {2}\right) t + \sigma B _ {t} \right\}
$$

# KEY POINTS

- Stochastic differential equations give meaning to ordinary differential equations where some terms are subject to random perturbation.
- Following Itô and Stratonovich, stochastic differential equations are defined through their integral equivalent: The differential notation is just a shorthand.

- Itô processes are the sum of a time integral plus an Itô integral.
- Itô processes are closed with respect to smooth maps: A smooth function of an Itô process is another Itô process defined through the Itô formula.
- Stochastic differential equations are equations established in terms of Ito processes.
- Linear equations can be solved explicitly as the sum of the solution of the associated deterministic equation plus a stochastic cumulative term.

# NOTE

1. It is possible to define a "generalized white noise process" in the domain of "tempered distributions." See Oksendal (1992).

# REFERENCES

Ito, K. (1951). On stochastic differential equations. Memoirs, American Mathematical Society 4: 1-51.
Karatzas, I., and Shreve, S. E. (1991). Brownian Motion and Stochastic Calculus. New York: Springer.
Oksendal, B. (1992). Stochastic Differential Equations, 3rd Edition. Berlin: Springer.

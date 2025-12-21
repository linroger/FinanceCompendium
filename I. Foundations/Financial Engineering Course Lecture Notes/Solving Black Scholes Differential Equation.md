---
aliases:
- Solving the Black-Scholes Differential Equation
parent_directory: Financial Engineering Course Lecture Notes
cssclasses: academia
title: Solving the Black-Scholes Differential Equation
formatted: 2025-12-21 08:35:00 AM
formatter_model: claude-sonnet-4
cli_tool: opencode
primary_tags:
- black scholes equation
- differential equations
secondary_tags:
- heat equation solution
- change of variables
- boundary conditions
- european call options
---

# Solving the Black-Scholes Differential Equation

The following is the Black-Scholes differential equation:

$$
\frac{\partial V}{\partial t} = r V - r S \frac{\partial V}{\partial S} - \frac{1}{2} \sigma^{2} S^{2} \frac{\partial^{2} V}{\partial S^{2}},
$$

where $V$ denotes the value of the portfolio that replicates the derivative such as a call. In order to solve for $V = V(S, t)$, one also needs to be given a boundary value. This means that the value of the derivative must be known at some fixed time $T$; that is, $V(S, T)$ is a given function of $S$ and $T$. With this information, one can solve for the value $V(S, t)$ at any time $t$. Here are the ideas of the proof in a nutshell. One changes variables from $V, S$, and $t$ to the new variables $u, y$, and $\tau$ in two separate procedures so that the Black-Scholes Differential Equation simplifies to the differential equation:

$$
\frac{\partial u}{\partial \tau} = \frac{\partial^{2} u}{\partial y^{2}}.
$$

This equation is the classical heat equation, whose solution is well-known. One then changes back to the original variables to obtain the solution. This solution will be in integral form. We will then solve for the special case of a European call. In this case, it will turn out that the integral solution will be able to be expressed in terms of the cumulative normal density function. Now for the details. We start the solution process by first changing variables to replace t, S and V with $\tau$, $y$, and $v$:

$$
\tau = \frac{1}{2} \sigma^{2} (T - t); t = T - \frac{\tau}{\frac{1}{2} \sigma^{2}}
$$

$$
y = \ln \frac{S}{X}; S = X e^{y}
$$

$$
v \big (y (S), \tau (t) \big) = \frac{V (S , t)}{X}; V (S, t) = X v \left(\ln \left(\frac{S}{X}\right), \frac{1}{2} \sigma^{2} (T - t)\right).
$$

The following derivatives follow from the first two left-hand equations above:

$$
\frac{\partial \tau}{\partial t} = - \frac{1}{2} \sigma^{2}; \frac{\partial \tau}{\partial S} = 0; \frac{\partial y}{\partial t} = 0; \frac{\partial y}{\partial S} = \frac{1}{S}
$$

Next, we use the Chain Rule to rewrite the Black-Scholes equation in terms of $v$ and its partial derivatives with respect to $y$ and $\tau$:

$$
\frac{\partial V}{\partial S} = \frac{\partial (X v)}{\partial y} \frac{\partial y}{\partial S} + \frac{\partial (X v)}{\partial \tau} \frac{\partial \tau}{\partial S} = X \frac{\partial v}{\partial y} \frac{1}{S} + 0 = \frac{X}{S} \frac{\partial v}{\partial y}
$$

$$
\frac{\partial V}{\partial t} = \frac{\partial (X v)}{\partial y} \frac{\partial y}{\partial t} + \frac{\partial (X v)}{\partial \tau} \frac{\partial \tau}{\partial t} = 0 - X \frac{\partial v}{\partial \tau} \frac{1}{2} \sigma^{2} = - \frac{1}{2} \sigma^{2} X \frac{\partial v}{\partial \tau}
$$

$$
\frac{\partial^{2} V}{\partial S^{2}} = \frac{\partial \left(\frac{X}{S} \frac{\partial v}{\partial y}\right)}{\partial S} = \frac{\partial \left(\frac{X}{S}\right)}{\partial S} \frac{\partial v}{\partial y} + \frac{X}{S} \frac{\partial \left(\frac{\partial v}{\partial y}\right)}{\partial S} = - \frac{X}{S^{2}} \left(\frac{\partial v}{\partial y}\right) + \frac{X}{S} \left(\frac{\partial^{2} v}{\partial y^{2}} \frac{\partial y}{\partial S}\right) = \frac{X}{S^{2}} \left(\frac{\partial^{2} v}{\partial y^{2}} - \frac{\partial v}{\partial y}\right)
$$

Now, we will substitute these equations into the Black-Scholes differential equation:

$$
- \frac{1}{2} \sigma^{2} X \frac{\partial v}{\partial \tau} = r X v - r S \frac{X}{S} \frac{\partial v}{\partial y} - \frac{1}{2} \sigma^{2} S^{2} \frac{X}{S^{2}} \left(\frac{\partial^{2} v}{\partial y^{2}} - \frac{\partial v}{\partial y}\right)
$$

Simplify and divide both sides by $\frac{1}{2}\sigma^2 X$:

$$
- \frac{\partial v}{\partial \tau} = \frac{2 r}{\sigma^{2}} v - \frac{2 r}{\sigma^{2}} \frac{\partial v}{\partial y} - \left(\frac{\partial^{2} v}{\partial y^{2}} - \frac{\partial v}{\partial y}\right)
$$

$$
\frac{\partial v}{\partial \tau} = \frac{- 2 r}{\sigma^{2}} v + \left(\frac{2 r}{\sigma^{2}} - 1\right) \frac{\partial v}{\partial y} + \frac{\partial^{2} v}{\partial y^{2}}
$$

However, our equation still includes terms involving $v$ and $\partial v / \partial y$, and we still need to employ an additional changes of variables in order to obtain the desired classic heat equation. We will again employ a change of variables, writing $v$ as a function of $u$:

$$
v (y, \tau) = e^{\alpha y + \beta \tau} u (y, \tau),
$$

where $\alpha$ and $\beta$ are constants to be chosen shortly. We differentiate as follows:

$$
\frac{\partial v}{\partial \tau} = \beta e^{\alpha y + \beta \tau} u + e^{\alpha y + \beta \tau} \frac{\partial u}{\partial \tau}
$$

$$
\frac{\partial v}{\partial y} = \alpha e^{\alpha y + \beta \tau} u + e^{\alpha y + \beta \tau} \frac{\partial u}{\partial y}
$$

$$
\frac{\partial^{2} v}{\partial y^{2}} = \alpha^{2} e^{\alpha y + \beta \tau} u + 2 \alpha e^{\alpha y + \beta \tau} \frac{\partial u}{\partial y} + e^{\alpha y + \beta \tau} \frac{\partial^{2} u}{\partial y^{2}}
$$

We will substitute these three derivatives and the expression for $v$ into our already transformed Black-Scholes equation:

$$
\begin{array}{l} \beta e^{\alpha y + \beta \tau} u + e^{\alpha y + \beta \tau} \frac{\partial u}{\partial \tau} \\ = \frac{- 2 r_{f}}{\sigma^{2}} e^{\alpha y + \beta \tau} u + \left(\frac{2 r}{\sigma^{2}} - 1\right) \left(\alpha e^{\alpha y + \beta \tau} u + e^{\alpha y + \beta \tau} \frac{\partial u}{\partial y}\right) + \alpha^{2} e^{\alpha y + \beta \tau} u \\ + 2 \alpha e^{\alpha y + \beta \tau} \frac{\partial u}{\partial y} + e^{\alpha y + \beta \tau} \frac{\partial^{2} u}{\partial y^{2}} \\ \end{array}
$$

Divide by  $e^{\alpha y + \beta \tau}$  to obtain:

$$
\beta u + \frac{\partial u}{\partial \tau} = \frac{- 2 r}{\sigma^{2}} u + \left(\frac{2 r}{\sigma^{2}} - 1\right) \left(\alpha u + \frac{\partial u}{\partial y}\right) + \alpha^{2} u + 2 \alpha \frac{\partial u}{\partial y} + \frac{\partial^{2} u}{\partial y^{2}},
$$

Combine like terms to obtain our second revision of the Black-Scholes differential equation:

$$
\frac{\partial u}{\partial \tau} = \left[ \frac{- 2 r}{\sigma^{2}} + \left(\frac{2 r}{\sigma^{2}} - 1\right) \alpha + \alpha^{2} - \beta \right] u + \left(\frac{2 r}{\sigma^{2}} - 1 + 2 \alpha\right) \frac{\partial u}{\partial y} + \frac{\partial^{2} u}{\partial y^{2}}
$$

Observe that if we choose

$$
\alpha = \frac{1}{2} - \frac{r}{\sigma^{2}},
$$

then the coefficient for the term  $\partial u / \partial y$  will equal zero, and if we furthermore choose

$$
\beta = \frac{2 r}{\sigma^{2}} - \left(\frac{2 r}{\sigma^{2}} - 1\right) \alpha - \alpha^{2} = - \frac{r^{2}}{\sigma^{4}} - \frac{r}{\sigma^{2}} - \frac{1}{4},
$$

then the coefficient for the term  $u$  will equal zero. With these choices for the constants  $\alpha$  and  $\beta$ , we obtain our first main objective:

$$
\frac{\partial u}{\partial \tau} = \frac{\partial^{2} u}{\partial y^{2}}.
$$

Next, we solve this classic heat equation. Recall that we also need to be given the initial boundary condition. So, we need to know how to transform the boundary condition  $V(S,T)$  to the function  $u$  in terms of  $y$  and the proper choice of  $\tau$ . Since  $\tau = \frac{1}{2}\sigma^2 (T - t)$ , then when  $t = T$ ,  $\tau = 0$ . Since  $(S,T) = Xv\left(ln\left(\frac{S}{X}\right),0\right) = Xv(y,0)$ ,  $v(y,O) = e^{ay}u(y,O)$ , and  $S = Xe^{y}$ , then

$$
u (y, 0) = \frac{V (X e^{y} , T)}{X e^{\alpha y}}.
$$

The solution of the heat equation $u(y,\tau)$ in terms of the boundary condition $u(y,0)$ is

$$
u (y, \tau) = \frac{1}{\sqrt{4 \pi \tau}} \int_{- \infty}^{\infty} u (x, 0) e^{- \frac{(y - x)^{2}}{4 \tau}} d x. \tag{1}
$$

To prove that this solution is correct, we find

$$
\begin{array}{l} \frac{\partial u}{\partial \tau} = \frac{\partial}{\partial \tau} \left[ \frac{1}{\sqrt{4 \pi \tau}} \int_{- \infty}^{\infty} u (x, 0) e^{- \frac{(y - x)^{2}}{4 \tau}} d x \right] = \frac{1}{\sqrt{4 \pi}} \int_{- \infty}^{\infty} u (x, 0) \frac{\partial}{\partial \tau} [ \frac{1}{\sqrt{\tau}} e^{- \frac{(y - x)^{2}}{4 \tau}} ] d x \\ = \frac{1}{\sqrt{4 \pi}} \int_{- \infty}^{\infty} u (x, 0) [ \frac{- 1}{2 \tau^{3 / 2}} + \frac{(y - x)^{2}}{4 \tau^{5 / 2}} ] e^{- \frac{(y - x)^{2}}{4 \tau}} d x \\ = \frac{- 1}{2 \tau \sqrt{4 \pi \tau}} \int_{- \infty}^{\infty} u (x, 0) [ 1 - \frac{(y - x)^{2}}{2 \tau} ] e^{- \frac{(y - x)^{2}}{4 \tau}} d x, \\ \end{array}
$$

and

$$
\begin{array}{l} \frac{\partial^{2} u}{\partial y^{2}} = \frac{1}{\sqrt{4 \pi \tau}} \int_{- \infty}^{\infty} u (x, 0) \frac{\partial^{2}}{\partial y^{2}} [ e^{- \frac{(y - x)^{2}}{4 \tau}} ] d x = \frac{- 1}{2 \tau \sqrt{4 \pi \tau}} \int_{- \infty}^{\infty} u (x, 0) \frac{\partial}{\partial y} [ (y - x) e^{- \frac{(y - x)^{2}}{4 \tau}} ] d x \\ = \frac{- 1}{2 \tau \sqrt{4 \pi \tau}} \int_{- \infty}^{\infty} u (x, 0) [ 1 - \frac{(y - x)^{2}}{2 \tau} ] e^{- \frac{(y - x)^{2}}{4 \tau}} d x = \frac{\partial u}{\partial \tau} \\ \end{array}
$$

as we wished to show. We also must show that the solution approaches  $u(y,0)$  in the limit as  $\tau \to 0$ . So, we need to show that

$$
\lim_{\tau \to 0} \frac{1}{\sqrt{4 \pi \tau}} \int_{- \infty}^{\infty} u (x, 0) e^{- \frac{(y - x)^{2}}{4 \tau}} d x = u (y, 0).
$$

Make the change of variables  $z = \frac{x - y}{\sqrt{2\tau}}$ , so that  $x = y + z\sqrt{2\tau}$ , and  $dx = dz\sqrt{2\tau}$ . The left hand limit above becomes

$$
\lim_{\tau \to 0} \frac{1}{\sqrt{2 \pi}} \int_{- \infty}^{\infty} u (y + z \sqrt{2 \tau}, 0) e^{- \frac{z^{2}}{2}} d z.
$$

We will assume that the boundary condition grows no faster than an exponential of the form  $Ae^{B / z}$  where  $A$  and  $B$  are positive constants. This is a reasonable assumption since no real-life security will grow faster than such a rate. Thus, the entire function inside the integral gets small very rapidly once  $|z|$  gets large. So, most of the contribution to the value of the integral occurs in the range of integration from  $-N$  to  $N$  with  $N$  a large positive number. We can closely approximate the limit above by

$$
\lim_{\tau \to 0} \frac{1}{\sqrt{2 \pi}} \int_{- N}^{N} u (y + z \sqrt{2 \tau}) e^{- \frac{z^{2}}{2}} d z.
$$

The quantity  $y + z\sqrt{2\tau}$  will vary from  $y - N\sqrt{2\tau}$  to  $y + N\sqrt{2\tau}$  as  $s$  ranges over the limits of integration from  $-N$  to  $N$ . As  $\tau \to 0$  and eventually gets much smaller than  $1/N^2$ , the quantity  $y + z\sqrt{2\tau}$  will be approximately equal to  $y$  as  $z$  ranges over the limits of integration from  $-N$  to  $N$ . Thus,  $u(y + z\sqrt{2\tau}) \approx u(y)$  over this range of integration as long as  $u$  is a continuous function. This means that

$$
\frac{1}{\sqrt{2 \pi}} \int_{- N}^{N} u (y + z \sqrt{2 \tau}) e^{- \frac{z^{2}}{2}} d z \approx \frac{1}{\sqrt{2 \pi}} \int_{- N}^{N} u (y) e^{- \frac{z^{2}}{2}} d z = u (y) \left[ \frac{1}{\sqrt{2 \pi}} \int_{- N}^{N} e^{- \frac{z^{2}}{2}} d z \right].
$$

But, the integral

$$
\frac{1}{\sqrt{2 \pi}} \int_{- N}^{N} e^{- \frac{z^{2}}{2}} d z \approx \frac{1}{\sqrt{2 \pi}} \int_{- \infty}^{\infty} e^{- \frac{z^{2}}{2}} d z = 1,
$$

since  $N$  is very large and the right-hand integral is the total area under the standard normal curve. The approximations above get better and better as  $N \to \infty$  and  $\tau \to 0$ . We conclude that

$$
\lim_{\tau \to 0} \frac{1}{\sqrt{4 \pi \tau}} \int_{- \infty}^{\infty} u (x, 0) e^{- \frac{(y - x)^{2}}{4 \tau}} d x = u (y, 0),
$$

as we wished to show.

Our result allows us to find the value of any derivative that is based on an underlying security $S$ that follows a Brownian motion process with drift. One only needs to substitute the specific boundary conditions for the derivative, to obtain its value at any time $t$. As an illustration, we will price a European call option. For a call option, it is customary to denote its value at time $t$ in terms of the price of the stock $S$ by $c(S,t)$ rather than $V(S,t)$. Suppose that $X$ is its exercise price, and $T$ is its expiration date. If $S > X$ at expiration time $T$, then the call option will be worth $S - X$, since the option holder can buy the stock for $X$ and sell it for $S$. If $S \leq X$ at time $T$, then the option holder should not exercise the option, making the value of the option

simply equal to 0. This shows that the boundary condition for the call option at time $T$ is $c(S, T) = MAX(S - X, 0)$. In order to value the price of the option at any other time $t$, it turns out that it is easier to first solve the problem for $u$ as a function of $y$ and $\tau$. Afterwards, one can convert the solution to $c$ as a function of $S$ and $t$. We will need to find the boundary condition for the function $u$. Since $u(y, 0) = \frac{c(Xe^{y}, T)}{Xe^{\alpha y}}$ as we showed earlier, then

$$
u (y, 0) = \frac{\mathrm{MAX} (X e^{y} - X , 0)}{X e^{\alpha y}} = \mathrm{MAX} \big (e^{(1 - \alpha) y} - e^{- \alpha y}, 0 \big).
$$

Substituting this initial condition into our integral solution (1), we obtain:

$$
u (y, \tau) = \frac{1}{\sqrt{4 \pi \tau}} \int_{- \infty}^{\infty} \max \bigl (e^{(1 - \alpha) x} - e^{- \alpha x}, 0 \bigr) e^{- \frac{(y - x)^{2}}{4 \tau}} d x.
$$

Observe that $e^{(1 - \alpha)x} - e^{-\alpha x} \geq 0$ means $e^{-\alpha x}(e^x - 1) \geq 0$, or $e^x - 1 \geq 0$, or $e^x \geq 1$, or $x \geq 0$. So, the solution becomes:

$$
u (y, \tau) = \frac{1}{\sqrt{4 \pi \tau}} \int_{0}^{\infty} [ e^{(1 - \alpha) x} - e^{- \alpha x} ] e^{- \frac{(y - x)^{2}}{4 \tau}} d x.
$$

The next few steps of the derivation involve some algebraic manipulation and a couple changes of variables in order to express the integral above in terms of the cumulative distribution function for the standard normal curve. Using completion of the square and some algebraic manipulations, we can write:

$$
(1 - \alpha) x - \frac{(y - x)^{2}}{4 \tau} = - \frac{1}{4 \tau} [ x - (y + 2 (1 - \alpha) \tau) ]^{2} + (1 - \alpha) y + (1 - \alpha)^{2} \tau
$$

and

$$
- \alpha x - \frac{(y - x)^{2}}{4 \tau} = - \frac{1}{4 \tau} [ x - (y - 2 \alpha \tau) ]^{2} - \alpha y + \alpha^{2} \tau .
$$

So, the solution now becomes:

$$
\begin{array}{l} u (y, \tau) = \frac{1}{\sqrt{4 \pi \tau}} e^{(1 - \alpha) y + (1 - \alpha)^{2} \tau} \int_{0}^{\infty} e^{- \frac{1}{4 \tau} [ x - (y + 2 (1 - \alpha) \tau) ]^{2}} d x \\ - \frac{1}{\sqrt{4 \pi \tau}} e^{- \alpha y + \alpha^{2} \tau} \int_{0}^{\infty} e^{- \frac{1}{4 \tau} [ x - (y - 2 \alpha \tau) ]^{2}} d x. \\ \end{array}
$$

In the first integral, make the change of variables,  $z = \frac{1}{\sqrt{2\tau}} [x - (y + 2(1 - \alpha)\tau)]$ . In the second integral, make the change of variables,  $z = \frac{1}{\sqrt{2\tau}} [x - (y - 2\alpha \tau)]$ . This gives:

$$
u (y, \tau) = e^{(1 - \alpha) y + (1 - \alpha)^{2} \tau} \frac{1}{\sqrt{2 \pi}} \int_{- \frac{1}{\sqrt{2 \tau}} (y + 2 (1 - \alpha) \tau)}^{\infty} e^{- \frac{1}{2} z^{2}} d z - e^{- \alpha y + \alpha^{2} \tau} \frac{1}{\sqrt{2 \pi}} \int_{- \frac{1}{\sqrt{2 \tau}} (y - 2 \alpha \tau)}^{\infty} e^{- \frac{1}{2} z^{2}} d z.
$$

Recall that the cumulative distribution function for the standard normal curve is

$$
N (y) = \frac{1}{\sqrt{2 \pi}} \int_{- \infty}^{y} e^{- \frac{1}{2} z^{2}} d z = \frac{1}{\sqrt{2 \pi}} \int_{- y}^{\infty} e^{- \frac{1}{2} z^{2}} d z,
$$

where the second equality follows because of the symmetry of the standard normal curve. Thus, the solution can be expressed as:

$$
u (y, \tau) = e^{(1 - \alpha) y + (1 - \alpha)^{2} \tau} N \left(\frac{1}{\sqrt{2 \tau}} [ y + 2 (1 - \alpha) \tau ]\right) - e^{- \alpha y + \alpha^{2} \tau} N \left(\frac{1}{\sqrt{2 \tau}} [ y - 2 \alpha \tau ]\right).
$$

We are now ready to obtain the solution for price of the option $c(S, t)$. Since $c(S, t) = Xv(y, \tau) = Xe^{\alpha y + \beta \tau}u(y, \tau)$, $S = Xe^{y}$, and $y = \ln(S / X)$, then

$$
c = S e^{\left[ \beta + (1 - \alpha)^{2} \right] \tau} N \left(\frac{1}{\sqrt{2 \tau}} \Big [ l n \left(\frac{S}{X}\right) + 2 (1 - \alpha) \tau) \Big ]\right) - X e^{\left(\beta + \alpha^{2}\right) \tau} N \left(\frac{1}{\sqrt{2 \tau}} \Big [ l n \left(\frac{S}{X}\right) + 2 \alpha \tau) \Big ]\right).
$$

Since  $\alpha = \frac{1}{2} -\frac{r}{\sigma^2}$  and  $\beta = -\frac{r^2}{\sigma^4} -\frac{r}{\sigma^2} -\frac{1}{4},$  it is easy to check that  $\beta +(1 - \alpha)^2 = 0$  and  $\beta +\alpha^{2} = -\frac{2r}{\sigma^2}$ . Using these results and the fact that  $\tau = \frac{1}{2}\sigma^2 (T - t)$  results in

$$
c (S, t) = S N \left(\frac{l n \left(\frac{S}{X}\right) + (r + \frac{1}{2} \sigma^{2}) (T - t)}{\sigma \sqrt{T - t}}\right) - X e^{- r (T - t)} N \left(\frac{l n \left(\frac{S}{X}\right) + \left(r - \frac{1}{2} \sigma^{2}\right) (T - t)}{\sigma \sqrt{T - t}}\right). \tag{2}
$$

Using the customary notation:

$$
d_{1} = \frac{\ln \left(\frac{S_{0}}{X}\right) + (r + \frac{1}{2} \sigma^{2}) T}{\sigma \sqrt{T}}
$$

$$
d_{2} = \frac{\ln \left(\frac{S_{0}}{X}\right) + \left(r - \frac{1}{2} \sigma^{2}\right) T}{\sigma \sqrt{T}},
$$

we can finally express the solution at time  $t = 0$  in the form

$$
c_{0} = S_{0} N (d_{1}) - X e^{- r T} N (d_{2}).
$$

## More on the Self-Financing Replicating Portfolio and the Black-Scholes Derivation

Recall in the text that we were required to construct a self-financing replicating portfolio in order to obtain arbitrage-free pricing of the call. The portfolio consisted of taking the positions  $\gamma_{\mathrm{s,t}}$  of the stock and  $\gamma_{\mathrm{b,t}}$  of the riskless bond at time  $t$ . The value of the portfolio at time  $t$  was then  $V_{t} = \gamma_{\mathrm{s,t}}S_{t} + \gamma_{\mathrm{b,t}}B_{t}$ . The two conditions to be a self-financing replicating portfolio are:

I.  $dV_{t} = \gamma_{s,t}dS_{t} + \gamma_{b,t}dB_{t}$  
II.  $c_{T} = \gamma_{s,T}S_{T} + \gamma_{b,T}B_{T}$

Using Ito's Lemma and the choosing  $\gamma_{s,t} = \frac{\partial V}{\partial S}$ , we saw that condition I reduced to the equation:

$$
\frac{\partial V}{\partial t} = r V - r S \frac{\partial V}{\partial S} - \frac{1}{2} \sigma^{2} S^{2} \frac{\partial^{2} V}{\partial S^{2}}.
$$

This equation is the Black-Scholes differential equation. Since  $B_{\mathrm{t}} = e^{rt}$ ,  $\gamma_{s,t} = \frac{\partial V}{\partial S}$ , and  $V_{t} = \gamma_{\mathrm{s,t}}S_{t} + \gamma_{\mathrm{b,t}}B_{t}$ , then  $\gamma_{b,t} = e^{-rt}\left(V_t - \frac{\partial V}{\partial S} S_t\right)$ . This means that our two choices for the positions in the portfolio will give us a self-financing replicating portfolio as long as there is a solution to the Black-Scholes differential equation such that condition II is also satisfied. But condition II simply states that the value of the portfolio must equal the value of the call at expiration date T; that is,  $V_{T} = c_{T}$ . We derived in the previous topic of the additional reading for this chapter the solution to the Black-Scholes differential equation with the boundary condition  $V_{T} = c_{T}$ . Thus, we can conclude that we have a self-financing portfolio, and that the solution to the Black-Scholes differential equation and its boundary value condition gives us an arbitrage-free pricing for the call.

## Deriving Black-Scholes Delta and Gamma

Black-Scholes and Delta

The Black-Scholes model is given by the following:

$$
\begin{array}{l} c_{0} = S_{0} N (d_{1}) - X e^{- r T} N (d_{2}) \\ d_{1} = \frac{l n \left(\frac{S_{0}}{X}\right) + \left(r + \frac{1}{2} \sigma^{2}\right) T}{\sigma \sqrt{T}}, \\ d_{2} = \frac{\ln \left(\frac{S_{0}}{X}\right) + \left(r - \frac{1}{2} \sigma^{2}\right) T}{\sigma \sqrt{T}} \\ \end{array}
$$

where  $\mathrm{N}(\mathrm{d}^{*})$  is the cumulative normal distribution function for  $(\mathrm{d}^{*})$ .

Option traders find it very useful to know how the values of their option positions will change as the various factors used in the pricing model change. For example, the sensitivity of the call's value to the stock's price is given by Delta:

$$
\frac{\partial c}{\partial S} = N \left(d_{1}\right) > 0 \quad D e l t a \quad \Delta
$$

Applying the Chain Rule to Derive Delta

We obtain this delta by first applying the Chain Rule to the Black-Scholes model as follows:

$$
\frac{\partial c}{\partial S} = N \left(d_{1}\right) + S_{0} \frac{d N \left(d_{1}\right)}{d \left(d_{1}\right)} \frac{\partial d_{1}}{\partial S} - X e^{- r T} \left(\frac{d N \left(d_{2}\right)}{d \left(d_{2}\right)} \frac{\partial d_{2}}{\partial S}\right)
$$

$$
\frac{\partial d_{1}}{\partial S} = \frac{\partial d_{2}}{\partial S} = \frac{1}{S_{0}} \cdot \frac{1}{\sigma \sqrt{T}}
$$

$$
\frac{\partial c}{\partial S} = N \left(d_{1}\right) + \frac{1}{S_{0}} \cdot \frac{1}{\sigma \sqrt{T}} \left[ S_{0} \frac{d N \left(d_{1}\right)}{d \left(d_{1}\right)} - X e^{- r T} \frac{d N \left(d_{2}\right)}{d \left(d_{2}\right)} \right]
$$

Our expression for Delta is obtained once we demonstrate that the two terms inside the brackets offset each other:2

$$
S_{0} \frac{d N \left(d_{1}\right)}{d \left(d_{1}\right)} = X e^{- r T} \frac{d N \left(d_{2}\right)}{d \left(d_{2}\right)} \tag{3}
$$

We re-write the right side of this equality as follows:

$$
X e^{- r T} \frac{d N (d_{2})}{d (d_{2})} = X e^{- r T} \frac{d N (d_{1} - \sigma \sqrt{T})}{d (d_{1})} = X e^{- r T} \frac{1}{\sqrt{2 \pi}} \cdot e^{\frac{- (d_{1} - \sigma \sqrt{T})^{2}}{2}}
$$

We continue to re-write as follows:

$$
X e^{- r T} \frac{1}{\sqrt{2 \pi}} e^{\frac{- (d_{1} - \sigma \sqrt{T})^{2}}{2}} = X e^{- r T} \frac{1}{\sqrt{2 \pi}} e^{\frac{- d_{1}^{2}}{2}} \cdot e^{\frac{- (- 2 d_{1} \sigma \sqrt{T} + \sigma^{2} T)}{2}} = X e^{- r T} \frac{d N (d_{1})}{d (d_{1})} e^{d_{1} \sigma \sqrt{T}} \cdot e^{\frac{- \sigma^{2} T}{2}}
$$

Substituting for  $\mathrm{d}_1$  from the Black Scholes model and then canceling offsetting terms, we have

## Chapter 7 Additional Readings

$$
X e^{- r T} \frac{d N (d_{1})}{d (d_{1})} e^{d_{1} \sigma \sqrt{T}} \cdot e^{\frac{- \sigma^{2} T}{2}} = X e^{- r T} \frac{d N (d_{1})}{d (d_{1})} e^{\ln \left(S_{0} / X\right) + \left(r + \frac{1}{2} \sigma^{2}\right) T} \cdot e^{\frac{- \sigma^{2} T}{2}} = X \frac{d N (d_{1})}{d (d_{1})} e^{\ln \left(S_{0} / X\right)}
$$

$$
X \frac{d N \left(d_{1}\right)}{d \left(d_{1}\right)} e^{\ln \left(S_{0} / X\right)} = \frac{d N \left(d_{1}\right)}{d \left(d_{1}\right)} S_{0}
$$

Now, it should be clear that equation (3) and the formula for delta are true:

$$
S_{0} \frac{d N \left(d_{1}\right)}{d \left(d_{1}\right)} = X e^{- r T} \frac{d N \left(d_{2}\right)}{d \left(d_{2}\right)} \text{ and } \frac{\partial c}{\partial S} = N \left(d_{1}\right)
$$

# Gamma

We can derive gamma, the derivative of delta with respect to  $S$  using the chain rule as follows:

$$
\frac{\partial^{2} c}{\partial S^{2}} = \frac{\partial N (d_{1})}{\partial S} = \frac{d N (d_{1})}{d (d_{1})} \frac{\partial (d_{1})}{\partial S} = \Gamma
$$

$$
\frac{\partial^{2} c}{\partial S^{2}} = \frac{e^{\frac{- d_{1}^{2}}{2}}}{\sqrt{2 \pi}} \cdot \frac{1}{S_{0} \sigma \sqrt{T}} = \Gamma
$$
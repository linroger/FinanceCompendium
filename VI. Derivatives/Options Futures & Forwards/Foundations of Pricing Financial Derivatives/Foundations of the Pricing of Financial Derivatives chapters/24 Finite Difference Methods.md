---
aliases:
  - Finite Difference Methods
tags:
key_concepts:
parent_directory: Foundations of the Pricing of Financial Derivatives chapters
cssclasses: academia
title: "Chapter 24: Finite Difference Methods"
linter-yaml-title-alias: "Chapter 24: Finite Difference Methods"
---

# Finite Difference Methods

As we have learned to this point, under the appropriate assumptions, the price of a call option is given by the solution,  $c$ , to the partial differential equation

$$
\frac {\partial c}{\partial S _ {t}} r _ {c} S _ {t} + \frac {\partial c}{\partial t} + \frac {1}{2} \frac {\partial^ {2} c}{\partial S _ {t} ^ {2}} S _ {t} ^ {2} \sigma^ {2} = r _ {c} c _ {t}. \tag {24.1}
$$

For standard European options and certain other options, a closed form solution is possible. In the case of European options, the boundary condition is  $c_{T} = \max (0,S_{T} - X)$ , where  $S_{T}$  is the asset price at expiration and  $X$  is the exercise price in the well-known Black-Scholes-Merton model. In some cases, however, no closed-form solution can be derived. Although the binomial model can often be used, the finite difference method is another alternative. It essentially amounts to a trinomial and in some respects is more efficient, because it allows for more possible outcomes. The approach taken here is the log transform method as suggested by Brennan and Schwartz (1978), which is known to provide a stable solution. $^{1}$

# 24.1 SETTING UP THE FINITE DIFFERENCE PROBLEM

Recall that the call price depends on the underlying price and time or  $c_{t} = c(S, t)$ . Following Brennan and Schwartz, we begin by defining a new variable  $y = \ln S$ . Let  $w$  be defined such that  $w(y, t) = c(S, t)$ . The goal is to transform a multiplicative distribution (i.e., the lognormal distribution) to an additive distribution (i.e., the normal distribution). Recall that if  $S$  is lognormally distributed, then  $\ln(S)$  is normally distributed. The variable  $w(y, t)$  is the price of the call at time  $t$  in terms of the transformed asset price and time. In other words, we price the call in terms of the log of the asset price and time  $t$ . Based on Ito's lemma, we shall need the following:

$$
\frac {\partial c}{\partial S} = \frac {\partial w}{\partial y} \frac {\partial y}{\partial S} = \frac {\partial w}{\partial y} \frac {1}{S} = \frac {\partial w}{\partial y} e ^ {- y}, \tag {24.2}
$$

$$
\begin{array}{l} \frac {\partial^ {2} c}{\partial S ^ {2}} = \frac {\partial}{\partial S} \left(\frac {\partial w}{\partial y} e ^ {- y}\right) = e ^ {- y} \frac {\partial w / \partial y}{\partial S} + \frac {\partial w}{\partial y} \frac {\partial e ^ {- y}}{\partial S} \\ = e ^ {- y} \frac {\partial^ {2} w}{\partial y ^ {2}} \frac {\partial y}{\partial S} - \frac {\partial w}{\partial y} e ^ {- 2 y} = \left(\frac {\partial^ {2} w}{\partial y ^ {2}} - \frac {\partial w}{\partial y}\right) e ^ {- 2 y}, \text {a n d} \tag {24.3} \\ \end{array}
$$

$$
\frac {\partial c}{\partial t} = \frac {\partial w}{\partial t}. \tag {24.4}
$$

Substituting these results into the partial differential equation, we obtain

$$
\frac {\sigma^ {2}}{2} \frac {\partial^ {2} w}{\partial y ^ {2}} + \left(r _ {c} - \frac {\sigma^ {2}}{2}\right) \frac {\partial w}{\partial y} + \frac {\partial w}{\partial t} - r _ {c} w = 0. \tag {24.5}
$$

To get a practical solution for  $w$  in this equation, we express it as the difference equation,

$$
\frac {\sigma^ {2}}{2} \frac {\Delta^ {2} w}{\Delta y ^ {2}} + \left(r _ {c} - \frac {\sigma^ {2}}{2}\right) \frac {\Delta w}{\Delta y} + \frac {\Delta w}{\Delta t} - r _ {c} w = 0. \tag {24.6}
$$

We then partition a reasonable range of the log of the asset price into finite intervals. For example, the minimum asset price is zero and the maximum is infinity. Suppose we consider only the following prices as feasible:  $0, \Delta y, 2\Delta y, \ldots, y - 2\Delta y, y - \Delta y, y, y + \Delta y, y + 2\Delta y, \ldots, \infty$ . When we implement the technique, we shall need to make  $\Delta y$  as small as possible and we must choose a finite maximum asset price to represent infinity, so let us call it  $S_{max}$ . In addition  $\ln 0$  is undefined so we let the minimum  $S$  be very close to but not equal to zero. Here we specify  $\min(\ln S)$  as a very small value,  $\eta$ .<sup>2</sup>

Letting  $\tau$  be the time to expiration, we partition the time remaining in the option's life into discrete intervals equaling  $\tau, \tau - \Delta t, \tau - 2\Delta t, \dots, 2\Delta t, \Delta t, 0$ . These gradations of time and asset price can be arranged on a grid, as in Table 24.1.

Each dot corresponds to an option price associated with the log of the asset price in the given row and the time to expiration in the given column.

Some of the information in the grid would already be known. For example, we know the following boundary conditions,

$$
c = 0 \text {i f} S = 0 \text {f o r a l l} t. \tag {24.7}
$$

And because we know that  $\ln S = \eta$  when  $S$  is very close to zero, we specify this condition as

$$
w = 0 \text {i f} S ^ {\prime \prime} \text {c l o s e} ^ {\prime \prime} 0 (\ln S = \eta) \text {f o r a l l} t. \tag {24.8}
$$

This statement permits us to fill in zeroes along the bottom row.

TABLE 24.1 Finite Difference Grid  

<table><tr><td rowspan="2">ln S</td><td colspan="7">Time to Expiration</td></tr><tr><td>τ</td><td>τ - Δt</td><td>τ - 2Δt</td><td>●</td><td>2Δt</td><td>Δt</td><td>0</td></tr><tr><td>∞</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td></tr><tr><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td></tr><tr><td>y + 2Δy</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td></tr><tr><td>y + Δy</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td></tr><tr><td>y</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td></tr><tr><td>y - Δy</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td></tr><tr><td>y - 2Δy</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td></tr><tr><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td></tr><tr><td>2Δy</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td></tr><tr><td>Δy</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td></tr><tr><td>η</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td></tr></table>

TABLE 24.2 Partially Filled-in Finite Difference Grid  

<table><tr><td rowspan="2">In S</td><td colspan="7">Time to Expiration</td></tr><tr><td>τ</td><td>τ - Δt</td><td>τ - 2Δt</td><td>●</td><td>2Δt</td><td>Δt</td><td>0</td></tr><tr><td>Smax</td><td>●* +</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>max(0, Smax - X)</td></tr><tr><td>●</td><td>●(τ) + Δyey</td><td>●(τ - Δt) + Δyey</td><td>●(τ - 2Δt) + Δyey</td><td>●(●) + Δyey</td><td>●(2Δt) + Δyey</td><td>●(Δt) + Δyey</td><td>max(0, e* - X)</td></tr><tr><td>y + 2Δy</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>max(0, e+y+2Δy - X)</td></tr><tr><td>y + Δy</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>max(0, e+y+Δy - X)</td></tr><tr><td>y</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>max(0, e^y - X)</td></tr><tr><td>y - Δy</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>max(0, e^{y-2Δy} - X)</td></tr><tr><td>y - 2Δy</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>max(0, e^{y-2Δy} - X)</td></tr><tr><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>max(0, e* - X)</td></tr><tr><td>2Δy</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>max(0, e^{2Δy} - X)</td></tr><tr><td>Δy</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>●</td><td>max(0, e^{Δy} - X)</td></tr><tr><td>η</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td></tr></table>

When  $S \to \infty$ , the first derivative of the call price with respect to the asset price is 1:

$$
\lim  _ {S \rightarrow \infty} \frac {\partial c}{\partial S} = 1 \text {i f} S \rightarrow \infty \text {f o r a l l} t. \tag {24.9}
$$

Because

$$
\frac {\partial c}{\partial S} = \left(\frac {\partial w}{\partial y}\right) e ^ {- y},
$$

we have

$$
\frac {\partial w}{\partial y} = e ^ {y} = S \text {f o r a l l} t \text {w h e n} \ln S \rightarrow \infty . \tag {24.10}
$$

This means that once we know the second highest call value, we can obtain the highest value by adding  $\Delta ye^{y}$  to it. This is equivalent to imposing the standard condition that the option delta is 1 at a very high stock price.

We also know the value of the option at expiration,

$$
c = \max  \left(0, S _ {T} - X\right) \text {f o r a l l} S \text {w h e n} t = 0. \tag {24.11}
$$

In terms of  $y$ , this is simply

$$
w = \max  \left(0, e ^ {y} - X\right) \text {f o r a l l} y. \tag {24.12}
$$

Thus, we can fill in the entire right column. So, the grid is now partially filled in, as shown in Table 24.2.

So, let us now take a look at the explicit finite difference method.

# 24.2 THE EXPLICIT FINITE DIFFERENCE METHOD

It may be useful to visualize the following small section from the grid illustrated in Figure 24.3. Define any arbitrary point,  $t$ , across the columns representing time. Each column is related to the column next to it by one increment or decrement of time,  $\Delta t$ . Each row is the

TABLE 24.3 A Portion of the Explicit Finite Difference Grid  

<table><tr><td rowspan="2">ln S</td><td colspan="2">Time</td></tr><tr><td>t</td><td>t + Δt</td></tr><tr><td>y + Δy</td><td></td><td>wy+Δy,t+Δt</td></tr><tr><td>y</td><td>wy,t</td><td>wy,t+Δt</td></tr><tr><td>y - Δy</td><td></td><td>wy-Δy,t+Δt</td></tr></table>

natural log of the asset price. Each row above or below it increments the log of the asset price by  $\Delta y$ . From the point corresponding to the log of asset price,  $y$ , and time,  $t$ , look to the right one column at the option prices one asset price up, the current asset price, and one asset price down.

What we are going to do is to express the option price  $w_{y,t}$  as a weighted average of these three option prices to the right, discounted one period at the risk-free rate, that is, in this general form:

$$
w _ {y, t} = \frac {\omega_ {1} w _ {y + \Delta y , t + \Delta t} + \omega_ {2} w _ {y , t + \Delta t} + \omega_ {3} w _ {y - \Delta y , t + \Delta t}}{e ^ {r _ {c} \Delta t}}. \tag {24.13}
$$

The explicit finite difference method solves for  $w_{y,t}$  in terms of the known values of  $w_{y + \Delta y, t + \Delta t}, w_{y, t + \Delta t}$ , and  $w_{y - \Delta y, t + \Delta t}$ . The three prices one time step ahead are assumed to be already known. Of course, we shall need to know the three prices to the right, but we will obviously know these prices. Recall from Table 24.2 that we know all the prices in the rightmost column. That means we can fill in the prices one column to the left. What we do not know, however, is the weights in Equation (24.13), and that is what the explicit finite difference method will provide. We shall approach this problem by examining the differentials, which represent the derivatives, which represent the differences in prices along the grid.

We can obtain finite difference estimates of the partial derivatives as follows. First,  $\Delta w_{y,t} / \Delta t$  is approximately

$$
\frac {\Delta w _ {y , t}}{\Delta t} = \frac {w _ {y , t + \Delta t} - w _ {y , t}}{\Delta t}. \tag {24.14}
$$

Note that we are holding the asset price constant and moving along the grid by a time step. We shall also, however, need a way to relate the price corresponding to  $y$  and  $t$  to the price one step later corresponding to  $y + \Delta y$  and  $y - \Delta y$ . One way is called the forward difference,

$$
\frac {\Delta w _ {y , t}}{\Delta y} = \frac {w _ {y + \Delta y , t + \Delta t} - w _ {y , t + \Delta t}}{\Delta y}, \tag {24.15}
$$

and another is called the backward difference,

$$
\frac {\Delta w _ {y , t}}{\Delta y} = \frac {w _ {y , t + \Delta t} - w _ {y - \Delta y , t + \Delta t}}{\Delta y}. \tag {24.16}
$$

We typically average these two estimates to obtain

$$
\frac {\Delta w _ {y , t}}{\Delta y} = \frac {w _ {y + \Delta y , t + \Delta t} - w _ {y - \Delta y , t + \Delta t}}{2 \Delta y}. \tag {24.17}
$$

The second partial differential can be estimated as

$$
\begin{array}{l} \frac {\Delta^ {2} w _ {y , t}}{\Delta y ^ {2}} = \frac {\frac {w _ {y + \Delta y , t + \Delta t} - w _ {y , t + \Delta t}}{\Delta y} - \frac {w _ {y , t + \Delta t} - w _ {y - \Delta y , t + \Delta t}}{\Delta y}}{\Delta y}. \\ = \frac {w _ {y + \Delta y , t + \Delta t} - 2 w _ {y , t + \Delta t} + w _ {y - \Delta y , t + \Delta t}}{\Delta y ^ {2}} \tag {24.18} \\ \end{array}
$$

Substituting these estimates of the partial differentials into the difference Equation (24.6) and rearranging gives us

$$
w _ {y, t} = \frac {\omega_ {1} w _ {y - \Delta y , t + \Delta t} + \omega_ {2} w _ {y , t + \Delta t} + \omega_ {3} w _ {y + \Delta t , t + \Delta t}}{1 + r _ {c} \Delta t}, \tag {24.19}
$$

where

$$
\begin{array}{l} \omega_ {1} = \left[ \frac {1}{2} \left(\frac {\sigma}{\Delta y}\right) ^ {2} - \frac {1}{2} \left(\frac {r _ {c} - \frac {\sigma^ {2}}{2}}{\Delta y}\right) \right] \Delta t \\ \omega_ {2} = 1 - \left(\frac {\sigma}{\Delta y}\right) ^ {2} \Delta t \\ \omega_ {3} = \left[ \frac {1}{2} \left(\frac {\sigma}{\Delta y}\right) ^ {2} + \frac {1}{2} \left(\frac {r _ {c} - \frac {\sigma^ {2}}{2}}{\Delta y}\right) \right] \Delta t. \tag {24.20} \\ \end{array}
$$

In other words, the option price at  $t$  is a discounted weighted average of the next three possible option prices at  $t + \Delta t$ , where the weights are given in Equation (24.20). These weights sum to unity and are the risk neutral/equivalent martingale probabilities of the three log asset prices  $y + \Delta y$ ,  $y$ , and  $y - \Delta y$  at  $t + \Delta t$ . This technique is, therefore, essentially a risk-neutral trinomial method.

Filling in the full grid with the option prices is now simple. As noted previously, the rightmost column is the set of option prices at expiration and is already known. Using the rightmost column to provide the three known option prices, we can then solve for the second-to-rightmost column of option prices. Other missing prices in the topmost row can be filled in by knowing the second-to-topmost row, as noted previously. The prices in the bottommost row are, as noted previously, zero. The process then continues leftward until the leftmost column is filled in. When the entire grid is filled in, the current option price can be read from the row corresponding to the log of the current asset price in the leftmost column.<sup>3</sup>

The log transform allows the weights to be independent of time. Thus,  $\omega_{i}, i = 1,2,3$  need to be obtained only once. The weights should be constrained to be nonnegative, which is important, by choosing  $\Delta t \leq \Delta y^2 / \sigma^2$  and  $\Delta y \leq \sigma^2 |r_c - \sigma^2 / 2|$ .

# 24.3 THE IMPLICIT FINITE DIFFERENCE METHOD

The implicit finite difference method uses a somewhat different approach. Consider the section of the grid shown in Table 24.4.

Notice the difference with the explicit finite difference method. Here we have one price at  $t + \Delta t$  and three at time  $t$ . Here we shall solve for three contemporaneous option prices by using information about the next asset price. The first-order differential with respect to the asset price is estimated as

$$
\frac {\Delta w _ {y , t}}{\Delta y} = \frac {w _ {y + \Delta y , t} - w _ {y , t}}{\Delta y}, \tag {24.21}
$$

or as

$$
\frac {\Delta w _ {y , t}}{\Delta y} = \frac {w _ {y , t} - w _ {y - \Delta y , t}}{\Delta y}. \tag {24.22}
$$

Averaging these two estimates we obtain

$$
\frac {\Delta w _ {y , t}}{\Delta y} = \frac {w _ {y + \Delta y , t} - w _ {y - \Delta y , t}}{2 \Delta y}. \tag {24.23}
$$

Note how each of these prices is at the same point in time,  $t$ . The second order differential is estimated as

$$
\begin{array}{l} \frac {\Delta^ {2} w _ {y , t}}{\Delta y ^ {2}} = \frac {\frac {w _ {y + \Delta y , t} - w _ {y , t}}{\Delta y} - \frac {w _ {y , t} - w _ {y - \Delta y , t}}{\Delta y}}{\Delta y}. \\ = \frac {w _ {y + \Delta y , t} - 2 w _ {y , t} + w _ {y - \Delta y , t}}{\Delta y ^ {2}} \tag {24.24} \\ \end{array}
$$

The time differential is estimated the same way as in the explicit finite difference method, Equation (24.14). Now we substitute these values into the difference Equation, (24.6), to obtain

$$
\begin{array}{l} \frac {1}{2} \sigma \bigg (\frac {w _ {y + \Delta y , t} - 2 w _ {y , t} + w _ {y - \Delta y , t}}{\Delta y ^ {2}} \bigg) + \left(r _ {c} - \frac {\sigma^ {2}}{2}\right) \left(\frac {w _ {y + \Delta y , t} - w _ {y - \Delta y , t}}{2 \Delta y}\right) \\ + \frac {w _ {y , t + \Delta t} - w _ {y , t}}{\Delta t} - r _ {c} w _ {y, t} = 0. \tag {24.25} \\ \end{array}
$$

TABLE 24.4 A Portion of the Finite Difference Grid  

<table><tr><td rowspan="2">ln S</td><td colspan="2">Time</td></tr><tr><td>t</td><td>t + Δt</td></tr><tr><td>y + Δy</td><td>wy+Δy,t</td><td></td></tr><tr><td>y</td><td>wy,t</td><td>wy,t+Δt</td></tr><tr><td>y - Δy</td><td>wy-Δy,t</td><td></td></tr></table>

Solving for  $w_{\gamma ,t + \Delta t}$  gives

$$
w _ {y, t + \Delta t} = \omega_ {1} w _ {y - \Delta y, t} + \omega_ {2} w _ {y, t} + \omega_ {3} w _ {y + \Delta y, t}, \tag {24.26}
$$

where

$$
\begin{array}{l} \omega_ {1} = \frac {1}{2} \left(\frac {r _ {c} - \frac {\sigma^ {2}}{2}}{\Delta y}\right) \Delta t - \frac {1}{2} \frac {\sigma^ {2} \Delta t}{\Delta y} \\ \omega_ {2} = 1 + \frac {\sigma^ {2} \Delta t}{\Delta y ^ {2}} + r _ {c} \Delta t \\ \omega_ {3} = - \frac {1}{2} \left(\frac {r _ {c} - \frac {\sigma^ {2}}{2}}{\Delta y}\right) \Delta t - \frac {1}{2} \frac {\sigma^ {2} \Delta t}{\Delta y}. \tag {24.27} \\ \end{array}
$$

Note how the equation above solves for the prices  $w_{y + \Delta y,t}$ ,  $w_{y,t}$ , and  $w_{y - \Delta y,t}$  in terms of the known value  $w_{y,t + \Delta t}$ . With three unknowns there must be three equations. Thus, the solution is obtained by solving simultaneously an entire column of option prices. The process starts at the next-to-rightmost column and works leftward.

The implicit finite difference method is generally considered the better approach, because it will often work when the explicit method does not. But it is slightly more difficult to implement, requiring solving simultaneous equations. The Crank-Nicholson method is also widely used. It essentially averages the explicit and implicit methods.

# 24.4 FINITE DIFFERENCE PUT OPTION PRICING

If the options are puts, then the procedure is exactly the same but the following three conditions replace the corresponding conditions for calls:

$$
\begin{array}{l} w _ {y, t} = X e ^ {- r _ {c} \tau} \text {w h e n} \eta \rightarrow 0 \\ w _ {y, t} = 0 \text {f o r a l l} t \text {w h e n} y \rightarrow \infty \\ w _ {y, t} = \max  \left(0, X - e ^ {y}\right) \text {f o r a l l} y. \tag {24.28} \\ \end{array}
$$

# 24.5 DIVIDENDS AND EARLY EXERCISE

If the asset is a stock and there are dividends, the procedure is slightly more complex. If we assume a continuous, constant yield of  $\delta_{c}$ , the first term in the partial differential equation is changed slightly with  $r_c - \delta_c$  replacing  $r_c$ . Then  $S$  is redefined as  $S e^{-\delta_c \tau}$ . If we assume discrete dividends, the partial differential equation is the same as the no-dividend case, but the asset price is redefined as the asset price less the present value of the dividends.

If the options are American calls, then the possibility of early exercise must be considered. At each node we must determine if the asset is worth more exercised early. We simply calculate the value of the option the ordinary way and then calculate the exercise value,  $\max(0, S + PV(D) - X)$ , where  $PV(D)$  is the present value of all remaining dividends during the life of the option. If the call is worth more exercised, then replace the calculated value of the option with the exercise value. This condition will occur with high dividends, low time to expiration, low time value, low volatility, and/or a low interest rate.

If the options are American puts, dividends are not required to justify early exercise. The same procedure as described for calls is followed, with appropriate substitution of the put boundary conditions in the topmost and bottommost rows and rightmost columns.

# 24.6 RECAP AND PREVIEW

In this chapter, we showed how options can be priced by finite difference methods. The finite difference approach specifies difference equations that approximate the differential equations that must hold to obtain the option price. These difference equations are solved by deriving their values over the range of possibilities, such that the option price at the start corresponds to the condition that the current underlying price and time to expiration are in effect. We showed two methods of achieving this result: the explicit and implicit finite difference methods. The former essentially creates a trinomial, which is solved in a similar manner to the binomial model. The latter solves simultaneous equations at each combination of asset price and time to expiration.

This completes Part V. In Part VI, we introduce a new type of underlying, specifically interest rates, which shall pose a special challenge in modeling the stochastic process of the underlying.

# QUESTIONS AND PROBLEMS

1 Based on the standard Black-Scholes-Merton partial differential equation, derive the following transformed PDE:  $\frac{\sigma^2}{2}\frac{\partial^2w}{\partial y^2} +\left(r_c - \frac{\sigma^2}{2}\right)\frac{\partial w}{\partial y} +\frac{\partial w}{\partial t} -r_cw = 0$  , when  $y = \ln (S)$  
2 In general, explain the difference between the explicit finite difference method and the implicit finite difference method.  
3 Explain how the finite difference methodology is changed when solving for put prices.  
4 Explain the impact dividends have on finite difference methods.  
5 Compare and contrast the binomial option pricing model with the explicit finite difference method.  
[Contributed by Jeremy Vasseur] Suppose you were creating a grid for a finite difference valuation of European puts. Explain how you would fill in the rightmost column, topmost row, and bottommost row. Assume the log transform approach is used. (Base your answer on the grid structure provided in Table 24.2.)

# NOTES

1. Some methods lead to an unstable solution, meaning a negative option price for certain asset prices and times to expiration.  
2. If we do not let  $S$  be less than 1, then  $\ln S$  would always be positive.  
3. The option delta, gamma, and theta can be estimated by using approximations for the formulas for  $\partial w / \partial y$ ,  $\partial^2 w / \partial y^2$ , and  $\partial w / \partial t$  based on the finite differences in the grid.  
4. Without the log transform, there will be a different set of weights for each time point or column.


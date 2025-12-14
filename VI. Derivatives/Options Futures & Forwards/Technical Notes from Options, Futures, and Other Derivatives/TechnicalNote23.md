---
aliases:
  - The Black, Derman, and Toy Model
tags:
key_concepts:
parent_directory: Technical Notes from Options, Futures, and Other Derivatives
cssclasses: academia
title: Technical Note No. 23 - The Black, Derman, and Toy Model
linter-yaml-title-alias: Technical Note No. 23 - The Black, Derman, and Toy Model
---

# Technical Note No. 231

# Options, Futures, and Other Derivatives

# John Hull

# The Black, Derman, and Toy Model

As explained in the text, there are two types of model of the short rate: equilibrium and no-arbitrage models. In an equilibrium model the process followed by the short-term interest rate is specified. This totally defines the model. Zero-coupon bond prices and the term structure of interest rates are outputs from the model. Examples of equilibrium models are the Vasicek and Cox, Ingersoll, and Ross models. These models each have three parameters. The parameters can be chosen so that the models provide an approximate fit to the term structure of interest rates, but the fit is not usually an exact one.

A no-arbitrage model is constructed so that it is exactly consistent with the term structure of interest rates that is observed in the market. This means that the term structure of interest rates is an input to the model, not an output from it. No-arbitrage models can be constructed in many different ways. An early no-arbitrage model was the Black, Derman, and Toy model published in 1990.2 This model has the advantage that it can easily be represented in the form of a binomial tree. To correspond as closely as possible with the Black-Derman-Toy paper, we assume that interest rates are compounded annually.

The Black-Derman-Toy model is a particular case of the more general Black-Karasinski model. The short rate follows a mean-reverting lognormal process. However, the way the tree is constructed implies a relationship between the short rate volatility and the reversion rate.

As in the case of the binomial tree used to value stock options, we consider steps of length  $\Delta t$ . The tree models the behavior of the  $\Delta t$ -period interest rate. The zero-coupon interest rates for all maturities at time zero are known. We denote the zero-coupon interest rate for a maturity of  $n\Delta t$  by  $R_{n}$ . The volatility of the  $\Delta t$  rate between time  $(n - 1)\Delta t$  and  $n\Delta t$  is denoted by  $\sigma_{n}$ .

During each time step the  $\Delta t$ -period interest rate has a  $50\%$  probability of moving up and a  $50\%$  probability of moving down. The tree is shown in Figure 1. The initial  $\Delta t$ -period rate,  $r$ , is known and equals  $R_{1}$ . The value of a zero-coupon bond that pays off $1 at time  $2\Delta t$  is

$$
\frac {1}{(1 + R _ {2}) ^ {2 \Delta t}}
$$

The value of this bond at node B on the tree is

$$
\frac {1}{(1 + r _ {d}) ^ {\Delta t}}
$$

The value of the bond at node C is

$$
\frac {1}{(1 + r _ {u}) ^ {\Delta t}}
$$

It follows that the value of the bond at the initial node A is

$$
\frac {1}{(1 + r) ^ {\Delta t}} \left[ 0. 5 \frac {1}{(1 + r _ {d}) ^ {\Delta t}} + 0. 5 \frac {1}{(1 + r _ {u}) ^ {\Delta t}} \right]
$$

Hence

$$
\frac {1}{(1 + r) ^ {\Delta t}} \left[ 0. 5 \frac {1}{(1 + r _ {d}) ^ {\Delta t}} + 0. 5 \frac {1}{(1 + r _ {u}) ^ {\Delta t}} \right] = \frac {1}{(1 + R _ {2}) ^ {2 \Delta t}} \tag {1}
$$

![](images/76e91bea6ebad1ab314b9b28a5cfcab7ce4f7cde6e085d57e8649b2d95fb74bf.jpg)  
Figure 1 The Binomial Tree

This is one equation that must be satisfied by  $r_u$  and  $r_d$ . To match the volatility, the standard deviation of the logarithm of the interest rate at time  $\Delta t$  must be  $\sigma_1\sqrt{\Delta t}$  (Recall:  $\sigma_i$  is the volatility of interest rates during the  $i$ th time period.) This means that<sup>3</sup>

$$
0. 5 \ln \frac {r _ {u}}{r _ {d}} = \sigma_ {1} \sqrt {\Delta t} \tag {2}
$$

Equations (1) and (2) can be solved to determine  $r_u$  and  $r_d$ .

We now move on to determine  $r_{uu}, r_{ud}$  and  $r_{dd}$ . To match volatility we must have

$$
0. 5 \ln \frac {r _ {u u}}{r _ {u d}} = \sigma_ {2} \sqrt {\Delta t} \tag {3}
$$

$$
0. 5 \ln \frac {r _ {u d}}{r _ {d d}} = \sigma_ {2} \sqrt {\Delta t} \tag {4}
$$

We must also match the price of a zero-coupon bond that pays off \(1 at the end of time 3\Delta t. Rolling back through the tree the values of this bond at nodes D, E, and F are

$$
\frac {1}{(1 + r _ {d d}) ^ {\Delta t}} , \quad \frac {1}{(1 + r _ {u d}) ^ {\Delta t}} , \text {a n d} \quad \frac {1}{(1 + r _ {u u}) ^ {\Delta t}}
$$

respectively. The values at nodes B and C are

$$
\frac {1}{(1 + r _ {d}) ^ {\Delta t}} \left[ 0. 5 \frac {1}{(1 + r _ {d d}) ^ {\Delta t}} + 0. 5 \frac {1}{(1 + r _ {u d}) ^ {\Delta t}} \right]
$$

and

$$
\frac {1}{(1 + r _ {u}) ^ {\Delta t}} \left[ 0. 5 \frac {1}{(1 + r _ {u d}) ^ {\Delta t}} + 0. 5 \frac {1}{(1 + r _ {u u}) ^ {\Delta t}} \right]
$$

The value at the initial node is therefore

$$
\left. \frac {1}{(1 + r) ^ {\Delta t}} \left(0. 5 \frac {1}{(1 + r _ {d}) ^ {\Delta t}} \left[ 0. 5 \frac {1}{(1 + r _ {d d}) ^ {\Delta t}} + 0. 5 \frac {1}{(1 + r _ {u d}) ^ {\Delta t}} \right]\right) + \right. \tag {5}
$$

$$
\frac {1}{(1 + r) ^ {\Delta t}} \left(0. 5 \frac {1}{(1 + r _ {u}) ^ {\Delta t}} \left[ 0. 5 \frac {1}{(1 + r _ {u d}) ^ {\Delta t}} + 0. 5 \frac {1}{(1 + r _ {u u}) ^ {\Delta t}} \right]\right) = \frac {1}{(1 + R _ {3}) ^ {3 \Delta t}}
$$

The interest rates  $r$ ,  $r_u$  and  $r_d$  have already been determined. Equations (3), (4), and (5) therefore provide three equations for determining  $r_{uu}$ ,  $r_{ud}$ , and  $r_{dd}$ .

Continuing in this way a complete tree can be constructed. The calculations are made considerably easier if as we move forward we keep track of the value of a security that pays \(1 if a particular node is reached and zero elsewhere. It is then only necessary to roll back one step when valuing zero-coupon bonds using the tree.

# Determining the  $\sigma_{i}$

The determination of the  $\sigma_{i}$  depends on the data available. Sometimes the historical volatilities of zero-coupon bond yields are used; sometimes the volatilities of caps or swaptions are used. An iterative search procedure is always necessary.

When bond yields are being matched, we assume that we have data at time zero on the volatilities of a bond maturing at time  $i\Delta t$ . We will denote this by  $\beta_{i}$ . (We approximate  $\beta_{i}$  as the volatility of this bond yield between time zero and time  $\Delta t$ .) We denote  $y_{un}$  as the yield on a bond maturing at time  $n\Delta t$  at node C and  $y_{dn}$  as the yield on a bond maturing at time  $n\Delta t$  at node B. Considering a bond that matures at time  $2\Delta t$ ,

$$
\beta_ {2} \sqrt {\Delta t} = 0. 5 \ln \frac {y _ {u 2}}{y _ {d 2}}
$$

Because there is only one period left in the bond's life at the nodes at time  $\Delta t$ ,  $y_{u2} = r_u$  and  $y_{d2} = r_d$ . As a result

$$
\beta_ {2} \sqrt {\Delta t} = 0. 5 \ln \frac {r _ {u}}{r _ {d}}
$$

Using equation (2) leads to

$$
\sigma_ {1} = \beta_ {2}
$$

The interest rates  $r_u$  and  $r_d$  can then be determined from equations (1) and (2).

Determining the subsequent  $\sigma_{i}$  requires an iterative search. For example, to determine  $\sigma_{2}$

$$
\beta_ {3} \sqrt {\Delta t} = 0. 5 \ln \frac {y _ {u 3}}{y _ {d 3}}
$$

This must be solved iteratively with equations (3), (4), and (5) for  $\sigma_{2}, r_{uu}, r_{ud}$ , and  $r_{dd}$ .

In general the procedure to determine  $\sigma_{i}(i > 1)$  is

1. Choose a trial value of  $\sigma_{i}$  
2. Calculate the interest rates at time  $i\Delta t$  
3. Calculate the yield volatility for a bond lasting until  $i\Delta t$  from the tree. This involves calculating the bond yields  $y_{u}$  and  $y_{d}$  at nodes B and C. The bond yield volatility is  $0.5\ln (y_u / y_d)$  
4. Search iteratively for the value of  $\sigma_{i}$  that matches the bond yield volatility

Once the tree has been constructed it can be used to value a range of interest rate derivatives.

# Example

As an example of the application of the model suppose that the term structure of interest rates is as shown in Table 1, the zero-coupon yield volatilities are as shown in Table 2, and the time step is one year. In this case  $r = 0.10$ ,  $\Delta t = 1$ ,  $\sigma_{1} = 0.19$  (the two-year yield volatility) and equations (1) and (2) give

$$
\frac {1}{1 . 1 0} \left[ 0. 5 \frac {1}{1 + r _ {d}} + 0. 5 \frac {1}{1 + r _ {u}} \right] = \frac {1}{1 . 1 1 ^ {2}}
$$

$$
0. 5 \ln \frac {r _ {u}}{r _ {d}} = 0. 1 9
$$

Solving these two equations gives  $r_u = 0.1432$  and  $r_d = 0.0979$ .

Table 1  
Zero-coupon Yield Curve (Annually Compounded)  

<table><tr><td>Maturity (years)</td><td>Rate</td></tr><tr><td>1</td><td>10.0</td></tr><tr><td>2</td><td>11.0</td></tr><tr><td>3</td><td>12.0</td></tr><tr><td>4</td><td>12.5</td></tr><tr><td>5</td><td>13.0</td></tr></table>

# Table 2

# Yield Volatilities

<table><tr><td>i</td><td>βi</td></tr><tr><td>2</td><td>19.0%</td></tr><tr><td>3</td><td>18.0%</td></tr><tr><td>4</td><td>17.5%</td></tr><tr><td>5</td><td>16.0%</td></tr></table>

Equations (3), (4), and (5) give

$$
0. 5 \ln \frac {r _ {u u}}{r _ {u d}} = \sigma_ {2}
$$

$$
0. 5 \ln \frac {r _ {u d}}{r _ {d d}} = \sigma_ {2}
$$

$$
\frac {1}{1 . 1} \left(0. 5 \frac {1}{1 . 0 9 7 9} \left[ 0. 5 \frac {1}{1 + r _ {d d}} + 0. 5 \frac {1}{1 + r _ {u d}} \right]\right) +
$$

$$
\frac {1}{1 . 1} \left(0. 5 \frac {1}{1 . 1 4 3 2} \left[ 0. 5 \frac {1}{1 + r _ {u d}} + 0. 5 \frac {1}{1 + r _ {u u}} \right]\right) = \frac {1}{1 . 1 2 ^ {3}}
$$

We do not know  $\sigma_{2}$  directly. For each trial value of  $\sigma_{2}$  we solve equations (3), (4), and (5) and then calculate the price of a three-year bond at nodes B and C. The price of a three-year bond at node B is

$$
B _ {d} = \frac {1}{1 . 0 9 7 9} \left[ 0. 5 \frac {1}{1 + r _ {d d}} + 0. 5 \frac {1}{1 + r _ {u d}} \right]
$$

and the bond yield at node B is

$$
y _ {d} = \sqrt {\frac {1}{B _ {d}}} - 1
$$

The price of a three-year bond at node C is

$$
B _ {u} = \frac {1}{1 . 1 4 3 2} \left[ 0. 5 \frac {1}{1 + r _ {u d}} + 0. 5 \frac {1}{1 + r _ {u u}} \right]
$$

The bond yield is

$$
y _ {u} = \sqrt {\frac {1}{B _ {u}}} - 1
$$

Carrying out an iterative search we find that  $\sigma_{2} = 0.172$  does the trick. With this value of  $\sigma_{2}$  the solutions to the three equations are

$$
r _ {u u} = 0. 1 9 4 2
$$

$$
r _ {u d} = 0. 1 3 7 7
$$

$$
r _ {d d} = 0. 0 9 7 6
$$

These in turn give  $B_{u} = 0.7507$ ,  $B_{d} = 0.8152$ ,  $y_{u} = 0.1542$ , and  $y_{d} = 0.1076$ . Because  $0.5\ln(0.1542 / 0.1076) = 0.18$  the three-year yield volatility is matched.

The complete tree of short rates is shown in Figure 2.

![](images/7eb4b826ed18e5d8d27b262838f6af74b1f60e2c21ca490b2c16470aa96182e0.jpg)  
Figure 2 The Short-Rate Tree
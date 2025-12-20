---
title: Chapter 14 Interest Rate Models
primary_tags:
  - interest rate modeling
  - term structure models
  - fixed income derivatives
secondary_tags:
  - vasicek model
  - cox-ingersoll-ross model
  - ho-lee model
  - black-derman-toy model
  - heath-jarrow-morton model
  - libor market model
  - forward rate dynamics
  - short rate models
  - risk neutral pricing
cssclasses: academia
---

# Chapter 14: Interest Rate Models

## Interest Rate Models Visualization

```d2
# Interest Rate Models Hierarchy
models: {
  label: "Interest Rate Models"
  style: {border-radius: 10, fill: "#e1f5fe"}
  
  equilibrium: {
    label: "Equilibrium Models\n(Vasicek, CIR)"
    style: {fill: "#e8f5e8"}
  }
  
  no_arbitrage: {
    label: "No-Arbitrage Models"
    style: {fill: "#fff3e0"}
    
    short_rate: {
      label: "Short Rate Models\n(Ho-Lee, Hull-White)"
      style: {fill: "#fce4ec"}
    }
    
    forward_rate: {
      label: "Forward Rate Models\n(HJM, LMM)"
      style: {fill: "#f3e5f5"}
    }
  }
  
  equilibrium -> no_arbitrage: {label: "Evolution of approaches"}
  short_rate -> forward_rate: {label: "More sophisticated"}
}

# Model Characteristics
characteristics: {
  label: "Model Characteristics"
  style: {border-radius: 10, fill: "#fff8e1"}
  
  gaussian: {
    label: "Gaussian Processes\n(Vasicek, Ho-Lee)"
    style: {fill: "#e1f5fe"}
  }
  
  square_root: {
    label: "Square-Root Process\n(CIR Model)"
    style: {fill: "#e8f5e8"}
  }
  
  log_normal: {
    label: "Log-Normal Process\n(BDT, LMM)"
    style: {fill: "#f3e5f5"}
  }
  
  gaussian -> square_root
  gaussian -> log_normal
}

models -> characteristics: {label: "Characteristics"}
```

# 14.1 Introduction

In this chapter, we review the most popular and important models for the term structure of interest rates and their derivatives. We begin with the classical Vasicek and Cox-Ingersoll models which are known as "equilibrium" or "factor-based" models. These models formulate the fundamental risk factors (via stochastic processes) that drive the term structure (of zero coupon bonds). These models have closed-form solutions to basic interest rate derivative prices such as options and futures.

Then, we review the so-called "no-arbitrage" models. These models take the current market term structure as given and build a lattice (or Monte Carlo simulations) that is consistent with the market information. We begin with the simplest Ho-Lee model. Then we introduce the Heath-Jarrow-Morton family of models. Finally, we present the most recent shifted LIBOR market model by Chen, Hsieh, and Huang. This model calibrates to the whole ATM swaption surface.

# 14.2 Vasicek and CIR Models

The Vasicek model assumes a Gaussian, mean-reverting (Ornstein-Uhlenbeck) process for the instantaneous short rate:

$$
\\begin{align}
dr &= \\alpha(\\mu - r) dt + \\sigma dW \\\\&= \\alpha(\\hat{\\mu} - r) dt + \\sigma d\\hat{W} \\tag{14.1}
\\end{align}
$$ where, as shown in the previous chapter that $\\hat{\\mu} = \\mu - \\frac{\\sigma\\lambda}{\\alpha}$


The Vasicek model for the discount factor (zero coupon bond price):

$$
\\begin{align}
P(t, T) &= \\hat{\\mathbb{E}}_t\\left[\\exp\\left(-\\int_t^T r(s) ds\\right)\\right] \\tag{14.2} \\\\
&= e^{-r(t)F(t,T) - G(t,T)}
\\end{align}
$$ where


$$
F (t, T) = \\frac{1 - e^{- \\alpha (T - t)}}{\\alpha}
$$

$$
G (t, T) = \\left(\\mu - \\frac{\\sigma^{2}}{2 \\alpha^{2}} - \\frac{\\sigma \\lambda}{\\alpha}\\right) (T - t - F (t, T)) + \\frac{\\sigma^{2} F (t , T)^{2}}{4 \\alpha}
$$

The CIR model is a mean-reverting squared-root process:

$$
\\begin{align}
dr &= \\alpha(\\mu - r) dt + \\sigma\\sqrt{r} dW \\tag{14.3} \\\\
&= \\hat{\\alpha}(\\hat{\\mu} - r) dt + \\sigma\\sqrt{r} d\\hat{W}
\\end{align}
$$ where $\\hat{\\alpha} = \\alpha + \\lambda$ and $\\hat{\\mu} = \\frac{\\alpha\\mu}{\\alpha + \\lambda}$ are the risk-neutral parameters.


The zero coupon bond formula is:

$$
\\begin{align}
P(t, T) &= \\hat{\\mathbb{E}}_t\\left[\\exp\\left(-\\int_t^T r(s) ds\\right)\\right] \\tag{14.4} \\\\
&= A(t,T) e^{-r(t)B(t,T)}
\\end{align}
$$ where


$$
\\begin{align}
A(t, T) &= \\left[\\frac{2\\gamma e^{(\\alpha+\\lambda+\\gamma)(T-t)/2}}{(\\alpha+\\lambda+\\gamma)(e^{\\gamma(T-t)}-1) + 2\\gamma}\\right]^{2\\alpha\\mu/\\sigma^2} \\\\
B(t, T) &= \\frac{2(e^{\\gamma(T-t)}-1)}{(\\alpha+\\lambda+\\gamma)(e^{\\gamma(T-t)}-1) + 2\\gamma} \\\\
\\gamma &= \\sqrt{(\\alpha+\\lambda)^2 + 2\\sigma^2}
\\end{align}
$$

# 14.3 Ho-Lee Model

The Ho-Lee model is a "forward rate" model and hence belongs to the HJM family (although the Ho-Lee model was published 6 years prior to the HJM model). However, the original version of the Ho-Lee model is a "forward price" model. It was Phil Dybvig who then extended the Ho-Lee model to continuous time, forward rate model in 1989.

Define the zero-coupon bond price as  $P(i, n, j)$  where  $i$  is current time,  $n$  is maturity time, and  $j$  represents state of economy. The Ho-Lee model is a simple formula as follows:

$$
\\begin{cases}
P(i, i+k, j) = \\frac{P(i-1, i+k, j)}{P(i-1, i, j)} d(k) \\\\
P(i, i+k, j+1) = \\frac{P(i-1, i+k, j)}{P(i-1, i, j)} u(k)
\\end{cases} \\tag{14.5}
$$ where


$$ u(k) = \\frac{1}{p + (1-p)\\delta^k} \\tag{14.6} $$

$$ d(k) = \\frac{\\delta^k}{p + (1-p)\\delta^k} $$ and  $p$  is the risk-neutral probability and  $\\delta$  is the "volatility" parameter (that is,  $\\delta$  itself is not volatility but it is directly related to volatility.) As we can see, when  $\\delta = 1$ , then  $u(k) = d(k)$  for all  $k$ . Then there is no volatility. To maintain  $u(k) > d(k) > 0$ , it must be that  $0 < \\delta < 1$ . As  $\\delta$  becomes small the volatility becomes large.


As a demonstration, we create a hypothetical four-year yield curve with annual time intervals as follows. The yields are observable in the market and we convert them into discount factors (present value of 1).

| **Yield Curve** | | |
|---|---|---|
| time to maturity | discount factor | yield to maturity |
| 1 | 0.9524 | 0.049979 |
| 2 | 0.8900 | 0.059998 |
| 3 | 0.8278 | 0.065021 |
| 4 | 0.7686 | 0.068009 |

Given the current term structure of discount factors, we then can compute the forward prices,

$$
\\begin{align}
0.934481 &= \\frac{0.8900}{0.9524} \\\\
0.869173 &= \\frac{0.8278}{0.9524} \\\\
0.807014 &= \\frac{0.7686}{0.9524}
\\end{align}
$$

Note that forward rates are returns of forward prices. For example:

$$
\\begin{align}
f_{0,1,2} &= \\frac{1}{0.934481} - 1 = \\frac{(1 + 5.9998\\%)^2}{1 + 4.9979\\%} - 1 = 7.0112\\% \\\\
f_{0,1,3} &= \\sqrt{\\frac{1}{0.869173}} - 1 = \\sqrt{\\frac{(1 + 6.5021\\%)^3}{1 + 4.9979\\%}} - 1 = 7.2623\\% \\\\
f_{0,1,4} &= \\sqrt[3]{\\frac{1}{0.807014}} - 1 = \\sqrt[3]{\\frac{(1 + 6.8009\\%)^3}{1 + 4.9979\\%}} - 1 = 7.4088\\%
\\end{align}
$$

Now we shall introduce the Ho-Lee binomial model. Similar to the equity binomial model (i.e. Cox-Ross-Rubinstein, or the CRR model) where the stock price goes up and down with $u = e^{\\sigma \\sqrt{\\Delta t}}$ and $d = 1/u$ where $\\sigma$ is the volatility of the stock returns, yield curve here goes up or down with equation (14.6).

Different from the equity binomial model, equation (14.6) contains two parameters: $p$ and $\\delta$, representing up risk-neutral probability and "volatility" respectively.  $\\delta$  is not actual volatility but, as we can see from equation (14.6) that it plays the role of volatility. The higher is  $\\delta$ , the closer is  $u(k)$  to  $d(k)$ , and hence the smaller is the volatility. In an extreme case where  $\\delta = 1$ ,  $u(k) = d(k) = 1$ , there is no volatility and uncertainty disappears. Reversely, the lower is  $\\delta$ , the more far apart is  $u(k)$  from  $d(k)$  and the volatility is high. The volatility reaches the highest as  $\\delta \\to 0$ .

In our example, we set  $p = 0.6$  and  $\\delta = 0.9$  and we have:

| **Ho-Lee Pert Funcs** | | |
|---|---|---|
| k | d(k) | u(k) |
| 0 | 1.000000 | 1.000000 |
| 1 | 0.937500 | 1.041667 |
| 2 | 0.876623 | 1.082251 |
| 3 | 0.817631 | 1.121579 |
| 4 | 0.760749 | 1.159501 |

In the HL model, the next period's up term structure and down term structure are computed by applying the proper  $\\mathbf{u}$  and  $\\mathrm{d}$  on the forward price. For convenience, we introduce the following labeling system.  $P(i, n, j)$  represents the discount factor value at current time  $i$ , for maturity time  $n$ , and in state  $j$ . For convenience, we also label the lowest state 0 and 1, 2, ..., as we go up. So for today, we have four discount factors  $P(0, 1, 0), P(0, 2, 0), P(0, 3, 0), P(0, 4, 0)$  which are 0.9524, 0.8900, 0.8278, and 0.7686 respectively. For next year, we apply the forward prices computed above and multiply them by corresponding u's and d's. For example,


$$
0.9734 = \\underbrace{P(1, 2, 1)}_{\\text{up}} = \\frac{P (0 , 2 , 0)}{P (0 , 1 , 0)} u (1) = \\frac{0 . 8 9 0 0}{0 . 9 5 2 4} \\times 1. 0 4 1 6 6 7
$$

$$
0.8761 = \\underbrace{P(1, 2, 0)}_{\\text{down}} = \\frac{P (0 , 2 , 0)}{P (0 , 1 , 0)} d (1) = \\frac{0 . 8 9 0 0}{0 . 9 5 2 4} \\times 0. 9 3 7 5
$$

$$
0.9407 = \\underbrace{P(1, 3, 1)}_{\\text{up}} = \\frac{P (0 , 3 , 0)}{P (0 , 1 , 0)} u (2) = \\frac{0 . 8 2 7 8}{0 . 9 5 2 4} \\times 1. 0 8 2 2 5 1
$$

$$
0.7619 = \\underbrace{P(1, 3, 0)}_{\\text{down}} = \\frac{P (0 , 3 , 0)}{P (0 , 1 , 0)} d (2) = \\frac{0 . 8 2 7 8}{0 . 9 5 2 4} \\times 0. 8 7 6 6 2 3
$$

$$
0.9051 = \\underbrace{P(1, 4, 1)}_{\\text{up}} = \\frac{P (0 , 4 , 0)}{P (0 , 1 , 0)} u (3) = \\frac{0 . 8 2 7 8}{0 . 9 5 2 4} \\times 1. 1 2 1 5 7 9
$$

$$
0.6598 = \\underbrace{P(1, 4, 0)}_{\\text{down}} = \\frac{P (0 , 4 , 0)}{P (0 , 1 , 0)} d (3) = \\frac{0 . 7 6 8 6}{0 . 9 5 2 4} \\times 0. 8 1 7 6 3 1
$$

Put in the table,

| **Year = 1** | | | | | | |
|---|---|---|---|---|---|
| current time | maturity time | state 0 | state 1 | state 2 | state 3 | state 4 |
| 1 | 1 | 1 | 1 | | | |
| | 2 | 0.8761 | 0.9734 | | | |
| | 3 | 0.7619 | 0.9407 | | | |
| | 4 | 0.6598 | 0.9051 | | | |

Now we have two term structures of the next year (time 1). The task continues to time 2. For each term structure in time 1, we shall compute two term structures in time 2 (up and down) by applying the same principle. The up and down term structures of the left are:

$$
0. 9 0 6 0 = P (2, 3, 1) = \\frac{P (1 , 3 , 0)}{P (1 , 2 , 0)} u (1) = \\frac{0 . 7 6 1 9}{0 . 8 7 6 1} \\times 1. 0 4 1 6 6 7
$$

$$
0. 8 1 5 4 = P (2, 3, 0) = \\frac{P (1 , 3 , 0)}{P (1 , 2 , 0)} d (1) = \\frac{0 . 7 6 1 9}{0 . 8 7 6 1} \\times 0. 9 3 7 5
$$

$$
0. 8 1 5 1 = P (2, 4, 1) = \\frac{P (1 , 4 , 0)}{P (1 , 2 , 0)} u (2) = \\frac{0 . 6 5 9 8}{0 . 8 7 6 1} \\times 1. 0 8 2 2 5 1
$$

$$
0. 6 6 0 3 = P (2, 4, 0) = \\frac{P (1 , 4 , 0)}{P (1 , 2 , 0)} d (2) = \\frac{0 . 6 5 9 8}{0 . 8 7 6 1} \\times 0. 8 7 6 6 2 3
$$ and of the right are:


$$
1. 0 0 6 6 = P (2, 3, 2) = \\frac{P (1 , 3 , 1)}{P (1 , 2 , 1)} u (1) = \\frac{0 . 9 4 0 7}{0 . 9 7 3 4} \\times 1. 0 4 1 6 6 7
$$

$$
0. 9 0 6 0 = P (2, 3, 1) = \\frac{P (1 , 3 , 1)}{P (1 , 2 , 1)} d (1) = \\frac{0 . 9 4 0 7}{0 . 9 7 3 4} \\times 0. 9 3 7 5
$$

$$
1. 0 0 6 3 = P (2, 4, 2) = \\frac{P (1 , 4 , 1)}{P (1 , 2 , 1)} u (2) = \\frac{0 . 9 0 5 1}{0 . 9 7 3 4} \\times 1. 0 8 2 2 5 1
$$

$$
0. 8 1 5 1 = P (2, 4, 1) = \\frac{P (1 , 4 , 1)}{P (1 , 2 , 1)} d (2) = \\frac{0 . 9 0 5 1}{0 . 9 7 3 4} \\times 0. 8 7 6 6 2 3
$$ and put in table,


<table><tr><td colspan="7">Year = 2</td></tr><tr><td>current time</td><td>maturity time</td><td>state 0</td><td>state 1</td><td>state 2</td><td>state 3</td><td>state 4</td></tr><tr><td>2</td><td>2</td><td>1</td><td>1</td><td>1</td><td></td><td></td></tr><tr><td></td><td>3</td><td>0.8154</td><td>0.9060</td><td>1.0066</td><td></td><td></td></tr><tr><td></td><td>4</td><td>0.6603</td><td>0.8151</td><td>1.0063</td><td></td><td></td></tr></table>

It can be seen that from the left (applying  $u(k)$ ) we arrive at  $P(2,3,1) = 0.9060$  which is the same from the right (applying  $d(k)$ ). This also applies to  $P(2,4,1) = 0.8151$ . This is known as the re-combination assumption. Note that this assumption must be maintained or the binomial model will grow exponentially.

While simple, in this example we see something peculiar about the HL model here. Note that in the last column (state 2) the bond prices are both greater than 1 (1.0066 and 1.0063). This is peculiar because these are zero-coupon bonds whose prices must be strictly less than 1. Prices greater than 1 implies that interest rates are negative. In other words, for the one-year bond (maturity time 3), we must pay

\\$1.0066 now and receive\\$ 1 in a year. And for the two-year bond, we must pay  \\$1.0063 and receive the principal\\$ 1 back in two years.

In an arbitrage-free world, this is impossible. One would rather keep cash than buying zero-coupon bonds and these bonds will find no buyers. Hence such prices are not realistic and do not exist in the real world. Unfortunately this is the assumption adopted by the HL model. The HL model adopt normally distributed interest rates, just like the Vasicek model and interest rates can reach negative values.

In the next section, we discuss the Black-Derman-Toy model where interest rates are log-normally distributed. Then the problem of negative interest rates is prevented.

Continuing this process going forward, we can derive the complete the 4-year table for the Ho-Lee model:

| **Complete Ho-Lee Model** | | | | | | |
|---|---|---|---|---|---|
| current time | maturity time | state 0 | state 1 | state 2 | state 3 | state 4 |
| 0 | 0 | 1 | | | | |
| | 1 | 0.9524 | | | | |
| | 2 | 0.89 | | | | |
| | 3 | 0.8278 | | | | |
| | 4 | 0.7686 | | | | |
| 1 | 1 | 1 | 1 | | | |
| | 2 | 0.8761 | 0.9734 | | | |
| | 3 | 0.7619 | 0.9407 | | | |
| | 4 | 0.6598 | 0.9051 | | | |
| 2 | 2 | 1 | 1 | 1 | | |
| | 3 | 0.8154 | 0.906 | 1.0066 | | |
| | 4 | 0.6603 | 0.8151 | 1.0063 | | |
| 3 | 3 | 1 | 1 | 1 | 1 | |
| | 4 | 0.7592 | 0.8435 | 0.9372 | 1.0414 | |
| 4 | 4 | 1 | 1 | 1 | 1 | 1 |

This concludes the discrete example. Again, the problem of negative interest rates becomes more severe as the model goes to year 3. The zero-coupon bond price is 1.0414.

Once the model of the interest rates is completed, we can then evaluate derivatives easily. Options, futures, swaps, and other complex interest rate derivatives can be evaluated with the model. Readers who are familiar with the CRR binomial model should find no problem applying the HL model to various derivatives.

# 14.4 Black-Derman-Toy Model

The material in this section is taken from Analysis of Fixed Income (where it has the most updated version). Like the Ho-Lee model, the Black-Derman-Toy (BDT) model is a binomial model.

# 14.4.1 Tree (Log Normal)

Standard binomial model in equity looks as follows (where a chosen interest rate  $r$ , usually the instantaneous rate, is treated like a "stock"): where  $r_0$  is the current (time 0) interest rate and  $r_{ij}$  represents the interest rate at time period  $i$  and state  $j$ , and

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/abc31c753a5e0b47c2e8a9715ae25904801f4f84062cbda7dddd9a44c13a3837.jpg)
Figure 14.1: Two-period BDT Model


$$
\\begin{array}{l} u = e^{\\sigma \\sqrt{\\Delta t}} \\\\ d = e^{- \\sigma \\sqrt{\\Delta t}} \\\\ \\end{array}
$$

# 14.4.2 Modified Tree (since  $ud = 1$ )

In order to fit to the current yield curve, the standard binomial tree needs to be modified. The key change is to allow for the flexibility in each period in setting a "mean rate",  $\\bar{r}_i$ . In the standard binomial tree, the up and down are perturbations around  $r_0$ . In the modified binomial model that can fit to the current yield curve,  $r_0$  is replaced by a series of other values:  $\\bar{r}_1, \\bar{r}_2, \\dots, \\bar{r}_n$  in various periods, as Figure 14.2 shows.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/61c3ffd7c993435e83a2ff622b9cbc9ac0e5ebdfbfe83b9de9578715c0bb1360.jpg)
Figure 14.2: BDT Tree

Hence, for every period  $i$ , there are always two unknowns  $-\\bar{r}_i$  and  $u_i$ . Recall the standard binomial model where there are two equations in each time period – mean and variance. Hence, with two equations and two unknowns, there is a unique solution to  $\\bar{r}_i$  and  $u_i$ . Then all interest rates at period  $i$ , i.e.  $r_{ij}$  where  $j$  represents the state, can be obtained, as shown in the Figure 14.2.

The following example is taken from the original paper published in 1989 by Black, Derman, and Toy in Financial Analyst Journal. The hyperthetical market inputs are yield and volatility (yield vol) curves as follows:

<table><tr><td colspan="3">Yield Curve</td></tr><tr><td>maturity</td><td>yield</td><td>volatility</td></tr><tr><td>1</td><td>10\\%</td><td>20\\%</td></tr><tr><td>2</td><td>11</td><td>19</td></tr><tr><td>3</td><td>12</td><td>18</td></tr><tr><td>4</td><td>12.5</td><td>17</td></tr><tr><td>5</td><td>13</td><td>16</td></tr></table>

Note that yield vols are annualized. The yield curve implies the following discount factors:

$$
\\begin{array}{l} D (0, 1) = \\frac{1}{1 . 1} = 0. 9 0 9 1 \\\\ D (0, 2) = \\frac{1}{1 . 1 1^{2}} = 0. 8 1 1 6 \\\\ D (0, 3) = \\frac{1}{1 . 1 2^{3}} = 0. 7 1 1 8 \\\\ D (0, 4) = \\frac{1}{1 . 1 2 5^{4}} = 0. 6 2 4 3 \\\\ D (0, 5) = \\frac{1}{1 . 1 3^{5}} = 0. 5 4 2 8 \\\\ \\end{array}
$$

Figure 14.3 depicts the lattice structure for the model.  $D(0,1)$  is a one-year debt. Hence at time 1, it expires and pays the face value ( \\$1). Today, its market value should be the present value which is\\$ 1 discounted at the one-year rate, which is 10\\% as given in the table. Similarly, the two-year bond will pay 1 at time 2 and we know its market value today is the present value at 11\\%. Hence, we need to solve for the two prices at time 1.

$$
D (0, 1) = 0. 9 0 9 1 \\longrightarrow D (1, 1) = 1
$$

$$
D (0, 2) = 0. 8 1 1 6 \\begin{array}{c c c} & D (1, 2, 1) = ? & D (2, 2, 1) = 1 \\\\ & D (1, 2, 0) = ? & D (2, 2, 0) = 1 \\end{array}
$$

Figure 14.3: Bond Price Lattice

Assume probabilities to be  $1/2$  and  $1/2$ . Then it must be the case that:

$$
D (0, 2) = \\frac{1}{2} [ D (1, 2, 1) + D (1, 2, 0) ] D (0, 1) \\tag {14.7}
$$ that is


$$
0. 8 1 1 6 = \\frac{1}{2} \\left(\\frac{1}{1 + r_{1 1}} + \\frac{1}{1 + r_{1 0}}\\right) \\times 0. 9 0 9 1
$$

Two unknowns cannot be solved with one equation. The other equation we need comes from the volatility. In the standard binomial model, we get:

$$
\\sigma = \\frac{\\ln \\frac{u}{d}}{2} = \\frac{\\ln \\frac{r_{1 1}}{r_{1 0}}}{2} = 0. 1 9 \\tag {14.8}
$$

Hence we solve for  $r_{11}$  and  $r_{10}$  as  $14.32\\%$  and  $9.79\\%$  respectively. Also,  $\\bar{r} = 11.84\\%$  and  $u = 1.209$  (or  $d = 1 / u = 0.827$ ).

The lattice is now extended to include one more period, as demonstrated as follows:

$$
D (0, 1) = 0. 9 0 9 1 \\xrightarrow {r_{0} = 10 \\%} D (1, 1) = 1
$$

$$
\\begin{array}{c} D (1, 2, 1) = . 8 7 4 7 \\xrightarrow {r_{1 1} = 1 4 . 3 2 \\%} D (2, 2, 1) = 1 \\\\ D (0, 2) = 0. 8 1 1 6 \\\\ \\hline \\end{array}
$$

$$
D (0, 3) = 0. 7 1 1 8 \\begin{array}{c c} D (1, 3, 1) = ? & D (2, 3, 2) =? \\xrightarrow {r_{2 2} = \\overline {{r}} u^{2}} D (3, 3, 2) = 1 \\\\ D (1, 3, 0) = ? & D (2, 3, 1) =? \\xrightarrow {r_{2 1} = \\overline {{r}}} D (3, 3, 1) = 1 \\\\ & D (2, 3, 0) =? \\xrightarrow {r_{2 0} = \\overline {{r}} \\frac{1}{u^{2}}} D (3, 3, 0) = 1 \\end{array}
$$

Figure 14.4: Bond Price Lattice

To solve for the third period, we need the following two equations:

$$
D (0, 3) = \\frac{1}{2} [ D (1, 3, 1) + D (1, 3, 0) ] D (0, 1) = 0. 7 1 1 8 \\tag {14.9}
$$ and


$$
\\sigma = \\frac{1}{2} \\ln \\left[ \\frac{\\sqrt{\\frac{1}{D (1 , 3 , 1)}} - 1}{\\sqrt{\\frac{1}{D (1 , 3 , 0)}} - 1} \\right] = 0. 1 8 \\tag {14.10}
$$ where


$$
D (1, 3, 1) = 1 /_{2} \\{D (2, 3, 2) + D (2, 3, 1) \\} D (1, 2, 1)
$$

$$
D (1, 3, 0) = 1 /_{2} \\{D (2, 3, 1) + D (2, 3, 0) \\} D (1, 2, 0)
$$ and in turn,


$$
D (2, 3, 2) = \\frac{1}{1 + \\bar {r} u^{2}}
$$

$$
D (2, 3, 1) = \\frac{1}{1 + \\bar {r} u}
$$

$$
D (2, 3, 0) = \\frac{1}{1 + \\bar {r} / u^{2}}
$$

Again, two equations and two unknowns solve for  $\\bar{r}$  and  $u$  to be  $13.77\\%$  and  $1.1877\\%$  respectively. As a result, the short rates in period 2 are  $r_{22} = 19.42\\%$ ,  $r_{21} = 13.77\\%$ , and  $r_{20} = 9.76\\%$ . Continuing this process, we can arrive at all the short rates as follows:

$$ r_{33} = 21.79 \\%; r_{32} = 16.06 \\%; r_{31} = 11.83 \\%; r_{30} = 8.72 \\%
$$

$$ r_{44} = 25.52 \\%; r_{43} = 19.48 \\%; r_{42} = 14.86 \\%; r_{41} = 11.34 \\%; r_{40} = 8.65 \\%
$$

# 14.4.3 The Continuous Time Limit

As in the H-Lee model, we can work out the continuous time limit of the Black-Derman-Toy model as follows:

$$ d \\ln r = \\left(\\theta (t) + \\frac{\\sigma^{\prime} (t)}{\\sigma (t)} \\ln r\\right) d t + \\sigma (t) d W (t) \\tag {14.11}
$$ where  $\\theta(t)$  is a time-dependent function (as in the Ho-Lee model) that is used to fit the yield curve. Furthermore, unlike the Ho-Lee model, the volatility function  $\\sigma(t)$  is also time dependent, which is of course to fit the volatility curve.


# 14.4.4 Black-Karasinski Model

The Black-Karasinski (BK) model is an extension to the BDT model. The BK model is to include mean reversion in the drift term:

$$ d \\ln r = \\kappa (t) (\\theta (t) - \\ln r) d t + \\sigma (t) d W (t) \\tag {14.12}
$$

This can be readily compared to the Hull-White model (shown separately in the next subsection) that is extensions of the Vasicek (normal) and the CIR (square-root) models.

# 14.5 Hull-White Model

The Hull-White model is to make fixed parameters in the Vasicek (first equation) and the CIR model (second equation) time dependent.

$$ d r = \\kappa (t) (\\theta (t) - r) d t + \\sigma (t) d W (t)
$$

$$ d r = \\kappa (t) (\\theta (t) - r) d t + \\sigma (t) \\sqrt{r} d W (t) \\tag {14.13}
$$

From the Hull-White model and the BK model, we can see that by making the parameters time dependent functions, we can then fit the yield curve (by using the reverting level  $\\theta(t)$ ) and the volatility curve (by using either  $\\kappa(t)$  or  $\\sigma(t)$  or both - note that both are important contributors to the volatility in that fast/slow mean reversion results in low/high volatility.)

# 14.6 Heath-Jarrow-Morton Model

The Heath-Jarrow-Morton (HJM) model is not a model but a class of models. The major contribution of the HJM model is its discovery of, now known as, "drift adjustment". Basically, Heath, Jarrow and Morton discovered that the drift term of the forward rate process cannot be arbitrarily determined but a function of the volatility curve. This is drastically different from the short rate process (such as CIR and Vasicek) where the short rate drift can be freely determined. Financial industry finds this to be extremely convenient and it needs a model to be able to calibrate to both yield and volatility curves. The HJM model provides such convenience, that it can fit both curves easily simultaneously.

The HJM model is a forward rate model so the Ho-Lee model is its close cousin. In fact, the Ho-Lee model is a special case of the HJM model by setting the volatility as a constant. They both take the forward curve as given and adopt Gaussian dynamics (although in theory the HJM model can adopt other forms of dynamics but the Gaussian dynamics remain as the most popular choice.)

There is a variation of the HJM model, developed by Miltersen, Sandmann, and Sondermann (1997) and Brace, Gatarek, and Musiela (1997), known as the LIBOR market model (LMM) that builds dynamics on discrete forward rates as opposed to continuous time forward rates. In doing so, they can avoid the Gaussian dynamics and introduce the log normal dynamics that do not permit negative interest rates. Furthermore, by adopting the log normal dynamics, many interest rate options can be priced by the Black-Scholes formula. Unfortunately, the drift adjustment for the discrete forward rates are much more complex than the drift adjustment of the HJM model. European banks tend to use the LMM yet the American banks tend to use the HJM model.

The HJM model is based upon the forward yield curve, as opposed to the spot yield curve. We write the spot (instantaneous) rate process generically as follows:

$$ d r (t) = \\theta (r, t) d t + \\sigma (r, t) d \\hat {W} \\tag {14.14}
$$ where  $\\theta(r, t)$  and  $\\sigma(r, t)$  are drift and diffusion of the process respectively and they can be functions of both  $r$  and  $t$ .  $P(t, T)$  is the price of a zero-coupon bond (or discount factor) that pays \\$1 at time  $T$ . Then, by Ito (subscripts represent partial derivatives),


$$
\\begin{align}
d P (t, T) &= P_{r} (t, T) d r +^{1} /_{2} P_{r r} (t, T) (d r)^{2} + P_{t} (t, T) \\\\
&= r (t) P (t, T) d t + P_{r} (t, T) \\sigma (r, t) d \\hat {W} \\tag {14.15} \\\\
&= r (t) P (t, T) d t + v (t, T) P (t, T) d \\hat {W} \\\\
\\end{align}
$$ where  $v(t,T) = \\sigma (r,t)P_r(t,T) / P(t,T)$ . Or equivalently,


$$
\\begin{align}
d \\ln P (t, T) &= \\frac{1}{P (t , T)} d P (t, T) - \\frac{1}{2 P (t , T)^{2}} (d P (t, T))^{2} \\\\
&= \\frac{1}{P (t , T)} \\left(P_{r} (t, T) d r + \\frac{1}{2} P_{r r} (t, T) (d r)^{2} + P_{t} (t, T) d t\\right) \\\\
&\\phantom{=} - \\frac{1}{2 P (t , T)^{2}} P_{r}^{2} (t, T) (d r)^{2} \\tag {14.16} \\\\
&= r d t + \\frac{P_{r} (t , T)}{P (t , T)} \\sigma (r, t) d \\hat {W} - \\frac{1}{2} \\left(\\frac{P_{r} (t , T)}{P (t , T)} \\sigma (r, t)\\right)^{2} d t \\\\
&= \\left(r - \\frac{v (t , T)^{2}}{2}\\right) d t + v (t, T) d \\hat {W} \\\\
\\end{align}
$$

$$
\\begin{align}
d f (t, T) &= v (t, T) \\frac{\\partial v (t , T)}{\\partial T} d t - \\frac{\\partial v (t , T)}{\\partial T} d \\hat {W} \\tag {14.21} \\\\
&= - \\frac{\\partial v (t , T)}{\\partial T} d \\tilde {W}^{(T)} \\\\
\\end{align}
$$

Note that equation (14.21) describes the evolution of the entire forward curve (i.e. for all  $T$ ) and each forward rate is a martingale under its corresponding forward measure  $\\tilde{W}^{(T)}$ .

# 14.6.1 Example 1 - Ho-Lee Model

The Ho-Lee model has the following continuous time short rate process (under the risk-neutral measure) as follows (same as  $(\\ref{eq:1})$ ):

$$ d r = \\theta (t) d t + \\sigma d \\hat {W} \\tag {14.22}
$$

Note that from  $(\\ref{eq:1})$  we can write

$$
- \\frac{\\partial}{\\partial T} \\ln P (t, T) = \\int_{t}^{T} \\theta (u) d u + r (t) - \\frac{1}{2} \\sigma^{2} (T - t)^{2} \\tag {14.23}
$$

As a result,

$$
\\begin{align}
d f (t, T) &= d \\left[ - \\frac{\\partial}{\\partial T} \\ln P (t, T) \\right] \\\\
&= - \\frac{\\partial}{\\partial T} d \\ln P (t, T) \\tag {14.24} \\\\
&= - \\theta (t) d t + d r (t) + \\sigma^{2} (T - t) d t \\\\
&= \\sigma d \\hat {W} + \\sigma^{2} (T - t) d t \\\\
\\end{align}
$$

This satisfies the HJM drift restriction that  $\\sigma \\int_t^T\\sigma du = \\sigma^2 (T - t)$

Another interesting result for the Ho-Lee model using the HJM framework is that the short rate process can be expressed in a form of forward curve without the drift term  $\\theta(t)$ . Combining (14.18) and (14.24) with  $(\\ref{eq:14.24})$ , we obtain:

$$ r (T) = f (t, T) + \\frac{1}{2} \\sigma^{2} (T - t)^{2} + \\int_{t}^{T} \\sigma d \\hat {W} (u) \\tag {14.25}
$$

This result clearly demonstrates that the Ho-Lee model will generate exploding short rates. That is  $\\hat{\\mathbb{E}}[r(T)] \\to \\infty$  as  $T \\to \\infty$ .

# 14.6.2 Example 2 - Vasicek Model

Note that  $-\\ln P(t,T) = rF(t,T) + G(t,T)$  and  $\\frac{\\partial F(t,T)}{\\partial t} = \\alpha F(t,T) - 1$ . As a result:

$$
\\begin{align}
- d \\ln P (t, T) &= F (t, T) d r + r \\frac{\\partial F (t , T)}{\\partial t} d t + \\frac{\\partial G (t , T)}{\\partial t} d t \\\\
&= F (t, T) \\left[ \\alpha \\left(\\mu - \\frac{\\sigma \\lambda}{\\alpha} - r\\right) d t + \\sigma d \\hat {W} \\right] + r (\\alpha F (t, T) - 1) d t \\\\
& + \\left(\\mu - \\frac{\\sigma^{2}}{2 \\sigma^{2}} - \\frac{\\sigma \\lambda}{\\alpha}\\right) (- \\alpha F (t, T)) d t + \\frac{\\sigma^{2}}{2 \\alpha} F (t, T) (\\alpha F (t, T) - 1) d t \\tag {14.26} \\\\
&= F (t, T) \\sigma d \\hat {W} - r d t + \\frac{1}{2} (F (t, T) \\sigma)^{2} d t \\\\
\\end{align}
$$ Take derivative with respect to the maturity time  $T$  yields the forward rate process as follows:

$$
\\begin{align}
- \\frac{\\partial}{\\partial T} d \\ln P (t, T) = d f (t, T) \\\\
&= \\frac{\\partial F (t , T)}{\\partial T} \\sigma d \\hat {W} + F (t, T) \\frac{\\partial F (t , T)}{\\partial T} \\sigma^{2} d t \\tag {14.27} \\\\
&= e^{- \\alpha (T - t)} \\sigma d \\hat {W} + e^{- \\alpha (T - t)} \\left(\\frac{1 - e^{- \\alpha (T - t)}}{\\alpha}\\right) \\sigma^{2} d t \\\\
\\end{align}
$$ which verifies the HJM drift restriction result. We shall note that the reversion level,  $\\mu$ , disappears from the equation! It is interesting to note that the market price of risk,  $\\lambda$ , also disappears from the equation.


Previously, we argue that continuous forward rates are martingales under the forward measure. It is shown in the chapter that the change of measure required from the risk-neutral measure to the forward measure under the Vasicek model is:

$$
\\begin{align}
d \\tilde {W}^{(T)} &= d \\hat {W} - \\frac{\\partial P (t , T) / \\partial r}{P (t , T)} \\sigma d t \\tag {14.28} \\\\
&= d \\hat {W} + F (t, T) \\sigma d t \\\\
\\end{align}
$$ and as a result the above equation becomes:


$$ d f (t, T) = e^{- \\alpha (T - t)} \\sigma d \\tilde {W}^{(T)} \\tag {14.29}
$$ which is a martingale. We also note that the volatility term is time-decaying, which does not cause exploding short rates. To see that:


$$
\\begin{align}
r (T) &= e^{- \\alpha (T - t)} \\left(r (t) + \\int_{t}^{T} e^{\\alpha (s - t)} \\alpha \\mu d s + \\int_{t}^{T} e^{\\alpha (s - t)} \\sigma d \\hat {W} (s)\\right) \\\\
&= r (t) e^{- \\alpha (T - t)} + \\mu \\left(1 - e^{- \\alpha (T - t)}\\right) + \\sigma e^{- \\alpha (T - t)} \\int_{t}^{T} e^{\\alpha (s - t)} d \\hat {W} (s) \\tag {14.30} \\\\
&= r (t) \\frac{\\partial F (t , T)}{\\partial T} + \\alpha \\mu F (t, T) + \\sigma e^{- \\alpha (T - t)} \\int_{t}^{T} e^{\\alpha (s - t)} d \\hat {W} (s) \\\\
\\end{align}
$$

From equation  $(\\ref{eq:1})$  , we can write:

$$
\\begin{align}
- \\ln P (t, T) &= r F (t, T) + G (t, T) \\\\
f (t, T) &= \\frac{\\partial}{\\partial T} (- \\ln P (t, T)) \\\\
&= r \\frac{\\partial F (t , T)}{\\partial T} + \\frac{\\partial G (t , T)}{\\partial T} \\\\
&= r \\frac{\\partial F (t , T)}{\\partial T} + \\left(\\mu - \\frac{\\sigma^{2}}{2 \\alpha^{2}}\\right) \\left(1 - \\frac{\\partial F (t , T)}{\\partial T}\\right) + \\frac{\\sigma^{2}}{2 \\alpha} F (t, T) \\frac{\\partial F (t , T)}{\\partial T} \\tag {14.31} \\\\
&= r \\frac{\\partial F (t , T)}{\\partial T} + \\mu \\alpha F (t, T) - \\frac{\\sigma^{2}}{2 \\alpha^{2}} F (t, T) + \\frac{\\sigma^{2}}{2 \\alpha} F (t, T) \\frac{\\partial F (t , T)}{\\partial T} \\\\
\\end{align}
$$

Combining equations (14.30) and (14.31), we can derive the following result:

$$
\\begin{align}
r (T) &= f (t, T) + \\frac{\\sigma^{2}}{2 \\alpha} F (t, T) - \\frac{\\sigma^{2}}{2 \\alpha} F (t, T) \\frac{\\partial F (t , T)}{\\partial T} + \\sigma e^{- \\alpha (T - t)} \\int_{t}^{T} e^{\\alpha (s - t)} d \\hat {W} (s) \\\\
&= f (t, T) + \\frac{\\sigma^{2}}{2 \\alpha} F (t, T) \\left(1 - \\frac{\\partial F (t , T)}{\\partial T}\\right) + \\sigma e^{- \\alpha (T - t)} \\int_{t}^{T} e^{\\alpha (s - t)} d \\hat {W} (s) \\\\
&= f (t, T) + \\frac{\\sigma^{2}}{2} F^{2} (t, T) + \\sigma e^{- \\alpha (T - t)} \\int_{t}^{T} e^{\\alpha (s - t)} d \\hat {W} (s) \\tag {14.32} \\\\
\\end{align}
$$

Note that the middle term is the same as the extra term under the forward measure for the short rate. Unlike the Ho-Lee model, the Vasicek model will not generate exploding short rates. As  $T \\to \\infty$ ,  $\\hat{\\mathbb{E}}[r(T)] = f(t,T) + \\frac{\\sigma^2}{2\\alpha^2}$ .

To build a lattice or a Monte-Carlo model for the Vasicek model (say for American option pricing), it is convenient to compute the variance of the last term of equation (14.32) as:

$$
\\begin{align}
\\operatorname{va r} \\left[ \\sigma e^{- \\alpha (T - t)} \\int_{t}^{T} e^{\\alpha (s - t)} d \\hat {W} (s) \\right] &= \\sigma^{2} e^{- 2 \\alpha (T - t)} \\int_{t}^{T} e^{2 \\alpha (s - t)} d s \\tag {14.33} \\\\
&= \\sigma^{2} \\frac{1 - e^{- 2 \\alpha (T - t)}}{2 \\alpha} \\\\
\\end{align}
$$ and hence (14.32) can be written as:


$$ r (T) = f (t, T) + \\frac{\\sigma^{2}}{2} F^{2} (t, T) + \\sigma \\sqrt{\\frac{1 - e^{- 2 \\alpha (T - t)}}{2 \\alpha}} z \\tag {14.34}
$$ where  $z$  is a standard Normal variable. In simulations, for any given future time  $T > t$ , we can simulate standard normal random variables and then linearly transform it to obtain the instantaneous short rate.


# 14.6.3 Example 3 - Cox-Ingersoll-Ross Model

Note that  $A(t,T)$  and  $B(t,T)$  satisfy the following ordinary differential equations:

$$
\\begin{align}
\\alpha B (t, T) + \\frac{1}{2} \\sigma^{2} B (t, T) - \\frac{\\partial B (t , T)}{\\partial t} - 1 &= 0 \\\\
\\partial A (t, T) \\quad 1 \\tag {14.35}
\\end{align}
$$

$$
\\frac{\\partial A (t , T)}{\\partial t} \\frac{1}{A (t , T)} - \\alpha \\mu B (t, T) = 0
$$

Recall the zero-coupon bond pricing model in Chapter ?? as  $-\\ln P(t,T) = rB(t,T) - \\ln A(t,T)$ . We can then easily take the derivative as follows:

$$
\\begin{align}
- d \\ln P (t, T) &= B (t, T) d r + r \\frac{\\partial B (t , T)}{\\partial t} d t - \\frac{\\partial A (t , T)}{\\partial t} \\frac{1}{A (t , T)} d t \\\\
&= B (t, T) \\left[ (\\alpha \\mu - (\\alpha + \\lambda) r) d t + \\sigma \\sqrt{r} d \\hat {W} \\right] (14.36) \\\\
&\\phantom{=} + r \\left((\\alpha + \\lambda) B (t, T) + \\frac{1}{2} \\sigma^{2} B^{2} (t, T) - 1\\right) d t - \\alpha \\mu B (t, T) d t (14.36) \\\\
&= - r d t + \\sigma \\sqrt{r} B (t, T) d \\hat {W} + \\frac{1}{2} \\sigma^{2} r B^{2} (t, T) d t \\\\
\\end{align}
$$

Taking the derivative with respect to the maturity time  $T$ , we obtain:

$$
\\begin{align}
- \\frac{\\partial}{\\partial T} d \\ln P (t, T) = d f (t, T) \\\\
&= \\sigma \\sqrt{r} \\frac{\\partial B (t , T)}{\\partial T} d \\hat {W} + \\sigma^{2} r B (t, T) \\frac{\\partial B (t , T)}{\\partial T} d t \\tag {14.37} \\\\
\\end{align}
$$

Note that, similar to the Vasicek model, the reverting level,  $\\mu$ , disappears from the equation. However, the market price of risk still remains. To rewrite the above equation under the forward measure, we note that the Girsanov theorem under the CIR model is:

$$
\\begin{align}
d \\tilde {W}^{(T)} &= d \\hat {W} - \\frac{\\partial P (t , T) / \\partial r}{P (t , T)} \\sigma \\sqrt{r} d t \\tag {14.38} \\\\
&= d \\hat {W} + B (t, T) \\sigma \\sqrt{r} d t \\\\
\\end{align}
$$

Substituting this change of measure back to the equation (14.37), we arrive at the following:

$$ d f (t, T) = \\sigma \\sqrt{r} \\frac{\\partial B (t , T)}{\\partial T} d \\tilde {W}^{(T)} \\tag {14.39}
$$ which is a martingale. This equation and equation (14.29) verify that continuous forward rates are martingales under the forward measure, as argued in Chapter ??


Given that forward measure is maturity dependent  $(T)$ , each forward rate (with maturity  $T$ ) is a martingale under its own measure. This is quite different from the risk-neutral measure that "one measure fits all".

# 14.7 LMM (LIBOR Market Model) and Shifted LMM

Besides the HJM model, another popular model that takes market prices as given is the LIBOR market model (LMM). The LMM can take European option prices (e.g. extracted from caps and floors or swaptions) directly as given, which makes it much easier to use than the HJM model. This advantage is a consequence of the LMM modeling discrete forward rates as opposed to continuous forward rates as in the HJM model.

The LIBOR Market Model (LMM) was first introduced by Miltersen, Sandmann, and Sondermann (1997) and Brace, Gatarek, and Musiela (1997). They argue that discrete forward rates should follow log normal distributions. In doing so, the European options extracted from caps and floors (or swaptions) can then be priced by the Black-Scholes formula.


However, due to its construction by nature, it is often compromised by an approximation in the drift adjustment known as "freezing the drift". While there has been no consensus, many believe that it is such an approximation that causes failures in the valuation of the interest rate contracts during the financial crisis in 2008. For example, Gerhold (2010) discusses the tail behavior of the LMM and Gasper and Pimental (2015) discuss how vulnerable this problem is during large yield curve changes, and document large failures of the model during the 2008 crisis. The introduction of "freezing" to the LMM is the result of the "reduced-form" design of the LMM which assumes separately each forward measure (terminal date) and hence an exogenous correlation must be given.

Following Chapter ?? and defining a discrete forward rate as:  $f(t, T_i, T_j)$  where  $t < T_i < T_j$ . This is a forward rate on a future LIBOR, denoted  $\\ell(T_i, T_j)$ . We also denote  $1 + \\text{LIBOR}$  as  $L(t, T) = 1 + \\ell(t, T)$  for any  $t < T$ . This will be used later. Later, we shall show that the forward rate is an expectation of the future LIBOR under the  $T_j$ -forward measure. Also, by definition,  $f(T_i, T_i, T_j) = \\ell(T_i, T_j)$ .

The LMM assumes that  $f(t, T_i, T_j)$  follows a log-normal process. As a result, an option (European) written on this forward rate can be priced by the Black-Scholes model:

$$
C (t, T, \\kappa) = P (t, T_{i}) [ f (t, T_{i}, T_{j}) N (d_{+}) - \\kappa N (d_{-}) ] \\tag {14.40}
$$ where


$$ d_{\\pm} = \\frac{\\ln f (t , T_{i} , T_{j}) - \\ln \\kappa \\pm 1 / 2 \\sigma^{2} (T - t)}{\\sigma \\sqrt{T - t}}
$$ and  $P(t, T_i)$  is the risk-free discount factor,  $\\kappa$  is the strike (rate),  $\\sigma$  is the volatility of the log of the forward rate  $f(T_i, T_i, T_j)$  (which is equal to  $\\ell(T_i, T_j)$ ).


To assure that such an assumption does not violate arbitrage, the LMM (for example, see Brigo and Mercurio (2006)) consists of the drift term of the forward rate, unfortunately, is stochastic as follows:

$$
\\begin{align}
\\frac{d f (t , T_{k - 1} , T_{k})}{f (t , T_{k - 1} , T_{k})} &= \\zeta (t, T_{k - 1}, T_{k}) d \\tilde {W}^{(T_{k})} (t) \\\\
&= - \\zeta (t, T_{k - 1}, T_{k}) \\sum_{j = k + 1}^{n} \\frac{\\rho_{k , j} \\tau_{j} \\zeta (t , T_{j - 1} , T_{j}) f (t , T_{j - 1} , T_{j})}{1 + \\tau_{j} f (t , T_{j - 1} , T_{j})} d t \\tag {14.41} \\\\
&\\phantom{=} + \\zeta (t, T_{k - 1}, T_{k}) d \\tilde {W}^{(T_{n})} (t) \\\\
\\end{align}
$$ where  $\\zeta(t, T_{j-1}, T_j)$  is the volatility,  $\\tau_j = T_j - T_{j-1}$  and  $\\rho_{i,j}$  is the correlation between two separate measures  $d\\tilde{W}^{(T_i)}(t)$  and  $d\\tilde{W}^{(T_j)}(t)$ , which is difficult to define. As a result a "freezing" action is adopted and  $\\rho_{i,j}$  are regarded as constants at the current time. Apparently this assumption is quite restrictive in that during the crisis, it failed to explain the drastic changes in the interest rate dynamics, as pointed out by Gaspar and Pimentel (2015).


From the Vasicek model (see Chapter ??), we know that all zero-coupon bond prices are log-normally distributed. Hence, any discrete forward rate (between  $T_{i}$  and  $T_{j}$ ) should consequently follow a shifted-log-normal distribution, since:

$$ f (t, T_{i}, T_{j}) = \\frac{P (t , T_{i})}{P (t , T_{j})} - 1 \\tag {14.42}
$$ where  $T_{i} < T_{j}$ . Each bond price is log-normally distributed and hence the ratio  $\\frac{P(t,T_i)}{P(t,T_j)}$  is also log-normally distributed. Subtracting 1 is to shift the log-normal distribution by 1 and hence the lowest forward rate is  $-100\\%$ .


It is shown later that doing so renders the "freezing" of the drift unnecessary. The drift adjustment is then exact and directly connected to the volatility of the bond. Finally, applying the forward measures, we can achieve the drift adjustment between any two two chosen dates (e.g.  $T_{i}$  and  $T_{j}$ ).

Furthermore, for  $f(t,T_j,T_{j+1})$  to be shifted log-normal helps resolve the distributional issues in the market that  $f(t,T_j,T_{j+1})$  is close to normal distribution when its level is low and log-normal when its level is high. This can be easily seen if we express  $1 + f(t,T_j,T_{j+1})$  which follows a log-normal distribution as an exponential function: that is  $1 + f(t,T_j,T_{j+1}) = e^x$  where  $x$  is normally distributed. Then  $f(t,T_j,T_{j+1}) = e^x - 1$ . When  $f(t,T_j,T_{j+1})$  is high,  $x$  is high, and  $f(t,T_j,T_{j+1})$  follows a shifted log-normal distribution. When  $f(t,T_j,T_{j+1})$  is low,  $x$  is low, and  $f(t,T_j,T_{j+1}) = e^x - 1 \\approx 1 + x - 1 = x$  is very close to a normal distribution.

To correct the problems of the existing LMM and introduce a new, revised LMM, or shifted-LMM, we leverage upon the forward measure discussion in Chapter ??. The notation used here also follows what it is in Chapter ??. From Chpater

$\\ref{eq:1}$ , we know that the forward measure is maturity dependent. In other words, for a current time  $t$ , there are a set of forward measures,  $\\langle T_1,\\dots ,T_n\\rangle$ , one for each bond.

Recall equation  $(\\ref{eq:1})$  from Chapter  $\\ref{eq:1}$  (under the risk-neutral measure):

$$
\\frac{d P (t , T)}{P (t , T)} = r (t) d t + v (t, T) d \\hat {W} (t) \\tag {14.43}
$$ and also the change of measure between the risk-neutral measure and the  $T$ -forward measure:


$$ d \\tilde {W}^{(T)} (t) = - v (t, T) d t + d \\hat {W} (t) \\tag {14.44}
$$

Furthermore, recall also (from Chapter ??) the forward price to be (for  $T_{i} \\leq T_{j}$ ) the ratio of two bond prices:

$$
\\Psi (t, T_{i}, T_{j}) = \\frac{P (t , T_{j})}{P (t , T_{i})} \\tag {14.45}
$$

Then, we can define the discrete forward rate (plus 1) as:

$$
\\begin{align}
F (t, T_{i}, T_{j}) &= \\frac{1}{\\Psi (t , T_{i} , T_{j})} \\tag {14.46} \\\\
&= \\frac{P (t , T_{i})}{P (t , T_{j})} \\\\
\\end{align}
$$

Then, the following two lemmas are true.

Lemma 1.  $F(t, T_i, T_j)$  is  $T_j$ -martingale. This implies: for  $s > t$  and in a limiting case where  $s \\to T_i$ , we have:

$$
F (t, T_{i}, T_{j}) = \\tilde {\\mathbb {E}}_{t}^{(T_{j})} [ L (T_{i}, T_{j}) ] \\tag {14.47}
$$ where  $L$  is the LIBOR.


□

The proof is given in the Appendix. Note that the above lemma also implies that  $f(t, T_i, T_j) = F(t, T_i, T_j) - 1$  is  $T_{j+1}$ -martingale. This is important, as we shall discuss in details later, in that the current LMM assumes  $f(t,T_i,T_j)$  to be log-normally distributed while we assume  $F(t,T_{j},T_{j + 1})$  to be log-normally distributed (hence  $f(t,T_{j},T_{j + 1})$  is a shifted log-normal).


Lemma 2.  $\\Psi (t,T_i,T_j) = F(t,T_i,T_j)^{-1}$  is  $T_{i}$  -martingale. This implies:

$$
\\Psi (t, T_{i}, T_{j}) = \\tilde {\\mathbb {E}}_{t}^{(T_{i})} [ \\Psi (s, T_{i}, T_{j}) ] \\tag {14.48}
$$ for  $s > t$  and in a limiting case where  $s \\to T_i$ , we have:


$$
\\Psi (t, T_{i}, T_{j}) = \\tilde {\\mathbb {E}}_{t}^{(T_{i})} [ P (T_{i}, T_{j}) ] \\tag {14.49}
$$

□

Again, the proof of this Lemma is similar to the proof of Lemma 1 and is given in the Appendix.

The change of measure between any two forward measures under  $T_{i}$  and  $T_{j}$  is:

$$ d \\tilde {W}^{(T_{j})} = d \\tilde {W}^{(T_{i})} + \\xi (t, T_{i}, T_{j}) d t \\tag {14.50}
$$ where


$$
\\xi (t, T_{i}, T_{j}) = v (t, T_{j}) - v (t, T_{i}) \\tag {14.51}
$$ and  $v(\\cdot, \\cdot)$  is defined in equation (14.43). Furthermore, the dynamics for the discrete forward rate is:


$$
\\frac{d F \\left(t , T_{i} , T_{j}\\right)}{F \\left(t , T_{i} , T_{j}\\right)} = \\xi \\left(t, T_{i}, T_{j}\\right) d \\tilde {W}^{\\left(T_{j}\\right)} (t) \\tag {14.52}
$$

Under the log-normality assumption for the discrete forward rate,  $\\xi (t,T_i,T_j)$  is non-stochastic because  $v(t,T_{i})$  and  $v(t,T_{j})$  defined in equation (14.43) are nonstochastic (i.e., not a function of  $\\mathbf{r}$ ).

Let's now prove equation (14.50). With log-normality for the discrete forward rate of equation (14.52), we must have the volatility  $\\xi (t,T_i,T_j)$  to be non-stochastic. Note that  $\\Psi(t, T_i, T_j) = \\frac{1}{F(t, T_i, T_j)}$ , we can

$$
\\begin{align}
d \\Psi (t, T_{i}, T_{j}) &= d \\frac{1}{F (t , T_{i} , T_{j})} \\\\
&= \\frac{- 1}{F \\left(t , T_{i} , T_{j}\\right)} \\left(\\xi \\left(t, T_{i}, T_{j}\\right) d \\tilde {W}^{\\left(T_{j}\\right)} (t) - \\xi \\left(t, T_{i}, T_{j}\\right)^{2} d t\\right) \\tag {14.53} \\\\
&= - \\Psi (t, T_{i}, T_{j}) \\left(\\xi (t, T_{i}, T_{j}) d \\tilde {W}^{(T_{j})} (t) - \\xi (t, T_{i}, T_{j})^{2} d t\\right) \\\\
&= \\Psi (t, T_{i}, T_{j}) \\left(\\xi (t, T_{i}, T_{j}) d \\tilde {W}^{(T_{j})} (t) - \\xi (t, T_{i}, T_{j})^{2} d t\\right) \\\\
&= \\xi (t, T_{i}, T_{j}) \\Psi (t, T_{i}, T_{j}) d \\tilde {W}^{(T_{i})} (t) \\\\
\\end{align}
$$

Consequently, we obtain:

$$ d \\tilde {W}^{\\left(T_{j}\\right)} (t) = d \\tilde {W}^{\\left(T_{i}\\right)} (t) + \\xi (t, T_{i}, T_{j}) d t \\tag {14.54}
$$

Now we proceed to solve for  $\\xi (t,T_i,T_j)$

$$
\\begin{align}
d \\Psi (t, T_{i}, T_{j}) &= d \\frac{P (t , T_{j})}{P (t , T_{i})} \\\\
&= \\Psi (t, T_{j}, T_{j + 1}) \\left(\\frac{d P (t , T_{j})}{P (t , T_{j})} - \\frac{d P (t , T_{i})}{P (t , T_{i})} - \\frac{d P (t , T_{j})}{P (t , T_{j})} \\frac{d P (t , T_{i})}{P (t , T_{i})} + \\left[ \\frac{d P (t , T_{i})}{P (t , T_{i})} \\right]^{2}\\right) \\\\
&= \\Psi (t, T_{j}, T_{j + 1}) ([ v (t, T_{j}) - v (t, T_{i}) ] d \\hat {W} (t) - v (t, T_{j}) v (t, T_{i}) d t + v (t, T_{i})^{2} d t) \\\\
&= \\xi (t, T_{i}, T_{j}) \\Psi (t, T_{i}, T_{j}) d \\tilde {W}^{(T_{i})} (t) \\tag {14.55} \\\\
\\end{align}
$$ and hence the change of measure (from the last two lines above) is:


$$
\\begin{align}
d \\tilde {W}^{\\left(T_{i}\\right)} (t) &= d \\hat {W} (t) - \\frac{v \\left(t , T_{j}\\right) v \\left(t , T_{i}\\right) + v \\left(t , T_{i}\\right)^{2}}{v \\left(t , T_{j}\\right) - v \\left(t , T_{i}\\right)} d t \\tag {14.56} \\\\
&= d \\hat {W} (t) - v (t, T_{i}) d t \\\\
\\end{align}
$$ which is consistent with equation (14.44) and:


$$
\\xi (t, T_{i}, T_{j}) = v (t, T_{j}) - v (t, T_{i}) \\tag {14.57}
$$ where  $v(r,t,T)$  is defined in equations (14.15) and equation (14.44). We note that (14.57) implies the following property:


$$
\\xi (t, T_{i}, T_{k}) = \\xi (t, T_{i}, T_{j}) + \\xi (t, T_{j}, T_{k}) \\tag {14.58}
$$ for all  $i <   j <   k$  .2


Two most popular LIBOR derivative contracts are caps/floors and swpations, both of which are evaluated with a number of future LIBOR "fixing" dates. For a set of discrete forward rates with fixing dates:  $< T_{1} \\cdots T_{n} >$  (not necessarily equally spaced), equation (14.52) can be written as:

$$
\\begin{align}
\\frac{d F \\left(t , T_{j} , T_{j + 1}\\right)}{F \\left(t , T_{j} , T_{j + 1}\\right)} &= \\xi \\left(t, T_{j}, T_{j + 1}\\right) d \\tilde {W}^{\\left(T_{j + 1}\\right)} (t) \\tag {14.59} \\\\
&= \\xi (t, T_{j}, T_{j + 1}) d \\tilde {W}^{(T_{j})} (t) + \\xi (t, T_{j}, T_{j + 1})^{2} d t \\\\
\\end{align}
$$ which is known as the drift adjustment. Recursive substitutions lead to:


$$
\\frac{d F \\left(t , T_{j} , T_{j + k}\\right)}{F \\left(t , T_{j} , T_{j + k}\\right)} = \\xi \\left(t, T_{j}, T_{j + k}\\right) d \\tilde {W}^{\\left(T_{j}\\right)} (t) + \\left\\{\\sum_{\\ell = 1}^{k} \\xi \\left(t, T_{j}, T_{j + \\ell}\\right) \\right\\}^{2} d t \\tag {14.60}
$$

This result is drastically different from and easier than the LMM where the drift adjustment contains a set of correlations across measures (then a freezing condition is imposed to turn the drift adjustment into deterministic).

# 14.7.1 Calibration to Caps

The reason why the LMM gains such popularity is its ease in calibrating to cap prices. Caps (and floors) are traded OTC (over the counter) and quoted by Black's volatility. With the Black formula, one can easily covert the volatility quote into the premium. The LMM provides a theoretical valuation for such a market practice.

we have:

$$
\\begin{align}
\\frac{d F (t , T_{j - 1} , T_{j})}{F (t , T_{j - 1} , T_{j})} &= \\xi (t, T_{j - 1}, T_{j}) d \\tilde {W}^{(T_{j})} \\\\
&= \\frac{\\xi (t , T_{j - 1} , T_{j})}{\\xi (t , T_{j} , T_{j + 1})} \\xi (t, T_{j}, T_{j + 1}) d \\tilde {W}^{(T_{j})} \\\\
&= \\frac{\\xi (t , T_{j - 1} , T_{j})}{\\xi (t , T_{j} , T_{j + 1})} \\frac{d \\Psi (t , T_{j} , T_{j + 1})}{\\Psi (t , T_{j} , T_{j + 1})} \\\\
\\end{align}
$$

The LMM assumes a log-normally distributed LIBOR and hence each caplet in the cap contract is consistent with the Black model (under a different forward measure).

A cap is a collection of caplets which are simple European call options on forward LIBOR rates struck at the cap rate, symbolized as  $\\bar{R}$ :

$$
V_{\\text{ca p}} = \\sum_{j = 1}^{n} \\pi_{j} \\tag {14.61}
$$ where each caplet  $\\pi_j$  is the  $j$ -th caplet which is a European call option on LIBOR between  $T_j$  and  $T_{j+1}$ .


As discussed in Chapter ??, a caplet that is a European call option on forward LIBOR can be written as a European put option on price:

$$
\\begin{align}
\\left. \\max  \\left\\{\\ell \\left(T_{j}, T_{j + 1}\\right) - \\bar {R}, 0 \\right\\} &= \\max  \\left\\{\\frac{1}{P \\left(T_{j} , T_{j + 1}\\right)} - 1 - \\bar {R}, 0 \\right\\} \\tag {14.62} \\\\
&= \\frac{1 + \\bar {R}}{P (T_{j} , T_{j + 1})} \\max \\{K - P (T_{j}, T_{j + 1}), 0 \\} \\\\
\\end{align}
$$ where  $K = 1 / (1 + \\bar{R})$ . It is important then to note that although this payoff is paid at time  $T_{j+1}$ , its amount is actually known at time  $T_j$ . Consequently, we can discount it back by one period to be:


$$
P \\left(T_{j}, T_{j + 1}\\right) \\max  \\left\\{\\ell \\left(T_{j}, T_{j + 1}\\right) - \\bar {R}, 0 \\right\\} = (1 + \\bar {R}) \\max  \\{K - P \\left(T_{j}, T_{j + 1}\\right), 0 \\} \\tag {14.63}
$$ and hence we can "conveniently" discount from time  $T_{j}$  which "coincidentally" matches the forward measure needed for the price which is  $T_{j}$ -martingale. The caplet value is the discounted expected value under the risk-neutral measure: $^{5}$


$$
\\begin{align}
\\pi_{j} &= \\hat {\\mathbb {E}}_{t} \\left[ \\exp \\left(- \\int_{t}^{T_{j}} r (u) d u\\right) (1 + \\bar {R}) \\max  \\{K - P \\left(T_{j}, T_{j + 1}\\right), 0 \\} \\right] \\tag {14.64} \\\\
&= P (t, T_{j}) (1 + \\bar {R}) \\tilde {\\mathbb {E}}_{t}^{(T_{j})} [ \\max \\left\\{K - \\Psi (T_{j}, T_{j}, T_{j + 1}), 0 \\right\\} ] \\\\
\\end{align}
$$

Under log-normally distributed forward prices, we have the following caplet formula:

$$
\\begin{align}
\\pi_{j} &= \\frac{P (t , T_{j})}{K} \\left\\{K N \\left(- \\frac{\\ln \\Psi (t , T_{j} , T_{j + 1}) - \\ln K - 1 / 2 v_{P , j}^{2}}{v_{P , j}}\\right) \\right. \\tag {14.65} \\\\
&\\phantom{=} \\left. - \\Psi (t, T_{j}, T_{j + 1}) N \\left(- \\frac{\\ln \\Psi (t , T_{j} , T_{j + 1}) - \\ln K +^{1 / 2} v_{P , j}^{2}}{v_{P , j}}\\right) \\right\\} \\\\
\\end{align}
$$ where


$$
\\begin{align}
v_{P, j}^{2} &= \\tilde {\\mathbb {V}} [ \\ln P (T_{j}, T_{j + 1}) ] \\\\
&= \\tilde {\\mathbb {V}} [ \\ln \\Psi (T_{j}, T_{j}, T_{j + 1}) ] \\tag {14.66} \\\\
&= \\int_{t}^{T_{j}} \\xi (u, T_{j}, T_{j + 1})^{2} d u \\\\
\\end{align}
$$ under the log-normal assumption. This equation is a more general form than the similar equation in Chapter ?? (equation (10.5)) where the Vasicek model is assumed. Here, we only need the forward volatility,  $\\xi(u, T_j, T_{j+1})$ , to be deterministic (please compare equation (10.5) in Chapter ?? and equation (14.66) here).

# Summary

In this chapter, we reviewed the most important models for interest rate derivatives. We began with the classical Vasicek and Cox-Ingersoll models which are known as "equilibrium" or "factor-based" models. These models formulate the fundamental risk factors (via stochastic processes) that drive the term structure (of zero coupon bonds). These models have closed-form solutions to basic interest rate derivative prices such as options and futures.

Then, we reviewed the so-called "no-arbitrage" models. These models take the current market term structure as given and build a lattice (or Monte Carlo simulations) that is consistent with the market information. We began with the simplest Ho-Lee model. Then we introduced the Heath-Jarrow-Morton family of models. Finally, we presented the most recent shifted LIBOR market model by Chen, Hsieh, and Huang. This model calibrates to the whole ATM swaption surface.

## Additional D2 Diagrams for Interest Rate Modeling

### Interest Rate Model Classification
```d2
models: {
  shape: square
  label: "Interest Rate Models"
  style: {fill: "#e3f2fd"}

  equilibrium: {
    shape: square
    label: "Equilibrium Models\n(Vasicek, CIR)"
    style: {fill: "#e8f5e8"}
  }

  no_arbitrage: {
    shape: square
    label: "No-Arbitrage Models"
    style: {fill: "#fff3e0"}

    short_rate: {
      shape: square
      label: "Short Rate Models\n(Ho-Lee, Hull-White)"
      style: {fill: "#fce4ec"}
    }

    forward_rate: {
      shape: square
      label: "Forward Rate Models\n(HJM, LMM)"
      style: {fill: "#f3e5f5"}
    }
  }

  equilibrium -> no_arbitrage: {label: "Evolution of approaches"}
  short_rate -> forward_rate: {label: "More sophisticated"}
}

# Model Characteristics
characteristics: {
  shape: square
  label: "Model Characteristics"
  style: {fill: "#fff8e1"}

  gaussian: {
    shape: square
    label: "Gaussian Processes\n(Vasicek, Ho-Lee)"
    style: {fill: "#e1f5fe"}
  }

  square_root: {
    shape: square
    label: "Square-Root Process\n(CIR Model)"
    style: {fill: "#e8f5e8"}
  }

  log_normal: {
    shape: square
    label: "Log-Normal Process\n(BDT, LMM)"
    style: {fill: "#f3e5f5"}
  }

  gaussian -> square_root
  gaussian -> log_normal
}

models -> characteristics: {label: "Characteristics"}
```

### HJM Framework Components
```d2
components: {
  shape: square
  label: "HJM Framework Components"
  style: {fill: "#f1f8e9"}

  forward_rates: {
    shape: square
    label: "Forward Rates\nf(t,T)"
    style: {fill: "#e8f5e8"}
  }

  volatility: {
    shape: square
    label: "Volatility Structure\nσ(t,T)"
    style: {fill: "#e3f2fd"}
  }

  drift: {
    shape: square
    label: "Drift Adjustment\nσ(t,T)∫σ(t,s)ds"
    style: {fill: "#fff3e0"}
  }

  measure: {
    shape: square
    label: "Forward Measure\nQ^T"
    style: {fill: "#f3e5f5"}
  }

  forward_rates -> drift: {label: "Drift Restriction"}
  volatility -> drift: {label: "Determines Drift"}
  forward_rates -> measure: {label: "Martingale Property"}
}
```

### LMM Structure
```d2
lmm: {
  shape: square
  label: "LIBOR Market Model Structure"
  style: {fill: "#e8eaf6"}

  libor_rates: {
    shape: square
    label: "Discrete Forward Rates\nL(t,T_i,T_{i+1})"
    style: {fill: "#e1bee7"}
  }

  lognormal: {
    shape: square
    label: "Log-Normal Assumption\ndL/L = μdt + σdW"
    style: {fill: "#d1c4e9"}
  }

  calibration: {
    shape: square
    label: "Calibration to Caplets\nBlack Formula"
    style: {fill: "#b39ddb"}
  }

  drift_adj: {
    shape: square
    label: "Drift Adjustment\nStochastic Volatility"
    style: {fill: "#9575cd"}
  }

  libor_rates -> lognormal: {label: "Dynamics"}
  lognormal -> calibration: {label: "Pricing Formula"}
  lognormal -> drift_adj: {label: "No Arbitrage"}
}
```

## Key Takeaways

1. **Model Evolution**: Interest rate models evolved from equilibrium models (Vasicek, CIR) that specify fundamental risk factors to no-arbitrage models (Ho-Lee, HJM, LMM) that match market prices.

2. **Trade-offs**: Equilibrium models offer economic intuition but may not fit market prices perfectly. No-arbitrage models fit market data but may lack economic foundations.

3. **Mathematical Complexity**: Moving from short-rate models to forward-rate models increases complexity but provides more realistic term structure dynamics.

4. **Practical Applications**: Different models serve different purposes - some are better for fitting yield curves, others for volatility surfaces or specific derivative pricing.

5. **Market Adoption**: Post-2008 crisis, models that better capture market realities (like LMM with multiple curves) gained prominence.

## Practice Questions

1. Compare and contrast the Vasicek and CIR models in terms of their assumptions about interest rate behavior and their strengths/weaknesses.

2. Explain the concept of drift adjustment in the HJM framework and why it's necessary.

3. Describe how the LMM differs from the HJM model and what advantages it offers for practitioners.

4. Discuss the limitations of log-normal assumptions in interest rate modeling, particularly in low-rate environments.

5. Explain how the Ho-Lee model can be calibrated to match the current term structure of interest rates.

## References

- Heath, J., Jarrow, R., & Morton, A. (1992). Bond pricing and the term structure of interest rates: A new methodology. *Econometrica*, 60(1), 77-105.
- Brace, A., Gatarek, D., & Musiela, M. (1997). The market model of interest rate dynamics. *Mathematical Finance*, 7(2), 127-155.
- Hull, J., & White, A. (1990). Pricing interest-rate-derivative securities. *The Review of Financial Studies*, 3(4), 573-592.
- Vasicek, O. (1977). An equilibrium characterization of the term structure. *Journal of Financial Economics*, 5(2), 177-188.
- Cox, J., Ingersoll, J., & Ross, S. (1985). A theory of the term structure of interest rates. *Econometrica*, 53(2), 385-407.
- Black, F., Derman, E., & Toy, W. (1990). A one-factor model of interest rates and its application to treasury bond options. *Financial Analysts Journal*, 46(1), 33-39.

## Further Reading

For readers interested in deeper exploration of interest rate modeling, the following resources provide additional perspectives and advanced techniques:

- Brigo, D., & Mercurio, F. (2006). *Interest Rate Models: Theory and Practice*. Springer Finance.
- Andersen, L., & Piterbarg, V. (2010). *Interest Rate Modeling*. Atlantic Financial Press.
- Rebonato, R. (2002). *Modern Pricing of Interest-Rate Derivatives*. Princeton University Press.
- Musiela, M., & Rutkowski, M. (2005). *Martingale Methods in Financial Modelling*. Springer Finance.

This concludes our review of interest rate modeling approaches. These models form the foundation for pricing and risk management of fixed income securities and derivatives in modern financial markets.
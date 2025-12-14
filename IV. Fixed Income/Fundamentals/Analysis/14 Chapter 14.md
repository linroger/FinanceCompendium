---
aliases: Interest Rate Models
tags:
key_concepts:
parent_directory: Analysis
cssclasses: academia
title: Chapter 14 - Interest Rate Models
linter-yaml-title-alias: Chapter 14 - Interest Rate Models
---

# Chapter 14

# Interest Rate Models

# 14.1 Introduction

In this chapter, we review the most popular and important models for the term structure of interest rates and their derivatives. We begin with the classical Vasicek and Cox-Ingersoll models which are known as "equilibrium" or "factor-based" models. These models formulate the fundamental risk factors (via stochastic processes) that drive the term structure (of zero coupon bonds). These models have closed-form solutions to basic interest rate derivative prices such as options and futures.

Then, we review the so-called "no-arbitrage" models. These models take the current market term structure as given and build a lattice (or Monte Carlo simulations) that is consistent with the market information. We begin with the simplest Ho-Lee model. Then we introduce the Heath-Jarrow-Morton family of models. Finally, we present the most recent shifted LIBOR market model by Chen, Hsieh, and Huang. This model calibrates to the whole ATM swaption surface.

# 14.2 Vasicek and CIR Models

The Vasicek model assumes a Gaussian, mean-reverting (Ornstein-Uhlenbeck) process for the instantaneous short rate:

$$
\begin{array}{l} d r = \alpha (\mu - r) d t + \sigma d W \\ = \alpha (\hat {\mu} - r) d t + \sigma d \hat {W} \tag {14.1} \\ \end{array}
$$ where, as shown in the previous chapter that  $\hat{\mu} = \mu -\frac{\sigma\lambda}{\alpha}$


The Vasicek model for the discount factor (zero coupon bond price):

$$

\begin{array}{l} P (t, T) = \hat {\mathbb {E}} _ {t} \left[ \exp \left(- \int_ {t} ^ {T} r (s) d s\right) \right] \tag {14.2} \\ = e ^ {- r (t) F (t, T) - G (t, T)} \\ \end{array}

$$ where


$$

F (t, T) = \frac {1 - e ^ {- \alpha (T - t)}}{\alpha}

$$

$$

G (t, T) = \left(\mu - \frac {\sigma^ {2}}{2 \alpha^ {2}} - \frac {\sigma \lambda}{\alpha}\right) (T - t - F (t, T)) + \frac {\sigma^ {2} F (t , T) ^ {2}}{4 \alpha}

$$

The CIR model is a mean-reverting squared-root process:

$$

\begin{array}{l} d r = \alpha (\mu - r) d t + \sigma \sqrt {r} d W \tag {14.3} \\ = \hat {\alpha} (\hat {\mu} - r) d t + \sigma \sqrt {r} d \hat {W} \\ \end{array}

$$ where  $\hat{\alpha} = \alpha +\lambda$  and  $\hat{\mu} = \frac{\alpha\mu}{\alpha + \lambda}$  are the risk-neutral parameters.

The zero coupon bond formula is:

$$
\begin{array}{l} P (t, T) = \hat {\mathbb {E}} _ {t} \left[ \exp \left(- \int_ {t} ^ {T} r (s) d s\right) \right] \tag {14.4} \\ = A (t, T) e ^ {- r (t) B (t, T)} \\ \end{array}
$$ where


$$

\begin{array}{l} A (t, T) = \left[ \frac {2 \gamma e ^ {(\alpha + \lambda + \gamma) (T - t) / 2}}{(\alpha + \lambda + \gamma) (e ^ {\gamma (T - t)} - 1) + 2 \gamma} \right] ^ {2 \alpha \mu / \sigma^ {2}} \\ B (t, T) = \frac {2 \left(e ^ {\gamma (T - t)} - 1\right)}{(\alpha + \lambda + \gamma) \left(e ^ {\gamma (T - t)} - 1\right) + 2 \gamma} \\ \gamma = \sqrt {(\alpha + \lambda) ^ {2} + 2 \sigma^ {2}} \\ \end{array}

$$

# 14.3 Ho-Lee Model

The Ho-Lee model is a "forward rate" model and hence belongs to the HJM family (although the Ho-Lee model was published 6 years prior to the HJM model). However, the original version of the Ho-Lee model is a "forward price" model. It was Phil Dybvig who then extended the Ho-Lee model to continuous time, forward rate model in 1989.

Define the zero-coupon bond price as  $P(i, n, j)$  where  $i$  is current time,  $n$  is maturity time, and  $j$  represents state of economy. The Ho-Lee model is a simple formula as follows:

$$

\left\{ \begin{array}{l} P (i, i + k, j) = \frac {P (i - 1 , i + k , j)}{P (i - 1 , i , j)} d (k) \\ P (i, i + k, j + 1) = \frac {P (i - 1 , i + k , j)}{P (i - 1 , i , j)} u (k) \end{array} \right. \tag {14.5}

$$ where


$$ u (k) = \frac {1}{p + (1 - p) \delta^ {k}} \tag {14.6}
$$

$$ d (k) = \frac {\delta^ {k}}{p + (1 - p) \delta^ {k}}
$$ and  $p$  is the risk-neutral probability and  $\delta$  is the "volatility" parameter (that is,  $\delta$  itself is not volatility but it is directly related to volatility.) As we can see, when  $\delta = 1$ , then  $u(k) = d(k)$  for all  $k$ . Then there is no volatility. To maintain  $u(k) > d(k) > 0$ , it must be that  $0 < \delta < 1$ . As  $\delta$  becomes small the volatility becomes large.


As a demonstration, we create a hypothetical four-year yield curve with annual time intervals as follows. The yields are observable in the market and we convert them into discount factors (present value of 1).

<table><tr><td colspan="3">Yield Curve</td></tr><tr><td>time to maturity</td><td>discount factor</td><td>yield to maturity</td></tr><tr><td>1</td><td>0.9524</td><td>0.049979</td></tr><tr><td>2</td><td>0.8900</td><td>0.059998</td></tr><tr><td>3</td><td>0.8278</td><td>0.065021</td></tr><tr><td>4</td><td>0.7686</td><td>0.068009</td></tr></table>

Given the current term structure of discount factors, we then can compute the forward prices,

$$

\begin{array}{l} 0. 9 3 4 4 8 1 = \frac {0 . 8 9 0 0}{0 . 9 5 2 4} \\ 0. 8 6 9 1 7 3 = \frac {0 . 8 2 7 8}{0 . 9 5 2 4} \\ 0. 8 0 7 0 1 4 = \frac {0 . 7 6 8 6}{0 . 9 5 2 4} \\ \end{array}

$$

Note that forward rates are returns of forward prices. For example:

$$

\begin{array}{l} f_{0,1,2} = \frac{1}{0.934481} -1 = \frac{(1 + 5.9998\%) ^ {2}}{1 + 4.9979\%} -1 = 7.0112\% \\ f _ {0, 1, 3} = \sqrt {\frac {1}{0 .869173}} - 1 = \sqrt {\frac {(1 + 6.5021 \%) ^ {3}}{1 + 4.9979 \%}} - 1 = 7.2623 \% \\ f_{0,1,4} = \sqrt [3]{\frac{1}{0.807014}} -1 = \sqrt [3]{\frac{(1 + 6.8009\%) ^ {3}}{1 + 4.9979\%}} -1 = 7.4088\% \\ \end{array}

$$

Now we shall introduce the Ho-Lee binomial model. Similar to the equity binomial model (i.e. Cox-Ross-Rubinstein, or the CRR model) where the stock price goes up and down with  $u = e^{\sigma \sqrt{\Delta t}}$  and  $d = 1 / u$  where  $\sigma$  is the volatility of the stock returns, yield curve here goes up or down with equation (14.6).

Different from the equity binomial model, equation (14.6) contains two parameters:  $p$  and  $\delta$ , representing up risk-neutral probability and "volatility" respectively.  $\delta$  is not actual volatility but, as we can see from equation (14.6) that it plays the role of volatility. The higher is  $\delta$ , the closer is  $u(k)$  to  $d(k)$ , and hence the smaller is the volatility. In an extreme case where  $\delta = 1$ ,  $u(k) = d(k) = 1$ , there is no volatility and uncertainty disappears. Reversely, the lower is  $\delta$ , the more far apart is  $u(k)$  from  $d(k)$  and the volatility is high. The volatility reaches the highest as  $\delta \to 0$ .

In our example, we set  $p = 0.6$  and  $\delta = 0.9$  and we have:

<table><tr><td colspan="3">Ho-Lee Pert Funcs</td></tr><tr><td>k</td><td>d(k)</td><td>u(k)</td></tr><tr><td>0</td><td>1.000000</td><td>1.000000</td></tr><tr><td>1</td><td>0.937500</td><td>1.041667</td></tr><tr><td>2</td><td>0.876623</td><td>1.082251</td></tr><tr><td>3</td><td>0.817631</td><td>1.121579</td></tr><tr><td>4</td><td>0.760749</td><td>1.159501</td></tr></table>

In the HL model, the next period's up term structure and down term structure are computed by applying the proper  $\mathbf{u}$  and  $\mathrm{d}$  on the forward price. For convenience, we introduce the following labeling system.  $P(i, n, j)$  represents the discount factor value at current time  $i$ , for maturity time  $n$ , and in state  $j$ . For convenience, we also label the lowest state 0 and 1, 2, ..., as we go up. So for today, we have four discount factors  $P(0, 1, 0), P(0, 2, 0), P(0, 3, 0), P(0, 4, 0)$  which are 0.9524, 0.8900, 0.8278, and 0.7686 respectively. For next year, we apply the forward prices computed above and multiply them by corresponding u's and d's. For example,


$$
0. 9 7 3 4 = \underbrace {P (1 , 2 , 1)} _ {\mathrm {u p}} = \frac {P (0 , 2 , 0)}{P (0 , 1 , 0)} u (1) = \frac {0 . 8 9 0 0}{0 . 9 5 2 4} \times 1. 0 4 1 6 6 7
$$

$$
0. 8 7 6 1 = \underbrace {P (1 , 2 , 0)} _ {\text {d o w n}} = \frac {P (0 , 2 , 0)}{P (0 , 1 , 0)} d (1) = \frac {0 . 8 9 0 0}{0 . 9 5 2 4} \times 0. 9 3 7 5
$$

$$
0. 9 4 0 7 = \underbrace {P (1 , 3 , 1)} _ {\text {u p}} = \frac {P (0 , 3 , 0)}{P (0 , 1 , 0)} u (2) = \frac {0 . 8 2 7 8}{0 . 9 5 2 4} \times 1. 0 8 2 2 5 1
$$

$$
0. 7 6 1 9 = \underbrace {P (1 , 3 , 0)} _ {\mathrm {d o w n}} = \frac {P (0 , 3 , 0)}{P (0 , 1 , 0)} d (2) = \frac {0 . 8 2 7 8}{0 . 9 5 2 4} \times 0. 8 7 6 6 2 3
$$

$$
0. 9 0 5 1 = \underbrace {P (1 , 4 , 1)} _ {\mathrm {u p}} = \frac {P (0 , 4 , 0)}{P (0 , 1 , 0)} u (3) = \frac {0 . 8 2 7 8}{0 . 9 5 2 4} \times 1. 1 2 1 5 7 9
$$

$$
0. 6 5 9 8 = \underbrace {P (1 , 4 , 0)} _ {\text {d o w n}} = \frac {P (0 , 4 , 0)}{P (0 , 1 , 0)} d (3) = \frac {0 . 7 6 8 6}{0 . 9 5 2 4} \times 0. 8 1 7 6 3 1
$$

Put in the table,

<table><tr><td colspan="7">Year = 1</td></tr><tr><td>current time</td><td>maturity time</td><td>state 0</td><td>state 1</td><td>state 2</td><td>state 3</td><td>state 4</td></tr><tr><td>1</td><td>1</td><td>1</td><td>1</td><td></td><td></td><td></td></tr><tr><td></td><td>2</td><td>0.8761</td><td>0.9734</td><td></td><td></td><td></td></tr><tr><td></td><td>3</td><td>0.7619</td><td>0.9407</td><td></td><td></td><td></td></tr><tr><td></td><td>4</td><td>0.6598</td><td>0.9051</td><td></td><td></td><td></td></tr></table>

Now we have two term structures of the next year (time 1). The task continues to time 2. For each term structure in time 1, we shall compute two term structures in time 2 (up and down) by applying the same principle. The up and down term structures of the left are:

$$
0. 9 0 6 0 = P (2, 3, 1) = \frac {P (1 , 3 , 0)}{P (1 , 2 , 0)} u (1) = \frac {0 . 7 6 1 9}{0 . 8 7 6 1} \times 1. 0 4 1 6 6 7
$$

$$
0. 8 1 5 4 = P (2, 3, 0) = \frac {P (1 , 3 , 0)}{P (1 , 2 , 0)} d (1) = \frac {0 . 7 6 1 9}{0 . 8 7 6 1} \times 0. 9 3 7 5
$$

$$
0. 8 1 5 1 = P (2, 4, 1) = \frac {P (1 , 4 , 0)}{P (1 , 2 , 0)} u (2) = \frac {0 . 6 5 9 8}{0 . 8 7 6 1} \times 1. 0 8 2 2 5 1
$$

$$
0. 6 6 0 3 = P (2, 4, 0) = \frac {P (1 , 4 , 0)}{P (1 , 2 , 0)} d (2) = \frac {0 . 6 5 9 8}{0 . 8 7 6 1} \times 0. 8 7 6 6 2 3
$$ and of the right are:


$$
1. 0 0 6 6 = P (2, 3, 2) = \frac {P (1 , 3 , 1)}{P (1 , 2 , 1)} u (1) = \frac {0 . 9 4 0 7}{0 . 9 7 3 4} \times 1. 0 4 1 6 6 7
$$

$$
2. 9 0 6 0 = P (2, 3, 1) = \frac {P (1 , 3 , 1)}{P (1 , 2 , 1)} d (1) = \frac {0 . 9 4 0 7}{0 . 9 7 3 4} \times 0. 9 3 7 5
$$

$$
3. 0 0 6 3 = P (2, 4, 2) = \frac {P (1 , 4 , 1)}{P (1 , 2 , 1)} u (2) = \frac {0 . 9 0 5 1}{0 . 9 7 3 4} \times 1. 0 8 2 2 5 1
$$

$$
4. 8 1 5 1 = P (2, 4, 1) = \frac {P (1 , 4 , 1)}{P (1 , 2 , 1)} d (2) = \frac {0 . 9 0 5 1}{0 . 9 7 3 4} \times 0. 8 7 6 6 2 3
$$ and put in table,


<table><tr><td colspan="7">Year = 2</td></tr><tr><td>current time</td><td>maturity time</td><td>state 0</td><td>state 1</td><td>state 2</td><td>state 3</td><td>state 4</td></tr><tr><td>2</td><td>2</td><td>1</td><td>1</td><td>1</td><td></td><td></td></tr><tr><td></td><td>3</td><td>0.8154</td><td>0.9060</td><td>1.0066</td><td></td><td></td></tr><tr><td></td><td>4</td><td>0.6603</td><td>0.8151</td><td>1.0063</td><td></td><td></td></tr></table>

It can be seen that from the left (applying  $u(k)$ ) we arrive at  $P(2,3,1) = 0.9060$  which is the same from the right (applying  $d(k)$ ). This also applies to  $P(2,4,1) = 0.8151$ . This is known as the re-combination assumption. Note that this assumption must be maintained or the binomial model will grow exponentially.

While simple, in this example we see something peculiar about the HL model here. Note that in the last column (state 2) the bond prices are both greater than  $1 (1.0066 \text{ and } 1.0063)$ . This is peculiar because these are zero-coupon bonds whose prices must be strictly less than 1. Prices greater than 1 implies that interest rates are negative. In other words, for the one-year bond (maturity time 3), we must pay

$1.0066 now and receive$ 1 in a year. And for the two-year bond, we must pay  $1.0063 and receive the principal$ 1 back in two years.

In an arbitrage-free world, this is impossible. One would rather keep cash than buying zero-coupon bonds and these bonds will find no buyers. Hence such prices are not realistic and do not exist in the real world. Unfortunately this is the assumption adopted by the HL model. The HL model adopt normally distributed interest rates, just like the Vasicek model and interest rates can reach negative values.

In the next section, we discuss the Black-Derman-Toy model where interest rates are log-normally distributed. Then the problem of negative interest rates is prevented.

Continuing this process going forward, we can derive the complete the 4-year table for the Ho-Lee model:

<table><tr><td colspan="7">Complete Ho-Lee Model</td></tr><tr><td>current time</td><td>maturity time</td><td>state 0</td><td>state 1</td><td>state 2</td><td>state 3</td><td>state 4</td></tr><tr><td>0</td><td>0</td><td>1</td><td></td><td></td><td></td><td></td></tr><tr><td></td><td>1</td><td>0.9524</td><td></td><td></td><td></td><td></td></tr><tr><td></td><td>2</td><td>0.89</td><td></td><td></td><td></td><td></td></tr><tr><td></td><td>3</td><td>0.8278</td><td></td><td></td><td></td><td></td></tr><tr><td></td><td>4</td><td>0.7686</td><td></td><td></td><td></td><td></td></tr><tr><td>1</td><td>1</td><td>1</td><td>1</td><td></td><td></td><td></td></tr><tr><td></td><td>2</td><td>0.8761</td><td>0.9734</td><td></td><td></td><td></td></tr><tr><td></td><td>3</td><td>0.7619</td><td>0.9407</td><td></td><td></td><td></td></tr><tr><td></td><td>4</td><td>0.6598</td><td>0.9051</td><td></td><td></td><td></td></tr><tr><td>2</td><td>2</td><td>1</td><td>1</td><td>1</td><td></td><td></td></tr><tr><td></td><td>3</td><td>0.8154</td><td>0.906</td><td>1.0066</td><td></td><td></td></tr><tr><td></td><td>4</td><td>0.6603</td><td>0.8151</td><td>1.0063</td><td></td><td></td></tr><tr><td>3</td><td>3</td><td>1</td><td>1</td><td>1</td><td>1</td><td></td></tr><tr><td></td><td>4</td><td>0.7592</td><td>0.8435</td><td>0.9372</td><td>1.0414</td><td></td></tr><tr><td>4</td><td>4</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td></tr></table>

This concludes the discrete example. Again, the problem of negative interest rates becomes more severe as the model goes to year 3. The zero-coupon bond price is 1.0414.

Once the model of the interest rates is completed, we can then evaluate derivatives easily. Options, futures, swaps, and other complex interest rate derivatives can be evaluated with the model. Readers who are familiar with the CRR binomial model should find no problem applying the HL model to various derivatives.

# 14.4 Black-Derman-Toy Model

The material in this section is taken from Analysis of Fixed Income (where it has the most updated version). Like the Ho-Lee model, the Black-Derman-Toy (BDT) model is a binomial model.

# 14.4.1 Tree (Log Normal)

Standard binomial model in equity looks as follows (where a chosen interest rate  $r$ , usually the instantaneous rate, is treated like a "stock"): where  $r_0$  is the current (time 0) interest rate and  $r_{ij}$  represents the interest rate at time period  $i$  and state  $j$ , and

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/abc31c753a5e0b47c2e8a9715ae25904801f4f84062cbda7dddd9a44c13a3837.jpg)
Figure 14.1: Two-period BDT Model


$$

\begin{array}{l} u = e ^ {\sigma \sqrt {\Delta t}} \\ d = e ^ {- \sigma \sqrt {\Delta t}} \\ \end{array}

$$

# 14.4.2 Modified Tree (since  $ud = 1$ )

In order to fit to the current yield curve, the standard binomial tree needs to be modified. The key change is to allow for the flexibility in each period in setting a "mean rate",  $\bar{r}_i$ . In the standard binomial tree, the up and down are perturbations around  $r_0$ . In the modified binomial model that can fit to the current yield curve,  $r_0$  is replaced by a series of other values:  $\bar{r}_1, \bar{r}_2, \dots, \bar{r}_n$  in various periods, as Figure 14.2 shows.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/61c3ffd7c993435e83a2ff622b9cbc9ac0e5ebdfbfe83b9de9578715c0bb1360.jpg)
Figure 14.2: BDT Tree

Hence, for every period  $i$ , there are always two unknowns  $-\bar{r}_i$  and  $u_i$ . Recall the standard binomial model where there are two equations in each time period – mean and variance. Hence, with two equations and two unknowns, there is a unique solution to  $\bar{r}_i$  and  $u_i$ . Then all interest rates at period  $i$ , i.e.  $r_{ij}$  where  $j$  represents the state, can be obtained, as shown in the Figure 14.2.

The following example is taken from the original paper published in 1989 by Black, Derman, and Toy in Financial Analyst Journal. The hyperthetical market inputs are yield and volatility (yield vol) curves as follows:

<table><tr><td colspan="3">Yield Curve</td></tr><tr><td>maturity</td><td>yield</td><td>volatility</td></tr><tr><td>1</td><td>10\%</td><td>20\%</td></tr><tr><td>2</td><td>11</td><td>19</td></tr><tr><td>3</td><td>12</td><td>18</td></tr><tr><td>4</td><td>12.5</td><td>17</td></tr><tr><td>5</td><td>13</td><td>16</td></tr></table>

Note that yield vols are annualized. The yield curve implies the following discount factors:

$$

\begin{array}{l} D (0, 1) = \frac {1}{1 . 1} = 0. 9 0 9 1 \\ D (0, 2) = \frac {1}{1 . 1 1 ^ {2}} = 0. 8 1 1 6 \\ D (0, 3) = \frac {1}{1 . 1 2 ^ {3}} = 0. 7 1 1 8 \\ D (0, 4) = \frac {1}{1 . 1 2 5 ^ {4}} = 0. 6 2 4 3 \\ D (0, 5) = \frac {1}{1 . 1 3 ^ {5}} = 0. 5 4 2 8 \\ \end{array}

$$

Figure 14.3 depicts the lattice structure for the model.  $D(0,1)$  is a one-year debt. Hence at time 1, it expires and pays the face value ( $1). Today, its market value should be the present value which is$ 1 discounted at the one-year rate, which is 10\% as given in the table. Similarly, the two-year bond will pay 1 at time 2 and we know its market value today is the present value at 11\%. Hence, we need to solve for the two prices at time 1.

$$

D (0, 1) = 0. 9 0 9 1 \longrightarrow D (1, 1) = 1

$$

$$

D (0, 2) = 0. 8 1 1 6 \begin{array}{c c c} & D (1, 2, 1) = ? & D (2, 2, 1) = 1 \\ & D (1, 2, 0) = ? & D (2, 2, 0) = 1 \end{array}

$$

Figure 14.3: Bond Price Lattice

Assume probabilities to be  $1/2$  and  $1/2$ . Then it must be the case that:

$$

D (0, 2) = \frac {1}{2} [ D (1, 2, 1) + D (1, 2, 0) ] D (0, 1) \tag {14.7}

$$ that is


$$
5. 8 1 1 6 = \frac {1}{2} \left(\frac {1}{1 + r _ {1 1}} + \frac {1}{1 + r _ {1 0}}\right) \times 0. 9 0 9 1
$$

Two unknowns cannot be solved with one equation. The other equation we need comes from the volatility. In the standard binomial model, we get:

$$

\sigma = \frac {\ln \frac {u}{d}}{2} = \frac {\ln \frac {r _ {1 1}}{r _ {1 0}}}{2} = 0. 1 9 \tag {14.8}

$$

Hence we solve for  $r_{11}$  and  $r_{10}$  as  $14.32\%$  and  $9.79\%$  respectively. Also,  $\bar{r} = 11.84\%$  and  $u = 1.209$  (or  $d = 1 / u = 0.827$ ).

The lattice is now extended to include one more period, as demonstrated as follows:

$$

D (0, 1) = 0. 9 0 9 1 \xrightarrow {r _ {0} = 10 \%} D (1, 1) = 1

$$

$$

\begin{array}{c} D (1, 2, 1) = . 8 7 4 7 \xrightarrow {r _ {1 1} = 1 4 . 3 2 \%} D (2, 2, 1) = 1 \\ D (0, 2) = 0. 8 1 1 6 \\ \hline \end{array}

$$

$$

D (0, 3) = 0. 7 1 1 8 \begin{array}{c c} D (1, 3, 1) = ? & D (2, 3, 2) =? \xrightarrow {r _ {2 2} = \overline {{r}} u ^ {2}} D (3, 3, 2) = 1 \\ D (1, 3, 0) = ? & D (2, 3, 1) =? \xrightarrow {r _ {2 1} = \overline {{r}}} D (3, 3, 1) = 1 \\ & D (2, 3, 0) =? \xrightarrow {r _ {2 0} = \overline {{r}} \frac {1}{u ^ {2}}} D (3, 3, 0) = 1 \end{array}

$$

Figure 14.4: Bond Price Lattice

To solve for the third period, we need the following two equations:

$$

D (0, 3) = \frac {1}{2} [ D (1, 3, 1) + D (1, 3, 0) ] D (0, 1) = 0. 7 1 1 8 \tag {14.9}

$$ and


$$

\sigma = \frac {1}{2} \ln \left[ \frac {\sqrt {\frac {1}{D (1 , 3 , 1)}} - 1}{\sqrt {\frac {1}{D (1 , 3 , 0)}} - 1} \right] = 0. 1 8 \tag {14.10}

$$ where


$$

D (1, 3, 1) = 1 / _ {2} \{D (2, 3, 2) + D (2, 3, 1) \} D (1, 2, 1)

$$

$$

D (1, 3, 0) = 1 / _ {2} \{D (2, 3, 1) + D (2, 3, 0) \} D (1, 2, 0)

$$ and in turn,


$$

D (2, 3, 2) = \frac {1}{1 + \bar {r} u ^ {2}}

$$

$$

D (2, 3, 1) = \frac {1}{1 + \bar {r} u}

$$

$$

D (2, 3, 0) = \frac {1}{1 + \bar {r} / u ^ {2}}

$$

Again, two equations and two unknowns solve for  $\bar{r}$  and  $u$  to be  $13.77\%$  and  $1.1877\%$  respectively. As a result, the short rates in period 2 are  $r_{22} = 19.42\%$ ,  $r_{21} = 13.77\%$ , and  $r_{20} = 9.76\%$ . Continuing this process, we can arrive at all the short rates as follows:

$$ r _ {33} = 21.79 \%; r _ {32} = 16.06 \%; r _ {31} = 11.83 \%; r _ {30} = 8.72 \%
$$

$$ r _ {44} = 25.52 \%; r _ {43} = 19.48 \%; r _ {42} = 14.86 \%; r _ {41} = 11.34 \%; r _ {40} = 8.65 \%
$$

# 14.4.3 The Continuous Time Limit

As in the H-Lee model, we can work out the continuous time limit of the Black-Derman-Toy model as follows:

$$ d \ln r = \left(\theta (t) + \frac {\sigma^ {\prime} (t)}{\sigma (t)} \ln r\right) d t + \sigma (t) d W (t) \tag {14.11}
$$ where  $\theta(t)$  is a time-dependent function (as in the Ho-Lee model) that is used to fit the yield curve. Furthermore, unlike the Ho-Lee model, the volatility function  $\sigma(t)$  is also time dependent, which is of course to fit the volatility curve.


# 14.4.4 Black-Karasinski Model

The Black-Karasinski (BK) model is an extension to the BDT model. The BK model is to include mean reversion in the drift term:

$$ d \ln r = \kappa (t) (\theta (t) - \ln r) d t + \sigma (t) d W (t) \tag {14.12}
$$

This can be readily compared to the Hull-White model (shown separately in the next subsection) that is extensions of the Vasicek (normal) and the CIR (square-root) models.

# 14.5 Hull-White Model

The Hull-White model is to make fixed parameters in the Vasicek (first equation) and the CIR model (second equation) time dependent.

$$ d r = \kappa (t) (\theta (t) - r) d t + \sigma (t) d W (t)
$$

$$ d r = \kappa (t) (\theta (t) - r) d t + \sigma (t) \sqrt {r} d W (t) \tag {14.13}
$$

From the Hull-White model and the BK model, we can see that by making the parameters time dependent functions, we can then fit the yield curve (by using the reverting level  $\theta(t)$ ) and the volatility curve (by using either  $\kappa(t)$  or  $\sigma(t)$  or both - note that both are important contributors to the volatility in that fast/slow mean reversion results in low/high volatility.)

# 14.6 Heath-Jarrow-Morton Model

The Heath-Jarrow-Morton (HJM) model is not a model but a class of models. The major contribution of the HJM model is its discovery of, now known as, "drift adjustment". Basically, Heath, Jarrow and Morton discovered that the drift term of the forward rate process cannot be arbitrarily determined but a function of the volatility curve. This is drastically different from the short rate process (such as CIR and Vasicek) where the short rate drift can be freely determined. Financial industry finds this to be extremely convenient and it needs a model to be able to calibrate to both yield and volatility curves. The HJM model provides such convenience, that it can fit both curves easily simultaneously.

The HJM model is a forward rate model so the Ho-Lee model is its close cousin. In fact, the Ho-Lee model is a special case of the HJM model by setting the volatility as a constant. They both take the forward curve as given and adopt Gaussian dynamics (although in theory the HJM model can adopt other forms of dynamics but the Gaussian dynamics remain as the most popular choice.)

There is a variation of the HJM model, developed by Miltersen, Sandmann, and Sondermann (1997) and Brace, Gatarek, and Musiela (1997), known as the LIBOR market model (LMM) that builds dynamics on discrete forward rates as opposed to continuous time forward rates. In doing so, they can avoid the Gaussian dynamics and introduce the log normal dynamics that do not permit negative interest rates. Furthermore, by adopting the log normal dynamics, many interest rate options can be priced by the Black-Scholes formula. Unfortunately, the drift adjustment for the discrete forward rates are much more complex than the drift adjustment of the HJM model. European banks tend to use the LMM yet the American banks tend to use the HJM model.

The HJM model is based upon the forward yield curve, as opposed to the spot yield curve. We write the spot (instantaneous) rate process generically as follows:

$$ d r (t) = \theta (r, t) d t + \sigma (r, t) d \hat {W} \tag {14.14}
$$ where  $\theta(r, t)$  and  $\sigma(r, t)$  are drift and diffusion of the process respectively and they can be functions of both  $r$  and  $t$ .  $P(t, T)$  is the price of a zero-coupon bond (or discount factor) that pays $1 at time  $T$ . Then, by Ito (subscripts represent partial derivatives),


$$

\begin{array}{l} d P (t, T) = P _ {r} (t, T) d r + ^ {1} / _ {2} P _ {r r} (t, T) (d r) ^ {2} + P _ {t} (t, T) \\ = r (t) P (t, T) d t + P _ {r} (t, T) \sigma (r, t) d \hat {W} \tag {14.15} \\ = r (t) P (t, T) d t + v (t, T) P (t, T) d \hat {W} \\ \end{array}

$$ where  $v(t,T) = \sigma (r,t)P_r(t,T) / P(t,T)$ . Or equivalently,

$$
\begin{array}{l} d \ln P (t, T) = \frac {1}{P (t , T)} d P (t, T) - \frac {1}{2 P (t , T) ^ {2}} (d P (t, T)) ^ {2} \\ = \frac {1}{P (t , T)} \left(P _ {r} (t, T) d r + \frac {1}{2} P _ {r r} (t, T) (d r) ^ {2} + P _ {t} (t, T) d t\right) \\ - \frac {1}{2 P (t , T) ^ {2}} P _ {r} ^ {2} (t, T) (d r) ^ {2} \tag {14.16} \\ = r d t + \frac {P _ {r} (t , T)}{P (t , T)} \sigma (r, t) d \hat {W} - \frac {1}{2} \left(\frac {P _ {r} (t , T)}{P (t , T)} \sigma (r, t)\right) ^ {2} d t \\ = \left(r - \frac {v (t , T) ^ {2}}{2}\right) d t + v (t, T) d \hat {W} \\ \end{array}
$$

For most of the cases, we assume that  $v(t,T)$  is only deterministic. Note that:

$$ v (t, t) = 0 \tag {14.17}
$$

$$ v (T, T) = 0
$$

This indicates that volatility is 0 for the current price (which is a constant) and also is 0 when the bond approaches maturity (which is also a constant - face value).

The forward rate is defined as:

$$ f (t, T) = - \frac {\partial \ln P (t , T)}{\partial T} \tag {14.18}
$$

As a result,

$$
\begin{array}{l} d f (t, T) = - \frac {\partial}{\partial T} d \ln P (t, T) \\ = - \frac {\partial}{\partial T} \left[ \left(r - \frac {v (t , T) ^ {2}}{2}\right) d t + v (t, T) d \hat {W} \right] \tag {14.19} \\ = v (t, T) \frac {\partial v (t , T)}{\partial T} d t - \frac {\partial v (t , T)}{\partial T} d \hat {W} \\ \end{array}
$$

This proves that the drift term of the forward rate dynamics do not depend on anything but the volatility function. The drift term in the above equation is known as the "drift adjustment".

Usually, people would like to write (14.19) as follows:

$$ d f (t, T) = \left[ w (t, T) \int_ {t} ^ {T} w (t, u) d u \right] d t - w (t, T) d \hat {W} \tag {14.20}
$$ where


$$ w (t, T) = \frac {\partial v (t , T)}{\partial T}
$$

Recall the forward measure discussed earlier. The change of measure from the risk-neutral to forward is precisely  $v(t,T)$ . As a result, the forward rate is a martingale under the forward measure.

$$
\begin{array}{l} d f (t, T) = v (t, T) \frac {\partial v (t , T)}{\partial T} d t - \frac {\partial v (t , T)}{\partial T} d \hat {W} \tag {14.21} \\ = - \frac {\partial v (t , T)}{\partial T} d \tilde {W} ^ {(T)} \\ \end{array}
$$

Note that equation (14.21) describes the evolution of the entire forward curve (i.e. for all  $T$ ) and each forward rate is a martingale under its corresponding forward measure  $\tilde{W}^{(T)}$ .

# 14.6.1 Example 1 - Ho-Lee Model

The Ho-Lee model has the following continuous time short rate process (under the risk-neutral measure) as follows (same as  $(\ref{eq:1})$ ):

$$ d r = \theta (t) d t + \sigma d \hat {W} \tag {14.22}
$$

Note that from  $(\ref{eq:1})$  we can write

$$
- \frac {\partial}{\partial T} \ln P (t, T) = \int_ {t} ^ {T} \theta (u) d u + r (t) - \frac {1}{2} \sigma^ {2} (T - t) ^ {2} \tag {14.23}
$$

As a result,

$$
\begin{array}{l} d f (t, T) = d \left[ - \frac {\partial}{\partial T} \ln P (t, T) \right] \\ = - \frac {\partial}{\partial T} d \ln P (t, T) \tag {14.24} \\ = - \theta (t) d t + d r (t) + \sigma^ {2} (T - t) d t \\ = \sigma d \hat {W} + \sigma^ {2} (T - t) d t \\ \end{array}
$$

This satisfies the HJM drift restriction that  $\sigma \int_t^T\sigma du = \sigma^2 (T - t)$

Another interesting result for the Ho-Lee model using the HJM framework is that the short rate process can be expressed in a form of forward curve without the drift term  $\theta(t)$ . Combining (14.18) and (14.24) with  $(\ref{eq:14.24})$ , we obtain:

$$ r (T) = f (t, T) + \frac {1}{2} \sigma^ {2} (T - t) ^ {2} + \int_ {t} ^ {T} \sigma d \hat {W} (u) \tag {14.25}
$$

This result clearly demonstrates that the Ho-Lee model will generate exploding short rates. That is  $\hat{\mathbb{E}}[r(T)] \to \infty$  as  $T \to \infty$ .

# 14.6.2 Example 2 - Vasicek Model

Note that  $-\ln P(t,T) = rF(t,T) + G(t,T)$  and  $\frac{\partial F(t,T)}{\partial t} = \alpha F(t,T) - 1$ . As a result:

$$
\begin{array}{l} - d \ln P (t, T) = F (t, T) d r + r \frac {\partial F (t , T)}{\partial t} d t + \frac {\partial G (t , T)}{\partial t} d t \\ = F (t, T) \left[ \alpha \left(\mu - \frac {\sigma \lambda}{\alpha} - r\right) d t + \sigma d \hat {W} \right] + r (\alpha F (t, T) - 1) d t \\ + \left(\mu - \frac {\sigma^ {2}}{2 \sigma^ {2}} - \frac {\sigma \lambda}{\alpha}\right) (- \alpha F (t, T)) d t + \frac {\sigma^ {2}}{2 \alpha} F (t, T) (\alpha F (t, T) - 1) d t \\ = F (t, T) \sigma d \hat {W} - r d t + \frac {1}{2} (F (t, T) \sigma) ^ {2} d t \tag {14.26} \\ \end{array}
$$

Take derivative with respect to the maturity time  $T$  yields the forward rate process as follows:

$$
\begin{array}{l} - \frac {\partial}{\partial T} d \ln P (t, T) = d f (t, T) \\ = \frac {\partial F (t , T)}{\partial T} \sigma d \hat {W} + F (t, T) \frac {\partial F (t , T)}{\partial T} \sigma^ {2} d t \tag {14.27} \\ = e ^ {- \alpha (T - t)} \sigma d \hat {W} + e ^ {- \alpha (T - t)} \left(\frac {1 - e ^ {- \alpha (T - t)}}{\alpha}\right) \sigma^ {2} d t \\ \end{array}
$$ which verifies the HJM drift restriction result. We shall note that the reversion level,  $\mu$ , disappears from the equation! It is interesting to note that the market price of risk,  $\lambda$ , also disappears from the equation.


Previously, we argue that continuous forward rates are martingales under the forward measure. It is shown in the chapter that the change of measure required from the risk-neutral measure to the forward measure under the Vasicek model is:

$$

\begin{array}{l} d \tilde {W} ^ {(T)} = d \hat {W} - \frac {\partial P (t , T) / \partial r}{P (t , T)} \sigma d t \tag {14.28} \\ = d \hat {W} + F (t, T) \sigma d t \\ \end{array}

$$ and as a result the above equation becomes:


$$ d f (t, T) = e ^ {- \alpha (T - t)} \sigma d \tilde {W} ^ {(T)} \tag {14.29}
$$ which is a martingale. We also note that the volatility term is time-decaying, which does not cause exploding short rates. To see that:


$$

\begin{array}{l} r (T) = e ^ {- \alpha (T - t)} \left(r (t) + \int_ {t} ^ {T} e ^ {\alpha (s - t)} \alpha \mu d s + \int_ {t} ^ {T} e ^ {\alpha (s - t)} \sigma d \hat {W} (s)\right) \\ = r (t) e ^ {- \alpha (T - t)} + \mu \left(1 - e ^ {- \alpha (T - t)}\right) + \sigma e ^ {- \alpha (T - t)} \int_ {t} ^ {T} e ^ {\alpha (s - t)} d \hat {W} (s) \tag {14.30} \\ = r (t) \frac {\partial F (t , T)}{\partial T} + \alpha \mu F (t, T) + \sigma e ^ {- \alpha (T - t)} \int_ {t} ^ {T} e ^ {\alpha (s - t)} d \hat {W} (s) \\ \end{array}

$$

From equation  $(\ref{eq:1})$  , we can write:

$$

\begin{array}{l} - \ln P (t, T) = r F (t, T) + G (t, T) \\ f (t, T) = \frac {\partial}{\partial T} (- \ln P (t, T)) \\ = r \frac {\partial F (t , T)}{\partial T} + \frac {\partial G (t , T)}{\partial T} \\ = r \frac {\partial F (t , T)}{\partial T} + \left(\mu - \frac {\sigma^ {2}}{2 \alpha^ {2}}\right) \left(1 - \frac {\partial F (t , T)}{\partial T}\right) + \frac {\sigma^ {2}}{2 \alpha} F (t, T) \frac {\partial F (t , T)}{\partial T} \\ = r \frac {\partial F (t , T)}{\partial T} + \mu \alpha F (t, T) - \frac {\sigma^ {2}}{2 \alpha^ {2}} F (t, T) + \frac {\sigma^ {2}}{2 \alpha} F (t, T) \frac {\partial F (t , T)}{\partial T} \tag {14.31} \\ \end{array}

$$

Combining equations (14.30) and (14.31), we can derive the following result:

$$

\begin{array}{l} r (T) = f (t, T) + \frac {\sigma^ {2}}{2 \alpha} F (t, T) - \frac {\sigma^ {2}}{2 \alpha} F (t, T) \frac {\partial F (t , T)}{\partial T} + \sigma e ^ {- \alpha (T - t)} \int_ {t} ^ {T} e ^ {\alpha (s - t)} d \hat {W} (s) \\ = f (t, T) + \frac {\sigma^ {2}}{2 \alpha} F (t, T) \left(1 - \frac {\partial F (t , T)}{\partial T}\right) + \sigma e ^ {- \alpha (T - t)} \int_ {t} ^ {T} e ^ {\alpha (s - t)} d \hat {W} (s) \\ = f (t, T) + \frac {\sigma^ {2}}{2} F ^ {2} (t, T) + \sigma e ^ {- \alpha (T - t)} \int_ {t} ^ {T} e ^ {\alpha (s - t)} d \hat {W} (s) \tag {14.32} \\ \end{array}

$$

Note that the middle term is the same as the extra term under the forward measure for the short rate. Unlike the Ho-Lee model, the Vasicek model will not generate exploding short rates. As  $T \to \infty$ ,  $\hat{\mathbb{E}}[r(T)] = f(t,T) + \frac{\sigma^2}{2\alpha^2}$ .

To build a lattice or a Monte-Carlo model for the Vasicek model (say for American option pricing), it is convenient to compute the variance of the last term of equation (14.32) as:

$$

\begin{array}{l} \operatorname {v a r} \left[ \sigma e ^ {- \alpha (T - t)} \int_ {t} ^ {T} e ^ {\alpha (s - t)} d \hat {W} (s) \right] = \sigma^ {2} e ^ {- 2 \alpha (T - t)} \int_ {t} ^ {T} e ^ {2 \alpha (s - t)} d s \tag {14.33} \\ = \sigma^ {2} \frac {1 - e ^ {- 2 \alpha (T - t)}}{2 \alpha} \\ \end{array}

$$ and hence (14.32) can be written as:


$$ r (T) = f (t, T) + \frac {\sigma^ {2}}{2} F ^ {2} (t, T) + \sigma \sqrt {\frac {1 - e ^ {- 2 \alpha (T - t)}}{2 \alpha}} z \tag {14.34}
$$ where  $z$  is a standard Normal variable. In simulations, for any given future time  $T > t$ , we can simulate standard normal random variables and then linearly transform it to obtain the instantaneous short rate.


# 14.6.3 Example 3 - Cox-Ingersoll-Ross Model

Note that  $A(t,T)$  and  $B(t,T)$  satisfy the following ordinary differential equations:

$$

\begin{array}{l} \alpha B (t, T) + \frac {1}{2} \sigma^ {2} B (t, T) - \frac {\partial B (t , T)}{\partial t} - 1 = 0 \\ \partial A (t, T) \quad 1 \end{array} \tag {14.35}

$$

$$

\frac {\partial A (t , T)}{\partial t} \frac {1}{A (t , T)} - \alpha \mu B (t, T) = 0

$$

Recall the zero-coupon bond pricing model in Chapter ?? as  $-\ln P(t,T) = rB(t,T) - \ln A(t,T)$ . We can then easily take the derivative as follows:

$$

\begin{array}{l} - d \ln P (t, T) = B (t, T) d r + r \frac {\partial B (t , T)}{\partial t} d t - \frac {\partial A (t , T)}{\partial t} \frac {1}{A (t , T)} d t \\ = B (t, T) \left[ (\alpha \mu - (\alpha + \lambda) r) d t + \sigma \sqrt {r} d \hat {W} \right] (14.36) \\ + r \left((\alpha + \lambda) B (t, T) + \frac {1}{2} \sigma^ {2} B ^ {2} (t, T) - 1\right) d t - \alpha \mu B (t, T) d t (14.36) \\ = - r d t + \sigma \sqrt {r} B (t, T) d \hat {W} + \frac {1}{2} \sigma^ {2} r B ^ {2} (t, T) d t \\ \end{array}

$$

Taking the derivative with respect to the maturity time  $T$ , we obtain:

$$

\begin{array}{l} - \frac {\partial}{\partial T} d \ln P (t, T) = d f (t, T) \\ = \sigma \sqrt {r} \frac {\partial B (t , T)}{\partial T} d \hat {W} + \sigma^ {2} r B (t, T) \frac {\partial B (t , T)}{\partial T} d t \tag {14.37} \\ \end{array}

$$

Note that, similar to the Vasicek model, the reverting level,  $\mu$ , disappears from the equation. However, the market price of risk still remains. To rewrite the above equation under the forward measure, we note that the Girsanov theorem under the CIR model is:

$$

\begin{array}{l} d \tilde {W} ^ {(T)} = d \hat {W} - \frac {\partial P (t , T) / \partial r}{P (t , T)} \sigma \sqrt {r} d t \tag {14.38} \\ = d \hat {W} + B (t, T) \sigma \sqrt {r} d t \\ \end{array}

$$

Substituting this change of measure back to the equation (14.37), we arrive at the following:

$$ d f (t, T) = \sigma \sqrt {r} \frac {\partial B (t , T)}{\partial T} d \tilde {W} ^ {(T)} \tag {14.39}
$$ which is a martingale. This equation and equation (14.29) verify that continuous forward rates are martingales under the forward measure, as argued in Chapter ??


Given that forward measure is maturity dependent  $(T)$ , each forward rate (with maturity  $T$ ) is a martingale under its own measure. This is quite different from the risk-neutral measure that "one measure fits all".

# 14.7 LMM (LIBOR Market Model) and Shifted LMM

Besides the HJM model, another popular model that takes market prices as given is the LIBOR market model (LMM). The LMM can take European option prices (e.g. extracted from caps and floors or swaptions) directly as given, which makes it much easier to use than the HJM model. This advantage is a consequence of the LMM modeling discrete forward rates as opposed to continuous forward rates as in the HJM model.

The LIBOR Market Model (LMM) was first introduced by Miltersen, Sandmann, and Sondermann (1997) and Brace, Gatarek, and Musiela (1997). They argue that discrete forward rates should follow log normal distributions. In doing so, the European options extracted from caps and floors (or swaptions) can then be priced by the Black-Scholes formula.


However, due to its construction by nature, it is often compromised by an approximation in the drift adjustment known as "freezing the drift". While there has been no consensus, many believe that it is such an approximation that causes failures in the valuation of the interest rate contracts during the financial crisis in 2008. For example, Gerhold (2010) discusses the tail behavior of the LMM and Gasper and Pimental (2015) discuss how vulnerable this problem is during large yield curve changes, and document large failures of the model during the 2008 crisis. The introduction of "freezing" to the LMM is the result of the "reduced-form" design of the LMM which assumes separately each forward measure (terminal date) and hence an exogenous correlation must be given.

Following Chapter ?? and defining a discrete forward rate as:  $f(t, T_i, T_j)$  where  $t < T_i < T_j$ . This is a forward rate on a future LIBOR, denoted  $\ell(T_i, T_j)$ . We also denote  $1 + \text{LIBOR}$  as  $L(t, T) = 1 + \ell(t, T)$  for any  $t < T$ . This will be used later. Later, we shall show that the forward rate is an expectation of the future LIBOR under the  $T_j$ -forward measure. Also, by definition,  $f(T_i, T_i, T_j) = \ell(T_i, T_j)$ .

The LMM assumes that  $f(t, T_i, T_j)$  follows a log-normal process. As a result, an option (European) written on this forward rate can be priced by the Black-Scholes model:

$$

C (t, T, \kappa) = P (t, T _ {i}) [ f (t, T _ {i}, T _ {j}) N (d _ {+}) - \kappa N (d _ {-}) ] \tag {14.40}

$$ where


$$ d _ {\pm} = \frac {\ln f (t , T _ {i} , T _ {j}) - \ln \kappa \pm 1 / 2 \sigma^ {2} (T - t)}{\sigma \sqrt {T - t}}
$$ and  $P(t, T_i)$  is the risk-free discount factor,  $\kappa$  is the strike (rate),  $\sigma$  is the volatility of the log of the forward rate  $f(T_i, T_i, T_j)$  (which is equal to  $\ell(T_i, T_j)$ ).


To assure that such an assumption does not violate arbitrage, the LMM (for example, see Brigo and Mercurio (2006)) consists of the drift term of the forward rate, unfortunately, is stochastic as follows:

$$

\begin{array}{l} \frac {d f (t , T _ {k - 1} , T _ {k})}{f (t , T _ {k - 1} , T _ {k})} = \zeta (t, T _ {k - 1}, T _ {k}) d \tilde {W} ^ {(T _ {k})} (t) \\ = - \zeta (t, T _ {k - 1}, T _ {k}) \sum_ {j = k + 1} ^ {n} \frac {\rho_ {k , j} \tau_ {j} \zeta (t , T _ {j - 1} , T _ {j}) f (t , T _ {j - 1} , T _ {j})}{1 + \tau_ {j} f (t , T _ {j - 1} , T _ {j})} d t \tag {14.41} \\ + \zeta (t, T _ {k - 1}, T _ {k}) d \tilde {W} ^ {(T _ {n})} (t) \\ \end{array}

$$ where  $\zeta(t, T_{j-1}, T_j)$  is the volatility,  $\tau_j = T_j - T_{j-1}$  and  $\rho_{i,j}$  is the correlation between two separate measures  $d\tilde{W}^{(T_i)}(t)$  and  $d\tilde{W}^{(T_j)}(t)$ , which is difficult to define. As a result a "freezing" action is adopted and  $\rho_{i,j}$  are regarded as constants at the current time. Apparently this assumption is quite restrictive in that during the crisis, it failed to explain the drastic changes in the interest rate dynamics, as pointed out by Gaspar and Pimentel (2015).

From the Vasicek model (see Chapter ??), we know that all zero-coupon bond prices are log-normally distributed. Hence, any discrete forward rate (between  $T_{i}$  and  $T_{j}$ ) should consequently follow a shifted-log-normal distribution, since:

$$ f (t, T _ {i}, T _ {j}) = \frac {P (t , T _ {i})}{P (t , T _ {j})} - 1 \tag {14.42}
$$ where  $T_{i} < T_{j}$ . Each bond price is log-normally distributed and hence the ratio  $\frac{P(t,T_i)}{P(t,T_j)}$  is also log-normally distributed. Subtracting 1 is to shift the log-normal distribution by 1 and hence the lowest forward rate is  $-100\%$ .


It is shown later that doing so renders the "freezing" of the drift unnecessary. The drift adjustment is then exact and directly connected to the volatility of the bond. Finally, applying the forward measures, we can achieve the drift adjustment between any two two chosen dates (e.g.  $T_{i}$  and  $T_{j}$ ).

Furthermore, for  $f(t,T_j,T_{j+1})$  to be shifted log-normal helps resolve the distributional issues in the market that  $f(t,T_j,T_{j+1})$  is close to normal distribution when its level is low and log-normal when its level is high. This can be easily seen if we express  $1 + f(t,T_j,T_{j+1})$  which follows a log-normal distribution as an exponential function: that is  $1 + f(t,T_j,T_{j+1}) = e^x$  where  $x$  is normally distributed. Then  $f(t,T_j,T_{j+1}) = e^x - 1$ . When  $f(t,T_j,T_{j+1})$  is high,  $x$  is high, and  $f(t,T_j,T_{j+1})$  follows a shifted log-normal distribution. When  $f(t,T_j,T_{j+1})$  is low,  $x$  is low, and  $f(t,T_j,T_{j+1}) = e^x - 1 \approx 1 + x - 1 = x$  is very close to a normal distribution.

To correct the problems of the existing LMM and introduce a new, revised LMM, or shifted-LMM, we leverage upon the forward measure discussion in Chapter ??. The notation used here also follows what it is in Chapter ??. From Chpater

$\ref{eq:1}$ , we know that the forward measure is maturity dependent. In other words, for a current time  $t$ , there are a set of forward measures,  $\langle T_1,\dots ,T_n\rangle$ , one for each bond.

Recall equation  $(\ref{eq:1})$  from Chapter  $\ref{eq:1}$  (under the risk-neutral measure):

$$

\frac {d P (t , T)}{P (t , T)} = r (t) d t + v (t, T) d \hat {W} (t) \tag {14.43}

$$ and also the change of measure between the risk-neutral measure and the  $T$ -forward measure:

$$ d \tilde {W} ^ {(T)} (t) = - v (t, T) d t + d \hat {W} (t) \tag {14.44}
$$

Furthermore, recall also (from Chapter ??) the forward price to be (for  $T_{i} \leq T_{j}$ ) the ratio of two bond prices:

$$
\Psi (t, T _ {i}, T _ {j}) = \frac {P (t , T _ {j})}{P (t , T _ {i})} \tag {14.45}
$$

Then, we can define the discrete forward rate (plus 1) as:

$$
\begin{array}{l} F (t, T _ {i}, T _ {j}) = \frac {1}{\Psi (t , T _ {i} , T _ {j})} \tag {14.46} \\ = \frac {P (t , T _ {i})}{P (t , T _ {j})} \\ \end{array}
$$

Then, the following two lemmas are true.

Lemma 1.  $F(t, T_i, T_j)$  is  $T_j$ -martingale. This implies: for  $s > t$  and in a limiting case where  $s \to T_i$ , we have:

$$
F (t, T _ {i}, T _ {j}) = \tilde {\mathbb {E}} _ {t} ^ {(T _ {j})} [ L (T _ {i}, T _ {j}) ] \tag {14.47}
$$ where  $L$  is the LIBOR.


□

The proof is given in the Appendix. Note that the above lemma also implies that  $f(t, T_i, T_j) = F(t, T_i, T_j) - 1$  is  $T_{j+1}$ -martingale. This is important, as we shall discuss in details later, in that the current LMM assumes  $f(t,T_i,T_j)$  to be log-normally distributed while we assume  $F(t,T_{j},T_{j + 1})$  to be log-normally distributed (hence  $f(t,T_{j},T_{j + 1})$  is a shifted log-normal).


Lemma 2.  $\Psi (t,T_i,T_j) = F(t,T_i,T_j)^{-1}$  is  $T_{i}$  -martingale. This implies:

$$

\Psi (t, T _ {i}, T _ {j}) = \tilde {\mathbb {E}} _ {t} ^ {(T _ {i})} [ \Psi (s, T _ {i}, T _ {j}) ] \tag {14.48}

$$ for  $s > t$  and in a limiting case where  $s \to T_i$ , we have:

$$
\Psi (t, T _ {i}, T _ {j}) = \tilde {\mathbb {E}} _ {t} ^ {(T _ {i})} [ P (T _ {i}, T _ {j}) ] \tag {14.49}
$$

□

Again, the proof of this Lemma is similar to the proof of Lemma 1 and is given in the Appendix.

The change of measure between any two forward measures under  $T_{i}$  and  $T_{j}$  is:

$$ d \tilde {W} ^ {(T _ {j})} = d \tilde {W} ^ {(T _ {i})} + \xi (t, T _ {i}, T _ {j}) d t \tag {14.50}
$$ where


$$

\xi (t, T _ {i}, T _ {j}) = v (t, T _ {j}) - v (t, T _ {i}) \tag {14.51}

$$ and  $v(\cdot, \cdot)$  is defined in equation (14.43). Furthermore, the dynamics for the discrete forward rate is:

$$
\frac {d F \left(t , T _ {i} , T _ {j}\right)}{F \left(t , T _ {i} , T _ {j}\right)} = \xi \left(t, T _ {i}, T _ {j}\right) d \tilde {W} ^ {\left(T _ {j}\right)} (t) \tag {14.52}
$$

Under the log-normality assumption for the discrete forward rate,  $\xi (t,T_i,T_j)$  is non-stochastic because  $v(t,T_{i})$  and  $v(t,T_{j})$  defined in equation (14.43) are nonstochastic (i.e., not a function of  $\mathbf{r}$ ).

Let's now prove equation (14.50). With log-normality for the discrete forward rate of equation (14.52), we must have the volatility  $\xi(t, T_i, T_j)$  to be non-stochastic. Note that  $\Psi(t, T_i, T_j) = \frac{1}{F(t, T_i, T_j)}$ , we can

$$
\begin{array}{l} d \Psi (t, T _ {i}, T _ {j}) = d \frac {1}{F (t , T _ {i} , T _ {j})} \\ = \frac {- 1}{F \left(t , T _ {i} , T _ {j}\right)} \left(\xi \left(t, T _ {i}, T _ {j}\right) d \tilde {W} ^ {\left(T _ {j}\right)} (t) - \xi \left(t, T _ {i}, T _ {j}\right) ^ {2} d t\right) \tag {14.53} \\ = - \Psi (t, T _ {i}, T _ {j}) \left(\xi (t, T _ {i}, T _ {j}) d \tilde {W} ^ {(T _ {j})} (t) - \xi (t, T _ {i}, T _ {j}) ^ {2} d t\right) \\ = \Psi (t, T _ {i}, T _ {j}) \left(\xi (t, T _ {i}, T _ {j}) d \tilde {W} ^ {(T _ {j})} (t) - \xi (t, T _ {i}, T _ {j}) ^ {2} d t\right) \\ = \xi (t, T _ {i}, T _ {j}) \Psi (t, T _ {i}, T _ {j}) d \tilde {W} ^ {(T _ {i})} (t) \\ \end{array}
$$

Consequently, we obtain:

$$ d \tilde {W} ^ {\left(T _ {j}\right)} (t) = d \tilde {W} ^ {\left(T _ {i}\right)} (t) + \xi (t, T _ {i}, T _ {j}) d t \tag {14.54}
$$

Now we proceed to solve for  $\xi (t,T_i,T_j)$

$$
\begin{array}{l} d \Psi (t, T _ {i}, T _ {j}) = d \frac {P (t , T _ {j})}{P (t , T _ {i})} \\ = \Psi (t, T _ {j}, T _ {j + 1}) \left(\frac {d P (t , T _ {j})}{P (t , T _ {j})} - \frac {d P (t , T _ {i})}{P (t , T _ {i})} - \frac {d P (t , T _ {j})}{P (t , T _ {j})} \frac {d P (t , T _ {i})}{P (t , T _ {i})} + \left[ \frac {d P (t , T _ {i})}{P (t , T _ {i})} \right] ^ {2}\right) \\ = \Psi (t, T _ {j}, T _ {j + 1}) ([ v (t, T _ {j}) - v (t, T _ {i}) ] d \hat {W} (t) - v (t, T _ {j}) v (t, T _ {i}) d t + v (t, T _ {i}) ^ {2} d t) \\ = \xi (t, T _ {i}, T _ {j}) \Psi (t, T _ {i}, T _ {j}) d \tilde {W} ^ {(T _ {i})} (t) \tag {14.55} \\ \end{array}
$$ and hence the change of measure (from the last two lines above) is:


$$

\begin{array}{l} d \tilde {W} ^ {\left(T _ {i}\right)} (t) = d \hat {W} (t) - \frac {v \left(t , T _ {j}\right) v \left(t , T _ {i}\right) + v \left(t , T _ {i}\right) ^ {2}}{v \left(t , T _ {j}\right) - v \left(t , T _ {i}\right)} d t \tag {14.56} \\ = d \hat {W} (t) - v (t, T _ {i}) d t \\ \end{array}

$$ which is consistent with equation (14.44) and:


$$

\xi (t, T _ {i}, T _ {j}) = v (t, T _ {j}) - v (t, T _ {i}) \tag {14.57}

$$ where  $v(r,t,T)$  is defined in equations (14.15) and equation (14.44). We note that (14.57) implies the following property:

$$
\xi (t, T _ {i}, T _ {k}) = \xi (t, T _ {i}, T _ {j}) + \xi (t, T _ {j}, T _ {k}) \tag {14.58}
$$ for all  $i <   j <   k$  .2


Two most popular LIBOR derivative contracts are caps/floors and swpations, both of which are evaluated with a number of future LIBOR "fixing" dates. For a set of discrete forward rates with fixing dates:  $< T_{1} \cdots T_{n} >$  (not necessarily equally spaced), equation (14.52) can be written as:

$$

\begin{array}{l} \frac {d F \left(t , T _ {j} , T _ {j + 1}\right)}{F \left(t , T _ {j} , T _ {j + 1}\right)} = \xi \left(t, T _ {j}, T _ {j + 1}\right) d \tilde {W} ^ {\left(T _ {j + 1}\right)} (t) \tag {14.59} \\ = \xi (t, T _ {j}, T _ {j + 1}) d \tilde {W} ^ {(T _ {j})} (t) + \xi (t, T _ {j}, T _ {j + 1}) ^ {2} d t \\ \end{array}

$$ which is known as the drift adjustment. Recursive substitutions lead to:


$$

\frac {d F \left(t , T _ {j} , T _ {j + k}\right)}{F \left(t , T _ {j} , T _ {j + k}\right)} = \xi \left(t, T _ {j}, T _ {j + k}\right) d \tilde {W} ^ {\left(T _ {j}\right)} (t) + \left\{\sum_ {\ell = 1} ^ {k} \xi \left(t, T _ {j}, T _ {j + \ell}\right) \right\} ^ {2} d t \tag {14.60}

$$

This result is drastically different from and easier than the LMM where the drift adjustment contains a set of correlations across measures (then a freezing condition is imposed to turn the drift adjustment into deterministic).

# 14.7.1 Calibration to Caps

The reason why the LMM gains such popularity is its ease in calibrating to cap prices. Caps (and floors) are traded OTC (over the counter) and quoted by Black's volatility. With the Black formula, one can easily covert the volatility quote into the premium. The LMM provides a theoretical valuation for such a market practice.

we have:

$$

\begin{array}{l} \frac {d F (t , T _ {j - 1} , T _ {j})}{F (t , T _ {j - 1} , T _ {j})} = \xi (t, T _ {j - 1}, T _ {j}) d \tilde {W} ^ {(T _ {j})} \\ = \frac {\xi (t , T _ {j - 1} , T _ {j})}{\xi (t , T _ {j} , T _ {j + 1})} \xi (t, T _ {j}, T _ {j + 1}) d \tilde {W} ^ {(T _ {j})} \\ = \frac {\xi (t , T _ {j - 1} , T _ {j})}{\xi (t , T _ {j} , T _ {j + 1})} \frac {d \Psi (t , T _ {j} , T _ {j + 1})}{\Psi (t , T _ {j} , T _ {j + 1})} \\ \end{array}

$$

The LMM assumes a log-normally distributed LIBOR and hence each caplet in the cap contract is consistent with the Black model (under a different forward measure).

A cap is a collection of caplets which are simple European call options on forward LIBOR rates struck at the cap rate, symbolized as  $\bar{R}$ :

$$

V _ {\text {c a p}} = \sum_ {j = 1} ^ {n} \pi_ {j} \tag {14.61}

$$ where each caplet  $\pi_j$  is the  $j$ -th caplet which is a European call option on LIBOR between  $T_j$  and  $T_{j+1}$ .

As discussed in Chapter ??, a caplet that is a European call option on forward LIBOR can be written as a European put option on price:

$$
\begin{array}{l} \left. \max  \left\{\ell \left(T _ {j}, T _ {j + 1}\right) - \bar {R}, 0 \right\} = \max  \left\{\frac {1}{P \left(T _ {j} , T _ {j + 1}\right)} - 1 - \bar {R}, 0 \right\} \right. \tag {14.62} \\ = \frac {1 + \bar {R}}{P (T _ {j} , T _ {j + 1})} \max \{K - P (T _ {j}, T _ {j + 1}), 0 \} \\ \end{array}
$$ where  $K = 1 / (1 + \bar{R})$ . It is important then to note that although this payoff is paid at time  $T_{j+1}$ , its amount is actually known at time  $T_j$ . Consequently, we can discount it back by one period to be:


$$

P \left(T _ {j}, T _ {j + 1}\right) \max  \left\{\ell \left(T _ {j}, T _ {j + 1}\right) - \bar {R}, 0 \right\} = (1 + \bar {R}) \max  \{K - P \left(T _ {j}, T _ {j + 1}\right), 0 \} \tag {14.63}

$$ and hence we can "conveniently" discount from time  $T_{j}$  which "coincidentally" matches the forward measure needed for the price which is  $T_{j}$ -martingale. The caplet value is the discounted expected value under the risk-neutral measure: $^{5}$

$$
\begin{array}{l} \pi_ {j} = \hat {\mathbb {E}} _ {t} \left[ \exp \left(- \int_ {t} ^ {T _ {j}} r (u) d u\right) (1 + \bar {R}) \max  \{K - P \left(T _ {j}, T _ {j + 1}\right), 0 \} \right] \tag {14.64} \\ = P (t, T _ {j}) (1 + \bar {R}) \tilde {\mathbb {E}} _ {t} ^ {(T _ {j})} [ \max \left\{K - \Psi (T _ {j}, T _ {j}, T _ {j + 1}), 0 \right\} ] \\ \end{array}
$$

Under log-normally distributed forward prices, we have the following caplet formula:

$$
\begin{array}{l} \pi_ {j} = \frac {P (t , T _ {j})}{K} \left\{K N \left(- \frac {\ln \Psi (t , T _ {j} , T _ {j + 1}) - \ln K - 1 / 2 v _ {P , j} ^ {2}}{v _ {P , j}}\right) \right. \tag {14.65} \\ \left. - \Psi (t, T _ {j}, T _ {j + 1}) N \left(- \frac {\ln \Psi (t , T _ {j} , T _ {j + 1}) - \ln K + ^ {1 / 2} v _ {P , j} ^ {2}}{v _ {P , j}}\right) \right\} \\ \end{array}
$$ where


$$

\begin{array}{l} v _ {P, j} ^ {2} = \tilde {\mathbb {V}} [ \ln P (T _ {j}, T _ {j + 1}) ] \\ = \tilde {\mathbb {V}} [ \ln \Psi (T _ {j}, T _ {j}, T _ {j + 1}) ] \tag {14.66} \\ = \int_ {t} ^ {T _ {j}} \xi (u, T _ {j}, T _ {j + 1}) ^ {2} d u \\ \end{array}

$$ under the log-normal assumption. This equation is a more general form than the similar equation in Chapter ?? (equation (10.5)) where the Vasicek model is assumed. Here, we only need the forward volatility,  $\xi(u, T_j, T_{j+1})$ , to be deterministic (please compare equation (10.6) in Chapter ?? and equation (14.66) here).

# 14.7.2 Swap and Swaption Valuation

Unlike caps, swaptions are quoted by premium. Nevertheless, it is still customary for traders to think of their hedges in terms of the log-normal volatility. In other words, Greeks are still calculated by the Black model. As a result, it is equivalent to assuming the swap rate to follow a log-normal distribution. As a result, for this line of reasoning to be mathematically valid, we must also have "some measure" under which the swap rate is a martingale (and hopefully follows a log-normal distribution). A swap measure is therefore defined (see Jamshidian (1989)).

# The Swap Measure

A vanilla interest rate swap contract can be decomposed into a series of forward contracts. Hence, a swap rate, under no arbitrage, can be expressed as a weighted average of forward rates as follows (details are given in Chapter ??):

$$
\begin{array}{l} w (t) = \frac {\sum_ {j = 1} ^ {n} P \left(t , T _ {j}\right) f \left(t , T _ {j} , T _ {j + 1}\right)}{\sum_ {j = 1} ^ {n} P \left(t , T _ {j}\right)} \tag {14.67} \\ = \frac {1 - P (t , T _ {n})}{\sum_ {j = 1} ^ {n} P (t , T _ {j})} \\ \end{array}
$$

Note that a swap has a number of fixing dates between now,  $t$ , and maturity,  $T_{n}$ , so that  $t < T_{1} < \dots < T_{n}$ . For the sake of easy exposition, we shall omit the fixing dates from the swap rate notation. As introduced in Chapter ??, both expressions (line 1 and line 2) are useful. The first expression provides an excellent intuition that a swap rate is a weighted average of forward rates (with weights being  $\frac{P(t,T_j)}{\sum_{j=1}^{n} P(t,T_j)}$ ). The second expression is a quick calculation of the swap rate in that the numerator requires only the last zero coupon bond.

A payer swaption (call) valuation formula is:

$$
\begin{array}{l} \pi_ {w, j, n} = \hat {\mathbb {E}} _ {t} \left[ \exp \left(- \int_ {t} ^ {s} r (u)\right) \sum_ {j = 1} ^ {n} P (s, T _ {j}) \max \{w (s) - w _ {K}, 0 \} \right] \\ = P (t, s) \tilde {\mathbb {E}} _ {t} ^ {(s)} \left[ \sum_ {j = 1} ^ {n} P (s, T _ {j}) \max  \{w (s) - w _ {K}, 0 \} \right] \tag {14.68} \\ = P (t, s) \tilde {\mathbb {E}} _ {t} ^ {(s)} \left[ \sum_ {j = 1} ^ {n} P (s, T _ {j}) \right] \tilde {\mathbb {E}} _ {t} ^ {\Sigma} [ \max \{w (s) - w _ {K}, 0 \} ] \\ = \sum_ {j = 1} ^ {n} P (t, T _ {j}) \tilde {\mathbb {E}} _ {t} ^ {\Sigma} [ \max \{w (s) - w _ {K}, 0 \} ] \\ \end{array}
$$ where  $\tilde{\mathbb{E}}_t^\Sigma$  is the swap measure in which the annuity (i.e.  $\Sigma_{j=1}^n P(s, T_j)$ , symbolized as  $\Sigma$ ) is the numeriare. Then it is clear that the following result holds:


$$

\begin{array}{l} \pi_ {w, j, n} = \sum_ {j = 1} ^ {n} P (t, T _ {j}) \left(w (t) \Pi_ {1} ^ {\Sigma} - w _ {K} \Pi_ {2} ^ {\Sigma}\right) \\ = \sum_ {j = 1} ^ {n} \Psi (t, s, T _ {j}) \left(\frac {w (t)}{P (t , s)} \Pi_ {1} ^ {\Sigma} - w _ {K} \Pi_ {2} ^ {\Sigma}\right) \tag {14.69} \\ \end{array}

$$ where  $\Pi_1^\Sigma$  and  $\Pi_2^\Sigma$  are in-the-money probabilities of the swaption. If the swap rate follows a log-normal distribution, then equation (14.69) can be written as the Black-like formula as follows:

$$ c _ {w, j, n} = \sum_ {j = 1} ^ {n} \Psi (t, s, T _ {j}) \left(\frac {w (t)}{P (t , s)} N \left(\frac {\ln w (t) - \ln w _ {K} - \ln P + 1 / 2 v _ {w , j} ^ {2}}{v _ {w , j}}\right) - w _ {K} N \left(\frac {\ln w (t) - \ln w _ {K} - \ln P - 1 / 2 v _ {w , j} ^ {2}}{v _ {w , j}}\right)\right) \tag {14.70}
$$ where  $v_{w,j}^2 = \tilde{\mathbb{V}}^{(T_j)}[\ln w(T_j)]$ . For equation (14.69) (or (14.70)) to be true, we need, under the swap/annuity measure  $\Sigma$ , that the swap rate is a martingale:


$$ w (t) = \tilde {\mathbb {E}} _ {t} ^ {\Sigma} [ w (s) ] \tag {14.71}
$$ with the following Radon-Nikodym derivative:


$$

\eta (s) = \exp \left(- \int_ {t} ^ {s} r (u) d u\right) \frac {\sum_ {j = 1} ^ {n} P (s , T _ {j})}{\sum_ {j = 1} ^ {n} P (t , T _ {j})} \tag {14.72}

$$

As a result, we have:

$$

\begin{array}{l} \hat {\mathbb {E}} _ {t} \left[ \exp \left(- \int_ {t} ^ {s} r (u) d u\right) \frac {\sum_ {j = 1} ^ {n} P (s , T _ {j})}{\sum_ {j = 1} ^ {n} P (t , T _ {j})} w (s) \right] \\ = \hat {\mathbb {E}} _ {t} \left[ \exp \left(- \int_ {t} ^ {s} r (u) d u\right) \frac {\sum_ {j = 1} ^ {n} P \left(s , T _ {j}\right)}{\sum_ {j = 1} ^ {n} P \left(t , T _ {j}\right)} \right] \tilde {\mathbb {E}} _ {t} ^ {\Sigma} [ w (s) ] \tag {14.73} \\ = \tilde {\mathbb {E}} _ {t} ^ {\Sigma} [ w (s) ] \\ \end{array}

$$

It is easy to verify that  $\hat{\mathbb{E}}_t[\eta (s)] = 1$  as required. Since we know that:

$$ w (s) = \frac {1 - P (s , T _ {n})}{\sum_ {j = 1} ^ {n} P (s , T _ {j})}
$$ and hence equation (14.73) can be alternatively derived as:


$$

\begin{array}{l} \hat {\mathbb {E}} _ {t} \left[ \exp \left(- \int_ {t} ^ {s} r (u) d u\right) \frac {\sum_ {j = 1} ^ {n} P (s , T _ {j})}{\sum_ {j = 1} ^ {n} P (t , T _ {j})} w (s) \right] \\ = \hat {\mathbb {E}} _ {t} \left[ \exp \left(- \int_ {t} ^ {s} r (u) d u\right) \frac {1 - P \left(s , T _ {n}\right)}{\sum_ {j = 1} ^ {n} P \left(t , T _ {j}\right)} \right] \\ = P (t, s) \frac {1}{\sum_ {j = 1} ^ {n} P (t , T _ {j})} \tilde {\mathbb {E}} _ {t} ^ {(s)} [ 1 - P (s, T _ {n}) ] \\ = P (t, s) \frac {1 - \Psi (t , s , T _ {n})}{\sum_ {j = 1} ^ {n} P (t , T _ {j})} \tag {14.74} \\ = \frac {P (t , s) - P (t , T _ {n})}{\sum_ {j = 1} ^ {n} P (t , T _ {j})} \\ = w (t) - \frac {1 - P (t , s)}{\sum_ {j = 1} ^ {n} P (t , T _ {j})} \\ \approx w (t) \\ \end{array}

$$ where the last approximation holds as  $n\to \infty$ . Combining equations (14.73) and (14.74), we can see that  $\tilde{\mathbb{E}}_t^\Sigma [w(s)] = w(t)$  only if  $n\rightarrow \infty$ . In other words, the swap measure is exact only under either infinity maturity or continuous frequency.

# Swaption

Similar to cap valuation, here we demonstrate that the correct swaption valuation is to recognize the swaption contract is a put option on a coupon bond (as opposed to a call option on the swap rate). We first note that the value of a swap at any point in time after time  $t$  is (say  $u$ ) is:

$$
\begin{array}{l} V (u) = \left(w (u) - w (t)\right) \sum_ {j = 1} ^ {n} P (u, T _ {j}) \\ = \left[ w (u) \sum_ {j = 1} ^ {n} P (u, T _ {j}) + P (u, T _ {n}) \right] - \left[ w (t) \sum_ {j = 1} ^ {n} P (u, T _ {j}) + P (u, T _ {n}) \right] \\ = \left[ \sum_ {j = 1} ^ {n} P (u, T _ {j}) f (u, T _ {j - 1}, T _ {j}) + P (u, T _ {n}) \right] - \left[ w (t) \sum_ {j = 1} ^ {n} P (u, T _ {j}) + P (u, T _ {n}) \right] \\ = \text {f l o a t i n g r a t e b o n d - f i x e d r a t e b o n d} \\ = 1 - \Pi (u, \underline {{T}}; w (t)) \tag {14.75} \\ \end{array}
$$

Hence, the swaption payoff is:

$$
\max  \left\{w (u) - w _ {K}, 0 \right\} \sum_ {j = 1} ^ {n} P (u, T _ {j}) = \max  \left\{1 - \Pi (u, \underline {{T}}; w _ {K}), 0 \right\} \tag {14.76}
$$ which is a put option on a coupon bond with the strike price equal to one. The volatility for the coupon bond is usually  $\sqrt{\mathbb{V}[\ln\Pi(s,\underline{T};c)]}$ . Unfortunately this cannot be solved analytically but only numerically.


In a single factor affine framework, we can employ Jamshidian's theorem (1989) which turns a coupon bond option into a portfolio of zero coupon bond options (see Chapter ??). An affine model for the bond can be written as  $P(t,T_j) = A(t,T_j)e^{-r(t)B(t,T_j)}$  where  $A(t,T_j)$  and  $B(t,T_j)$  are deterministic functions. The exact functional forms of  $A(t,T_j)$  and  $B(t,T_j)$  depend on the specification of the model. A general form is provided by Duffie and Kan (1996) where  $A(t,T_j)$  and  $B(t,T_j)$  are solutions to two ordinary differential equations. The Vasicek model is the simplest form in the affine family (see Chapter ?? for details.)

It is well-known in the interest rate world that the cap/floor and swaption markets do not provide consistent log-normal quotes. In other words, using cap quotes (based on Black volatility), one cannot consistently price swaptions. There have been various proposals (such as Brigo and Mercurio, (2006)) that try to reconcile the two markets. However, these are mainly approximations that lack of a coherent underlying model. See Chen, Hsieh, Huang, and Huang (2019), for detailed discussions.

# 14.8 Appendix

# 14.8.1 Stock Option Pricing When the Interest Rate Follows the Ho-Lee Model

In this appendix, we show the equity option pricing model when the interest rate follows the Ho-Lee model. This is a continuation of an Appendix in Chapter ?? In an Appendix of Chapter ??, we show the equity option pricing model when the interest rate follows the Vasicek model. The Vasicek model is an "equilibrium" model but the Ho-Lee model is a no-arbitrage model. We demonstrate the link between the "equilibrium" version of the Ho-Lee model in this Chapter. Now, we shall use this version to derive the equity option model.

From Chapter ??,

$$

V (t, T) = \int_ {t} ^ {T} \left\{\left[ \delta \frac {P _ {r} (u , T)}{P (u , T)} \right] ^ {2} - 2 \rho \sigma \delta \frac {P _ {r} (u , T)}{P (u , T)} + \sigma^ {2} \right\} d u \tag {14.77}

$$

From equation  $(\ref{eq:1})$

$$

\frac {P _ {r} (u , T)}{P (u , T)} = - (T - t) \tag {14.78}

$$

Hence,

$$

\begin{array}{l} V (t, T) = \int_ {t} ^ {T} \left\{\delta^ {2} (T - u) ^ {2} + 2 \rho \sigma \delta (T - u) + \sigma^ {2} \right\} d u \tag {14.79} \\ = \frac {\delta^ {2}}{3} (T - t) ^ {3} + \rho \sigma \delta (T - t) ^ {2} + \sigma^ {2} (T - t) \\ \end{array}

$$

To complete the formula, we write the option model as follows with the substitution of the variance:

$$

C (t) = S (t) N \left(d _ {1}\right) - P (t, T) K N \left(d _ {2}\right) \tag {14.80}

$$ where


$$ d _ {1} = \frac {\ln S (t) - \ln P (t , T) + V (t , T) / 2}{\sqrt {V (t , T)}}
$$

$$ d _ {2} = d _ {1} - V (t, T)
$$

# 14.8.2 Proofs of Lemmas

We prove that  $\Psi(t, T_i, T_j)$  is  $T_i$ -martingale. For  $t < s \leqslant T_j$ .

$$
\begin{array}{l} \tilde {\mathbb {E}} _ {t} ^ {(T _ {i})} [ \Psi (s, T _ {i}, T _ {j}) ] = \tilde {\mathbb {E}} _ {t} ^ {(T _ {i})} \left[ \frac {P (s , T _ {j})}{P (s , T _ {i})} \right] \\ = \frac {1}{P (t , T _ {i})} \hat {\mathbb {E}} _ {t} \left[ \exp \left(- \int_ {t} ^ {T _ {i}} r (u) d u\right) \frac {P (s , T _ {j})}{P (s , T _ {i})} \right] \\ = \frac {1}{P (t , T _ {i})} \hat {\mathbb {E}} _ {t} \left[ \exp \left(- \int_ {t} ^ {T _ {i}} r (u) d u\right) \frac {\hat {\mathbb {E}} _ {s} \left[ \exp \left(- \int_ {s} ^ {T _ {j}} r (u) d u\right) \right]}{\hat {\mathbb {E}} _ {s} \left[ \exp \left(- \int_ {s} ^ {T _ {i}} r (u) d u\right) \right]} \right] \\ = \frac {1}{P (t , T _ {i})} \hat {\mathbb {E}} _ {t} \left[ \hat {\mathbb {E}} _ {s} \left[ \exp \left(- \int_ {t} ^ {T _ {i}} r (u) d u\right) \frac {\hat {\mathbb {E}} _ {s} \left[ \exp \left(- \int_ {u} ^ {T _ {j}} r (u) d u\right) \right]}{\hat {\mathbb {E}} _ {s} \left[ \exp \left(- \int_ {s} ^ {T _ {i}} r (u) d u\right) \right]} \right] \right] \\ = \frac {1}{P (t , T _ {i})} \hat {\mathbb {E}} _ {t} \left[ \exp \left(- \int_ {t} ^ {s} r (u) d u\right) \hat {\mathbb {E}} _ {T} \left[ \exp \left(- \int_ {s} ^ {T _ {i}} r (u) d u\right) \times \right. \right. \\ \left. \begin{array}{l} \hat {\mathbb {E}} _ {s} \left[ \exp \left(- \int_ {s} ^ {T _ {j}} r (u) d u\right) \right] \\ \hline \hat {\mathbb {E}} _ {s} \left[ \exp \left(- \int_ {s} ^ {T _ {i}} r (u) d u\right) \right] \end{array} \right] \\ = \frac {1}{P (t , T _ {i})} \hat {\mathbb {E}} _ {t} \left[ \hat {\mathbb {E}} _ {s} \left[ \exp \left(- \int_ {t} ^ {s} r (u) d u\right) \exp \left(- \int_ {s} ^ {T _ {j}} r (u) d u\right) \right] \right] \\ = \frac {P (t , T _ {j})}{P (t , T _ {i})} = \Psi (t, T _ {i}, T _ {j}) \tag {14.81} \\ \end{array}
$$

Next, we prove that  $F(t,T_i,T_j)$  is  $T_{j}$ -martingale. For  $t < s \leqslant T_{j}$ ,

$$
\begin{array}{l} \tilde {\mathbb {E}} _ {t} ^ {(T _ {j})} [ F (s, T _ {i}, T _ {j}) ] = \tilde {\mathbb {E}} _ {t} ^ {(w)} \left[ \frac {P (s , T _ {i})}{P (s , T _ {j})} \right] \\ = \frac {1}{P (t , T _ {j})} \hat {\mathbb {E}} _ {t} \left[ \exp \left(- \int_ {t} ^ {T _ {j}} r (u) d u\right) \frac {P (s , T _ {i})}{P (s , T _ {j})} \right] \\ = \frac {1}{P (t , T _ {j})} \hat {\mathbb {E}} _ {t} \left[ \exp \left(- \int_ {t} ^ {T _ {j}} r (u) d u\right) \frac {\hat {\mathbb {E}} _ {s} \left[ \exp \left(- \int_ {s} ^ {T _ {i}} r (u) d u\right) \right]}{\hat {\mathbb {E}} _ {s} \left[ \exp \left(- \int_ {s} ^ {T _ {j}} r (u) d u\right) \right]} \right] \\ = \frac {1}{P (t , T _ {j})} \hat {\mathbb {E}} _ {t} \left[ \hat {\mathbb {E}} _ {s} \left[ \exp \left(- \int_ {t} ^ {T _ {j}} r (u) d u\right) \frac {\hat {\mathbb {E}} _ {s} \left[ \exp \left(- \int_ {s} ^ {T _ {i}} r (u) d u\right) \right]}{\hat {\mathbb {E}} _ {s} \left[ \exp \left(- \int_ {s} ^ {T _ {j}} r (u) d u\right) \right]} \right] \right] \\ = \frac {1}{P (t , T _ {j})} \hat {\mathbb {E}} _ {t} \left[ \exp \left(- \int_ {t} ^ {s} r (u) d u\right) \hat {\mathbb {E}} _ {s} \left[ \exp \left(- \int_ {s} ^ {T _ {j}} r (u) d u\right) \times \right. \right. \\ \left. \begin{array}{l} \hat {\mathbb {E}} _ {s} \left[ \exp \left(- \int_ {s} ^ {T _ {i}} r (u) d u\right) \right] \\ \hline \hat {\mathbb {E}} _ {s} \left[ \exp \left(- \int_ {s} ^ {T _ {j}} r (u) d u\right) \right] \end{array} \right] \\ = \frac {1}{P (t , T _ {j})} \hat {\mathbb {E}} _ {t} \left[ \hat {\mathbb {E}} _ {s} \left[ \exp \left(- \int_ {t} ^ {s} r (u) d u\right) \exp \left(- \int_ {s} ^ {T _ {i}} r (u) d u\right) \right] \right] \\ = \frac {P \left(t , T _ {i}\right)}{P \left(t , T _ {j}\right)} = F \left(t, T _ {i}, T _ {j}\right) \tag {14.82} \\ \end{array}
$$

Given,

$$
\tilde {\mathbb {E}} _ {t} ^ {(s)} [ \Psi (T, s, w) ] = \Psi (t, s, w) \tag {14.83}
$$ we have:


$$

\tilde {\mathbb {E}} _ {t} ^ {(s)} \left[ \frac {1}{F (T , s , w)} \right] = \frac {1}{F (t , s , w)} = \frac {1}{\tilde {\mathbb {E}} _ {t} ^ {(w)} [ F (T , s , w) ]} \tag {14.84}

$$

Hence the connection of the two measures is the reciprocal. Under the (log) normality case, this connection is just volatility.


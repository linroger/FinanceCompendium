---
title: "Chapter 4: Binomial Tree Model"
aliases:
  - Binomial Tree Model
parent_directory: MFE Financial Instruments
tags: []
key_concepts: []
cssclasses:
  - academia
linter-yaml-title-alias: Ch 4. Binomial Tree Model
---

# Ch 4. Binomial Tree Model

I. One-Period Binomial Tree  
II. CRR Binomial Tree Model  
III. Estimation and Calibration of  $\mu$  and  $\sigma$  
IV. Dividends and Option Pricing  
V. Introduction of Combinatorial Method

Appendix A. Binomial Tree Model for Jump-Diffusion Processes

- This chapter is devoted to introduce the binomial tree model, which is also known as a kind of lattice model. The lattice models, such as the binomial tree model introduced in this chapter or the finite difference method introduced in the next chapter, are popular numerical methods for pricing options, particularly for American-style options. They are also flexible since only nominal changes of the payoff function are needed for dealing with pricing complex, nonstandard options.

# I. One-Period Binomial Tree

Figure 4-1  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/45ff9e5f-dd3d-4441-8bed-06aafd8502d4/a824c85944f377c6fdfef462d90e9f8cdead2be09db9fac1c1aa85f5bca40c13.jpg)  
(i) Constructing a portfolio: long  $\Delta$  shares and short 1 call

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/45ff9e5f-dd3d-4441-8bed-06aafd8502d4/f7d56cdd292c583b1c65cd9c2e5d1efb22cb9bc8c598668225727694ef11b3f5.jpg)  
Figure 4-2

(ii) Deciding the value of  $\Delta$ : if  $22\Delta - 1 = 18\Delta \Rightarrow$  portfolio is riskless

$$
\Rightarrow 4 \Delta = 1 \Rightarrow \Delta = 0. 2 5.
$$

(iii) Hence, at  $t = 0.25$ , the value of the portfolio is  $22 \cdot 0.25 - 1 = 18 \cdot 0.25 = 4.5$ .

$$
\Rightarrow 2 0 \Delta - c = 4. 5 e ^ {- r 0. 2 5}, \text {w h e r e} \Delta = 0. 2 5 \text {a n d} r = 0. 1 2 \Rightarrow c = 0. 6 3 3.
$$

* Note that the risk free interest rate  $r$  emerges due to the using of no-arbitrage argument.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/45ff9e5f-dd3d-4441-8bed-06aafd8502d4/5c4ad130b04422fec2b69cfabc5c64388c9893525ec0b69f2ad689d6ac5ef355.jpg)  
Figure 4-3  
risk free rate  $r$

$$
\left. \right\rangle_ {“ = ”} \Rightarrow \Delta = \frac {c _ {u} - c _ {d}}{S _ {0} u - S _ {0} d}
$$

$$
\begin{array}{l} \Delta = \frac {c _ {u} - c _ {d}}{S _ {0} u - S _ {0} d} \\ \Rightarrow \frac {c _ {u} - c _ {d}}{S _ {0} u - S _ {0} d} S _ {0} - c = \left(S _ {0} u \frac {c _ {u} - c _ {d}}{S _ {0} u - S _ {0} d} - c _ {u}\right) e ^ {- r T} \\ \Rightarrow c = \frac {c _ {u} - c _ {d}}{u - d} - \left(\frac {c _ {u} - c _ {d}}{u - d} u - c _ {u}\right) e ^ {- r T} \\ \Rightarrow c = e ^ {- r T} \left(\frac {c _ {u} - c _ {d}}{u - d} e ^ {r T} - \frac {(c _ {u} - c _ {d}) u}{u - d} + \frac {(u - d)}{u - d} c _ {u}\right) \\ \Rightarrow c = e ^ {- r T} \left(\frac {\left(c _ {u} - c _ {d}\right) e ^ {r T} - c _ {u} u + c _ {d} u + u c _ {u} - d c _ {u} + c _ {d} d - c _ {d} d}{u - d}\right) \\ = e ^ {- r T} \left(\frac {(e ^ {r T} - d) c _ {u}}{u - d} + \frac {(u - d) c _ {d}}{u - d} - \frac {(e ^ {r T} - d) c _ {d}}{u - d}\right) \\ = e ^ {- r T} \big (\frac {e ^ {r T} - d}{u - d} c _ {u} + \big (1 - \frac {e ^ {r T} - d}{u - d} \big) c _ {d} \big) \\ \end{array}
$$

$\left(\frac{e^{rT} - d}{u - d}\right)$  and  $1 - \frac{e^{rT} - d}{u - d}$  are like binomial probabilities, so they are denoted as  $p$  and  $1 - p$ .

$$
= e ^ {- r T} (p c _ {u} + (1 - p) c _ {d}).
$$

* For different options, the above equation remains valid, but different payoffs  $c_{u}$  and  $c_{d}$  should be considered.

- It is worth noting that  $p$  is not the probability for  $c_{u}$  (or for the upward movement of  $S$ ). However,  $p$  can be regarded as the probability for  $c_{u}$  (or for the upward movement of  $S$ ) in the risk neutral world. This is because in the real world, if the expected stock return is  $\mu$ ,

$$
S _ {0} e ^ {\mu T} = S _ {0} u \cdot q + S _ {0} d \cdot (1 - q) \Rightarrow q = \frac {e ^ {\mu T} - d}{u - d}.
$$

Similarly, in the risk neutral world, since the expected returns for all securities are the same and equal to  $r$ ,

$$
S _ {0} e ^ {r T} = S _ {0} u \cdot p + S _ {0} d \cdot (1 - p) \Rightarrow p = \frac {e ^ {r T} - d}{u - d}.
$$

Therefore,  $p$  and  $1 - p$  are termed as risk neutral probabilities in the binomial tree framework.

- The option pricing equation  $c = e^{-rT}(p \cdot c_u + (1 - p) \cdot c_d)$  in the binomial tree model is consistent with the RNVR because both the expected growth rate of the underlying asset and the discount rate of the option payoff are the risk free rate.
- One can use the upward and downward probabilities in the real world ( $q$  and  $1 - q$  in the binomial tree model), but it is almost impossible to identify a proper discount rate to discount the expected payoff of options, i.e.,

$$
c = e ^ {-? T} (q \cdot c _ {u} + (1 - q) \cdot c _ {d}).
$$

In practice, for securities with more risk or uncertainty, it should apply higher discount rates to future expected payoffs. Furthermore, it is well known that options are riskier than their underlying assets due to the high-leverage characteristic for investing in options. So, it is not suited to employ the expected return for the underlying asset,  $\mu$ , to discount the expected payoff of the option.

If we reconsider the numerical example of the one-period binomial tree in the beginning of this chapter and further assume  $\mu = 16\%$ , then we can derive the probability  $q$  in the real world to be 0.7041. Next by equalizing  $e^{-?T}(q \cdot c_u + (1 - q) \cdot c_d)$  to be 0.633, which is the true option value in the numerical example, we can solve the discount rate for the option to be  $42.58\%$ .

In fact, the proper discount rates for expected payoffs of options depend not only on the expected returns  $(\mu)$  and volatilities  $(\sigma)$  of underlying assets but also on the different  $K$  and  $T$  of options. As a consequence, it is very difficult (if it is possible) to derive theoretical option prices directly in the real world.

# II. CRR Binomial Tree Model

- Lognormal property

If  $X$  is lognormally distributed, i.e.,  $\ln X$  follows a normal distribution with mean  $= E[\ln X]$  and variance  $= \operatorname{var}(\ln X)$ , then  $E[X] = e^{E[\ln X] + \frac{1}{2} \cdot \operatorname{Var}(\ln X)}$ , and  $\operatorname{var}(X) = e^{2 \cdot E[\ln X] + \operatorname{Var}(\ln X)} \cdot (e^{\operatorname{Var}(\ln X)} - 1)$ .

$$
\begin{array}{l} \because \ln S _ {T} \sim N D (\ln S _ {0} + (\mu - \frac {\sigma^ {2}}{2}) T, \sigma^ {2} T) \\ \Rightarrow E [ S _ {T} ] = S _ {0} e ^ {\mu T}, \mathrm {a n d} \operatorname {v a r} (S _ {T}) = S _ {0} ^ {2} e ^ {2 \mu T} (e ^ {\sigma^ {2} T} - 1). \\ \end{array}
$$

$\begin{array}{rl} & {\because \ln S_{t + \Delta t}\sim ND(\ln S_t + (\mu -\frac{\sigma^2}{2})\Delta t,\sigma^2\Delta t)}\\ & {\Rightarrow E[S_{t + \Delta t}] = S_te^{\mu \Delta t}.}\\ & {\Rightarrow \mathrm{var}(S_{t + \Delta t}) = S_t^2 e^{2\mu \Delta t}(e^{\sigma^2\Delta t} - 1)}\\ & {\qquad \approx S_t^2 (1 + 2\mu \Delta t)(1 + \sigma^2\Delta t - 1)\mathrm{(because~}e^x\approx 1 + x\mathrm{~when~}x\to 0)}\\ & {\qquad = S_t^2\sigma^2\Delta t + S_t^2 (2\mu \Delta t)(\sigma^2\Delta t)}\\ & {\qquad \approx S_t^2\sigma^2\Delta t\mathrm{(because~the~term~with~}\Delta t^2\mathrm{~is~relatively~too~small).}} \end{array}$    
(In the next paragraph, I will use this property to derive the parameters  $u,d$  , and  $p$    
in the CRR binomial tree framework.)

- Deriving  $u, d$ , and  $p$  in the CRR (Cox, Ross, and Rubinstein (1979)) binomial tree model, which is the most common and famous binomial tree model.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/45ff9e5f-dd3d-4441-8bed-06aafd8502d4/b722e704230772b40ce1696724566f8404099c13de4abeb7bb4df64de3d95f29.jpg)  
Figure 4-4

(i) Matching mean:  $p \cdot S_t u + (1 - p) \cdot S_t d = E[S_{t + \Delta t}] = S_t e^{r\Delta t}$

$$
\Rightarrow p = \frac {e ^ {r \Delta t} - d}{u - d}.
$$

(ii) Matching variance:  $\mathrm{var}(S_{t + \Delta t}) = E[S_{t + \Delta t}^2 ] - E[S_{t + \Delta t}]^2$

$$
\begin{array}{l} \Rightarrow \sigma^ {2} \Delta t = p \cdot u ^ {2} + (1 - p) \cdot d ^ {2} - [ p \cdot u + (1 - p) \cdot d ] ^ {2} (\text {b o t h s i d e s} \times (1 / S _ {t}) ^ {2}) \\ = p \cdot u ^ {2} + (1 - p) \cdot d ^ {2} - p ^ {2} \cdot u ^ {2} - 2 \cdot p \cdot (1 - p) \cdot u \cdot d - (1 - p) ^ {2} \cdot d ^ {2} \\ = u ^ {2} \cdot (p - p ^ {2}) + [ (1 - p) - (1 - p) ^ {2} ] \cdot d ^ {2} - 2 \cdot p \cdot (1 - p) \cdot u \cdot d \\ = u ^ {2} \cdot p \cdot (1 - p) + (1 - p) \cdot [ 1 - (1 - p) ] \cdot d ^ {2} - 2 \cdot p \cdot (1 - p) \cdot u \cdot d \\ = p \cdot (1 - p) \cdot [ u ^ {2} - 2 \cdot u \cdot d + d ^ {2} ] = p \cdot (1 - p) \cdot (u - d) ^ {2} \\ \end{array}
$$

$$
\begin{array}{l} \parallel p \cdot (1 - p) = p - p ^ {2} = \frac {e ^ {r \Delta t} - d}{u - d} - \frac {e ^ {2 r \Delta t} - 2 \cdot d \cdot e ^ {r \Delta t} + d ^ {2}}{(u - d) ^ {2}} \\ = \frac {e ^ {r \Delta t} \cdot u - u \cdot d - e ^ {r \Delta t} \cdot d + d ^ {2} - e ^ {2 r \Delta t} + 2 \cdot d \cdot e ^ {r \Delta t} - d ^ {2}}{(u - d) ^ {2}} \\ = \frac {e ^ {r \Delta t} (u - d + 2 \cdot d) - u \cdot d - e ^ {2 r \Delta t}}{(u - d) ^ {2}} = \frac {e ^ {r \Delta t} (u + d) - u \cdot d - e ^ {2 r \Delta t}}{(u - d) ^ {2}} \\ \end{array}
$$

$$
\begin{array}{l} \Rightarrow \sigma^ {2} \Delta t = e ^ {r \Delta t} (u + d) - u \cdot d - e ^ {2 r \Delta t} \\ \Rightarrow \sigma^ {2} \Delta t = e ^ {r \Delta t} \left(u + \frac {1}{u}\right) - u \cdot \frac {1}{u} - e ^ {2 r \Delta t} (\mathrm {b y d e f i n i n g} d = \frac {1}{u}) \\ \Rightarrow u + \frac {1}{u} = \frac {\sigma^ {2} \Delta t + 1 + e ^ {2 r \Delta t}}{e ^ {r \Delta t}} \\ = e ^ {- r \Delta t} \sigma^ {2} \Delta t + e ^ {- r \Delta t} + e ^ {r \Delta t} \\ \end{array}
$$

$$
\parallel e ^ {- r \Delta t} \approx (1 - r \Delta t), e ^ {r \Delta t} \approx (1 + r \Delta t), \text {a n d} r \cdot \sigma^ {2} \cdot \Delta t ^ {2} \rightarrow 0
$$

$$
\approx \sigma^ {2} \Delta t + 2 (\text {n o t i n g t h a t t h e e f f e c t o f} r \Delta t \text {o n} u \text {d i s a p p e a r s h e r e a f t e r})
$$

$$
\Rightarrow u ^ {2} - \left(\sigma^ {2} \Delta t + 2\right) u + 1 = 0
$$

$$
\Rightarrow u = \frac {\sigma^ {2} \Delta t + 2 \pm \sqrt {(\sigma^ {2} \Delta t + 2) ^ {2} - 4}}{2} = \frac {\sigma^ {2} \Delta t + 2 \pm \sqrt {\sigma^ {4} \Delta t ^ {2} + 4 \sigma^ {2} \Delta t + 4 - 4}}{2} \quad (\sigma^ {4} \Delta t ^ {2} \rightarrow 0)
$$

$$
= \frac {\sigma^ {2} \Delta t}{2} + 1 \pm \sigma \sqrt {\Delta t}
$$

Since  $\sqrt{\Delta t}$  is far larger than  $\Delta t$  for a small  $\Delta t$ , and  $\sigma^2$  is relatively smaller than  $\sigma \Rightarrow$  we can ignore the first term  $\frac{\sigma^2\Delta t}{2}$

$$
\begin{array}{l} \approx 1 \pm \sigma \sqrt {\Delta t} \\ \approx e ^ {+ \sigma \sqrt {\Delta t}} (\text {b e c a u s e} u > 1 \Rightarrow u \neq e ^ {- \sigma \sqrt {\Delta t}}). \\ \end{array}
$$

- Implementation of the CRR binomial tree model:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/45ff9e5f-dd3d-4441-8bed-06aafd8502d4/97fcb2904bf4b9b3d47ab85850271e1d358eee57e6f51fef9775317b6e8f5d4c.jpg)  
Figure 4-5

1. $S(i,j) = S_0 u^{i-j} d^j$ , for  $0 \leq j \leq i \leq n$  and  $T / n \equiv \Delta t$  
2. $c(n, j) =$  payoff for  $S_0 u^{n - j} d^j$  at maturity  
3. $c(i,j) = e^{-r\Delta t}[p\cdot c(i + 1,j) + (1 - p)\cdot c(i + 1,j + 1)]$  (backward induction)  
4. For American options,  $c(i,j) = \max(c(i,j))$ , exercise value for  $S_0 u^{i-j} d^j$  
5. $c(0,0)$  is the option price today

- Problems of the CRR model: 1)  $p = \frac{e^{r\Delta t} - d}{u - d} = \frac{e^{r\Delta t} - e^{-\sigma\sqrt{\Delta t}}}{e^{\sigma\sqrt{\Delta t}} - e^{-\sigma\sqrt{\Delta t}}}$  is not necessary inside [0, 1] unless  $\Delta t$  is small enough. 2) The approximations used to derive  $\mathrm{var}(S_{t + \Delta t})$  as well as  $u$  and  $d$  are valid only when  $\Delta t$  is very small.
- Another binomial tree model proposed in Jarrow and Rudd (1983): by considering the logarithmic stock price space and the constraint of  $p = 1/2$ , then  $u = e^{(r - \frac{\sigma^2}{2})\Delta t + \sigma \sqrt{\Delta t}}$  and  $d = e^{(r - \frac{\sigma^2}{2})\Delta t - \sigma \sqrt{\Delta t}}$  can be solved as follows.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/45ff9e5f-dd3d-4441-8bed-06aafd8502d4/3abc5053c40d14871ccb58dc3e3bfc3902b4765e0d1fb80b328e67534064f5ba.jpg)  
Figure 4-6

$$
\begin{array}{l} \because \ln S _ {t + \Delta t} \sim N D (\ln S _ {t} + (r - \frac {\sigma^ {2}}{2}) \Delta t, \sigma^ {2} \Delta t) \\ \therefore E [ \ln S _ {t + \Delta t} ] = \ln S _ {t} + (r - \frac {\sigma^ {2}}{2}) \Delta t, \mathrm {v a r} (\ln S _ {t + \Delta t}) = \sigma^ {2} \Delta t \\ \end{array}
$$

Matching mean and variance of  $\ln S_{t + \Delta t}$

$$
\Rightarrow \left\{ \begin{array}{l} p (\ln S _ {t} + \ln u) + (1 - p) (\ln S _ {t} + \ln d) = \ln S _ {t} + (r - \frac {\sigma^ {2}}{2}) \Delta t \\ p (\ln S _ {t} + \ln u) ^ {2} + (1 - p) (\ln S _ {t} + \ln d) ^ {2} - (\ln S _ {t} + (r - \frac {\sigma^ {2}}{2}) \Delta t) ^ {2} = \sigma^ {2} \Delta t \end{array} \right. \tag {2}
$$

In this model,  $p$  is fixed to be 0.5, and only  $u$  and  $d$  are left as unknowns.

From Eq. (1), we can derive

$$
\begin{array}{l} 0. 5 \ln u + 0. 5 \ln d = (r - \frac {\sigma^ {2}}{2}) \Delta t \\ \Rightarrow \ln u = 2 (r - \frac {\sigma^ {2}}{2}) \Delta t - \ln d \\ \parallel \text {d e f i n e} D = \ln d \text {a n d} \mu = (r - \frac {\sigma^ {2}}{2}) \Delta t \\ \Rightarrow \ln u = 2 \mu - D. \\ \end{array}
$$

Replacing  $\ln u$  with  $2\mu -D$  in Eq. (2) yields

$$
\begin{array}{l} 0. 5 (\ln S _ {t} + 2 \mu - D) ^ {2} + 0. 5 (\ln S _ {t} + D) ^ {2} - (\ln S _ {t} + \mu) ^ {2} = \sigma^ {2} \Delta t \\ \Rightarrow (\ln S _ {t} + 2 \mu - D) ^ {2} + (\ln S _ {t} + D) ^ {2} - 2 (\ln S _ {t} + \mu) ^ {2} = 2 \sigma^ {2} \Delta t \\ \Rightarrow D ^ {2} - 2 \mu D + \mu^ {2} - \sigma^ {2} \Delta t = 0 \\ \Rightarrow D = \frac {2 \mu \pm \sqrt {4 \mu^ {2} - 4 (\mu^ {2} - \sigma^ {2} \Delta t)}}{2} = \mu \pm \sigma \sqrt {\Delta t} = \ln d \\ \Rightarrow \ln u = \mu \mp \sigma \sqrt {\Delta t}. \\ \end{array}
$$

Because  $u > d\Rightarrow \left\{ \begin{array}{ll}u = e^{\mu +\sigma \sqrt{\Delta t}} = e^{(r - \frac{\sigma^2}{2})\Delta t + \sigma \sqrt{\Delta t}}\\ d = e^{\mu -\sigma \sqrt{\Delta t}} = e^{(r - \frac{\sigma^2}{2})\Delta t - \sigma \sqrt{\Delta t}} \end{array} \right.$

- Advantages of this alternative binomial tree model: 1) there is no approximation; 2)  $p$  maintains to be a positive number between 0 and 1; 3) the convergence rate is generally better than the CRR model for pricing plain vanilla options.  
- Disadvantages of this alternative binomial tree model is due to  $S_0ud \neq S_0$ : 1) Since there is no stock price layer coinciding with the specified barrier price, it is less efficient to price the family of barrier options. 2) Since there is no stock price layer equal to  $S_0$ , it is impossible to apply a quick method, known as the extended tree model, to estimate some Greek letters, like  $\Delta$ ,  $\Gamma$ , and  $\Theta$ .  
- One possible trinomial tree structure proposed in Hull (2011):

$$
u = e ^ {\sigma \sqrt {3 \Delta t}}, d = \frac {1}{u}, p _ {u} = \sqrt {\frac {\Delta t}{1 2 \sigma^ {2}}} (r - \frac {\sigma^ {2}}{2}) + \frac {1}{6}, p _ {m} = \frac {2}{3}, p _ {d} = - \sqrt {\frac {\Delta t}{1 2 \sigma^ {2}}} (r - \frac {\sigma^ {2}}{2}) + \frac {1}{6},
$$

through matching (i) mean of  $S_{t + \Delta t}$ , (ii) variance of  $S_{t + \Delta t}$ , (iii)  $\sum p_i = 1$ , (iv)  $d = \frac{1}{u}$ , (v)  $p_m = \frac{2}{3}$ , where (iv) and (v) are arbitrarily imposed constraints.

(Refer to Boyle (1986), Kamrad and Ritchken (1991), and Tian (1993) for more trinomial tree structures.)

(Kamrad and Ritchken (1991) and Tian (1993) show that faster error convergence rates can be attained if all of the three branching probabilities in the trinomial tree are close or equal to  $\frac{1}{3}$ .)

# III. Estimation and Calibration of  $\mu$  and  $\sigma$

$$
\begin{array}{l} E \left[ \ln \left(S _ {T} / S _ {0}\right) \right] = \left(\mu - \frac {\sigma^ {2}}{2}\right) T \\ \upharpoonleft \text {b e c a u s e} \\ \end{array}
$$

$$
\ln S _ {T} - \ln S _ {0} \sim N D ((\mu - \frac {\sigma^ {2}}{2}) T, \sigma^ {2} T)
$$

#

$$
\ln \left(E \left[ S _ {T} / S _ {0} \right]\right)
$$

$$
\parallel \text {a s s u m e}
$$

$$
K T
$$

Assume  $S_{1} = S_{0}e^{\eta}$  ( $T = 1$  year)

(  $\eta$  : continuously compounding return per annum)

$(S_{1}$  is stochastic  $\Rightarrow \eta$  follows a distribution)

$$
\Rightarrow \eta = \ln \frac {S _ {1}}{S _ {0}} \sim N D (\mu - \frac {\sigma^ {2}}{2}, \sigma^ {2})
$$

$\Rightarrow \mu - \frac{\sigma^2}{2}$  is the expected value of the continuously compounding return per annum

$$
\begin{array}{l} \Rightarrow E [ S _ {T} / S _ {0} ] = e ^ {K T} \\ \Rightarrow E [ S _ {T} ] = S _ {0} e ^ {K T} \\ \end{array}
$$

$$
\begin{array}{l} (E [ S _ {T} ] \text {i s a k n o w n n u m b e r} \Rightarrow K \text {i s c o n s t a n t}) \\ \Rightarrow K = \mu = \text {e x p e c t e d g r o w t h r a t e a c c o r d i n g t o} \\ \end{array}
$$

i. Considering two trading days,  $t$  and  $t + 1$ ,

we can derive  $S_{t + 1} = S_t \cdot e^{\eta_d}$  and  $\eta_d = \ln \frac{S_{t + 1}}{S_t}$

ii. Calculating the average of  $\ln \frac{S_{t + 1}}{S_t}$  for  $n$  days,

the result is the estimation of  $\mu_d - \frac{\sigma_d^2}{2}$ .

$\Rightarrow$  The geometric average of daily returns estimate the continuously compounding return  $\mu_{d} - \frac{\sigma_{d}^{2}}{2}$

$\Rightarrow$  The standard deviation of the series of daily

$$
\begin{array}{l} \frac {1}{n} \left(\ln \frac {S _ {1}}{S _ {0}} + \ln \frac {S _ {2}}{S _ {1}} + \dots + \ln \frac {S _ {n}}{S _ {n - 1}}\right) \\ = \frac {1}{n} (\ln R _ {1} + \ln R _ {2} + \dots + \ln R _ {n}) \\ = \frac {1}{n} \left(\ln \left(R _ {1} \cdot R _ {2} \dots R _ {n}\right)\right) \\ = \ln \left(R _ {1} \cdot R _ {2} \dots R _ {n}\right) ^ {\frac {1}{n}} \\ \end{array}
$$

$\ln \frac{S_1}{S_0}, \ln \frac{S_2}{S_1}, \dots, \ln \frac{S_n}{S_{n-1}}$  generates the estimation of  $\sigma_d$

i. Considering two trading days,  $t$  and  $t + 1$ ,

$$
\text {t h e n} E \left[ S _ {t + 1} / S _ {t} \right] = e ^ {K _ {d}} \text {a n d} K _ {d} = \ln E \left[ S _ {t + 1} / S _ {t} \right]
$$

ii. Calculating the average of  $\frac{S_{t+1}}{S_t}$  for  $n$  days and

taking the natural log, we can estimate  $K_{d} = \mu_{d}$

$$
\begin{array}{l} \ln \left(\frac {1}{n} \left(\frac {S _ {1}}{S _ {0}} + \frac {S _ {2}}{S _ {1}} + \dots + \frac {S _ {n}}{S _ {n - 1}}\right)\right) \\ = \ln \left(\frac {1}{n} \left(R _ {1} + R _ {2} + \dots + R _ {n}\right)\right) \\ \end{array}
$$

$\Rightarrow$  The arithmetic average of daily returns estimates the daily expected growth rate  $\mu_{d}$  
$\Rightarrow$  The standard deviation of the series of  $\frac{S_{t+1}}{S_t}$  is NOT the estimation of  $\sigma_d$

- Implied volatility (the calibration (校準) of  $\sigma$ )

For any option pricing function  $c(S_0, K, r, \sigma, T)$ ,  $S_0$  is the stock price today,  $K$  and  $T$  can be found in the option contract, and  $r$  is the risk-free rate corresponding to the time to maturity  $T$ . As for  $\sigma$ , it is usually estimated based on the historical stock prices.

However, the market price of an option reflects the consensus of the forward-looking  $\sigma$  of market participants and may not equal the theoretical option value based on the historical  $\sigma$ . Through equalizing  $c(S_0, K, r, \sigma, T)$  and the market option price, it is possible to calibrate  $\sigma$  from the forward-looking viewpoint.

The value of  $\sigma^{*}$  satisfying  $f(\sigma^{*})\equiv c(S_{0},K,r,\sigma^{*},T)$  - market option price  $= 0$  is called the implied volatility. Here two root-finding algorithms are introduced to solve for the implied volatility.

- Bisection Method

First find  $[a_n, b_n]$  such that  $f(a_n)f(b_n) < 0$ . The iterative two steps to find  $[a_{n+1}, b_{n+1}]$  are as follows.

(i) Calculate  $x_{n} = a_{n} + \frac{b_{n} - a_{n}}{2}$  
(ii) If  $f(a_{n})f(x_{n}) < 0 \Rightarrow a_{n + 1} = a_{n}, b_{n + 1} = x_{n}$

$$
\mathrm {e l s e} \Rightarrow a _ {n + 1} = x _ {n}, b _ {n + 1} = b _ {n}
$$

Newton's Method

$$
x _ {n + 1} = x _ {n} - \frac {f (x _ {n})}{f ^ {\prime} (x _ {n})}
$$

Based on the first-order Taylor series:  $f(x) = f(x_{n}) + f^{\prime}(x_{n})(x - x_{n})$

(Find the root of  $f(x)$ , i.e., solve  $f(x) = 0$ .)

$$
\Rightarrow - f (x _ {n}) = f ^ {\prime} (x _ {n}) (x - x _ {n}) \Rightarrow x = x _ {n + 1} = x _ {n} - \frac {f (x _ {n})}{f ^ {\prime} (x _ {n})}
$$

Quadratic convergence:

According to the second-order Taylor series,  $f(x) = f(x_{n}) + f^{\prime}(x_{n})(x - x_{n}) + \frac{f^{\prime\prime}(\xi)}{2} (x - x_{n})^{2},$  where  $\xi$  is between  $x_{n}$  and  $x$ .

Solve  $f(x) = 0$ :

$$
\begin{array}{l} \Rightarrow x - x _ {n} + \frac {f (x _ {n})}{f ^ {\prime} (x _ {n})} = - \frac {f ^ {\prime \prime} (\xi)}{2 f ^ {\prime} (x _ {n})} (x - x _ {n}) ^ {2} \\ \Rightarrow x - x _ {n + 1} = - \frac {f ^ {\prime \prime} (\xi)}{2 f ^ {\prime} (x _ {n})} (x - x _ {n}) ^ {2} \\ \end{array}
$$

(Suppose  $\left| \frac{f''(\xi)}{2f'(x_n)} \right|$  is bounded by a finite number  $M$ , i.e.,  $\left| \frac{f''(\xi)}{2f'(x_n)} \right| \leq M < \infty$ .)

$$
\Rightarrow | x - x _ {n + 1} | \leq M | x - x _ {n} | ^ {2}
$$

(The error is smaller than the product of a finite number and the square of the error of the  $n$ -th iteration.)

# IV. Dividends and Option Pricing

- This section introduces how to modify the option pricing models if the dividend yield  $q$  or known cash dividends  $D$  at the pre-specified time point  $t$  are considered:

Table 4-1 Three Different Models for Dividend Payments  

<table><tr><td>Suppose the time point today is 0</td><td>Black-Scholes Model European</td><td>Binomial Tree Model European</td><td>American</td></tr><tr><td>Model 1: 
Dividend yield q</td><td>S0← S0e−qT</td><td>S0← S0e−qT or p = (r-q)Δt - d / u - d</td><td>p = (r-q)Δt - d / u - d</td></tr><tr><td>Model 2: 
Known cash dividends at t as a percentage δ of St</td><td>not available</td><td>Figure 4-8</td><td>Figure 4-8</td></tr><tr><td>Model 3: 
Known cash dividends D at t</td><td>S0← S0 − De−rt</td><td>S0← S0 − De−rt or Figure 4-10</td><td>Figure 4-10</td></tr></table>

- Model 1: dividend yield  $q$

It is known that the distributions of  $S_{T}$  are the same under  $\left\{ \begin{array}{l} S_{0} + \text{paying dividend yield } q \\ S_{0}e^{-qT} + \text{no dividend payment} \end{array} \right.$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/45ff9e5f-dd3d-4441-8bed-06aafd8502d4/b1ac1f495a21fe7b71637880959baa73fbb58c0d17bc0beadf626f7928e4894c.jpg)  
Figure 4-7

$\odot$  Analytical formula obtained by replacing  $S_0$  with  $S_0e^{-qT}$  in the Black-Scholes formula:

$$
\Rightarrow c = S _ {0} e ^ {- q T} N (d _ {1}) - K e ^ {- r T} N (d _ {2}), p = K e ^ {- r T} N (- d _ {2}) - S _ {0} e ^ {- q T} N (- d _ {1}),
$$

$$
\mathrm {w h e r e} d _ {1} = \frac {\ln (S _ {0} / K) + (r - q + \frac {\sigma^ {2}}{2}) T}{\sigma \sqrt {T}}, d _ {2} = \frac {\ln (S _ {0} / K) + (r - q - \frac {\sigma^ {2}}{2}) T}{\sigma \sqrt {T}}, \mathrm {a n d} d _ {2} = d _ {1} - \sigma \sqrt {T}.
$$

$\odot$  The PDE for  $(S_0 + \text{paying dividend yield } q)$ :

Given  $\frac{dS}{S} = (\mu - q)dt + \sigma dZ$ , we have  $dS = (\mu - q)Sdt + \sigma SdZ$ .

(Note that  $S$  denotes the ex-dividend underlying asset price.)

If  $f(S, t)$  is the price for any derivative, according to the Ito's Lemma,

$$
d f = (\frac {\partial f}{\partial t} + \frac {\partial f}{\partial S} (\mu - q) S + \frac {1}{2} \frac {\partial^ {2} f}{\partial S ^ {2}} \sigma^ {2} S ^ {2}) d t + \frac {\partial f}{\partial S} \sigma S d Z.
$$

Construct a portfolio  $\pi$ :

$$
- 1 \text {d e r i v a t i v e}
$$

$$
+ \frac {\partial f}{\partial S} \mathrm {s h a r e s}
$$

$$
\begin{array}{l} \Rightarrow \pi = - f + \frac {\partial f}{\partial S} S \Rightarrow d \pi = - d f + \frac {\partial f}{\partial S} d S + \frac {\partial f}{\partial S} S q d t (\text {i n c l u d i n g r e c e i v e d d i v i d e n d s}) \\ \left(\text {w h e r e} \left(\frac {\partial f}{\partial S} S\right) q d t \text {i s t h e d i v i d e n d f r o m h o l d i n g} \left(\frac {\partial f}{\partial S} S\right) \text {i n} [ t, t + d t ]\right) \\ = \left(- \frac {\partial f}{\partial t} - \frac {1}{2} \frac {\partial^ {2} f}{\partial S ^ {2}} \sigma^ {2} S ^ {2} + \frac {\partial f}{\partial S} S q\right) d t. \\ \end{array}
$$

Due to the no-arbitrage argument,

$$
\begin{array}{l} d \pi = r \pi d t \\ \Rightarrow \left(- \frac {\partial f}{\partial t} - \frac {1}{2} \frac {\partial^ {2} f}{\partial S ^ {2}} \sigma^ {2} S ^ {2} + \frac {\partial f}{\partial S} S q\right) d t = r \left(- f + \frac {\partial f}{\partial S} S\right) d t \\ \Rightarrow \frac {\partial f}{\partial t} + (r - q) S \frac {\partial f}{\partial S} + \frac {1}{2} \sigma^ {2} S ^ {2} \frac {\partial^ {2} f}{\partial S ^ {2}} = r f. \\ \end{array}
$$

You can check that the formulas shown at the top of this page are the solutions of the above PDE given the boundary conditions being  $\max(S_T - K, 0)$  and  $\max(K - S_T, 0)$  for the call and put options, respectively.

* When the dividend yield  $q$  is present, it can be found that  $(r - q)S\frac{\partial f}{\partial S}$  replaces  $rS\frac{\partial f}{\partial S}$  in the original PDE (without dividend yield) on p. 2-2. However, it does not mean to replace  $r$  with  $r - q$  in the PDE, because the right-hand side of the above PDE remains to be  $rf$ . The truth is that for the underlying asset  $S$ , the expected growth rate is from  $r$  to become  $r - q$ , but the discount rate for the derivative  $f$  is still  $r$ .

$\odot$  For the binomial tree model

Method 1: replace  $S_0$  with  $S_0 e^{-qT} + \text{no dividend payment}$

Method 2: change the risk neutral probability  $p$

$$
p \cdot S _ {t} u + (1 - p) \cdot S _ {t} d = S _ {t} e ^ {(r - q) \Delta t} \Rightarrow p = \frac {e ^ {(r - q) \Delta t} - d}{u - d}
$$

* However, during the backward induction phase, we still use  $r$  to discount the expected option value at the next time point, i.e.,  $f = e^{-r\Delta t}[p \cdot f_u + (1 - p) \cdot f_d]$  (For European options, both above methods generate correct results, but for American options, only the second method can generate correct results.)

- Model 2: known cash dividends as a percentage  $\delta$  of the stock price at the time point  $t$  (In practice, it is rare for companies to distribute cash dividends in this way.)

$\odot$  For the Black-Scholes formula, it is unavailable to deal with this problem.  
$\odot$  For the binomial tree model, it is simple to deal with this problem (see Figure 4-8).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/45ff9e5f-dd3d-4441-8bed-06aafd8502d4/7ab580d8249995866c0aaef6f729f10568896c5041aa28d82d618c240103d2e1.jpg)  
Figure 4-8

- Model 3: known cash dividends  $D$  at time point  $t$

$\odot$  For the Black-Scholes formula, replace  $S_0$  with  $S_0 - De^{-rt}$ .  
$\odot$  For the binomial tree model,

Method 1: replace  $S_0$  with  $S_0 - De^{-rt}$ . However, this method only works for European options, but it cannot be applied to pricing American options.

(This is because the distributions of  $S_{\tau}$  ( $\tau \geq t$ ) are the same under  $\left\{ \begin{array}{l} S_0 + \text{paying } D \, \text{dollars at } t \\ S_0 - De^{-rt} + \text{no dividend payment} \end{array} \right.$ .)

Method 2: deduct the known dividend  $D$  from all stock prices on the divided payment date. This method cannot work because it makes the tree to be non-recombined.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/45ff9e5f-dd3d-4441-8bed-06aafd8502d4/7a318c9c9303b3422c1fce46407bba5d776272055e9a4ecb3d9a4464a13598c3.jpg)  
Figure 4-9

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/45ff9e5f-dd3d-4441-8bed-06aafd8502d4/10cc3731c24b5966dad8e0dcd1aaff67eb51f10786ff0440fdf7d9d8054c1785.jpg)  
Figure 4-10

Define  $S_0^* = S_0 - De^{-r(t - t_0)} = S_0 - De^{-rt}$

Step 1: build  $S^*$ -tree following the traditional way, but it should be noted that in theory  $\sigma^* = \sigma \cdot S_0 / (S_0 - De^{-r(t - t_0)})$ , where  $\sigma^*$  is the volatility for the stochastic part of the stock price and  $\sigma$  is the total volatility of the stock price.

(For a different volatility  $\sigma^{*}$ , we should derive new  $u^{*}$ ,  $d^{*}$ , and  $p^{*}$  in theory. In practice, however, it is rare to calculate  $\sigma^{*}$ . The first reason is that the difference between  $\sigma^{*}$  and  $\sigma$  is minor. The second reason is that since  $\sigma$  is an estimated value based on the historical data, performing the above adjustment will not necessarily lead to a better estimation for  $\sigma^{*}$  in the forward-looking sense.)

Step 2: for  $t_i < t$ , replace  $S_{t_i}^*$  with  $S_{t_i}^* + De^{-r(t - t_i)}$

(Since  $S_0^* = S_0 - De^{-r(t - t_0)} = S_0 - De^{-rt}$  in Step 1,  $S^*$ -tree is the same as the tree in Method 1 after  $t$ , which formulates the stock price process after the dividend payment appropriately. However, the stock prices before  $t$  are not consistent with the stock price process before the dividend payment, i.e.,  $S_0^* \neq S_0$  and  $E[S_{t_i}^*] \neq E[S_{t_i}]$  for  $t_i < t$ . Therefore, the adjustment in Step 2 should be performed.)

- Currency option

$\odot$  Replace the dividend yield  $q$  with the foreign risk-free rate  $r_f$

(Because the underlying asset  $S_{t}$  is a dollar of the foreign currency in domestic dollars, and holding the foreign currency can earn the foreign risk-free rate, a foreign currency is analogous to a stock paying a known dividend yield.)

$\odot c = S_0e^{-r_fT}N(d_1) - Ke^{-rT}N(d_2),$

where  $d_{1} = \frac{\ln(S_{0} / K) + (r - r_{f} + \frac{\sigma^{2}}{2})T}{\sigma\sqrt{T}}$  and  $d_{2} = d_{1} - \sigma \sqrt{T}$ .

- Futures options
- Call holders: have the right to enter a long position futures with the deliver price to be  $F_{T}$  and receive cash  $F_{T} - K$  if  $F_{T} \geq K$ , where  $F_{T}$  is the latest settlement futures price before  $T$  (usually  $F_{T}$  is the closing price on the date  $T$ ) and  $K$  is the strike price in futures options.  
$\odot$  Put holders: have the right to enter a short position of futures with the deliver price to be  $F_{T}$  and receive cash  $K - F_{T}$  if  $F_{T} \leq K$ .

* Since a futures contract is worth zero when it is first created (in the above cases, it is at  $T$ ), it can be concluded that the payoff of futures option is similar to that of exercising plain vanilla options, and the only difference is to replace  $S_T$  with  $F_T$ . This observation implies that we can develop the pricing formula for futures options by following the same way to develop the option formula for plain vanilla options.

$\odot$  Black-Scholes formula for futures options:

Suppose the futures price follows the geometric Brownian motion:  $\frac{dF}{F} = \mu dt + \sigma dZ$ .  $c(F,t)$  is the call on futures, and according to the Ito's lemma

$$
\Rightarrow d c = (\frac {\partial c}{\partial t} + \frac {\partial c}{\partial F} \mu F + \frac {1}{2} \frac {\partial^ {2} c}{\partial F ^ {2}} \sigma^ {2} F ^ {2}) d t + \frac {\partial c}{\partial F} \sigma F d Z
$$

Construct portfolio  $\pi = -c + (\frac{\partial c}{\partial F})F = -c$  (noting the initial value of futures is 0)

$$
\begin{array}{l} d \pi = - d c + (\frac {\partial c}{\partial F}) d F = - (\frac {\partial c}{\partial t} + \frac {1}{2} \frac {\partial^ {2} c}{\partial F ^ {2}} \sigma^ {2} F ^ {2}) d t = r \pi d t = r (- c) d t \\ \Rightarrow \frac {\partial c}{\partial t} + \frac {1}{2} \frac {\partial^ {2} c}{\partial F ^ {2}} \sigma^ {2} F ^ {2} = r c. \\ \end{array}
$$

(Comparing with the PDE for stock options, these is no such term  $\frac{\partial c}{\partial F} (r - q)F.$ )

Thus, one can set  $q = r$  and  $S_0 = F_0$  in the Black-Scholes formula to derive the formula for futures options.)

$$
c = e ^ {- r T} [ F _ {0} N (d _ {1}) - K N (d _ {2}) ], \mathrm {w h e r e} d _ {1} = \frac {\ln (F _ {0} / K) + \frac {\sigma^ {2} . T}{2}}{\sigma \sqrt {T}} \mathrm {a n d} d _ {2} = d _ {1} - \sigma \sqrt {T}.
$$

$\odot$  Binomial Tree

Because  $q = r$ , we derive  $p = \frac{e^{(r - q)\Delta t} - d}{u - d} = \frac{1 - d}{u - d}$  (Remember that we still use  $r$  as the discount rate for the payoff of the futures options.)

Another way to derive  $p$

Figure 4-11

$$
\begin{array}{l} \begin{array}{c} \text {p a y o f f} _ {T} (\pi) \\ \Downarrow \\ \pi = \left\{ \begin{array}{l} \Delta \cdot \text {F u t u r e s (a t} F _ {0}) \\ - 1 \cdot c \\ \Rightarrow \text {v a l u e} (\pi) = - c \end{array} \right. \\ \Delta \cdot (F _ {0} d - F _ {0}) - c _ {d} \end{array} \Bigg ] \Bigg ] ^ {\prime \prime} = \Delta = \frac {c _ {u} - c _ {d}}{F _ {0} u - F _ {0} d} \\ \Rightarrow - c = \left[ \Delta \left(F _ {0} u - F _ {0}\right) - c _ {u} \right] e ^ {- r T} (\text {t h e i n i t i a l v a l u e o f t h e f u t u r e s i s 0}) \\ \Rightarrow c = e ^ {- r T} (p \cdot c _ {u} + (1 - p) \cdot c _ {d}), \mathrm {w h e r e} p = \frac {1 - d}{u - d} \\ \end{array}
$$

- The Black-Scholes model as well as the binomial tree model are versatile models: Treat stock index, currency, and futures like a share of stock paying a dividend yield  $q$ . For stock index options:  $q =$  average dividend yield on the index over the option life. For currency options:  $q = r_f$ . For futures options:  $q = r$ .

# V. Introduction of Combinatorial Method

- Combinatorics (組合數學) is a branch of pure mathematics concerning the study of discrete (and usually finite) objects. Aspects of combinatorics include "counting" the objects satisfying certain criteria, deciding when the criteria can be met, or finding "largest", "smallest", or "optimal" objects.  
- Combinatorial method for European options

Based on the binomial tree framework, applying the combinatorial method is far faster than the backward induction procedure. In fact, it is not necessary to build the binomial tree in the combinatorial method, which is another advantage of the combinatorial method because it can save memory space for computer programming.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/45ff9e5f-dd3d-4441-8bed-06aafd8502d4/05e8bc217a3a09547f37efe56eda5849ee8cc6e06af1129eb0bb3be6c2e68a57.jpg)  
Figure 4-12  
$T$  is partitioned into  $n$  time steps

European option value  $= e^{-rT}\sum_{j = 0}^{n}\binom{n}{j}p^{n - j}(1 - p)^{j}\max (S_{0}u^{n - j}d^{j} - K,0)$ , where  $\left( \begin{array}{c}n\\ j \end{array} \right)$  also denoted as  $C_j^n$ , is the combination of  $j$  from  $n$ ,  $u = e^{\sigma \sqrt{\Delta t}}$ ,  $d = e^{-\sigma \sqrt{\Delta t}}$ , and  $p = \frac{e^{(r - q)\Delta t} - d}{u - d}$ .

* For the binomial tree model, its complexity is  $O(n^{2})$ , whereas for the above combinatorial method, the complexity is  $O(n)$ . The difference of required computational time is substantial for a large number of  $n$ , e.g.,  $n > 5000$ .

# Appendix A. Binomial Tree Model for Jump-Diffusion Processes

- The content in this appendix belongs to the advanced content.  
- Binomial tree model for the jump-diffusion process in Amin (1993):

$\odot$  Consider Merton's (1976) lognormal jump-diffusion process as follows.

$$
\frac {d S}{S} = (r - q - \lambda K _ {Y}) d t + \sigma d Z + (Y - 1) d q,
$$

where  $K_{Y} = E[Y - 1]$  and  $\ln Y\sim ND(\mu_J,\sigma_J^2)$ . By the Ito's lemma,

$$
d \ln S = (r - q - \frac {1}{2} \sigma^ {2} - \lambda K _ {Y}) d t + \sigma d Z + \ln Y d q = \alpha d t + \sigma d Z + \ln Y d q.
$$

$\odot$  A modified lattice model based on Amin (1993):

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/45ff9e5f-dd3d-4441-8bed-06aafd8502d4/61065ee5be08f13a71b9bc89a6c5560688f1a4c765dbf4ff6e4f8e8bc39dccf5.jpg)  
Figure 4-13

$\odot$  Backward induction:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/45ff9e5f-dd3d-4441-8bed-06aafd8502d4/d808c29be08d8a5a30943f7cd180dbec4837dea0513ac2fb188e29e5d49a6a61.jpg)  
Figure 4-14

* Define the branching probabilities as follows.

$$
p (k) = \left\{ \begin{array}{l l} \mathrm {p r o b} (\ln S _ {t + \Delta t} - \ln S _ {t} = \alpha \Delta t + \sigma \sqrt {\Delta t}) & = (1 - \lambda \Delta t) p _ {u} + \lambda \Delta t \Delta N (k) \\ \mathrm {p r o b} (\ln S _ {t + \Delta t} - \ln S _ {t} = \alpha \Delta t - \sigma \sqrt {\Delta t}) & = (1 - \lambda \Delta t) p _ {d} + \lambda \Delta t \Delta N (k) \\ \mathrm {p r o b} (\ln S _ {t + \Delta t} - \ln S _ {t} = \alpha \Delta t + k \sigma \sqrt {\Delta t}) & = \lambda \Delta t \Delta N (k), \mathrm {f o r} - M _ {J} \leq k \leq M _ {J} \end{array} , \right.
$$

where  $\Delta N(k) = N((\alpha \Delta t + (k + \frac{1}{2})\sigma \sqrt{\Delta t} -\mu_J) / \sigma_J) - N((\alpha \Delta t + (k - \frac{1}{2})\sigma \sqrt{\Delta t} -\mu_J) / \sigma_J)$  if  $k\neq \pm M_J$ $M_J\equiv \mathrm{int}(\frac{3\sigma_J}{\sigma\sqrt{\Delta t}})$ $\Delta N(M_J) = 1 - N((\alpha \Delta t + (M_J - \frac{1}{2})\sigma \sqrt{\Delta t} -\mu_J) / \sigma_J)$  , and  $\Delta N(-M_J) = N((\alpha \Delta t - (M_J - \frac{1}{2})\sigma \sqrt{\Delta t} -\mu_J)\sigma_J)$

(Note that using  $\lambda \Delta t \Delta N(k)$  for  $-M_{j} \leq k \leq M_{J}$  in the above captures the effect of the jump component  $\ln Y dq$  in the  $d \ln S$  process.)

(Note that the definitions of  $p(k)'s$  here are slightly different from those in Amin (1993).)

* For the remaining diffusion process,  $d\ln S = \alpha dt + \sigma dZ$ , determine  $p_u$  and  $p_d$  by matching its mean and variance

$$
\left\{ \begin{array}{l l} p _ {u} S _ {t} u + p _ {d} S _ {t} d = S _ {t} e ^ {\alpha \Delta t} \\ p _ {u} S _ {t} ^ {2} u ^ {2} + p _ {d} S _ {t} ^ {2} d ^ {2} - (p _ {u} S _ {t} u + p _ {d} S _ {t} d) ^ {2} = p _ {u} S _ {t} ^ {2} u ^ {2} + p _ {d} S _ {t} ^ {2} d ^ {2} - (S _ {t} e ^ {\alpha \Delta t}) ^ {2} = S _ {t} ^ {2} \sigma^ {2} \Delta t, \\ p _ {u} + p _ {d} = 1 \end{array} \right.
$$

where  $u = e^{\alpha \Delta t + \sigma \sqrt{\Delta t}}$  and  $d = e^{\alpha \Delta t - \sigma \sqrt{\Delta t}}$ . Analogous with the CRR binomial tree model, we can infer

$$
p _ {u} = \frac {e ^ {\alpha \Delta t} - d}{u - d}.
$$

* However, if we consider the probabilities of  $(1 - \lambda \Delta t)p_u$  and  $(1 - \lambda \Delta t)p_d$  for the upward and downward branches, respectively, when the jump component is introduced, the mean and variance generated by the probabilities of  $(1 - \lambda \Delta t)p_u$  and  $(1 - \lambda \Delta t)p_d$  are no longer  $S_t e^{\alpha \Delta t}$  and  $S_t^2 \sigma^2 \Delta t$ :

$$
\left\{ \begin{array}{l l} (1 - \lambda \Delta t) p _ {u} S _ {t} u + (1 - \lambda \Delta t) p _ {d} S _ {t} d = (1 - \lambda \Delta t) S _ {t} e ^ {\alpha \Delta t} \\ (1 - \lambda \Delta t) p _ {u} S _ {t} ^ {2} u ^ {2} + (1 - \lambda \Delta t) p _ {d} S _ {t} ^ {2} d ^ {2} - [ (1 - \lambda \Delta t) S _ {t} e ^ {\alpha \Delta t} ] ^ {2} \approx (1 - \lambda \Delta t) S _ {t} ^ {2} \sigma^ {2} \Delta t, \\ (1 - \lambda \Delta t) p _ {u} + (1 - \lambda \Delta t) p _ {d} = (1 - \lambda \Delta t) \end{array} \right.
$$

For the variance equation, it can be rewritten as  $(1 - \lambda \Delta t)[p_uS_t^2 u^2 + p_dS_t^2 d^2 - (1 - \lambda \Delta t)(S_t e^{\alpha \Delta t})^2] \approx (1 - \lambda \Delta t)S_t^2\sigma^2\Delta t$ , if  $\Delta t$  is small such that  $(1 - \lambda \Delta t) \approx 1$ .

Thus, the standard deviation becomes  $\sqrt{(1 - \lambda\Delta t)} S_t\sigma \sqrt{\Delta t}$ . By comparing with the mean,  $(1 - \lambda \Delta t)S_{t}e^{\alpha \Delta t}$ , one can find that the deviation of the mean from its true value is more serious than the deviation of the standard deviation from its true value because  $\sqrt{(1 - \lambda\Delta t)}$  is closer to 1 than  $(1 - \lambda \Delta t)$  when  $\Delta t$  is small.

* To offset the above undesirable effects, we should solve  $p_u$  and  $p_d$  in the following system of equations.

$$
\left\{ \begin{array}{l l} p _ {u} S _ {t} u + p _ {d} S _ {t} d = \frac {S _ {t} e ^ {\alpha \Delta t}}{1 - \lambda \Delta t} \\ p _ {u} S _ {t} ^ {2} u ^ {2} + p _ {d} S _ {t} ^ {2} d ^ {2} - (p _ {u} S _ {t} u + p _ {d} S _ {t} d) ^ {2} = \frac {S _ {t} ^ {2} \sigma^ {2} \Delta t}{1 - \lambda \Delta t} \\ p _ {u} + p _ {d} = 1 \end{array} \right.
$$

* In Amin (1993), only the adjustment for the mean is considered, i.e., he solves the probability  $p_u$  with  $p_u S_t u + p_d S_t d = \frac{S_t e^{\alpha \Delta t}}{1 - \lambda \Delta t}$  and obtains

$$
p _ {u} = \frac {\frac {e ^ {\alpha \Delta t}}{1 - \lambda \Delta t} - d}{u - d}.
$$

* Option value of a node can be expressed as

Option value of  $\ln S_t$

$$
= \sum_ {- M _ {J} \leq k \leq M _ {J}} p (k) \cdot (\mathrm {o p t i o n v a l u e f o r} \ln S _ {t + \Delta t} = \ln S _ {t} + \alpha \Delta t + k \sigma \sqrt {\Delta t})
$$

$\odot$  To consider the adjustment for the variance, a simple method of adjusting the grid size of the multinomial tree can achieve this goal. By defining  $\sigma^{*} = \frac{\sigma}{\sqrt{1 - \lambda\Delta t}}$ ,  $u^{*} = e^{\alpha \Delta t + \sigma^{*}\sqrt{\Delta t}}$ ,  $d^{*} = e^{\alpha \Delta t - \sigma^{*}\sqrt{\Delta t}}$ , one can derive the following tree structure and the corresponding branching probabilities.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/45ff9e5f-dd3d-4441-8bed-06aafd8502d4/85b132784d9ba333807c33092e00ee5cf445f8f8bb234e08f49c212cd5d9fd81.jpg)  
Figure 4-15

$$
p ^ {*} (k) = \left\{ \begin{array}{l l} \mathrm {p r o b} (\ln S _ {t + \Delta t} - \ln S _ {t} = \alpha \Delta t + \sigma^ {*} \sqrt {\Delta t}) & = (1 - \lambda \Delta t) p _ {u} ^ {*} + \lambda \Delta t \Delta N (k) \\ \mathrm {p r o b} (\ln S _ {t + \Delta t} - \ln S _ {t} = \alpha \Delta t - \sigma^ {*} \sqrt {\Delta t}) & = (1 - \lambda \Delta t) p _ {d} ^ {*} + \lambda \Delta t \Delta N (k) \\ \mathrm {p r o b} (\ln S _ {t + \Delta t} - \ln S _ {t} = \alpha \Delta t + k \sigma^ {*} \sqrt {\Delta t}) = \lambda \Delta t \Delta N (k), \mathrm {f o r} - M _ {J} \leq k \leq M _ {J} \end{array} \right.,
$$

where  $\Delta N(k) = N((\alpha \Delta t + (k + \frac{1}{2})\sigma^{*}\sqrt{\Delta t} -\mu_{J}) / \sigma_{J}) - N((\alpha \Delta t + (k - \frac{1}{2})\sigma^{*}\sqrt{\Delta t} -\mu_{J}) / \sigma_{J})$  if  $k\neq \pm M_J$ ,  $M_J\equiv \mathrm{int}(\frac{3\sigma_J}{\sigma^*\sqrt{\Delta t}})$ ,  $\Delta N(M_J) = 1 - N((\alpha \Delta t + (M_J - \frac{1}{2})\sigma^*\sqrt{\Delta t} -\mu_J) / \sigma_J)$ ,  $\Delta N(-M_J) = N((\alpha \Delta t - (M_J - \frac{1}{2})\sigma^*\sqrt{\Delta t} -\mu_J) / \sigma_J)$ , and  $p_u^* = \frac{\frac{e^{\alpha\Delta t}}{\sqrt{1 - \lambda\Delta t}} - d^*}{u^* - d^*}$  and  $p_d^* = 1 - p_u^*$ .
# Chapter 10: OTC Derivatives

# 10.1 Introduction

Interest rate derivatives traded over the counter are voluminous and complex (equity-linked notes, credit-linked notes, various return swaps and index swaps). Yet the most prominent are swaptions and caps/floors. These are LIBOR based products. We focus on these two products in this chapter

A cap (or floor) is an embedded option in a floater where the issuer can avoid paying more than the cap rate as the interest rate. A floor, similarly, is an embedded option owned by the investor who is guaranteed to receive a minimum of interest regardless how low the floating interest rate is. A collar is the combination of both a cap and a floor.

Caps and floors are often stripped out and transacted independently of their underlying floaters. Then they become options on LIBOR.

Besides caps and floors, swaptions are another liquid LIBOR derivatives. These are options on swaps. Like caps and floors, swaptions can be independently traded or embedded in swaps as option to enter or option to cancel.

# 10.2 Caps/Floors/Collars

A cap is a collection of European rate call options (or called caplets); it is quite easy to price. The difficulty is that the floating rate is not a traded asset but an index so the usual Black-Scholes does not apply (note that many financial firms use the Black-Scholes model anyway ignoring the fact that interest rates are not traded assets.) Luckily, with a simple transformation, we can turn the rate call to a bond put which is possible to use a known term structure model (such as CIR or Vasicek). Similarly, floor is a collection of rate puts that should be turned into a series of bond calls.


![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/876a1e49627f0a600f29f33f16f37a442064c2c9fcfa2569a11a14649906809c.jpg)
Figure 10.1: Cap Example

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/7e050f2afbb437f5ca666f8a3b57f0e324d31182dfe14cea1f7701bc0175069c.jpg)
Figure 10.2: Cap Example

Example. Yield curve: $R_{01} = 5\%$, and $R_{02} = 6\%$, hence $f_{12} = 7\%$. $R_X = 5\%$. Also we have $P_{01} = 0.9512$, $P_{02} = 0.8816$, $F_{12} = 0.9324$, and $X = 1/(1 + 5\%) = 0.9524$. Let $V = 0.36$. Then

$$ d = \frac{\ln f_{12} - \ln R_X + V/2}{\sqrt{V}} = \frac{\ln 7\% - \ln 5\% + 0.36/2}{0.6} = 0.86 $$

$$ d - \sqrt{V} = 0.26 $$

$$
C = e^{-5 \%} [ 7 \% N (0.86) - 5 \% N (0.26) ] = 0.023
$$

In terms of bond price

$$
C = \frac{1}{X} P_{0 t} [ X N (- d + \sqrt{V}) - F N (- d) ]
$$ where


$$
X = \frac{1}{1 + \tau R_{X}}
$$

$$ d = \frac{\ln F - \ln X + V/2}{\sqrt{V}} = \frac{0.9324 - 0.9524 + 0.36/2}{0.6} = 0.35 $$

$$ d - \sqrt{V} = -0.25 $$

$$
C = \frac{1}{1 . 0 5} 1. 0 5 [ 0. 9 5 2 4 N (0. 2 5) - 0. 9 3 2 4 N (- 0. 3 5) ] = 0. 2 3
$$

A cap is a limitation on the borrower that at each payment date he cannot charge the market rate if the market rate is higher than the contractual cap rate. Hence, we can write the cap payoff as a series of rate call to be received at the end of period  $j$ .

$$
\max  \left\{R_{j} - \bar {R}, 0 \right\} \tau \tag {10.1}
$$ for  $j = 1, \dots, n$  reflecting the fixing dates  $< T_1, \dots, T_n >$  of a cap/floor where  $\tau$  is the accrued period and usually  $\tau = \frac{1}{4}$  in swaps and  $\frac{1}{2}$  in bonds. Given that  $R_j$  is not a traded asset, we must turn it into a bond price. To do that,


$$
\begin{align}
\max\{R_j - \bar{R}, 0\} \tau &= \max\left\{\frac{1}{\tau}\left(\frac{1}{P(T_j, T_j + \tau)} - 1\right) - \bar{R}, 0\right\} \tau \\
&= \max\left\{\frac{1}{P(T_j, T_j + \tau)} - (1 + \tau \bar{R}), 0\right\} \tag{10.2} \\
&= \frac{(1 + \tau \bar{R})}{P(T_j, T_j + \tau)} \max\{K - P(T_j, T_j + \tau), 0\}
\end{align}
$$ where  $K = 1 / (1 + \tau \bar{R})$ . The present value (at current time  $t$ ) of this payoff is therefore:


$$
\begin{align}
\pi_j &= \hat{\mathbb{E}}_t\left[\exp\left(-\int_t^{T_j + \tau} r_u du\right) \max\{R_j - \bar{R}, 0\} \tau\right] \\
&= (1 + \tau \bar{R}) \hat{\mathbb{E}}_t\left[\exp\left(-\int_t^{T_j + \tau} r_u du\right) \frac{1}{P(T_j, T_j + \tau)} \max\{K - P(T_j, T_j + \tau), 0\}\right] \\
&= \frac{1}{K} \hat{\mathbb{E}}_t\left[\exp\left(-\int_t^{T_j} r_u du\right) \max\{K - P(T_j, T_j + \tau), 0\}\right] \tag{10.3}
\end{align}
$$ and the cap value is:


$$
V_{\text{ca p}} = \sum_{j = 1}^{n} \pi_{j} \tag {10.4}
$$

Equation (10.3) is a standard option on the zero-coupon bond and hence has closed-form solutions if certain term structure models are adopted. For example, both Vacicek and Cox-Ingersoll-Ross models have closed-form solutions to the zero coupon bond option. Using the Vasicek model, $^{1}$ we can write the formula for a caplet as:2


$$
\begin{align}
\pi_j &= \frac{P(t, T_j)}{K} \left\{N\left(-\frac{\ln P(t, T_j + \tau) - \ln K - \ln P(t, T_j) - \frac{1}{2} v_j^2}{v_j}\right)\right. \tag{10.5} \\
&\quad \left. - \frac{P(t, T_j + \tau)}{P(t, T_j)} N\left(-\frac{\ln P(t, T_j + \tau) - \ln K - \ln P(t, T_j) + \frac{1}{2} v_j^2}{v_j}\right)\right\}
\end{align}
$$ where (Vasicek)


$$ v_j^2 = \frac{1 - e^{-2\alpha(T_j - t)}}{2\alpha} \sigma^2 \left(\frac{1 - e^{-\alpha\tau}}{\alpha}\right)^2 \tag{10.6} $$

In Chapter 14, I shall present a more general form that does not reply on the Vasicek model. There, the only requirement is for the bond price to follow a log-normal distribution.

The floor can be dealt with the same way:

$$
\begin{align}
\max\{\underline{R} - R_j, 0\} \tau &= \max\left\{\underline{R} - \frac{1}{\tau}\left(\frac{1}{P(T_j, T_j + \tau)} - 1\right), 0\right\} \tau \\
&= \max\left\{(\tau \underline{R} + 1) - \frac{1}{P(T_j, T_j + \tau)}, 0\right\} \tag{10.7} \\
&= \frac{(\tau \underline{R} + 1)}{P(T_j, T_j + \tau)} \max\{P(T_j, T_j + \tau) - K, 0\}
\end{align}
$$ where  $K = 1 / (1 + \tau \underline{R})$  and the pricing formula is:


$$
\begin{array}{l} \zeta_{j} = \hat {\mathbb {E}}_{t} \left[ \exp \left(- \int_{t}^{T_{j} + \tau} r_{u} d u\right) \max  \{\underline {{R}} - R_{j}, 0 \} \tau \right] \\ = (\tau \underline {{R}} + 1) \hat {\mathbb {E}}_{t} \left[ \exp \left(- \int_{t}^{T_{j} + \tau} r_{u} d u\right) \frac{1}{P (T_{j} , T_{j} + \tau)} \max  \{P (T_{j}, T_{j} + \tau) - K, 0 \} \right] \\ = \frac{1}{K} \hat {\mathbb {E}}_{t} \left[ \exp \left(- \int_{t}^{T_{j}} r_{u} d u\right) \max  \left\{P \left(T_{j}, T_{j} + \tau\right) - K, 0 \right\} \right] \tag {10.8} \\ \end{array}
$$ and


$$
V_{\text{fl oo r}} = \sum_{j = 1}^{n} \zeta_{j} \tag {10.9}
$$

Under the Vasicek model we can write each floorlet  $\xi_{j}$  as follows:3

$$
\begin{array}{l} \zeta_{j} = \frac{P (t , T_{j} + \tau)}{K} N \left(\frac{\ln P (t , T_{j} + \tau) - \ln K - \ln P (t , T_{j}) + 1 / 2 v_{j}^{2}}{v_{j}}\right) \tag {10.10} \\ - P (t, T_{j}) N \left(\frac{\ln P (t , T_{j} + \tau) - \ln K - \ln P (t , T_{j}) -^{1 / 2} v_{j}^{2}}{v_{j}}\right) \\ \end{array}
$$

Note that usually lenders do not charge an upfront free for the cap and vice versa for the floor. What is a common practice is that the charged interest rate contains a mark-up, or spread, if there is a cap; and a mark-down, or negative spread, if there is a floor. That is,  $R_{j} = \frac{1}{P(T_{j},T_{j} + \tau)} + s_{c}$  (for cap) or  $R_{j} = \frac{1}{P(T_{j},T_{j} + \tau)} - s_{f}$  (for floor) where the spread is constant throughout the life of the loan. This being the case, a cap or a floor contract is to solve for the spread so that the NPV is 0 at inception.

Note that the spread is computed as:

$$
V_{\text{sp re ad}} = \tau \times s \times \sum_{j = 1}^{n} P (t, T_{j}) \tag {10.11}
$$ and hence by equating the value of the spread payments with the value of the cap, we solve for the spread as follows:


$$ s_c = \frac{\sum_{j=1}^n \pi_j}{\tau \sum_{j=1}^n P(t, T_j)} \tag{10.12} $$

$$ s_f = \frac{\sum_{j=1}^n \zeta_j}{\tau \sum_{j=1}^n P(t, T_j)} $$ where  $\pi_j$  is the caplet value and  $\zeta_j$  is the floorlet value. For a floater to both have cap and floor, which is called a "collar", the two spreads should be netted out to be $s_c - s_f$.


# 10.3 Swaptions

As briefly discussed in Chapter 5, swaptions (payer and receiver) are options to enter and cancel a swap. The payer option (option to enter) is a call and the receiver option (option to cancel) is a put.

These embedded options are stripped out of their underlying swaps and traded in the market. Industry uses the Black (which is same as Black-Scholes) model for swaptions:

$$
C = P (t, s) \left[ \bar {w} (s, T_{n}) N (d_{+}) - P (t, s) w_{K} N (d_{-}) \right] \sum_{i = 1}^{n} \Psi (t, s, T_{i}) \tag {10.13}
$$ where


$$ d_{\pm} = \frac{\ln \bar{w}(s, T_n) - \ln w_K}{\sqrt{v(t, s, T_n)}} \pm \frac{1}{2} v(t, s, T_n) $$

$$ v^2(t, s, T_n) = \mathbb{V}[\ln w(s, T_n)] $$

$\bar{w}$  is the forward swap rate. The put option value can be obtained via put-call parity.

Clearly, this is not correct. Not only does the swap rate not follow lognormal, it cannot even be used as an underlying asset. (Details see Chapter 14.)

We have to turn the call option on the swap rate into the put option on the coupon bond:

$$
\begin{align}
\max\{w(t, T_n) - w_K, 0\} \sum_{j=1}^n P(t, T_j) &= \max\left\{w(t, T_n) \sum_{j=1}^n P(t, T_j) - w_K \sum_{j=1}^n P(t, T_j), 0\right\} \tag{10.14} \\
&= \max\{1 - \Pi(t, \underline{T}; w_K), 0\}
\end{align}
$$

The option of a coupon bond has a true closed-form solution under a factor model (e.g. Vasicek or Cox-Ingersoll-Ross). In the above equation,  $w(t,T_{n})\sum_{j = 1}^{n}P(t,T_{j}) = 1$  (see Chapter 5 for the derivation).

In Chapter 14, swap and swaption will be discussed in details. There, the swap measure will be derived and fully discussed. The swaption valuation there does not necessarily require a factor model such as the Vasicek or Cox-Ingersoll-Ross models.

A  $T_{j}$ -maturity swap rate under no arbitrage is given as:

$$ w(t, T_j) = \frac{\sum_{i=1}^j P(t, T_i) f(t, T_i, T_{i+1})}{\sum_{i=1}^j P(t, T_i)} \tag{10.15} $$ where


$$
\begin{align}
 f(t, T_i, T_{i+1}) &= F(t, T_i, T_{i+1}) - 1 \\
&= \frac{1}{\Psi(t, T_i, T_{i+1})} - 1 \\
&= \frac{P(t, T_i)}{P(t, T_{i+1})} - 1
\end{align}
$$ and $j = 1, \dots, n$


Now, we can define an option on a swap. A  $j \times m$  swaption (where  $j + m = n$ ) has a payoff at expiry,  $T_{j}$ , as a coupon bond option:

$$
\begin{align}
\max\{w(T_j) - w_K, 0\} \sum_{k=j+1}^n P(T_j, T_k) &= \max\{1 - \Pi(T_j, \langle T_{j+1}, \dots, T_n \rangle; w_K), 0\} \tag{10.16}
\end{align}
$$ which is a put option struck at par (i.e. 1 in the above equation) on a coupon bond. Jamshidian (1989) derives the valuation model as follows:


$$
\begin{align}
C_{j \times m}^{\text{swap}} &= \hat{\mathbb{E}}_t\left[\exp\left(-\int_t^{T_j} r(u) du\right) \max\{1 - \Pi(T_j, \langle T_{j+1}, \dots, T_n \rangle; w_K), 0\}\right] \\
&= P(t, T_j) \tilde{\mathbb{E}}_t^{(T_j)}\left[\max\left\{\left(w_K \sum_{k=j+1}^n K_k + K_n\right) - \left(w_K \sum_{k=j+1}^n P(T_j, T_k) + P(T_j, T_n)\right), 0\right\}\right] \\
&= P(t, T_j) \tilde{\mathbb{E}}_t^{(T_j)}\left[w_K \sum_{k=j+1}^n \max\{K_k - P(T_j, T_k), 0\} + \max\{K_n - P(T_j, T_n), 0\}\right] \\
&= P(t, T_j)\left\{w_K \sum_{k=j+1}^n \chi_{j,k}(K_k) + \chi_{j,n}(K_n)\right\}
\end{align}
$$

(10.17) where the European "forward" (i.e. without discounting) put option (on price) formula is defined as:


$$
\chi_{j, k} \left(K_{k}\right) = K N \left(- \frac{\ln \Psi \left(t , T_{j} , T_{k}\right) - \ln K_{k} - 1 / 2 v_{j , k}^{2}}{v_{j , k}}\right) - \Psi \left(t, T_{j}, T_{n}\right) N \left(- \frac{\ln \Psi \left(t , T_{j} , T_{k}\right) - \ln K_{k} + 1 / 2 v_{j , k}^{2}}{v_{j , k}}\right) \tag {10.18}
$$ where  $k = j + 1,\dots ,n$


$$ w_K \sum_{k=j+1}^n K_k + K_n = 1 \tag{10.19} $$ and


$$
\begin{align}
 v_{j,k}^2 &= \tilde{\mathbb{V}}[\ln P(T_j, T_k)] = \tilde{\mathbb{V}}[\ln \Psi(T_j, T_j, T_k)] \\
&= \int_t^{T_j} \xi(u, T_j, T_k)^2 du \tag{10.20} \\
&= \int_t^{T_j} \left\{\sum_{\ell=j}^{k-1} \xi(u, T_\ell, T_{\ell+1})\right\}^2 du
\end{align}
$$ with  $\xi (u,T_j,T_k)$  being the instantaneous volatility function for the forward price. The last line above is derived in Chapter 14.


For equation (10.17) to hold, Jamshidian shows that (Jamshidian theorem (1989)) the last line of (10.17) can be achieved only if "selected exercises" have no value. That is, if any  $K_{k} < P(T_{j},T_{k})$  (or  $K_{k} > P(T_{j},T_{k})$ ) then all  $K_{k} < P(T_{j},T_{k})$  (or  $K_{k} > P(T_{j},T_{k})$ ). The trick is to find such  $K_{k}$ 's so that this condition holds. We need to solve for "little strikes"  $K_{k}$ . For at-the-money swaptions, the solution to  $K_{k}$  is simple:

$$
K_{k} = \Psi \left(t, T_{j}, T_{k}\right) \tag {10.21}
$$ for  $k = j + 1,\dots ,n$


The proof is given in the Appendix. For in- and out-of-money options, this solution does not hold and yet a mild modification of the assumption (i.e. by adding an affine assumption), we can still break a swaption into a series of zero coupon bond options. The details are given in the Appendix.

# 10.3.1 Cap (Floor) as a Special Case of Payer (Receiver) Swaption

We can see a caplet is a variation of a  $j \times 1$  swaption (i.e. with a different strike price). Hence, by comparing (10.10) and (10.18), we can see that caps and swaptions can be consistently priced via a series of put options  $(\chi_{j,k})$  which is in turn dependent on the function.

Change of the volatility notation:

$$ v_j = v_{j,j+1} \tag{10.22} $$ where  $v_{j,j + 1}$  is defined earlier as:


$$
\begin{array}{l} v_{j, j + 1}^{2} = \tilde {\mathbb {V}} [ \ln P (T_{j}, T_{j + 1}) ] = \tilde {\mathbb {V}} [ \ln \Psi (T_{j}, T_{j}, T_{j + 1}) ] \\ = \int_{t}^{T_{j}} \xi (u, T_{j}, T_{j + 1})^{2} d u \\ \end{array}
$$

Note that  $T_{j + 1}$  may not equal  $T_{j} + \tau$ .

# 10.3.2 Function  $\xi(t, \cdot, \cdot)$  and a Piece-wise Flat Approximation

In this section, we present the main result of the paper, which is to demonstrate how the two markets can be evaluated consistently, using the methodology introduced in this paper. We can see that both swaptions (10.17) and caps (25) under our model are functions of zero-coupon bond put options that have the Black-Scholes type solution with the volatility function  $\xi(t,\cdot,\cdot)$ .

Moreover, the  $\xi(t,\cdot,\cdot)$  function can be uniquely identified, for any given number of swaptions. This is drastically different from the existing LMM where an approximation form of the volatility function must be exogenously given, and hence swaptions cannot be priced without errors. On the other hand, given that each piece of the  $\xi(t,\cdot,\cdot)$  function is mapped to a swaption, all swaptions are, by construction, perfectly priced. This is important because only in such a case (perfect calibration) we can accurately price exotic derivatives and find the correct number and combinations of swaption contracts to hedge.

Recall the volatility function in (10.20) for the bond put option is an integration of the function (which can be written in a discrete form in terms of a summation) as follows:

$$
\begin{align}
 v_{j,k}^2 &= \int_t^{T_j} \xi(u, T_j, T_k)^2 du \\
&= \sum_{\ell=0}^{j-1} \int_{T_\ell}^{T_{\ell+1}} \xi(u, T_j, T_k)^2 du \\
&= \sum_{\ell=0}^{j-1} \int_{T_\ell}^{T_{\ell+1}} \left\{\sum_{m=0}^{k-j-1} \xi(u, T_{j+m}, T_{j+m+1})\right\}^2 du \tag{10.23} \\
&= \sum_{\ell=0}^{j-1} \left\{\sum_{m=0}^{k-j-1} \xi_{\ell,j+m,j+m+1}\right\}^2 \Delta_{\ell+1}
\end{align}
$$ where $\Delta_\ell = T_\ell - T_{\ell-1}$ and $k = j + 1, \dots, n$. Note that the last line of (10.23) is to replace  $\xi (u,T_{j + m},T_{j + m + 1})$  with a fixed value  $\xi_{u,j + m,j + m + 1}$  . The description of the volatility function (10.23) is given in Figure 10.3.


An Exemplification of Volatility Calibration using  $\xi (u,T_i,T_j)$  -- row i and column j

<table><tr><td></td><td>1×j</td><td>2×j</td><td>3×j</td><td>4×j</td></tr><tr><td>i×1</td><td>∫tT1ξ(u,T1,T2)2du = v1,22ξ012Δ1</td><td>∫tT2ξ(u,T2,T3)2du = v2,32= ∫T1T2ξ(u,T2,T3)2du + ∫T1T2ξ(u,T2,T3)2du =ξ023Δ1 +ξ123Δ2</td><td>...</td><td>∫tT4ξ(u,T4,T5)2du = v4,5= ∫T1Tξ(u,T4,T5)2du + ∫T1Tξ(u,T4,T5)2du + ∫T2Tξ(u,T4,T5)2du + ∫T3Tξ(u,T4,T5)2du = {ξ045}2Δ1 + {ξ145}2Δ2 + {ξ245}2Δ3 + {ξ345}2Δ4</td></tr><tr><td rowspan="2">i×2</td><td>∫tT1ξ(u,T1,T2)2du = v1,2</td><td rowspan="2">∫tT2ξ(u,T2,T3)2du = v2,3</td><td rowspan="2">...</td><td>∫tT4ξ(u,T4,T5)2du = v4,5</td></tr><tr><td>∫tT1ξ(u,T1,T3)2du = v1,3= ∫T1T2ξ(u,T2,T4)2du = v2,4= ∫T1Tξ(u,T2,T4)2du + ∫T1Tξ(u,T2,T4)2du = {ξ023+ξ034}2Δ1 + {ξ123+ξ134}2Δ2</td><td>∫tT4ξ(u,T4,T6)2du = v4,6= ∫tT4{ξ(u,T4,T5)+ξ(u,T5,T6)}2du = {ξ045+ξ056}2Δ1 + {ξ145+ξ156}2Δ2 + {ξ245+ξ256}2Δ3 + {ξ345+ξ356}2Δ4</td></tr><tr><td rowspan="3">i×3</td><td>∫tT1ξ(u,T1,T2)2du = v1,2</td><td>∫tT2ξ(u,T2,T3)2du = v2,3</td><td>...</td><td>∫tT4ξ(u,T4,T5)2du = v4,5</td></tr><tr><td>∫tT1ξ(u,T1,T3)2du = v1,3</td><td rowspan="2">∫tT2ξ(u,T2,T4)2du = v2,4</td><td rowspan="2">...</td><td>∫tT4ξ(u,T4,T6)2du = v4,6</td></tr><tr><td>∫tT1ξ(u,T1,T4)2du = v1,4= ∫tT2ξ(u,T2,T5)2du = v2,5= {ξ023+ξ034+ξ035}2Δ1 + {ξ123+ξ134+ξ145}2Δ2</td><td>∫tT4ξ(u,T4,T7)2du = v4,7= ∫tT4{ξ(u,T4,T5)+ξ(u,T5,T6)+ξ(u,T6,T7)}2du = {ξ045+ξ056+ξ067}2Δ1 + {ξ145+ξ156+ξ167}2Δ2 + {ξ245+ξ256+ξ267}2Δ3 + {ξ345+ξ356+ξ367}2Δ4</td></tr><tr><td>:</td><td>:</td><td>:</td><td>:</td><td>:</td></tr></table>

Figure 10.3:  $\xi$  Table

Figure 10.3 depicts how each swaption can uniquely identify a  $\xi_{u,j + m,j + m + 1}$  value between any two consecutive future periods for time u. This allows us then to bootstrap a piece-wise flat (half) surface for  $\xi_{u,j + m,j + m + 1}$  as shown in Figure 1.

In Figure 10.3, to compute each  $\xi$  value, we first travel top-down and then left-right. For example, the  $1 \times 1$  swaption defines the value for  $\xi_{012}$ . Then we need to use the  $1 \times 2$  swaption to uniquely define  $\xi_{123}$ . This is because the  $1 \times 2$  swaption requires both  $\xi_{012}$  and  $\xi_{123}$  to complete the volatility for the put option  $\chi_{1,3}$ . Hence, since is solved for by the  $1 \times 1$  swaption,  $\xi_{123}$  can be solved for by the  $1 \times 2$  swaption. As we can see, this bootstrap process can only be valid if a future volatility function  $\xi_{123}$  is known today (time 0). This is how our model is different from the existing LMM where the drift adjustment is stochastic. Admittedly, the fact that  $\xi_{123}$  can be known at time 0 is the result of the log-normality assumption for the forward price (or  $1 +$  forward rate). In other words, the  $\xi$  function in our model can be either deterministic (which requires log-normality) or stochastic (such as the Cox-Ingersoll-Ross model) and yet the former allows for bootstrapping of the volatility function.

Figure 10.4 helps visualize the surface of the  $\xi$  function which is the lower-left half triangle. Vertically along the first column, it fills in the first period  $\xi$  values (i.e.  $\xi_{1,j,j+1}$  for  $j = 1,\dots,n-1$ ). These are the  $\xi$  values for various forward prices

(1 + forward rates) in the first period.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/5718c5d467ee1d5cf32b23eb3f9b08a730c187302ba8b5bd2ac954e69e9d18ec.jpg)
Figure 10.4: Swaption Volatility Grid

Then the second column depicts the  $\xi$  values in the second period. This column can be filled only if the first column is completely filled. The process continues until the entire half surface is filled.

In Figure 10.4, we demonstrate a case where not all swaptions of all tenors are traded. In this case, we must adopt an interpolation method to fill those values that do not have swpation contracts. The simplest method is piece-wise flat where all values that do not have supporting swaption contracts will take the preceding values. In Figure 10.4, we have three swaptions:  $2 \times 3$ ,  $2 \times 6$ , and  $4 \times 3$ , which define the corresponding boxes in Figure 10.4. For example, the  $2 \times 3$  swaption requires the following values (which are identical):

For example, the  $2 \times 3$  swaption requires the following  $\xi$  values (which are identical):

$$
\begin{array}{c c} \xi_{0, 2, 3} & \xi_{1, 2, 3} \end{array}
$$

$$
\begin{array}{c c} \xi_{0, 3, 4} & \xi_{1, 3, 4} \end{array}
$$

$$
\begin{array}{c c} \xi_{0, 4, 5} & \xi_{1, 4, 5} \end{array}
$$

Then the  $2 \times 6$  swaption is used to solve for additional  $\xi$  values (which are identical):

$$
\begin{array}{c c} \xi_{0, 5, 6} & \xi_{1, 5, 6} \end{array}
$$

$$
\begin{array}{c c} \xi_{0, 6, 7} & \xi_{1, 6, 7} \end{array}
$$

$$
\begin{array}{c c} \xi_{0, 7, 8} & \xi_{1, 7, 8} \end{array}
$$

And finally the  $4 \times 3$  swaption is used to the remaining  $\xi$  values (which are identical):

$$
\begin{array}{c c} \xi_{2, 5, 6} & \xi_{3, 5, 6} \end{array}
$$

$$
\begin{array}{c c} \xi_{2, 6, 7} & \xi_{3, 6, 7} \end{array}
$$

$$
\begin{array}{c c} \xi_{2, 7, 8} & \xi_{3, 7, 8} \end{array}
$$

As we can see, our model is flexible enough to accommodate any number of swaptions. Since each swaption has at least one  $\xi$  value, all swaptions can be exactly repriced. In the Appendix, more details are given to clarify the bootstrapping process.

In the following numerical example, we demonstrate how calibration is implemented and perfect repricing can be achieved. We use a simple example where swpations are quoted annually. We use maturities up to 4 years only, as a demonstration of the algorithm. The term structure is given as:

$$
\begin{array}{l} \begin{array}{c c} \mathrm{i} & \mathrm{P} (0, \mathrm{i}) \\ \hline \end{array} \quad \mathrm{y} (0, \mathrm{i}) \\ \begin{array}{c c c} 1 & 0. 9 8 0 7 & 0. 0 1 8 \end{array} \\ \begin{array}{c c c} 2 & 0. 9 4 9 4 & 0. 0 2 7 \end{array} \\ \begin{array}{c c c} 3 & 0. 9 1 6 0 & 0. 0 3 2 3 \end{array} \\ \begin{array}{c c c} 4 & 0. 8 8 2 9 & 0. 0 3 6 1 \end{array} \\ \end{array}
$$ and the swaption quotes are:


Table 10.1: Term Structure (an example)

<table><tr><td>2278.10</td><td></td><td></td><td>1x1</td><td></td><td></td></tr><tr><td>5461.08</td><td>4207.68</td><td></td><td>1x2</td><td>2x1</td><td></td></tr><tr><td>8840.52</td><td>9157.93</td><td>5863.36</td><td>1x3</td><td>2x2</td><td>3x1</td></tr></table>

Table 10.2: Swaption Prices (an example)

Since 2278.10 is a  $1 \times 1$  swaption, it is a put option on  $P(T_{1}, T_{2})$ .

$$
C_{1 \times 1}^{\mathrm{sw ap}} = P (t, T_{1}) (1 + w_{K}) \chi_{1, 2}
$$ where (directly from equation (10.18) with  $j = 1$  and  $k = 2$ )


$$
\chi_{1, 2} = K_{2} N \left(- \frac{\ln \Psi (t , T_{1} , T_{2}) - \ln K_{2} -^{1 / 2} v_{1 , 2}^{2}}{v_{1 , 2}}\right) - \Psi (t, T_{1}, T_{2}) N \left(- \frac{\ln \Psi (t , T_{1} , T_{2}) - \ln K_{2} +^{1 / 2} v_{1 , 2}^{2}}{v_{1 , 2}}\right)
$$

(which is also a cap). From equation (10.21) we solve for

$$
K_{2} = \Psi (t, T_{1}, T_{2}) = \frac{0 . 9 4 9 4}{0 . 9 8 0 7} = 0. 9 6 8 1
$$

Then by (10.19):

$$
(1 + w_{2}) K_{2} = 1
$$ we solve for  $w_{2} = 0.0330$  and the option value is  $P(0,1)\times \chi_{1,2} = 2205.34$ .


Using this put option value, we can solve for the implied volatility in equation (10.18) as

$$ v_{j, k} = v_{1, 2} = 0. 0 5 8 2 3 3
$$

According to equation (10.20),  $\xi_{0,1,2} = v_{1,2} = 0.058233$ .

Next, 5461.08 is a  $1 \times 2$  swaption. According to equation (10.17), it is a portfolio of two put options:  $j = 1$  and  $k = 1, 2$  in equation (10.18), i.e.

$$
C_{1 \times 2}^{\mathrm{sw ap}} = P (t, T_{1}) \left\{w_{K} \left(\chi_{1, 2} + \chi_{1, 3}\right) + \chi_{1, 3} \right\}
$$

The first option  $\chi_{1,2}$  in the above equation is identical to the one in the  $1\times 1$  swaption and hence  $v_{1,2}$  is already solved just now. The second put option is:

$$
\chi_{1, 3} = K_{3} N \left(- \frac{\ln \Psi (t , T_{1} , T_{3}) - \ln K_{3} -^{1 / 2} v_{1 , 3}^{2}}{v_{1 , 3}}\right) - \Psi (t, T_{1}, T_{3}) N \left(- \frac{\ln \Psi (t , T_{1} , T_{3}) - \ln K_{3} +^{1 / 2} v_{1 , 3}^{2}}{v_{1 , 3}}\right)
$$

From equation (10.21) we solve for

$$
K_{3} = \Psi (t, T_{1}, T_{3}) = \frac{0 . 9 1 6 0}{0 . 9 8 0 7} = 0. 9 3 4 0
$$ and


$$ w_{3} (K_{2} + K_{3}) + K_{3} = 1
$$ allows us to solve for the swap rate as  $w_{3} = 0.0347$ .


Given that, we need to solve for  $v_{1,3}$  with this swaption price of 5461.08. According to equation (10.20),

$$ v_{1, 3}^{2} = \{\xi_{0, 1, 2} + \xi_{0, 2, 3} \}^{2}
$$

Hence solving for  $v_{1,3}$  from equation (10.18), then we can solve for  $\xi_{0,2,3} = 0.084293$ . The option values are: 2205.34 and 5203.94 respectively.

Similarly, 4207.68 is a  $1 \times 3$  swaption and we can solve for the put option value  $\chi_{1,4}$ , then  $v_{1,4} = 0.235671$ , and then  $\xi_{0,3,4} = 0.093145$ . The process continues if there are more  $1 \times j$  swaptions.

After the first column, we proceed to the second column, i.e.  $2 \times j$  swaptions. A  $2 \times 1$  swaption composes of a single put option:

$$
C_{2 \times 1}^{\mathrm{sw ap}} = P (t, T_{2}) (1 + w_{K}) \chi_{2, 3}
$$ where


$$
\chi_{2, 3} = K N \left(- \frac{\ln \Psi (t , T_{2} , T_{3}) - \ln K^{- 1 / 2 v_{2 , 3}^{2}}}{v_{2 , 3}}\right) - \Psi (t, T_{2}, T_{3}) N \left(- \frac{\ln \Psi (t , T_{2} , T_{3}) - \ln K^{+ 1 / 2 v_{2 , 3}^{2}}}{v_{2 , 3}}\right)
$$ which can be used to solve for  $v_{2,3} = 0.11115$ . Given that  $v_{2,3}^2 = \xi_{0,2,3}^2 + \xi_{1,2,3}^2$  and  $\xi_{0,2,3} = 0.084293$ , we can solve for  $\xi_{1,2,3} = 0.07245$ .


A  $2 \times 2$ , similar to  $1 \times 2$ , is a portfolio of two put options,  $\chi_{2,3}$  and  $\chi_{2,4}$  where the latter requires the knowledge of the volatility  $v_{2,4}^{2} = \{\xi_{0,2,3} + \xi_{0,3,4}\}^{2} + \{\xi_{1,2,3} + \xi_{1,3,4}\}^{2}$ . The bootstrap continues with more swaptions are included. An exhibit is provided in the Appendix for easy understanding of the bootstrap procedure.

The example is completed and the volatility matrix is given as follows:

<table><tr><td>0.058233</td><td></td><td></td><td>v1,2</td><td></td><td></td></tr><tr><td>0.142526</td><td>0.11115</td><td></td><td>v1,3</td><td>v2,3</td><td></td></tr><tr><td>0.235671</td><td>0.24725</td><td>0.160624</td><td>v1,4</td><td>v2,4</td><td>v3,4</td></tr></table> which uses of the following  $\xi$  matrix:


Table 10.3: Volatility Matrix

<table><tr><td>0.05823</td><td></td><td></td><td>ξ012</td><td></td><td></td></tr><tr><td>0.08429</td><td>0.07245</td><td></td><td>ξ023</td><td>ξ123</td><td></td></tr><tr><td>0.09315</td><td>0.09974</td><td>0.08471</td><td>ξ034</td><td>xi134</td><td>ξ234</td></tr></table>

Table 10.4:  $\xi$  Matrix

Now we can apply real data taken from Bloomberg on March 15, 2017, as shown in Figure 10.5. Each volatility is the Black volatility on an x into y swaption where x (option tenor) is plotted horizontally as x-axis and y is the remaining life of the swap after the maturity of the option and plotted as the y-axis. The volatility is shown on the z-axis. For example, a 3M option into a 10Y, or  $3\mathrm{M} \times 10\mathrm{Y}$ , swap (i.e. the swap maturity date is 10.25 years) is shown as x=3M and y=10Y.

These are Black volatility quotes and need to be converted to prices. We note that in the swaption market, price quotes are available and are exchangeable with (Black) volatility quotes via the Black formula. The resulting  $\xi$  function is plotted in Figure 10.6.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/1b97c4b08444396a7903e3c449f28aad2c2e63bc4d9264f297496d54bc4ac3bf.jpg)
Figure 10.5: Swaption Volatility Surface; March 15, 2017

# 10.4 Other Derivatives

There are a large number of OTC fixed income derivatives. In fact, most of the fixed income derivatives are traded over the counter. Besides the swaps and swap-tions introduced in previous and this chapters, there are three notable categories of contracts:

1. Equity-linked contracts
2. Credit-linked contracts

# 10.4.1 Equity-linked Notes

Investopedia:

An equity-linked note (ELN) is an investment product that combines a fixed-income investment with additional potential returns that are tied to the performance of equities. Equity-linked notes are usually structured to return the initial investment with a variable interest portion that depends on the performance of the linked equity. ELNs can be structured in many different ways, but the vanilla version works like a strip bond combined with a call option on a specific security, a basket of securities or an index like the S&P 500 or DJIA. In the case of a note linked to an equity index, the security would typically be called an equity index-linked note.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/2a0f6d9614f58d4f884e58bf2610373369224281076fc354192f5ef1bd048726.jpg)
Figure 10.6: Fitted  $\xi$  Function


In practice, an equity-linked note will have a participation rate, which is the percentage amount that the investor in the note participates in the appreciation of the underlying equity. If the participation rate is 100%, then a 5% increase in the underlying is a 5% increase for the eventual payout on the note. However, the cost of structuring the ELN and managing it can lower the participation rate. In the case of a 75% participation rate, for example, a 5% appreciation in the underlying is only worth 3.75% to the investor.

Equity-linked notes can also use different structures and features. Some will use an averaging formula to smooth out returns on the equity-linked portion or a periodic cap that limits the ELN's upside by realizing returns at a particular level on a regular basis. There are also types of equity-linked notes that use dynamic hedging instead of options, deploying leverage to increase returns from the underlying equity. Overall, equity-linked notes can be a powerful tool for investors who want to protect their principle while still having the potential upside of an equity investment.

# Labor Force Participation Rate

The labor force participation rate is a measure of an economy's active workforce. The formula for the number is the sum of all workers who are employed or actively seeking employment divided by the total noninstitutionalized, civilian working-age population.

The U.S. labor participation rate stood at 61.4% as of July 2020, according to the federal Bureau of Labor Statistics, which publishes updates monthly.1 The monthly figures have hovered around 63% since 2013, after a sharp decline in the wake of the Great Recession. It remains to be seen what the effect will be of 10 million newly unemployed Americans in just two weeks thanks to the Covid-19 pandemic.

# Convertible Bonds

An overwhelming majority of corporate bonds are traded over the counter (a small portion are traded on NYSE and regional exchanges). Many of the corporate bonds embed an option to convert to stock. This is a cheap method for the companies to pay lower interests (and use conversion as a reward).

As a result, convertible bonds are a hybrid product of both equity and interest rates (since corporations are credit risk, convertible bonds also bear credit risk but yet the credit risk is usually dealt with by a simple adjustment to the discount factor).

Convertible bonds will be discussed in details in Chapter 11.

# 10.4.2 Credit-linked Notes

A typical credit-linked note functions similarly to a bond in that payments are made semi-annually, but with a credit default swap attached. Under this structure, the coupon, or price of the note, is linked to the performance of a reference asset. It offers borrowers a hedge against credit risk and gives investors a higher yield on the note for accepting exposure to a specified credit event.

These are interest rate derivatives whose payoffs are linked to credit quality.

Give examples


---
parent_directory:
title: Financial Instruments
tags:
aliases:
parent_folder: Lecture Notes
subfolder:
key_concepts:
cssclasses: academia
linter-yaml-title-alias: Financial Instruments
---

# Financial Instruments

# Interest Rate Derivatives

John Heaton

The University of Chicago

Booth School of Business

1. Interest rate FRA and Swaps  
2. Black's model for interest rate derivatives  
3. Interest Rate Trees

3.1 Interest Rate Trees versus Stock Trees  
3.2 Risk Neutral Pricing on Trees  
3.3 A 3-Period Bond

4. The Ho Lee Model

4.1 Risk Neutral Trees  
4.2 Calibration of Ho Lee Model

4. Using Risk Neutral Trees

4.1 Callable Bonds

# The Growth in Interest Rate Derivatives

# The Notional Amount of Over-the-Counter Derivatives

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/89378a76-a6be-4322-af7e-a74536096b6c/ef4c99fb40e1752c4240bdf203373adc4d9a532f594a5f74edcab72fc3546582.jpg)  
Panel A. Millions of US Dollars

Panel B. Multiple of Global GDP  
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/89378a76-a6be-4322-af7e-a74536096b6c/c67e127c68101f4a375037812752b2b25ab0fff71dba67e7d6662c047297f40e.jpg)  
(Data Source: OTC derivatives data are from the Bank for International Settlements, while global GDP data are from the World Bank.)

# Forward Rate Agreements

- A Forward Rate Agreement (FRA) is an agreement between two counterparties A and B according to which at maturity  $T$
- Counterparty A makes a payment to B equal to  $N \times F \times \Delta$ , where  $N$  is the notional,  $\Delta$  the compounding frequency, and  $F$  is a fixed rate decided at time 0;  
- Counterparty B makes a payment to A equal to  $N \times R(T_0, T) \times \Delta$ , where  $T_0 = T - \Delta$ .
- The reference floating rate  $R$  is typically the LIBOR rate. The forward rate  $F$  is determined at time 0 so that the value of the FRA is zero.  
- What is the value of this net cash flow at time 0 for given  $F$ ?  
- Assume we have available the values of zero coupon bonds  $Z(0, T_0)$  and  $Z(0, T)$ .  
- The Net Cash flow to counterparty A is

$$
\begin{array}{l} \mathrm {N e t C a s h F l o w a t} T = N \times \Delta \times (F - R (T _ {0}, T)) \\ = N \times (1 + F \times \Delta) \qquad \mathrm {(F i x e d L e g)} \\ - N \times (1 + R (T _ {0}, T) \times \Delta) \qquad \mathrm {(F l o a t i n g L e g)} \\ \end{array}
$$

- We compute the value of the FRA by computing the value of each leg.

# Forward Rate Agreements

- Present value of fixed leg. This can be computed immediately:

$$
\mathrm {V a l u e o f F i x e d L e g} = Z (0, T) \times N \times (1 + F \times \Delta)
$$

- Present value of floating leg. This must be computed in two steps

1. Compute the value of cash flow  $N \times R(T_0, T)$  as of time  $T_0$ . Note that at that time we will know the rate  $R(T_0, T)$

$$
\mathrm {V a l u e o f F l o a t i n g L e g a t} T _ {0} = \frac {\mathrm {C a s h F l o w a t} T}{1 \mathrm {p e r i o d d i s c o u n t}} = N \times \frac {(1 + R (T _ {0} , T) \times \Delta)}{(1 + R (T _ {0} , T) \times \Delta)} = N
$$

2. Obtain the value of Floating Leg at 0

$$
\mathrm {V a l u e o f F l o a t i n g L e g a t} 0 = Z (0, T _ {0}) \times N
$$

- Therefore, the value of the FRA is

$$
V = N \times [ Z (0, T) \times (1 + F \times \Delta) - Z (0, T _ {0}) ] = N \times Z (0, T) \times \left[ (1 + F \times \Delta) - \frac {Z (0 , T _ {0})}{Z (0 , T)} \right]
$$

- The forward rate  $F$  makes this quantity equal to zero

$$
1 + F \times \Delta = \frac {Z (0 , T _ {0})}{Z (0 , T)} \Longrightarrow F = \frac {1}{\Delta} \left(\frac {Z (0 , T _ {0})}{Z (0 , T)} - 1\right)
$$

# Forward Rate Agreement: Example

- It is November 1, 2022. A firm has a receivable of \$100 million in six months (T₁ = 0.5), and wishes to park this money for an additional six months (until T₂ = 1), when it will need to use it for some capital expenditure.  
- The firm is worried that the six-month rate will decline at  $T_{1}$  and thus wants to lock-in a six-month rate today.  
- To hedge, the firm can enter into a six-month FRA with a bank for the period  $T_{1}$  to  $T_{2}$ , and notional  $N = \$ 100$ million.
- Today the bank agrees to pay in one year ( $T_{2} = 1$ ) the amount  $\frac{N}{2} \times F(0, .5, 1)$ ;  
- The firm agrees to pay on the same day the amount  $\frac{N}{2} \times R(0.5, 1)$ .
- That is, they exchange the payment at  $T_{2} = 1$

$$
\text {N e t} T _ {2} = \frac {N}{2} \times [ F (0., 5, 1) - R (0. 5, 1) ] \tag {1}
$$

What is the forward rate?

- On November 1, 2022, the value of 6-months Treasury bills is \(Z(0,0.5) = \\)97.728\( and the value of 1-year Treasury bills is \)Z(0,1) = \$95.713\(. Thus:

$$
F(0,0.5,1) = 2\times \left(\frac{Z(0,0.5)}{Z(0,1)} -1\right) = 4.21\%.
$$

# Forward Rate Agreement: Example

- Why does the FRA solves the hedging problem of the firm?  
- Because at  $T_{1} = 0.5$ , when the firm receives its \$100 million receivable, it can simply invest it at the market rate  $R(0.5, 1)$ .  
- Then, at  $T_{2} = 1$ , the firm receives the payoff from the investment, plus the net payment from the FRA. In total:

$$
\begin{array}{l} \begin{array}{r l} \mathrm {T o t a l a m o u n t} & = \left\{\mathrm {\S 1 0 0 m i l l i o n} \times \left[ 1 + \frac {R (0 . 5 , 1)}{2} \right] \right\} \quad \mathrm {(R e t u r n o n i n v e s t m e n t)} \end{array} \\ + \left\{\frac {N}{2} \times [ F (0,. 5, 1) - R (0. 5, 1) ] \right\} \quad (\mathrm {F R A p a y m e n t}) \\ = \$ 100 \text {m i l l i o n} \times \left[ 1 + \frac {F (0 , . 5 , 1)}{2} \right] \\ = \$ 102.105 \text {m i l l i o n} \\ \end{array}
$$

- That is, the firm locked in the forward rate  $F(0,.5,1) = 4.21\%$

# Interest Rate Swaps

- An interest rate swap is an agreement between two counterparties, according to which at dates  $T_{1}, T_{2}, \ldots, T_{n}$ , with  $T_{i} = T_{i - 1} + \Delta$ , the counterparties exchange the net cash flows

$$
\mathrm {S w a p N e t C a s h F l o w a t} T _ {i} = N \times \Delta \times (K - R (T _ {i - 1}, T _ {i}))
$$

- The swap rate  $K$  is chosen to make the value of the swap equal to zero at time 0.  
- What is the value of the swap at 0?
- Clearly, this specific cash flow is the same we had earlier for a FRA, and therefore

$$
\begin{array}{l} \mathrm {P V o f C a s h F l o w a t} T _ {i} = N \times Z (0, T _ {i}) \times \left[ (1 + K \times \Delta) - \frac {Z (0 , T _ {i - 1})}{Z (0 , T _ {i})} \right] \\ = N \times Z (0, T _ {i}) \times [ (1 + K \times \Delta) - (1 + F (0, T _ {i - 1}, T _ {i}) \Delta) ] \\ = N \times \Delta \times Z (0, T _ {i}) [ K - F (0, T _ {i - 1}, T _ {i}) ] \\ \end{array}
$$

- where we denote  $F(0, T_{i - 1}, T_i)$  the forward rate at time 0 for a FRA between  $T_{i - 1}$  and  $T_i$ .

# Interest Rate Swaps

- It follows that for given  $K$ , the value of the swap is the sum of these values

$$
\mathrm {V a l u e o f S w a p} = N \times \Delta \times \sum_ {i = 1} ^ {n} Z (0, T _ {i}) \times [ K - F (0, T _ {i - 1}, T _ {i}) ]
$$

- The swap rate is then the  $K$  that makes the value of the swap equal to zero

$$
\sum_ {i = 1} ^ {n} Z (0, T _ {i}) \times [ K - F (0, T _ {i - 1}, T _ {i}) ] = 0 \Longrightarrow K = \sum_ {i = 1} ^ {n} w _ {i} \times F (0, T _ {i - 1}, T _ {i})
$$

- where

$$
w _ {i} = \frac {Z (0 , T _ {i})}{\sum_ {i = 1} ^ {n} Z (0 , T _ {i})}
$$

- The swap rate is a weighted average of forward rates.  
- This is very similar to our findings in Teaching Notes 2.

# Interest Rate Swap Example

- Today is November 1, 2022. A firm has receivables of \$5.5 million every six months for the next 5 years.  
- The firm has also a 5-year, semi-annual,  $200 \mathrm{~m}$  floating rate debt outstanding, with floating rate LIBOR + 4 bps.  
- How can the firm use the receivables to service the coupons on the debt?
- A solution is to enter into a fixed-for-floating swap with an investment bank.  
- On November 1, 2022, the swap rate for a 5-year fixed-for-floating swap was quoted at  $K = 5.46\%$ .  
- So, the net cash flow to the firm from the swap contract is

Net cash flow to the firm at \(T_{i} = \\)200\( million \(\times 0.5\times [R(T_{i - 1},T_i) - 5.46\% ]\)

- Why does this swap resolve the problem?

# Interest Rate Swap Example

time  $T_{i}$

# RECEIVABLE

\$5.5 m

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/89378a76-a6be-4322-af7e-a74536096b6c/bad813d2bda912dfe5d34113ed24bfd97550ea5faef87c7437397934b7941be9.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/89378a76-a6be-4322-af7e-a74536096b6c/e2b436eea4d0cf35c60561ab8a4d25aa51590c4fea3b8b153b4af0f5ccfdfe38.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/89378a76-a6be-4322-af7e-a74536096b6c/88271895334d764e712533ff58a0c3c1ad1849d41cc5e6566a7de2fcc9d3eb8d.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/89378a76-a6be-4322-af7e-a74536096b6c/9f7d93dd6b9cb4600bfd927b53ee93c6c904a2a69b2a31d9f03d966e0ad4e837.jpg)

MARKET

$\Longleftarrow \quad \Longleftarrow \quad \Longleftarrow$

FIRM

Swap: fixed leg

$$
\frac {\mathrm {~$ 200 m}}{2} \times 5.46 \%
$$

$$
\begin{array}{l} \Rightarrow \Rightarrow \Rightarrow \\ \Longleftarrow \quad \Longleftarrow \quad \Longleftarrow \\ \end{array}
$$

Floating rate bond

$$
\frac {\mathrm {s 2 0 0 m}}{2} \times (R (T _ {i - 1}, T _ {i}) + 4 b p s)
$$

Swap: floating leg

$$
\frac {\mathrm {s g m a l} 2 0 0 \mathrm {m}}{2} \times R (T _ {i - 1}, T _ {i})
$$

SWAP

DEALER

Net Flow  $= 0$

- One of the main reasons for the massive increase in the size of the swap market is its flexibility for cash flow management and risk management.

# Issues with LIBOR

- Until January 31, 2014: British Bankers Association (BBA) LIBOR
- Survey of a panel of banks  
- Banks could underestimate their borrowing costs  
- Conflict within the bank: impact of LIBOR setting on derivatives trading.
- Now ICE LIBOR
- ICE now the benchmark administrator  
- Regulator in UK: Financial Conduct Authority (FCA)  
- Rules for fall-back rates if there are issues

# Alternatives

- SOFR: "Secured Overnight Financing Rate"  
- ARRC: Alternative Reference Rates Committee.  
- Others:
- SONIA (Sterling Over Night Indexed Average)  
- EONIA (Euro Overnight Index Average)  
- TONAR (Tokyo Overnight Average Rate)  
- SARON (Swiss Average Rate Over-Night)  
- Measure of overnight secured borrowing.  
- Collateralized US Treasuries in the repo market.  
- Very liquid and likely resilient markets: \$1 trillion in daily volume  
- Contrast: USD LIBOR three-month tenor: about \$1 billion  
- Published by New York Fed. Along with 30-day, 90-day and 180-day averages

# Transition

- LIBOR market: \$200+ trillion of financial transactions contracts reference LIBOR  
- Transition was set for end of 2021, but now 18 month extension  
- LIBOR permeates many contracts for in securities markets and the corporate world: leases, debt, …  
- Derivatives market with Central Clearing Partners (e.g. CME …).
- Cleared US Dollar interest rate swap contracts at CME: move to SOFR discounting.  
- Intercontinental Exchange (ICE) Benchmark Administration: USD LIBOR benchmarks will stop June 30, 2023
- Fannie and Freddie: have moved bo SOFR contracts  
- New York Fed: conducts repo and reverse repo through tri-party repo.  
- OTC SOFR swaps  
- SOFR caps products have developed since September 2020

# SOFR Derivatives

As an example: at the CME

- Futures: 3-month and 1-month. Using compounding or simple averages.  
- Term SOFR Reference rates based on futures contracts.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/89378a76-a6be-4322-af7e-a74536096b6c/f0e0c95470d75b8a5f2d226470977396ac4ffb6c37da68a97d481deea94bd99c.jpg)  
Some History

# Overnight Index Swaps (Is)

- In a Is, the two counterparties agree to exchange fixed for floating payments, where the floating payment is tied to the cumulative return from an overnight rate  
- Federal funds rate, SOFR in US. Europe: short-term rate (€STR), (formerly Euro OverNight Index Average (EONIA) rate).  
- Given a notional  $N$ , the floating rate payment at time  $T_{i}$  is

$$
C F (T _ {i}) = N \left(\prod_ {j = 1} ^ {n _ {j}} \left(1 + r _ {t _ {j}} \delta\right) - 1\right) \tag {2}
$$

- where  $\delta$  is the daily interval,  $r_t$  is the reference (annualized) overnight rate, and  $n_j$  is the number of days between reset periods.  
- The day count convention is normally Actual/360.  
- In the continuous time limit  $(\delta \to 0)$ , we have that

$$
C F \left(T _ {i}\right) = N \left(e ^ {\int_ {T _ {i - 1}} ^ {T _ {i}} r (u) d u} - 1\right) \tag {3}
$$

- Is with maturity less than 1 year have only one payment at the maturity.  
- Is with longer maturities have normally quarterly payments.

# What is the value of Is?

- The value of Is is the difference between the floating leg and the fixed leg:

$$
V _ {t} ^ {O I S} = V _ {t} ^ {F l o a t i n g} - V _ {t} ^ {F i x e d} \tag {4}
$$

- Floating Leg: At reset dates, and assuming the payment of a principal at maturity of the swap, the value of the floating leg is par.
- Indeed, investing the notional  $N$  in the overnight index daily gives at  $T_{i}$

$$
N \prod_ {j = 1} ^ {n _ {j}} \left(1 + r _ {t _ {j}} \Delta\right) = C F \left(T _ {i}\right) + N
$$

- $\Longrightarrow$  we can replicate the floating payments, plus a residual of notional at maturity  $T_{i}$ , with an investment  $N$  at time 0.
- It follows

$$
V _ {0} ^ {F l o a t i n g} = N
$$

- Fixed leg: Given a proper discount function  $Z^{OIS}(0, T_i)$ , we obtain

$$
V _ {0} ^ {F i x e d} = N c \Delta \sum_ {i = 1} ^ {n} Z ^ {O I S} (0, T _ {i}) + N Z ^ {O I S} (0, T _ {n}) \tag {5}
$$

- The value of the contract at inception is zero,  $V_0^{OIS} = 0$ .  
- It follows from (4) then that

$$
V _ {0} ^ {O I S} = V _ {0} ^ {F l o a t i n g} - V _ {0} ^ {F i x e d} = 0 \tag {6}
$$

- This equation implies that the swap rate  $c$  can be computed from

$$
1 = c \Delta \sum_ {i = 1} ^ {n} Z ^ {O I S} (0, T _ {i}) + Z ^ {O I S} (0, T _ {n}) \tag {7}
$$

- which gives

$$
c (T _ {n}) = \frac {1}{\Delta} \frac {1 - Z ^ {O I S} (0 , T _ {n})}{\Sigma_ {i = 1} ^ {n} Z ^ {O I S} (0 , T _ {i})} \tag {8}
$$

- where we now emphasize that the coupon rate  $c$  is for a swap with maturity  $T_{n}$ , and thus write  $c(T_{n})$ .

# Is Discount Curve

- Given the Is coupon rates  $c\left( {T}_{i}\right)$  for every maturity  ${T}_{i}$  ,we can bootstrap the Is zero-coupon curve from (6).  
- We obtain the relation:

$$
Z ^ {O I S} (0, T _ {i}) = \frac {1 - c (T _ {i}) \Delta \sum_ {j = 1} ^ {i - 1} Z ^ {O I S} (0 , T _ {j})}{1 + c (T _ {i}) \Delta} \tag {9}
$$

- recalling, however, that Is with maturity less than or equal to 1 year generally have only one payment.  
- Next Figure shows an example of bootstrapping from Is quotes, on January 2, 2009. Panel A reports the original Is quotes from Bloomberg. Panel B uses the quotes from Panel A along with bootstrap methodology (9) and defines the Is discount function  $Z^{OIS}(0,T)$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/89378a76-a6be-4322-af7e-a74536096b6c/72f90d5edd51e0b09404fb7c198eaf0381eed033f6c4ab6c0b907a1cc5bbe9fd.jpg)  
Is Discount Curve on January 2th, 2009

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/89378a76-a6be-4322-af7e-a74536096b6c/1efa0bb929ec329029420bf8bbdcc164018fa9caed377ff768a88632647cc0f1.jpg)  
Data Source: Bloomberg

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/89378a76-a6be-4322-af7e-a74536096b6c/4f0f9e4d8fe61f1adf4ad88c45ce8c532dd0fb61a7f0fdcc17c2ebab67c3a483.jpg)  
Is and LIBOR Discount Curve on January 2nd, 2007

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/89378a76-a6be-4322-af7e-a74536096b6c/5d0bce4d98aa92c6702f16616d3b0fbaf411a289fa60cbd0de9d4784ac2ad99a.jpg)  
Data Source: Bloomberg

- However, if we try after the crisis, we obtain the following figure:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/89378a76-a6be-4322-af7e-a74536096b6c/a9bbdf3e93972949a75d2a3567d6531f50795a47d989f96e4b7f6f4648c72961.jpg)  
Is and LIBOR Discount Curve on January 2nd, 2009  
Panel A. Is and LIBOR Zero Coupon Curve

Panel B. Is and LIBOR Zero Curve  
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/89378a76-a6be-4322-af7e-a74536096b6c/ff351b17f14d05983d22871c8c6ba7da4b0e56163abff3c3ee41d2252af79f38.jpg)  
Data Source: Bloomberg

- which are quite different.

# Interest Rate Options

- The market for plain vanilla interest rate options is very large.  
These include

- Treasury bond options: Options to purchase a Treasury bond  
- Swaptions: Options to enter into a swap at a given strike (swap) rate.

* Receiver Swaptions: Options to enter into a swap and receive the strike swap rate;  
* Payer Swaptions: Options to enter into a swap and pay the strike swap rate.

- Caps and Floors: Securities that pay when rates go up (Caps) or down (Floors). Their cash flows are given by

$$
\mathrm {C a p C F a t} T _ {i} = N \times \Delta \times \max (R (T _ {i - 1}, T _ {i}) - K, 0);
$$

$$
\mathrm {F l o o r C F a t} T _ {i} = N \times \Delta \times \max (K - R (T _ {i - 1}, T _ {i}), 0)
$$

* Popular derivative instruments to insure agains increases or decreases in interest rates  
* For instance, caps typically accompany floating rate bond issuance.

- Caption and Floortion: Options to enter into a cap or a floor.

# The Black's Formula for Interest Rate options

- The assumptions of Black and Scholes do not apply to interest rate options

1. The Black-Scholes model assumes a constant interest rate, while we are trying to price risk on interest rates;  
2. The Black-Scholes model assumes constant volatility, but if the underlying is e.g. a T-Bond, the volatility depends on duration and thus it is declining with time.

- Even so, practitioners use the Black-Scholes formula to price a number of interest rate derivatives
- For long this has been thought to be at best an approximation of no arbitrage models, because of the violations to Black-Scholes formula's assumption described earlier  
- In recent times, it has been shown that the Black and Scholes formula can be derived by no-arbitrage principles under some assumptions.
- In what follow, we only look at one simple example.

# Example: The Black's formula to price caps

- The Cap pays the sequence of cash flows

$$
\mathrm {C a p C F a t} T _ {i} = N \times \Delta \times \max \left(R (T _ {i - 1}, T _ {i}) - K, 0\right);
$$

- where  $\Delta = T_{i} - T_{i - 1}$ . Each payment is called a caplet.  
- The original Black's formula uses as underlying the futures price, which equals the forward price when interest rates are constant.  
- In the case of caplets, we use the forward rate directly, which is given by

$$
F (0, T _ {i - 1}, T _ {i}) = \frac {1}{\Delta} \left(\frac {Z (0 , T _ {i - 1})}{Z (0 , T _ {i})} - 1\right)
$$

- The model assumes that under the proper risk-adjusted probabilities, at time  $T_{i}$

$$
R (T _ {i - 1}, T _ {i}) = F (T _ {i - 1}, T _ {i - 1}, T _ {i}) \sim L o g N o r m a l
$$

with Variance  $[R(T_{i - 1},T_i)] = \sigma_F^2 T_{i - 1}$  

- Then, the Black formula (see Teaching Notes 5) has

$$
C a p l e t (T _ {i}) = Z (0, T _ {i}) \times [ F (0, T _ {i - 1}, T _ {i}) \times N (d _ {1}) - K \times N (d _ {2}) ]
$$

- where

$$
d _ {1} = \frac {\log \left(\frac {F (0 , T _ {i - 1} , T _ {i})}{K}\right) + \frac {1}{2} \sigma_ {F} ^ {2} T _ {i - 1}}{\sigma_ {F} \sqrt {T _ {i - 1}}}; d _ {2} = d _ {1} - \sigma_ {F} \sqrt {T _ {i - 1}}
$$

# Example: The Black's formula to price caps

- Indeed, market participants quote caps and floors directly in terms of implied volatility. For instance, from Bloomberg we have

Table 1: Quotes of Caps and Swaptions on November 1, 2004  

<table><tr><td rowspan="2">Maturity</td><td rowspan="2">Swap Rates</td><td colspan="3">Swaption Vols</td><td colspan="2">Volatilities</td></tr><tr><td>3M</td><td>6M</td><td>1Y</td><td>Caps</td><td>Floors</td></tr><tr><td>1 Y</td><td>2.555</td><td>27.115</td><td>30.234</td><td>31.750</td><td>23.50</td><td>23.50</td></tr><tr><td>2 Y</td><td>2.932</td><td>32.210</td><td>32.327</td><td>31.258</td><td>29.89</td><td>29.89</td></tr><tr><td>3 Y</td><td>3.254</td><td>31.011</td><td>30.937</td><td>29.801</td><td>30.55</td><td>30.55</td></tr><tr><td>4 Y</td><td>3.520</td><td>29.901</td><td>29.622</td><td>28.491</td><td>29.86</td><td>29.86</td></tr><tr><td>5 Y</td><td>3.751</td><td>28.719</td><td>28.513</td><td>27.404</td><td>28.62</td><td>28.62</td></tr><tr><td>7 Y</td><td>4.118</td><td>25.337</td><td>25.332</td><td>24.711</td><td>26.48</td><td>26.48</td></tr><tr><td>10 Y</td><td>4.505</td><td>21.889</td><td>21.833</td><td>21.570</td><td>23.68</td><td>23.68</td></tr></table>

Source: Bloomberg.

- Each entry is a volatility quote for an "at-the-money" instrument, meaning that its strike rate (equal for all the caplets) is the swap rate with the same maturity of the cap.  
- The payment frequency of the underlying caps and floors is 3 months.  
- Since the first payment at horizon 3 months is known at time 0, it is practice to set this caplet equal to zero.

# Example: The Black's formula to price caps

- Example: Consider a 1-year, quarterly cap with strike rate  $r_{K} = 2.555\%$ , quoted at volatility  $\sigma_{F} = 23.5\%$ .  
- The current LIBOR discount curve is as follows

$$
Z (0, 0. 2 5) = 9 9. 4 5 8 0; Z (0, 0. 5) = 9 9. 8 5 1 0; Z (0, 0. 7 5) = 9 9. 1 8 9 9; Z (0, 1) = 9 7. 4 8 3 4.
$$

- From the LIBOR curve, we can compute the quarterly compounded forward rates:

$$
F(0,0.25,0.5) = 2.4562\%; F(0,0.5,0.75) = 2.6932\%; F(0,0.75,1) = 2.8987\%
$$

- Finally, from the quoted volatility  $\sigma_{F} = 23.5\%$ , we obtain the three relevant volatilities:

$$
\sigma_ {F} \times [ \sqrt {T _ {1}}, \sqrt {T _ {2}}, \sqrt {T _ {3}} ] = 23.5 \% \times [ \sqrt {0 . 2 5}, \sqrt {0 . 5}, \sqrt {0 . 7 5} ] = [ 1 1. 7 5 \%, 1 6. 6 2 \%, 2 0. 3 5 \% ].
$$

Using the formula for  $d_{1}$  and  $d_{2}$  we obtain

$$
d _ {1} (0. 5 0) = -. 0 2 7 7 0; d _ {2} (0. 5 0) = -. 0 3 9 4 5 \Longrightarrow \mathrm {C a p l e t} (0. 5 0) = 0. 0 1 8 4
$$

$$
d _ {1} (0. 7 5) = . 4 0 0 0; d _ {2} (0. 7 5) = . 2 3 2 8 \Longrightarrow \mathrm {C a p l e t} (0. 7 5) = 0. 0 6 1 7
$$

$$
d _ {1} (1) = . 7 2 1 8; d _ {2} (1) = . 5 1 8 3 \Longrightarrow \text {C a p l e t} (1) = 0. 1 0 5 7
$$

obtaning

$$
C a p (1 Y) = 0. 0 1 8 4 + 0. 0 6 1 7 + 0. 1 0 5 7 = 0. 1 8 5 9
$$

# The Time Series of Implied Volatility

- The quoted volatility of caps is strongly time varying, denoting time variation in uncertainty about changes in future interest rates.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/89378a76-a6be-4322-af7e-a74536096b6c/e85bb38920ac8fc3a6521dc1831d9896ce74c8a2fee602d5055508479aaa7005.jpg)  
Source: Pietro Veronesi Fixed Income Securities, Wiley, 2010

# Interest Rate Trees

- We now develop the same arguments we used in TN 4, but for interest rates.  
- Let  $r_t =$  be the six-month, continuously compounded risk-free rate.  
- Let  $q = 1/2$  be the (true) probability to move up or down on the tree.
- The movement of the short-term interest rate is exogenous to investors.  
- E.g. the Federal Reserve sets the Fed Fund rate because of monetary policy issues.

$$
\begin{array}{l} i = 0 \\ i = 1 \\ i = 2 \\ t = 0 \\ t = 0. 5 \\ t = 1 \\ \end{array}
$$

$$
r _ {2, u u} = 0. 0 5 5 7
$$

$$
r _ {1, u} = 0. 0 3 8 7
$$

$$
\begin{array}{c} r _ {2, u d} \\ r _ {2, d u} \end{array} = 0. 0 2 7 9
$$

$$
\begin{array}{l} r _ {0} = 0. 0 1 6 8 \\ r _ {1, d} = 0. 0 0 7 4 \\ r _ {2, d d} = 0. 0 0 0 1 \\ \end{array}
$$

# Interest Rate Trees

- The expected rate in six and twelve months are

$$
E \left[ r _ {1} \right] = \frac {1}{2} r _ {1, u} + \frac {1}{2} r _ {1, d} = 0. 0 2 3 0 5
$$

$$
E \left[ r _ {2} \right] = \frac {1}{4} r _ {2, u u} + \frac {1}{2} r _ {2, u d} + \frac {1}{4} r _ {2, d d} = . 0 2 7 9
$$

- This tree naturally translates into a tree of one period (six months) zero coupon bonds.  
Let

$$
Z _ {i, j} (k)
$$

- be the value of a zero coupon bond at index time  $i$  (e.g.  $i = 1$ ), at node  $j$  (e.g.  $j = u, d…$ ) and with maturity at index  $k$  (e.g.  $k = 2$ ).  
- For instance

$$
Z _ {0} (1) = \mathrm {Z e r o a t t i m e 0 t h a t m a t u r e s a t t i m e 1}
$$

$$
Z _ {1, u} (2) = \mathrm {Z e r o a t t i m e 1 i n n o d e} u p \mathrm {t h a t m a t u r e s a t t i m e 2}
$$

# Interest Rate Trees

- Recall that since steps are every 6 months:

$$
Z _ {i, j} (i + 1) = e ^ {- r _ {i, j} \frac {1}{2}}
$$

- We obtain

$$
\begin{array}{l} i = 0 \\ i = 1 \\ i = 2 \\ \end{array}
$$

$$
Z _ {2, u u} (3) = 0. 9 7 2 5
$$

$$
\boxed {Z _ {0} (1) = 0. 9 9 1 6}
$$

$$
Z _ {1, u} (2) = 0. 9 8 0 8
$$

$$
\begin{array}{l} {Z _ {2, u d} (3)} \\ {Z _ {2, d u} (3)} \end{array} = 0. 9 8 6 1
$$

$$
Z _ {1, d} (2) = 0. 9 9 6 3
$$

$$
Z _ {2, d d} (3) = 0. 9 9 9 9
$$

- Important: Note that there is a key distinction between this zero-coupon tree, and the trees for stocks in TN 4.

# Interest Rate Trees vs Stock Trees

- For instance, suppose you assume that the stock process is given by  $(q = 1/2$  to move up)

$$
\begin{array}{l} i = 0 \\ i = 1 \\ i = 2 \\ \boxed {S _ {u u} = 9 0} \\ \end{array}
$$

$$
S _ {u} = 7 0
$$

$$
\boxed { \begin{array}{c} S _ {u d} \\ S _ {d u} \end{array} } = 6 0
$$

$$
\boxed {S _ {0} = 5 0}
$$

$$
\boxed {S _ {d} = 4 0}
$$

$$
\boxed {S _ {d d} = 3 0}
$$

- It is always the same security whose price is quoted along the tree.  
- This is important, as if you buy the stock at time 0 for 50, and wait one period, you can sell it at 70 or 40 depending on the realization along the tree.

# Interest Rate Trees vs Stock Trees

- This is not the case in the zero coupon tree we saw above.
- The price along the tree is the price of a different security at each node: it is always the one period ahead zero coupon bond.  
- So, if I buy at time  $t = 0$  for 0.94, at time  $t = 1$  I will get 1 for sure, and not 0.962 or 0.993.
- How can we model a proper tree, to use in derivative pricing?
- We need more information.  
- For instance, assume that today  $t = 0$ , a zero coupon with maturity  $T = 1$  (i.e.  $i = 2$ ) trades at

$$
Z _ {0} (2) = 0. 9 7 8 1
$$

- Combining this price with the previous tree, we obtain a tree for the bond maturing at  $i = 2$

# The Tree for a Bond Expiring at  $\mathbf{i} = \mathbf{2}$

$$
i = 0
$$

$$
i = 1
$$

$$
i = 2
$$

$$
Z _ {2, u u} (2) = 1
$$

$$
Z _ {0} (2) = 0. 9 7 8 1
$$

$$
Z _ {1, u} (2) = 0. 9 8 0 8
$$

$$
\begin{array}{l} {Z _ {2, u d} (2)} \\ {Z _ {2, d u} (2)} \end{array} = 1
$$

$$
Z _ {1, d} (2) = 0. 9 9 6 3
$$

$$
Z _ {2, d d} (2) = 1
$$

- This is a proper asset pricing tree, in the sense that the security along the tree is always the same, namely, the bond expiring at time  $i = 2$ .  
- Since the last payoff of any bond is always 1, we typically do not report it.

# Risk Neutral Pricing on Trees

- At this point, risk neutral pricing allows us to price derivative securities on the interest rate tree.  
- As before, we first compute the risk neutral probability to move up the tree  $q_0^*$ .
- The expected risk neutral return to invest in the  $i = 2$  bond is

$$
E ^ {*} \left[ \frac {Z _ {1} (2)}{Z _ {0} (2)} \right] = q _ {0} ^ {*} \frac {Z _ {1 , u} (2)}{Z _ {0} (2)} + (1 - q _ {0} ^ {*}) \frac {Z _ {1 , d} (2)}{Z _ {0} (2)}
$$

- Risk neutral pricing implies that this expected return must equal the safe return of an investment in a zero that matures at time  $i = 1$

$$
\underbrace {q _ {0} ^ {*} \frac {Z _ {1 , u} (2)}{Z _ {0} (2)} + (1 - q _ {0} ^ {*}) \frac {Z _ {1 , d} (2)}{Z _ {0} (2)}} = \underbrace {\frac {1}{Z _ {0} (1)}}
$$

Expected Return on 2-period bond = Return on 1-period Bond

-yielding

$$
q _ {0} ^ {*} = \frac {Z _ {0} (2) / Z _ {0} (1) - Z _ {1 , d} (2)}{Z _ {1 , u} (2) - Z _ {1 , d} (2)}
$$

- Note that this is the same equation we found in TN 4.

# Risk Neutral Pricing on Trees

- Given the risk neutral probability, the value  $V_{i}$  of every traded security must satisfy

$$
V _ {0} = Z _ {0} \left(1\right) E ^ {*} \left[ V _ {1} \right]
$$

- For instance, in the example we have

$$
q _ {0} ^ {*} = \frac {Z _ {0} (2) / Z _ {0} (1) - Z _ {1 , d} (2)}{Z _ {1 , u} (2) - Z _ {1 , d} (2)} = \frac {0 . 9 7 8 1 / 0 . 9 9 1 6 - 0 . 9 9 6 3}{0 . 9 8 0 8 - 0 . 9 9 6 3} = 0. 6 4 3 5
$$

- Option on Interest Rate:
- Suppose we want to price an option on the interest rate, with strike  $\bar{r} = 0.0168$  
- The payoffs are:

$$
\mathrm {p a y} _ {1, u} = 1 0 0 \times \max (r _ {1, u} - \overline {{r}}, 0) = 2 1. 9 \mathrm {a n d} \mathrm {p a y} _ {1, d} = 1 0 0 \times \max (r _ {1, d} - \overline {{r}}, 0) = 0
$$

$$
\begin{array}{l} \mathrm {O p t i o n} _ {0} = Z _ {0} (1) \times E ^ {*} [ \mathrm {p a y} _ {1} ] \\ = 0. 9 9 1 6 \times (0. 6 4 3 5 \times 2 1. 9 + 0. 3 5 6 4 5 \times 0) \\ = 1 3. 9 7 \\ \end{array}
$$

# Risk Neutral Pricing on Trees

# - Question

- Under the risk neutral probabilities, the expected interest rate is

$$
E ^ {*} \left[ r _ {1} \right] = q _ {0} ^ {*} \times r _ {1, u} + \left(1 - q _ {0} ^ {*}\right) \times r _ {1, d} = 0. 0 2 7 5
$$

- If your boss asks you what is your forecast of the interest rate in six months, would you tell him  $2.75\%$ ?
- In the real world, the expected interest rate was

$$
E \left[ r _ {1} \right] = 2.305 \% <   2.75 \% = E ^ {*} \left[ r _ {1} \right]
$$

- Passing from the real to the risk neutral world implies increasing the expected interest rate.

# A Problem in Finding the Tree for a Bond Expiring at  $\pmb{i} = \pmb{3}$

- What is then a tree for a bond expiring at  $i = 3$ ?  
- Let  $Z_{0}(3) = 0.9615$  be the current market price of a bond maturing at  $T = 1.5$ , i.e.  $i = 3$ .

$$
i = 0
$$

$$
i = 1
$$

$$
i = 2
$$

$$
Z _ {2, u u} (3) = 0. 9 7 2 5
$$

$$
Z _ {0} (3) = 0. 9 7 8 1
$$

$$
Z _ {1, u} (3) =??
$$

$$
\begin{array}{l} Z _ {2, u d} (3) \\ Z _ {2, d u} (3) \end{array} = . 9 8 6 1
$$

$$
Z _ {1, d} \left(3\right) =??
$$

$$
Z _ {2, d d} (2) = . 9 9 9 9
$$

- While from the interest rate tree we find  $Z_{2,j}(3)$ , there is not an obvious way to compute  $Z_{1,j}(3)$ . - We need no arbitrage restrictions.

# Finding the Tree for a Bond Expiring at  $\pmb{i} = \pmb{3}$

- The first no arbitrage restriction is provided by the risk neutral probability  $q_0^*$ , which implies

$$
Z _ {0} (3) = Z _ {0} (1) E ^ {*} [ Z _ {1} (3) ] = Z _ {0} (1) [ q _ {0} ^ {*} Z _ {1, u} (3) + (1 - q _ {0} ^ {*}) Z _ {1, d} (3) ]
$$

- How can we compute  $Z_{1,u}(3)$  and  $Z_{1,d}(3)$ ?
- We can use the "implied tree" methodology, discussed in TN 5.  
- Let  $q_{1,u}^{*}$  and  $q_{1,d}^{*}$  be the risk neutral probabilities to move up or down the tree at time  $i = 1$ .  
- Since the same formula as earlier applies, we have

$$
q _ {1, u} ^ {*} = \frac {Z _ {1 , u} (3) / Z _ {1 , u} (2) - Z _ {2 , u d} (3)}{Z _ {2 , u u} (3) - Z _ {2 , u d} (3)}
$$

$$
q _ {2, d} ^ {*} = \frac {Z _ {1 , d} (3) / Z _ {1 , d} (2) - Z _ {2 , d d} (3)}{Z _ {2 , d u} (3) - Z _ {2 , d d} (3)}
$$

- Choose  $Z_{1,u}(3)$  and  $Z_{1,d}(3)$  so that the current price of the bond  $Z_0(3) = 0.9615$
- Problem: We have one equation (the value of the bond) and two unknowns  $(Z_{1,u}(3)$  and  $Z_{1,u}(3))$
- We need one more equation. Use for instance  $q_{1,u}^{*} = q_{1,d}^{*} = q_{1}^{*}$ .  
- Practically, then, for every  $q_1^*$  we obtain the two values of  $Z_{1,u}(3)$  and  $Z_{1,d}(3)$  from the equations above, and thus the tree.

# Finding the Tree for a Bond Expiring at  $\pmb{i} = \pmb{3}$

- We can find numerically (e.g. using Solver) the value  $q_{1}^{*}$  such that the price of the traded security  $Z_{0}(3) = 0.9615$  equals the "model price"

$$
\begin{array}{r l} \widehat {Z} _ {0} (3) = & Z _ {0} (1) \left\{q _ {0} ^ {*} Z _ {1, u} (3) + (1 - q _ {0} ^ {*}) Z _ {1, d} (3) \right\} \\ & \mathrm {w h e r e} \end{array}
$$

$$
Z _ {1, u} (3) = Z _ {1, u} (2) \{q _ {1} ^ {*} Z _ {2, u u} (3) + (1 - q _ {1} ^ {*}) Z _ {2, u d} (3) \}
$$

$$
Z _ {1, d} (3) = Z _ {1, d} (2) \left\{q _ {1} ^ {*} Z _ {2, d u} (3) + (1 - q _ {1} ^ {*}) Z _ {2, d d} (3) \right\}
$$

- We find  $q_1^* = 0.5912$  which implies  $Z_{1,u}(3) == 0.959$  and  $Z_{1,d}(3) = 0.988$ .

# Finding the Tree for a Bond Expiring at  $\pmb{i} = \pmb{3}$

$$
i = 0
$$

$$
i = 1
$$

$$
i = 2
$$

$$
Z _ {2, u u} (3) = 0. 9 7 2 5
$$

$$
Z _ {1, u} (3) = 0. 9 5 9
$$

$$
Z _ {0} (3) = 0. 9 6 1 5
$$

$$
\begin{array}{l} Z _ {2, u d} (3) \\ \text {一} \end{array} = 0. 9 8 6 1
$$

$$
Z _ {2, d u} (3)
$$

$$
Z _ {1, d} (3) = 0. 9 8 8
$$

$$
Z _ {2, d d} (3) = 0. 9 9 9 9
$$

- In summary, building trees to price fixed income securities is not straightforward.  
- The task is made complicated from the fact that no-arbitrage restrictions exist between bonds of different maturities.

# The Ho Lee Model

- Moving from risk natural to risk neutral trees is complicated.  
- The current main methodology is to build directly a risk neutral tree.  
- A famous model is the Ho Lee model.

$$
r _ {i + 1} = r _ {i} + \theta (i) \Delta \pm \sigma \sqrt {\Delta}
$$

- where  $\Delta$  is the time step,  $\theta(i)$  is a function of time chosen to match current prices, and  $\pm \sqrt{\Delta}$  occur with  $1/2$  (risk neutral) probability.
- This process generates a recombining tree, independently of  $\theta(i)$ . Starting from  $r_0$

$$
r _ {1, u} = r _ {0} + \theta (0) \Delta + \sigma \sqrt {\Delta}
$$

$$
r _ {1, d} = r _ {0} + \theta (0) \Delta - \sigma \sqrt {\Delta}
$$

$$
r _ {2, u u} = r _ {1, u} + \theta (1) \Delta + \sigma \sqrt {\Delta}
$$

$$
r _ {2, u d} = r _ {1, u} + \theta (1) \Delta - \sigma \sqrt {\Delta}
$$

$$
r _ {2, d u} = r _ {1, d} + \theta (1) \Delta + \sigma \sqrt {\Delta}
$$

$$
r _ {2, d d} = r _ {1, d} + \theta (1) \Delta - \sigma \sqrt {\Delta}
$$

- It is easy to see that  $r_{2,ud} = r_{2,du} = r_0 + (\theta (0) + \theta (1))\Delta$

# The Ho Lee Model

- The tree is "implied" as follows:  
- Inputs: (a) Time series of short term interest rates; (b) Current bond prices.

1. From historical interest rates, obtain an estimate of  $\sigma = st.dev(\Delta r_i)$  
2. Then, compute  $\theta(i)$  recursively, as follows

Use bond maturing at time  $i = 2$  to obtain  $\theta(0)$

Use bond maturing at time  $i = 3$  to obtain  $\theta(1)$

：

Use bond maturing at time  $i = n$  to obtain  $\theta (n - 2)$

- In order to perform this, we must first see how to use "risk neutral" trees to price bonds.

# Using Risk Neutral Trees

- Assume that we built the risk neutral tree already, and we simply use it.  
- Let  $r_{i,j}$  be the 6 month, continuously compounded interest rate.  
- At every time (1 period =  $\Delta = 6$  months), there is equal risk neutral probability ( $q^{*} = 1/2$ ) to move up or down.

$$
i = 0
$$

$$
i = 1
$$

$$
i = 2
$$

$$
r _ {2, u u} = 0. 0 6 3 8
$$

$$
r _ {1, u} = 0. 0 4 3 3
$$

$$
\begin{array}{c} {r _ {2, u d}} \\ {r _ {2, d u}} \end{array} = 0. 0 3 6 1
$$

$$
r _ {0} = 0. 0 1 6 8
$$

$$
r _ {1, d} = 0. 0 1 2 0
$$

$$
r _ {2, d d} = 0. 0 0 8 3
$$

# Using Risk Neutral Trees

From the tree,  $Z_{0}(1) = e^{-r_{0}\Delta} \times 1 = 0.9916$  

- What is the value of bond paying \$1 in one year (i = 2)?  
- As usual, it can be obtained by proceeding backward on the tree:

$$
i = 0
$$

$$
i = 1
$$

$$
i = 2
$$

$$
Z _ {2, u u} (2) = 1
$$

$$
\begin{array}{l} r _ {0} = 0. 0 1 6 8 \\ Z _ {0} (2) = e ^ {- r _ {0} \Delta} \times \left(\frac {1}{2} Z _ {1, u} (2) + \frac {1}{2} Z _ {1, d} (2)\right) \\ = 0. 9 7 8 1 \\ \end{array}
$$

$$
\begin{array}{l} r _ {1, u} = 0. 0 4 3 3 \\ Z _ {1, u} (2) = e ^ {- r _ {1, u} \Delta} \times 1 = 0. 9 7 8 6 \\ \end{array}
$$

$$
\begin{array}{l} Z _ {2, u d} (2) \underset {- 1} {\mathrm {}} \\ Z _ {2, d u} (2) \\ \end{array}
$$

$$
\begin{array}{l} r _ {1, d} = 0. 0 1 2 0 \\ Z _ {1, d} (2) = e ^ {- r _ {1, d} \Delta} \times 1 = 0. 9 9 4 0 \\ \end{array}
$$

$$
Z _ {2, d d} (2) = 1
$$

# Using Risk Neutral Trees

- Similarly, a bond paying \$1 in 1.5 years (i = 3):

$$
\begin{array}{l} i = 0 \\ i = 1 \\ i = 2 \\ i = 3 \\ \end{array}
$$

$$
Z _ {3, u u u} (3) = 1
$$

$$
r _ {0} = 0. 0 1 6 8
$$

$$
Z _ {0} (3) = 0. 9 6 0 7
$$

$$
r _ {1, u} = 0. 0 4 3 3
$$

$$
Z _ {1, u} (3) = 0. 9 5 4 5
$$

$$
r _ {2, u d} = 0. 0 3 6 1
$$

$$
Z _ {2, u d} (3) = 0. 9 8 2 1
$$

$$
Z _ {3, u u d} (3)
$$

$$
Z _ {3, u d u} (3)
$$

$$
= 1
$$

$$
r _ {1, d} = 0. 0 1 2 0
$$

$$
Z _ {1, d} (3) = 0. 9 8 3 0
$$

$$
r _ {2, d d} = 0. 0 0 8 3
$$

$$
Z _ {2, d d} (3) = 0. 9 9 5 9
$$

$$
Z _ {3, u d d} (3)
$$

$$
Z _ {3, d d u} (3)
$$

$$
= 1
$$

$$
Z _ {3, d d d} (3) = 1
$$

# Risk Neutral Trees

- In addition, computers can be programmed rather easily to carry out the backward computation.

<table><tr><td colspan="12">Table 2: An Interest Rate Tree</td></tr><tr><td>i</td><td>0</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td></tr><tr><td>t</td><td>0</td><td>0.5</td><td>1</td><td>1.5</td><td>2</td><td>2.5</td><td>3</td><td>3.5</td><td>4</td><td>4.5</td><td>5</td></tr><tr><td>j</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>1</td><td>1.68</td><td>5.71</td><td>9.6</td><td>13.35</td><td>16.97</td><td>20.46</td><td>23.83</td><td>27.09</td><td>30.23</td><td>33.25</td><td></td></tr><tr><td>2</td><td></td><td>-0.84</td><td>3.17</td><td>6.97</td><td>10.62</td><td>14.13</td><td>17.5</td><td>20.76</td><td>23.9</td><td>26.93</td><td></td></tr><tr><td>3</td><td></td><td></td><td>-3.27</td><td>0.77</td><td>4.55</td><td>8.13</td><td>11.55</td><td>14.83</td><td>17.99</td><td>21.02</td><td></td></tr><tr><td>4</td><td></td><td></td><td></td><td>-5.61</td><td>-1.52</td><td>2.27</td><td>5.84</td><td>9.2</td><td>12.41</td><td>15.48</td><td></td></tr><tr><td>5</td><td></td><td></td><td></td><td></td><td>-7.87</td><td>-3.72</td><td>0.12</td><td>3.69</td><td>7.04</td><td>10.2</td><td></td></tr><tr><td>6</td><td></td><td></td><td></td><td></td><td></td><td>-10.06</td><td>-5.83</td><td>-1.94</td><td>1.66</td><td>5.01</td><td></td></tr><tr><td>7</td><td></td><td></td><td></td><td></td><td></td><td></td><td>-12.16</td><td>-7.87</td><td>-3.92</td><td>-0.27</td><td></td></tr><tr><td>8</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>-14.19</td><td>-9.83</td><td>-5.82</td><td></td></tr><tr><td>9</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>-16.15</td><td>-11.72</td><td></td></tr><tr><td>10</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>-18.05</td><td></td></tr><tr><td>11</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="12">Backward Computation of Bond Prices</td></tr><tr><td>j,i</td><td>0</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td></tr><tr><td>1</td><td>81.15</td><td>70.9</td><td>64.39</td><td>60.65</td><td>59.12</td><td>59.58</td><td>62.03</td><td>66.68</td><td>73.97</td><td>84.68</td><td>100</td></tr><tr><td>2</td><td></td><td>92.78</td><td>81.51</td><td>74.47</td><td>70.54</td><td>69.13</td><td>69.97</td><td>73.09</td><td>78.72</td><td>87.4</td><td>100</td></tr><tr><td>3</td><td></td><td></td><td>103.27</td><td>91.14</td><td>83.68</td><td>79.65</td><td>78.4</td><td>79.66</td><td>83.44</td><td>90.02</td><td>100</td></tr><tr><td>4</td><td></td><td></td><td></td><td>112.06</td><td>99.3</td><td>91.56</td><td>87.52</td><td>86.48</td><td>88.15</td><td>92.55</td><td>100</td></tr><tr><td>5</td><td></td><td></td><td></td><td></td><td>118.62</td><td>105.54</td><td>97.69</td><td>93.74</td><td>92.95</td><td>95.03</td><td>100</td></tr><tr><td>6</td><td></td><td></td><td></td><td></td><td></td><td>122.54</td><td>109.5</td><td>101.77</td><td>98.02</td><td>97.53</td><td>100</td></tr><tr><td>7</td><td></td><td></td><td></td><td></td><td></td><td></td><td>123.56</td><td>110.93</td><td>103.55</td><td>100.14</td><td>100</td></tr><tr><td>8</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>121.61</td><td>109.76</td><td>102.95</td><td>100</td></tr><tr><td>9</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>116.8</td><td>106.04</td><td>100</td></tr><tr><td>10</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>109.44</td><td>100</td></tr><tr><td>11</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>100</td></tr></table>

# Calibration of Ho Lee Model

- Given data on interest rates, I estimated a volatility  $\sigma = .022$ .  
- Given data from current zero coupon bonds (STRIPS) as of May 25 2007, we can compute iteratively  $\theta(i)$  so that model prices equal actual prices for every  $i$ .  
- In the example below, I am only showing the model price for  $T = 5$  bond.

<table><tr><td colspan="3">HO-LEE BINOMIAL TREE MODEL</td><td colspan="2">Today</td><td colspan="2">25-May-07</td><td colspan="2">First Zero</td><td colspan="2">15-Nov-07</td><td></td><td></td></tr><tr><td colspan="3">Interest Rate Assumptions</td><td colspan="4">Bond Assumption</td><td colspan="4">Tree</td><td></td><td></td></tr><tr><td>sigma</td><td>0.022</td><td></td><td>T</td><td>5</td><td></td><td></td><td>h</td><td>0.5</td><td></td><td>Price Binomial</td><td>80.147</td><td></td></tr><tr><td>r0</td><td>0.047222</td><td></td><td>coupon</td><td>0</td><td></td><td></td><td>h0</td><td>0.48</td><td></td><td></td><td></td><td></td></tr><tr><td>Maturity</td><td>Nov-07</td><td>May-08</td><td>Nov-08</td><td>May-09</td><td>Nov-09</td><td>May-10</td><td>Nov-10</td><td>May-11</td><td>Nov-11</td><td>May-12</td><td></td><td></td></tr><tr><td>Zeros</td><td>97.774</td><td>95.356</td><td>93.100</td><td>91.047</td><td>88.888</td><td>86.910</td><td>84.903</td><td>83.673</td><td>82.776</td><td>80.147</td><td></td><td></td></tr><tr><td rowspan="2">Model Price Target</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>80.147</td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>2.019E-28</td><td></td><td></td></tr><tr><td>theta (+2)</td><td></td><td>0.006121</td><td>-0.003672</td><td>-0.0057966</td><td>0.007737</td><td>-0.004846</td><td>0.004791</td><td>-0.033499</td><td>-0.013441</td><td>0.0880469</td><td></td><td></td></tr><tr><td rowspan="2">time =&gt; i=&gt;</td><td>0</td><td>0.5</td><td>1</td><td>1.5</td><td>2</td><td>2.5</td><td>3</td><td>3.5</td><td>4</td><td>4.5</td><td>5</td><td></td></tr><tr><td>0</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td><td></td></tr><tr><td>0</td><td>0.047</td><td>0.065</td><td>0.079</td><td>0.092</td><td>0.111</td><td>0.124</td><td>0.142</td><td>0.141</td><td>0.150</td><td>0.209</td><td>0.234</td><td></td></tr><tr><td>1</td><td></td><td>0.035</td><td>0.048</td><td>0.061</td><td>0.080</td><td>0.093</td><td>0.111</td><td>0.110</td><td>0.119</td><td>0.178</td><td>0.203</td><td></td></tr><tr><td>2</td><td></td><td></td><td>0.018</td><td>0.029</td><td>0.049</td><td>0.062</td><td>0.080</td><td>0.079</td><td>0.088</td><td>0.147</td><td>0.172</td><td></td></tr><tr><td>3</td><td></td><td></td><td></td><td>-0.001</td><td>0.018</td><td>0.031</td><td>0.049</td><td>0.048</td><td>0.057</td><td>0.116</td><td>0.141</td><td></td></tr><tr><td>4</td><td></td><td></td><td></td><td></td><td>-0.013</td><td>0.000</td><td>0.018</td><td>0.017</td><td>0.025</td><td>0.085</td><td>0.110</td><td></td></tr><tr><td>5</td><td></td><td></td><td></td><td></td><td></td><td>-0.031</td><td>-0.013</td><td>-0.015</td><td>-0.006</td><td>0.054</td><td>0.079</td><td></td></tr><tr><td>6</td><td></td><td></td><td></td><td></td><td></td><td></td><td>-0.044</td><td>-0.046</td><td>-0.037</td><td>0.023</td><td>0.048</td><td></td></tr><tr><td>7</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>-0.076</td><td>-0.068</td><td>-0.008</td><td>0.017</td><td></td></tr><tr><td>8</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>-0.098</td><td>-0.039</td><td>-0.014</td><td></td></tr><tr><td>9</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>-0.070</td><td>-0.046</td><td></td></tr><tr><td>10</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>-0.076</td><td></td></tr></table>

# Intermediate Cash Flows

- Notice that given a tree, we can insert any type of known cash flow.  
- Specifically, at any time-node  $(i,j)$ , we just must add the CF

$$
P _ {i, j} = e ^ {- r _ {i, j} \Delta} \left(\frac {1}{2} P _ {i + 1, j} + \frac {1}{2} P _ {i + 1, j + 1} + C F _ {i + 1}\right)
$$

- So, for example, a 1.5 year,  $4 \%$  coupon bond is just given by

$$
\begin{array}{l} i = 0 \\ i = 1 \\ i = 2 \\ i = 3 \\ P _ {3, u u u} (3) = 1 0 0 \\ \end{array}
$$

$$
\begin{array}{l} \hline P _ {0} (3) \\ = e ^ {- 0. 0 1 6 8 / 2} \\ \times [ \frac {1}{2} (9 9. 3 1 + 1 0 2. 2 6) \\ + 2 ] = 1 0 1. 9 3 \\ \hline \end{array}
$$

$$
\begin{array}{l} \hline P _ {1, u} (3) \\ = e ^ {- 0. 0 4 3 3 / 2} \\ \times [ \frac {1}{2} (9 8. 8 0 + 1 0 0. 1 8) \\ + 2 ] = 9 9. 3 1 \\ \hline \end{array}
$$

$$
\boxed { \begin{array}{l} P _ {1, d} (3) \\ = e ^ {- 0. 0 1 2 0 / 2} \\ \times [ \frac {1}{2} (1 0 0. 1 8 + 1 0 1. 5 8) \\ + 2 ] = 1 0 2. 2 6 \end{array} }
$$

$$
\boxed { \begin{array}{c} P _ {3, u u d} (3) \\ P _ {3, u d u} (3) \end{array} = 1 0 0}
$$

$$
\begin{array}{l} \hline P _ {2, u d} (3) \\ = e ^ {- 0. 0 3 6 1 / 2} (1 0 0 + 2) \\ = 1 0 0. 1 8 \end{array}
$$

$$
\boxed { \begin{array}{c} P _ {3, u d d} (3) \\ P _ {3, d d u} (3) \end{array} } = 1 0 0
$$

$$
\begin{array}{c c} \hline P _ {2, d d} (3) \\ = e ^ {- 0. 0 0 8 3 / 2} (1 0 0 + 2) \\ = 1 0 1. 5 8 \\ \hline \end{array}
$$

- This tree gives "ex-coupon" prices.

$$
P _ {3, d d d} \left(3\right) = 1 0 0
$$

# Example: Callable Bonds

- Trees turn out to be very useful tools (not only pedagogically).  
- One of the most important features of them is the ability to deal with "American options."  
- As a consequence, a very simple application of the "tree" methodology is the computation of prices of callable bonds.  
- Consider the 1.5 year,  $4 \%$ coupon bond we discussed earlier, but assume it is callable at par 100.  
- That is, at any point in time before maturity, the issuer (Treasury) may "call it back" in exchange of 100.
- In general, bonds become callable after some period of time.  
- For example, the Nov 2012 Treasury bond is callable at par starting on Nov 2007.  
- If the issuer calls the bond between coupon days, it has to pay the accrued interest to the bond holder.

# Example: Callable Bonds

- How do we compute the price of the implicit American option?  
- At any node  $(i,j)$  the issuer can decide whether to "exercise" option or wait.
- If exercises, the payoff (  $=$  value of the option) is

$$
C a l l _ {i, j} ^ {\mathrm {E x}} = P _ {i, j} - 1 0 0
$$

- If waits, the value of the option

$$
C a l l _ {i, j} ^ {\mathrm {W a i t}} = e ^ {- r _ {i, j} \Delta} E ^ {*} [ C a l l _ {i + 1} ] = e ^ {- r _ {i, j} \Delta} \left(\frac {1}{2} C a l l _ {i + 1, j} + \frac {1}{2} C a l l _ {i + 1, j + 1}\right)
$$

- Therefore, the value at node  $i, j$  is

$$
\begin{array}{l} C a l l _ {i, j} = \max  \left(C a l l _ {i, j} ^ {\mathrm {W a i t}}, C a l l _ {i, j} ^ {\mathrm {E x}}\right) \\ = \max \left(e ^ {- r _ {i, j} \times \Delta} E ^ {*} [ C a l l _ {i + 1} ], P _ {i, j} - 1 0 0\right) \\ \end{array}
$$

- At maturity  $I = T / \Delta$  we have

$$
C a l l _ {I, j} = 0 \mathrm {f o r a l l} j
$$

# Example: Callable Bonds

$$
i = 0
$$

$$
i = 1
$$

$$
i = 2
$$

$$
i = 3
$$

$$
C _ {3, u u u} \left(3\right) = 0
$$

$$
C _ {1, u} (3) =
$$

$$
= \max \left(9 9. 3 1 - 1 0 0, e ^ {-. 0 4 3 3 / 2} 0. 1 8 / 2\right)
$$

$$
= 0. 0 9
$$

$$
\begin{array}{l} C _ {2, u u} (3) = \\ = \max  (9 8. 8 0 - 1 0 0, 0) \\ = 0 \\ \end{array}
$$

$$
\begin{array}{l} C _ {3, u u d} (3) \\ C _ {3, u d u} (3) \end{array} = 0
$$

$$
\begin{array}{l} C _ {0} (3) = \\ = e ^ {- 0. 0 1 6 8 / 2} \\ \times \frac {1}{2} (. 0 9 + 2. 2 6) \\ = 1. 1 6 \\ \end{array}
$$

$$
\begin{array}{l} C _ {1, d} (3) = \\ = \max  (1 0 2. 2 6 - 1 0 0, \\ e ^ {- 0. 0 1 2 0 / 2} (1 8 + 1. 5 8) / 2) \\ = 2. 2 6 \\ \end{array}
$$

$$
\begin{array}{l} C _ {2, u d} (3) = \\ = \max  (1 0 0. 1 8 - 1 0 0, 0) \\ = 0. 1 8 \\ \end{array}
$$

$$
\begin{array}{l} C _ {3, u d d} (3) - 0 \\ C _ {3, d d u} (3) \\ \end{array}
$$

$$
\begin{array}{l} C _ {2, d d} (3) \\ = \max  (1 0 1. 5 8 - 1 0 0, 0) \\ = 1. 5 8 \\ \end{array}
$$

$$
C _ {3, d d d} (3) = 0
$$

# Example: Callable Bonds

# - What is then the price of the callable bond?

- The buyer of a callable bond is: (1) buying a non-callable bond; + (2) Selling a call to the issuer.  
- Hence,

$$
\begin{array}{l} P _ {0} ^ {\mathrm {C a l l}} (3) = P _ {0} ^ {\mathrm {N o C a l l}} (3) - C _ {0} (3) \\ = 1 0 1. 9 3 - 1. 1 6 \\ = 1 0 0. 7 7 \\ \end{array}
$$
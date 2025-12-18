---
parent_directory:
title: Arbitrage Opportunity Accounting Forward Contracts for Exchange Rate Securities
tags:
aliases:
parent_folder: Financial Instruments Lecture Notes
subfolder:
key_concepts:
cssclasses: academia
linter-yaml-title-alias: Arbitrage Opportunity Accounting Forward Contracts for Exchange Rate Securities
---

# Arbitrage Opportunity Accounting Forward Contracts for Exchange Rate Securities

Step 1: Compare the quoted forward rate  $F_{q}$  (data) with the synthetic no-arbitrage forward rate  $F_{0,T}$  (theory) to determine whether an arbitrage opportunity exists.

1. Formula for synthetic no-arbitrage forward rate.

$$
F _ {0, T} = M _ {0} \cdot \exp [ ([ r _ {\$} - r _ {\epsilon} ]) \cdot T ]
$$

2. Suppose quoted forward rate  $F_{q}$  is less than synthetic no-arbitrage forward rate  $F_{0,T}$ .

$$
F _ {q} <   F _ {0, T}
$$

Step 2: Determine the short position and the long position for the forward contracts that leverage the arbitrage opportunity.

1. Leveraging an arbitrage opportunity requires adhering to the principle of buying at a low price and selling at a high price.  
2. Given the price relationship  $F_{q} < F_{0,T}$ , arbitrage requires "buying" at the low quoted forward rate  $F_{q}$  and "selling" at the high synthetic forward rate  $F_{0,T}$ .  
3. Long position: At inception  $t = 0$ , enter a forward contract committing to buy 1 EUR at maturity  $t = T$  at quoted forward rate  $F_{q}$ .  
4. Short position: At inception  $t = 0$ , enter a forward contract committing to sell 1 EUR at maturity  $t = T$  at synthetic forward rate  $F_{0,T}$ .<sup>1</sup>

Step 3: Determine profit and loss from fulfilling short position obligation and long position obligation at maturity  $t = T$ .

5. Long position obligation: Pay  $F_{q}$  USD to buy 1 EUR at maturity  $t = T$ .

$$
L o s s _ {T} (\mathbb {S}) = F _ {q}
$$

6. Short position obligation: Sell 1 EUR at maturity  $t = T$ . To obtain 1 EUR at maturity  $t = T$ , borrow the present value equivalent, namely  $\exp(-r_{\epsilon} \cdot T)$  EUR, at inception  $t = 0$ .

$$
G a i n _ {0} (\epsilon) = \exp (- r _ {\epsilon} \cdot T)
$$

Step 4: Determine the counteracting investment strategy at inception  $t = 0$  that ensures profit or loss at inception  $t = 0$  is equal to zero.

1. To offset borrowing  $\exp (-r_{\epsilon} \cdot T)$  EUR at inception  $t = 0$ , invest  $\exp (-r_{\epsilon} \cdot T) \cdot M_0$  USD at the USD interest rate  $r_{\mathbb{S}}$ .

$$
L o s s _ {0} (\mathbb {S}) = \exp (- r _ {\epsilon} \cdot T) \cdot M _ {0}
$$

2. The investment strategy above ensures profit or loss is zero at inception  $t = T$ .

$$
\begin{array}{l} P r o f i t _ {0} (\mathbb {S}) = G a i n _ {0} (\mathbb {E}) \cdot M _ {0} - L o s s _ {0} (\mathbb {S}) \\ = \exp (- r _ {\epsilon} \cdot T) \cdot M _ {0} - \exp (- r _ {\epsilon} \cdot T) \cdot M _ {0} \\ = 0 \\ \end{array}
$$

Step 5: Given the investment strategy at inception  $t = 0$ , determine the profit or loss at maturity  $t = T$ .

1. USD investment at  $t = 0$  generates proceeds at maturity  $t = T$ .

$$
\begin{array}{l} G a i n _ {T} (\$) = \underbrace {\left[ \exp \left(- r _ {\epsilon} \cdot T\right) \cdot M _ {0} \right]} _ {\text {U S D I n v e s t m e n t}} \cdot \underbrace {\exp \left(r _ {\$} \cdot T\right)} _ {\text {R e t u r n}} \\ = \exp ([ r _ {\$} - r _ {\epsilon} ] \cdot T) \cdot M _ {0} \\ \end{array}
$$

2. Use the 1 EUR obtained at maturity  $t = T$  from the long position on the forward contract to repay the borrowed EUR at inception  $t = 0$ .

$$
\exp (- r _ {\epsilon} \cdot T) \cdot \exp (r _ {\epsilon} \cdot T) - 1 = 0
$$

3. Evaluate profit or loss at maturity  $t = T$ .

$$
\begin{array}{l} P r o f i t _ {T} (\mathbb {S}) = G a i n _ {T} (\mathbb {S}) - L o s s _ {T} (\mathbb {S}) \\ = \exp ([ r _ {\$} - r _ {\epsilon} ] \cdot T) \cdot M _ {0} - F _ {q} \\ = F _ {0, T} - F _ {q} \\ > 0 \\ \end{array}
$$

# Continuously Compounding Interest

The LIBOR annual interest rate  $r_d$  compounds at a discrete frequency. For example, interest may compound on an annual basis, a semi-annual basis, a monthly basis, and so on.

Let  $n$  denote the discrete frequency with which interest compounds in a year. For example, if interest compounds on an annual basis, then  $n = 1$ . If interest compounds on a semi-annual basis, then  $n = 2$ . If interest compounds on a monthly basis, then  $n = 12$ .

For a given maturity  $T$  and discrete compounding frequency  $n$ , the gross rate of return is

$$
\left(1 + \frac {r _ {d}}{n}\right) ^ {n \cdot T}
$$

By contrast, under continuously compounding interest, the gross rate of return is

$$
\exp (r _ {c} \cdot T)
$$

The appropriate continuously compounding interest rate  $r_c$  that aligns with the discrete compounding interest rate  $r_d$  is that which equates the two gross rates of return.

$$
\exp (r _ {c} \cdot T) = \left(1 + \frac {r _ {d}}{n}\right) ^ {n \cdot T}
$$

Solving the equation above for the endogenous variable  $r_c$  yields the formula for the continuously compounding interest rate as a function of the discrete compounding interest rate.

$$
r _ {c} = n \cdot \ln \left[ 1 + \frac {r _ {d}}{n} \right]
$$

Note that the maturity horizon  $T$  does not affect the conversion between a discrete compounding interest rate and a continuously compounding interest rate.

# Covered Interest Rate Parity

# 1. Model Parameters

There are four model parameters that collectively determine the forward rate for a currency security.

1. Home/Foreign exchange rate:  $M$  
2. Interest rate in home country:  $r_{\mathbb{S}}$  
3. Interest rate in foreign country:  $r_{\epsilon}$  
4. Maturity:  $T$

The interest rates  $(r_{\mathbb{S}}, r_{\mathbb{E}})$  are continuously compounded. The exchange rate  $M$  denotes the number of units of the Home currency required to purchase one unit of the Foreign currency. For example, if  $M = 1.2$ , then 1.2 units of the Home currency (e.g., USD) are required to purchase one unit of the Foreign currency (e.g., EUR).

# 2. Forward Rate Under No-Arbitrage

Determining the forward rate of a currency security requires appealing to a no-arbitrage argument. Consider an investor in the home country, endowed with capital  $N$  (measured in the home currency) to invest. This investor can pursue one of two strategies.

First, the investor can invest the home capital at the home interest rate until maturity. Let  $\Pi_{\mathbb{S}}(r_{\mathbb{S}},T,N)$  denote the payoff function from this investment strategy.

$$
\Pi_ {\S} (r _ {\S}, T, N) = \exp (r _ {\S} \cdot T) \cdot N
$$

Second, the investor can convert the home capital into foreign capital, invest the foreign capital at the foreign interest rate, and convert the proceeds on the foreign capital back into the home currency at the forward rate  $F$ .

$$
\Pi_ {\epsilon} (F; r _ {\epsilon}, T, N, M) = \exp (r _ {\epsilon} \cdot T) \cdot \frac {N}{M} \cdot F
$$

Note that both payoff functions,  $\Pi_{\mathbb{S}}(\cdot)$  and  $\Pi_{\epsilon}(\cdot)$ , are measured in the home currency (e.g., USD). The forward rate  $F$  adjusts so as to equate the payoffs from the two investment strategies.

$$
\Pi_ {\S} (r _ {\S}, T, N) = \Pi_ {\epsilon} (\pmb {F}; r _ {\epsilon}, T, M, N)
$$

This equation is a "no-arbitrage" condition. Solving the no-arbitrage condition for the endogenous variable  $F$  yields the covered interest-rate parity formula for the forward rate.

$$
F = \exp [ (r _ {\$} - r _ {\epsilon}) \cdot T ] \cdot M
$$

Note that the forward rate  $F$  inherits the units of the exchange rate  $M$ . Since the units of the exchange rate  $M$  is Home/Foreign (e.g., USD/EUR), it follows that the units of the forward rate  $F$  is also Home/Foreign.

# 3. Interpretation

The forward rate  $F$  is the exchange rate at which Home and Foreign currencies are exchanged upon maturity at time  $T$  from inception. The forward rate  $F$  is agreed upon at inception (i.e., at time 0).

# Binomial Trees and Option Pricing

# 1. Binomial Trees in Pharmaceuticals

# 1.1. Parameters

1. Let  $i$  denote a pharmaceutical company  
2. Stock price at maturity  $t = T$ :  $S_{T,i} \in \{S_d, S_u\}$

a. Decrease scenario:  $S_{d}$  
b. Increase scenario:  $S_{u}$

3. Probability distribution at maturity  $t = T$

a. Decrease scenario:  $q$  
b. Increase scenario:  $1 - q$

4. Systematic risk:  $\beta_{i}$  
5. Annualized risk-free interest rate (continuously compounded):  $r^f$  
6. Annualized expected excess return (annually compounded):  $\mathbb{E}[R^m] - r^f$

# 1.2. CAPM

1. Let  $R_{i}$  denote the expected return on the stock of pharmaceutical company  
2. Note  $R_{i}$  is a random variable because stock price  $S_{T,i} \in \{S_d, S_u\}$  at maturity  $t = T$  is a random variable, and so the realization of  $R$  depends on the realization of  $S_{T}$ .  
3. Relationship between continuously compounded and annually compounded interest rates

$$
1 + \bar {r} ^ {f} = \exp \left(r ^ {f}\right)
$$

$$
\frac {1}{1 + \bar {r} ^ {f}} = \exp \bigl (- r ^ {f} \bigr)
$$

4. CAPM formula.

$$
\mathbb {E} [ R _ {i} ] = \bar {r} ^ {f} + \beta_ {i} \cdot \left[ \mathbb {E} [ R ^ {m} ] - r ^ {f} \right]
$$

5. Note  $\mathbb{E}[R_i]$  varies (linearly) with  $\beta_{i}$

# 1.3. Stock Valuation at Inception

1. The stock price  $S_{0,i}$  at inception  $t = 0$  is equal to the expected discounted stock price at maturity  $t = T$ .  
2. Expected stock price at maturity  $t = T$  (i.e., the mean of the random variable  $S_{T,i}$ ).

$$
\mathbb {E} _ {q} \big [ S _ {T, i} \big ] = q \cdot S _ {u} + (1 - q) \cdot S _ {d}
$$

3. Use expected stock price return  $\mathbb{E}[R_i]$  to compute present-value as inception.

$$
(1 + \mathbb {E} [ R _ {i} ]) \cdot S _ {0, i} = \mathbb {E} \big [ S _ {T, i} \big ]
$$

# 1.4. At-the-Money Option Under Dynamic Replication

1. An at-the-money ("ATM") call option features a strike price  $K_{i}$  equal to the current spot stock price  $S_{0}$  at inception  $t = 0$ , i.e.  $K_{i} = S_{0,i}$  
2. Payoff from option at maturity  $t = T$  depends on realized stock price  $S_{T,i}$  at maturity.

$$
c \big (S _ {T, i} \big) = \left\{ \begin{array}{l l} \max  \{S _ {d} - K _ {i}, 0 \} & S _ {T, i} = S _ {d} \\ \max  \{S _ {u} - K _ {i}, 0 \} & S _ {T, i} = S _ {u} \end{array} \right.
$$

3. Value of position in stocks at inception  $t = 0$ .

$$
\Delta_ {i, 0} = \frac {\operatorname* {m a x} \{S _ {u} - K _ {i} , 0 \} - \operatorname* {m a x} \{S _ {d} - K _ {i} , 0 \}}{S _ {u} - S _ {d}}
$$

4. Value of position in bonds at inception  $t = 0$ .

$$
B _ {0} = \exp \left(- r ^ {f}\right) \cdot \left[ \max  \left\{S _ {u} - K _ {i}, 0 \right\} - \Delta_ {i, 0} \cdot S _ {u} \right]
$$

5. Value of ATM option at inception  $t = 0$ .

$$
V _ {0} ^ {A T M} = \Delta_ {i, 0} \cdot S _ {0, i} + B _ {0}
$$

6. Payoff from dynamic replication portfolio at maturity  $t = T$  should replicate the payoff from the option.

$$
V _ {T, i} ^ {D R} \big (S _ {T, i} \big) = \left\{ \begin{array}{l l} \Delta_ {i, 0} \cdot S _ {d} + \exp \big (r ^ {f} \big) \cdot B _ {0} & S _ {T, i} = S _ {d} \\ \Delta_ {i, 0} \cdot S _ {u} + \exp \big (r ^ {f} \big) \cdot B _ {0} & S _ {T, i} = S _ {u} \end{array} \right.
$$

# 1.5. At-the-Money Option Under Risk Neutral Methodology

1. Risk neutral probability: The probability such that the risky asset (stock) yields an expected (gross) return equal to that of the risk-free asset (bond).

$$
q ^ {*} \cdot \frac {S _ {u}}{S _ {0}} + (1 - q ^ {*}) \cdot \frac {S _ {d}}{S _ {0}} = \exp \left(r ^ {f}\right)
$$

2. Expected stock price at maturity  $t = T$  under risk neutral probability.

$$
\mathbb {E} _ {q ^ {*}} \big [ S _ {T, i} \big ] = q ^ {*} \cdot S _ {u} + (1 - q ^ {*}) \cdot S _ {d}
$$

3. Expected stock price at maturity  $t = T$  under analysts' probability.

$$
\mathbb {E} _ {q} \big [ S _ {T, i} \big ] = q \cdot S _ {u} + (1 - q) \cdot S _ {d}
$$

4. Question: Why may the probabilities  $(q, q^{*})$  differ?  
5. Value of ATM option under risk neutral methodology at inception  $t = 0$ .

$$
V _ {0} ^ {A T M} = \exp \left(- r ^ {f}\right) \cdot \left[ q ^ {*} \cdot \max \{S _ {u} - K _ {i}, 0 \} + (1 - q ^ {*}) \cdot \max \{S _ {d} - K _ {i}, 0 \} \right]
$$

# 1.6. Option Value Comparative Statics

# 1.6.1. Change in Analyst Probabilities

1. Suppose that  $q$  changes.  
2. All else equal,  $\mathbb{E}_q[S_{T,i}]$  changes because the probability distribution has changed.  
3. In turn, the present-value of the stock price  $S_0$  at inception  $t = 0$  changes.  
4. Furthermore, the risk neutral probability  $q^{*}$  changes due to change in  $S_{0}$ .

# 1.6.2. Change in Market Exposure

1. Suppose that  $\beta_{i}$  changes.  
2. All else equal,  $\mathbb{E}[R_i]$  changes by CAPM formula.  
3. In turn, the present-value of the stock price  $S_0$  at inception  $t = 0$  changes.  
4. Furthermore, the risk neutral probability  $q^{*}$  changes due to change in  $S_{0}$ .

# Commodity Options

# 1. Commodity Price Hedging Using Options

# 1.1. Assumptions

1. Date at which option can be exercised versus date at which commodity is needed.  
2. Pass through of change in oil price to a change in jet fuel price.  
3. Rate of conversion between 1 barrel of oil and 1 barrel of jet fuel.

# 1.2. Options Under a Straight Insurance Strategy

1. Parameters.

a. Annual jet fuel consumption in gallons:  $C > 0$ .  
b. Hedge percentage:  $x \in [0,1]$ .  
 c. Strike price on call option for oil: $P > 0.

2. Implicit short position: Since Southwest consumes jet fuel in the future, it has an implicit short position on jet fuel. Thus, if jet fuel prices rise in the future, then Southwest makes a loss. Conversely, if jet fuel prices fall, then Southwest makes a profit.

# 1.2.1. Determining Number of Options

3. Compute hedge jet fuel quantity in barrels for Q1 in 2008.

$$
H (C, x) = C \cdot \frac {1}{4} \cdot x \cdot \frac {1}{4 2}
$$

4. Takeaway: If the oil price per barrel rises increases by $Δ between December 31, 2007, and March 31, 2008, then Southwest makes a loss of $Δ on each barrel that is hedged. Given a hedge position comprising H(C,x) barrels, Southwest makes a loss of $H(C,x) · Δ.  
5. The role of options: Options provide a hedge against changes in the oil price per barrel.  
 6. Payoff from option: Given a call option on oil with a strike price P, if the oil price per barrel rises to (P + Δ), then each option yields a profit of \$1,000 · Δ since each option

trades on one lot of 1,000 oil barrels. What is the profit from the call option if the oil price per barrel falls to  $(P - \Delta)$ ?

7. Optimal number of options: The optimal number of options is that which, if the oil price per barrel rises by 1 USD between December 31, 2007, and March 31, 2008, then Southwest will make a profit of 1 USD on each barrel that is hedged.

$$
\underbrace {N \cdot 1 0 0 0 \cdot \Delta} _ {\text {P r o f i t o n P o t i o n}} = \underbrace {H (C , x) \cdot \Delta} _ {\text {L o s s f r o m I m p l i c i t S h o r t P o s i t i o n}}
$$

Does the optimal number of options N depend on the USD change in the oil price per barrel given by $Δ?

8. Relaxing pass-through price assumption: Suppose a $Δ change in the oil price per barrel induces a $y · Δ change in the jet fuel price per barrel, where y > 1. The optimal number of options satisfies the following equation.

$$
N \cdot 1 0 0 0 \cdot \Delta = H \cdot y \cdot \Delta
$$

# 1.2.2. Evaluating Performance of Options

1. Suppose a $Δ change in the oil price per barrel induces a $y · Δ change in the jet fuel price per barrel, where y > 1. Suppose one purchases options assuming the pass-through is one-for-one. What is the expected profit or loss from this strategy?
2. Number options assuming one-for-one pass-through.

$$
N ^ {(1)} = \frac {H (C , x)}{1 0 0 0}
$$

3. Number of options assuming actual pass-through. Note that  $N^{(2)} > N^{(1)}$  since  $y > 1$ .

$$
N ^ {(2)} = \frac {H (C , x) \cdot y}{1 0 0 0}
$$

4. Given the implicit short position, the expected loss on each barrel that is hedged from a $Δ change in the oil price per barrel is $H(C, x) · y · Δ. Are the number of options N(1) sufficient to offset this loss?

# 1.3. Options Under a Collar Strategy

# 1.3.1. Determining Zero Cost Collar Strategy (Part I)

1. **Positions:** A collar strategy requires selling a put option (short) to finance buying a call option (long).  
2. Zero-cost: Let  $c(P) > 0$  denote option price as a function of the strike price. Given a target strike price  $P_{c} > 0$  for the call option, the optimal choice of the strike price  $P_{p} > 0$  is that which yields a zero net payoff.

$$
c (P _ {p}) - c (P _ {c}) = 0
$$

# 1.3.2. Determining Zero Cost Collar Strategy (Part II)

1. Suppose instead one chooses a strike price for the put option. To satisfy the zero-cost at inception, one must determine the number of put options that satisfies zero-cost.  
2. Recall the number of call options that exactly offsets the loss from the implicit short position.

$$
\underbrace {N _ {c} \cdot 1 0 0 0 \cdot \Delta} _ {\text {P r o f i t o n C a l l O p t i o n}} = \underbrace {H (C , x) \cdot \Delta} _ {\text {L o s s f r o m I m p l i c i t S h o r t P o s i t i o n}}
$$

3. Given a strike price  $P_{c}$  for the call option and a strike price  $P_{p}$  for the put option, determine the number of put options  $N_{p}$ .

$$
N _ {c} \cdot P _ {c} = N _ {p} \cdot P _ {p}
$$

# Currency Swaps

# 1. Determining Currency Swap Rates

# 1.1. Preamble

1. Governments often issue bonds in foreign currencies (e.g., the Greek government issues Greek bonds denominated in USD rather than in EUR, the home currency).  
2. In issuing bonds in a foreign currency, a government exposes itself to exchange rate risk. If the foreign currency appreciates relative to the home currency, then more units of the home currency are required to pay the interest and principal in the foreign currency.  
3. Currency swaps serve as a hedge against such exchange rate risk.

# 1.2. Currency Swap

1. Consider two countries: Home  $H$  and Foreign  $F$ .  
2. At inception  $t = 0$ , Home issues government bonds with value  $X$  in currency  $F$ .  
3. The bond pays a coupon (interest) semi-annually at the annual interest rate  $c$ .  
4. To hedge against exchange rate risk, Home enters in a swap contract.  
5. Let  $M_0$  denote the exchange rate for  $F / H$  currencies at inception  $t = 0$ .  
6. At inception  $t = 0$ , the swap contract requires:

a. Home pays  $N^{F} = X$  in  $F$  currency.  
b. Home receives  $N^H = X \cdot \frac{1}{M_0}$  in  $H$  currency.

7. At maturity  $t = T$ , the swap contract requires:

a. Home receives  $N^{F} = X$  in  $F$  currency.  
b. Home pays  $N^H = X \cdot \frac{1}{M_0}$  in  $H$  currency.

# 1.3. Value of Bonds

1. Time  $t = 0$  value of the bond denominated in  $F$  currency.

$$
B _ {0} ^ {F} = \underbrace {\sum_ {t} ^ {T} \frac {c}{2} \cdot N ^ {F} \cdot Z ^ {F} (0 , t)} _ {\text {I n t e r e s t P V}} + \underbrace {N ^ {F} \cdot Z ^ {F} (0 , T)} _ {\text {P r i n c i p a l P V}}
$$

2. Time  $t = 0$  value of the bond denominated in  $H$  currency.

$$
B _ {0} ^ {H} (K) = \underbrace {\sum_ {t} ^ {T} \frac {K}{2} \cdot N ^ {H} \cdot Z ^ {H} (0 , t)} _ {\text {I n t e r e s t P V}} + \underbrace {N ^ {H} \cdot Z ^ {H} (0 , T)} _ {\text {P r i n c i p a l P V}}
$$

- $K$  denotes the "swap rate," i.e. the annualized coupon rate for semi-annual payments of coupons in the  $H$  currency.  
The bond value  $B_0^H (K)$  is a function of the swap rate  $K$

# 1.4. Swap Rate under Spot Exchange of Principal

1. Time  $t = 0$  value of the swap in  $F$  currency is equal to the value of the long position in the bond denominated in the  $F$  currency minus the value of the short position in the bond denominated in the  $H$  currency, converted into the  $F$  currency using the time  $t = 0$  exchange rate  $M_0$ .

$$
V _ {0,} ^ {\mathrm {S w a p}, F} (K) = B _ {0} ^ {F} - M _ {0} \cdot B _ {0} ^ {H} (K)
$$

2. Swap rate  $K$  adjusts so as to set value of the swap at inception  $t = 0$  to zero.

$$
V _ {0,} ^ {\operatorname {S w a p}, F} (K ^ {*}) = 0
$$

3. Formula for swap rate  $K^{*}$ .

$$
K ^ {*} = 2 \cdot \left[ \frac {\frac {C}{2} \cdot \sum_ {t} ^ {T} Z ^ {F} (0 , t) + Z ^ {F} (0 , T) - Z ^ {H} (0 , T)}{\sum_ {t} ^ {T} Z ^ {H} (0 , t)} \right]
$$

# 1.5. Swap Rate under Alternative Exchange of Principal

1. Time  $t = 0$  value of the swap in  $F$  currency has an additional component  $V_0^{\mathrm{FX},F}(\overline{M}_0)$  to account for the fact that the exchange of principal occurs at an alternative exchange rate  $\overline{M}_0$  for  $F / H$  currencies, in place of the spot exchange rate  $M_0$ .

$$
V _ {0,} ^ {\mathrm {S w a p}, F} (K) = B _ {0} ^ {F} - M _ {0} \cdot B _ {0} ^ {H} (K) + V _ {0} ^ {\mathrm {F X}, F} (\overline {{M}} _ {0})
$$

2. Value of exchange of principal.

$$
V _ {0} ^ {\mathrm {F X}, F} (\bar {M} _ {0}) = \left(\frac {M _ {0}}{\bar {M} _ {0}} - 1\right) \cdot N ^ {F}
$$

# Option Pricing with Multiperiod Binomial Tree

# 1. Multiperiod Binomial Tree

# 1.1. Preamble

1. Three periods:  $i \in \{0, 1, 2\}$  
2. Stock price in initial period:  $S_0$  
3. Stock price can either rise or fall by  $10\%$  in each subsequent period  $i \in \{1,2\}$  
4. Discrete compounding per period interest rate:  $r$  
5. European call option has strike price:  $K = S_{0}$

# 1.2. Option Pricing with Multiple Periods

1. Overview: Construct a replicating portfolio of stocks and bonds that replicates the payoff of the call option.  
2. Stock price payoff tree.

a. Period  $i = 0$ :  $S_0$

i. Period  $i = 1$

1. $S_{u} = u\cdot S_{0}$  
2. $S_{d} = d\cdot S_{0}$

a. Period  $i = 2$

i.  $S_{uu} = u\cdot S_u$  
ii.  $S_{ud} = d\cdot S_u = u\cdot S_d = S_{du}$  
iii.  $S_{dd} = d\cdot S_d$

3. Call option payoff tree.

a. Period  $i = 0$ :  $c_0$  (to be determined)

i. Period  $i = 1$

1. $c_{u}$  (to be determined)  
2. $c_{d}$  (to be determined)

a. Period  $i = 2$

i.  $c_{uu} = \max \{S_{uu} - K,0\}$

ii.  $c_{ud} = \max \{S_{ud} - K,0\}$  
iii.  $c_{dd} = \max \{S_{dd} - K,0\}$

4. Work backwards from final node in the tree to determine option prices  $(c_0, c_u, c_d)$ .  
5. Period  $i = 1$

a. Node  $u$

b. Position in stocks ("delta").

$$
\Delta_ {u} = \frac {c _ {u u} - c _ {u d}}{S _ {u u} - S _ {u d}}
$$

c. Position in bonds (note use of discrete discounting).

$$
B _ {u} = \frac {1}{1 + r} \cdot (c _ {u u} - \Delta_ {u} \cdot S _ {u u})
$$

d. Value of replicating portfolio in stocks and bonds.

$$
c _ {u} := V _ {u} ^ {R P} = \Delta_ {u} \cdot S _ {u} + B _ {u}
$$

e. Node  $d$

i. Position in stocks ("delta").

$$
\Delta_ {d} = \frac {c _ {u d} - c _ {d d}}{S _ {u d} - S _ {d d}}
$$

ii. Position in bonds (note use of discrete discounting).

$$
B _ {d} = \frac {1}{1 + r} \cdot (c _ {u d} - \Delta_ {d} \cdot S _ {u d})
$$

iii. Value of replicating portfolio in stocks and bonds.

$$
c _ {d} := V _ {d} ^ {R P} = \Delta_ {d} \cdot S _ {d} + B _ {d}
$$

6. Period  $i = 0$ .

i. Position in stocks ("delta").

$$
\Delta_ {0} = \frac {c _ {u} - c _ {d}}{S _ {u} - S _ {d}}
$$

ii. Position in bonds (note use of discrete discounting).

$$
B _ {0} = \frac {1}{1 + r} \cdot (c _ {u} - \Delta_ {0} \cdot S _ {u})
$$

iii. Value of replicating portfolio in stocks and bonds.

$$
c _ {0} := V _ {0} ^ {R P} = \Delta_ {0} \cdot S _ {0} + B _ {0}
$$

# 1.3. Portfolio Self-Financing

1. Compute value of "inherited" portfolio and cost of "current" portfolio.  
2. Consider node  $u$  at  $i = 1$ .  
3. Value of "inherited" portfolio set up at  $i = 0$ .

$$
V _ {u} ^ {1} = \Delta_ {0} \cdot S _ {u} + B _ {0} \cdot (1 + r)
$$

4. Cost of "future" portfolio set up at  $i = 1$ .

$$
V _ {u} ^ {2} = \Delta_ {u} \cdot S _ {u} + B _ {u}
$$

5. Question: What is the value of  $(V_{u}^{1} - V_{u}^{2})$ ?

# 1.4. Option Pricing with Dividends

1. Takeaway: Stock prices must fall in response to dividends.  
2. Stock price payoff tree with dividend yield  $y$  at period  $t = 1$

a. Period  $i = 0$ :  $S_0$

i. Period  $i = 1$

1. $S_{u} = (1 - y)\cdot u\cdot S_{0}$  
2. $S_{d} = (1 - y)\cdot d\cdot S_{0}$

a. Period  $i = 2$

i.  $S_{uu} = u\cdot S_u$  
ii.  $S_{ud} = d\cdot S_u = u\cdot S_d = S_{du}$  
iii.  $S_{dd} = d\cdot S_d$

3. Note that the tree is recombining at period  $i = 2$ , i.e.  $S_{ud} = S_{du}$  
4. Follow the same steps as before to compute option prices.  
5. Consider node  $u$  at period  $i = 1$ .

a. Position in stocks.

$$
\Delta_ {u} = \frac {c _ {u u} - c _ {u d}}{S _ {u u} - S _ {u d}}
$$

b. Position in bonds.

$$
B _ {u} = \frac {1}{1 + r} \cdot (c _ {u u} - \Delta_ {u} \cdot S _ {u u})
$$

c. Value of option.

$$
c _ {u} := V _ {u} ^ {R P} = \Delta_ {u} \cdot S _ {u} + B _ {u}
$$

6. Consider node  $d$  at period  $i = 1$ .

a. Position in stocks.

$$
\Delta_ {d} = \frac {c _ {d u} - c _ {d d}}{S _ {d u} - S _ {d d}}
$$

b. Position in bonds.

$$
B _ {d} = \frac {1}{1 + r} \cdot (c _ {d u} - \Delta_ {d} \cdot S _ {d u})
$$

c. Value of option.

$$
c _ {d} := V _ {d} ^ {R P} = \Delta_ {d} \cdot S _ {d} + B _ {d}
$$

7. Use stock prices without dividend at period  $i = 1$ , namely  $S_{u}^{ND} = u \cdot S_{0}$  and  $S_{d}^{ND} = d \cdot S_{0}$ , when pricing options at the initial period  $i = 0$ .

a. Position in stocks.

$$
\Delta_ {0} = \frac {c _ {u} - c _ {d}}{S _ {u} ^ {N D} - S _ {d} ^ {S D}}
$$

b. Position in bonds.

$$
B _ {0} = \frac {1}{1 + r} \cdot (c _ {u} - \Delta_ {0} \cdot S _ {u} ^ {N D})
$$

c. Value of option.

$$
c _ {0} = \Delta_ {0} \cdot S _ {0} + B _ {0}
$$

# Option Pricing and Implied Volatility

# 1. Black-Scholes Model of Option Pricing

# 1.1. Parameters

1. Stock price:  $S$  
2. Strike price:  $K$  
3. Interest rate on risk-free asset (continuously compounded):  $r$  
4. Maturity:  $T$  
5. Stock volatility:  $\sigma$

# 1.2. Optimal Pricing Formula

1. Delta hedging.

$$
d _ {1} (S, K, T, r, \sigma) = \frac {\ln \left[ \frac {S}{K} \right] + \left(r + \frac {\sigma^ {2}}{2}\right) \cdot T}{\sigma \cdot \sqrt {T}}
$$

$$
d _ {2} (S, K, T, r, \sigma) = d _ {1} - \sigma \cdot \sqrt {T}
$$

2. Standard normal cumulative distribution function.

$$
\Phi (x) := \frac {1}{\sigma \cdot \sqrt {2 \pi}} \cdot \int_ {- \infty} ^ {x} \exp \left(- \frac {1}{2} \cdot u ^ {2}\right) d u
$$

3. Call option price.

$$
c = S \cdot \Phi \big (d _ {1} (S, K, T, r, \sigma) \big) - K \cdot \exp (- r \cdot T) \cdot \Phi \big (d _ {2} (S, K, T, r, \sigma) \big)
$$

4. Put option price.

$$
p = - S \cdot \Phi \bigl (- d _ {1} (S, K, T, r, \sigma) \bigr) + K \cdot \exp (- r \cdot T) \cdot \Phi \bigl (- d _ {2} (S, K, T, r, \sigma) \bigr)
$$

# 1.2.1. Implied Volatility

1. Suppose we observe option prices  $(c, p)$ .  
2. Question: What is the volatility parameter  $\sigma$  implied by the Black-Scholes model?  
3. Answer: It is the volatility parameter that solves a non-linear equation.

$$
c = S \cdot \Phi \left(d _ {1} (S, K, T, r, \sigma_ {c} ^ {*})\right) - K \cdot \exp (- r \cdot T) \cdot \Phi \left(d _ {2} (S, K, T, r, \sigma_ {c} ^ {*})\right)
$$

$$
p = - S \cdot \Phi \left(- d _ {1} (S, K, T, r, \sigma_ {p} ^ {*})\right) + K \cdot \exp (- r \cdot T) \cdot \Phi \left(- d _ {2} (S, K, T, r, \sigma_ {p} ^ {*})\right)
$$

5. Use non-linear equation solve function to solve for implied volatility values  $\left(\sigma_c^*,\sigma_p^*\right)$

# American Options

# 1. Pricing American Options

# 1.1. Preamble

1. Initial stock price:  $S_0$  
2. Three period binomial tree

a. Price increase  $u$  with probability  $q$  
b. Price decrease  $d$  with probability  $(1 - q)$

3. No dividends  
4. Interest rate on risk-free asset (continuously compounded):  $r$

# 1.2. Computing Price of an American Option

1. Binomial tree for stock price evolution.

$t = 1$

1. $S_{u} = S_{0}\cdot u$  
2. $S_{d} = S_{0}\cdot d$

$t = 2$

1. $S_{uu} = S_0\cdot u\cdot u$  
2. $S_{ud} = S_{du} = S_0\cdot u\cdot d$  
3. $S_{dd} = S_0\cdot d\cdot d$

$t = 3$

1. $S_{uuu} = S_0\cdot u\cdot u\cdot u$  
2. $S_{uuu} = S_{udu} = S_0\cdot u\cdot u\cdot d$  
3. $S_{dud} = S_{ddu} = S_0\cdot d\cdot d\cdot u$  
4. $S_{\text{ddd}} = S_0 \cdot d \cdot d \cdot d$
5. Property of American option: At maturity  $T$ , the payoff of an American option is equal to the payoff of a European option.
6. Strategy for pricing American option: For each node in the binomial tree, compute (i) the value of waiting until next period and (ii) the value of exercising the option in the current period.  
7. Consider an American call option.  
8. American call option payoff at maturity  $t = T = 3$ :

$C_{uuu} = \max \{S_{uuu} - K,0\}$  
$C_{uuu} = \max \{S_{uuu} - K,0\}$  
$C_{dud} = \max \{S_{dud} - K,0\}$  
$C_{ddd} = \max \{S_{ddd} - K,0\}$

6. Risk neutral probability  $q^{*}$  equates gross return on stock to gross return on risk-free asset with interest rate  $r$ .

$$
q ^ {*} \cdot u + (1 - q ^ {*}) \cdot d = \exp (r)
$$

7. American call option (i) value of waiting, (ii) value of exercising, and (ii) value of option at  $t = T - 1 = 2$ :

Case 1:  $uu$

1. $C_{uu}^{wait} = \exp (-r)\cdot [q^{*}\cdot C_{uuu} + (1 - q^{*})\cdot C_{uud}]$  
2. $C_{uu}^{exercise} = \max \{S_{uu} - K, 0\}$  
3. $C_{uu} = \max \{C_{uu}^{wait}, C_{uu}^{exercise}\}$

Case 2:  $ud = du$

1. $C_{ud}^{wait} = \exp(-r) \cdot [q^* \cdot C_{udu} + (1 - q^*) \cdot C_{udd}]$  
2. $C_{ud}^{exercise} = \max \{S_{ud} - K, 0\}$  
3. $C_{ud} = \max \{C_{ud}^{wait}, C_{ud}^{exercise}\}$

Case 3: dd

1. $C_{dd}^{wait} = \exp (-r)\cdot [q^{*}\cdot C_{ddu} + (1 - q^{*})\cdot C_{ddd}]$  
2. $C_{dd}^{exercise} = \max \{S_{dd} - K,0\}$  
3. $C_{dd} = \max \{C_{dd}^{wait}, C_{dd}^{exercise}\}$
4. American call option (i) value of waiting, (ii) value of exercising, and (ii) value of option at  $t = T - 2 = 1$ :

Case 1:  $u$

1. $C_u^{wait} = \exp (-r)\cdot [q^*\cdot C_{uu} + (1 - q^*)\cdot C_{ud}]$  
2. $C_u^{exercise} = \max \{S_u - K, 0\}$  
3. $C_u = \max \{C_u^{wait}, C_u^{exercise}\}$

Case 2:  $d$

1. $C_d^{wait} = \exp (-r)\cdot [q^*\cdot C_{du} + (1 - q^*)\cdot C_{dd}]$  
2. $C_d^{exercise} = \max \{S_d - K, 0\}$  
3. $C_d = \max \{C_d^{wait}, C_d^{exercise}\}$
4. American call option (i) value of waiting, (ii) value of exercising, and (ii) value of option at  $t = 0$ :

$C_0^{wait} = \exp (-r)\cdot [q^*\cdot C_u + (1 - q^*)\cdot C_d]$  
$C_0^{exercise} = \max \{S_0 - K, 0\}$  
$C_0 = \max \{C_0^{wait}, C_0^{exercise}\}$

# 1.2.1. Exercising American Option Prior to Maturity

1. Exercise American option early at time  $t$  and node  $j$  if and only if

$$
C _ {j} ^ {e x e r c i s e} (t) > C _ {j} ^ {w a i t} (t)
$$

# 1.2.2. Accounting for Dividends in Pricing American Options

1. Dividends complicate matters because stock prices drop as a byproduct of dividends.  
2. Consider a dividend yield  $y$ .  
3. Construct the binomial tree for the pre-dividend stock price.  
4. Construct the binomial tree for the post-dividend stock price.

$$
S _ {p o s t} = S _ {p r e} \cdot (1 - y)
$$

5. Note pre-dividend price one period ahead depends on post-dividend price this period.

a. For example:  $S_{uu,pre}(2) = S_{u,post}(1)\cdot u$

6. For call payoff, use pre-dividend stock price.  
7. For put payoff, use post-dividend stock price.  
8. Intuition: Put option is more valuable as the stock price falls.
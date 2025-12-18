---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Teaching Note 8
linter-yaml-title-alias: Teaching Note 8
---

# Teaching Note 8

# American Options

John Heaton

The University of Chicago

Booth School of Business

1. American options

1.1 No Arbitrage Bounds  
1.2 Early Exercise

2. American Options on Binomial Trees

2.1 Two-Step Trees  
2.2 Multi-Step Trees  
2.3 Dynamic Replication

# American Options

- An American Option is identical to a European Option, but it can be exercised anytime before expiration.  
Examples of American options

1. Individual stock options  
2. Some options that essentially track indexes: e.g. SPY (CBOE)  
3. Some widely traded OTC interest rate options

- E.g. American Interest Rate Swaptions (options to enter into an interest rate swap) are particularly popular.

4. American options embedded in other contracts  
- E.g. Callable and Puttable bonds; Convertible Bonds; Mortgages.

5. Real options

- Real investments have optionality (e.g. option to invest in a new project, option to close down a plant etc.)
- In all these cases, not only decide IF we want to exercise the option, but also WHEN.

# American Options: No Arbitrage Bounds

- American options must satisfy some basic no arbitrage bounds.

1. American options are at least as valuable as European options

$$
C ^ {A} (S, K, t, T) \geq C ^ {E} (S, K, t, T); P ^ {A} (S, K, t, T) \geq P ^ {E} (S, K, t, T)
$$

2. American options with longer time to maturity are at least as valuable as the same option with shorter time to maturity. If  $T_{2} > T_{1}$

$$
C ^ {A} (S, K, t, T _ {2}) \geq C ^ {A} (S, K, t, T _ {1}); \qquad P ^ {A} (S, K, t, T _ {2}) \geq P ^ {A} (S, K, t, T _ {1})
$$

3. An American option is at least as valuable as its intrinsic value

$$
C ^ {A} (S, K, t, T) \geq \max (S - K, 0); P ^ {A} (S, K, t, T) \geq \max (K - S, 0)
$$

# American Options: No Arbitrage Bounds

4. An American Call option on a non dividend paying stocks has

$$
C ^ {A} (S, K, t, T) \geq \max (S - K \times e ^ {- r (T - t)}, 0)
$$

- To see this, if  $S < K \times e^{-r(T - t)} \Rightarrow$  right-hand-side  $= 0$  and the inequality is obvious.  
- If  $S > K \times e^{-r(T - t)}$  and  $C^A(S, K, t, T) < S - K \times e^{-r(T - t)}$ , then (a) short stock  $S$ , (b) buy the option and (c) invest  $K \times e^{-r(T - t)}$ . Today we get  $S - C^A - Ke^{-r(T - t)} > 0$ .  
- At maturity  $T$ ,
- If  $S_T > K$ , exercise the option, obtain  $S_T - K$ , cash in  $K$  from bond investment, and pay the short  $-S_T$ , netting \$0.  
- If  $S_T < K$ , cash in  $K$  from bond investment, and pay the short  $-S_T$ , netting  $K - S_T > 0$
- (Note that the above no arbitrage bound also holds for European options.)

# Example: SPY Options

- As an example, consider the SPY options.  
- Next figure plots the March 17, 2023 call and put options for various moneyness  $K / S_{0}$ .
- To compare with the option prices on S&P 500, I normalize option values by the value of the index.  
- Thus, the figure plots  $\text{Call} / S_0$  and  $\text{Put} / S_0$
- The figure also plots the intrinsic value, also normalized by the value of the index:

For Puts: Normalized Intrinsic Value  $= \frac{\max(K - S_0, 0)}{S_0} = \max(\text{Moneyness} - 1, 0)$

For Calls: Normalized Intrinsic Value  $= \frac{\max(S_0 - K, 0)}{S_0} = \max(1 - \text{Moneyness}, 0)$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/2c55f8d19b51df5abf26b32b1641c35a2b0394e6cf6d5d1e918e468133af538c.jpg)  
Example: SPY Options

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/7fed3e4b0f5f60a1c1014182e7faa16c8820a8a54d999837d40fe32f65fff597.jpg)

# Example: SPY Options

# Note:

1. American Options are always as valuable as Europeans.  
- True in the diagram for puts, not quite for calls  
- Differences in the underlying securities: paper index versus an ETF  
- Settlement differences: cash for SPX, shares for SPY  
- Tradings costs (e.g. bid-ask spread) bigger for SPY than SPX

2. The European ITM Put Option is below its intrinsic value, but the American ITM Put Option is above.  
3. The American Put option touches the intrinsic value for high  $K / S_0$ .  
4. The American Call option appears close to being equal to the European Call option for every  $K / S_0$ .

# American Call Options: Early Exercise

- Question: Should you ever exercise an American Call option on a non dividend paying stock before maturity?  
 - Example: You own a 3 month Call option with K = 100. Today S = 105. If you exercise, you gain \$5 = S - K. If you wait one more day, you may get more as the price may increase. But you may also lose.
- Should you exercise now or wait until maturity?
- If you sell the option, you get  $C(S, K, 0, T)$  today. If you exercise, you get  $S - K$ .  
- We know that for non dividend paying stocks

$$
C (S, K, 0, T) \geq \max (0, S - K e ^ {- r T})
$$

- Since  $S - Ke^{-rT} > S - K > 0$ , selling the option is better as  $C(S, K, 0, T) > S - K$ .

# American Call Options: Early Exercise

- What if we cannot sell the option? Is it optimal to exercise early?
- No. If you exercise, you get  $S - K$ , which at maturity is  $(S - K)e^{rT}$ .  
- Instead, keep the call, short the stock for  $S$  and buy bonds.

* At  $T$ , you have

$$
S e ^ {r T} - S _ {T} + \max (S _ {T} - K, 0) = \left\{ \begin{array}{l l} S e ^ {r T} - K = (S - K) e ^ {r T} + K (e ^ {r T} - 1) & \mathrm {i f} S _ {T} > K \\ S e ^ {r T} - S _ {T} > S e ^ {r T} - K & \mathrm {i f} S _ {T} <   K \end{array} \right.
$$

* Either way, it is more than  $(S - K)e^{rT}$

- Especially if  $S_T < K$  at maturity, we make a killing.
- "An American Call on a non dividend paying stock is always worth more alive than dead"  
- Intuition:
- If we exercise early, we lose both

1. The time value of money on the strike.  
2. the value of the right to exercise the option in the future.

- When is it optimal to exercise early?

# American Options. Pros and Cons of Early Exercise

- If we exercise a Call early:

(Good) We get any dividends paid between now and maturity

(Bad) We pay  $K$  today instead of in the future  $\Longrightarrow$  lose the interest on  $K$ .

(Bad) We pay  $K$  today for a stock that may be worth less than  $K$  at  $T$ .

* Even if  $S > K$  today, it may well be that  $S_T < K$ , in which case we will not want to exercise.  
* $S$  today reflects all of the possible possibilities, including low  $S_{T}$ .  
* By waiting, we reserve the right of not to exercise if  $S_T < K$ .

· "But if we exercise we get  $S - K$  today…"  

- Yes, but you can get more by shorting the stock and buying bonds (see earlier). In fact, this strategy pays handsomely exactly when  $S_{T} < K$  at maturity.

# American Options. Pros and Cons of Early Exercise

- If we exercise a Put early:

(Good) We receive  $K$  today instead of in the future  $\Longrightarrow$  gain the interest on  $K$ .  
(Bad) We lose any dividends paid between now and maturity.  
(Bad) We receive  $K$  today for a stock that may be worth more than  $K$  at  $T$ .

* Even if  $S < K$  today, it may well be that  $S_T > K$ , in which case we will not want to exercise.  
* $S$  today reflects all of the possible possibilities, including high  $S_{T}$ .  
* By waiting, we reserve the right of not to exercise if  $S_T > K$ .

- Still, even if there is no dividends, put options may be worth exercise early.
- For example, if the company goes bankrupt, then  $S = 0$ . Exercising immediately is then optimal, as you receive  $K$  today. It cannot get any better than this, and waiting you lose the interest.

# American Options. Dividend Rules

- Suppose dividends are unknown, but

$$
D ^ {+} = \max P V [ \mathrm {d i v i d e n d s u n t i l m a t u r i t y} ]
$$

$$
D ^ {-} = \min P V [ \mathrm {d i v i d e n d s u n t i l m a t u r i t y} ]
$$

- Then
- Never exercise a call if  $D^{+} < K \times (1 - e^{-rT})$  
- Never exercise a put if  $D^{-} > K \times (1 - e^{-rT})$
- To see this, consider the call (for the put it is similar).
- The value of a call is always higher than the value of a forward contract with the same strike price (the call always pays at least as much as the forward!):

$$
\begin{array}{l} C (S, K, t, T) \geq S - P V (D) - K e ^ {- r T} \\ \geq S - D ^ {+} - K e ^ {- r T} \\ > S - K (1 - e ^ {- r T}) - K e ^ {- r T} \\ = S - K \\ \end{array}
$$

- $\Rightarrow$  Sell the option, rather than exercise it.

# American Options. Dividend Rules - 2

- It is only optimal to exercise an American Call at maturity, or just before a dividend payment.  
- It is never optimal to exercise an American Put just before a dividend payment.
- Intuitively, consider the figures

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/a4af48e50a6ab62d36ed86a14de89cd7a65da0f16f42641b1952e0f719354d2b.jpg)

- By exercising a Call at (1) instead of (2) you: (A) lose both the interest between (1) and (2), and the right not to exercise; (B) gain nothing, as there is no dividend between (1) and (2). It cannot be optimal.  
- By exercising a Call at (3) instead of (2) you: (A) lose both the dividend, and the right not to exercise; (B) gain a little interest, but small given the small interval.  
- By exercising a Put at (2) instead of (3) you: (A) lose both the dividend and the right not to exercise; (B) gain a little interest, but small given the small interval.

# American Options: Pricing and Optimal Exercise Time

- How do we price American Options? How can we compute the optimal exercise time?  
- For instance, you are long a Sep 07 put option on the S&P 100 index with strike price  $K = 740$ .  
- On May 11 2007 the S&P 100 closed at 689.83. You are  $7 \%$ inthemoney.  
- Question: Is it time to exercise?  
- Or keeping the option alive has still sufficient value to wait longer?
- In order to decide whether it is optimal to exercise, we have to compare the payoff today (if exercise) with the expected payoff in the future (if we wait)  
- That is, we exercise if and only if

# $\mathbf{K} - \mathbf{S} >$  Discounted Expected Future Payoff if Wait

- How do we compute the discounted expected future payoff if we wait?
- Binomial Trees are excellent tools that allow us to perform this computation.

# American Option: Two Step Tree

- Let  $S_0 = 100$ ;  $K = 100$ ,  $T = 1$ ,  $r = 2\%$ ,  $\sigma = 30\% \Rightarrow u = e^{\sigma \sqrt{T}} = 1.34986$  and  $q^{*} = 0.4707$ .  
- Consider a put option with  $K = 100$ . The European option is given by

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
S _ {2, u u} = 1 5 2. 8 4 7
$$

$$
p _ {2, u u} ^ {E} = 0
$$

$$
\begin{array}{l} S _ {0} = 1 0 0 \\ p _ {0} ^ {E} = e ^ {- r / 2} E ^ {*} [ p _ {1} ] \\ = e ^ {- r / 2} \left(1 - q ^ {*}\right) p _ {1, d} = 9. 4 9 5 \\ \end{array}
$$

$$
\begin{array}{l} S _ {1, u} = 1 2 3. 6 3 1 \\ p _ {1, u} ^ {E} = e ^ {- r / 2} E ^ {*} [ p _ {2} | S _ {1, u} ] = 0 \\ \end{array}
$$

$$
\begin{array}{l} S _ {2, u d} = S _ {2, d u} = 1 0 0 \\ p _ {2, u d} ^ {E} = p _ {2, d u} ^ {E} = 0 \\ \end{array}
$$

$$
\begin{array}{l} S _ {1, d} = 8 0. 8 8 6 \\ p _ {1, d} ^ {E} = e ^ {- r / 2} E ^ {*} [ p _ {2} | S _ {1, d} ] \\ = e ^ {- r / 2} \left(1 - q ^ {*}\right) p _ {2, d d} = 1 8. 1 1 9 \\ \end{array}
$$

$$
\begin{array}{l} S _ {2, d d} = 6 5. 4 2 5 \\ p _ {2, d d} ^ {E} = 3 4. 5 7 5 \\ \end{array}
$$

# American Option: Two Step Tree

- Consider now the American put option  
- At maturity  $i = 2$  the payoff of the American option is the same as the European option

$$
p _ {2, j} ^ {A} = p _ {2, j} ^ {E} \quad \mathrm {f o r} \quad j = u u, u d, d u, d d
$$

- At  $i = 1$ , at each node  $u$  and  $d$  compare the payoff if exercise with expected payoff if wait.
- In node  $(1, u)$  the put option is OTM  $\Longrightarrow$  no exercise. Note that  $p_{1,u}^{A} = 0$ .  
-In node  $(1,d)$

1. If exercise get  $K - S = 100 - 80.886 = 19.114$ .  
2. If wait, the value of the option is equal to the European counterpart

$$
\mathrm {V a l u e o f O p t i o n i f W a i t} = e ^ {- r / 2} E ^ {*} [ p _ {2} ^ {A} | S _ {1, d} ] = e ^ {- r / 2} E ^ {*} [ p _ {2} ^ {E} | S _ {1, d} ] = 1 8. 1 1 9
$$

- Thus, exercise in node  $(1,d)$  is optimal.
- $\Rightarrow$  The value of the option in node  $(1, d)$  is equal to 19.114. That is

$$
p _ {1, d} ^ {A} = \max (K - S _ {1, d}, \mathrm {V a l u e o f O p t i o n i f W a i t})
$$

- The value of the option at time 0 is then

$$
p _ {0} ^ {A} = e ^ {- r / 2} E ^ {*} \left[ p _ {1} ^ {A} \right] = e ^ {- r / 2} \left(1 - q ^ {*}\right) p _ {1, d} ^ {A} = 1 0. 0 1 7
$$

# American Option: Two Step Tree

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
S _ {2, u u} = 1 5 2. 8 4 7
$$

$$
p _ {2, u u} ^ {A} = 0
$$

$$
\begin{array}{l} S _ {0} = 1 0 0 \\ p _ {0} ^ {A} = \max  \left(K - S _ {0}, e ^ {- r / 2} E ^ {*} [ p _ {1} ^ {A} ]\right) \\ = e ^ {- r / 2} q ^ {*} p _ {1, d} ^ {A} = 1 0. 0 1 7 \\ \end{array}
$$

$$
\begin{array}{l} S _ {1, u} = 1 2 3. 6 3 1 \\ p _ {1, u} ^ {A} = \max  \left(K - S _ {1, u}, e ^ {- r / 2} E ^ {*} [ p _ {2} ^ {A} | S _ {1, u} ]\right) \\ = 0 \\ \end{array}
$$

$$
\begin{array}{l} S _ {2, u d} = S _ {2, d u} = 1 0 \phi \\ p _ {2, u d} ^ {A} = p _ {2, d u} ^ {A} = 0 \\ \end{array}
$$

$$
\begin{array}{l} S _ {1, d} = 8 0. 8 8 6 \\ p _ {1, d} ^ {A} = \max  \left(K - S _ {1, d}, e ^ {- r / 2} E ^ {*} [ p _ {2} ^ {A} | S _ {1, d} ]\right) \\ = \max  (1 9. 1 1 4, 1 8. 1 1 9) = 1 9. 1 1 4 \\ \end{array}
$$

$$
\begin{array}{l} S _ {2, d d} = 6 5. 4 2 5 \\ p _ {2, d d} ^ {A} = 3 4. 5 7 5 \\ \end{array}
$$

# American Options. Multi Step Trees

- The tree methodology can be easily extended to many steps.  
- Remember that the pair  $(i,j)$  represent time  $i = 0,1,2\ldots ,n$  and node  $j = 1,2,\dots,n$  
- With European style derivatives, we solve for prices  $V_{i,j}$  using the rule

$$
V _ {i, j} ^ {E} = e ^ {- r \times h} \times E ^ {*} \left[ V _ {i + 1} ^ {E} | (i, j) \right]
$$

- where  $h = T / n$  is the time interval between steps.
- With American style derivatives, we solve for prices  $V_{i,j}$  using the rule

$$
V _ {i, j} ^ {A} = \max \left\{g _ {i, j}, e ^ {- r \times h} \times E ^ {*} \left[ V _ {i + 1} ^ {A} | (i, j) \right] \right\}
$$

- where  $g_{i,j}$  is the payoff from the American derivative if exercise occurs in node  $(i,j)$
- For instance, for the case of put options, we have

$$
p _ {i, j} ^ {A} = \max \big \{K - S _ {i, j}, e ^ {- r \times h} \times \big (q ^ {*} \times p _ {i + 1, j} ^ {A} + (1 - q ^ {*}) \times p _ {i + 1, j + 1} ^ {A} \big) \big \}
$$

# American Options. Multi Step Trees

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/9d1555019b4d6912c3f714b1f46cdfa058287017cd2021bddb593c714508193e.jpg)  
BINOMIAL TREE MODEL

AMERICAN  

<table><tr><td colspan="2">time =&gt;</td><td>0.000</td><td>0.100</td><td>0.200</td><td>0.300</td><td>0.400</td><td>0.500</td><td>0.600</td><td>0.700</td><td>0.800</td><td>0.900</td><td>1.000</td></tr><tr><td colspan="2">i=&gt;</td><td>0.0</td><td>1.0</td><td>2.0</td><td>3.0</td><td>4.0</td><td>5.0</td><td>6.0</td><td>7.0</td><td>8.0</td><td>9.0</td><td>10.0</td></tr><tr><td>0</td><td>10.819</td><td>6.669</td><td>3.481</td><td>1.384</td><td>0.319</td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.000</td></tr><tr><td>1</td><td></td><td>14.799</td><td>9.719</td><td>5.484</td><td>2.399</td><td>0.623</td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.000</td></tr><tr><td>2</td><td></td><td></td><td>19.676</td><td>13.774</td><td>8.433</td><td>4.094</td><td>1.216</td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.000</td></tr><tr><td>3</td><td></td><td></td><td></td><td>25.352</td><td>18.894</td><td>12.582</td><td>6.840</td><td>2.374</td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.000</td></tr><tr><td>4</td><td></td><td></td><td></td><td></td><td>31.578</td><td>24.956</td><td>18.080</td><td>11.103</td><td>4.635</td><td>0.000</td><td>0.000</td><td>0.000</td></tr><tr><td>5</td><td></td><td></td><td></td><td></td><td></td><td>37.771</td><td>31.578</td><td>24.769</td><td>17.282</td><td>9.051</td><td>0.000</td><td>0.000</td></tr><tr><td>6</td><td></td><td></td><td></td><td></td><td></td><td></td><td>43.403</td><td>37.771</td><td>31.578</td><td>24.769</td><td>17.282</td><td>17.282</td></tr><tr><td>7</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>48.525</td><td>43.403</td><td>37.771</td><td>31.578</td><td>31.578</td></tr><tr><td>8</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>53.184</td><td>48.525</td><td>43.403</td><td>43.403</td></tr><tr><td>9</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>57.421</td><td>53.184</td><td>61.275</td></tr><tr><td>10</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>61.275</td></tr></table>

# Multi Step Tree: Does it Work?

- Consider the relative pricing of S&P 500 options (European) and S&P 100 options (American)  
- For instance, the  $5\%$  in the money Sep Put have (renormalized) values of

$$
p ^ {S \& P 5 0 0} (1. 0 5) = 0. 0 4 9 1 \mathrm {a n d} p ^ {S \& P 1 0 0} (1. 0 5) = 0. 0 5 4 0
$$

- The three month interest rate is  $r = 0.0483$  and the dividend yield around  $\delta = 0.0191$ .  
- The implied volatility that exactly prices the S&P 500 put option is  $\sigma = 0.10366$  
- The value of the corresponding American Option is  $p^A = 0.0529$ , a little lower than the market value.

# Multi Step Tree: Does it Work?

BINOMIAL TREE MODEL  

<table><tr><td></td><td colspan="2">Stock Assumption</td><td colspan="3">Option Assumption</td><td colspan="3">Tree</td><td colspan="3">Risk Neutral Prob</td><td>Data</td></tr><tr><td></td><td>mu</td><td>0.1183</td><td>T</td><td colspan="2">0.364</td><td>n</td><td colspan="2">91</td><td>q*</td><td colspan="2">0.50727</td><td></td></tr><tr><td></td><td>sigma</td><td>0.103661</td><td>K</td><td colspan="2">1.05</td><td>h</td><td colspan="2">0.004</td><td>Price European</td><td>0.0491</td><td>0.0491</td><td></td></tr><tr><td></td><td>r</td><td>0.0483</td><td>Call or Put</td><td colspan="2">0 (=1 for call</td><td>u</td><td colspan="2">1.006578</td><td>Delta European</td><td>-0.7145</td><td></td><td></td></tr><tr><td></td><td>q</td><td>0.0191</td><td></td><td colspan="2"></td><td>d</td><td colspan="2">0.993465</td><td>Price American</td><td>0.0529</td><td>0.0540</td><td></td></tr><tr><td></td><td>S0</td><td>1</td><td></td><td colspan="2"></td><td>p</td><td colspan="2">0.528629</td><td>Delta American</td><td>-0.8015</td><td></td><td></td></tr><tr><td>time =&gt;</td><td>0</td><td>0.004</td><td>0.008</td><td>0.012</td><td>0.016</td><td>0.02</td><td>0.024</td><td>0.028</td><td>0.032</td><td>0.036</td><td>0.04</td><td>0.044</td></tr><tr><td>i=&gt;</td><td>0</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td><td>11</td></tr><tr><td>0</td><td>1.000</td><td>1.007</td><td>1.013</td><td>1.020</td><td>1.027</td><td>1.033</td><td>1.040</td><td>1.047</td><td>1.054</td><td>1.061</td><td>1.068</td><td>1.075</td></tr><tr><td>1</td><td></td><td>0.993</td><td>1.000</td><td>1.007</td><td>1.013</td><td>1.020</td><td>1.027</td><td>1.033</td><td>1.040</td><td>1.047</td><td>1.054</td><td>1.061</td></tr><tr><td>2</td><td></td><td></td><td>0.987</td><td>0.993</td><td>1.000</td><td>1.007</td><td>1.013</td><td>1.020</td><td>1.027</td><td>1.033</td><td>1.040</td><td>1.047</td></tr><tr><td>3</td><td></td><td></td><td></td><td>0.981</td><td>0.987</td><td>0.993</td><td>1.000</td><td>1.007</td><td>1.013</td><td>1.020</td><td>1.027</td><td>1.033</td></tr><tr><td>4</td><td></td><td></td><td></td><td></td><td>0.974</td><td>0.981</td><td>0.987</td><td>0.993</td><td>1.000</td><td>1.007</td><td>1.013</td><td>1.020</td></tr><tr><td>5</td><td></td><td></td><td></td><td></td><td></td><td>0.968</td><td>0.974</td><td>0.981</td><td>0.987</td><td>0.993</td><td>1.000</td><td>1.007</td></tr><tr><td>6</td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.961</td><td>0.968</td><td>0.974</td><td>0.981</td><td>0.987</td><td>0.993</td></tr><tr><td>7</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.955</td><td>0.961</td><td>0.968</td><td>0.974</td><td>0.981</td></tr><tr><td>8</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.949</td><td>0.955</td><td>0.961</td><td>0.968</td></tr><tr><td>9</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.943</td><td>0.949</td><td>0.955</td></tr><tr><td>10</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.937</td><td>0.943</td></tr><tr><td>11</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.930</td></tr></table>

# American Options. Dynamic Replication

- Can we "dynamically replicate" an American option using a portfolio of stocks and bonds?
- Yes! Once we solve for the optimal exercise strategy, we have a standard option tree.  
- Consider the earlier example:

$$
\begin{array}{l} i = 0 \\ i = 1 \\ i = 2 \\ S _ {2, u u} = 1 5 2. 8 4 7 \\ p _ {2, u u} ^ {A} = 0 \\ \end{array}
$$

$$
S _ {0} = 1 0 0
$$

$$
p _ {0} ^ {A} = 1 0. 0 1 7
$$

$$
\begin{array}{l} S _ {1, u} = 1 2 3. 6 3 1 \\ p _ {1, u} ^ {A} = 0 \\ \end{array}
$$

$$
S _ {1, d} = 8 0. 8 8 6
$$

$$
p _ {1, d} ^ {A} = 1 9. 1 1 4
$$

$$
\begin{array}{l} S _ {2, u d} = S _ {2, d u} = 1 0 0 \\ p _ {2, u d} ^ {A} = p _ {2, d u} ^ {A} = 0 \\ \end{array}
$$

$$
\begin{array}{l} S _ {2, d d} = 6 5. 4 2 5 \\ p _ {2, d d} ^ {A} = 3 4. 5 7 5 \\ \end{array}
$$

# American Options. Dynamic Replication

- Suppose you sold the option to a client.  
- At time  $i = 0$  we must set up a portfolio that replicates  $p_1^A$ . The same rule as in TN 4 applies:

1. Compute  $\Delta = (p_{1,u}^{A} - p_{1,d}^{A}) / (S_{1,u} - S_{1,d}) = -0.447$  
2. Compute bonds  $B_{0} = e^{-r / 2}\left(p_{1,u}^{A} - \Delta S_{1,u}\right) = 54.733$  
3. The replicating portfolio is  $P_{0} = \Delta S_{0} + B_{0} = 10.017 = p_{0}^{A}$

- At time  $i = 1$  the replicating portfolio has payoffs

$$
\mathrm {I n t h e U p N o d e} P _ {1, u} = \Delta S _ {1, u} + B _ {0} e ^ {r / 2} = 0
$$

$$
\mathrm {I n t h e D o w n N o d e} P _ {1, d} = \Delta S _ {1, d} + B _ {0} e ^ {r / 2} = 1 9. 1 1 4
$$

- At time  $i = 1$  we need to rebalance.
- In the up node,  $\Delta = 0$ , and so we are out of the market.  
- In the down node, the option holder is supposed to optimally exercise the option, and so we simply hand them the payoff

$$
P _ {1, d} = K - S _ {1, d} = 1 9. 1 1 4
$$

- Note that the node  $(2, d)$  is never reached under the optimal exercise strategy.

# American Options. Dynamic Replication

- What if the option holder does not exercise the American option in node  $(1, d)$ ?
- In this case, we need to keep going with the replicating portfolio until time  $i = 2$ .  
- The new replicating portfolio has  $\Delta_{1,d} = (p_{2,du}^{A} - p_{2,dd}^{A}) / (S_{2,du} - S_{2,dd}) = -1$  and  $B_{1,d} = e^{r/2}(p_{2,u} - \Delta_{1,d}S_{2,u}) = 99.005$ .  
- The value of the new replicating portfolio in node  $(1, d)$  is

$$
P _ {1, d} ^ {\mathrm {n e w}} = \Delta_ {1, d} S _ {1, d} + B _ {1, d} = 1 8. 1 1 9
$$

- The value of the new replicating portfolio is lower than the value  $P_{1,d} = 19.114$  obtained earlier from the initial replicating strategy.  
- $\Longrightarrow$  The fact that the counterpart forgets to exercise the American option at node  $(1, d)$  make us earn money:

Profit from suboptimal exercise of option holder  $= P_{1,d} - P_{1,d}^{new} = 19.113 - 18.119 = 0.99$

# Conclusion

- American options are much harder to evaluate because of the timing decision of when to exercise, if at all.
- The decision to exercise or not relies on the value of the option in case of no exercise.  
- The methodology requires a backward procedure to evaluate such option to wait.
- Binomial trees are especially useful, because the procedure is naturally backward  
- However, binomial trees are restrictive
- Hard to use with multiple factors (e.g. what if volatility is stochastic?)  
- Hard to use for path-dependent securities
- To deal with these issues, new methodologies have recently been put forward to value American options by Monte Carlo Simulations

# Financial Instruments


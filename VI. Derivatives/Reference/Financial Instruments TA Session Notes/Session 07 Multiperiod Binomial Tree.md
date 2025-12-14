---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Option Pricing with Multiperiod Binomial Tree
linter-yaml-title-alias: Option Pricing with Multiperiod Binomial Tree
---

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

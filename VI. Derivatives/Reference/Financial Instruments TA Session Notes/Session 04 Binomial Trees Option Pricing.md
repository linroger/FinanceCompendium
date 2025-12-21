---
title: Binomial Trees and Option Pricing
parent_directory: Financial Instruments TA Session Notes
formatted: 2025-12-20 11:03:25 PM
formatter_model: claude-sonnet-4
cli_tool: opencode
primary_tags:
  - binomial trees
  - option pricing
  - risk neutral valuation
  - dynamic replication
secondary_tags:
  - capm
  - at-the-money options
  - comparative statics
  - pharmaceutical stocks
  - systematic risk
cssclasses: academia
---

# Binomial Trees and Option Pricing

## 1. Binomial Trees in Pharmaceuticals

### 1.1. Parameters

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

### 1.2. CAPM

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

### 1.3. Stock Valuation at Inception

1. The stock price  $S_{0,i}$  at inception  $t = 0$  is equal to the expected discounted stock price at maturity  $t = T$ .
2. Expected stock price at maturity  $t = T$  (i.e., the mean of the random variable  $S_{T,i}$ ).

$$
\mathbb {E} _ {q} \big [ S _ {T, i} \big ] = q \cdot S _ {u} + (1 - q) \cdot S _ {d}
$$

3. Use expected stock price return  $\mathbb{E}[R_i]$  to compute present-value as inception.

$$
(1 + \mathbb {E} [ R _ {i} ]) \cdot S _ {0, i} = \mathbb {E} \big [ S _ {T, i} \big ]
$$

### 1.4. At-the-Money Option Under Dynamic Replication

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

### 1.5. At-the-Money Option Under Risk Neutral Methodology

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

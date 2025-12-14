---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: American Options
linter-yaml-title-alias: American Options
---

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

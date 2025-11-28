---
cssclasses:
  - academia
linter-yaml-title-alias: Option Pricing with Multiperiod Binomial Tree
title: Option Pricing with Multiperiod Binomial Tree
tags:
  - binomial_tree
  - dividend_yield
  - european_option
  - option_pricing
  - stock_price
  - replicating_portfolio
  - self_financing
  - no_arbitrage
aliases:
  - BOPM
  - Binomial Option Pricing
  - Multiperiod Binomial Model
  - Option Tree Model
key_concepts:
  - European call option pricing
  - Multiperiod binomial tree construction
  - Option pricing with dividends
  - Replicating portfolio strategy
  - Stock price payoff tree modeling
  - Delta hedging calculation
  - Self-financing portfolio properties
  - Backward induction methodology
---

# Option Pricing with Multiperiod Binomial Tree

## 1. Preamble

[^1]: Three periods: $i \in \{0,1,2\}$
[^2]: Stock price in initial period: $S_0$
[^3]: Stock price can either rise or fall by 10% in each subsequent period $i \in \{1,2\}$
[^4]: Discrete compounding per period interest rate: $r$
[^5]: European call option has strike price: $K = S_0$

## 2. Option Pricing with Multiple Periods

[^1]: **Overview**: Construct a replicating portfolio of stocks and bonds that replicates the payoff of the call option.

[^2]: Stock price payoff tree:
   
   a. Period $i = 0$: $S_0$
   
   b. Period $i = 1$:
      - $S_u = u \cdot S_0$
      - $S_d = d \cdot S_0$
   
   c. Period $i = 2$:
      - $S_{uu} = u \cdot S_u$
      - $S_{ud} = d \cdot S_u = u \cdot S_d = S_{du}$
      - $S_{dd} = d \cdot S_d$

[^3]: Call option payoff tree:

   a. Period $i = 0$: $c_0$ (to be determined)
   
   b. Period $i = 1$:
      - $c_u$ (to be determined)
      - $c_d$ (to be determined)
   
   c. Period $i = 2$:
      - $c_{uu} = \max\{S_{uu} - K, 0\}$
      - $c_{ud} = \max\{S_{ud} - K, 0\}$
      - $c_{dd} = \max\{S_{dd} - K, 0\}$

[^4]: Work backwards from final node in the tree to determine option prices ($c_0$, $c_u$, $c_d$).

[^5]: Period $i = 1$:
   
   a. Node $u$:
      - Position in stocks ("delta"):
        $$\Delta_{u}={\frac{c_{uu}-c_{ud}}{S_{uu}-S_{ud}}},$$

      - Position in bonds (note use of discrete discounting):  
        $$B_{u}=\frac{1}{1+r}\cdot(c_{uu}-\Delta_{u}\cdot S_{uu})$$

      - Value of replicating portfolio in stocks and bonds:  
        $$c_{u}:=V_{u}^{RP}=\Delta_{u}\cdot S_{u}+B_{u}$$
   
   b. Node $d$:
      - Position in stocks ("delta"):
        $$\Delta_{d}={\frac{c_{ud}-c_{dd}}{S_{ud}-S_{dd}}}.$$

      - Position in bonds (note use of discrete discounting):
        $$B_{d}=\frac{1}{1+r}\cdot(c_{ud}-\Delta_{d}\cdot S_{ud})$$

      - Value of replicating portfolio in stocks and bonds:
        $$c_{d}:=V_{d}^{RP}=\Delta_{d}\cdot S_{d}+B_{d}$$

[^6]: Period $i = 0$:
   - Position in stocks ("delta"):
     $$\Delta_{0}={\frac{c_{u}-c_{d}}{S_{u}-S_{d}}}$$

   - Position in bonds (note use of discrete discounting):
     $$B_{0}=\frac{1}{1+r}\cdot(c_{u}-\Delta_{0}\cdot S_{u})$$

   - Value of replicating portfolio in stocks and bonds:
     $$c_{0}:=V_{0}^{RP}=\Delta_{0}\cdot S_{0}+B_{0}$$

## 3. Portfolio Self-Financing

[^1]: Compute value of "inherited" portfolio and cost of "current" portfolio.

[^2]: Consider node $u$ at $i = 1$.

[^3]: Value of "inherited" portfolio set up at $i = 0$:
   $$V_{u}^{1}=\Delta_{0}\cdot S_{u}+B_{0}\cdot(1+r)$$

[^4]: Cost of "future" portfolio set up at $i = 1$:
   $$V_{u}^{2}=\Delta_{u}\cdot S_{u}+B_{u}$$

[^5]: **Question**: What is the value of $(V_u[^1] - V_u[^2])$?

## 4. Option Pricing with Dividends

[^1]: **Takeaway**: Stock prices must fall in response to dividends.

[^2]: Stock price payoff tree with dividend yield $y$ at period $t = 1$:
   
   a. Period $i = 0$: $S_0$
   
   b. Period $i = 1$:
      - $S_u = (1 - y) \cdot u \cdot S_0$
      - $S_d = (1 - y) \cdot d \cdot S_0$
   
   c. Period $i = 2$:
      - $S_{uu} = u \cdot S_u$
      - $S_{ud} = d \cdot S_u = u \cdot S_d = S_{du}$
      - $S_{dd} = d \cdot S_d$

[^3]: Note that the tree is recombining at period $i = 2$, i.e. $S_{ud} = S_{du}$

[^4]: Follow the same steps as before to compute option prices.

[^5]: Consider node $u$ at period $i = 1$:
   
   a. Position in stocks:
      $$\Delta_{u}={\frac{c_{uu}-c_{ud}}{S_{uu}-S_{ud}}}.$$
   
   b. Position in bonds:
      $$B_{u}=\frac{1}{1+r}\cdot(c_{uu}-\Delta_{u}\cdot S_{uu})$$
   
   c. Value of option:
      $$c_u := V_u^{RP} = \Delta_u \cdot S_u + B_u$$

[^6]: Consider node $d$ at period $i = 1$:
   
   a. Position in stocks:
      $$\Delta_{d}=\frac{c_{du}-c_{dd}}{S_{du}-S_{dd}}.$$
   
   b. Position in bonds:
      $$B_{d}=\frac{1}{1+r}\cdot(c_{du}-\Delta_{d}\cdot S_{du})$$
   
   c. Value of option:
      $$c_{d}:=V_{d}^{RP}=\Delta_{d}\cdot S_{d}+B_{d}$$

[^7]: Use stock prices without dividend at period $i = 1$, namely $S_u^{ND} = u \cdot S_0$ and $S_d^{ND} = d \cdot S_0$, when pricing options at the initial period $i = 0$.
   
   a. Position in stocks:
      $$\Delta_{0}=\frac{c_{u}-c_{d}}{S_{u}^{ND}-S_{d}^{ND}}$$
   
   b. Position in bonds:
      $$B_{0}=\frac{1}{1+r}\cdot(c_{u}-\Delta_{0}\cdot S_{u}^{ND})$$
   
   c. Value of option:
      $$c_{0}=\Delta_{0}\cdot S_{0}+B_{0}$$

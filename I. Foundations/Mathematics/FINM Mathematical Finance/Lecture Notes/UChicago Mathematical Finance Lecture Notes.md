---
parent_directory: I. Foundations/Mathematics/FINM Mathematical Finance/Lecture Notes
title: UChicago Mathematical Finance Complete Lecture Notes
tags: null
aliases:
- UChicago Mathematical Finance Complete Lecture Notes
parent_folder: Lecture Notes
subfolder: null
key_concepts: null
cssclasses: academia
linter-yaml-title-alias: UChicago Mathematical Finance Complete Lecture Notes
primary_tags:
- risk-neutral probability measure
- two possible market scenarios
- fluctuation rates
- useful special cases
- following lemma
- simple example
secondary_tags:
- efficient market hypothesis
- black scholes argument
- fundamental theorem see
- any probability distribution
- any such market
- simple examples
- no discounting
- forwards contracts
- every multiperiod market
- traded assets
- guaranteed profit
- future rates
- probability zero
- only one constraint
- wiener measure
- terminal value
tags_extracted: '2025-12-18T17:58:26.599366'
tags_method: max_quality_v1
---

# THE FUNDAMENTAL THEOREM OF ARBITRAGE PRICING

# 1. INTRODUCTION

The Black-Scholes theory, which is the main subject of this course and its sequel, is based on the Efficient Market Hypothesis, that arbitrages (the term will be defined shortly) do not exist in efficient markets. Although this is never completely true in practice, it is a useful basis for pricing theory, and we shall limit our attention (at least for now) to efficient (that is, arbitrage-free) markets. We shall see that absence of arbitrage sometimes leads to unique determination of prices of various derivative securities, and gives clues about how these derivative securities may be hedged. In particular, we shall see that, in the absence of arbitrage, the market imposes a probability distribution, called a risk-neutral or equilibrium measure, on the set of possible market scenarios, and that this probability measure determines market prices via discounted expectation. This is the Fundamental Theorem of arbitrage pricing.

Before we state the Fundamental Theorem formally, or consider its ramifications, we shall consider several simple examples of derivative pricing in which the Efficient Market Hypothesis allows one to directly determine the market price.

# 2. EXAMPLE 1: FORWARD CONTRACTS

In the simplest forward contract, there is a single underlying asset STOCK, whose share price (in units of CASH) at time  $t = 0$  is known but at time  $t = 1$  is subject to uncertainty. It is also assumed that there is a riskless asset MONEYMARKET, that is, an asset whose share price at  $t = 1$  is not subject to uncertainty; the share price of MONEYMARKET at  $t = 0$  is 1 and at  $t = 1$  is  $e^r$ , regardless of the market scenario. The constant  $r$  is called the riskless rate of return. The forward contract calls for one of the agents to pay the other an amount  $F$  (the forward price) in CASH at time  $t = 1$  in exchange for one share of STOCK. The forward price  $F$  is written into the contract at time  $t = 0$ . No money or assets change hands at time  $t = 0$ .

# Proposition 1. In an arbitrage-free market, the forward price is  $F = S_0 e^r$ .

Informally, an arbitrage is a way to make a guaranteed profit from nothing, by short-selling certain assets at time  $t = 0$ , using the proceeds to buy other assets, and then settling accounts at time  $t = 1$ . When an investor sells an asset short, he/she must borrow shares of the asset to sell in return for a promise to return the shares at a pre-specified future time (and, usually, an interest charge). In real markets there are constraints on short-selling imposed by brokers and market regulators to assure that the shares borrowed for short sales can be repaid. In the idealized markets of the Black-Scholes universe, such constraints do not exist, nor are there interest payments on borrowed shares, nor are there transaction costs (brokerage fees). Furthermore, it is assumed that investors may buy or sell shares (as many as they like) in any asset at the prevailing market price without affecting the share price.

Why shouldn't arbitrages exist in efficient markets? If one did, it would provide an investment opportunity with infinite rate of return. Investors could, and would, try to use it to make large amounts of money without putting up anything at time  $t = 0$  and without any risk. Since the arbitrage entails buying certain assets at time  $t = 0$ , there would be, in effect, an infinite demand for such assets. Economists tell us that this would immediately raise the prices of these assets, and the arbitrage opportunity would vanish.

PROOF OF PROPOSITION 1. To prove that  $F = S_0e^r$ , it suffices to show that either of the alternative possibilities  $F > S_0e^r$  or  $F < S_0e^r$  leads to an arbitrage. Suppose first that  $F < S_0e^r$ . Consider the following strategy:

Financial Forward Portfolio: At time  $t = 0$ , sell 1 share of STOCK short. Invest the proceeds  $S_0$  in the riskless asset MONEYMARKET, and simultaneously enter into a forward contract to buy 1 share of STOCK at time 1 at the forward price  $F$ . Use the share of STOCK obtained from the forward contract at time 1 to settle the short position.

This strategy is an arbitrage, because it leads to a locked-in profit of  $S_0e^r - F$  at time 1, using zero assets (capital) at time  $t = 0$ . A similar arbitrage exists if  $F > S_0e^r$ . (EXERCISE: Find it.)

# 3. EXAMPLE: CALL OPTION

A (European) call option is a contract between two agents, a BUYER and a SELLER, that gives the BUYER the right to buy one share of an asset STOCK at a pre-specified future time  $t = 1$  (the expiration date) for an amount  $K$  (called the strike price, or the strike) in CASH. The strike price  $K$  is written into the contract at time  $t = 0$ . The BUYER of the option is not obliged to exercise it at expiration. Unlike the forward contract, the call option has a payment at time  $t = 0$ : the BUYER pays the SELLER an amount  $V_{0}$  in cash at time  $t = 0$ .

If the BUYER behaves rationally (as we shall assume all agents in the economy do) he/she will exercise the option at expiration if and only if the share price  $S_{1}$  of the underlying asset STOCK exceeds the strike price  $K$ . Because the share of STOCK may be immediately resold for the amount  $S_{1}$  is CASH, it follows that the value of the call option at expiration is

$$
\begin{array}{l} V _{1} = (S _{1} - K) _{+} = S _{1} - K \quad \text{if } S _{1} \geq K; \tag {1} \\ = 0 \quad \text{if } S _{1} \leq K. \\ \end{array}
$$

The market value  $V_{0}$  of the call option at time  $t = 0$ , however, depends on the uncertainty about the value of the underlying asset (STOCK) at the expiration time  $t = 1$ , as the following examples show. We assume, as in the discussion of the forward contract, that there is a riskless asset MONEYMARKET with rate of return  $r$ .

3.1. Two-Scenario Market. Suppose that there are only two possible market scenarios, labelled  $\omega_{1},\omega_{2}$ . The value of one share of STOCK at time 1 is  $S_{1}(\omega_{1}) = d_{1}$  in scenario  $\omega_{1}$ , and is  $S_{1}(\omega_{2}) = d_{2}$  in scenario  $\omega_{2}$ . Let's consider the price  $V_{0}$  at time  $t = 0$  of the call option with strike price  $K$  under the following hypotheses:

$$
\begin{array}{l} \quad \left. d _{1} \leq K \leq d _{2} \right. (2) \\ d _{1} \leq S _{0} e ^{r} \leq d _{2} (3) \\ \end{array}
$$

These hypotheses are forced by the Efficient Market Hypothesis. Clearly, if  $d_{1}, d_{2}$  were the only conceivable values of  $S_{1}$  then no rational agent would ever buy an option with strike  $K > d_{2}$ , or sell one with strike  $K < d_{1}$ .

EXERCISE: Show that if one of the inequalities (3) were violated then there would be an arbitrage.

Proposition 2. The market price of the call option with strike price  $K$  at time  $t = 0$  is

$$
V _{0} = v := \left(d _{2} - K\right) \left(\frac{S _{0} e ^{r} - d _{1}}{d _{2} - d _{1}}\right) e ^{- r}. \tag {4}
$$

REMARK. The fraction  $p \coloneqq (S_0 e^r - d_1) / (d_2 - d_1)$  is, in effect, the probability that the market places on scenario  $\omega_2$ , as we shall see. Thus, the value of  $V_0$  is the market expectation of the value of the call at termination.

PROOF OF PROPOSITION 2. As in the case of the forward contract, we must rule out the alternative possibilities that  $V_0 < v$  or  $V_0 > v$ . Suppose that  $V_0 < v$ . Consider the following strategy:

Financed Call Option: At time  $t = 0$ , sell  $a = (d_2 - K) / (d_2 - d_1)$  shares of STOCK short, use  $V_0$  of the proceeds to buy 1 call option contract, and invest the remainder  $(aS_0 - V_0)$  in the riskless asset MONEYMARKET. At time  $t = 1$ , you must return  $a$  shares of stock, and you will exercise the option in market scenario  $\omega_2$ , but not in scenario  $\omega_1$ .

The financed option strategy is an arbitrage, because you invested 0 at time 0 (your call option was financed by the short sale), and you will be ahead at  $t = 1$  under either scenario:

(1) Under scenario  $\omega_{1}$ , you owe  $ad_{1}$  to repay the  $a$  shares of STOCK, but your cash on hand (from the MONEYMARKET) is

$$
\begin{array}{l} (a S _{0} - V _{0}) e ^{r} = a d _{1} + (a S _{0} - a d _{1} e ^{- r}) e ^{r} - V _{0} e ^{r} \\ = a d _{1} + \left(v - V _{0}\right) e ^{r} > a d _{1}; \\ \end{array}
$$

(2) Under scenario  $\omega_{2}$ , you owe  $ad_{2}$  to repay the  $a$  shares of STOCK, but your cash on hand (from selling the OPTION, valued now at  $d_{2} - K$ , and from selling your MONEYMARKETS) is

$$
\begin{array}{l} \left(d _{2} - K\right) + \left(a S _{0} - V _{0}\right) e ^{r} > \left(d _{2} - K\right) + \left(a S _{0} - v\right) e ^{r} \\ = \left(d _{2} - K\right) + \left(a S _{0} - a \left(S _{0} - d _{1} e ^{- r}\right)\right) e ^{r} \\ = (d _{2} - K) + a d _{1} \\ = a d _{2}. \\ \end{array}
$$

To complete the proof we must show that if  $V_0 > v$  then there is an arbitrage. But this is now easy - you just reverse the financed option strategy above! In particular: At time  $t = 0$ , sell 1 call OPTION, borrow  $aS_0 - V_0$ , and use it together with the proceeds of the call option sale to buy  $a$  shares of STOCK. (If  $V_0 > aS_0$ , there is no need to borrow anything.) This strategy is an arbitrage, as you should check (EXERCISE!)

3.2. Three-Scenario Market. Suppose now that there are three distinct market scenarios,  $\omega_{1},\omega_{2},\omega_{3}$ , and that the values  $d_{i} = S_{1}(\omega_{i})$  of the STOCK at  $t = 1$  in the three scenarios satisfy

$$
\quad \left. d _{1} <   d _{2} <   d _{3}. \right. \tag {5}
$$

As usual, suppose that there is a riskless asset MONEYMARKET whose rate of return is, as before,  $r$ . Finally, suppose that

$$
\quad \left. d _{1} <   S _{0} e ^{r} <   d _{3}. \right. \tag {6}
$$

(Note: As in the two-scenario market, the no-arbitrage hypothesis forces  $d_{1} \leq S_{0}e^{r} \leq d_{3}$ .) Consider the call option with strike price  $K$ , where  $d_{1} < K < d_{3}$ . What is its value  $V_{0}$  at  $t = 0$  under the no-arbitrage hypothesis? The answer is that it is not determined. The most that can be said is the following:

Proposition 3. Define  $\mathcal{V}$  to be the set of all real numbers

$$
v = e ^{- r} \left(p _{2} \left(d _{2} - K\right) _{+} + p _{3} \left(d _{3} - K\right)\right) \tag {7}
$$

where  $(p_1, p_2, p_3)$  ranges over the set of all probability distributions such that  $S_0 e^r = p_1 d_1 + p_2 d_2 + p_3 d_3$ . Then for each  $v \in \mathcal{V}$  there exists an arbitrage-free market in which the call option has value  $V_0 = v$  and the STOCK has price  $S_0$  at  $t = 0$ , and the scenarios for the STOCK price  $S_1$  are as specified above, that is,  $S_1(\omega_i) = d_i$  for  $i = 1, 2, 3$ .

This proposition is a consequence of the Fundamental Theorem - see below. In the homework, you will be asked to show that the set  $\mathcal{V}$  contains more than one value. In fact, it is an entire closed interval  $[v_{-}, v_{+}]$  of real numbers. Why isn't the price uniquely determined, as in the two-scenario market? The answer, in essence, is that the price of the asset STOCK places only one constraint on the probability distribution on the three scenarios, but two constraints are needed to uniquely determine a probability distribution on three outcomes.

# 4. THE FUNDAMENTAL THEOREM OF ARBITRAGE PRICING

Single Period Market: Consider a market in which  $K$  assets, labelled  $A_{1}, A_{2}, \ldots, A_{K}$ , are freely traded. Assume that one of these, say  $A_{1}$ , is riskless, that is, its value at time  $t = 1$  does not depend on the market scenario. The share price of asset  $A_{j}$  at time  $t = 0$  is  $S_{0}^{j}$ ; without loss of generality, we may assume that  $S_{0}^{1} = 1$ . Uncertainty about the behavior of the market is encapsulated in a finite set  $\Omega$  of  $N$  possible market scenarios, labelled  $\omega_{1}, \omega_{2}, \ldots, \omega_{N}$ . The share prices  $S_{1}^{2}, S_{1}^{3}, \ldots, S_{1}^{K}$  of the  $K - 1$  assets at time  $t = 1$  are functions of the market scenario: thus, there is an  $N \times K$  matrix with entries  $S_{1}^{j}(\omega_{i})$  such that, in scenario  $\omega_{i}$ , the price of a share of  $A_{j}$  at time  $t = 1$  is  $S_{1}^{j}(\omega_{i})$ .

Observe that, since asset  $A_{1}$  is riskless, there is a constant  $r$ , called the riskless rate of return, such that the share price  $S_{1}^{1}$  of  $A_{1}$  in any scenario  $\omega_{i}$  is

$$
S _{1} ^{1} \left(\omega_{j}\right) = e ^{r} \quad \forall i = 1, 2, \dots , N. \tag {8}
$$

Portfolios: A portfolio is a vector

$$
\theta = \left(\theta_{1}, \theta_{2}, \dots , \theta_{K}\right) \in \mathbb {R} ^{K}
$$

of  $K$  real numbers. The entry  $\theta_{j}$  represents the number of shares of asset  $A_{j}$  that are owned; if  $\theta_{j} < 0$  then the portfolio is said to be short  $|\theta_{j}|$  shares of asset  $A_{j}$ . The value of the portfolio  $\theta$  at time  $t = 0$  is

$$
V _{0} (\theta) = \sum_{j = 1} ^{K} \theta_{j} S _{0} ^{j}, \tag {9}
$$

and the value of the portfolio  $\theta$  at time  $t = 1$  in market scenario  $\omega_{i}$  is

$$
V _{1} (\theta ; \omega_{i}) = \sum_{j = 1} ^{K} \theta_{j} S _{1} ^{j} (\omega_{i}). \tag {10}
$$

Arbitrage: An arbitrage is a portfolio  $\theta$  that "makes money from nothing", formally, a portfolio  $\theta$  such that either

(11)  $V_{0}(\theta)\leq 0\qquad \mathrm{and}\qquad V_{1}(\theta ;\omega_{j}) > 0\qquad \forall j = 1,2,\ldots ,N\qquad \mathrm{or}$

(12)  $V_{0}(\theta) <   0\qquad \mathrm{and}\qquad V_{1}(\theta ;\omega_{j})\geq 0\qquad \forall j = 1,2,\ldots ,N.$

Equilibrium Measure: A probability distribution  $\pi_i = \pi(\omega_i)$  on the set  $\Omega$  of possible market scenarios is said to be an equilibrium measure (or risk-neutral measure) if, for every asset  $A$ , the share price of  $A$  at time  $t = 0$  is the discounted expectation, under  $\pi$ , of the share price at time  $t = 1$ , that is, if

$$
S _{0} ^{j} = e ^{- r} \sum_{i = 1} ^{N} \pi \left(\omega_{i}\right) S _{1} ^{j} \left(\omega_{i}\right) \quad \forall j = 1, 2, \dots , K. \tag {13}
$$

Theorem 1. (Fundamental Theorem of Arbitrage Pricing) There exists an equilibrium measure if and only if arbitrages do not exist.

The first implication is easy to prove. Suppose that there is an equilibrium measure  $\pi$ . Then for any portfolio  $\theta$ , the portfolio values at time  $t = 0$  and  $t = 1$  are related by discounted expectation:

$$
V _{0} (\theta) = \sum_{i = 1} ^{N} \pi \left(\omega_{i}\right) e ^{- r} V \left(\theta ; \omega_{i}\right). \tag {14}
$$

(To see this, just multiply equation (13) by  $\theta_j$ , sum on  $j$ , and use the definitions of portfolio value in (9)-(10) above.) If  $V(\theta; \omega_i) > 0$  for every market scenario  $\omega_i$  (as must be the case for an arbitrage portfolio), then equation (14) implies that  $V_0(\theta) > 0$ , and so  $\theta$  cannot be an arbitrage. Thus, arbitrages do not exist.

The second implication, that absence of arbitrages implies the existence of an equilibrium measure, is the more important one. It is also harder to prove. We postpone the argument to section 7 below, so that we may first examine some of the consequences.

Example: The Call Option, Revisited. Let's consider again the pricing of the European call option on an asset STOCK. As in section 3, the strike price is  $K$ , and so the terminal value of the option is given by equations (1).

Two-Scenario Market: There are two possible market scenarios,  $\omega_{1},\omega_{2}$ . The value of one share of STOCK at time 1 is  $S_{1}(\omega_{i}) = d_{i}$  in scenario  $\omega_{i}$ , with  $d_{1} < d_{2}$ . The riskless rate of return is  $r$ . By the fundamental theorem, in an arbitrage-free market, there is a probability distribution  $\pi$  on the two scenarios that determines prices by discounted expectation, and so, in particular,

$$
S _{0} = \pi \left(\omega_{1}\right) e ^{- r} d _{1} + \pi \left(\omega_{2}\right) e ^{- r} d _{2}. \tag {15}
$$

Thus, the share price of STOCK at time zero must satisfy inequalities (3). Moreover, because there are only two market scenarios, equation (15) uniquely determines the equilibrium measure  $\pi$ :

$$
\pi \left(\omega_{1}\right) = \left(d _{2} - S _{0} e ^{r}\right) / \left(d _{2} - d _{1}\right), \tag {16}
$$

$$
\pi \left(\omega_{2}\right) = \left(S _{0} e ^{r} - d _{1}\right) / \left(d _{2} - d _{1}\right). \tag {17}
$$

Finally, if the call option is to be freely traded, and if the market is to remain arbitrage-free, then its value at time  $t = 0$  is also determined by discounted expectation. Since there is only one possible equilibrium measure, as in the last displayed equations, the value of the call at time  $t = 0$  is

$$
V _{0} = \pi \left(\omega_{2}\right) \left(d _{2} - K\right), \tag {18}
$$

which agrees with the pricing formula (4).

Three-Scenario Market: Consider now the pricing of the call option with strike  $K$  in the three-scenario market discussed earlier. Assume that inequalities (5) hold; then if the market is arbitrage-free, the  $t = 0$  price of STOCK must satisfy inequality (6), by the Fundamental Theorem (EXERCISE!). If the only freely traded assets in the market were STOCK and MONEYMARKET, then the pricing formulas (13) would not uniquely determine the equilibrium distribution  $\pi$ , because formulas (13) provide only two equations in three unknowns. Thus, any probability distribution  $(\pi_1, \pi_2, \pi_3)$  on the three scenarios such that  $S_0 e^r = d_1 \pi_1 + d_2 \pi_2 + d_3 \pi_3$  would be allowable as an equilibrium measure. Call the set of all such probability distributions  $\mathcal{A}$ . Then any element  $\pi \in \mathcal{A}$  such that equation (7) holds would be an equilibrium measure for the enlarged market in which the freely traded assets are STOCK, MONEYMARKET, and CALL, where CALL is the call option on STOCK with strike  $K$ , provided the  $t = 0$  price of CALL is given by (7). By the Fundamental Theorem, any such market is arbitrage-free.

This proves Proposition 3.

# 5. HEDGING

Replicating Portfolios: Consider a market in which there are freely traded assets  $B$  and  $A^1, A^2, \ldots, A^K$ . Denote the share prices of assets  $A^j$  and  $B$  at time  $t$  in market scenario  $\omega_i$  by  $S_t^j(\omega_i)$  and  $S_t^B(\omega_i)$ . Say that a portfolio  $\theta = (\theta_1, \dots, \theta_K)$  in the assets  $A^1, A^2, \ldots, A^K$  is a replicating portfolio for the asset  $B$  if

$$
S _{1} ^{B} \left(\omega_{i}\right) = \sum_{j = 1} ^{K} \theta_{j} S _{1} ^{j} \left(\omega_{i}\right) \quad \forall i = 1, 2 \dots , N. \tag {19}
$$

Proposition 4. Suppose that  $\theta = (\theta_{1},\dots \theta_{K})$  is a replicating portfolio for asset  $B$  in the assets  $A^1,A^2,\ldots ,A^K$ . If the market is arbitrage-free, then the  $t = 0$  share values of the assets are related by

$$
S _{0} ^{B} = \sum_{j = 1} ^{K} \theta_{j} S _{0} ^{j}. \tag {20}
$$

Proof. Suppose to the contrary that  $S_0^B \neq \sum \theta_j S_0^j$ . There are two possibilities:  $<$  or  $>$ . Consider the possibility  $S_0^B < \sum \theta_j S_0^j$ . Then the portfolio  $\theta_* = (1, -\theta_1, -\theta_2, \ldots, -\theta_K)$  in the assets  $B, A^1, A^2, \ldots, A^K$  is an arbitrage, because at  $t = 0$  its value is

$$
S _{0} ^{B} - \sum_{j = 1} ^{K} \theta_{j} S _{0} ^{j} <   0
$$

but its value at  $t = 1$  in market scenario  $\omega_{i}$  is

$$
S _{1} ^{B} (\omega_{i}) - \sum_{j = 1} ^{K} \theta_{j} S _{1} ^{j} (\omega_{i}) = 0,
$$

this last by the assumption that  $\theta$  is a replicating portfolio for asset  $B$ . Similarly, if it were the case that  $S_0^B > \sum \theta_j S_0^j$ , then the portfolio  $\theta^* = (-1, +\theta_1, +\theta_2, \ldots, +\theta_K)$  in the assets  $B, A^1, A^2, \ldots, A^K$  would be an arbitrage.

REMARK. We could also have proved the proposition, even more easily, using the Fundamental Theorem. However, the arbitrage proof is preferable, because it applies in greater generality, including markets where the set of possible market scenarios is infinite (and where the Fundamental Theorem may not apply). In particular, all that the argument requires is that equation (20) should hold for all market scenarios  $\omega_{j}$ .

The importance of replicating portfolios is that they enable financial institutions that sell asset  $B$  (for example, call options) to hedge: For each share of asset  $B$  sold, buy  $\theta_{j}$  shares of asset  $A^{j}$  and hold them to time  $t = 1$ . Then at time  $t = 1$ , net gain  $=$  net loss  $= 0$ . The financial institution selling asset  $B$  makes its money (usually) by charging the buyer a transaction fee or premium at time  $t = 0$ .

# 6. COMPLETENESS OF MARKETS

We have seen that, in some circumstances, an arbitrage-free market may admit more than one equilibrium measure. Economists call such markets incomplete; by contrast, a complete market is one that has a unique equilibrium measure.

Suppose that the freely traded assets in a market  $\mathcal{M}$  are  $A^1, A^2, \ldots, A^K$ . Define a derivative security to be a tradeable asset (such as an option on one of the assets  $A^i$ , but perhaps not listed among the  $K$  assets traded in the market) whose value  $V_1$  at time  $t = 1$  is a function  $V_1(\omega_i)$  of the market scenario. (In the language of probability theory, the derivative securities are just random variables, as a random variable is defined to be a function of the outcome  $\omega_i$ .)

Theorem 2. (Completeness Theorem) Let  $\mathcal{M}$  be an arbitrage-free market with a riskless asset. If for every derivative security there is a replicating portfolio in the assets  $A^1, A^2, \ldots, A^K$ , then the market  $\mathcal{M}$  is complete. Conversely, if the market  $\mathcal{M}$  is complete, and if the unique equilibrium measure  $\pi$  gives positive probability to every market scenario  $\omega_i$ , then for every derivative security there is a replicating portfolio in the assets  $A^1, A^2, \ldots, A^K$ .

REMARK. The set of all derivative securities is a vector space: two derivative securities may be added to get another derivative security, and a derivative security may be multiplied by a scalar. The Completeness Theorem states, in the language of linear algebra, that a market is complete if and only if the freely traded assets  $A^1, A^2, \ldots, A^K$  span the space of derivative securities. The financial importance is that, in a complete market, any derivative security may be hedged using a replicating portfolio in the assets  $A^1, A^2, \ldots, A^K$ . In an incomplete market, there are necessarily derivative securities that cannot be hedged.

The proof of the Completeness Theorem is given in section 8 below.

# 7. PROOF OF THE FUNDAMENTAL THEOREM

We must show that if the market does not admit arbitrages, then it has an equilibrium measure  $\pi$ , that is, a probability distribution  $\pi(\omega_i)$  on the set  $\Omega$  of market scenarios  $\omega_i$  such that equation (13) holds. When  $j = 1$ , this equation holds for trivial reasons: Asset 1 is the riskless asset, so its share price at time  $t = 0$  is  $S_0^1 = 1$  and its share price at time  $t = 1$ , under any scenario  $\omega_i$ , is  $e^r$ , and so, for any probability distribution  $\pi$  on the set of market scenarios,

$$
1 = S _{0} ^{1} = e ^{- r} \sum_{i = 1} ^{N} \pi \left(\omega_{i}\right) e ^{r} = e ^{- r} \sum_{i = 1} ^{N} \pi \left(\omega_{i}\right) S _{1} ^{1} \left(\omega_{i}\right). \tag {21}
$$

Thus, what we must show is that, in the absence of arbitrages, there is a probability distribution  $\pi$  such that  $(\ref{eq:1})$  holds for  $2 \leq j \leq K$ .

Consider the set  $\mathcal{E}$  of all vectors that can be obtained from the discounted share prices by averaging against some probability distribution on  $\Omega$ , that is,  $\mathcal{E}$  is the set of all vectors  $y = (y_{2}, y_{3}, \ldots, y_{K})$  such that, for some probability distribution  $\pi$  on  $\Omega$ ,

$$
y _{j} = e ^{- r} \sum_{i = 1} ^{N} \pi \left(\omega_{i}\right) S _{1} ^{j} \left(\omega_{i}\right) \quad \forall j = 2, 3, \dots , K. \tag {22}
$$

The set  $\mathcal{E}$  is a bounded, closed, convex polytope in  $\mathbb{R}^{K-1}$ . (It might be helpful to sketch the set  $\mathcal{E}$  in the case  $d = 3$  when there are 3 or 4 market scenarios. In general, if there are  $N$  market scenarios, the polytope  $\mathcal{E}$  will have  $N$  extreme points [corners]; the extreme point corresponding to market scenario  $\omega_{i}$  is the vector of discounted prices  $D_{ij}^{*}$ .) We may now restate our objective in terms of the set  $\mathcal{E}$ : we must show that, in the absence of arbitrages, the  $t = 0$  price vector  $\mathbf{S} = (S_0^2, S_0^3, \ldots, S_0^K)$  is contained in  $\mathcal{E}$ . Equivalently, we must show that if  $\mathbf{S} \notin \mathcal{E}$  then there would be an arbitrage. This we shall accomplish by a geometric argument, using the following lemma.

Lemma 1. Let  $F$  be a closed, bounded, convex subset of  $\mathbb{R}^m$  and let  $x$  be a point in  $\mathbb{R}^m$  that is not an element of  $F$ . Then there is a nonzero vector  $v \in \mathbb{R}^k$  such that

$$
v \cdot x <   v \cdot y \quad \forall y \in F, \tag {23}
$$

where  $v \cdot w$  is the dot product of  $v$  with  $w$ .

Proof. There is no loss of generality in assuming that  $x = 0$  (the origin in  $\mathbb{R}^k$ ) because the truth of the inequality (23) will not be affected by a translation of the whole space. (EXERCISE: Verify this.) Let  $v \in F$  be the element of  $F$  closest to the origin 0. Because  $F$  is closed and bounded, such a point exists; because  $F$  is convex, it is unique; and because  $0 \notin F$ , the vector  $v$  cannot be the zero vector. We shall argue that for this vector  $v$ , inequality (23) must hold for all elements  $y \in F$ . Since  $x = 0$ , this is equivalent to showing that  $v \cdot y > 0$  for all elements  $y \in F$ .

Because the dot product is unchanged by rotations of  $\mathbb{R}^k$  about the origin, we may assume without loss of generality that the vector  $v$  lies on the first coordinate axis, that is, that

$$
v = (a, 0, 0, \dots , 0) \qquad \text{fo rs om e} a > 0.
$$

Thus, to prove that  $v \cdot y > 0$  for all elements  $y \in F$ , it suffices to show that there is no  $y \in F$  whose first coordinate is nonpositive. Here we shall use the convexity of  $F$ . If there were a point  $y \in F$  with nonpositive first coordinate, then the line segment  $L$  with endpoints  $v$  and  $y$  would be entirely contained in  $F$ . Because this line segment must cross the hyperplane consisting of points with first coordinate 0, we may suppose that  $y$  has the form

$$
y = (0, y _{2}, y _{3}, \ldots , y _{k}),
$$

and so  $L$  consists of all points of the form  $y(\epsilon) \coloneqq ((1 - \epsilon)a, \epsilon y_2, \epsilon y_3, \ldots, \epsilon y_k)$ , where  $0 \leq \epsilon \leq 1$ . Now the closest point to the origin on  $L$  should be  $v$ . However, a simple calculation (do it!) shows that for all sufficiently small  $\epsilon > 0$  the point  $y(\epsilon)$  is actually closer to the origin than  $v$ , a contradiction.

Note: A variation of this argument shows that the hypothesis that  $F$  is bounded is extraneous. This fact is called the Separating Hyperplane Theorem. We shall not prove it, as we will have no further need of it.

Proof of the Fundamental Theorem. We must show that if the time-zero price vector  $\mathbf{S}$  is not an element of  $\mathcal{E}$ , then there is an arbitrage. Suppose, then, that  $\mathbf{S} \notin \mathcal{E}$ . Since  $\mathcal{E}$  is a closed, bounded, convex set, the Separating Hyperplane Theorem implies that there is a nonzero vector

$$
\theta^{*} = \left(\theta_{2}, \theta_{3}, \dots , \theta_{K}\right) \tag {24}
$$

such that for any element  $y \in \mathcal{E}$ , the dot product of  $y$  with  $\theta^{*}$  is strictly greater than the dot product of  $\mathbf{S}$  with  $\theta^{*}$ . Because  $\mathcal{E}$  includes its extreme points, that is, those points of the form (22) where the probability distribution  $\pi$  puts all its mass on a single scenario  $\omega_{i}$ , it follows that, for each scenario  $\omega_{i}$ ,

$$
e ^{- r} \sum_{j = 2} ^{K} \theta_{j} S _{1} ^{j} \left(\omega_{i}\right) > \sum_{j = 2} ^{K} \theta_{j} S _{0} ^{j}. \tag {25}
$$

Choose a real number  $-\theta_{1}$  that lies between these two values; adding  $\theta_{1}$  to both sides of the inequality (25) shows that for every market scenario  $\omega_{i}$ ,

$$
e ^{- r} \sum_{j = 1} ^{K} \theta_{j} S _{1} ^{j} \left(\omega_{i}\right) > 0 > \sum_{j = 1} ^{K} \theta_{j} S _{0} ^{j}. \tag {26}
$$

This implies that the portfolio  $\theta = (\theta_{1},\theta_{2},\dots,\theta_{K})$  is an arbitrage.

# 8. PROOF OF THE COMPLETENESS THEOREM

(A) Suppose that for every derivative security there is a replicating portfolio in the assets  $A^1, \ldots, A^K$ . We must show that the equilibrium measure is uniquely determined. Fix a particular market scenario  $\omega_{i*}$ , and consider the derivative security  $\mathcal{D}_{i*}$  whose value  $V_1(\omega_i)$  at  $t = 1$  in market scenario  $\omega_i$  is given by

$$
V _{1} \left(\omega_{i}\right) = 1 \quad \text{if } \quad i = i ^{*} \tag {27}
$$

$$
V _{1} (\omega_{i}) = 0 \qquad \text{if } \qquad i \neq i ^{*}
$$

By hypothesis, there is a replicating portfolio  $\theta = (\theta_{1},\theta_{2},\dots,\theta_{K})$  in the assets  $A^1,\ldots ,A^K$  for the derivative security  $\mathcal{D}_{i^{*}}$ . By Proposition 4, the  $t = 0$  share price of  $\mathcal{D}_{i^*}$  must be

$$
V _{0} = \sum_{j = 1} ^{K} \theta_{j} A _{0} ^{j}.
$$

If  $\pi$  is an equilibrium measure, then by definition the time-zero price of any security must be the discounted expectation, under  $\pi$ , of its time-one value. Thus, in particular, the time-zero value of  $\mathcal{D}_{j^*}$  must be

$$
V _{0} = e ^{- r} \sum_{i = 1} ^{N} V _{1} (\omega_{i}) \pi (\omega_{i}) = e ^{- r} \pi (\omega_{i *}),
$$

where  $r$  is the riskless rate of return. Therefore, the only possible equilibrium probability for scenario  $\omega_{i^*}$  is

$$
\pi \left(\omega_{i ^{*}}\right) = e ^{r} \sum_{j = 1} ^{K} \theta_{j} A _{0} ^{j}. \tag {28}
$$

(B) Now suppose that the equilibrium measure  $\pi(\omega_i)$  is unique, and that  $\pi(\omega_i) > 0$  for every market scenario  $\omega_i$ . We must show that every derivative security has a replicating portfolio in the assets  $A^1, \ldots, A^K$ . Suppose, to the contrary, that for some derivative security  $\mathcal{D}$  there is no replicating portfolio; we will obtain a contradiction by showing that there is an equilibrium measure different from  $\pi$ . Denote by  $f(\omega_i) = f_i$  the value of  $\mathcal{D}$  in market scenario  $\omega_i$ , and set

$$
\mathbf {f} = \left(f \left(\omega_{1}\right), f \left(\omega_{2}\right), \dots , f \left(\omega_{N}\right)\right), \tag {29}
$$

$$
\mathbf {a} ^{j} = \left(S _{1} ^{j} \left(\omega^{1}\right), S _{1} ^{j} \left(\omega_{2}\right), \dots , S _{1} ^{j} \left(\omega_{N}\right)\right), \tag {30}
$$

where  $S_{t}^{j}(\omega_{i})$  denotes the share price of asset  $A^j$  at time  $t$  in scenario  $\omega_{i}$ . Since, by hypothesis, there is no replicating portfolio for the security  $\mathcal{D}$  in the assets  $A^j$ , the vector  $\mathbf{f}$  is not a linear

combination of the vectors  $\mathbf{a}^j$ . Hence, the vectors  $\mathbf{a}^j$  do not span the vector space  $\mathbb{R}^N$ , and so there is a nonzero vector  $\mathbf{v} = (v(\omega_1), v(\omega_2), \ldots, v(\omega_N))$  that is orthogonal to every  $\mathbf{a}^j$ , that is,

$$
\sum_{i = 1} ^{N} v \left(\omega_{i}\right) S _{1} ^{j} \left(\omega_{i}\right) = 0 \quad \forall j = 1, 2, \dots , K. \tag {31}
$$

Recall that asset  $A^1$  is riskless, and so its value  $A_1^1(\omega_i) = e^r$  at time  $t = 1$  is the same in all market scenarios  $\omega_i$ . Thus, (31) implies that the vector  $\mathbf{v}$  is orthogonal to a scalar multiple  $e^r$  of the vector  $(1, 1, \ldots, 1)$ . It follows that

$$
\sum_{i = 1} ^{N} v \left(\omega_{i}\right) = 0. \tag {32}
$$

Now let  $\varepsilon > 0$  be a very small number, and consider the assignment

$$
\pi^{*} (\omega_{i}) = \pi (\omega_{i}) + \varepsilon v (\omega_{i}). \tag {33}
$$

Since the sum of the values  $\pi (\omega_i)$  is 1, so is the sum of the values  $\pi^{*}(\omega_{i})$ , by (32). Moreover, if  $\varepsilon >0$  is sufficiently small, then  $\pi^{*}(\omega_{i}) > 0$  for each  $i$  because, by hypothesis, each  $\pi (\omega_i) > 0$ . Consequently,  $\pi^{*}$  is a probability distribution on the set  $\Omega$  of market scenarios  $\omega_{i}$ . Now by the orthogonality relation (31),

$$
(3 4) \qquad \qquad \sum_{i = 1} ^{N} \pi^{*} (\omega_{i}) S ^{j} (\omega_{i}) = \sum_{i = 1} ^{N} \pi (\omega_{i}) S ^{j} (\omega_{i}) \qquad \forall j = 1, 2, \dots , K.
$$

But this implies that  $\pi^{*}$  is another equilibrium measure! This is a contradiction, and so our hypothesis that there is a derivative security with no replicating portfolio must be false.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e607bf8b-adbd-4429-b019-7daf8f2ae768/e79356c1b8b5b2f7d88df9752490683a56bd1b63361a274d04f68839f9923ca6.jpg)

# 9. PROBLEMS

In the following problems, all markets are assumed to be arbitrage-free, and to contain a riskless asset (called MONEYMARKET), with riskless rate of return  $r$ .

1. Forwards Contracts: Use the Fundamental Theorem to give another derivation of the formula obtained in class for the forward price of an asset STOCK, assuming that there is a riskless asset MONEYMARKET. Here is an outline:

(a) Let  $S_0$  and  $S_1$  denote the price of the STOCK at the initial and terminal times. Note that  $S_1$  is subject to uncertainty, that is, it is a function of the market scenario. Let  $r$  be the rate of return on the riskless asset MONEYMARKET, so that  $S_0^B = 1$  and  $S_1^B = e^r$  are the initial and terminal values of one share of MONEYMARKET. Explain why, if  $F$  is the forward price of the stock, then

$$
E _{Q} S _{1} = F, \tag {35}
$$

where  $Q$  is any equilibrium (risk-neutral) measure.

(b) Show that  $E_{Q}S_{1} = e^{r}S_{0}$ , and conclude that  $F = e^{r}S_{0}$ .

2. A Swap Contract: The contract calls for the following:

(a) The buyer  $X$  pays the seller  $Y$  an amount  $q$  to enter into the contract at time 0.

(b) The seller agrees to exchange 1 unit of asset  $A$  for 1 unit of asset  $B$  at time 1.

The share prices of assets  $A$  and  $B$  at times  $t = 0$  and  $t = 1$  are  $S_{t}^{A}$  and  $S_{t}^{B}$ , respectively. As in all such problems, the values  $S_{1}^{A}$  and  $S_{1}^{B}$  of the underlying assets at the termination time  $t = 1$  are subject to uncertainty. Assume that there is a riskless asset MONEYMARKET with rate of return  $r$ , as in Problem 1. Determine the fair market value  $q$  of the contract in two ways:

(a) by an arbitrage argument; and  
(b) using the Fundamental Theorem.

3. Put Options: A (European) put on an asset STOCK is a contract that gives the owner the right to sell 1 share of STOCK at time  $t = 1$  for an amount  $K$  fixed at time  $t = 0$  (called the strike). Consider a two-scenario market in which the share values of STOCK at time  $t = 1$  in the two scenarios  $\omega_{1}, \omega_{2}$  are  $d_{1} < d_{2}$ . Let  $S_{0}$  be the share price of STOCK at  $t = 0$  and  $r$  be the riskless rate of return.

(a) Find a formula for the market price of a put with strike  $K$  in terms of  $S_0, r, d_1, d_2$ .  
(b) Find a replicating portfolio for the put in the assets MONEYMARKET and STOCK.

4. An Incomplete Market: Consider a market with two freely traded assets, MONEYMARKET and STOCK, and three scenarios  $\omega_{1},\omega_{2},\omega_{3}$ . Assume that the  $t = 1$  share price of STOCK in scenario  $\omega_{i}$  is  $d_{i}$ , and that  $d_{1} < d_{2} < d_{3}$ . Let  $r$  be the riskless rate of return, and  $S_{0}$  the share price of STOCK at  $t = 0$ .

(a) Show that this market is incomplete.  
(b) Exhibit a derivative security for which there is no replicating portfolio in the assets MON-EYMARKET and STOCK.  
(c) Show that the  $t = 0$  market price of the derivative security you found in part (b) is not uniquely determined. (That is, show that there are equilibrium measures for the market that give different prices for the derivative security.)  
(d) Show that the set of possible market prices of the derivative security in (b) is an interval of real numbers.

Markets with Infinitely Many Scenarios. (Optional) Does the Fundamental Theorem of Arbitrage Pricing remain valid when the set of scenarios is infinite? Unfortunately, there is no easy answer. The next three problems show (a) that there are infinite arbitrage-free markets with no equilibrium measures, but (b) that under certain additional hypotheses, absence of arbitrage does imply the existence of an equilibrium measure.

Let  $\mathcal{M}$  be a (one-period) market with  $K < \infty$  traded assets but infinitely many market scenarios. Denote by  $\Omega$  the set of market scenarios; assume that  $\Omega$  is equipped with a  $\sigma$ -algebra  $\mathcal{F}$  of events, and that the time  $t = 1$  prices of the various assets are  $\mathcal{F}$ -measurable functions (that is, they are random variables). Let  $\mathcal{P}$  be the set of all probability measures  $P$  on  $(\Omega, \mathcal{F})$ , and define  $\mathcal{E}$  to be the set of all expected discounted share price vectors under measures  $P \in \mathcal{P}$ .

5. Show that  $\mathcal{E}$  is a convex subset of  $\mathbb{R}^K$ .
6. Show that if  $\mathcal{E}$  is a closed subset of  $\mathbb{R}^K$ , then the Fundamental Theorem is valid: If there are no arbitrages, then there exists an equilibrium measure  $P \in \mathcal{P}$ , that is a probability measure  $P$  such that the time  $t = 0$  share prices are the expected (under  $P$ ) values of the discounted  $t = 1$  share prices.

HINT: Mimic the proof given in the lecture notes for the case of finite-scenario markets. You will need to show that if  $\mathcal{E}$  is closed, then for any vector  $\mathbf{S} \notin \mathcal{E}$ , there is a point in  $\mathcal{E}$  closest to  $\mathbf{S}$ .

7. Consider a market with 3 traded assets  $A^1, A^2$ , and  $B$ , where  $B$  is riskless, with rate of return 0. Let

$$
\Omega = \left\{\left(a _{1}, a _{2}\right): a _{1} > 0, a _{2} > 0, \text{an d} a _{1} + a _{2} > 1 \right\} \cup \{(0, 1) \};
$$

$$
S _{1} ^{1} \left(\left(a _{1}, a _{2}\right) = a _{1} \text{an d} S _{0} ^{1} = 0; \right.
$$

$$
S _{1} ^{2} \left(\left(a _{1}, a _{2}\right)\right) = a _{2} \text{an d} S _{0} ^{2} = 2.
$$

(a) Prove that  $\mathcal{E} = \Omega$  
(b) Prove that there are no arbitrages.  
(c) Prove that there is no equilibrium measure.

# LECTURE 2: MULTIPERIOD MODELS AND TREES

# 1. INTRODUCTION

One-period models, which were the subject of Lecture 1, are of limited usefulness in the pricing and hedging of derivative securities. In real-world markets, trading takes place in continuous time; moreover, perfect hedging of many derivative securities requires continuous rebalancing of portfolios, as we shall see. Nevertheless, useful numerical approximations can often be gotten by using discrete multiperiod models with a large number of very short periods.

# 2. PRINCIPLE OF NUMERAIRE INVARIANCE

The existence of an equilibrium measure was established in Lecture 1 under the hypothesis that the market contains a riskless asset, that is, an asset whose share price at market termination  $t = 1$  is the same under all market scenarios  $\omega$ . But in fact the existence of a riskless asset is a stronger hypothesis than is necessary – the Fundamental Theorem remains true under the following much weaker hypothesis:

Hypothesis 1. There is an asset whose share price at market termination  $t = 1$  is strictly positive under all market scenarios.

That the Fundamental Theorem remains true under this hypothesis is a consequence of the principle of numeraire invariance. This simple principle is also a surprisingly useful device for simplifying many arbitrage pricing problems. In rough terms, it says that it doesn't matter what "currency" is used for measuring prices. Here "currency" needn't be money - shares of any freely traded asset whose share price remains strictly positive in all market scenarios may be used as the "numeraire".

There are a number of ways to formulate the principle of numeraire invariance mathematically. For a one-period market with finitely many market scenarios, the most basic formulation is as follows. Let  $\Omega$  be a finite set of possible market scenarios  $\omega$ , and let  $A^1, A^2, \ldots, A^K$  be assets. Consider two markets,  $\mathcal{M}_1$  and  $\mathcal{M}_2$  both with  $\Omega$  as the set of possible scenarios and both with  $A^1, A^2, \ldots, A^K$  as the set of freely traded assets. In market  $\mathcal{M}_1$ , the share price of asset  $A^j$  is  $S_0^j$  at  $t = 0$  and, in scenario  $\omega$ , is  $S_1^j(\omega)$  at  $t = 1$ . In market  $\mathcal{M}_2$ , the corresponding prices are  $\tilde{S}_0^j$  and  $\tilde{S}_1^j(\omega)$ , where

$$
\tilde {S} _{0} ^{j} = S _{0} ^{j} / S _{0} ^{1} \quad \text{an d} \quad \tilde {S} _{1} ^{j} (\omega) = S _{1} ^{j} (\omega) / S _{1} ^{1} (\omega). \tag {1}
$$

Thus, share prices in market  $\mathcal{M}_2$  are quoted in shares of  $A^1$ . Observe that in market  $\mathcal{M}_2$ , asset  $A^1$  is riskless, with rate of return 0, provided that its share price in market  $\mathcal{M}_1$  remains positive under every market scenario.

Proposition 1. Assume that  $S_0^1 > 0$  and that  $S_1^1(\omega) > 0$  for all market scenarios  $\omega \in \Omega$ . Then there is no arbitrage in market  $\mathcal{M}_1$  if and only if there is no arbitrage in market  $\mathcal{M}_2$ .

PROOF. Homework.

It is not assumed that there is a riskless asset in market  $\mathcal{M}_1$ ; it is only assumed that there is an asset whose share price remains strictly positive in all scenarios. Proposition 1 implies that,

if market  $\mathcal{M}_1$  is arbitrage-free, then market  $\mathcal{M}_2$  has an equilibrium distribution  $\tilde{\pi}$ , since it has a riskless asset. In particular, time  $t = 0$  share prices in market  $\mathcal{M}_2$  are given by expectation:

$$
\tilde {S} _{0} ^{j} = \sum_{\omega \in \Omega} \tilde {\pi} (\omega) \tilde {S} _{1} ^{j} \quad \Longrightarrow \tag {2}
$$

$$
S _{0} ^{j} = S _{0} ^{1} \sum_{\omega \in \Omega} \tilde {\pi} (\omega) \tilde {S} _{1} ^{j} \tag {3}
$$

Equation (3) is the Principle of Numeraire Invariance. It asserts that one may compute the share price in a given numeraire by computing the risk-neutral expectation in another numeraire and then converting back to the original numeraire at the prevailing rate of exchange. Notice that the fraction  $S_0^1 / S_1^1(\omega)$  acts as a kind of generalized discount factor. (In the finance and economics literature, generalized discount factors of this sort are sometimes called deflators.) Factoring it out of each term leads to the following equivalent formula:

$$
\boxed {S _{0} ^{j} = \delta \sum_{\omega \in \Omega} \pi (\omega) S _{1} ^{j} (\omega)} \tag {4}
$$

where

$$
\pi (\omega) = \tilde {\pi} (\omega) \left(\frac{S _{0} ^{1}}{S _{1} ^{1} (\omega)}\right) / \delta \quad \text{an d} \tag {5}
$$

$$
\delta = \sum_{\omega \in \Omega} \tilde {\pi} (\omega) \left(\frac{S _{0} ^{1}}{S _{1} ^{1} (\omega)}\right). \tag {6}
$$

Thus, there is an "equilibrium distribution"  $\pi$  for market  $\mathcal{M}_1$ , and it is related to the equilibrium distribution  $\tilde{\pi}$  for market  $\mathcal{M}_2$  by formula (5). It is important to note that the probability distributions  $\pi$  and  $\tilde{\pi}$  are not, in general, the same - in fact,  $\pi = \tilde{\pi}$  if and only if the asset  $A^1$ , which is riskless in market  $\mathcal{M}_2$ , is also riskless in  $\mathcal{M}_1$ . This is somewhat counterintuitive: the markets  $\mathcal{M}_1$  and  $\mathcal{M}_2$  are, in a sense, "equivalent", the only difference being the "un its" in which prices are quoted, but the probabilities assigned to the various scenarios are different. This fact has interesting ramifications in problems where two different currencies (e.g., the dollar and the yen) are involved.

For the remainder of this lecture, we shall use the principle of numeraire invariance as an excuse to restrict our attention to markets that have a riskless asset with rate of return  $r = 0$ . This leads to more compact pricing formulas, and also allows some simplification of arguments. (Note, however, that we have only established the principle for single-period markets.)

# 3. MULTIPERIOD MODELS

Consider now a market with finitely many traded assets  $A^1, A^2, \ldots, A^K$ , where asset  $A^1$  is riskless, with constant share price 1, but assets  $A^2, \ldots, A^K$  are risky. These assets may be freely bought and sold at times  $t = 0, 1, 2, \ldots, T$ ; their prices at time  $t$  are denoted by  $A_t^j$ , respectively. Except for time  $t = 0$ , the prices of  $A^2, \ldots, A^K$  are subject to uncertainty, and therefore must be treated as functions of the market scenario  $\omega \in \Omega$ . As in Lecture 1, we shall assume that the set  $\Omega$  of possible market scenarios is finite.

The Space of Market Scenarios as a Tree. In a multiperiod market, the market scenario reveals itself in stages: first, one sees what happens to prices in period 1, then what happens in period 2, and so on, until finally at time  $t = T$  the complete market scenario is apparent. At time  $t = 1$ , one generally will know more about what will be the final state of affairs at  $t = T$  than one

did at  $t = 0$ , and at time  $t = 2$  one will know still more, but, generally, one will not know with certainty the prices of all assets at all times  $0 \leq t \leq T$  until  $t = T$ .

The set of market scenarios may be visualised as a tree of depth  $T$ . The various events that might occur in period 1 are represented by branches emanating from a root node. For each of these branches  $\beta$ , the various events that might occur in the market in period 2, given that  $\beta$  occurred in period 1, may be represented by more branches emanating from the end of  $\beta$ , and so on. At the end of each branch, we place a vertex (also called a node); the nodes of the tree (or alternatively the unique downward paths from the root to the nodes) represent partial, or incomplete scenarios. The terminal nodes – those at depth  $T$  – represent the different possible market scenarios. Thus, the set  $\Omega$  of all possible market scenarios is just the set of all terminal nodes. Since there is a one-to-one correspondence between the set of terminal nodes and the set of downward paths from the root to terminal nodes, we may also visualize  $\Omega$  as the set of all such downward paths.

In most uses of multiperiod models in derivative security pricing, the branches are used to represent the different possible price vectors of the traded assets  $A^j$  at the end of the next trading period. For instance, if there is only one risky asset STOCK, then at each node  $\nu$  of the tree there is one branch emanating from  $\nu$  for each possible share price of STOCK at the next trading time  $t$ . See section 4 below for a simple, concrete example.

Trading Strategies and Arbitrages. A pure trading strategy in the assets  $A^1, A^2, \ldots, A^K$  is a rule (function)  $\phi$  that assigns to each nonterminal node of the tree  $\Omega$  an asset  $A^j$ . The value  $\phi(t) = \phi(t; \omega)$  determines which of the assets one will hold during the time period from  $t$  to  $t + 1$ . The strategy is called pure because it requires the trader using it to put his/her entire fortune into a single asset  $A^j$  at each time  $t$ . Observe that the number of pure trading strategies is  $K^M$ , where  $M$  is the number of nonterminal nodes of the tree. The share price of a pure trading strategy  $\phi$  at time  $t$  under scenario  $\omega$  is defined inductively as follows:

$$
V _{0} ^{\phi} (\omega) = 1; \tag {7}
$$

$$
V _{t + 1} ^{\phi} (\omega) = V _{t} ^{\phi} (\omega) \left(\frac{S _{t + 1} ^{\phi (t)} (\omega)}{S _{t} ^{\phi (t)} (\omega)}\right);
$$

thus, the share price at time  $t + 1$  is the share price at time  $t$  multiplied by the one-period return on the asset  $A^{\phi(t)}$  that the trading strategy holds between times  $t$  and  $t + 1$ .

A mixed trading strategy is defined to be a convex combination of the pure trading strategies, that is, if  $S$  denotes the set of pure trading strategies, then a mixed trading strategy is a formal sum

$$
\theta = \sum_{\phi \in \mathcal {S}} \theta_{\phi} \phi \tag {8}
$$

where  $\{\theta_{\phi} : \phi \in S\}$  is a probability distribution on the set  $S$  of pure strategies. One should interpret the expression (8) as a "hedged bet", requiring an investor following the strategy  $\theta$  to partition his/her fortune at time zero, for each  $\phi \in S$  investing a fraction  $\theta_{\phi}$  according to the rule  $\phi$ . The share price of the strategy  $\theta$  defined by (8) at any time  $t$ , under any market scenario  $\omega$ , is just the convex combination

$$
V _{t} (\omega) = V _{t} ^{\theta} (\omega) = \sum_{\phi \in \mathcal {S}} \theta_{\phi} V _{t} ^{\phi} (\omega)
$$

of the share prices  $V_{t}^{\phi}(\omega)$  of the pure strategies  $\phi \in S$ . More generally, a self-financing portfolio is defined to be an arbitrary linear combination of the pure strategies  $\phi \in S$ ; that is, an expression of

the form (8), but where the coefficients  $\theta_{\phi}$  are allowed to take any real values, positive or negative, and do not necessarily sum to 1. The interpretation of the formal expression (8) in this case is as follows: For each pure strategy  $\phi$ , an amount  $\theta_{\phi}$  is invested in strategy  $\phi$  at time  $t = 0$ , if  $\theta_{\phi} > 0$ ; and if  $\theta_{\phi} < 0$ , a short position of size  $-\theta_{\phi}$  is taken against strategy  $\phi$  at time  $t = 0$ . The value of the self-financing portfolio  $\theta$  given by (8) at time  $t$ , under scenario  $\omega$ , is again defined by equation (9). Finally, a self-financing portfolio is called an arbitrage if its initial value is zero, but its terminal value is positive in every scenario.

Representation by a Single-Period Market. Every multiperiod market  $\mathcal{M}$  has a "representation" by a single-period market  $\mathcal{M}'$ , in which the set  $\Omega$  of possible market scenarios is the same as for  $\mathcal{M}$ , but in which the set of assets is enlarged to include the set  $\mathcal{S}$  of all pure trading strategies in the multiperiod market. This representation is not especially useful in computing prices or hedging, but is useful for theoretical purposes: it allows theoretical results about one-period markets, such as the Fundamental Theorem, to be transported to the multiperiod setting without additional effort. Observe that a self-financing portfolio in the multiperiod market  $\mathcal{M}$  is nothing more than a portfolio (as defined in Lecture 1) in the "assets"  $\phi \in \mathcal{S}$  of the single-period market  $\mathcal{M}'$ , and so an arbitrage in the multiperiod market  $\mathcal{M}$  is the same as an arbitrage in the single-period market  $\mathcal{M}'$ . Consequently, the Fundamental Theorem of Arbitrage Pricing for one-period markets implies the following:

Theorem 1. (Fundamental Theorem for Multiperiod Markets) The multiperiod market  $\mathcal{M}$  is arbitrage-free if and only if it has an equilibrium distribution  $\pi$ .

# 4. EXAMPLE: THE TWO-PERIOD BINARY MARKET

Let's consider the simplest multiperiod market  $\mathcal{M}$ , in which there is just a single risky asset STOCK, two trading periods, and 4 market scenarios, labelled

$$
+ +, + -, - +, - -.
$$

The set  $\Omega$  of market scenarios may be visualised as a binary tree of depth 2. (Draw a picture!) The market scenarios  $\omega$  are the sequences  $\omega_{1}\omega_{2}$  of length 2 with each entry  $\omega_{i}$  either  $a+$  or  $a-$ . The dependence of the stock price  $S_{t}$  on the market scenario  $\omega = \omega_{1}\omega_{2}$  is as follows:

(10)  $S_{1}(\omega) = S_{1}(\omega_{1}),$

(11)  $S_{2}(\omega) = S_{2}(\omega_{1}\omega_{2}),$

that is, the price at time  $t = 1$  depends only on the component  $\omega_{1}$  of the market scenario  $\omega$  that is known by time  $t = 1$ , while the price at time  $t = 2$  depends on the entire market scenario  $\omega = \omega_{1}\omega_{2}$ . The share price of the riskless asset BOND is 1 at any time  $t = 0,1,2$ , under any market scenario. We shall assume that the labelling of market scenarios is done in such a way that + implies an increase, and - a decrease, in the share price of STOCK; thus, for any sequence  $w$  of length  $t\geq 0$  with entries + and -,

(12)  $S_{1}(-) <   S_{0} <   S_{1}(+)$

$S_{2}(- - ) <   S_{1}(-) <   S_{2}(- + ),$  and

$S_{2}(+ - ) <   S_{1}(+) <   S_{2}(++)$

The Single-Period Representation. The binary tree representing  $\Omega$  has three nonterminal nodes, one at depth 0 (the root) and two at depth 1. Label these nodes  $0, +, -$ . The set of pure

trading strategies has  $2^{3} = 8$  elements, one for each possible assignment of assets (BOND or STOCK) to nonterminal nodes. Consider the following example:

$$
\phi (0) = \mathrm{ST OC K}
$$

$$
\phi (+) = \mathrm{ST OC K}
$$

$$
\phi (-) = \mathrm{BO ND}
$$

Denote by  $V_{T}(\phi, \omega)$  the share price of  $\phi$  at the terminal time. This share price is gotten by tracking the value of the shares held at each time  $t = 0,1,2$  through the nodes along the scenario. One easily checks that

$$
V _{T} (\phi , + +) = S _{2} (+ +)
$$

$$
V _{T} (\phi , + -) = S _{2} (+ -)
$$

$$
V _{T} (\phi , - +) = S _{1} (-)
$$

$$
V _{T} (\phi , - -) = S _{1} (-).
$$

The single-period representation  $\mathcal{M}'$  of the 2-period market  $\mathcal{M}$  has  $2^3$  assets (the 8 different pure trading strategies) and 4 market scenarios. The terminal values of these assets are the values  $V_T(\phi, \omega)$ , computed as in the above example, and the initial values  $V_0(\phi)$  are either 1 or  $S_0$ , depending on whether  $\phi$  assigns BOND or STOCK to the root node. In the absence of arbitrage, this market has an equilibrium distribution, which, in principle, could be determined from the system of 8 equations in 4 unknowns that come from the definition of an equilibrium distribution. Fortunately, there is an easier way to find the equilibrium distribution.

The Equilibrium Distribution. The Fundamental Theorem implies that an equilibrium measure exists. To guess what it is, observe that there are 3 one-period models embedded in the two-period market, one for each nonterminal node of the tree. To each of these embedded markets, the Fundamental Theorem applies. The initial and terminal prices of the risky asset STOCK in these embedded one-period markets are as follows:

<table><tr><td>MARKET</td><td>INITIAL</td><td>TERMINAL</td></tr><tr><td>1</td><td>S0</td><td>S1(+) , S1(-)</td></tr><tr><td>2</td><td>S1(+)</td><td>S2(++), S2(++-)</td></tr><tr><td>3</td><td>S1(-)</td><td>S2(--), S2(---)</td></tr></table>

For each of these embedded markets, the equilibrium distributions is uniquely determined, by assumption (12). We saw in Lecture 1 how to determine such equilibrium distributions by solving systems of linear equations. Applying the same technique here, we find that the equilibrium distributions are

$$
\pi (+) = \left(S _{0} - S _{1} (-)\right) / \left(S _{1} (+) - S _{1} (-)\right) \tag {13}
$$

$$
\pi (-) = (S _{1} (+) - S _{0}) / (S _{1} (+) - S _{1} (-))
$$

for embedded market 1,

$$
\pi (+ | +) = \left(S _{1} (+) - S _{2} (+ -)\right) / \left(S _{2} (+ +) - S _{2} (+ -)\right) \tag {14}
$$

$$
\pi (- | +) = \left(S _{2} (+ +) - S _{1} (+)\right) / \left(S _{2} (+ +) - S _{2} (+ -)\right)
$$

for embedded market 2, and

$$
\pi (+ | -) = \left(S _{1} (-) - S _{2} (-)\right) / \left(S _{2} (- +) - S _{2} (- -)\right) \tag {15}
$$

$$
\pi (- | -) = \left(S _{2} (- +) - S _{1} (-)\right) / \left(S _{2} (- +) - S _{2} (- -)\right)
$$

for embedded market 3. (Note that there are no discount factors in these formulas, because we are using as numeraire the riskless asset, which, by assumption, has rate of return 0.)

Proposition 2. The unique equilibrium distribution for the 2-period market is

$$
\pi (+ +) = \pi (+) \pi (+ | +) \tag {16}
$$

$$
\pi (+ -) = \pi (+) \pi (- | +)
$$

$$
\pi (- +) = \pi (-) \pi (+ | -)
$$

$$
\pi (- -) = \pi (-) \pi (- | -),
$$

where  $\pi (\cdot)$  and  $\pi (\cdot |\cdot)$  are given by equations (13)-(15).

Proof. There are two things to be proved: (1) that equations (16) define an equilibrium distribution; and (2) that this is the only possible equilibrium distribution. But if we prove (2), then (1) will follow, because we already know that there is some equilibrium distribution.

Suppose that  $\pi (\omega_1\omega_2)$  is any equilibrium distribution. First, we shall show by an arbitrage argument that the marginal distribution is (13), that is,

$$
\pi (+ +) + \pi (+ -) = \pi (+), \tag {17}
$$

$$
\pi (- +) + \pi (- -) = \pi (-).
$$

where  $\pi (+),\pi (-)$  are defined by (13). Consider the following trading strategy: at  $t = 0$  , sell  $S_{0}$  shares of BOND and use the proceeds to buy 1 share of STOCK. Sell the STOCK at  $t = 1$  , and invest the proceeds (either  $S_{1}(+)$  or  $S_{1}(-)$  ) in BOND. Then at time  $t = 2$  the value of the portfolio is

$$
S _{1} (+) - S _{0} \quad \text{in sc en ar io s + + , + - ,a nd}
$$

$$
S _{1} (-) - S _{0} \quad \text{in sc en ar io s - + , - -}.
$$

Since at time  $t = 0$  the value of the portfolio was 0 (the purchase of the share of STOCK was financed by short-selling shares of BOND, that is, borrowing), it follows by definition of an equilibrium distribution that

$$
0 = \left(S _{1} (-) - S _{0}\right) \left(\pi (- +) + \pi (- -)\right) + \left(S _{1} (+) - S _{0}\right) \left(\pi (+ +) + \pi (+ -)\right) \quad \Longrightarrow
$$

$$
S _{0} = S _{1} (-) (\pi (- +) + \pi (- -)) + S _{1} (+) (\pi (+ +) + \pi (+ -)) \tag {18}
$$

But  $(\pi (+),\pi (-))$  is the unique equilibrium measure for the embedded market 1, so, again by definition of equilibrium measure,

$$
S _{0} = S _{1} (-) \pi (-) + S _{1} (+) \pi (+)
$$

Together with equation (18), this implies (17).

Next, consider another trading strategy: At  $t = 1$ , in either of scenarios ++or +-, sell  $S_{1}(+)$  shares of BOND and use it to buy 1 share of STOCK. In scenarios -, ++, do no trading at all.

Then the value of the portfolio is 0 at  $t = 0$ ; at  $t = 2$  its value is

$$
0 \quad \text{in} \quad \text{sc en ar io} \quad - -
$$

$$
0 \quad \text{in} \quad \text{sc en ar io} \quad - +
$$

$$
S _{2} (+ +) - S _{1} (+) \quad \text{in sc en ar io} \quad + +
$$

$$
S _{2} (+ -) - S _{1} (+) \quad \text{in sc en ar io} \quad + -
$$

Consequently, by definition of an equilibrium distribution, and by equation (17),

$$
\begin{array}{l} 0 = \pi (+ +) (S _{2} (+ +) - S _{1} (+)) + \pi (+ -) (S _{2} (+ -) - S _{1} (+)) \\ = (\pi (+ +) / \pi (+)) (S _{2} (+ +) - S _{1} (+)) + (\pi (+ -) / \pi (+)) (S _{2} (+ -) - S _{1} (+)) \\ = (\pi (+ +) / \pi (+)) (S _{2} (+ +) - S _{1} (+)) + (1 - \pi (+ +) / \pi (+)) (S _{2} (+ -) - S _{1} (+)) \\ = (\pi (+ +) / \pi (+)) (S _{2} (+ +) - S _{2} (+ -)) + (S _{2} (+ -) - S _{1} (+)), \\ \end{array}
$$

which may be rewritten as

$$
\pi (+ +) / \pi (+) = \left(S _{1} (+) - S _{2} (+ -)\right) / \left(S _{2} (+ +) - S _{2} (+ -)\right) = \pi (+ | +). \tag {20}
$$

This implies that the first two of equations (16) must hold. One gets the other two by considering a similar trading strategy (EXERCISE!).  $\square$

# 5. THE  $T$ -PERIOD BINARY MARKET

Once again, the market  $\mathcal{M}$  has two assets, STOCK and BOND, but now there are  $T + 1$  times  $t = 0,1,\ldots ,T$  at which trading may occur. The asset BOND is riskless, and has rate of return  $r = 0$ , so that its share price is always 1, in any scenario. The set  $\Omega$  of possible market scenarios is the set  $\{+, - \} ^T$  of all sequences  $\omega = \omega_{1}\omega_{2}\dots \omega_{T}$  with entries  $+,-$ . This set may be represented as a binary tree of depth  $T$ , with  $2^{t}$  nodes at each intermediate depth  $t < T$ , each representing a partial scenario  $\omega_{1}\omega_{2}\dots \omega_{t}$ . As in the preceding section, we assume that  $+$  implies an increase, and  $-$  a decrease, in the share price of STOCK; thus, for any partial scenario  $\omega_{1}\omega_{2}\dots \omega_{t}$ , where  $t < T$ ,

$$
S _{t + 1} \left(\omega_{1} \omega_{2} \dots \omega_{t} -\right) <   S _{t} \left(\omega_{1} \omega_{2} \dots \omega_{t}\right) <   S _{t + 1} \left(\omega_{1} \omega_{2} \dots \omega_{t} +\right). \tag{21}
$$

For each partial scenario  $\omega_{1}\omega_{2}\ldots \omega_{t}$ , where  $t < T$ , define

$$
\pi (+ | \omega_{1} \omega_{2} \dots \omega_{t}) = \frac{S _{t} \left(\omega_{1} \omega_{2} \dots \omega_{t}\right) - S _{t + 1} \left(\omega_{1} \omega_{2} \dots \omega_{t} -\right)}{S _{t + 1} \left(\omega_{1} \omega_{2} \dots \omega_{t} +\right) - S _{t + 1} \left(\omega_{1} \omega_{2} \dots \omega_{t} -\right)} \tag {22}
$$

$$
\pi (- | \omega_{1} \omega_{2} \dots \omega_{t}) = \frac{S _{t + 1} (\omega_{1} \omega_{2} \dots \omega_{t}) - S _{t} (\omega_{1} \omega_{2} \dots \omega_{t})}{S _{t + 1} (\omega_{1} \omega_{2} \dots \omega_{t} +) - S _{t + 1} (\omega_{1} \omega_{2} \dots \omega_{t} -)},
$$

and define

$$
\pi (+) = \left(S _{0} - S _{1} (-)\right) / \left(S _{1} (+) - S _{1} (-)\right) \tag {23}
$$

$$
\pi (-) = (S _{1} (+) - S _{0}) / (S _{1} (+) - S _{1} (-)).
$$

Theorem 2. The unique equilibrium distribution for the  $T$ -period binary market described above is given by

$$
\pi \left(\omega_{1} \omega_{2} \dots \omega_{T}\right) = \pi \left(\omega_{1}\right) \prod_{t = 1} ^{T - 1} \pi \left(\omega_{t + 1} \mid \omega_{1} \omega_{2} \dots \omega_{t}\right). \tag {24}
$$

Proof. The proof is by induction on  $T$ . The case  $T = 2$  was done in the preceding section. The inductive step is done by a routine modification of the case  $T = 2$ . Details are omitted.

Among other things, the formulas (22), (23), and (24) make it obvious how to compute conditional probabilities in the equilibrium distribution. Formula (22) gives the conditional probabilities that the next step is  $+$  or  $-$ , given the partial scenario  $\omega_{1}\omega_{2}\ldots \omega_{t}$ . The "multiplication law" for conditional probabilities implies that the conditional probability of scenario  $\omega_{1}\omega_{2}\ldots \omega_{T}$  given the partial scenario  $\omega_{1}\omega_{2}\ldots \omega_{t}$  is

$$
\pi \left(\omega_{1} \omega_{2} \dots \omega_{T} \mid \omega_{1} \omega_{2} \dots \omega_{t}\right) = \prod_{j = t} ^{T - 1} \pi \left(\omega_{j + 1} \mid \omega_{1} \omega_{2} \dots \omega_{j}\right) \tag {25}
$$

# 6. THE HOMOGENEOUS  $T$ -PERIOD BINARY MARKET

When binary trees are used in practice for derivative pricing, it is often assumed that stock price movements are such that, for certain constants  $d < 1 < u$ ,

$$
S _{t + 1} \left(\omega_{1} \omega_{2} \dots \omega_{t} +\right) = u S _{t} \left(\omega_{1} \omega_{2} \dots \omega_{t}\right), \tag {26}
$$

$$
S _{t + 1} \left(\omega_{1} \omega_{2} \dots \omega_{t} -\right) = d S _{t} \left(\omega_{1} \omega_{2} \dots \omega_{t}\right). \tag{27}
$$

Henceforth, we shall refer to this model as the homogeneous  $T$ -period binary market. In this case the formulas (22) and (23) simplify considerably:

$$
\pi (+) = \pi (+ | \omega_{1} \omega_{2} \dots \omega_{t}) = (1 - d) / (u - d) \triangleq p \tag {28}
$$

$$
\pi (-) = \pi (- | \omega_{1} \omega_{2} \dots \omega_{t}) = (u - 1) / (u - d) \stackrel {\Delta} {=} q.
$$

Thus, in the homogeneous  $T$ -period binary market, the equilibrium distribution  $\pi$  is the unique probability distribution on  $\Omega$  that makes the coordinate random variables  $\omega_{t}$  independent and identically distributed, with distribution

$$
\pi \left(\omega_{t} = + 1\right) = 1 - \pi \left(\omega_{t} = - 1\right) = p. \tag {29}
$$

Example: European Call Option. Consider the European call with strike  $K$  in a homogeneous  $T$ -period binary market. The market price of the call, assuming no arbitrage, is the expected value of its terminal value (no discounting is necessary, because share prices are denominated in units of BOND). The terminal value, in market scenario  $\omega$ , is

$$
(S _{T} (\omega) - K) _{+}
$$

Because the market is assumed to be homogeneous, the terminal share price  $S_{t}(\omega)$  of STOCK may be written as

$$
S _{T} (\omega) = S _{0} u ^{(T + \sum \omega_{t}) / 2} d ^{(T - \sum \omega_{t}) / 2} = S _{0} (u / d) ^{Z _{T}} d ^{T},
$$

where  $Z_{T}(\omega)$  is defined to be the number of + steps in  $\omega$ . Thus, if we set  $n_*$  to be the least integer such that

$$
K <   S _{0} (u / d) ^{n _{*}} d ^{T},
$$

then the market price of the CALL at time  $t = 0$  is given by

$$
\boxed {V _{0} (\text{CA LL}) = \sum_{n = n _{*}} ^{T} \left(S _{0} d ^{T} (u / d) ^{n} - K\right) \binom {T} {n} p ^{n} q ^{T - n}.} \tag {30}
$$

# 7. THE BLACK-SCHOLES FORMULA

Homogeneous multiperiod binary models are commonly used for numerical approximations to security and derivative prices in real markets, where trading takes place in continuous time. In such applications, a large number  $T$  of trading periods is usually needed for accurate approximations. Since asset prices, in real time, seem to change continuously, $^{1}$  the factors  $u$  and  $d$  in (28) should be chosen close to 1; and in the limit as  $T \to \infty$  the factors  $u$  and  $d$  should converge to 1. To get an interesting asymptotic approximation to the call price in formula (30) as  $T \to \infty$ , we shall make the following assumption about the dependence of  $u$  and  $d$  on  $T$ :

$$
u = e ^{\sigma / \sqrt{T}} \quad \text{an d} \quad d = e ^{- \sigma / \sqrt{T}}, \tag {31}
$$

where  $\sigma > 0$  is a constant, called the volatility of the stock price. This assumption may at first glance seem rather arbitrary. However, it is the only choice such that, in the limit as  $T \to \infty$ , the variance of the log of the stock price converges to a finite, positive real number  $\sigma^2$ . This choice determines the values of the risk-neutral probabilities  $p$  and  $q = 1 - p$  in (28):

$$
\begin{array}{l} p = (1 - e ^{- \sigma / \sqrt{T}}) / \left(e ^{\sigma / \sqrt{T}} - e ^{\sigma / \sqrt{T}}\right) \tag {32} \\ = (\sigma / \sqrt{T} - \sigma^{2} / 2 T + O (1 / T ^{3 / 2})) / (2 \sigma / \sqrt{T} + O (1 / T ^{3 / 2})) \\ = 1 / 2 - \sigma / 4 \sqrt{T} + O (1 / T) \\ \end{array}
$$

as  $T \to \infty$ . Since, under the risk-neutral measure, the distribution of the number  $(T + \sum_{t} \omega_{t}) / 2$  of "up" steps is Binomial- $(T, p)$ , it follows from the Central Limit Theorem that for large  $T$  the distribution of the standardized variate  $\sigma \sum_{t} \omega_{t} / \sqrt{T}$  is well approximated by the Gaussian distribution with mean  $-\sigma^2 / 4$  and variance  $\sigma^2$ . Hence, the value (30) of the CALL at strike  $K$  is well approximated, as  $T \to \infty$ , by

$$
\boxed {V _{0} (\mathrm{CA LL}) = E \left(S _{0} e ^{Y} - K\right) _{+}} \tag {33}
$$

where

$$
Y \sim \operatorname{No rm al} \left(- \sigma^{2} / 4, \sigma^{2}\right). \tag {34}
$$

This is a form of the famous Black-Scholes formula. It is surprisingly accurate for call options that are "at or near the money". Later in the course, we shall discuss the Black-Scholes formula in greater depth.

# 8. PROBLEMS

In the following problems, all markets are assumed to be arbitrage-free, and to contain a riskless asset (called BOND), with riskless rate of return  $r$ .

1. Numeraire Invariance. Prove Proposition 1 in the notes.
2. A Cross-Currency Option. Consider a one-period market in which the following assets are traded: (i) a riskless asset DOLLARACCOUNT, with rate of return  $r$ ; and (ii) a risky (from the point of view of a dollar investor) asset EUROACCOUNT. The time  $t = 0$  "share" prices of DOLLARACCOUNT and EUROACCOUNT are both 1. There are two market scenarios,  $\omega_{1}$  and  $\omega_{2}$ . The time  $t = 1$  share price of EUROACCOUNT in scenario  $\omega_{i}$  is  $S_{E}(\omega_{i})$ , with  $S_{E}(\omega_{1}) < S_{E}(\omega_{2})$ ; the time  $t = 1$  share price of DOLLARACCOUNT is  $e^{r}$ .

NOTE: The assets DOLLARACCOUNT and EUROACCOUNT are "money market" accounts that invest in treasury notes of short duration. The interest rates on these accounts are fixed in advance (that is, there is no uncertainty about the return rates). The reason that the asset EUROACCOUNT is risky is that the exchange rate between EUROS and DOLLARS at  $t = 1$  is subject to uncertainty.

(a) Prove that, if the market is arbitrage-free, then  $S_{E}(\omega_{1}) \leq e^{r} < S_{E}(\omega_{2})$ .  
(b) Consider a contract CALL that gives the holder the right to exchange 1 share of EUROACCOUNT for 1 share of DOLLARACCOUNT at time  $t = 1$ . What is the  $t = 0$  arbitrage price of this contract?  
(c) Explain how to replicate CALL in the assets EUROACCOUNT and DOLLARACCOUNT.

3. Put-Call Parity. Consider a single-period market with a risky asset STOCK, a CALL option with strike  $K$ , and a PUT option with strike  $K$ . Show that there is a replicating portfolio in the assets STOCK and CALL for the asset PUT. Deduce a formula for the  $t = 0$  market price of PUT in terms of the  $t = 0$  market prices of STOCK and CALL.
4. Stocks with Dividends. Consider a  $T$ -period market with a riskless asset BOND whose rate of return is  $r = 0$ . Let STOCK be a risky asset that, at each  $t = 1,2,\ldots,T$ , pays a dividend of  $\delta S_t$  shares of BOND, where  $1 > \delta > 0$  is a fixed constant and  $S_t$  is the current share price of STOCK. Let  $\pi$  be an equilibrium distribution for the market.

(a) Show that

$$
S _{0} = (1 + \delta) ^{T} \sum_{\omega \in \Omega} \pi (\omega) S _{T} (\omega),
$$

where the sum is over all possible market scenarios  $\omega$ .

(b) What is the forward price  $F_{0}$  of asset STOCK? (NOTE: The forward contract is an agreement made at  $t = 0$  for a BUYER to pay  $F_{0}$  shares of BOND at  $t = T$  in exchange for one share of STOCK.)

5. Buying on the Installment Plan. Let  $\mathcal{M}$  be a  $T-$  period market with two risky assets,  $A^1$  and  $A^2$ , and a riskless asset BOND with rate of return  $r$ . At time  $t = 0$ , GEORGE and WARREN<sup>2</sup> agree to the following deal: At each time  $t = 1, 2, \ldots, T$ , GEORGE will deliver to WARREN  $m$  shares of asset  $A^2$ , and in return WARREN will deliver to GEORGE one share of  $A^1$  at termination  $t = T$ . The amount  $m$  is constant, and fixed at time  $t = 0$ ; it is not scenario-dependent. What must  $m$  be in order that neither party to the agreement has an arbitrage?
6. Let  $\mathcal{M}$  be a homogeneous,  $T$ -period binary market with a risky asset STOCK whose share price follows equations (26)-(27) of the notes. Assume that the market  $\mathcal{M}$  has a riskless asset BOND with rate of return  $r = 0$ . Consider a contract FLOOR that pays the BUYER one share of BOND at every time  $t = 1,2,\ldots,T$  when the share price of STOCK is below its initial value  $S_0$ . What is the arbitrage price of one FLOOR at time  $t = 0$ ?

# LECTURES 3 AND 4: MARTINGALES

# 1. INTRODUCTION

In an arbitrage-free market, the share price of any traded asset at time  $t = 0$  is the expected value, under an equilibrium measure, of its discounted price at market termination  $t = T$ . We shall see that the discounted share price at any time  $t \leq T$  may also be computed by an expectation; however, this expectation is a conditional expectation, given the information about the market scenario that is revealed up to time  $t$ . Thus, the discounted share price process, as a (random) function of time, has the property that its value at any time  $t$  is the conditional expectation of the value at a future time given information available at  $t$ . A stochastic process with this property is called a martingale.

The theory of martingales (initiated by JOSEPH DOOB, following earlier work of PAUL LÉvy) is one of the central themes of modern probability. In discrete-time finance, the importance of martingales stems largely from the Optional Stopping Formula, which (a) places fundamental constraints on (discounted) share price processes, and (b) provides a computational tool of considerable utility.

# 2. FILTERATIONS OF PROBABILITY SPACES

Filtrations. In a multiperiod market, information about the market scenario is revealed in stages. Some events may be completely determined by the end of the first trading period, others by the end of the second, and others not until the termination of all trading. This suggests the following classification of events: for each  $t \leq T$ ,

(1)  $\mathcal{F}_t = \{\text{alleventsdeterminedinthefirst } t \text{ tradingperiods}\}.$

The finite sequence  $(\mathcal{F}_t)_{0\leq t\leq T}$  is a filtration of the space  $\Omega$  of market scenarios. In general, a filtration of a set  $\Omega$  (not necessarily finite) is defined to be a collection  $\mathcal{F}_t$ , indexed by a time parameter  $t$  (time may be either discrete or continuous), such that

(a) each  $\mathcal{F}_t$  is a  $\sigma$ -algebra of subsets (events) of  $\Omega$ ; and  
(b) if  $s <   t$  then  $\mathcal{F}_s\subseteq \mathcal{F}_t$

Adapted Processes. The share prices of assets in a multiperiod market depend on market scenarios, but evolve in such a way that their values at any time  $t$ , being observable at time  $t$ , do not depend on the unobservable post- $t$  futures of the scenarios. Thus, the price process  $S_{t}$  of a traded asset is adapted to the natural filtration  $(\mathcal{F}_t)_{0\leq t\leq T}$  defined by (1). In general, a sequence  $X_{t}$  of random variables is said to be adapted to a filtration  $(\mathcal{F}_t)_{0\leq t\leq T}$  if, for each  $t$ , the random variable  $X_{t}$  is  $\mathcal{F}_t$ -measurable, that is, if all events of the form  $\{\omega : X_t(\omega) \in B\}$ , where  $B$  is a Borel subset of the real numbers  $\mathbb{R}$ , are members of the  $\sigma$ -algebra  $\mathcal{F}_t$ .

Example: The Two-Period Binary Market. Recall that there are four market scenarios:  $\Omega = \{++, + -, - +, - - \}$ . For each scenario, the first (respectively, second) entry indicates

whether the share price of the asset STOCK increased or decreased in the first (respectively, second) trading period. There are  $2^4 = 16$  events (subsets of  $\Omega$ ) in all. The only events that are determined before the first trading period are the trivial events  $\emptyset, \Omega$ . There are two other events determined by time  $t = 1$ : these are

$$
F _{+} = \{+ +, + - \} \quad \text{an d}
$$

$$
F _{-} = \{- +, - - \}.
$$

Consequently, the natural filtration (the filtration defined by equation (1)) is

$$
\mathcal {F} _{0} = \{\emptyset , \Omega \}.
$$

$$
\mathcal {F} _{1} = \{\emptyset , \Omega , F _{+}, F _{-} \},
$$

$$
\mathcal {F} _{2} = \{\text{al ls ub se ts of} \Omega \}.
$$

Example: The  $T$ -Period Binary Market. The set  $\Omega_T$  of market scenarios consists of the  $2^T$  sequences of length  $T$  with entries  $+, -$ . The partial scenarios are the sequences  $\xi = (\xi_1\xi_2\dots \xi_t)$  of lengths  $t\leq T$ . For each partial scenario  $\xi = (\xi_{1}\xi_{2}\dots \xi_{t})$ , define the event  $F(\xi)$  to be the set of all (full) scenarios  $\omega \in \Omega_T$  whose first  $t$  entries are  $\xi_1\xi_2\dots \xi_t$ , that is,

$$
F (\xi) = \left\{\omega \in \Omega : \omega_{j} = \xi_{j} \forall j = 1, 2, \dots , t \right\}. \tag {2}
$$

If one visualizes  $\Omega$  as a binary tree of depth  $T$ , then the partial scenarios  $\xi = (\xi_1\xi_2\ldots \xi_t)$  correspond to the nonterminal nodes; for each such  $\xi$ , the event  $F(\xi)$  consists of all terminal nodes  $\omega$  lying below the nonterminal node  $\xi$  (that is, terminal nodes  $\omega$  such that the unique downward path in the tree from the root to  $\omega$  passes through  $\xi$ ). The  $\sigma$ -algebras  $\mathcal{F}_t$  in the natural filtration are given by

$$
\mathcal {F} _{t} = \left\{\text{al lf in it eu ni on so fe ve nt s} F (\xi), \text{wh er e} \xi = \xi_{1} \xi_{2} \dots \xi_{t} \in \Omega_{t} \right\}. \tag {3}
$$

Equivalently,  $\mathcal{F}_t$  consists of the events whose indicator functions depend on  $\omega$  only through its first  $t$  coordinates. Observe that the  $\mathcal{F}_t$ -measurable random variables are the random variables that depend on the market scenario only through its first  $t$  coordinates. Thus, a sequence  $(X_{t})_{0\leq t\leq T}$  is adapted to the filtration  $(\mathcal{F}_t)_{0\leq t\leq T}$  if, for each  $t$  and each market scenario  $\omega = \omega_{1}\omega_{2}\dots \omega_{T}$ , the value of  $X_{t}(\omega)$  depends only on the partial scenario  $\omega_{1}\omega_{2}\dots \omega_{t}$ .

Exercise: Show that, for the  $T$ -period binary market with the natural filtration, there is a one-to-one correspondence between adapted processes and functions on the nodes of the binary tree that represents the market.

# 3. SELF-FINANCING PORTFOLIOS

Dynamic Portfolios. Consider a  $T$ -period market  $\mathcal{M}$  with traded assets  $A^1, A^2, \ldots, A^K$ . Denote by  $S_t^A(\omega)$  the share price of asset  $A$  at time  $t$  under market scenario  $\omega$ . Generally, a trader will hold not just a single asset, but a portfolio consisting of shares (possibly short) of each of the traded assets  $A^j$ ; moreover, the trader may adjust his/her portfolio as time progresses, in a manner that is scenario-dependent. Such a timeand scenario-dependent

portfolio is called a dynamic, or dynamically rebalanced, portfolio. If  $\theta_t^A (\omega)$  denotes the number of shares of asset  $A$  held in a dynamically rebalanced portfolio during the tth trading period (that is, during the period following completion of trading at time  $t$  until the beginning of trading at time  $t + 1$ ) under scenario  $\omega$ , then the sequence  $(\theta_t^A)_{0\leq t\leq T}$  must be adapted to the natural filtration. A dynamic portfolio will be called bounded if each of the random variables  $\theta_t^A$  is bounded. Note that in markets with only finitely many scenarios, all dynamic portfolios are bounded.

Self-Financing Portfolios. The total value of the portfolio  $\theta$  after rebalancing at time  $t$ , in scenario  $\omega$ , is

$$
V _{t} ^{\theta} = V _{t} ^{\theta} (\omega) = \sum_{A} \theta_{t} ^{A} (\omega) S _{t} ^{A} (\omega), \tag {4}
$$

where the sum is over all assets  $A = A^1, A^2, \ldots, A^K$ . Of course, it need not be the case that  $V_t^\theta = V_{t+1}^\theta$ , as the share prices of the underlying assets  $A^j$  will generally change between times  $t$  and  $t+1$ . However, unless the trader invests (or withdraws) additional resources in his/her portfolio at time  $t+1$ , the total value of the portfolio just before rebalancing at time  $t+1$  must be the same as its value just after, that is,

$$
\sum_{A} \theta_{t} ^{A} (\omega) S _{t + 1} ^{A} (\omega) = \sum_{A} \theta_{t + 1} ^{A} (\omega) S _{t + 1} ^{A} (\omega);
$$

equivalently,

$$
V _{t + 1} ^{\theta} (\omega) - V _{t} ^{\theta} (\omega) = \sum_{A} \theta_{t} ^{A} \left(S _{t + 1} ^{A} (\omega) - S _{t} ^{A} (\omega)\right). \tag {6}
$$

A dynamically rebalanced portfolio satisfying (6) is called self-financing, because it requires no investments or withdrawals except at the initial time  $t$ .

Exercise: Show that, in a  $T$ -period market with only finitely many market scenarios, every self-financing portfolio is a linear combination of pure trading strategies (as defined in Lecture 2), and every linear combination of pure trading strategies is a self-financing portfolio.

# 4. MARTINGALES

Let  $(\Omega, \mathcal{F}, P)$  be a probability space and  $(\mathcal{F}_t)_{0 \leq t \leq T}$  or  $(\mathcal{F}_t)_{0 \leq t < \infty}$  a filtration by sub- $\sigma$ -algebras of  $\mathcal{F}$ . An adapted sequence  $X_t$  of integrable random variables is defined to be a

martingale if  $E(X_{t + 1}|\mathcal{F}_t) = X_t\forall t$  

- submartingale if  $E(X_{t+1}|\mathcal{F}_t) \geq X_t \forall t$ .  
- supermartingale if  $E(X_{t + 1}|\mathcal{F}_t) \leq X_t \forall t$ .

Conservation of Expectation. Readers with backgrounds in physics will, no doubt, have some appreciation for the importance of conservation laws. In a certain sense, martingales are the stochastic analog of conservation laws: expectation is "conserved". To understand this, observe that, by the Tower Property of conditional expectation (see the appendix to

this lecture for a brief resume of the properties of conditional expectation) and the fact that the  $\sigma$ -algebras in a filtration are nested,

$$
s <   t \quad \Longrightarrow \quad E \left(X _{t} \mid \mathcal {F} _{s}\right) = X _{s} a. s. \tag {7}
$$

for any martingale  $(X_{t})_{t\geq 0}$  relative to a filtration  $(\mathcal{F}_t)_{0\leq t < \infty}$ . This is true, in particular, for  $s = 0$ . Consequently, by another application of the Tower Property,

$$
E X _{t} = E X _{0} \quad \forall t \geq 0. \tag {8}
$$

# Simple Examples

(1) Let  $X$  be any integrable random variable. Then the sequence  $X_{t}$  defined by  $X_{t} = E(X|\mathcal{F}_{t})$  is a martingale, by the Tower Property of conditional expectation. For finite filtrations  $(\mathcal{F}_t)_{0\leq t\leq T}$  of finite probability spaces, these are the only martingales (EXERCISE: Prove this.)  
(2) Let  $Y_{1}, Y_{2}, \ldots$  be a sequence of independent, identically distributed random variables such that  $EY_{t} = 0$ , and let  $(\mathcal{F}_t)_{0 \leq t < \infty}$  be the natural filtration. Then the sequence  $X_{t} = \sum_{j=1}^{t} Y_{j}$  is a martingale. This follows easily from the Independence Law for conditional expectation.  
(3) Once again let  $Y_{1}, Y_{2}, \ldots$  be a sequence of independent, identically distributed random variables such that  $EY_{t} = 0$  and  $EY_{t}^{2} = \sigma^{2} < \infty$ , and let  $(\mathcal{F}_t)_{0\leq t < \infty}$  be the natural filtration. Then the sequence

$$
\left(\sum_{j = 1} ^{t} Y _{j}\right) ^{2} - \sigma^{2} t \tag {9}
$$

is a martingale. This is also easy to check. For an interesting use of the martingale (9), see section 8 below.

(4) Let  $X_1, X_2, \ldots$  be a sequence of independent, identically distributed Bernoulli- $p$  random variables, and let  $S_n = \sum_{j=1}^{n} X_j$ . Note that  $S_n$  has the binomial- $(n,p)$  distribution. Define

$$
Z _{n} = \left(\frac{q}{p}\right) ^{2 S _{n} - n}.
$$

Then  $Z_{1}, Z_{2}, \ldots$  is a martingale relative to the usual filtration. Once again, this is easy to check. The martingale  $\{Z_{n}\}_{n\geq 0}$  is quite useful in certain random walk problems — see, for instance, homework problem 2 below.

(5) Let  $\{X_{n}\}_{n\geq 0}$  be a martingale relative to the filtration  $\{\mathcal{F}_n\}_{n\geq 0}$ , and let  $\varphi :\mathbb{R}\to \mathbb{R}$  be a convex function such that  $E\varphi (X_n) < \infty$  for each  $n\geq 0$ . Then the sequence  $\{Z_{n}\}_{n\geq 0}$  defined by

$$
Z _{n} = \varphi (X _{n})
$$

is a submartingale relative to the filtration  $\{\mathcal{F}_n\}_{n\geq 0}$ . This is a consequence of the Jensen inequality and the martingale property of  $\{X_{n}\}_{n\geq 0}$ :

$$
\begin{array}{l} E \left(Z _{n + 1} \mid \mathcal {F} _{n}\right) = E \left(\varphi \left(X _{n + 1}\right) \mid \mathcal {F} _{n}\right) \\ \geq \varphi (E (X _{n + 1} | \mathcal {F} _{n}) \\ = \varphi (X _{n}) = Z _{n} \\ \end{array}
$$

Useful special cases: (a)  $\varphi(x) = x^2$ , and (b)  $\varphi(x) = \exp\{\theta x\}$ .

# 5. DISCOUNTED PRICE PROCESSES AS MARTINGALES

The principal (but not the only) reason that the notion of a martingale is of importance in the theory of finance is that discounted price processes in arbitrage-free markets are martingales. Let  $\mathcal{M}$  be a  $T$ -period market,  $\Omega$  the (not necessarily finite) set of market scenarios, and  $(\mathcal{F}_t)_{0\leq t\leq T}$  the natural filtration. Assume that  $\mathcal{M}$  has a riskless asset with riskless rate of return  $r$  per trading period.4

Risk-Neutral Probability Measures. A probability measure  $P$  on the  $\sigma$ -algebra  $\mathcal{F}_T$  is said to be risk-neutral, or an equilibrium measure, if for every bounded self-financing portfolio  $\theta$  the value  $V_0^\theta$  at time  $t = 0$  is the expectation, under  $P$ , of the discounted value  $V_T^\theta = V_T^\theta(\omega)$  at time  $t = T$ , that is,

$$
V _{0} ^{\theta} = e ^{- r T} E _{P} V _{T} ^{\theta}. \tag {10}
$$

Theorem 1. If the market  $\mathcal{M}$  admits no arbitrages, and has a riskless asset with rate of return  $r = 0$ , then, under any equilibrium probability measure, the price process  $\{S_t\}_{0 \leq t \leq T}$  of any traded asset is a martingale relative to the natural filtration.

Corollary 1. If the market  $\mathcal{M}$  admits no arbitrages, and has a riskless asset with rate of return  $r > 0$ , then, under any equilibrium probability measure, the discounted price process of any traded asset  $\{e^{-rt}S_t\}_{0\leq t\leq T}$  is a martingale relative to the natural filtration.

Proof. It is left as an exercise to verify that the corollary follows from the theorem. To prove the theorem, we must show that for every time  $t = 0,1,2,\ldots ,T - 1$

$$
E \left(S _{t + 1} \mid \mathcal {F} _{t}\right) = S _{t}. \tag {11}
$$

By definition of conditional expectation, this is equivalent to showing that for any event  $A \in \mathcal{F}_t$ ,

$$
E \left(S _{t + 1} \mathbf {1} _{A}\right) = E \left(S _{t} \mathbf {1} _{A}\right), \tag {12}
$$

where  $S_{t}$  is the share price at time  $t$  of a traded asset (call it STOCK). For this, we shall exploit the fact that the value of any self-financing portfolio  $\theta$  at time  $t = 0$  is the expected value, under any equilibrium distribution, of the value at the expiration date  $t = T$  (this is, in essence, the definition of an equilibrium distribution). Consider the following self-financing portfolio  $\theta$ :

Strategy  $\theta$ : At times  $\tau = 0,1,2,\ldots t$ , hold no position, either short or long, in any asset. At time  $\tau = t$ , if the event  $A$  has occurred, sell  $S_{t}$  shares of the riskless asset BOND short,

and use the proceeds to buy one share of STOCK. Hold this position for one trading period, until time  $t + 1$ ; then, no matter what happens in this period, sell the share of STOCK, put the proceeds  $S_{t + 1}$  into BOND, and hold the resulting position  $(-S_{t} + S_{t + 1})$  BOND until termination of the market at  $t = T$ . In all partial scenarios where event  $A$  has not occurred at time  $t$ , hold no position, either short or long, in any asset, at any time  $\tau = t,\dots,T$ .

The strategy  $\theta$  is self-financing, so its value at  $t = 0$  is 0. Consequently, under any equilibrium probability, the expected value of the portfolio at  $t = T$  must be 0. But the value at termination of the portfolio is  $(-S_{t} + S_{t + 1})\mathbf{1}_{A}$ . Therefore,

$$
0 = E \left(S _{t} - S _{t + 1}\right) \mathbf {1} _{A} \quad \Longrightarrow \quad E S _{t} \mathbf {1} _{A} = E S _{t + 1} \mathbf {1} _{A}.
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e607bf8b-adbd-4429-b019-7daf8f2ae768/e325ff9e3612898afeee1146b836aeb5d52658cf434572d2627200eafc2f38cc.jpg)

# 6. MARTINGALE TRANSFORMS

The price process of a self-financing, dynamically rebalanced portfolio in a discrete-time multiperiod market with a risk-neutral probability measure  $P$  is a special kind of process, called a martingale transform. In general, a dynamically rebalanced portfolio holds, during any trading period, a certain number of shares (possibly zero) of each traded asset  $A$  in the market. The number  $\theta_t^A$  of shares of asset  $A$  held between times  $t$  and  $t + 1$  must be a function only of the market information available up to time  $t$ ; that is,  $\theta_t^A$  must be  $\mathcal{F}_t -$  measurable, where  $(\mathcal{F}_t)_{0\leq t\leq T}$  is the natural filtration for the market. If the portfolio is self-financing, then the fluctuation in the value of the portfolio between the end of trading at time  $t$  until the beginning of tradiong at  $t + 1$  is

$$
V _{t + 1} ^{\theta} - V _{t} ^{\theta} = \sum_{A} \theta_{t} \left(S _{t + 1} ^{A} - S _{t} ^{A}\right), \tag {13}
$$

where the sum is over all traded assets  $A$  and, for each such asset,  $S_{t}^{A}$  is the share price at time  $t$ . Notice that each term is the product of  $\theta_{t}$ , which is  $\mathcal{F}_t$ -measurable, and  $S_{t + 1}^{A} - S_{t}^{A}$ , the increment in the value of  $A$  between times  $t$  and  $t + 1$ . Such sequences are called martingale transforms; they are the discrete-time analogs of Itô integrals, of which we will hear more later. To define martingale transforms in general, we must introduce the notion of a predictable sequence.

Predictable Sequences. Let  $\{\mathcal{F}_t\}_{t\in \mathbb{Z}_+}$  be a discrete-time filtration, and let  $\{Y_t\}_{t\in \mathbb{N}}$  be a sequence of random variables adapted to  $\mathcal{F}_t$ . The sequence  $Y_{t}$  is said to be predictable (relative to the filtration  $\mathcal{F}_t$ ) if, for every  $t\geq 1$ , the random variable  $Y_{t}$  is  $\mathcal{F}_{t - 1}$ -measurable. If  $\mathcal{F}_t$  is the natural filtration for a discrete-time, multiperiod market, then the sequence  $Y_{t}$  is predictable if the value at the end of each trading period is a function only of the market information available up to the beginning of the trading period. For instance, if  $Y_{t + 1}$  is the number of shares of an asset  $A$  held between times  $t$  and  $t + 1$ , then the sequence  $Y_{t}$  must be predictable. (NOTE: It is more conventional to index the number of shares held during the period from  $t$  until  $t + 1$  by  $t$ .)

Martingale Transforms. Let  $\{X_{t}\}_{t\in \mathbb{Z}_{+}}$  be a martingale (relative to the filtration  $\mathcal{F}_t$ ), and let  $\{Y_{t}\}_{t\in \mathbb{Z}_{+}}$  be a predictable sequence. The martingale transform  $\{(Y\cdot X)_t\}_{t\in \mathbb{Z}_+}$  is the sequence of random variables defined as follows:

$$
\begin{array}{l} (Y \cdot X) _{t} = X _{0} + \sum_{j = 0} ^{t - 1} Y _{j} (\Delta X) _{j + 1} \quad \text{wh er e} \tag {14} \\ \left(\Delta X\right) _{t + 1} = X _{t + 1} - X _{t}. \\ \end{array}
$$

The same equations may be used to define submartingale transforms and supermartingale transforms. If the sequence  $\{X_t\}$  is a sub-(respectively, super-)martingale, then the sequence  $(Y \cdot X)_t$  defined by equations (14) is called a sub- (respectively, super-)martingale transform.

NOTE: There are different conventions regarding the initial term of the sequence.

Proposition 1. Assume that  $\{X_{t}\}_{t\in \mathbb{Z}_{+}}$  is an adapted sequence and  $\{Y_{t}\}_{t\in \mathbb{Z}_{+}}$  a predictable sequence of bounded random variables, both relative to a filtration  $(\mathcal{F}_t)_{0\leq t < \infty}$ . If  $\{X_{t}\}_{t\in \mathbb{Z}_{+}}$  is a martingale, then the martingale transform  $\{(Y\cdot X)_t\}_{t\in \mathbb{Z}_+}$  is a martingale relative to  $(\mathcal{F}_t)_{0\leq t < \infty}$ . If  $\{X_{t}\}_{t\in \mathbb{Z}_{+}}$  is a sub-(respectively, super-)martingale, and if in addition the random variables  $Y_{t}$  are nonnegative, then the transform sequence  $\{(Y\cdot X)_t\}_{t\in \mathbb{Z}}$  is a sub-(respectively, super-)martingale.

Proof. Homework.

Proposition 1 leads immediately to the following important extension of Theorem 1.

Theorem 2. Assume that  $\mathcal{M}$  is a multiperiod market containing a riskless asset with rate of return  $r = 0$ , and assume that there is a risk-neutral probability measure  $P$  for  $\mathcal{M}$ . Then for every self-financing portfolio  $\theta$ , the value process  $(V_t^\theta)_{0 \leq t \leq T}$  is a martingale under  $P$ .

Proof. By Theorem 1, the share price process  $S_{t}^{A}$  of each traded asset  $A$  is a martingale. If  $\theta$  is a self-financing portfolio, then, for each asset  $A$ , the number  $\theta_{t-1}^{A}$  of shares of  $A$  held during the period from time  $t-1$  until  $t$  is  $\mathcal{F}_{t-1}$ -measurable, and so the sequence  $(\theta_{t-1}^{A})_{0 \leq t \leq T}$  is predictable. Hence, for each asset  $A$ , the process

$$
V _{t} ^{\theta , A} = \sum_{j = 1} ^{t} \theta_{j - 1} ^{A} (S _{j} ^{A} - S _{j - 1} ^{A}),
$$

which gives the cumulative change in the value of the portfolio due to fluctuations in the share price of  $A$ , is a martingale transform. Therefore, by Proposition 1, it is a martingale. By the definition of a self-financing portfolio,  $V_{t}^{\theta}$  is the initial value  $V_{0}^{\theta}$  plus the sum of the values  $V_{t}^{\theta ,A}$  over all assets  $A$ . Since the sum of martingales is a martingale, it follows that the value process  $(V_{t}^{\theta})_{0\leq t\leq T}$  is a martingale.

# 7. OPTIONAL STOPPING

The cornerstone of martingale theory is Doob's *Optional Stopping Theorem*. This states, roughly, that "stopping" a martingale at a random time  $\tau$  does not alter the expected "payoff", provided the decision about when to stop is based solely on information available

up to  $\tau$ . Such random times are called stopping times. The formal definition is as follows: An integer-valued random variable  $\tau = \tau(\omega)$  is a stopping time relative to a filtration  $(\mathcal{F}_t)_{0 \leq t \leq T}$  or  $(\mathcal{F}_t)_{0 \leq t < \infty}$  if, for every  $n = 0, 1, 2, \ldots$ , the event that  $\tau = n$  is an element of  $\mathcal{F}_n$ :

$$
\{\omega : \tau (\omega) = n \} \in \mathcal {F} _{n}. \tag {16}
$$

Exercise: (1) Check that this is equivalent to requiring that  $\{\omega : \tau(\omega) \leq n\} \in \mathcal{F}_n$  for all  $n$ . (2) Show that if  $\tau$  is a stopping time, then so is  $\tau \wedge n$ , for any (nonrandom) integer  $n$ . (3) Show that if  $\tau$  and  $\nu$  are stopping times, then so are  $\tau \wedge \nu$  and  $\tau \vee \nu$ . (The notation  $\wedge$  denotes minimum, and  $\vee$  denotes maximum.)

Theorem 3. (Optional Stopping Theorem) Let  $\{X_{n}\}_{n\in \mathbb{Z}_{+}}$  be a martingale, submartingale, or supermartingale relative to a filtration  $\{\mathcal{F}_n\}_{n\in \mathbb{Z}_+}$ , and let  $\tau$  be a stopping time. Then for any  $n\in \mathbb{N}$ ,

(17)  $EX_{\tau \wedge n} = EX_0$  (martingales)  
(18)  $EX_{\tau \wedge n} \geq EX_0 \quad (submartingales)$  
(19)  $EX_{\tau \wedge n} \leq EX_0$  (supermartingales)

Proof. See below for the proof of (17), and see the homework section for the proofs of (18)-(19).  $\square$

The direct implication for asset prices is that one cannot get a better expected discounted return on an asset by holding it until a stopping time than one can get by simply holding it until a nonrandom termination date  $t = T$ . This should not be surprising, because if it were possible to get a better expected return, then one could create an arbitrage (exercise: explain how). But this is not why the Optional Sampling Theorem is really important. The homework problems below give some indication of how more subtle applications of the theorem lead to nontrivial results in asset pricing and random walk theory.

The easiest proof of the Optional Stopping Theorem is based on the fact that martingale transforms are martingales (Proposition 1 above).

Proposition 2. Let  $\tau$  be a stopping time relative to the filtration  $\mathcal{F}_t$ . If  $\{X_t\}_{t \geq 0}$  is a martingale, then the sequence of random variables  $\{X_{\tau \wedge t}\}_{t \geq 0}$  is a martingale transform, and therefore a martingale. Similarly, if  $\{X_t\}_{t \geq 0}$  is a sub-(respectively, super-)martingale, then so is  $\{X_{\tau \wedge t}\}_{t \geq 0}$ .

Proof. Homework problem. (Identify the appropriate predictable sequence  $Y_{n}$ , prove that it is predictable, and prove that  $X_{\tau \wedge n} = (Y \cdot X)_{n}$ .)

The Optional Stopping Theorem now follows from Conservation of Expectation (8).

# 8. EXAMPLE: THE GAMBLER'S RUIN PROBLEM

The Game. Two gamblers, FATS and SLIM, play the following game: FATS repeatedly tosses a fair coin. After each toss that comes up H, SLIM pays FATS one dollar. After each toss that comes up T, FATS pays SLIM one dollar. The game continues until either one or the other gambler runs out of money. If FATS starts with $A and SLIM starts with $B,

(A) What is the probability that, when the game ends, FATS has all the cash?  
(B) What is the expected duration of the game?

We may recast this as an optional stopping problem. Let  $X_{1}, X_{2}, \ldots$  be the sequence of play-by-play increments in FATS' fortune: thus,  $X_{i} = \pm 1$  according to whether the  $i$ th toss is  $H$  or  $T$ . The total change in FATS' fortune after  $n$  plays is

$$
S _{n} = \sum_{i = 1} ^{n} X _{i}.
$$

The game continues until time  $\tau$ , where

$$
\tau = \min  \{n: S _{n} = + A \text{or} - B \}.
$$

It is not difficult to see that  $\tau$  is a stopping time relative to the natural filtration  $\mathcal{F}_n = \sigma(X_1, X_2, \ldots, X_n)$ . Moreover, the sequence  $S_n$  is a martingale relative to the natural filtration, by example (2) in section 4 above. Consequently, by the Optional Stopping Theorem, for each  $n < \infty$ ,

$$
\begin{array}{l} 0 = E S _{0} = E S _{\tau \wedge n} = A P \{\tau \leq n \text{an d} S _{\tau} = A \} \\ - B P \{\tau \leq n \text{an d} S _{\tau} = - B \} \\ + E S _{n} \mathbf {1} _{\{\tau > n \}}. \\ \end{array}
$$

As  $n \to \infty$ , the probability of the event  $\tau > n$  converges to zero. (Explanation: If at any time there are  $A + B$  consecutive Heads, or  $A + B$  consecutive Tails then the game must end, because one or the other player will be ruined. If  $n$  is extremely large, the chance that there has not been a run of  $A + B$  consecutive Heads in the first  $n$  tosses is very small.) Since  $S_{n}$  must be between  $A$  and  $-B$  on the event  $\tau > n$ , it follows that the last expectation above converges to zero as  $n \to \infty$ . Thus, letting  $n \to \infty$  yields the following simplified equation:

$$
0 = A P \{S _{\tau} = A \} - B P \{S _{\tau} = - B \}.
$$

Since  $S_{\tau}$  must be either  $A$  or  $-B$ , the two probabilities in this equation must sum to 1. Hence, we have two equations in two unknowns, which we may solve to obtain the solution to Problem (A):

$$
\boxed {P \{S _{\tau} = A \} = \frac{B}{A + B}.} \tag {23}
$$

To solve Problem (B), we shall again appeal to the Optional Stopping Theorem, but this time using the martingale  $S_{n}^{2} - n$  (see example (3) of section 4 above). The Optional Stopping

Theorem implies that, for each  $n = 1,2,\ldots$

$$
E \left(S _{\tau \wedge n} ^{2} - \tau \wedge n\right) = 0 \quad \Longrightarrow
$$

$$
\begin{array}{l} E \tau \wedge n = E S _{\tau \wedge n} ^{2} \tag {24} \\ = E S _{\tau} ^{2} \mathbf {1} _{\{\tau \leq n \}} + E S _{n} ^{2} \mathbf {1} _{\{\tau > n \}}. \\ \end{array}
$$

Now  $\tau \wedge n \to \tau$  and  $S_{\tau}^{2}\mathbf{1}_{\{\tau \leq n\}} \to S_{\tau^{2}}$  as  $n \to \infty$ , and in both cases the convergence is monotone. Consequently, by the Monotone Convergence Theorem,

$$
\begin{array}{l} \lim  _{n \to \infty} E \tau \wedge n = E \tau \qquad \text{an d} \\ \lim _{n \to \infty} E S _{\tau} ^{2} \mathbf {1} _{\{\tau \leq n \}} = E S _{\tau} ^{2} \\ = A ^{2} \left(\frac{B}{A + B}\right) + B ^{2} \left(\frac{A}{A + B}\right) \\ = A B \\ \end{array}
$$

the last by the result obtained in solving problem (A) above. Since  $S_{n}^{2}$  is bounded on the event  $\tau > n$ , and since the probability of this event converges to zero as  $n \to \infty$ , the last expectation in (24) above converges to zero as  $n \to \infty$ . Therefore, as  $n \to \infty$  the equation (24) simplifies to

$$
\boxed {E \tau = A B} \tag {25}
$$

# 9. THE MARTINGALE REPRESENTATION THEOREM AND HEDGING

In a market with a risk-neutral probability measure, where the riskless rate of return is  $r = 0$ , the value process of every bounded, self-financing portfolio is a martingale. Thus, it seems a natural question to ask is this: How does one characterize the set of all martingales? To answer this in general is too ambitious a goal; however, in the important special case of the homogeneous, binary,  $T$ -period market  $\mathcal{M}$ , we may give a complete answer.

Recall that the market  $\mathcal{M}$  has scenario space  $\Omega = \{+, -\}^T$ , the set of all sequences of pluses and minuses of length  $T$ . There is a riskless asset BOND with rate of return  $r$ , and a risky asset STOCK whose price process evolves according to the rule

$$
S _{t + 1} \left(\omega_{1} \omega_{2} \dots \omega_{t} +\right) = S _{t} \left(\omega_{1} \omega_{2} \dots \omega_{t}\right) u; \tag {26}
$$

$$
S _{t + 1} \left(\omega_{1} \omega_{2} \dots \omega_{t} -\right) = S _{t} \left(\omega_{1} \omega_{2} \dots \omega_{t}\right) d.
$$

If the riskless rate of return is  $r = 0$  (as is the case if share prices in the market are denumerated in shares of BOND), then the risk-neutral probability measure  $P$  is the probability measure on  $\Omega$  under which the coordinate random variables  $\xi_{t}$ , defined by

$$
\xi_{t} \left(\omega_{1} \omega_{2} \dots \omega_{T}\right) = \omega_{t} \cdot 1 \quad \text{fo r} t = 1, 2, \dots , T, \tag {27}
$$

are independent and identically distributed, with distribution

$$
P \left\{\xi_{t} = + 1 \right\} = p \quad \text{an d} \tag {28}
$$

$$
P \left\{\xi_{t} = - 1 \right\} = q := 1 - p \quad \text{wh er e}
$$

$$
p = (1 - d) / (u - d).
$$

The natural filtration  $(\mathcal{F}_t)_{0\leq t\leq T}$  of the scenario space  $\Omega$  has  $\mathcal{F}_t = \sigma (\xi_1,\xi_2,\ldots ,\xi_t)$ , that is,  $\mathcal{F}_t$  contains all events whose indicator functions are functions of the coordinate random variables,  $\xi_1,\xi_2,\dots ,\xi_t$ .

Theorem 4. (Martingale Representation Theorem) If  $(Y_{t})_{0\leq t\leq T}$  is a martingale relative to the natural filtration  $(\mathcal{F}_t)_{0\leq t\leq T}$ , then  $(Y_{t} - Y_{0})_{0\leq t\leq T}$  is a martingale transform of the STOCK price martingale  $(S_{t})_{0\leq t\leq T}$ ; that is, there exists a predictable sequence  $(\beta_{t})_{1\leq t\leq T}$  such that for each  $t = 1,2,\ldots ,T$

$$
Y _{t} = Y _{0} + \sum_{j = 1} ^{t} \beta_{j} \left(S _{j} - S _{j - 1}\right). \tag {29}
$$

Why is this of interest in finance? Recall that the share price process of any traded asset must be a martingale under the risk-neutral measure  $P$ . In particular, if derivative securities (for example, call options) are included in the market, their share price processes must be martingales, and therefore, by the Martingale Representation Theorem, must be of the form (29). The importance of equation (29) is that it provides a self-financing portfolio in the assets STOCK and BOND whose value process is  $Y_{t}$ . Thus, for every derivative security there is a self-financing replicating portfolio in STOCK and BOND. The portfolio is defined using the predictable sequence  $\beta_{t}$  in the martingale transform (29): in the time period from  $t$  until  $t + 1$ , the portfolio holds  $Y_{0}$  shares of BOND and  $\theta_{t} = \beta_{t + 1}$  shares of STOCK. Observe that the process  $(\theta_{t})_{0\leq t\leq T - 1}$  is adapted to the natural filtration (as it must be) because the sequence  $\beta_{t}$  is predictable.

Proof of the Martingale Representation Theorem. Fix a scenario  $\omega = \omega_{1}\omega_{2}\dots \omega_{T}\in \Omega$ , and let  $G_{t}(\omega)$  be the set of all (full) scenarios whose first  $t$  entries are  $\omega_{1}\omega_{2}\dots \omega_{t}$ . Since the sequence  $(Y_{t})_{0\leq t\leq T}$  is a martingale, it must be the case that, for every  $t < T$  and every  $\omega \in \Omega$ ,

$$
E Y _{t + 1} \mathbf {1} _{G _{t} (\omega)} = E Y _{t} \mathbf {1} _{G _{t} (\omega)}. \tag {30}
$$

Moreover, since the sequence  $(Y_{t})_{0\leq t\leq T}$  is adapted to the natural filtration, the value  $Y_{t + 1}(\omega) - Y_{t}(\omega)$  depends on the scenario  $\omega = \omega_{1}\omega_{2}\dots \omega_{T}$  only through its first  $t + 1$  entries. Thus, equation (30) implies that, for each  $t$  and each  $\omega$ ,

$$
p Y _{t + 1} \left(\omega_{1} \omega_{2} \dots \omega_{t} +\right) + q Y _{t + 1} \left(\omega_{1} \omega_{2} \dots \omega_{t} -\right) = Y _{t} \left(\omega_{1} \omega_{2} \dots \omega_{t}\right). \tag {31}
$$

This equation also holds with  $Y_{t + 1}$  and  $Y_{t}$  replaced by  $S_{t + 1}$  and  $S_{t}$ , respectively, because  $(S_{t})_{0\leq t\leq T}$  is also a martingale. Solving both equations for  $-q / p$  leads to the relation

$$
\frac{Y _{t + 1} (\omega_{1} \omega_{2} \ldots \omega_{t} +) - Y _{t} (\omega_{1} \omega_{2} \ldots \omega_{t})}{Y _{t + 1} (\omega_{1} \omega_{2} \ldots \omega_{t} -) - Y _{t} (\omega_{1} \omega_{2} \ldots \omega_{t})} = - \frac{q}{p} = \frac{S _{t + 1} (\omega_{1} \omega_{2} \ldots \omega_{t} +) - S _{t} (\omega_{1} \omega_{2} \ldots \omega_{t})}{S _{t + 1} (\omega_{1} \omega_{2} \ldots \omega_{t} -) - S _{t} (\omega_{1} \omega_{2} \ldots \omega_{t})},
$$

which in turn implies that

$$
\begin{array}{l} \frac{Y _{t + 1} \left(\omega_{1} \omega_{2} \dots \omega_{t} +\right) - Y _{t} \left(\omega_{1} \omega_{2} \dots \omega_{t}\right)}{S _{t + 1} \left(\omega_{1} \omega_{2} \dots \omega_{t} +\right) - S _{t} \left(\omega_{1} \omega_{2} \dots \omega_{t}\right)} \tag {33} \\ = \frac{Y _{t + 1} \left(\omega_{1} \omega_{2} \dots \omega_{t} -\right) - Y _{t} \left(\omega_{1} \omega_{2} \dots \omega_{t}\right)}{S _{t + 1} \left(\omega_{1} \omega_{2} \dots \omega_{t} -\right) - S _{t} \left(\omega_{1} \omega_{2} \dots \omega_{t}\right)} \\ := \beta_{t} \left(\omega_{1} \omega_{2} \dots \omega_{t}\right). \\ \end{array}
$$

Notice that the common value of the fractions on the two sides of (33) depends only on  $\omega_{1}\omega_{2}\ldots \omega_{t}$ , so the definition of  $\beta_{t}$  is valid. The relation (29) is now evident.

# 10. APPENDIX: CONDITIONAL EXPECTATION

Let  $(\Omega, \mathcal{F}, P)$  be a probability space and let  $\mathcal{G}$  be a  $\sigma$ -algebra such that  $\mathcal{G} \subset \mathcal{F}$ .

Theorem 5. Let  $X$  be any random variable such that  $E|X| < \infty$ . Then there is a unique  $\mathcal{G}$ -measurable random variable  $E(X|\mathcal{G})$  such that, for every bounded  $\mathcal{G}$ -measurable random variable  $Y$ ,

$$
E (X Y) = E \left(E (X | \mathcal {G}) Y\right). \tag {34}
$$

The random variable  $E(X|\mathcal{G})$  is called the conditional expectation of  $X$  given  $\mathcal{G}$ . Theorem 5 is one of the major results of measure theory (it is roughly equivalent to the Radon-Nikodym theorem for finite measures), and you may find its proof in most X-rated probability texts.

It is often easy to guess the conditional expectation of a random variable  $X$  given a  $\sigma$ -algebra  $\mathcal{G}$ . Verification of the guess using the definition (34) may be tedious, as it requires considering all  $\mathcal{G}$ -measurable random variables  $Y$ . Fortunately, this is not always necessary: in fact, to prove that  $Z = E(X|\mathcal{G})$ , it is enough to verify that  $Z$  is  $\mathcal{G}$ -measurable, and that

$$
E \left(X \mathbf {1} _{A}\right) = E \left(Z \mathbf {1} _{A}\right) \quad \forall A \in \mathcal {G} \tag {35}
$$

(here  $\mathbf{1}_A$  is the indicator function of the event  $A$ ). This follows by a standard approximation argument of measure theory: (1) If (35) holds for all indicator random variables  $\mathbf{1}_A$ , then  $E(XY) = E(ZY)$  for all simple functions (linear combinations of indicator functions), by the linearity of expectation. (2) If  $E(XY) = E(ZY)$  holds for all simple functions  $Y$ , then it holds for all monotone limits  $Y$  of simple functions, by the Monotone Convergence Theorem. (3) All bounded  $\mathcal{G}$ -measurable random variables are monotone limits of  $\mathcal{G}$ -measurable simple functions. For further details, consult your local measure-theorist.

Example: The binary tree. Consider, once again, the  $T$ -period binary market, and let  $\{\mathcal{F}_t\}$  be the natural filtration. Let  $P$  be any probability measure on  $\mathcal{F}_T$  assigning positive probability to every scenario:

$$
\pi (\omega) := P (\{\omega \}) > 0 \quad \forall \omega \in \Omega .
$$

For each  $t \leq T$  and each scenario  $\omega = \omega_1\omega_2\ldots \omega_T$ , let  $\xi_t = \omega_1\omega_2\ldots \omega_t$  denote the partial scenario coinciding with  $\omega$  up to time  $t$ , and define

$$
\pi (\omega \mid \mathcal {F} _{t}) := \frac{\pi (\omega)}{\sum_{\omega^{\prime} \in F \left(\xi_{t}\right)} \pi \left(\omega^{\prime}\right)}. \tag {36}
$$

The sum in the denominator is over all full scenarios  $\omega'$  coinciding with  $\omega$  up to time  $t$ . Thus, the ratio is the conditional probability (as commonly defined in elementary discrete probability) of the scenario  $\omega$ , given that  $\omega$  is not ruled out by what happens in the first  $t$  periods. For any random variable  $X$  defined on  $\Omega$ , the conditional expectation  $E(X|\mathcal{F}_t)$  is obtained by averaging against the conditional probability distribution  $\pi(\omega|\mathcal{F}_t)$ , that is,

$$
E (X | \mathcal {F} _{t}) (\omega) = \sum_{\omega^{\prime} \in F (\xi_{t})} X (\omega) \pi (\omega \mid \mathcal {F} _{t}). \tag {37}
$$

Exercise: Verify that this is true; that is verify that the function of  $\omega$  defined by the right side of this equation is the unique  $\mathcal{F}_t$ -measurable random variable such that equation (34) holds for every random variable  $Y$ .

Properties of Conditional Expectation. One of the advantages of defining conditional expectation via equation (34) is that it makes the following elementary properties transparent.

(1) Linearity:  $E(aX + bY|\mathcal{G}) = aE(X|\mathcal{G}) + bE(Y|\mathcal{G})$  for all  $a, b \in \mathbb{R}$ .  
(2) Positivity: If  $X \geq 0$  then  $E(X|\mathcal{G}) \geq 0$ .  
(3) Stability: If  $X$  is  $\mathcal{G}$ -measurable, then  $E(XY|\mathcal{G}) = XE(Y|\mathcal{G})$ .  
(4) Independence Law: If  $X$  is independent of  $\mathcal{G}$  then  $E(X|\mathcal{G}) = EX$  is constant.  
(5) Tower Property: If  $\mathcal{H} \subset \mathcal{G}$  then  $E(X|\mathcal{H}) = E(E(X|\mathcal{G})|\mathcal{H})$ .  
(6) Projection Law:  $E(E(X|\mathcal{G})) = EX$ .  
(7) Jensen Inequalities: If  $\varphi : \mathbb{R} \to \mathbb{R}$  is convex and  $E|X| < \infty$  then

$$
E (\varphi (X)) \geq \varphi (E X) \text{an d}
$$

$$
E (\varphi (X) | \mathcal {G}) \geq \varphi (E (X | \mathcal {G})).
$$

With the exception of the Jensen inequality (7) and the Independence Law (4), all of these properties may be proved easily, using only Theorem 5. You should try to check as many as you can. The Independence Law is not difficult to establish for filtrations of finite probability spaces, but proof in general requires some facts from measure theory.

# 11. PROBLEMS

1. Bonds. A (zero-coupon) bond with maturity M is a contract that pays the owner \$1 at the maturity date M. Consider a T-period market in which bonds of all maturities M = 1, 2, …, T are traded; denote by B_t,M = B_t,M(ω) the price (in dollars) at time t of one maturity-M bond.

(a) What is the riskless asset in this market?  
(b) A coupon-bearing bond is a contract that pays the owner an amount  $C_t$  dollars at time  $t$ , for  $t = 1, 2, \ldots, T$ . Find a formula for the price at time  $t = 0$  of such a contract.

(c) Let  $\pi$  be an equilibrium distribution for the market, and let  $E_{\pi}$  denote the expectation operator for the distribution  $\pi$ . For each  $t = 0,1,2,\ldots,T$ , define  $Z_{t} = \prod_{j=0}^{t-1} B_{j,j+1}$ . Prove that the sequence  $Z_{t}$  is a martingale relative to the usual filtration.

2. Gambler's Ruin, Revisited. The game is exactly the same as described in section 8 except that the coin is unfair: the probability that it comes up  $H$  is  $p > 1/2$ , and the probability that it comes up  $T$  is  $q = 1 - p < 1/2$ . The problem is, once again, to determine the probability that FATS exhausts his initial fortune before SLIM exhausts his.

(a) Define  $X_{i}$  and  $S_{n}$  as in section 8. Show that

$$
Z _{n} := \left(\frac{q}{p}\right) ^{S _{n}}
$$

is a martingale relative to the usual filtration.

(b) Use the Optional Stopping Theorem for the martingale  $Z_{n}$  to determine the probability that FATS runs out of money before he bankrupts SLIM.

3. Prove Proposition 1 in the notes.
4. Prove Proposition 2 in the notes.
5. A Barrier Option: This contract pays the owner 1 share of STOCK at the first time t = 1,2,… that the share price of STOCK exceeds $A, or at t = T if the share price of STOCK does not exceed $A at any t = 1,2,…T. Evaluate the market price of this contract at t = 0 in two different ways:

(a) by an arbitrage argument: and  
(b) using the Optional Sampling Theorem of martingale theory.

6. American Call Option: The American call with strike K is a contract that gives the owner the right to purchase one share of STOCK for $K at any time t = 1,2,…,T. (The European call may only be exercised at t = T.) The owner's decision about when to exercise the option must be based only on information available to him/her at the exercise time — in mathematical terms, the time τ at which the option is exercised must be a stopping time relative to the natural filtration.

Assume that there is a riskless asset BOND whose rate of return is  $r > 0$ . Use the Jensen inequality for conditional expectation to prove that early exercise of the American call is suboptimal. Thus, the American call and the European call have the same market value.

7. American Put Option: The American put with strike K is a contract that gives the owner the right to sell one share of STOCK for $K at any time t = 1,2,…,T. Assume that there is a riskless asset BOND whose rate of return is r > 0. Give an example to show that, in certain markets and in certain circumstances, it may be better to exercise the put option early.

HINT: Consider a homogeneous 2-period binary market. Show that for some values of  $u, d, r$  and  $K$ , you get a higher expected payoff by exercising the put at  $t = 1$  when the partial scenario is - than waiting until  $t = 2$ . Note that if  $r = 0$ , then there is no advantage to early exercise.

8. Doob Decomposition Theorem: Let  $\{X_{n}\}_{n\geq 0}$  be a submartingale relative to the filtration  $\{\mathcal{F}_n\}_{n\geq 0}$ . Prove that there is an increasing, predictable sequence  $\{Y_{n}\}_{n\geq 1}$  and a martingale  $\{Z_{n}\}_{n\geq 0}$  such that

$$
X _{n} = Z _{n} + Y _{n},
$$

NOTE: The sequence  $\{Y_{n}\}$  is called the compensator for the submartingale  $\{X_{n}\}$ . The terminology should help you to guess how to define the random variables  $Z_{n}$  and  $Y_{n}$ . Once you guess what the decomposition is, it should be easy to check, using the basic properties of conditional expectation, that the sequences  $Z_{n}$  and  $Y_{n}$  have the desired properties.

# LECTURE 5: BROWNIAN MOTION

# 1. PROLOGUE

We have seen in previous lectures that, for discrete multiperiod markets which admit no arbitrages, there exist equilibrium distributions. Under an equilibrium distribution, the discounted price process of any traded or tradeable asset is a martingale under the natural filtration. In fact, this is true in even greater generality — the hypothesis that the market be discrete (that is, that there be only finitely many market scenarios) is unnecessary. The proof of this more general statement (which we shall not give) follows essentially the same strategy as in the discrete case, and uses little more than the technical properties of conditional expectation given in Lecture 3.

In real markets, trading takes place in continuous time. Problems of pricing and hedging derivative securities in continuous-time markets require continuous-time (and therefore necessarily non-discrete) models of markets and securities prices. This is where Brownian motion and the Ito calculus enter the picture. This lecture and the next will be devoted to introducing the mathematical theory of these objects.

One might wish to have some purely economic explanation for the occurrence of Brownian motion and Ito processes in the theory of asset pricing before investing the substantial effort necessary to master the basics of their mathematical theory. Briefly, the explanation is this. In equilibrium, the discounted price process of any tradeable asset, observed at discrete times, is a martingale; therefore, in continuous time, it is also a martingale (see below for a discussion of continuous-time martingales). Moreover, the prices of traded assets seem to vary continuously with time<sup>1</sup> and seem to have finite quadratic variation (see below). Brownian motion now rears its head for the following basic reason, a fundamental theorem of PAUL LÉVY:

Theorem 1. Every continuous-time martingale with continuous paths and finite quadratic variation is a time-changed Brownian motion.

The proof is beyond the scope of this course. (You may find it in KARATZAS & SHREVE, Brownian Motion and Stochastic Calculus, ch. 2.) We quote it here merely to justify the introduction of Brownian motion.

# 2. BROWNIAN MOTION: DEFINITION

Definition 1. A standard Brownian (or a standard Wiener process) is a stochastic process  $\{W_t\}_{t \geq 0+}$  (that is, a family of random variables  $W_t$ , indexed by nonnegative real numbers  $t$ , defined on a common probability space  $(\Omega, \mathcal{F}, P)$ ) with the following properties:

(1)  $W_{0} = 0$  
(2) With probability 1, the function  $t \to W_t$  is continuous in  $t$ .  
(3) The process  $\{W_t\}_{t \geq 0}$  has stationary, independent increments.  
(4) The increment  $W_{t+s} - W_s$  has the NORMAL(0,t) distribution.

The term independent increments means that for every choice of nonnegative real numbers

$$
0 \leq s _{1} <   t _{1} \leq s _{2} <   t _{2} \leq \dots \leq s _{n} <   t _{n} <   \infty ,
$$

the increment random variables

$$
W _{t _{1}} - W _{s _{1}}, W _{t _{2}} - W _{s _{2}}, \dots , W _{t _{n}} - W _{s _{n}}
$$

are jointly independent; the term stationary increments means that for any  $0 < s, t < \infty$  the distribution of the increment  $W_{t+s} - W_s$  has the same distribution as  $W_t - W_0 = W_t$ .

It should not be obvious that properties (1)-(4) in the definition of a standard Brownian motion are mutually consistent, so it is not a priori clear that a standard Brownian motion exists. (The main issue is to show that properties (3)-(4) do not preclude the possibility of continuous paths.) That it does exist was first proved by N. WIENER in about 1920. But notice that properties (3) and (4) are compatible. This follows from the following elementary property of the normal distributions: If  $X, Y$  are independent, normally distributed random variables with means  $\mu_{X}, \mu_{Y}$  and variances  $\sigma_{X}^{2}, \sigma_{Y}^{2}$ , then the random variable  $X + Y$  is normally distributed with mean  $\mu_{X} + \mu_{Y}$  and variance  $\sigma_{X}^{2} + \sigma_{Y}^{2}$ .

# 3. BROWNIAN MOTION AS A LIMIT OF RANDOM WALKS

One of the many reasons that Brownian motion is important in probability theory is that it is, in a certain sense, a limit of rescaled simple random walks. Let  $\xi_1, \xi_2, \ldots$  be a sequence of independent, identically distributed random variables with mean 0 and variance 1. For each  $n \geq 1$  define a continuous-time stochastic process  $\{W_n(t)\}_{t \geq 0}$  by

$$
W _{n} (t) = \frac{1}{\sqrt{n}} \sum_{1 \leq j \leq \lfloor n t \rfloor} \xi_{j} \tag {1}
$$

This is a random step function with jumps of size  $\xi_k / \sqrt{n}$  at times  $k / n$ , where  $k \in \mathbb{Z}_+$ . Since the random variables  $\xi_j$  are independent, the increments of  $W_n(t)$  are independent. Moreover, for large  $n$  the distribution of  $W_n(t + s) - W_n(s)$  is close to the NORMAL  $(0, t)$  distribution, by the Central Limit theorem. Thus, it requires only a small leap of faith to believe that, as  $n \to \infty$ , the distribution of the random function  $W_n(t)$  approaches (in a certain sense)<sup>2</sup> that of a standard Brownian motion.

Why is this important? First, it explains, at least in part, why the Wiener process arises so commonly in nature. Many stochastic processes behave, at least for long stretches of time, like random walks with small but frequent jumps. The argument above suggests that such processes will look, at least approximately, and on the appropriate time scale, like Brownian motion.

Second, it suggests that many important "statistics" of the random walk will have limiting distributions, and that the limiting distributions will be the distributions of the corresponding statistics of Brownian motion. The simplest instance of this principle is the central limit theorem: the distribution of  $W_{n}(1)$  is, for large  $n$  close to that of  $W(1)$  (the gaussian distribution with mean 0 and variance 1). Other important instances do not follow so easily from the central limit theorem. For example, the distribution of

$$
M _{n} (t) := \max  _{0 \leq s \leq t} W _{n} (t) = \max  _{0 \leq k \leq n t} \frac{1}{\sqrt{n}} \sum_{1 \leq j \leq k} \xi_{j} \tag {2}
$$

converges, as  $n\to \infty$  , to that of

$$
M (t) := \max  _{0 \leq s \leq t} W (t). \tag {3}
$$

Similarly, for any  $a > 0$  the distribution of

$$
\tau_{n} (a) := \min  \{t \geq 0: W _{n} (t) \geq a \} \tag {4}
$$

approaches, as  $n\to \infty$  , that of

$$
\tau (a) := \min  \{t \geq 0: W (t) = a \}. \tag {5}
$$

The distributions of  $M(t)$  and  $\tau(a)$  will be calculated below.

# 4. TRANSITION PROBABILITIES

The mathematical study of Brownian motion arose out of the recognition by Einstein that the random motion of molecules was responsible for the macroscopic phenomenon of diffusion. Thus, it should be no surprise that there are deep connections between the theory of Brownian motion and parabolic partial differential equations such as the heat and diffusion equations. At the root of the connection is the Gauss kernel, which is the transition probability function for Brownian motion:

$$
P (W _{t + s} \in d y | W _{s} = x) := p _{t} (x, y) d y = \frac{1}{\sqrt{2 \pi t}} \exp \{- (y - x) ^{2} / 2 t \} d y. \tag {6}
$$

This equation follows directly from properties (3)-(4) in the definition of a standard Brownian motion, and the definition of the normal distribution. The function  $p_t(y|x) = p_t(x,y)$  is called the Gauss kernel, or sometimes the heat kernel. (In the parlance of the PDE folks, it is the fundamental solution of the heat equation). Here is why:

Theorem 2. Let  $f: \mathbb{R} \to \mathbb{R}$  be a continuous function of (say) polynomial growth at infinity. Then the unique (continuous) solution  $u_t(x)$  to the initial value problem

$$
\frac{\partial u}{\partial t} = \frac{1}{2} \frac{\partial^{2} u}{\partial x ^{2}} \tag {7}
$$

$$
u _{0} (x) = f (x) \tag {8}
$$

is given by

$$
u _{t} (x) = E f \left(W _{t} ^{x}\right) = \int_{y = - \infty} ^{\infty} p _{t} (x, y) f (y) d y. \tag {9}
$$

Here  $W_{t}^{x}$  is a Brownian motion started at  $x$ .

The equation (7) is called the heat equation. That the PDE (7) has only one solution that satisfies the initial condition (8) follows from the maximum principle: see a PDE text if you are interested. The more important thing is that the solution is given by the expectation formula (9). To see that the right side of (9) actually does solve (7), take the partial derivatives in the PDE (7) under the integral in (9). You then see that the issue boils down to showing that

$$
\frac{\partial p _{t} (x , y)}{\partial t} = \frac{1}{2} \frac{\partial^{2} p _{t} (x , y)}{\partial x ^{2}}. \tag {10}
$$

Exercise: Verify this.

# 5. SYMMETRIES AND SCALING LAWS

Proposition 1. Let  $\{W(t)\}_{t\geq 0}$  be a standard Brownian motion. Then each of the following processes is also a standard Brownian motion:

$$
\{- W (t) \} _{t \geq 0} \tag {11}
$$

$$
\{W (t + s) - W (s) \} _{t \geq 0} \tag {12}
$$

$$
\left\{a W \left(t / a ^{2}\right) \right\} _{t \geq 0} \tag {13}
$$

$$
\{t W (1 / t) \} _{t \geq 0}. \tag {14}
$$

Exercise: Prove this.

These properties have important ramifications. The most basic of these involve the maximum and minimum random variables  $M(t)$  and  $M^{-}(t)$  defined by

$$
M (t) := \max  \{W (s): 0 \leq s \leq t \} \quad \text{an d} \tag {15}
$$

$$
M ^{-} (t) := \min  \{W (s): 0 \leq s \leq t \} \tag {16}
$$

These are well-defined, because the Wiener process has continuous paths, and continuous functions always attain their maximal and minimal values on compact intervals. Now observe that if the path  $W(s)$  is replaced by its reflection  $-W(s)$  then the maximum and the minimum are interchanged and negated. But since  $-W(s)$  is again a Wiener process, it follows that  $M(t)$  and  $-M^{-}(t)$  have the same distribution:

$$
M (t) \stackrel {\mathcal {D}} {=} - M ^{-} (t). \tag {17}
$$

Property (13) is called the Brownian scaling property. It is perhaps the most useful elementary tool in the study of the Wiener process. As a first example, consider its implications for the distributions of the maximum random variables  $M(t)$ . Fix  $a > 0$ , and define

$$
W ^{*} (t) = a W \left(t / a ^{2}\right) \quad \text{an d}
$$

$$
\begin{array}{l} M^{*}(t) = \max_{0\leq s\leq t}W^{*}(s) \\ = \max  _{0 \leq s \leq t} a W (s / a ^{2}) \\ = a M \left(t / a ^{2}\right). \\ \end{array}
$$

By the Brownian scaling property,  $W^{*}(s)$  is a standard Brownian motion, and so the random variable  $M^{*}(t)$  has the same distribution as  $M(t)$ . Therefore,

$$
M (t) \stackrel {\mathcal {D}} {=} a M \left(t / a ^{2}\right). \tag {18}
$$

On first sight, this relation appears rather harmless. However, as we shall see in section 8, it implies that the sample paths  $W(s)$  of the Wiener process are, with probability one, nondifferentiable at  $s = 0$ .

Exercise: Use Brownian scaling to deduce a scaling law for the first-passage time random variables  $\tau(a)$  defined as follows:

$$
\tau (a) = \min  \{t: W (t) = a \} \tag {19}
$$

or  $\tau(a) = \infty$  on the event that the process  $W(t)$  never attains the value  $a$ .

# 6. THE BROWNIAN FILTRATION AND THE MARKOV PROPERTY

Property (12) is a rudimentary form of the Markov property of Brownian motion. The Markov property asserts something more: not only is the process  $\{W(t + s) - W(s)\}_{t\geq 0}$  a standard Brownian motion, but it is independent of the path  $\{W(r)\}_{0\leq r\leq s}$  up to time  $s$ . This may be stated more precisely using the language of  $\sigma$ -algebras. Define

$$
\mathcal {F} _{t} := \sigma (\{W (r) \} _{0 \leq r \leq s}) \quad \text{an d} \quad \mathcal {F} _{\infty} := \sigma (\{W (r) \} _{0 \leq r <   \infty}); \tag {20}
$$

for each  $t$ ,  $\mathcal{F}_t$  is the  $\sigma$ -algebra consisting of all events that are "observable" by time  $t$ . Formally,  $\mathcal{F}_t$  is defined to be the smallest  $\sigma$ -algebra containing all events of the form  $\{W(r) \leq a\}$ , where  $a \in \mathbb{R}$  and  $r \leq s$ . The collection  $\{\mathcal{F}_t\}_{t \geq 0}$  is called the Brownian filtration, or the standard filtration. Observe that it is, in fact, a filtration: that is, for any pair  $s < t$  it is the case that  $\mathcal{F}_s \subset \mathcal{F}_t$ .

Example: For each  $t \geq 0$  the random variable  $M(t)$  is measurable relative to  $\mathcal{F}_t$ . This means that, for every  $a \in \mathbb{R}$ , the event  $\{M(t) > a\}$  is an element of  $\mathcal{F}_t$ . To see this, observe that by path-continuity,

$$
\{M (t) > a \} = \bigcup_{s \in \mathbb {Q}: 0 \leq s \leq t} \{W (s) > a \}. \tag {21}
$$

Here  $\mathbb{Q}$  denotes the set of rational numbers. Because  $\mathbb{Q}$  is a countable set, the union in (21) is a countable union. Since each of the events  $\{W(s) > a\}$  in the union is an element of the  $\sigma$ -algebra  $\mathcal{F}_t$ , the event  $\{M(t) > a\}$  must also be an element of  $\mathcal{F}_t$ .

Proposition 2. (Markov Property) Let  $\{W(t)\}_{t\geq 0}$  be a standard Brownian motion,  $\{\mathcal{F}_t\}_{t\geq 0}$  the standard filtration, and for  $s > 0, t\geq 0$  define  $W^{*}(t) = W(t + s) - W(s)$  and let  $\{\mathcal{F}_t^*\}_{t\geq 0}$  be its filtration. Then for each  $t > 0$  the  $\sigma$ -algebras  $\mathcal{F}(s)$  and  $\mathcal{F}^* (t)$  are independent.

Corollary 1. The random variables  $M(s)$  and  $M^{*}(t) = \max_{0\leq r\leq t}W^{*}(r)$  are independent.

Proof of the Markov Property. The Markov Property is nothing more than a sophisticated restatement of the independent increments property of Brownian motion. One first uses independent increments to show that certain types of events in the two  $\sigma$ -algebras are independent: in particular,

$$
A = \cap_{j = 1} ^{n} \left\{W \left(s _{j}\right) - W \left(s _{j - 1}\right) \leq x _{j} \right\} \in \mathcal {F} _{s} \quad \text{an d}
$$

$$
B = \cap_{j = 1} ^{m} \left\{W \left(t _{j} + s\right) - W \left(t _{j - 1} + s\right) \leq y _{j} \right\} \in \mathcal {F} _{t} ^{*}
$$

are independent. Events of type  $A$  generate the  $\sigma$ -algebra  $\mathcal{F}_s$ , and events of type  $B$  generate the  $\sigma$ -algebra  $\mathcal{F}_t^*$  (by definition!). A standard approximation procedure in measure theory (based on the so-called " $\pi - \lambda$ " theorem — see BILLINGSLEY, Probability and Measure) now allows one to conclude that the  $\sigma$ -algebras  $\mathcal{F}(s)$  and  $\mathcal{F}^*(t)$  are independent.

The Markov property has an important generalization called the Strong Markov Property, which is the most important tool in the study of the Wiener process. This generalization involves the notion of a stopping time for the Brownian filtration. A stopping time is defined to be a nonnegative random variable  $\tau$  such that for each (nonrandom)  $t \geq 0$  the event  $\{\tau \leq t\}$  is an element of the  $\sigma$ -algebra  $\mathcal{F}_t$ .

Example:  $\tau(a) := \min \{t : W(t) = a\}$  is a stopping time. To see this, observe that, because the paths of the Wiener process are continuous, the event  $\{\tau(a) \leq t\}$  is identical to the event  $\{M(t) \geq a\}$ . We have already shown that this event is an element of  $\mathcal{F}_t$ .

Associated with any stopping time  $\tau$  is a  $\sigma$ -algebra  $\mathcal{F}_{\tau}$ , defined to be the collection of all events  $B$  such that  $B \cap \{\tau \leq t\} \in \mathcal{F}_t$ . Informally,  $\mathcal{F}_{\tau}$  consists of all events that are "observable" by time  $\tau$ .

Example: Let  $\tau = \tau_{a}$  as above, and let  $B$  be the event that the Brownian path  $W(t)$  hits  $b$  before it hits  $a$ . Then  $B \in \mathcal{F}_{\tau}$ .

Theorem 3. (Strong Markov Property) Let  $\{W(t)\}_{t\geq 0}$  be a standard Brownian motion with filtration  $\{\mathcal{F}_t\}$ , and let  $\tau$  be a stopping time relative to this filtration, with associated stopping  $\sigma$ -algebra  $\mathcal{F}_{\tau}$ . For  $t\geq 0$ , define

$$
\left. \quad W ^{*} (t) = W (t + \tau) - W (\tau), \right. \tag {22}
$$

and let  $\{\mathcal{F}_t^*\}_{t\geq 0}$  be the filtration of the process  $\{W^{*}(t)\}_{t\geq 0}$ . Then

(a)  $\{W^{*}(t)\}_{t > 0}$  is a standard Brownian motion; and  
(b) For each  $t > 0$ , the  $\sigma$ -algebra  $\mathcal{F}_t^*$  is independent of  $\mathcal{F}_{\tau}$ .

Details of the proof are omitted (see, for example, KARATZAS & SHREVE, pp. 79ff). Instead, let's discuss briefly the meaning of the statement. In essence, the theorem says that the post- $\tau$  process  $W^{*}(t)$  is itself a standard Brownian motion, and that it is independent of everything that happened up to time  $\tau$ . Thus, in effect, the Brownian motion "begins anew" at time  $\tau$ , paying no further attention to what it did before  $\tau$ . Note that simple random walk (the discrete-time process in which, at each time  $n$  one tosses a fair coin to decide whether to move up or down one unit) has an analogous property. If, for instance, one waits until first arriving at some integer  $k$  and then continues tossing the coin, the coin tosses after the first arrival at  $k$  are independent of the tosses prior to the first arrival. This is not difficult to show:

Exercise: Formulate and prove a Strong Markov Property for simple random walk.

The hypothesis that  $\tau$  be a stopping time is essential for the truth of the Strong Markov Property. Mistaken application of the Strong Markov Property may lead to intricate and sometimes subtle contradictions. Here is an example: Let  $T$  be the first time that the Wiener path reaches its maximum value up to time 1, that is,

$$
T = \min  \{t: W (t) = M (1) \}.
$$

Observe that  $T$  is well-defined, by path-continuity, which assures that the set of times  $t \leq 1$  such that  $W(t) = M(1)$  is closed and nonempty. Since  $M(1)$  is the maximum value attained by the Wiener path up to time 1, the post- $T$  path  $W^{*}(s) = W(T + s) - W(T)$  cannot enter the positive half-line  $(0,\infty)$  for  $s \leq 1 - T$ . Later we will show that  $T < 1$  almost surely; thus, almost surely,  $W^{*}(s)$  does not immediately enter  $(0,\infty)$ . Now if the Strong Markov Property were true for the random time  $T$ , then it would follow that, almost surely,  $W(s)$  does not immediately enter  $(0,\infty)$ . Since  $-W(s)$  is also a Wiener process, we may infer that, almost surely,  $W(s)$  does not immediately enter  $(-\infty,0)$ , and so  $W(s) = 0$  for all  $s$  in a (random) time interval of positive duration beginning at 0. But this is impossible, because with probability one,

$$
W (s) \neq 0 \quad \text{fo ra ll ra ti on al ti me s} s > 0.
$$

# 7. THE REFLECTION PROPERTY AND FIRST-PASSAGE TIMES

Proposition 3.

$$
P \{M (t) \geq a \} = P \left\{\tau_{a} <   t \right\} = 2 P \{W (t) > a \} = 2 - 2 \Phi (a / \sqrt{t}). \tag {25}
$$

Proof. The argument is based on a symmetry principle that may be traced back to the French mathematician D. ANDRE, and is often referred to as the reflection principle. The essential point of the argument is this: if  $\tau(a) < t$ , then  $W(t)$  is just as likely to be above the level  $a$  as to below the level  $a$ . Justification of this claim requires the use of the Strong Markov Property. First, observe that  $\tau(a) \wedge t$  is a stopping time. Thus, by the strong Markov property, the post- $\tau_a \wedge t$  process is a standard Brownian motion independent of the path up to time  $\tau_a \wedge t$  (and, therefore, independent of  $\tau_a \wedge t$ ). It follows that, for any  $s < t$ , the conditional distribution of  $W(t) - W(s)$  given that  $\tau_a = s$  is Gaussian with mean 0 and variance  $t - s > 0$ , and so, by the symmetry of the Gaussian distribution,

$$
P (W (t) - W (\tau_{a}) > 0 \mid \tau_{a} = s) = P (W (t) - W (\tau_{a}) <   0 \mid \tau_{a} = s) = 1 / 2.
$$

Integration over  $0 < s < t$  against the distribution of  $\tau(a)$  gives

$$
P \{W (t) - W (\tau_{a}) > 0 \mathrm{an d} \tau_{a} <   t \} = \frac{1}{2} P \{\tau_{a} <   t \}.
$$

But the event  $\{W(t) - W(\tau_a) > 0\} \cap \{\tau_a < t\}$  coincides with the event  $\{W(t) > a\}$ , because (i) if  $\tau_a < t$  then, since  $W(\tau_a) = a$ , the inequality  $W(t) - W(\tau_a) > 0$  implies  $W(t) > a$ ; and (ii) if  $W(t) > a$  then the Intermediate Value Theorem of calculus and the path-continuity of  $W(s)$  implies that  $\tau_a < t$ . This proves that

$$
P \left\{\tau_{a} <   t \right\} = 2 P \left\{W (t) > a \right\} = 2 \left(1 - \Phi \left(a / \sqrt{t}\right)\right).
$$

Because the expression on the right side of this equation is a continuous function of  $t$ , it follows that  $P\{\tau(a) < t\} = P\{\tau(a) \leq t\}$ . Finally, since the events  $\{\tau(a) \leq t\}$  and  $\{M(t) \geq a\}$  are the same, we have  $P\{\tau(a) \leq t\} = P\{M(t) \geq a\}$ .

Corollary 2. The first-passage time random variable  $\tau(a)$  is almost surely finite, and has the one-sided stable probability density function of index  $1/2$ :

$$
f (t) = \frac{a e ^{- a ^{2} / 2 t}}{\sqrt{2 \pi t ^{3}}}. \tag {29}
$$

There is a more sophisticated form of the reflection principle that is useful in certain calculations. Set  $\tau = \tau(a)$ , where  $\tau(a)$  is the first passage time to the value  $a$ . The random variable  $\tau$  is a stopping time, and we have now shown that it is finite with probability one. By the Strong Markov Property, the post- $\tau$  process

$$
W ^{*} (t) := W (\tau + t) - W (\tau) \tag {30}
$$

is a Wiener process, and is independent of the stopping field  $\mathcal{F}_{\tau}$ . Consequently,  $\{-W^{*}(t)\}_{t\geq 0}$  is also a Wiener process, and is also independent of the stopping field  $\mathcal{F}_{\tau}$ . Thus, if we were to run the original Wiener process  $W(s)$  until the time  $\tau$  of first passage to the value  $a$  and then attach not  $W^{*}$  but instead its reflection  $-W^{*}$ , we would again obtain a Wiener process. This new process is formally defined as follows:

$$
\begin{array}{l} \tilde {W} (s) = W (s) \quad \text{fo r} s \leq \tau , \tag {31} \\ = 2 a - W (s) \quad \text{fo r} s \geq \tau . \\ \end{array}
$$

Proposition 4. (Reflection Principle) If  $\{W(t)\}_{t\geq 0}$  is a Wiener process, then so is  $\{\tilde{W} (t)\}_{t\geq 0}$ .

Proof. An exercise for the interested reader.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e607bf8b-adbd-4429-b019-7daf8f2ae768/d340f04335b13d7fb1498f466a34b56fffab9588a71413d2a030c85e3f6b9990.jpg)

The analogous property for the simple random walk is worth noting. Simple random walk is performed by repeatedly tossing a fair coin, moving one step to the right on every H, and one step to the left on every T. The simple random walk with reflection in the level  $a$ , for an integer value  $a$ , is gotten by changing the law of motion at the time of first passage to  $a$ : after this time, one moves one step to the left on every H, and one step to the right on every T. It is fairly obvious (and easy to prove) that this modification does not change the "statistics" of the random walk.

The Reflection Principle for Brownian motion, as formalized in Proposition 4, allows one to calculate the joint distribution of  $M(t)$  and  $W(t)$ :

# Corollary 3.

$$
P \{M (t) \geq a \text{an d} W (t) \leq a - b \} = P \{W (t) \geq a + b \quad \forall a, b > 0. \tag {32}
$$

Proof. Because the paths  $W(s)$  and  $\tilde{W}(s)$  coincide up to time  $\tau$ , the event that  $M(t) \geq a$  coincides with the event  $\tilde{M}(t) \geq a$ , where  $\tilde{M}(t)$  is defined to be the maximum of the path  $\tilde{W}(s)$  for  $0 \leq s \leq t$ . Thus, by (31),

$$
\{M (t) \geq a \mathrm{an d} W (t) \leq a - b \} = \{\tilde {M} (t) \geq a \mathrm{an d} \tilde {W} (t) \geq a + b \} = \{\tilde {W} (t) \geq a + b \}.
$$

The Reflection Principle implies that the events  $\{\tilde{W}(t) \geq a + b\}$  and  $\{W(t) \geq a + b\}$  have the same probability, and so the corollary follows.

# Corollary 4.

$$
P \{M (t) \in d a \text{an d} W (t) \in a - d b \} = \frac{2 (a + b) \exp \left\{- (a + b) ^{2} / 2 t \right\}}{(2 \pi) ^{1 / 2} t} d a d b \tag {34}
$$

# 8. BEHAVIOR OF BROWNIAN PATHS

In the latter half of the nineteenth century, mathematicians began to encounter (and invent) some rather strange objects. Weierstrass produced a continuous function that is nowhere differentiable (more on this later). Cantor constructed a subset  $C$  (the "Cantor set") of the unit interval with zero area (Lebesgue measure) that is nevertheless in one-to-one correspondence with the unit interval, and has the further disconcerting property that between any two points of  $C$  lies an interval of positive length totally contained in the complement of  $C$ . Not all mathematicians were pleased by these new objects. Hermite, for one, remarked that he was "revolted" by this plethora of nondifferentiable functions and bizarre sets.

With Brownian motion, the strange becomes commonplace. With probability one, the sample paths are nowhere differentiable, and the zero set  $\mathcal{Z} := \{t \leq 1 : W(t) = 0\}$  is a homeomorphic image of the Cantor set. Complete proofs of these facts are beyond the scope of these notes. However, some closely related facts may be established using only the formula (25) and elementary arguments.

# 8.1. Zero Set of a Brownian Path. The zero set is

$$
\mathcal {Z} = \{t \geq 0: W (t) = 0 \}. \tag {35}
$$

Because the path  $W(t)$  is continuous in  $t$ , the set  $\mathcal{Z}$  is closed. Furthermore, with probability one the Lebesgue measure of  $\mathcal{Z}$  is 0, because Fubini's theorem implies that the expected Lebesgue measure

of  $\mathcal{Z}$  is 0:

$$
\begin{array}{l} E | \mathcal {Z} | = E \int_{0} ^{\infty} \mathbf {1} _{\{0 \}} (W _{t}) d t \\ = \int_{0} ^{\infty} E \mathbf {1} _{\{0 \}} (W _{t}) d t \\ = \int_{0} ^{\infty} P \left\{W _{t} = 0 \right\} d t \\ = 0, \\ \end{array}
$$

where  $|\mathcal{Z}|$  denotes the Lebesgue measure of  $\mathcal{Z}$ . Observe that for any fixed (nonrandom)  $t > 0$ , the probability that  $t \in \mathcal{Z}$  is 0, because  $P\{W(t) = 0\} = 0$ . Hence, because  $\mathbb{Q}_{+}$  (the set of positive rationals) is countable,

$$
P \left\{\mathbb {Q} _{+} \cap \mathcal {Z} \neq \emptyset \right\} = 0. \tag {36}
$$

Proposition 5. With probability one, the Brownian path  $W(t)$  has infinitely many zeros in every time interval  $(0,\varepsilon)$ , where  $\varepsilon >0$ .

Proof. First we show that for every  $\varepsilon > 0$  there is, with probability one, at least one zero in the time interval  $(0, \varepsilon)$ . Recall (equation (11)) that the distribution of  $M^{-}(t)$ , the minimum up to time  $t$ , is the same as that of  $-M(t)$ . By formula (25), the probability that  $M(\varepsilon) > 0$  is one; consequently, the probability that  $M^{-}(\varepsilon) < 0$  is also one. Thus, with probability one,  $W(t)$  assumes both negative and positive values in the time interval  $(0, \varepsilon)$ . Since the path  $W(t)$  is continuous, it follows, by the Intermediate Value theorem, that it must assume the value 0 at some time between the times it takes on its minimum and maximum values in  $(0, \varepsilon]$ .

We now show that, almost surely,  $W(t)$  has infinitely many zeros in the time interval  $(0, \varepsilon)$ . By the preceding paragraph, for each  $k \in \mathbb{N}$  the probability that there is at least one zero in  $(0, 1 / k)$  is one, and so with probability one there is at least one zero in every  $(0, 1 / k)$ . This implies that, with probability one, there is an infinite sequence  $t_n$  of zeros converging to zero: Take any zero  $t_1 \in (0, 1)$ ; choose  $k$  so large that  $1 / k < t_1$ ; take any zero  $t_2 \in (0, 1 / k)$ ; and so on.

Proposition 6. With probability one, the zero set  $\mathcal{Z}$  of a Brownian path is a perfect set, that is,  $\mathcal{Z}$  is closed, and for every  $t \in \mathcal{Z}$  there is a sequence of distinct elements  $t_n \in \mathcal{Z}$  such that  $\lim_{n \to \infty} t_n = t$ .

Proof. That  $\mathcal{Z}$  is closed follows from path-continuity, as noted earlier. Fix a rational number  $q > 0$  (nonrandom), and define  $\nu = \nu_q$  to be the first time  $t \geq q$  such that  $W(t) = 0$ . Because  $W(q) \neq 0$  almost surely, the random variable  $\nu_q$  is well-defined and is almost surely strictly greater than  $q$ . By the Strong Markov Property, the post- $\nu_q$  process  $W(\nu_q + t) - W(\nu_q)$  is, conditional on the stopping field  $\mathcal{F}_\nu$ , a Wiener process, and consequently, by Proposition 5, it has infinitely many zeros in every time interval  $(0, \varepsilon)$ , with probability one. Since  $W(\nu_q) = 0$ , and since the set of rationals is countable, it follows that, almost surely, the Wiener path  $W(t)$  has infinitely many zeros in every interval  $(\nu_q, \nu_q + \varepsilon)$ , where  $q \in \mathbb{Q}$  and  $\varepsilon > 0$ .

Now let  $t$  be any zero of the path. Then either there is an increasing sequence  $t_n$  of zeros such that  $t_n \to t$ , or there is a real number  $\varepsilon > 0$  such that the interval  $(t - \varepsilon, t)$  is free of zeros. In the latter case, there is a rational number  $q \in (t - \varepsilon, t)$ , and  $t = \nu_q$ . In this case, by the preceding paragraph, there must be a decreasing sequence  $t_n$  of zeros such that  $t_n \to t$ .

It may be shown that every compact perfect set of Lebesgue measure zero is homeomorphic to the Cantor set. (This is not especially difficult - consult your local mathematician for assistance.) Thus, with probability one, the set of zeros of the Brownian path  $W(t)$  in the unit interval is a homeomorphic image of the Cantor set.

# 8.2. Nondifferentiability of Paths.

Proposition 7. For each  $t \geq 0$ , the Brownian path is almost surely not differentiable at  $t$ .

Note: It follows that, with probability one, the Brownian path is not differentiable at any rational time  $t \geq 0$ . DVORETSKY, ERDOS, and KAKUTANI proved an even stronger statement: with probability one, the Brownian path is nowhere differentiable. This, like Proposition 7, is ultimately a consequence of Brownian scaling.

Proof. By the Markov property, it suffices to prove that the Brownian path is almost surely not differentiable at  $t = 0$ . Suppose that it were: then the difference quotients  $W(t) / t$  would be bounded for  $t$  in some neighborhood of 0, that is, for some  $A < \infty$  and  $\varepsilon > 0$  it would be the case that

$$
W (t) <   A t \quad \text{fo ra ll} 0 \leq t <   \varepsilon .
$$

Fix an integer  $A > 0$ . By formula (25),

$$
P \{M (t) <   A t \} = 2 - 2 \Phi (A t / \sqrt{t}) = 2 - 2 \Phi (A \sqrt{t}) \longrightarrow 0
$$

as  $t \to 0$ . Consequently, for each fixed  $A > 0$ , the probability that  $W(t) < At$  for all  $t \leq \varepsilon$  is zero. Since the union of countably many events of probability zero has probability zero, it follows that for any  $\varepsilon > 0$  the event that  $W(t) / t$  remains bounded for  $0 \leq t < \varepsilon$  has probability zero.

# 9. WALD IDENTITIES FOR BROWNIAN MOTION

Proposition 8. Let  $\{W(t)\}_{t\geq 0}$  be a standard Wiener process, and let  $\tau$  be a bounded stopping time. Then

$$
E W (\tau) = 0; \tag {37}
$$

$$
E W (\tau) ^{2} = E \tau ; \tag {38}
$$

$$
E \exp \left\{\theta W (\tau) - \theta^{2} \tau / 2 \right\} = 1 \quad \forall \theta \in \mathbb {R}; a n d \tag {39}
$$

$$
E \exp \{i \theta W (\tau) + \theta^{2} \tau / 2 \} = 1 \quad \forall \theta \in \mathbb {R}. \tag {40}
$$

Observe that for nonrandom times  $\tau = t$ , these identities follow from elementary properties of the normal distribution. Notice also that if  $\tau$  is an unbounded stopping time, then the identities may fail to be true: for example, if  $\tau = \tau(1)$  is the first passage time to the value 1, then  $W(\tau) = 1$ , and so  $EW(\tau) \neq 0$ . Finally, it is crucial that  $\tau$  should be a stopping time: if, for instance,  $\tau = \min \{t \leq 1 : W(t) = M(1)\}$ , then  $EW(\tau) = EM(1) > 0$ .

Proof. By hypothesis,  $\tau$  is a bounded stopping time, so there is a nonrandom  $N < \infty$  such that  $\tau < N$  almost surely. By the Strong Markov Property, the post- $\tau$  process  $W(\tau + t) - W(\tau)$  is a standard Wiener process that is independent of the stopping field  $\mathcal{F}_{\tau}$ , and, in particular, independent of the random vector  $(\tau, W(\tau))$ . Hence, the conditional distribution of  $W(N) - W(\tau)$  given that  $\tau = s$  is the normal distribution with mean 0 and variance  $N - s$ . It follows that

$$
E (\exp \{\theta (W (N) - W (\tau)) - \theta^{2} (N - \tau) \} \mid W (\tau), \tau) = 1
$$

Therefore,

$$
\begin{array}{l} E e ^{\theta W (\tau) - \theta^{2} \tau / 2} = E \exp \left\{\theta W (\tau) - \theta^{2} \tau / 2 \right\} \cdot 1 \\ = E \exp \left\{\theta W (\tau) - \theta^{2} \tau / 2 \right\} E \left(\exp \left\{\theta (W (N) - W (\tau)) - \theta^{2} (N - \tau) \right\} \mid W (\tau), \tau) \right. \\ = E E \left(\exp \left\{\theta W (\tau) - \theta^{2} \tau / 2 \right\} \exp \left\{\theta (W (N) - W (\tau)) - \theta^{2} (N - \tau) \right\} \mid W (\tau), \tau\right) \\ = E E \left(\exp \left\{\theta W (N) - \theta^{2} N / 2 \right\} \mid W (\tau), \tau\right) \\ = E \exp \left\{\theta W (N) - \theta^{2} N / 2 \right\} \\ = 1. \\ \end{array}
$$

The other three identities can be established in a similar fashion.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e607bf8b-adbd-4429-b019-7daf8f2ae768/fe0cd45769587d2d4a6635a115f788aa2daf8cf3540c58ce03ad3ee153f21c7c.jpg)

Example 1: Fix constants  $a, b > 0$ , and define  $T = T_{-a,b}$  to be the first time  $t$  such that  $W(t) = -a$  or  $+b$ . The random variable  $T$  is a finite, but unbounded, stopping time, and so the Wald identities may not be applied directly. However, for each integer  $n \geq 1$ , the random variable  $T \wedge n$  is a bounded stopping time. Consequently,

$$
E W (T \wedge n) = 0 \qquad \text{an d} \qquad E W (T \wedge n) ^{2} = E T \wedge n.
$$

Now until time  $T$ , the Wiener path remains between the values  $-a$  and  $+b$ , so the random variables  $|W(T \wedge n)|$  are uniformly bounded by  $a + b$ . Furthermore, by path-continuity,  $W(T \wedge n) \to W(T)$  as  $n \to \infty$ . Therefore, by the dominated convergence theorem,

$$
E W (T) = - a P \{W (T) = - a \} + b P \{W (T) = b \} = 0.
$$

Since  $P\{W(T) = -a\} + P\{W(T) = b\} = 1$ , it follows that

$$
\boxed {P \{W (T) = b \} = \frac{a}{a + b}.} \tag {44}
$$

The dominated convergence theorem also guarantees that  $EW(T \wedge n)^2 \to EW(T)^2$ , and the monotone convergence theorem that  $ET \wedge n \uparrow ET$ . Thus,

$$
E W (T) ^{2} = E T.
$$

Using (44), one may now easily obtain

$$
\boxed {E T = a b.} \tag {46}
$$

Example 2: Let  $\tau = \tau(a)$  be the first passage time to the value  $a > 0$  by the Wiener path  $W(t)$ . As we have seen,  $\tau$  is a stopping time and  $\tau < \infty$  with probability one, but  $\tau$  is not bounded. Nevertheless, for any  $n < \infty$ , the truncation  $\tau \wedge n$  is a bounded stopping time, and so by the third Wald identity, for any  $\theta > 0$ ,

$$
E \exp \left\{\theta W (\tau \wedge n) - \theta^{2} (\tau \wedge n) \right\} = 1. \tag {47}
$$

Because the path  $W(t)$  does not assume a value larger than  $a$  until after time  $\tau$ , the random variables  $W(\tau \wedge n)$  are uniformly bounded by  $a$ , and so the random variables in equation (47) are dominated by the constant  $\exp\{\theta a\}$ . Since  $\tau < \infty$  with probability one,  $\tau \wedge n \rightarrow \tau$  as  $n \rightarrow \infty$ , and by path-continuity, the random variables  $W(\tau \wedge n)$  converge to  $a$  as  $n \rightarrow \infty$ . Therefore, by the dominated convergence theorem,

$$
E \exp \{\theta a - \theta^{2} (\tau) \} = 1.
$$

Thus, setting  $\lambda = \theta^2 / 2$ , we have

$$
\boxed {E \exp \{- \lambda \tau_{a} \} = \exp \{- \sqrt{2 \lambda} a \}.} \tag {49}
$$

The only density with this Laplace transform<sup>4</sup> is the one-sided stable density given in equation (29). Thus, the Optional Sampling Formula gives us a second proof of (25).

# 10. QUADRATIC VARIATION OF BROWNIAN PATHS

Fix  $t > 0$ , and let  $\Pi = \{t_0, t_1, t_2, \ldots, t_n\}$  be a partition of the interval  $[0, t]$ , that is, an increasing sequence  $0 = t_0 < t_1 < t_2 < \dots < t_n = t$ . For each natural number  $n$ , define the  $n$ th dyadic partition  $\mathcal{D}_n[0, t]$  to be the partition consisting of the dyadic rationals  $k/2^n$  of depth  $n$  (here  $k$  is an integer) that are between 0 and  $t$  (with  $t$  added if it is not a dyadic rational of depth  $n$ ). Let  $X(s)$  be any process indexed by  $s$ . For any partition  $\Pi$ , define the quadratic variation of  $X$  relative to  $\Pi$  by

$$
Q V (X; \Pi) = \sum_{j = 1} ^{n} \left(X \left(t _{j}\right) - X \left(t _{j - 1}\right)\right) ^{2}. \tag {50}
$$

Proposition 9. Let  $\{W(t)\}_{t\geq 0}$  be a standard Brownian motion. For each  $t > 0$ , with probability one,

$$
\lim  _{n \rightarrow \infty} Q V (W; \mathcal {D} _{n} [ 0, t ]) = t. \tag {51}
$$

The primary significance of this result is that it is the key to the Itô formula pf stochastic calculus, about which we shall have much to say later in the course. It also implies that the Brownian path cannot be of bounded variation in any interval, and so in particular is not differentiable in any interval. (Even more is known: the Brownian path is nowhere differentiable.)

Partial Proof. We will first prove the weaker statement that the convergence in (51) holds in probability. To simplify things, assume that  $t = 1$ . Then for each  $n \geq 1$ , the random variables

$$
\xi_{n, k} := 2 ^{n} \left(W (k / 2 ^{n}) - W ((k - 1) / 2 ^{n})\right) ^{2}, \quad k = 1, 2, \dots , 2 ^{n}
$$

are independent, identically distributed  $\chi^2$  with one degree of freedom (that is, they are distributed as the square of a standard normal random variable). Observe that  $E\xi_{n,k} = 1$ . Now

$$
Q V (W; \mathcal {D} _{n} [ 0, 1 ]) = 2 ^{- n} \sum_{k = 1} ^{2 ^{n}} \xi_{n, k}.
$$

The right side of this equation is the average of  $2^n$  independent, identically distributed random variables, and so the Weak Law of Large Numbers implies convergence in probability to the mean of the  $\chi^2$  distribution with one degree of freedom, which equals 1.

The stronger statement that the convergence holds with probability one can easily be deduced from the Chebyshev inequality and the Borel-Cantelli lemma. The Chebyshev inequality implies that

$$
P \{| Q V (W; \mathcal {D} _{n} [ 0, 1 ]) - 1 | \geq \varepsilon \} = P \{| \sum_{k = 1} ^{2 ^{n}} (\xi_{n, k} - 1) | \geq 2 ^{n} \varepsilon \} \leq \frac{E \xi_{1 , 1} ^{2}}{4 ^{n} \varepsilon^{2}}.
$$

Since  $\sum_{n=1}^{\infty} 1/4^n < \infty$ , the Borel-Cantelli lemma implies that, with probability one, the event  $|QV(W; \mathcal{D}_n[0,1]) - 1| \geq \varepsilon$  occurs for at most finitely many  $n$ . Since  $\varepsilon > 0$  can be chosen arbitrarily small, it follows that  $\lim_{n \to \infty} QV(W; \mathcal{D}_n[0,1]) = 1$  almost surely.

# LECTURE 6: THE ITÔ CALCULUS

# 1. INTRODUCTION: GEOMETRIC BROWNIAN MOTION

According to Lévy's representation theorem, quoted at the beginning of the last lecture, every continuous-time martingale with continuous paths and finite quadratic variation is a time-changed Brownian motion. Thus, we expect discounted price processes in arbitrage-free, continuous-time markets to be time-changed Brownian motions. However, Brownian motion (with no time change) is not an appropriate model for the behavior of stock price processes. Why not? Among other reasons is this: If  $\{W^{x}(t)\}_{t\geq 0}$  is a Brownian motion started at  $x > 0$ , then eventually the path  $W(t)$  will drift below 0. But the share prices of stocks traded on major exchanges do not drop below 0.

So what is a more appropriate model for stock price behavior? Consider the issue of expected return on investment. If an investor has \$100 to invest, he/she should, at the very least, expect the same return on the \$100 investment when the share price is \$10 as when the share price is \$5. (If the expected return were higher for \$5 shares than for \$10 shares, the shareholders would split the \$10 shares into twice as many \$5 shares, thus increasing their expected return by a mere accounting trick!) Similarly, the uncertainty about the return on a \$100 investment should be the same for \$5 shares as for \$10 shares. Thus, fluctuations in share price should be twice as great when the share price is twice as high, three times as great when the share price is three times as high, etc. This argument suggests that a better model for stock price behavior over time might be

$$
\frac{d S _{t}}{S _{t}} = \mu d t + \sigma d W _{t}, \tag {1}
$$

where  $\mu$  represents the instantaneous rate of return on a riskless asset,  $\sigma$  represents the volatility of the stock, and  $dW_{t}$  represents something like the infinitesimal change in a Brownian motion over the next instant of time. This is the stock price model used by BLACK and SCHOLES in their work on the pricing of call and put options — the stochastic processes  $S_{t}$  governed by equation (1) are called geometric Brownian motions. Unfortunately, equation (1) cannot be interpreted as an ordinary differential equation, because Brownian paths  $W_{t}$  are not differentiable. It was precisely for the purpose of dealing with differential equations incorporating stochastic differentials that Ito developed what is now called the Ito calculus.

# 2. THE ITO INTEGRAL

In ordinary calculus, the (Riemann) integral is defined by a limiting procedure. One first defines the integral of a step function, in such a way that the integral represents the "area beneath the graph". Then one extends the definition to a larger class of functions (the Riemann-integrable functions) by approximation: the integral of a function  $f$  is defined to be the limit of the integrals of step functions which converge (in a certain sense) to  $f$ .

Thus, it is natural that the Ito integral is also defined by an approximation procedure. In the Ito theory, step functions are replaced by simple processes, which are nothing more than random step functions. The integral is then extended to larger classes of processes by approximation. For

our purposes, the details of the approximation procedure are uninteresting, and we shall (for the most part) omit them. However, it is important to understand how the integral is defined for the simple processes, because nearly all of the basic properties of the Itô integral are established by first considering simple processes, then extending to more general integrands "by approximation".

2.1. Integration of simple processes. Let  $\{W_t\}_{t \geq 0}$  be a standard Brownian motion, and let  $\{\mathcal{F}_t\}_{t \geq 0}$  be its filtration. Recall that a stochastic process  $\{\theta_t\}_{t \geq 0}$  is said to be adapted to the filtration  $\{\mathcal{F}_t\}_{t \geq 0}$  if, for every  $s \geq 0$ , the random variable  $\theta_s$  is measurable relative to the  $\sigma$ -algebra  $\mathcal{F}_s$ . (This means, roughly, that for each  $s \geq 0$  the value of the random variable  $\theta_s$ , although random, is completely determined by the Brownian path  $\{W_t\}_{0 \leq t \leq s}$  up to time  $s$ .) An adapted process  $\{\theta_t\}_{t \geq 0}$  is said to be simple if it is a random step function: This means that, for some finite sequence of times  $0 < t_1 < t_2 < \dots < t_m < \infty$  and random variables  $\xi_0, \xi_1, \ldots, \xi_{m-1}$  such that  $\xi_j$  is measurable relative to  $\mathcal{F}_{t_j}$ ,

$$
\theta (s) = \sum_{j = 0} ^{m - 1} \xi_{j} \mathbf {1} _{\left(t _{j}, t _{j + 1} \right]} (s). \tag {2}
$$

Definition 1. For a simple process  $\{\theta_t\}_{t\geq 0}$  satisfying equation (2), define the Ito integral  $\int \theta_s dW_s$  as follows:

$$
\int \theta_{s} d W _{s} = \sum_{j = 0} ^{m - 1} \xi_{j} \left(W \left(t _{j + 1}\right) - W \left(t _{j}\right)\right) \tag {3}
$$

Why is this a reasonable definition? The random step function  $\theta(s)$  takes the (random) value  $\xi_j$  between times  $t_{j-1}$  and  $t_j$ . Thus, for all times  $s \in (t_{j-1}, t_j]$ , the random infinitesimal increments  $\theta_s dW_s$  should be  $\xi_j$  times as large as those of the Brownian motion; when one adds up these infinitesimal increments, one gets  $\xi_j$  times the total increment of the Brownian motion over this time period.

Notice that the random "fluctuation rates"  $\xi_{j}$  in the sum (3) are independent of the Brownian increments  $W(t_{j + 1}) - W(t_{j})$  that they multiply. This is a consequence of the independent increments property of Brownian motion:  $\xi_{j}$ , being measurable relative to  $\mathcal{F}_{t_j}$ , is a function of the Brownian path up to time  $t_j$ , which is independent of all future increments. This independence property is behind the following calculation, which is of fundamental importance.

Proposition 1. The mean and variance of the stochastic integral  $\int \theta_s dW_s$  are

$$
E \left(\int \theta_{s} d W _{s}\right) = 0 \tag {4}
$$

$$
E \left(\int \theta_{s} d W _{s}\right) ^{2} = \int E \theta_{s} ^{2} d s \tag {5}
$$

Proof. Exercise!

Two other properties of the Ito integral should be noted. First, it is linear in the integrand, that is, if  $\{\theta_s\}$  and  $\{\eta_s\}$  are two simple processes and  $a,b\in \mathbb{R}$  are scalars, then

$$
\int \left(a \theta_{s} + b \eta_{s}\right) d W _{s} = a \int \theta_{s} d W _{s} + b \int \eta_{s} d W _{s}. \tag {6}
$$

Second, if  $\theta(s)$  is a simple function satisfying equation (2), then  $\int \theta_s dW_s$ , as defined by (3) is measurable relative to the  $\sigma$ -algebra  $\mathcal{F}_{t_m}$ .

2.2. Integration of  $\mathcal{H}^2$  Processes. One extends the definition of the Itô integral to other integrands by approximation: one approximates the integrand  $\theta_s$  by a simple process, then uses the Itô integral of the simple process, defined above, as an approximation to the Itô integral of  $\{\theta_s\}$ . The most important class of integrands are the  $\mathcal{H}^2$  processes. An adapted process  $\{\theta_s\}$  is a member of the class  $\mathcal{H}^p$  (where  $1 \leq p < \infty$ ) if

$$
\int E \left| \theta_{s} \right| ^{p} d s <   \infty . \tag {7}
$$

Proposition 2. Every adapted process of class  $\mathcal{H}^p$  may be approximated arbitrarily closely in  $\mathcal{H}^p$  distance by simple processes. For an  $\mathcal{H}^2$  process  $\{\theta_s\}$ , this means that there is a sequence of simple processes  $\{\theta_s^{(n)}\}$  such that

$$
\lim _{n \to \infty} \int E (\theta_{s} - \theta_{s} ^{(n)}) ^{2} d s = 0. \tag {8}
$$

Proof. See KARATZAS & SHREVE, section 3.2, for the rather long and arduous proof.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e607bf8b-adbd-4429-b019-7daf8f2ae768/4183ca33f7fc4eb2a749d8e55916ed25551c031de07ae5e776130875a166b8b6.jpg)

Definition 2. Let  $\{\theta_s\}$  be a member of the class  $\mathcal{H}_2$ , and let  $\{\theta_s^{(n)}\}$  be any sequence of simple processes such that (8) holds. Define

$$
\int \theta_{s} d W _{s} = \lim  _{n \rightarrow \infty} \int \theta_{s} ^{(n)} d W _{s} \tag {9}
$$

Proposition 3. The limit in (9) exists (in the  $L^2$  sense) and is independent of the sequence of approximating simple processes.

The proof is outlined below. The proposition guarantees that the Itô integral is well-defined; moreover, it asserts that any approximating sequence of simple processes may be used. In those (rare) instances where one calculates an Itô integral directly, using the definition above (see section 3 for an example), one usually uses the most obvious approximation.

Proof of Proposition 3. The proof is based on proposition 1 above, and standard elementary facts about the space  $L^2$  of random variables with finite second moments. The argument (in brief) for the existence of the limit is as follows: Suppose that  $\{\theta_s^{(n)}\}$  is a sequence of simple processes such that (8) holds. Then for any  $\varepsilon > 0$ , there exists an integer  $n_{\varepsilon}$  sufficiently large that, for all  $n \geq n_{\varepsilon}$ ,

$$
\int E | \theta_{s} ^{(n)} - \theta_{s} | ^{2} d s <   \varepsilon .
$$

Hence, by the triangle inequality for the  $L^2$ -metric, if  $n, m \geq n_{\varepsilon}$  then

$$
\left(\int E \left| \theta_{s} ^{(n)} - \theta_{s} ^{(m)} \right| ^{2} d s\right) ^{1 / 2} \leq \left(\int E \left| \theta_{s} ^{(n)} - \theta_{s} \right| ^{2} d s\right) ^{1 / 2} + \left(\int E \left| \theta_{s} ^{(m)} - \theta_{s} \right| ^{2} d s\right) ^{1 / 2} <   2 \sqrt{\varepsilon}.
$$

But Proposition 1, together with the linearity of the integral for simple processes, implies that

$$
E | \int \theta_{s} ^{(n)} d W _{s} - \int \theta_{s} ^{(m)} d W _{s} | ^{2} = \int E | \theta_{s} ^{(n)} - \theta_{s} ^{(m)} | ^{2} d s <   4 \varepsilon .
$$

This shows that the sequence  $\int \theta_s^{(n)}dW_s$  of stochastic integrals is a Cauchy sequence of random variables (in  $L^2$ ). Since Cauchy sequences in  $L^2$  have limits, it follows that

$$
\lim _{n \to \infty} \int \theta_{s} ^{(n)} d W _{s}
$$

exists. A similar argument shows that the limit is the same for all approximating sequences of simple processes.

Proposition 4. For any process  $\{\theta_s\}$  of class  $\mathcal{H}_2$ , the mean and variance of the stochastic integral  $\int \theta_s dW_s$  are given by equations (4)-(5) of Proposition 1. Moreover, the stochastic integral is linear, in the sense of equation (6) above.

Proof. One deduces this from the corresponding facts about integrals of simple processes by an approximation argument. Details are omitted (but are not hard).  $\square$

2.3. Limits of Integration. The implicit limits of integration in the stochastic integral  $\int \theta_s dW_s$  are 0 and  $\infty$ . It is useful to define stochastic integrals with other limits of integration. This is done as follows:

$$
\int_{a} ^{b} \theta_{s} d W _{s} := \int \theta_{s} ^{(a, b ]} d W _{s} \tag {10}
$$

where  $\{\theta_s^{(a,b]}\}$  is the adapted  $\mathcal{H}^2$  function defined by

$$
\begin{array}{l} \theta_{s} ^{(a, b ]} = \theta_{s} \qquad \mathrm{if} a <   s \leq b \\ = 0 \qquad \mathrm{ot he rw is e}. \\ \end{array}
$$

Proposition 5. Let  $\{\theta_s\}$  be an adapted process of class  $\mathcal{H}^2$ , and set  $I_t = \int_0^t \theta_s \, dW_s$ . Then the stochastic process  $\{I_t\}_{t \geq 0}$  is a martingale with continuous paths<sup>3</sup>, and

$$
I _{t} = E \left(\int \theta_{s} d W _{s} \mid \mathcal {F} _{t}\right). \tag {11}
$$

Proof. If  $\{\theta_t\}$  is a simple process, then the martingale property may be proved directly from the definition (3), using basic properties of conditional expectation and the independent increments property of Brownian motion. (Exercise: Do this!) One then deduces the general case by a routine limiting argument. Continuity of paths (for an appropriate version) is harder to prove - we omit this.

2.4. Further Extensions of the Itô Integral. It is occasionally necessary to integrate adapted processes that do not belong to the class  $\mathcal{H}^2$ . This may be accomplished by various other means of approximation. One important class of integrands is the set of adapted processes  $\{\theta(s)\}_{s \geq 0}$  satisfying

$$
P \left\{\int_{0} ^{\infty} \theta (s) ^{2} d s <   \infty \right\} = 1; \tag {12}
$$

we shall refer to this class as  $\mathcal{H}_{\mathrm{LOC}}^2$ , for "locally"  $\mathcal{H}^2$ . The classes  $\mathcal{H}_{\mathrm{LOC}}^p$ , for  $p \geq 1$ , are defined similarly. Among the naturally occurring adapted processes  $\{\theta(s)\}_{s \geq 0}$  in the class  $\mathcal{H}_{\mathrm{LOC}}^2$  that are not (at least not necessarily) in the class  $\mathcal{H}^2$  are those of the form

$$
\theta (t) = u \left(W _{t}, t\right),
$$

where  $u(x,t)$  is any function of  $x\in \mathbb{R}$  and  $t\geq 0$  that is jointly continuous in its two arguments  $t,x$ . Such processes occur regularly in stochastic calculus and its applications.

The Ito integral is extended from  $\mathcal{H}^2$  integrands to  $\mathcal{H}_{\mathrm{LOC}}^2$  integrands by a technique called (fittingly enough) localization. This technique consists of successive truncations at suitable stopping times: Let  $\{\theta(s)\}_{s \geq 0}$  be an element of the class  $\mathcal{H}_{\mathrm{LOC}}^2$ , and for each integer  $n \geq 1$  define a stopping time  $T_n \leq \infty$  by

$$
T _{n} = \min \{t \geq 0: \int_{0} ^{t} \theta (s) ^{2} d s = n \},
$$

with the convention that  $T_{n} = \infty$  if there is no such  $t$ , and define an adapted process  $\theta^{(n)}(t)$

$$
\theta^{(n)} (t) = \theta (t) \quad \text{fo r} t \leq T _{n} \text{an d}
$$

$$
\theta^{(n)} (t) = 0 \quad \text{fo r} t > T _{n}
$$

Observe that the hypothesis (12) implies that, with probability one,  $T_{n} \to \infty$ . Consequently, the sequence of processes  $\theta^{(n)}(s)$  converge to  $\theta(s)$  in the following sense: for each  $t < \infty$ , with probability one,  $\theta^{(n)}(t) = \theta(t)$  for all sufficiently large  $n$ . Notice also that each process  $\theta^{(n)}(s)$  is a member of the class  $\mathcal{H}^2$ , because

$$
E \int_{0} ^{\infty} \theta^{(n)} (s) ^{2} d s = E \int_{0} ^{T _{n}} \theta (s) ^{2} d s \leq E n = n <   \infty .
$$

Thus, the Ito integrals  $\int \theta^{(n)}(s)dW_s$  are well-defined. It may be shown that, with probability one, these Ito integrals converge as  $n\to \infty$  to a finite (random) limit. Thus, we may define

$$
\int \theta (s) d W _{s} = \lim  _{n \rightarrow \infty} \int \theta^{(n)} (s) d W _{s}. \tag {13}
$$

Caution must be exercised in using the Ito integral defined by equation (13) for integrands in the class  $\mathcal{H}_{\mathrm{LOC}}^2$ . Although the Ito integrals  $\int \theta^{(n)}(s)dW_s$  converge with probability one, they need not converge in mean square  $(L^2)$ , nor need the limit random variable  $\int \theta(s)dW_s$  have finite expectation. Thus, the relation (11) need not be valid for integrands of the class  $\mathcal{H}_{\mathrm{LOC}}^2$ ; furthermore, the process

$$
I _{t} := \int \theta (s) \mathbf {1} _{[ 0, t ]} (s) d W _{s}
$$

may fail to be a martingale. In general, the best that can be said is that, for each  $n \geq 1$ , the process

$$
I _{t} ^{(n)} := \int \theta (s) \mathbf {1} _{[ 0, t \wedge T _{n} ]} (s) d W _{s}
$$

is a martingale.

# 3. AN EXAMPLE:  $\int_0^1 W dW$

There are tools for calculating stochastic integrals that usually make it unnecessary to use Definition 2 directly. The most useful of these, the Itô formula, will be discussed in the following sections. It is instructive, however, to do one explicit calculation using only the definition 2. This calculation will show (i) that the Fundamental Theorem of Calculus does not hold for Itô integrals; and (ii) the central importance of the Quadratic Variation formula in the Itô calculus.

Consider the process

(14)  $\theta_{s} = W_{s}\mathbf{1}\{s\leq 1\} .$

This process is obviously adapted to the natural filtration. It is also in the class  $\mathcal{H}^2$ , because

$$
\int_{0} ^{\infty} E \theta_{s} ^{2} d s = \int_{0} ^{1} E W _{s} ^{2} d s = \int_{0} ^{1} s d s = \frac{1}{2} <   \infty .
$$

The obvious way to approximate  $\theta_{s}$  is by using the simple function  $\theta_s^{(n)}$  whose jumps are at the dyadic rationals  $1 / 2^n, 2 / 2^n, 3 / 2^n, \ldots$ , and whose value in the interval  $[k / 2^n, (k + 1) / 2^n)$  is  $\theta(k / 2^n)$ : that is,

$$
\theta_{s} ^{(n)} = \sum_{k = 0} ^{2 ^{n}} \theta (k / 2 ^{n}) \mathbf {1} _{[ k / 2 ^{n}, (k + 1) / 2 ^{n})} (s).
$$

Lemma 1.  $\lim_{n\to \infty}\int_0^\infty E(\theta_s - \theta_s^{(n)})^2 ds = 0.$

Proof. Since the simple process  $\theta_s^{(n)}$  takes the value  $\theta (k / 2^n)$  for all  $s$  between  $k / 2^n$  and  $(k + 1) / 2^n$ , we have

$$
\begin{array}{l} \int_{0} ^{\infty} E \left(\theta_{s} - \theta_{s} ^{(n)}\right) ^{2} d s = \sum_{k = 0} ^{2 ^{n} - 1} \int_{k / 2 ^{n}} ^{(k + 1) / 2 ^{n}} E \left(\theta_{s} - \theta_{s} ^{(n)}\right) ^{2} d s \\ = \sum_{k = 0} ^{2 ^{n} - 1} \int_{k / 2 ^{n}} ^{(k + 1) / 2 ^{n}} E \left(W _{s} - W _{k / 2 ^{n}}\right) ^{2} d s \\ = \sum_{k = 0} ^{2 ^{n} - 1} \int_{k / 2 ^{n}} ^{(k + 1) / 2 ^{n}} (s - (k / 2 ^{n})) d s \\ \leq \sum_{k = 0} ^{2 ^{n} - 1} 2 ^{- 2 n} = 2 ^{n} / 2 ^{2 n} \longrightarrow 0 \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e607bf8b-adbd-4429-b019-7daf8f2ae768/bae522e706d2489a83b87a48e345b2d4d831bded455d9cc1b4a466c0c9076ff9.jpg)

Definition 2 now implies that the stochastic integral  $\int \theta_s dW_s$  is the limit of the stochastic integrals  $\int \theta_s^{(n)} dW_s$ . Since  $\theta_s^{(n)}$  is a simple process, its stochastic integral is defined to be

$$
\int \theta_{s} ^{(n)} d W _{s} = \sum_{k = 0} ^{2 ^{n} - 1} W _{k / 2 ^{n}} (W _{(k + 1) / 2 ^{n}} - W _{k / 2 ^{n}}).
$$

To evaluate this sum, we use the technique of "summation by parts" (the discrete analogue of integration by parts). Here, the technique takes the form of observing that the sum can be modified

slightly to give a sum that "telescopes":

$$
\begin{array}{l} W _{1} ^{2} = \sum_{k = 0} ^{2 ^{n} - 1} \left(W _{(k + 1) / 2 ^{n}} ^{2} - W _{k / 2 ^{n}} ^{2}\right) \\ = \sum_{k = 0} ^{2 ^{n} - 1} \left(W _{(k + 1) / 2 ^{n}} - W _{k / 2 ^{n}}\right) \left(W _{(k + 1) / 2 ^{n}} + W _{k / 2 ^{n}}\right) \\ = \sum_{k = 0} ^{2 ^{n} - 1} \left(W _{(k + 1) / 2 ^{n}} - W _{k / 2 ^{n}}\right) \left(W _{k / 2 ^{n}} + W _{k / 2 ^{n}}\right) \\ + \sum_{k = 0} ^{2 ^{n} - 1} \left(W _{(k + 1) / 2 ^{n}} - W _{k / 2 ^{n}}\right) \left(W _{(k + 1) / 2 ^{n}} - W _{k / 2 ^{n}}\right) \\ = 2 \sum_{k = 0} ^{2 ^{n} - 1} W _{k / 2 ^{n}} \left(W _{(k + 1) / 2 ^{n}} - W _{k / 2 ^{n}}\right) \\ + \sum_{k = 0} ^{2 ^{n} - 1} \left(W _{(k + 1) / 2 ^{n}} - W _{k / 2 ^{n}}\right) ^{2} \\ \end{array}
$$

The first sum on the right side is  $2\int \theta_s^{(n)}dW_s$ , and so converges to  $2\int_0^1 W_sdW_s$  as  $n\to \infty$ . The second sum is the same sum that occurs in the Quadratic Variation Formula (Lecture 5), and so converges, as  $n\to \infty$ , to 1. Therefore,

$$
\boxed {\int_{0} ^{1} W _{s} d W _{s} = \frac{1}{2} \left(W _{1} ^{2} - 1\right).} \tag {15}
$$

Note that if the Ito integral obeyed the Fundamental Theorem of Calculus, then the value of the integral would be

$$
\int_{0} ^{t} W _{s} d W _{s} = \int_{0} ^{t} W (s) W ^{\prime} (s) d s = \frac{W _{s} ^{2}}{2} \Bigg | _{0} ^{t} = \frac{W _{t} ^{2}}{2}
$$

Thus, formula (15) shows that the Itô calculus is fundamentally different than ordinary calculus.

# 4. ITO'S FORMULA

The cornerstone of stochastic calculus is the Itô formula. Like the Fundamental Theorem of Calculus, the Itô formula takes many different forms, and holds at several levels of generality. The simplest version is as follows:

Theorem 1. Let  $u(x,t)$  be a function of  $x \in \mathbb{R}$  and  $t \geq 0$  that is twice continuously differentiable in  $x$  and once continuously differentiable in  $t$ , and let  $W_{t}$  be a Wiener process (Brownian motion). Denote by  $u_{t}, u_{x}$ , and  $u_{x}u$  the first and second partial derivatives of  $u$  with respect to the variables  $t$  and  $x$ . Then

$$
u (W _{t}, t) - u (0, 0) = \int_{0} ^{t} u _{x} \left(W _{s}, s\right) d W _{s} + \int_{0} ^{t} u _{t} \left(W _{s}, s\right) d s + \frac{1}{2} \int_{0} ^{t} u _{x x} \left(W _{s}, s\right) d s. \tag {16}
$$

A sketch of the proof will be given in section 8, and a more general form of the theorem will be discussed in section 5. In a later lecture, we shall see that there is also a multivariable version of the theorem.

Example 1: Let

$$
u (x, t) = x ^{2} - t; \quad \text{th en} \tag {17}
$$

$$
u _{t} (x, t) = - 1;
$$

$$
u _{x} (x, t) = 2 x; \qquad \text{an d}
$$

$$
u _{x x} (x, t) = 2.
$$

Consequently, by the Itô formula (note that  $u_{t} + (1 / 2)u_{xx} = 0$ ),

$$
W _{t} ^{2} - t = 2 \int_{0} ^{t} W _{s} d W _{s}, \tag {18}
$$

as was shown directly in the previous section.

Example 2: Let  $\alpha, \beta \in \mathbb{R}$  be fixed nonrandom scalars. Let

$$
u (x, t) = \exp \left\{\alpha x + \beta t \right\}; \quad \text{th en} \tag {19}
$$

$$
u _{t} (x, t) = \beta u (x, t),
$$

$$
u _{x} (x, t) = \alpha u (x, t), \quad \text{an d}
$$

$$
u _{x x} (x, t) = \alpha^{2} u (x, t).
$$

Thus, the Itô formula implies

$$
u \left(W _{t}, t\right) = 1 + \alpha \int_{0} ^{t} u \left(W _{t}, t\right) d W _{t} + \left(\beta + \frac{1}{2} \alpha^{2}\right) \int_{0} ^{t} u \left(W _{t}, t\right) d t. \tag {20}
$$

Set  $S_{t} = u(W_{t}, t)$ ; then equation (20), in differential form, becomes

$$
\frac{d S _{t}}{S _{t}} = \alpha d W _{t} + \left(\beta + \frac{1}{2} \alpha^{2}\right) d t. \tag {21}
$$

In particular, if  $\alpha = \sigma$  and  $\beta = \mu -\sigma^2 /2$  then  $S_{t}$  is a solution of the stochastic differential equation (1). Also, if  $\alpha = \theta$  and  $\beta = -\theta^{2} / 2$  for some scalar  $\theta \in \mathbb{R}$  then equation (21) simplifies to

$$
\frac{d S _{t}}{S _{t}} = \alpha d W _{t}, \qquad \text{eq ui va le nt ly},
$$

$$
\exp \left\{\theta W _{t} - \theta^{2} t / 2 \right\} = 1 + \theta \int_{0} ^{t} \exp \left\{\theta W _{s} - \theta^{2} s / 2 \right\} d W _{s}.
$$

By Proposition 5, it follows that the process  $\exp \{\theta W_t - \theta^2 t / 2\}$  is a martingale relative to the standard filtration.

# 5. ITO'S FORMULA: THE GENERAL CASE

Definition 3. An Itô process is a stochastic process of the form

$$
Z _{t} = Z _{0} + \int_{0} ^{t} A _{s} d s + \int_{0} ^{t} B _{s} d W _{s} \tag {22}
$$

where for each  $t < \infty$  the process  $\{A_s\mathbf{1}_{(0,t]}(s)\}$  is in the class  $\mathcal{H}_{\mathrm{LOC}}^1$  and the process  $\{B_s\mathbf{1}_{(0,t]}(s)\}$  is in the class  $\mathcal{H}_{\mathrm{LOC}}^2$ .

The Ito processes are the processes that solve stochastic differential equations. In particular, if the Ito process  $\{Z_t\}$  satisfies the integral equation (22), then it solves the stochastic differential equation (SDE)

$$
d Z _{t} = A _{t} d t + B _{t} d W _{t}. \tag {23}
$$

Now that we have defined the Itô integral against  $dW$ , we can easily extend the definition to allow integration against  $dZ$  for any Itô process  $Z$ , using (23): for an adapted process  $\{\theta_s\}$ , define

$$
\int_{0} ^{t} \theta_{s} d Z _{s} = \int_{0} ^{t} \theta_{s} A _{s} d s + \int_{0} ^{t} \theta_{s} B _{s} d W _{s}. \tag {24}
$$

If for each  $t < \infty$  the process  $\{\theta_sA_s\mathbf{1}_{[0,t](s)}\}$  is in the class  $\mathcal{H}_{\mathrm{LOC}}^1$  and  $\{\theta_sB_s\mathbf{1}_{[0,t](s)}\}$  is in the class  $\mathcal{H}_{\mathrm{LOC}}^2$  then both of the integrals on the right side of this equation are well-defined.

Theorem 2. (Itô's Formula) Let  $\{Z_t\}$  be an Itô process satisfying the SDE (23), and let  $u(x,t)$  be twice continuously differentiable in  $x$  and once continuously differentiable in  $t$ , and define  $U_t = u(Z_t,t)$ . Then  $\{U_t\}$  is an Itô process that satisfies the SDE

$$
\begin{array}{l} d U _{t} = u _{x} \left(Z _{t}, t\right) d Z _{t} + u _{t} \left(Z _{t}, t\right) d t + \frac{1}{2} u _{x x} \left(Z _{t}, t\right) B _{t} ^{2} d t \tag {25} \\ = u _{x} (Z _{t}, t) B _{t} d W _{t} + \left(u _{x} (Z _{t}, t) A _{t} + \frac{1}{2} u _{x x} (Z _{t}, t) B _{t} ^{2} + u _{t} (Z _{t}, t)\right) d t \\ \end{array}
$$

Proof. See section 8 below for a sketch.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e607bf8b-adbd-4429-b019-7daf8f2ae768/b129b09e50d99606d5903b63c22e30adf83ab0e90d345bae2e77d5f8eaa840f2.jpg)

# 6. WHEN IS AN ITO PROCESS A MARTINGALE?

Proposition 6. Let  $\{Z_t\}$  be an Itô process satisfying the Itô integral equation (22), where  $Z_0$  has finite first moment,  $\{A_t\}$  is of class  $\mathcal{H}^1$ , and  $\{B_t\}$  is of class  $\mathcal{H}^2$ . Then  $\{Z_t\}$  is a martingale (relative to the Brownian filtration) if and only if  $A_t = 0$  almost surely, for almost every  $t \geq 0$ .

Proof. Suppose first that  $A_{t} = 0$  almost surely, for all  $t \geq 0$ . Then  $Z_{t} - Z_{0} = \int_{0}^{t} B_{s} dW_{s}$ , and so by Proposition 5, the process  $\{Z_{t} - Z_{0}\}_{t \geq 0}$  is a martingale. It follows that the process  $\{Z_{t}\}_{t \geq 0}$  is a martingale, by the linearity of conditional expectation.

The converse is a bit trickier. Suppose that the process  $\{Z_t\}_{t \geq 0}$  is a martingale. Since the process  $\int_0^t B_s \, dW_s$  is also a martingale, by Proposition 5, and since the difference between two martingales is a martingale (why?), it follows that

$$
\int_{0} ^{t} A _{s} d s
$$

is a martingale. This means that, for any  $t,u\geq 0$

$$
\begin{array}{l} \int_{0} ^{t} A _{s} d s = E \left(\int_{0} ^{t + u} A _{s} d s \mid \mathcal {F} _{t}\right) \quad \Longrightarrow \\ \int_{0} ^{t} A _{s} d s = E \left(\int_{0} ^{t} A _{s} d s + \int_{t} ^{t + u} A _{s} d s \mid \mathcal {F} _{t}\right) \quad \Longrightarrow \\ \int_{0} ^{t} A _{s} d s = \int_{0} ^{t} A _{s} d s + E \left(\int_{t} ^{t + u} A _{s} d s \mid \mathcal {F} _{t}\right) \quad \Longrightarrow \\ 0 = E \left(\int_{t} ^{t + u} A _{s} d s \mid \mathcal {F} _{t}\right) \quad \Longrightarrow \\ 0 = \int_{t} ^{t + u} E \left(A _{s} \mid \mathcal {F} _{t}\right) d s \quad \Longrightarrow \\ 0 = \frac{1}{u} \int_{t} ^{t + u} E (A _{s} \mid \mathcal {F} _{t}) d s \\ \end{array}
$$

Somehow we must conclude from this that  $A_{s} = 0$  almost surely for every  $s$ . There are several ways to do this. The shortest is to use the Lebesgue differentiation theorem (see, for example, ROYDEN, ch. 5), which, in essence, states that the Fundamental Theorem of Calculus remains valid, suitably interpreted, for integrands of class  $L^1$ . Since the last displayed equation holds for every  $t$  and every  $u > 0$ , it holds also in the limit as  $u \to 0+$ . The Lebesgue differentiation theorem<sup>4</sup> tells us what the limit must be: that

$$
\lim _{u \to 0 +} \frac{1}{u} \int_{t} ^{t + u} E (A _{s} | \mathcal {F} _{t}) d s = E (A _{t} | \mathcal {F} _{t}) = A _{t}
$$

almost surely, for almost every  $t$ . It follows that  $A_{t} = 0$  almost surely, for almost every  $t \geq 0$ .

# 7. EXERCISES

1. Evaluate  $\int_0^1 W_s^3 dW_s$ .  
2. Use the Itô formula to show that, for any integer  $k \geq 2$ ,

$$
E W (t) ^{k} = \frac{1}{2} k (k - 1) \int_{0} ^{t} E W (s) ^{k - 2} d s,
$$

and use this to evaluate the first 23 moments of the normal distribution.

3. Use the Ito formula to show that, for any nonrandom, continuously differentiable function  $f(t)$ ,

$$
\int_{0} ^{t} f (s) d W _{s} = f (t) W (t) - \int_{0} ^{t} f ^{\prime} (s) W _{s} d s.
$$

4. Heat Martingales. Suppose that  $u(x,t)$  is a bounded solution to the (reverse) heat equation  $u_{xx} / 2 + u_t = 0$  for  $x \in \mathbb{R}$  and  $0 \leq t \leq T$ . Define

$$
Z _{t} = u \left(W _{t}, t\right) \quad \text{fo r} 0 \leq t \leq T.
$$

Show that  $\{Z_t\}_{0 \leq t \leq T}$  is a martingale relative to the (truncated) Brownian filtration  $\{\mathcal{F}_t\}_{0 \leq t \leq T}$ . Conclude that

$$
u (x, t) = E u \left(W _{T - t} + x, T\right).
$$

5. Stock Price Processes. Let  $\{S_t\}_{t \geq 0}$  be the price process of a STOCK in a market with a riskless asset BOND whose price at time  $t$  is  $B_t = e^{rt}$ . Suppose that  $\{S_t\}$  obeys the SDE (1) for some parameters  $\mu$  and  $\sigma > 0$ . Show that  $\mu = r$ .

# 8. APPENDIX: DERIVATION OF THE ITO FORMULA

For simplicity, let  $t = 1$ , and assume that the partial derivatives  $u_{t}$  and  $u_{xx}$  are uniformly bounded and uniformly continuous. (The theorem is true without these hypotheses, but the proof then requires further approximation arguments, which I deem not very enlightening). For each  $n \geq 1$ , let  $\mathcal{D}_n = \mathcal{D}_n[0,1]$  be the  $n$ th dyadic partition of the unit interval, that is, the partition into intervals  $[t_j, t_{j+1}]$ , where  $t_j = j/2^n$ .

Lemma 2. For any uniformly continuous, nonnegative, uniformly bounded function  $g(x,t)$ ,

$$
\lim  _{n \rightarrow \infty} \sum_{j = 0} ^{2 ^{n} - 1} g \left(W \left(t _{j}\right), t _{j}\right)\left(\left(W \left(t _{j + 1}\right) - W \left(t _{j}\right)\right) ^{2} = \int_{0} ^{1} g \left(W _{t}, t\right) d t \quad a n d \right. \tag {26}
$$

$$
\lim  _{n \rightarrow \infty} \sum_{j = 0} ^{2 ^{n} - 1} o \left(\left(\left(W \left(t _{j + 1}\right) - W \left(t _{j}\right)\right) ^{2}\right) = 0 \right. \tag {27}
$$

NOTE: The notation  $o(y)$  indicates that the term is of smaller order of magnitude than  $y$  as  $n \to \infty$ , that is, that  $o(y) / y \to 0$  as  $n \to \infty$ . The proof of this lemma is deferred to the end of the section.

ANOTHER NOTE: Relation (26) is a generalization of the Quadratic Variation Formula proved in Lecture 5. It is the mathematical basis for the heuristic equation

$$
\left(d W _{t}\right) ^{2} = d t
$$

often encountered in formal calculations.

Proof of the Itô Formula (Sketch).

Expressing  $u(W_1, 1) - u(0, 0)$  as a telescoping sum yields

$$
\begin{array}{l} u (W _{1}, 1) - u (0, 0) = \sum_{j = 1} ^{2 ^{n}} \left(u (W (t _{j}), t _{j}) - u (W (t _{j - 1}), t _{j - 1})\right) \\ = \sum_{j = 1} ^{2 ^{n}} \left(u \left(W (t _{j}), t _{j}\right) - u \left(W (t _{j}), t _{j - 1}\right)\right) \\ + \sum_{j = 1} ^{2 ^{n}} (u (W (t _{j}), t _{j - 1}) - u (W (t _{j - 1}), t _{j - 1})) \\ := S _{1} ^{(n)} + S _{2} ^{(n)}. \\ \end{array}
$$

The terms of the first sum  $S_1^{(n)}$  may be approximated by using Taylor's series for the function  $u(x,t)$ , applied in the variable  $t$ :

$$
\begin{array}{l} u (W (t _{j}), t _{j}) - u (W (t _{j}), t _{j - 1}) = u _{t} (W (t _{j}), t _{j}) (t _{j} - t _{j - 1}) + o (t _{j} - t _{j - 1}) \\ = u _{t} (W (t _{j}), t _{j}) 2 ^{- n} + o (2 ^{- n}). \\ \end{array}
$$

The error term  $o(2^{-n})$  is uniformly small, in view of our assumption that the first partial derivative  $u_{t}(x,t)$  is uniformly bounded; consequently, if these  $2^{n}$  errors are summed over all  $j$ , the resulting

error is  $o(1)$ . Summing the approximating terms on  $j$  gives a Riemann sum for the ordinary Riemann integral  $\int_0^1 u_s(W_s,s)ds$ :

$$
S _{1} ^{(n)} = 2 ^{- n} \sum_{j = 1} ^{2 ^{n}} u _{t} (W (t _{j}), t _{j}) + o (1) \longrightarrow \int_{0} ^{1} u _{s} (W _{s}, s) d s.
$$

The terms of the second sum  $S_2^{(n)}$  may also be approximated by using the Taylor's series for the function  $u(x,t)$ , this time in the variable  $x$ , and this time using two terms of the series to keep the errors small:

$$
\begin{array}{l} u \left(W \left(t _{j}\right), t _{j - 1}\right) - u \left(W \left(t _{j - 1}\right), t _{j - 1}\right) \\ = u _{x} \left(W \left(t _{j - 1}\right), t _{j - 1}\right) \left(W \left(t _{j}\right) - W \left(t _{j - 1}\right)\right) \\ + (1 / 2) u _{x x} \left(W \left(t _{j - 1}\right), t _{j - 1}\right) \left(W \left(t _{j}\right) - W \left(t _{j - 1}\right)\right) ^{2} \\ + o \left(\left(W \left(t _{j}\right) - W \left(t _{j - 1}\right)\right) ^{2}\right). \\ \end{array}
$$

By Lemma 2 and the definition of the Itô integral, as  $n\to \infty$

$$
\begin{array}{l} \sum_{j = 1} ^{2 ^{n}} u _{x} (W (t _{j - 1}), t _{j - 1}) (W (t _{j}) - W (t _{j - 1})) \longrightarrow \int_{0} ^{1} u _{x} (W (s), s) d W _{s}, \\ \sum_{j = 1} ^{2 ^{n}} u _{x x} \left(W \left(t _{j - 1}\right), t _{j - 1}\right) \left(W \left(t _{j}\right) - W \left(t _{j - 1}\right)\right) ^{2} \longrightarrow \int_{0} ^{1} u _{x x} \left(W _{s}, s\right) d s, \text{an d} \\ \sum_{j = 1} ^{2 ^{n}} o \big ((W (t _{j}) - W (t _{j - 1})) ^{2} \big) \longrightarrow 0. \\ \end{array}
$$

It follows that

$$
\begin{array}{l} u (W _{1}, 1) - u (0, 0) = \lim  _{n \rightarrow \infty} \left(S _{1} ^{(n)} + S _{2} ^{(n)}\right) \\ = \int_{0} ^{1} u _{s} (W _{s}, s) d s + \int_{0} ^{1} u _{x} (W (s), s) d W _{s} \\ + \frac{1}{2} \int_{0} ^{1} u _{x x} (W _{s}, s) d s. \\ \end{array}
$$

Proof of Lemma 2 (Sketch) If the function  $g(x,t)$  were constant, then this would follow immediately from the Quadratic Variation Formula proved in Lecture 5. For functions  $g$  that are merely continuous (and uniformly bounded), the result also follows from the Quadratic Variation Formula, but a more delicate argument is needed. In brief, the idea is this: Although  $g(W_{t},t)$  is not constant, it is nearly constant over short stretches of time, by continuity. In particular, for any  $\varepsilon >0$  there exists  $\delta >0$  such that, with probability at least  $1 - \varepsilon$ ,

$$
| s - t | <   \delta \quad \Longrightarrow \quad | g (W _{t}, t) - g (W _{s}, s) | <   \varepsilon .
$$

Without loss of generality, we may take  $\delta = 1 / 2^m$  for some integer  $m$ . Now, over each time interval of length  $2^{-m}$ , we approximate  $g(W_t,t)$  by its value at the beginning of the time interval: For

$$
n > m,
$$

$$
\begin{array}{l} \sum_{j = 0} ^{2 ^{n} - 1} g \left(W \left(t _{j}\right), t _{j}\right) \left(\left(W \left(t _{j + 1}\right) - W \left(t _{j}\right)\right) ^{2} \right. \tag {28} \\ = \sum_{i = 0} ^{2 ^{m} - 1} g (W (i / 2 ^{m})) \left(\sum_{j = 0} ^{2 ^{n - m} - 1} ((W ((i / 2 ^{m}) + (j / 2 ^{n})) - W ((i / 2 ^{m}) + (j / 2 ^{n}) - (1 / 2 ^{n}))) ^{2}\right) + \text{er ro r}, \\ \end{array}
$$

where

$$
\operatorname{er ro r} \leq \varepsilon \sum_{j = 0} ^{2 ^{n} - 1} \left(\left(W \left(t _{j + 1}\right) - W \left(t _{j}\right)\right) ^{2} \approx \varepsilon . \right.
$$

Note that the last approximation is valid as  $n \to \infty$ , by the Quadratic Variation Formula. But observe also that each of the inner sums in (28) is also of the type considered in the Quadratic Variation Formula, and so, as  $n \to \infty$ , each of these inner sums converges to  $1 / 2^m$ . Thus, for each fixed  $m$ ,

$$
\limsup_{n\to \infty}\left|\sum_{j = 0}^{2^{n} - 1}g(W(t_{j}),t_{j})((W(t_{j + 1}) - W(t_{j}))^{2} - 2^{-m}\sum_{i = 0}^{2^{m} - 1}g(W(i / 2^{m}))\right|\leq \varepsilon .
$$

Now

$$
\lim _{m \to \infty} 2 ^{- m} \sum_{i = 0} ^{2 ^{m} - 1} g (W (i / 2 ^{m})) = \int_{0} ^{1} g (W _{t}, t) d t
$$

Thus,

$$
\limsup _{n \to \infty} | \sum_{j = 0} ^{2 ^{n} - 1} g (W (t _{j}), t _{j}) ((W (t _{j + 1}) - W (t _{j})) ^{2} - \int_{0} ^{1} g (W _{t}, t) d t | \leq \varepsilon .
$$

Since  $\varepsilon > 0$  may be chosen arbitrarily small, the result (26) follows. The second result (27) may be proved by similar arguments.

# LECTURE 7: BLACK-SCHOLES THEORY

# 1. INTRODUCTION: THE BLACK-SCHOLES MODEL

In 1973 Fisher Black and Myron Scholes ushered in the modern era of derivative securities with a seminal paper<sup>1</sup> on the pricing and hedging of (European) call and put options. In this paper the famous Black-Scholes formula made its debut, and the Itô calculus was unleashed upon the world of finance.<sup>2</sup> In this lecture we shall explain the Black-Scholes argument in its original setting, the pricing and hedging of European contingent claims. In subsequent lectures, we will see how to use the Black-Scholes model in conjunction with the Itô calculus to price and hedge all manner of exotic derivative securities.

In its simplest form, the Black-Scholes(-Merton) model involves only two underlying assets, a riskless asset CASH BOND and a risky asset STOCK. The asset CASH BOND appreciates at the short rate, or riskless rate of return  $r_t$ , which (at least for now) is assumed to be nonrandom, although possibly time-varying. Thus, the price  $B_t$  of the CASH BOND at time  $t$  is assumed to satisfy the differential equation

$$
\frac{d B _{t}}{d t} = r _{t} B _{t}, \tag {1}
$$

whose unique solution for the value  $B_0 = 1$  is (as the reader will now check)

$$
B _{t} = \exp \left(\int_{0} ^{t} r _{s} d s\right). \tag {2}
$$

The share price  $S_{t}$  of the risky asset STOCK at time  $t$  is assumed to follow a stochastic differential equation (SDE) of the form

$$
d S _{t} = \mu_{t} S _{t} d t + \sigma S _{t} d W _{t}, \tag {3}
$$

where  $\{W_t\}_{t \geq 0}$  is a standard Brownian motion,  $\mu_t$  is a nonrandom (but not necessarily constant) function of  $t$ , and  $\sigma > 0$  is a constant called the volatility of the STOCK.

Proposition 1. If the drift coefficient function  $\mu_t$  is bounded, then the SDE (3) has a unique solution with initial condition  $S_0$ , and it is given by

$$
S _{t} = S _{0} \exp \left(\sigma W _{t} - \sigma^{2} (t / 2) + \int_{0} ^{t} \mu_{s} d s\right) \tag {4}
$$

Moreover, under the risk-neutral measure, it must be the case that

$$
r _{t} = \mu_{t}. \tag {5}
$$

Proof. As in many arguments to follow, the magical incantation is "Itô's formula". Consider first the formula (4) for the share price of STOCK; to see that this defines a solution to the SDE (3), apply Itô's formula to the function

$$
u (x, t) = \exp \left(\sigma x - \sigma^{2} (t / 2) + \int_{0} ^{t} \mu_{s} d s\right).
$$

To see that the solution is unique, check your favorite reference on the theory of SDEs. Finally, to see that the drift coefficient  $\mu_t$  must coincide with the riskless rate of return  $r_t$  in the risk-neutral world, recall that under the risk-neutral measure the discounted share price of STOCK must be a martingale. The appropriate discount factor is  $B_t$ , so the discounted share price of STOCK is

$$
S _{t} ^{*} = S _{t} / B _{t} = S _{0} \exp \left(\sigma W _{t} - (\sigma^{2} t / 2) + \int_{0} ^{t} (\mu_{s} - r _{s}) d s\right).
$$

Applying Itô's formula once more, one finds that

$$
d S _{t} ^{*} = \sigma S _{t} ^{*} d W _{t} + S _{t} ^{*} (\mu_{t} - r _{t}) d t.
$$

In order that  $S_{t}^{*}$  be a martingale, it is necessary that the  $dt$  term be 0; this implies that  $\mu_t = r_t$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e607bf8b-adbd-4429-b019-7daf8f2ae768/9ebcd3563af274a3ae08a6663b8c08d5ccf2202fe33f4838b260ec69c00cbd76.jpg)

Corollary 1. Under the risk-neutral measure, the log of the discounted stock price at time  $t$  is normally distributed with mean  $\log S_0 - \sigma^2 t / 2$  and variance  $\sigma^2 T$ .

# 2. THE BLACK-SCHOLES FORMULA FOR THE PRICE OF A EUROPEAN CALL OPTION

Recall that a European CALL on the asset STOCK with strike  $K$  and expiration date  $T$  is a contract that allows the owner to purchase one share of STOCK at price  $K$  at time  $T$ . Thus, the value of the CALL at time  $T$  is  $(S_T - K)_+$ . According to the Fundamental Theorem of Arbitrage Pricing, the price of the asset CALL at time  $t = 0$  must be the discounted expectation, under the risk-neutral measure, of the value at time  $t = T$ , which, by Proposition 1, is

$$
C \left(S _{0}, 0\right) = C \left(S _{0}, 0; K, T\right) = E \left(S _{T} ^{*} - K / B _{T}\right) _{+} \tag {6}
$$

where  $S_T^*$  has the distribution specified in Corollary 1. A routine calculation, using integration by parts, shows that  $C(x,T;K)$  may be rewritten as

$$
C (x, 0; K, T) = x \Phi (z) - \frac{K}{B _{T}} \Phi (z - \sigma \sqrt{T}), \tag {7}
$$

where

$$
z = \frac{\log (x B _{t} / K) + \sigma^{2} t / 2}{\sigma \sqrt{T}}
$$

and  $\Phi$  is the cumulative normal distribution function.

And that's all there is to the Black-Scholes formula! There are other derivations, some with pedagogical merit, others just long and painful, most based somehow on the Ito formula. For the cultural enlightenment of the reader, we shall present another argument, based on PDE theory, in the next section. Before we leave this derivation, though, we should observe that it works essentially unchanged for all European-style derivative securities. Let  $F: \mathbb{R} \rightarrow \mathbb{R}$  be a function of polynomial

growth, and consider the derivative security whose value at  $t = T$  is  $F(S_{T})$ . Then the value at time  $t = 0$  of this derivative security is

$$
V _{0} = E B _{T} ^{- 1} F (B _{T} S _{T} ^{*}), \tag {8}
$$

where  $S_T^*$  has the lognormal distribution specified in Corollary 1 above.

# 3. THE BLACK-SCHOLES PDE

Next, another derivation of the Black-Scholes formula. This one proceeds by finding a PDE for the price function  $C(x,T) = C(x,T;K)$  and then verifying that the function defined by (7) solves the PDE. It has the disadvantage that the issues of uniqueness and smoothness of solutions to the PDE must be tackled separately (and we won't do this here). For the sake of simplicity, we shall only consider the case where the short rate is constant, that is,  $r_t \equiv r$ .

Let  $C(S_{t}, t)$  be the price of the CALL at time  $t$  when the share price of STOCK is  $S_{t}$ . By the Fundamental Theorem of Arbitrage Pricing, the discounted CALL price must be a martingale under the risk-neutral measure. Now the Itô formula implies that the CALL price must satisfy the SDE

$$
\begin{array}{l} B _{t} d (B _{t} ^{- 1} C (S _{t}, t)) \\ = C _{x} \left(S _{t}, t\right) d S _{t} + \frac{1}{2} C _{x x} \left(S _{t}, t\right) \sigma^{2} S _{t} ^{2} d t + C _{t} \left(S _{t}, t\right) d t - r _{t} C \left(S _{t}, t\right) d t \\ = C _{x} \left(S _{t}, t\right) \sigma S _{t} d W _{t} + \left\{C _{x} \left(S _{t}, t\right) r _{t} S _{t} + \frac{\sigma^{2} S _{t} ^{2}}{2} C _{x x} \left(S _{t}, t\right) + C _{t} \left(S _{t}, t\right) - r _{t} C \left(S _{t}, t\right) \right\} d t. \tag {9} \\ \end{array}
$$

Here  $C_x, C_{xx}, C_t$ , etc. represent partial derivatives of the call price function  $C(x,t)$  with respect to the indicated variables. Multiplying by the discount factor  $B_t^{-1}$ , one sees that the discounted CALL price can be a martingale only if the  $dt$  term on the right side vanishes. Thus, the call price function  $C(x,t)$  must satisfy the Black-Scholes PDE:

$$
- r _{t} C (x, t) + C _{t} (x, t) + r _{t} x C _{x} (x, t) + \frac{\sigma^{2} x ^{2}}{2} C _{x x} (x, t) = 0 \tag {10}
$$

with the terminal condition

$$
C (x, T) = (x - K) _{+}. \tag {11}
$$

It may now be verified by differentiation that the function defined by the Black-Scholes formula (7) solves the Black-Scholes PDE (10), and converges to the terminal value as  $t \to T-$ . This isn't an especially enlightening way to spend one's time. What might make a nice EXERCISE, though, is to check that (7) solves the Black-Scholes PDE (10) by using a computer package that does symbolic differentiation.

Observe that nowhere in this argument did we use the specific form of the terminal payoff, except in determining the terminal condition (11). Thus, the argument applies, unchanged, to the price function  $C(x,t)$  for any derivative security whose terminal payoff is a function of the terminal STOCK price  $S_{T}$ ; and so the Black-Scholes PDE (10) must hold for the price function of any such derivative security.

# 4. HEDGING IN CONTINUOUS TIME

Can one hedge a call option in the traded assets CASH BOND and STOCK? If so, how does one do it? The answer comes by examination of the SDE (9) satisfied by the call price function  $C(S_{t},t)$ . To obtain this SDE, we once again invoke the Ito formula to get

$$
\begin{array}{l} d C \left(S _{t}, t\right) = C _{x} \left(S _{t}, t\right) d S _{t} + \left(C _{t} \left(S _{t}, t\right) + \frac{\sigma^{2} S _{t} ^{2}}{2} C _{x x} \left(S _{t}, t\right)\right) d t \tag {12} \\ = C _{x} \left(S _{t}, t\right) d S _{t} + \left(- r _{t} S _{t} C _{x} \left(S _{t}, t\right) + r _{t} C \left(S _{t}, t\right)\right) d t \\ = C _{x} \left(S _{t}, t\right) d S _{t} + \left(- \frac{S _{t} C _{x} \left(S _{t} , t\right)}{B _{t}} + \frac{C \left(S _{t} , t\right)}{B _{t}}\right) d B _{t} \\ \end{array}
$$

Observe that the second equality follows from the first because the call price function  $C(x, t)$  must satisfy the Black-Scholes PDE (10); and the third equality follows from the second because the CASH BOND price  $B_{t}$  satisfies the ODE (1).

Equation (12) shows that the instantaneous fluctuation in the price of the CALL at any time  $t$  is a linear combination of the instantaneous fluctuations in the share prices of STOCK and CASH BOND. The coefficients in this linear combination are expressions involving the function  $C(x,t)$  and its first partial derivative  $C_x(x,t)$ ; since the call price function  $C(x,t)$  is explicitly given by the Black-Scholes formula (7), these coefficients may be computed to any desired degree of accuracy, at any time  $t$ . Thus, the formula (12) tells us how to replicate a European CALL by holding a time-dependent portfolio in CASH BOND and STOCK:

Hedging Strategy: At time  $t \leq T$ , hold

$$
\begin{array}{l l} C _{x} \left(S _{t}, t\right) & \text{sh ar es of ST OC Ka nd} \\ \left(- S _{t} C _{x} \left(S _{t}, t\right) + C \left(S _{t}, t\right)\right) / B _{t} & \text{sh ar es of CA SH BO ND}. \end{array} \tag {13}
$$

There is only one problem<sup>6</sup>: how do we know that, if we start with  $C(S_0, 0)$  dollars at time  $t = 0$  and invest it according to the Hedging Strategy, we will have enough assets at time  $t > 0$  to buy the number of shares of STOCK and CASH BOND required? This is, after all, what we would like a hedging strategy to do: if someone pays us  $C(S_0, 0)$  dollars<sup>7</sup> at time  $t = 0$  for a CALL option, we would like to arrange things so that there is absolutely no risk to us of having to pump in any of our own money later to cover the CALL at expiration  $T$ .

Definition 1. A portfolio in the assets CASH BOND and STOCK consists of a pair of adapted processes  $\{\alpha_t\}_{0\leq t\leq T}$  and  $\{\beta_t\}_{0\leq t\leq T}$ , representing the number of shares of CASH BOND and STOCK that are owned (or shorted) at times  $0\leq t\leq T$ . The portfolio is said to be self-financing if, with probability 1, for every  $t\in [0,T]$ ,

$$
\alpha_{t} B _{t} + \beta_{t} S _{t} = \alpha_{0} B _{0} + \beta_{0} S _{0} + \int_{0} ^{t} \alpha_{s} d B _{s} + \int_{0} ^{t} \beta_{s} d S _{s} \tag {14}
$$

A portfolio  $\{(\alpha_{t},\beta_{t})\}_{0\leq t\leq T}$  replicates a derivative security whose value at  $t = T$  is  $V_{T}$  if, with probability 1,

$$
V _{T} = \alpha_{T} B _{T} + \beta_{T} S _{T}. \tag {15}
$$

The equation (14) states that the value  $\alpha_{t}B_{t} + \beta_{t}S_{t}$  of the portfolio at any time  $t$  should be the initial value  $\alpha_{0}B_{0} + \beta_{0}S_{0}$  plus the accumulated changes in value due to fluctuations  $dB_{s}$  and  $dS_{s}$  in the values of the assets held at times up to  $t$ . A self-financing portfolio that replicates a derivative security is called a hedge or a hedging strategy.

Proposition 2. The portfolio defined by equations (13) is a hedge for the CALL.

Proof. The strategy (13) specifies the portfolio

$$
\beta_{t} = C _{x} \left(S _{t}, t\right) \quad \text{an d} \tag {16}
$$

$$
\alpha_{t} = \left(- S _{t} C _{x} \left(S _{t}, t\right) + C \left(S _{t}, t\right)\right) / B _{t} \tag {17}
$$

The value of this portfolio at any time  $t \leq T$  is

$$
\alpha_{t} B _{t} + \beta_{t} S _{t} = \left(- S _{t} C _{x} \left(S _{t}, t\right) + C \left(S _{t}, t\right)\right) + C _{x} (x, t) S _{t} = C \left(S _{t}, t\right). \tag {18}
$$

In particular, setting  $t = T$ , one sees that the portfolio replicates the CALL. To see that the portfolio is self-financing, integrate the stochastic differential equation (12) for the value of the call to obtain

$$
C \left(S _{t}, t\right) = C \left(S _{0}, 0\right) + \int_{0} ^{t} \alpha_{s} d B _{s} + \int_{0} ^{t} \beta_{s} d S _{s}. \tag {19}
$$

Substituting  $C(S_{t}, t) = \alpha_{t}B_{t} + \beta_{t}S_{t}$  and  $C(S_{0}, 0) = \alpha_{0}B_{0} + \beta_{0}S_{0}$ , by (18), yields (14).

# 5. THE ARBITRAGE ARGUMENT

It is possible to avoid the use of the Fundamental Theorem and risk-neutral measures in the derivation of the Black-Scholes formula altogether by resorting to an arbitrage argument. Although this argument is somewhat circuitous, it is instructive.

Assume that the price process of the CASH BOND obeys (1), and that the share price process of STOCK obeys the SDE (3). Since we have not assumed that the underlying probability is risk-neutral, it is no longer necessary that  $\mu_t = r_t$ .

Consider the problem of pricing a derivative security whose payoff at expiration  $t = T$  is  $F(S_{T})$ , for some (measurable) function  $F$  of polynomial growth. Let  $V_{0}$  be the  $t = 0$  price of this derivative security.

Theorem 1. Let  $C(x,t)$ , for  $0 \leq t \leq T$  and  $x \in \mathbb{R}_+$ , be the unique solution of the Black-Scholes PDE (10) that satisfies the terminal condition  $C(x,T) = F(x)$ . In the absence of arbitrage,

$$
V _{0} = C \left(S _{0}, 0\right). \tag {20}
$$

Note: The Black-Scholes PDE does not involve the drift coefficient  $\mu_t$  that appears in the SDE 3), and so the function  $C(x,t)$  does not depend in any way on the function  $\mu_t$ . The volatility parameter  $\sigma$  and the short rate  $r_t$  do influence  $C(x,t)$ , but unlike  $\mu_t$  these parameters are "observable" (in particular, the volatility  $\sigma$  is determined by the quadratic variation of the STOCK price process). Thus, two different investors could have two different drift functions in their models for the STOCK price process, but, according to the theorem, would price the derivative security the same way.

Proof. (Sketch.) Define a portfolio  $(\alpha_{t},\beta_{t})_{0\leq t\leq T}$  by equations (16)-(17). By the same argument as in the proof of Proposition 2, the portfolio  $(\alpha_{t},\beta_{t})$  replicates the derivative security, since the terminal condition assures that  $C(x,T) = F(x)$ . Moreover, the Ito formula applies, as earlier, to give the SDE (12)—here we use the assumption that the function  $C(x,t)$  satisfies the Black-Scholes PDE. Now (12) may be integrated as in the proof of Proposition 2 to give (19), which implies, again by the same argument as in the proof of Proposition 2, to show that the portfolio  $(\alpha_{t},\beta_{t})$  is self-financing. Thus, the portfolio  $(\alpha_{t},\beta_{t})$  hedges the derivative security.

Now the arbitrage. Suppose that  $V_0 < C(S_0, 0)$ ; in this case, one would at time  $t = 0$

- buy 1 derivative security;  
- short the portfolio  $(\alpha_0, \beta_0)$ ; and  
- invest the proceeds  $C(S_0, 0) - V_0$  in CASH BOND.

In the trading period  $0 < t < T$  one would dynamically update the short position  $-(\alpha_0, \beta_0)$  to  $-(\alpha_t, \beta_t)$ , so that at the expiration time  $t = T$  the short position would cancel the payoff from the 1 derivative security bought at  $t = 0$ . Note that no further infusion of assets would be needed for this dynamic updating, because the portfolio  $(\alpha_0, \beta_0)$  is self-financing. At the expiration time  $t = T$ , the net proceeds would be

$$
(C (S _{0}, 0) - V _{0}) B _{T} > 0,
$$

with probability one. Since the position at time  $t = 0$  was flat, this is an arbitrage. Consequently,  $V_{0}$  cannot be less than  $C(S_{0},0)$ . The same argument, "reversed", shows that  $V_{0}$  cannot be more than  $C(S_{0},0)$ .

# 6. EXERCISES

In problems 1-2, assume that there are tradable assets CASH BOND and STOCK whose price processes obey the differential equations

$$
d B _{t} = r _{t} B _{t} d t \quad \text{an d} \tag {21}
$$

$$
d S _{t} = S _{t} \left(r _{t} d t + \sigma d W _{t}\right), \tag {22}
$$

where  $W_{t}$  is a standard Wiener process (Brownian motion) and  $r_t$  is the "short rate". Assume that the "short rate"  $r_t$  is a continuous, non-random function of  $t$ .

Problem 1: Consider a contingent claim that pays  $S_T^n$  at time  $T$ , where  $n$  is a positive integer.

(A) Show that the value of this contingent claim at time  $t \leq T$  is

$$
h (t, T) S _{t} ^{n}
$$

for some function  $h$  of  $(t, T)$ . HINT: Use the fact that the process  $S_{t}$  is given by (4). You should not need the Ito formula if you start from (4).

(B) Derive an ordinary differential equation for  $h(t,T)$  in the variable  $t$ , and solve it. HINT: Your ordinary differential equation should be first-order, and it should involve only the short rate  $r_t$ .

Problem 2: Let  $C(S_{t}, t; K, T)$  be the price at time  $t$  of a European call option on the tradable asset  $(S_{t})$  with strike price  $K$  and exercise time  $T$ .

(A) Show that the price function  $C$  satisfies the following symmetry properties: for any positive constant  $a$ ,

$$
C (S, t; K, T) = C (S, 0; K, T - t) \tag {23}
$$

$$
C (a S, t; a K, T) = a C (S, t; K, T) \quad \forall a > 0. \tag {24}
$$

(B) Use the result of part (A) to derive an identity relating the partial derivatives  $C_S$  and  $C_K$ .

(C) Find a PDE in the variables  $K, T$  for the function  $C(x, 0; K, T)$ . (The equation should involve first and second partial derivatives.)

# LECTURE 8: THE CAMERON-MARTIN FORMULA AND BARRIER OPTIONS

# 1. INTRODUCTION

Thus far in our study of continuous-time markets, we have considered only very simple derivative securities, the European contingent claims (contingent claims whose payoffs are functions only of the terminal share price of the underlying asset). In this lecture, we shall study several exotic options – the knockins/knockouts and barrier options – whose payoffs depend on the entire history of the share price up to termination. These options are "activated" (or, in some cases, "deactivated") when the share price of the underlying asset reaches a certain threshold value. If, as in the simple Black-Scholes model, the share price process behaves as a geometric Brownian motion under the risk-neutral measure, then the time at which the option is activated is the first-passage time of the driving Brownian motion to a linear boundary. Thus, it should be no surprise that the exponential martingales of Lecture 5 play a central role in the pricing and hedging of barrier and knockin/knockout options. The use of these martingales is greatly facilitated by the Cameron-Martin theorem, a precursor to the Girsanov theorem, which will be discussed in a subsequent lecture.

# 2. THE CAMERON-MARTIN THEOREM

2.1. Exponential Martingales. Let  $\{W_t = W(t)\}_{t \geq 0}$  be a standard Brownian motion, defined on a probability space  $(\Omega, \mathcal{F}, P)$ , and  $\{\mathcal{F}_t\}_{t \geq 0}$  the associated Brownian filtration. For any real number  $\theta$ , define a stochastic process  $\{Z_\theta(t)\}_{t \geq 0}$  as follows:

$$
Z _{\theta} (t) = \exp \left\{\theta W (t) - \theta^{2} t / 2 \right\}. \tag {1}
$$

Proposition 1. For each  $\theta \in \mathbb{R}$  the process  $\{Z_{\theta}(t)\}_{t\geq 0}$  is a positive martingale relative to the Brownian filtration.

Proof. The proof was sketched in Lecture 5. Here is a reprise:

What must be shown is that for any  $s, t \geq 0$ ,  $E(Z_{\theta}(t + s) \mid \mathcal{F}_s) = Z_{\theta}(s)$ . For this, we shall use an elementary fact about the normal distribution: If  $X$  is normally distributed with mean zero and variance  $\sigma^2$ , then for any  $\theta \in \mathbb{R}$ ,

$$
E \exp \left\{\theta X \right\} = \exp \left\{\theta^{2} / 2 \right\}. \tag {2}
$$

(The alert reader will immediately recognize that this calculation may be done by "completing the square".) Now to establish the martingale property of the process  $Z_{\theta}(t)$ , proceed as follows, using elementary properties of conditional expectation and the fact that the random variable  $W(t + s) -$

$W(s)$  is independent of the  $\sigma$ -algebra  $\mathcal{F}_s$ :

$$
\begin{array}{l} E \left(Z _{\theta} (t + s) \mid \mathcal {F} _{s}\right) = E \left(\exp \left\{\theta W (t + s) - \theta^{2} (t + s) / 2 \right\} \mid \mathcal {F} _{s}\right) \\ = E \left(\exp \left\{\theta W (s) - \theta^{2} s / 2 \right\} \exp \left\{\theta \left(W (t + s) - W (s)\right) - \theta^{2} t / 2 \right\} \mid \mathcal {F} _{s}\right) \\ = \exp \left\{\theta W (s) - \theta^{2} s / 2 \right\} E \left(\exp \left\{\theta (W (t + s) - W (s)) - \theta^{2} t / 2 \right\} \mid \mathcal {F} _{s}\right) \\ = Z _{\theta} (s) E \left(\exp \left\{\theta \left(W (t + s) - W (s)\right) - \theta^{2} t / 2 \right\} \mid \mathcal {F} _{s}\right) \\ = Z _{\theta} (s) E \exp \left\{\theta \left(W (t + s) - W (s)\right) - \theta^{2} t / 2 \right\} \\ = Z _{\theta} (s). \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e607bf8b-adbd-4429-b019-7daf8f2ae768/f34972fcb8c99b8d66d9a405028021c5d1ef95fccad70b6bb4e6db007ea2e125.jpg)

2.2. Likelihood Ratios. Let  $(\Omega, \mathcal{F}, P)$  be any probability space on which is defined a positive random variable  $Z$  with expectation  $EZ = 1$ . The random variable  $Z$  may be used to define a new probability measure  $Q$  on  $(\Omega, \mathcal{F})$  as follows: For any event  $F \in \mathcal{F}$ , set

(3)  $Q(F) = E_P(Z\mathbf{1}_F)$

To prove that  $Q$  is actually a probability measure, we must show that (i)  $Q(F) > 0$  for any event  $F$ ; (ii)  $Q(\Omega) = 1$ ; and (iii)  $Q$  is countably additive. The first of these properties follows from the hypothesis that  $Z > 0$ , in view of equation (3), and the second follows by the simple calculation  $Q(\Omega) = E_{P}(Z \cdot 1) = E_{P}Z = 1$ . To see that  $Q$  is countably additive, observe that if  $F_{1}, F_{2}, \ldots$  is a sequence of pairwise disjoint events whose union is  $\cup F_{n} = F$ , then  $\mathbf{1}_{F} = \sum_{n} \mathbf{1}_{F_{n}}$ , and so, by the monotone convergence theorem,

$$
Q (F) = E _{P} (Z \mathbf {1} _{F}) = E _{P} (Z \sum_{n = 1} ^{\infty} \mathbf {1} _{F _{n}}) = \sum_{n = 1} ^{\infty} E _{P} (Z \mathbf {1} _{F _{n}})) = \sum_{n = 1} ^{\infty} Q (F _{n}).
$$

Proposition 2. The expectation operators  $E_P$  and  $E_Q$  are related as follows: for any nonnegative random variable  $Y$ ,

(4)  $E_{Q}Y = E_{P}(YZ)$  and

(5)  $E_{P}Y = E_{Q}(Y / Z)$

Proof. (Sketch) The first identity (4) is true for indicator random variables  $Y = \mathbf{1}_F$  by definition of the probability measure  $Q$ . Consequently, it is also true for all simple random variables  $Y$  (linear combinations of indicators), by linearity of expectation operators. Finally it is true for all nonnegative random variables  $Y$  by approximation: any nonnegative r.v.  $Y$  is the monotone limit of simple r.v.s, and so the monotone convergence theorem guarantees that the identity (4) persists.

To see that the identity (5) is valid for all nonnegative random variables  $Y$ , note that it is true for any random variable  $Y$  of the form  $Y = Y'Z$ , where  $Y'$  is a nonnegative random variable, by the first identity (4). But every nonnegative random variable  $Y$  is of this form, since  $Z > 0!$

When two probability measures  $P$  and  $Q$  satisfy relations (4) and (5) for some positive random variable  $Z$ , the measures are said to be mutually absolutely continuous (abbreviated a.c.), and the random variable  $Z$  is called the likelihood ratio (or Radon-Nikodym derivative) of the probability measure  $Q$  with respect to the probability measure  $P$ . The notation

(6)  $\frac{dQ}{dP} := Z$

is often used, because if one interprets the expectations in the identities (4) and (5) as integrals then these identities are revealed as nothing more than change-of-variable formulas:

$$
E _{Q} Y = \int Y d Q = \int Y \left(\frac{d Q}{d P}\right) d P = E _{P} (Z Y).
$$

Caution: The likelihood ratio of a probability measure  $Q$  relative to another probability measure  $P$  depends on the  $\sigma$ -algebra  $\mathcal{F}$  on which the probability measures are defined. In particular, the likelihood ratio must be measurable with respect to this  $\sigma$ -algebra. In certain situations there may be more than one  $\sigma$ -algebra of interest. The following proposition spells out the relation between likelihood ratios on different  $\sigma$ -algebras:

Proposition 3. Let  $P, Q$  be mutually a.c. probability measures on  $(\Omega, \mathcal{F})$ , with likelihood ratio  $Z = (dQ / dP)_{\mathcal{F}}$ . Suppose that  $\mathcal{G}$  is a  $\sigma$ -algebra of events contained in  $\mathcal{F}$ . Then the likelihood ratio of  $Q$  relative to  $P$  on the  $\sigma$ -algebra  $\mathcal{G}$  is

$$
\left(\frac{d Q}{d P}\right) _{\mathcal {G}} = E _{P} (Z \mid \mathcal {G}). \tag {7}
$$

Proof. It must be shown that, for every event  $G \in \mathcal{G}$ ,

$$
Q (G) = E _{P} \left(\mathbf {1} _{G} E _{P} (Z \mid \mathcal {G})\right). \tag {8}
$$

By hypothesis,  $\mathcal{G} \subset \mathcal{F}$ ; consequently,  $G \in \mathcal{F}$ , and so  $Y = \mathbf{1}_G$  is  $\mathcal{F}$ -measurable (and, of course, also  $\mathcal{G}$ -measurable). Furthermore, also by hypothesis,  $Z$  is the likelihood ratio of  $Q$  relative to  $P$  on the  $\sigma$ -algebra  $\mathcal{F}$ . Therefore, by equation (4), with  $Y = \mathbf{1}_G$ ,

$$
Q (G) = E _{Q} \mathbf {1} _{G} = E _{P} (Z \mathbf {1} _{G}).
$$

The last expectation may be evaluated using the Tower Rule for conditional expectation: since  $\mathbf{1}_G$  is  $\mathcal{G}$ -measurable, it factors out of the conditional expectation on  $\mathcal{G}$ , yielding

$$
\begin{array}{l} Q (G) = E _{P} \left(Z \mathbf {1} _{G}\right) \\ = E _{P} \left(E _{P} \left(Z \mathbf {1} _{G} \mid \mathcal {G}\right)\right) \\ = E _{P} \left(\mathbf {1} _{G} E _{P} (Z, | \mathcal {G})\right), \\ \end{array}
$$

as desired.

Proposition 3 shows that, if  $\{\mathcal{F}_t\}$  is a filtration of a probability space  $\Omega$ , and if  $P, Q$  are mutually absolutely continuous probability measures on  $\mathcal{F}_T$  for some  $T \leq \infty$ , then  $P, Q$  are mutually absolutely continuous on every  $\mathcal{F}_t$  such that  $t \leq T$ , and that the Radon-Nikodym derivatives

$$
\left(\frac{d Q}{d P}\right) _{\mathcal {F} _{t}}
$$

constitute a martingale (relative to  $P$ ) for  $0 \leq t \leq T$ .

2.3. Digression: Likelihood Ratios and Simulation by Importance Sampling. The identities (4) and (5) may be interpreted as formal laws relating the calculation of expectations under the two probability measures  $P$  and  $Q$ . As such, they serve as a computational aid: to compute an expectation  $E_{P}Y$ , one may look for a convenient auxiliary probability measure  $Q$  and then compute the expectation  $E_{Q}(YZ)$  under  $Q$ . Later, we shall give some examples to show how this technique may be used in options pricing.

One may also use the identity (4) as a tool for approximate computations or simulations. The idea is as follows. In the naive approach to simulation, if one has access to a stream of i.i.d.

random variables  $Y_{1}, Y_{2}, \ldots$ , each with the same distribution as does the random variable  $Y$  under the probability measure  $P$ , one could approximate the expectation  $E_{P}Y$  by the sample averages

$$
\bar {Y} _{n} = n ^{- 1} \sum_{j = 1} ^{n} Y _{j}.
$$

By the Law of Large Numbers, these sample averages must converge to  $E_P Y$  as  $n \to \infty$ ; however, the convergence might be slow. Now suppose instead that one has access to a stream of i.i.d. pairs of random variables  $(Y_1, Z_1), (Y_2, Z_2), \ldots$ , each with the same joint distribution as the pair  $(Y, Z)$  under the measure  $Q$ . Then one could approximate the expectation  $E_P Y$  by the sample averages

$$
n ^{- 1} \sum_{j = 1} ^{n} Y _{j} Z _{j}.
$$

Once again, the Law of Large Numbers implies that these averages converge to the desired quantity  $E_{P}Y = E_{Q}(YZ)$ . If  $Q$  is suitably chosen, the convergence may sometimes be considerably faster than for the naive simulation estimates. This technique of simulation is called importance sampling, because it reweights  $Y$ -values so as to make some more "important" than others.

2.4. The Cameron-Martin Theorem. Once again, let  $\{W_t = W(t)\}_{t \geq 0}$  be a standard Brownian motion, defined on a probability space  $(\Omega, \mathcal{F}, P)$ , and let  $\{\mathcal{F}_t\}_{t \geq 0}$  the associated Brownian filtration. For each real number  $\theta$  and each  $T > 0$ , the random variable  $Z_{\theta}(T)$  defined by equation (1) is a positive random variable with expectation one. Hence, it is a likelihood ratio. Denote by  $P_{\theta}$  and  $E_{\theta}$  the probability measure and expectation operator determined by the likelihood ratio  $Z_{\theta}(T)$  on the probability space  $(\Omega, \mathcal{F}_T)$ : that is, for every event  $F \in \mathcal{F}_T$  and every  $\mathcal{F}_T$ -measurable, nonnegative random variable  $Y$ ,

(9)  $P_{\theta}(F) = E_0(Z_{\theta}(T)\mathbf{1}_F),$ $E_{\theta}Y = E_0(Z_{\theta}(T)Y),$  and

(10)  $P_0(F) = E_\theta(Z_\theta(T)^{-1}\mathbf{1}_F),$ $E_0Y = E_\theta(Z_\theta(T)^{-1}Y)$ .

The important theorem of CAMERON & MARTIN describes the distribution of the random process  $\{W_{t}\}_{t\geq 0}$  under the tilted measure  $P_{\theta}$ :

Theorem 1. (Cameron-Martin) Under the probability measure  $P_{\theta}$ , the process  $\{W(t)\}_{0 \leq t \leq T}$  has the same law (joint distribution) as a Brownian motion with drift  $\theta$ . Equivalently, the stochastic process  $\{W(t)\}_{0 \leq t \leq T}$  has the same law under  $P_{\theta}$  as the process  $\{W(t) + \theta t\}_{0 \leq t \leq T}$  has under the probability measure  $P = P_{0}$ .

Proof. To make this at least plausible, let's consider the distribution of the single random variable  $W_{T} = U$  under the probability measure  $P_{\theta}$ . To simplify the calculation, assume that  $T = 1$ . For

any real number  $y$

$$
\begin{array}{l} P _{\theta} \{U \leq y \} = E Z _{\theta} (1) \mathbf {1} \{U \leq y \} \\ = E \exp \left\{\theta U - \theta^{2} / 2 \right\} \mathbf {1} \{U \leq y \} \\ = \int_{- \infty} ^{y} \exp \left\{\theta u - \theta^{2} / 2 \right\} \exp \left\{- u ^{2} / 2 \right\} d u / \sqrt{2 \pi} \\ = \int_{- \infty} ^{y} \exp \left\{- (u - \theta) ^{2} / 2 \right\} d u / \sqrt{2 \pi} \\ = \int_{- \infty} ^{y + \theta} \exp \left\{- v ^{2} / 2 \right\} d v / \sqrt{2 \pi} \\ = P _{0} \{U - \theta \leq y \} \\ \end{array}
$$

Thus, under the probability measure  $P_{\theta}$ , the random variable  $U = W_{1}$  has the same distribution as does the random variable  $W_{1} + \theta$  under the probability measure  $P_{0}$ .

To prove the theorem, we must show that, for any  $0 = t_0 < t_1 < \dots < t_n = T$ , the joint distribution of the random variables  $W(t_0), W(t_1), \ldots, W(t_n)$  under  $P_{\theta}$  is the same as the joint distribution of  $W(t_0) + \theta t_0, W(t_1) + \theta t_1, \ldots, W(t_n) + \theta t_n$  under  $P_0$ . Equivalently, we must show that the joint distribution of the increments  $(\Delta W)_1, (\Delta W)_2, \ldots, (\Delta W)_n$  under  $P_{\theta}$  is the same as that of  $(\Delta W + \theta \Delta t)_1, (\Delta W + \theta \Delta t)_2, \ldots, (\Delta W + \theta \Delta t)_n$  under  $P_0$ . Here  $(\Delta W)_k = W(t_k) - W(t_{k-1})$  and  $(\Delta t)_k = t_k - t_{k-1}$ . Consider the joint moment generating function:

$$
\begin{array}{l} E _{\theta} \exp \{\sum_{k = 1} ^{n} \lambda_{k} (\Delta W) _{k} \} = E _{0} Z _{\theta} (T) \exp \{\sum_{k = 1} ^{n} \lambda_{k} (\Delta W) _{k} \} \\ = E _{0} \exp \left\{\theta W \left(t _{n}\right) - \theta^{2} t _{n} / 2 \right\} \exp \left\{\sum_{k = 1} ^{n} \lambda_{k} (\Delta W) _{k} \right\} \\ = E _{0} \exp \left\{\sum_{k = 1} ^{n} \left(\lambda_{k} + \theta\right) (\Delta W) _{k} \right\} \exp \left\{- \theta^{2} t _{n} / 2 \right\} \\ = \exp \left\{- \theta^{2} t _{n} / 2 \right\} \prod_{k = 1} ^{n} E _{0} \exp \left\{\left(\lambda_{k} + \theta\right) (\Delta W) _{k} \right\} \\ = \exp \left\{- \theta^{2} t _{n} / 2 \right\} \prod_{k = 1} ^{n} \exp \left\{\left(\lambda_{k} + \theta\right) ^{2} (\Delta t) _{k} / 2 \right\} \\ = \prod_{k = 1} ^{n} \exp \left\{\lambda_{k} ^{2} (\Delta t) _{k} / 2 + \theta \lambda_{k} (\Delta t) _{k} \right\} \\ = E _{0} \exp \left\{\sum_{k = 1} ^{n} \lambda_{k} (\Delta W + \theta \Delta t) _{k} \right\}. \\ \end{array}
$$

This proves the result, because if the joint moment generating functions of two distributions are the same, then their joint distributions are the same.

2.5. Cameron-Martin Theorem: Some Ramifications. The Cameron-Martin theorem relates Brownian motion with drift to standard Brownian motion, that is, Brownian motion with no

drift. Thus, implicitly, it also relates Brownian motions with different drifts. In particular, the expectation operators  $E_{\theta}$  and  $E_{\alpha}$  are related as follows:

# Corollary 1.

$$
\left(\frac{d P _{\theta}}{d P _{\alpha}}\right) _{\mathcal {F} _{T}} = \frac{Z _{\theta} (T)}{Z _{\alpha} (T)} = \exp \left\{\left(\theta - \alpha\right) W _{T} - \left(\theta^{2} - \alpha^{2}\right) T / 2 \right\}. \tag {11}
$$

Proof. This identity simply means that for any event  $F \in \mathcal{F}_T$  and any nonnegative  $\mathcal{F}_T$ -measurable random variable  $Y$ ,

$$
P _{\theta} (F) = E _{\alpha} \left(\frac{Z _{\theta} (T)}{Z _{\alpha} (T)}\right) \mathbf {1} _{F} \quad \text{an d} \quad E _{\theta} Y = E _{\alpha} \left(\frac{Z _{\theta} (T)}{Z _{\alpha} (T)}\right) Y. \tag {12}
$$

These equations are obtained from the identities (9) and (10) by routine substitutions.

The Cameron-Martin formula (11) gives an explicit formula for the likelihood ratio  $dP_{\theta} / dP_{\alpha}$  on the  $\sigma$ -algebra  $\mathcal{F}_T$ . It is not difficult to deduce a similar formula for the  $\sigma$ -algebra  $\mathcal{F}_{\tau}$  of a bounded stopping time. Recall that if  $\tau$  is a stopping time, then the  $\sigma$ -algebra  $\mathcal{F}_{\tau}$  consists of all events that are "observable" by time  $\tau$ .<sup>1</sup>

Corollary 2. If  $\tau$  is a bounded stopping time, then

$$
\left(\frac{d P _{\theta}}{d P _{\alpha}}\right) _{\mathcal {F} _{\tau}} = \frac{Z _{\theta} (\tau)}{Z _{\alpha} (\tau)} = \exp \left\{\left(\theta - \alpha\right) W _{\tau} - \left(\theta^{2} - \alpha^{2}\right) \tau / 2 \right\}. \tag {13}
$$

Proof. It suffices to consider the case where  $\alpha = 0$ , as the general case may then be deduced by the same calculations as in the proof of Corollary 1. To prove the identity (13), it suffices to show that for any nonnegative  $\mathcal{F}_{\tau}$ -measurable random variable  $Y$ ,

$$
E _{\theta} Y = E _{0} \left(Z _{\theta} (\tau) Y\right). \tag {14}
$$

Since  $\tau$  is bounded, there is some nonrandom  $T < \infty$  such that  $\tau \leq T$ . For any such  $T$ , if  $Y$  is  $\mathcal{F}_{\tau}$ -measurable, then it is also  $\mathcal{F}_T$ -measurable (because  $\mathcal{F}_{\tau} \subset \mathcal{F}_T$ ). Consequently, by Corollary 1 (in particular, by equation (12)),

$$
E _{\theta} Y = E _{0} (Z _{\theta} (T) Y).
$$

To deduce (14), we exploit the fact that the process  $Z_{\theta}(t)$  is a martingale, together with elementary properties of conditional expectation:

$$
\begin{array}{l} E _{\theta} Y = E _{0} \left(Z _{\theta} (T) Y\right) \\ = E _{0} E _{0} \left(Z _{\theta} (T) Y \mid \mathcal {F} _{\tau}\right) \\ = E _{0} \left(Y E _{0} \left(Z _{\theta} (T) \mid \mathcal {F} _{\tau}\right)\right) \\ = E _{0} \left(Y Z _{\theta} (\tau)\right). \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e607bf8b-adbd-4429-b019-7daf8f2ae768/70b988d6eb13f1f5fda3d7f05ae54696954ceabb8d73801d7143775982425f9f.jpg)

# 3. EXAMPLE: A BROWNIAN FIRST-PASSAGE PROBLEM

As a first application of the Cameron-Martin theorem, we shall calculate the probability that a standard Brownian motion  $W_{t}$  ever reaches a straight line with nonzero slope. Although this problem may easily be solved using only the Optional Stopping Formula, in conjunction with an exponential martingale, the use of the Cameron-Martin theorem is instructive, as it will serve as a model for the solution of more complicated problems later.

Let  $W_{t}$  be a standard Brownian motion under the probability measure  $P = P_{0}$ , and let  $\nu$  be the time of first passage to the straight line with slope  $b > 0$  and intercept  $a > 0$ , that is,

$$
\nu := \min  \{t \geq 0: W _{t} = a + b t \} \tag {15}
$$

$$
:= \infty \quad \text{if th er ei sn os uc h} t.
$$

The problem is to evaluate  $P_0\{\nu < \infty\}$ . Observe that the problem may be recast as a first-passage problem for a Brownian motion with drift  $-b$ , because  $\nu$  is the first time that  $W_t - bt = a$ , and  $\{W_t - bt\}_{t \geq 0}$  is a Brownian motion with drift  $-b$ . In particular, the probability we wish to evaluate is

$$
P _{0} \left\{\nu <   \infty \right\} = P _{- b} \left\{\tau (a) <   \infty \right\} = \lim  _{n \rightarrow \infty} P _{- b} \left\{\tau (a) <   n \right\}, \tag {16}
$$

where  $\tau (a)\coloneqq \min \{t\geq 0:W_t = a\}$

To calculate the probability (16), we use Corollary 2 above, with  $Q = P_{-b}$  and  $Q^{*} = P_{b}$ . The likelihood ratio (Radon-Nikodym derivative) of  $P_{b}$  relative to  $P_{-b}$  on the  $\sigma$ -algebra  $\mathcal{F}_{\tau(a)\wedge n}$  is

$$
\left(\frac{d P _{- b}}{d P _{b}}\right) _{\mathcal {F} _{\tau (a) \wedge n}} = \exp \{- 2 b W _{\tau (a) \wedge n} \},
$$

which takes the value  $\exp\{-2ba$  on the event  $\tau(a) < n$ . Consequently, by the Cameron-Martin formula (13),

$$
\begin{array}{l} P _{- b} \left\{\tau (a) <   n \right\} = E _{b} \exp \{- 2 b a \} \mathbf {1} \left\{\tau (a) <   n \right\} \tag {17} \\ = \exp \{- 2 b a \} P _{b} \{\tau (a) <   n \} \\ \longrightarrow \exp \{- 2 b a \}, \\ \end{array}
$$

as  $n\to \infty$ , because under the measure  $P_{b}$ , the process  $W_{t}$  is a Brownian motion with positive drift  $+b$  and so must eventually reach the level  $a$ , by the Law of Large Numbers. Thus,

$$
\boxed {P _{0} \{\nu <   \infty \} = \exp \{- 2 b a \}.} \tag {18}
$$

# 4. BARRIER OPTIONS

To further illustrate the usefulness of the Cameron-Martin theorem, we shall evaluate the arbitrage prices for a simple class of barrier options. A similar method works for the pricing of various knockout and knockin options (see the Exercises below for an example). The BARRIER option that we shall consider here is a contingent claim whose payoff at expiration  $T$  is

$$
\eta = \mathbf {1} \bigl \{\max _{0 \leq t \leq T} S _{T} \geq A \bigr \},
$$

where  $A$  is the activation parameter. Thus, the option pays off \$1 if and only if the share price of STOCK rises to at least  $A$  sometime during the time interval  $[0, T]$ . We shall assume that the price

processes of the assets STOCK and CASH BOND are (under the risk-neutral measure  $P = P_{0}$ )

$$
S _{t} = S _{0} \exp \left\{\left(r - \sigma^{2} / 2\right) t + \sigma W _{t} \right\}
$$

$$
B _{t} = B _{0} \exp \{r t \} \tag {20}
$$

with  $\sigma = 1$  (for simplicity) and  $r > 0$ . We may then write the arbitrage price at  $t = 0$  of the BARRIER as the discounted expected value of its value  $\eta$  at expiration:

$$
\begin{array}{l} V _{0} = e ^{- r T} P _{0} \left\{\max  _{0 \leq t \leq T} S _{t} \geq A \right\} \tag {21} \\ = e ^{- r T} P _{0} \{\max  _{0 \leq t \leq T} (W _{t} + r t - t / 2) \geq \alpha \} \\ \end{array}
$$

where  $\alpha = \log A$ . Our objective is to evaluate the probability in equation (21). The difficulty is that the event involves the entire path of the Brownian motion up to time  $T$ , and in a somewhat complicated way. Notice, though, that if the event were changed by replacing  $W(t) + rt - t / 2$  with  $W(t)$ , then the probability in (21) could be calculated exactly, by the reflection principle. This calculation was carried out in Lecture 5.

Our strategy for dealing with the probability in equation (21) will be to use the Cameron-Martin formula to "tilt" the sloped line back to a horizontal line, then use the reflection principle to evaluate the resulting expectation. This two-stage use of Cameron-Martin and reflection works also in various other option-pricing problems involving barriers, although the details of the calculations will generally be different. The first order of business is to settle on a suitable drift parameter  $\theta$ ; the "right" choice here is

$$
\theta = - r + 1 / 2,
$$

because for this  $\theta$ , the process  $W(t)$  is, under  $P_{\theta}$ , a Brownian motion with drift  $-r + 1/2$ . Thus, if we set

$$
\tilde {W} (t) = W _{t} + r t - t / 2,
$$

then under  $P_{\theta}$ , the process  $\tilde{W}(t)$  will be (up to time  $T$ ) a standard (driftless) Brownian motion. Thus,

$$
\begin{array}{l} P _{0} \{\min  _{0 \leq t \leq T} (W _{t} + r t - t / 2) \geq \alpha \} = E _{\theta} \exp \{- \theta W (T) + \theta^{2} T / 2 \} \mathbf {1} \{\min  _{0 \leq t \leq T} (W _{t} + r t - t / 2) \geq \alpha \} \\ = E _{\theta} \exp \left\{- \theta \tilde {W} (T) + \theta^{2} T / 2 - \theta r T + \theta T / 2 \right\} \mathbf {1} \left\{\min  _{0 \leq t \leq T} \tilde {W} (t) \geq \alpha \right\} \\ = e ^{(\theta^{2} - 2 \theta r + \theta) T / 2} E _{\theta} e ^{- \theta \tilde {W} (T)} \mathbf {1} \{\underset {0 \leq t \leq T} {\min } \tilde {W} (t) \geq \alpha \} \\ = e ^{(\theta^{2} - 2 \theta r + \theta) T / 2} E _{0} e ^{- \theta W (T)} \mathbf {1} \{\underset {0 \leq t \leq T} {\min } W (t) \geq \alpha \}. \\ \end{array}
$$

The final expectation in this chain of equalities involves only a standard Brownian motion, and the event on which the integration takes place involves only the first passage to a horizontal line. We learned how to handle such events in our discussion of the Reflection Principle in Lecture 5. The basic idea is that, conditional on the event that the path visits the level  $\alpha$  at some time prior to  $T$ , the distribution of the endpoint  $W_{T}$  is symmetrically distributed about  $\alpha$ . Consequently,

$$
E _{0} e ^{- \theta W (T)} \mathbf {1} \left\{\min  _{0 \leq t \leq T} W (t) \geq \alpha \right\} = e ^{- \theta \alpha} \int_{0} ^{\infty} \left(e ^{\theta x} + e ^{- \theta x}\right) e ^{- (x + \alpha) ^{2} / 2 T} d x / \sqrt{2 \pi T}. \tag {22}
$$

This integral may be evaluated explicitly in terms of the standard normal cdf  $\Phi(\cdot)$ , by "completing the square".

# 5. EXERCISES

1. Complete the derivation of the arbitrage price of the BARRIER option in Section 4 above:

(a) Use the reflection principle and the Strong Markov property to justify the identity (22).  
(b) Evaluate the integral in equation (22).

2. A Perpetual Option. Assume that the share prices of STOCK and BOND are given by equations (19) and (20), respectively. Consider an option with no date of expiration that pays the owner  $\exp\{-\beta \tau\}$  (dollars) at the first time  $\tau$  that the share price of STOCK reaches  $\alpha$  (if ever). Here  $\beta$  and  $\alpha$  are positive real numbers, and  $S_0 < \alpha$ . Calculate the arbitrage price at time 0 of this option.  
3. Knockin Options. Assume that the prices of CASH BOND and STOCK are governed by the differential equations

(23)  $dB_{t} = rB_{t}dt$

(24)  $dS_{t} = rS_{t}dt + \sigma S_{t}dW_{t}$

for constants  $r, \sigma > 0$ . Consider a knockin put option with strike  $K$  and knockin value  $H > K$ . The payoff from this option at termination  $t = T$  is

$$
\begin{array}{l} (K - S_{T})_{+}\qquad \text{if }\max_{0\leq t\leq T}S_{t}\geq H \\ 0\qquad \text{if }\max_{0\leq t\leq T}S_{t} <   H \\ \end{array}
$$

Find the arbitrage price at  $t = 0$ . HINT: Write the price as a discounted expectation, using indicator variables to get rid of the subscript + on  $(K - S_T)$ . Break this expectation into two expectations, and then evaluate each by using the Cameron-Martin theorem and the reflection principle.

# LECTURE 9: A MODEL FOR FOREIGN EXCHANGE

# 1. FOREIGN EXCHANGE CONTRACTS

There was a time, not so long ago, when a U. S. dollar would buy you precisely .4 British pounds sterling<sup>1</sup>, and a British pound sterling would buy 2.5 U. S. dollars, and you could count on this rate of exchange to persist. By an agreement made in 1944 at the Bretton Woods conference, exchange rates between the major currencies were fixed; if imbalances in supply and demand for different currencies threatened to upset exchange rates, central banks would step in, buying or selling currencies and/or precious metals to correct the supply/demand situation. The agreement lasted until about 1970, when stresses on some of the world's major economies (such as inflation in the U. S. brought on by the Vietnam war) made it impossible for central banks to maintain the exchange rates set by the Bretton Woods agreement. Since then, the central banks have allowed market forces to determine exchange rates between the dollar and the major European currencies.<sup>2</sup> The end result is that the value of the U. S. dollar vis a vis the pound sterling fluctuates in much the same way as does the share price of IBM or British petroleum.

There is, however, an important difference between the dollar/pound sterling exchange rate and the share price of IBM. Equity in IBM is a tradeable asset, but (from the vantage point of a dollar investor) a British pound is not a tradeable asset. This sounds crazy, at first, since you can obviously walk into a currency exchange and trade your dollars for British pounds (or your British pounds for dollars). But whereas you might keep stock certificates for 1000 shares of IBM in a safe deposit box for an extended period of time, you wouldn't do this with 1000 dollars or 1000 British pounds, because you could hold them just as securely in a riskless money market account which would pay interest on your deposit. Thus, the tradeable assets are not really dollars or pounds sterling, but rather "shares" in riskless money market accounts. This is crucially important, because the riskless rates of return on dollars, British pounds, Japanese yen, and other currencies are (usually) different.

Because there is uncertainty about future rates of exchange between different currencies, there is a market for derivative securities whose payoffs depend on exchange rates. In this lecture, we shall look at a simple example, a call option on an exchange of currencies. Investment banks and hedge funds also deal in more complex derivative securities, that may involve bonds and equities traded in different currencies, whose payoffs involve more than one source of uncertainty. In a later lecture, we shall develop techniques for pricing and hedging contracts in the presence of multiple sources of uncertainty.

# 2. A MODEL FOR EXCHANGE RATES

Assume that there are riskless assets US MONEYMARKET and UK MONEYMARKET in dollars and British pounds sterling, respectively, with riskless rates of return  $r_A$  and  $r_B$ . Because of uncertainty about future exchange rates, the asset UK MONEYMARKET does not appear riskless to the dollar investor, nor does the asset US MONEYMARKET appear riskless to the pound sterling

investor; the choice of numeraire (dollar or pound sterling) determines which asset is riskless. Let's take the point of view of the pound-sterling investor. Let  $Y_{t}$  be the rate of exchange at time  $t$  (that is,  $Y_{t}$  is the number of British pounds that one dollar will buy at time  $t$ ). In the simplest model<sup>3</sup>,  $Y_{t}$  behaves like a geometric Brownian motion, that is, it follows a stochastic differential equation of the form

$$
d Y _{t} = \mu Y _{t} d t + \sigma Y _{t} d W _{t}, \tag {1}
$$

where  $W_{t}$  is a Wiener process. Let  $A_{t}$  and  $B_{t}$  denote the share prices of the assets US MONEY-MARKET and UK MONEY MARKET, reported in units of dollars and British pounds, respectively, and normalized so that the time-zero share prices are both 1. Then

$$
A _{t} = \exp \left\{r _{A} t \right\} \quad \text{an d} \tag {2}
$$

$$
B _{t} = \exp \left\{r _{B} t \right\}. \tag {3}
$$

The share price of US MONEYMARKET at time  $t$  in pounds sterling is  $A_{t}Y_{t}$ . Solving the stochastic differential equation (1) gives the explicit formula

$$
A _{t} Y _{t} = Y _{0} \exp \left\{r _{A} t + \mu t - \sigma^{2} t / 2 + \sigma W _{t} \right\}. \tag {4}
$$

Proposition 1. Let  $Q_B$  be a risk-neutral probability measure for the pound-sterling investor. If the dollar/pound sterling exchange rate obeys a stochastic differential equation of the form (1), and if the riskless rates of return for dollar investors and pound-sterling investors are  $r_A$  and  $r_B$ , respectively, then under  $Q_B$  it must be the case that

$$
\mu = r _{B} - r _{A}. \tag {5}
$$

Therefore, exchange rate  $Y_{t}$  is given by

$$
Y _{t} = Y _{0} \exp \left\{\left(r _{B} - r _{A}\right) t - \sigma^{2} t / 2 + \sigma W _{t} \right\}, \tag {6}
$$

where under the measure  $Q_B$  the process  $W_t$  is a standard Wiener process.

Proof. Under  $Q_B$ , the discounted share price of the asset US MONEYMARKET in pound sterling must be a martingale. But the discounted share price is  $\exp\{-r_B t\} A_t Y_t$ , which by equation (4) equals

$$
Y _{0} \exp \{(r _{A} - r _{B}) t + \mu t \} \exp \{- \sigma^{2} t / 2 + \sigma W _{t} \}.
$$

The second exponential is by itself a martingale (see Lecture 8), and the first exponential is nonrandom. Thus, in order that the product of the two exponentials be a martingale it must be that  $r_A - r_B + \mu = 0$ .

EXERCISE: Show that if  $M_t$  is a martingale and  $f(t)$  is a continuous, nonrandom function of  $t$ , then  $f(t)M_t$  is a martingale if and only if  $f(t)$  is constant or  $M_t$  is identically zero.

Proposition 1 is fairly straightforward, given the results from stochastic calculus that we have obtained earlier in the course. Nevertheless, there is something puzzling about it. What if we had taken the point of view of the dollar investor? Then the roles of  $r_A$  and  $r_B$  would be reversed, and the share price of UK MONEY MARKET in dollars at time  $t$  would be  $B_t / Y_t$ . Reasoning as above, we would be led to the following result:

Proposition 2. Let  $Q_A$  be a risk-neutral probability measure for the dollar investor. If the dollar/pound sterling exchange rate obeys a stochastic differential equation of the form (1), where  $W_t$  is a standard Brownian motion under  $Q_A$ , and if the riskless rates of return for dollar investors and pound-sterling investors are  $r_A$  and  $r_B$ , respectively, then under  $Q_A$  it must be the case that

$$
\mu = r _{B} - r _{A} + \sigma^{2}. \tag {7}
$$

Proof. Homework.

Thus, unless the riskless rates of return for dollar and pound-sterling investors are equal, they will necessarily disagree about the drift coefficient  $\mu$  in the stochastic differential equation (1)! Put this way, the situation seems somewhat paradoxical: one's stochastic model for an observable process, the exchange rate, must depend on the currency in which he or she trades. But this is the wrong way to put it. The risk-neutral probability measure is not (necessarily) an accurate model for the price processes of traded assets; rather, it is imposed by the market, and dependent on the numeraire. It is useful only insofar as it allows the computation of arbitrage prices of derivative securities.

# 3. THE LIKELIHOOD RATIO

The risk-neutral probability measures  $Q_{A}$  and  $Q_{B}$  for dollar and pound-sterling investors are both measures on the same space of market scenarios, specifically, the set of all possible paths  $\{Y_{t}\}_{0\leq t\leq T}$  of the exchange rate.

Proposition 3. The measures  $Q_{A}$  and  $Q_{B}$  are mutually absolutely continuous, that is, they are related by the likelihood ratio

$$
\left(\frac{d Q _{A}}{d Q _{B}}\right) _{\mathcal {F} _{T}} = \exp \left\{\sigma W _{T} - \sigma^{2} T / 2 \right\}. \tag {8}
$$

Proof. Consider a contingent claim whose value at time  $t$  in dollars is  $V_{t}$ . The price  $V_{0}$  of this claim at time  $t = 0$ , in dollars, is the discounted expected value of its price, in dollars, at time  $T$ , where the expectation is computed under  $Q_{A}$ , the risk-neutral measure for dollar investors:

$$
V _{0} = e ^{- r _{A} T} E _{A} V _{T}. \tag {9}
$$

Let  $U_{t}$  be the time- $t$  price of the claim in pounds sterling. Then  $U_{t} = V_{t}Y_{t}$ , where  $Y_{t}$  is the rate of exchange between dollars and pounds sterling. Since the claim is a tradeable asset, its price in pounds sterling must be a martingale under  $Q_{B}$ , the risk-neutral measure for pound-sterling investors. In particular, the time-zero price must be the discounted expected value of the time- $T$  price:

$$
U _{0} = e ^{- r _{B} T} E _{B} U _{T} \quad \Longrightarrow
$$

$$
V _{0} Y _{0} = e ^{- r _{B} T} E _{B} \left(V _{T} Y _{T}\right) \quad \Longrightarrow
$$

$$
V _{0} = e ^{- r _{A} T} E _{B} \left(V _{T} \left(Y _{T} / Y _{0}\right) e ^{\left(r _{A} - r _{B}\right) T}\right). \tag {10}
$$

Comparing equations (9) and (10) shows that the expectation operators  $E_{A}$  and  $E_{B}$  are related as follows:

$$
E _{A} V _{T} = E _{B} (V _{T} (Y _{T} / Y _{0}) e ^{(r _{A} - r _{B}) T}).
$$

Since this formula holds for any nonnegative,  $\mathcal{F}_T$ -measurable random variable  $V_T$ , it follows from equation (6) above that

$$
\left(\frac{d Q _{A}}{d Q _{B}}\right) _{\mathcal {F} _{T}} = (Y _{T} / Y _{0}) e ^{(r _{A} - r _{B}) T} = \exp \{\sigma W _{T} - \sigma^{2} T / 2 \}.
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e607bf8b-adbd-4429-b019-7daf8f2ae768/df02a5832c7ea724eaafea8b3b9e58c0e9ff1017228f10c525cc8faff4841a05.jpg)

It is noteworthy that the likelihood ratio (8) is of the same type as occurs in the Cameron-Martin theorem (Lecture 8). Thus, under the risk-neutral measure  $Q_{A}$  for dollar investors, the process  $\{W_t\}_{0 \leq t \leq T}$  appearing in the stochastic differential equation (1) is not a standard Wiener process but rather a Wiener process with drift  $\sigma$ . Equivalently, if we define

(11)

then under  $Q_A$  the process  $\{\tilde{W}_t\}_{0 \leq t \leq T}$  is a standard Wiener process. Substituting this equation into formula (6) gives the following alternative form for the exchange rate process  $Y_t$ :

$$
Y _{t} = Y _{0} \exp \left\{\left(r _{B} - r _{A}\right) t - \sigma^{2} t / 2 + \sigma W _{t} \right\}
$$

(12)  $= Y_{0}\exp \{(r_{B} - r_{A})t + \sigma^{2}t / 2 + \sigma \tilde{W}_{t}\} .$

It follows by Itô's formula that the exchange rate process obeys the stochastic differential equation

(13)  $dY_{t} = (r_{B} - r_{A} + \sigma^{2})Y_{t}dt + \sigma Y_{t}d\tilde{W}_{t}.$

Observe that this is a second proof of Proposition 2 (the first proof was a homework exercise).

# 4. OPTIONS ON FOREIGN EXCHANGE

Consider an option CALL that gives the owner the right (but no obligation) to exchange 1 dollar for  $K$  pounds sterling at time  $T$ . What is the time  $t = 0$  arbitrage price, in dollars, of this option? Let's take the viewpoint of a dollar investor. (In the homework you will be asked to do the entire problem again from the viewpoint of the pound-sterling investor, and to verify that this leads to the same arbitrage price.) The value in dollars of  $K$  pounds sterling at time  $T$  will be  $K / Y_{T}$ , and so the value  $V_{T}$  (in dollars) of the option at termination  $t = T$  will be  $V_{T} = (K / Y_{T} - 1)_{+}$ . Consequently, the value at time zero is

(14)  $V_{0} = e^{-r_{A}T}E_{A}(K / Y_{T} - 1)_{+}$

$$
= e ^{- r _{A} T} E _{A} \left(K Y _{0} \exp \left\{\left(r _{A} - r _{B} + \sigma^{2} / 2\right) t - \sigma W _{t} \right\} - 1\right) _{+}.
$$

This last expectation is identical in form to the expectation that we encountered in pricing a European call option on a stock in the Black-Scholes theory, and thus may be evaluated explicitly in terms of the cumulative normal distribution function  $\Phi$ .

EXERCISE: Do this.

# 5. EXERCISES

Problem 1: Show that if  $M_t$  is a martingale and  $f(t)$  is a continuous, nonrandom function of  $t$ , then  $f(t)M_t$  is a martingale if and only if  $f(t)$  is constant or  $M_t$  is identically zero.

Problem 2: Prove Proposition 2.

Problem 3: Compute the arbitrage price at time  $t = 0$  of the call option discussed in section 4 by calculating the discounted risk-neutral expectation under the risk-neutral measure  $Q_{B}$  for

pound-sterling investors. Verify that the price agrees with that computed using the risk-neutral measure  $Q_{A}$  for dollar investors.

Problem 4: In a forward exchange contract, two parties  $A$  and  $B$  agree at time  $t = 0$  to an exchange of currency at a future date  $T$ . In particular,  $A$  agrees to pay 1 dollar at time  $T$  to  $B$  in exchange for  $K$  pounds sterling. What is the arbitrage forward price  $K$ ? Do the problem in two different ways: (i) using the information about the risk-neutral measure  $Q_A$  for dollar investors given in Proposition 1, and (ii) by a direct arbitrage argument.

# LECTURE 10: CHANGE OF MEASURE AND THE GIRSANOV THEOREM

# 1. INTRODUCTION

The Cameron-Martin theorem, which has figured prominently in the developments of the last several lectures, is the most important special case of the far more general Girsanov theorem, which is our next topic of discussion. Like the Cameron-Martin theorem, the Girsanov theorem relates the Wiener measure  $P$  to different probability measures  $Q$  on the space of continuous paths by giving an explicit formula for the likelihood ratios between them. But whereas the Cameron-Martin theorem deals only with very special probability measures, namely those under which paths are distributed as Brownian motion with (constant) drift, the Girsanov theorem applies to nearly all probability measures  $Q$  such that  $P$  and  $Q$  are mutually absolutely continuous.

# 2. EXPONENTIAL MARTINGALES

Let  $\{W_t\}_{0 \leq t < \infty}$  be a standard Brownian motion under the probability measure  $P$ , and let  $(\mathcal{F}_t)_{0 \leq t < \infty}$  be the associated Brownian filtration. Recall that under  $P$ , for any scalar  $\theta \in \mathbb{R}$ , the process  $Z_\theta(t) = \exp \left\{\theta W_t - \theta^2 t / 2\right\}$  is a martingale with respect to  $(\mathcal{F}_t)_{0 \leq t < \infty}$ . These martingales provide the likelihood ratios used to build the probability measures  $\bar{P}_\theta$  described in the Cameron-Martin theorem.

The martingales  $Z_{\theta}(t)$  are instances of a much larger class of exponential martingales defined as follows. Let  $\{\theta_s\}$  be an adapted, locally-  $\mathcal{H}^2$  process (recall that this means that, for every  $t \geq 0$ , the truncated process  $\{\theta_s \mathbf{1}_{\{s \leq t\}}\}$  is in the class  $\mathcal{H}^2$ ). Thus, the Ito integrals  $\int_0^t \theta_s dW_s$  are all well-defined. Define

$$
Z (t) = \exp \left\{\int_{0} ^{t} \theta_{s} d W _{s} - \frac{1}{2} \int_{0} ^{t} \theta_{s} ^{2} d s \right\}
$$

Theorem 1. (Novikov) If for each  $t \geq 0$ ,

$$
E \exp \left\{\int_{0} ^{t} \theta_{s} ^{2} d s / 2 \right\} <   \infty \tag {2}
$$

then for each  $t \geq 0$ ,

$$
E Z (t) = 1. \tag {3}
$$

If this is the case then the process  $\{Z(t)\}_{t\geq 0}$  is a positive martingale.

We shall only prove this in the special case where the process  $\theta_{s}$  is deterministic (nonrandom) and continuous in  $t$ .

First Proof. Because the function  $\theta_t$  is nonrandom, the random variable  $\int_0^t \theta_s \, dW_s$  is normally distributed with mean 0 and variance  $\int_0^t \theta_s^2 \, ds$ . Similarly, for any  $s < t$ , the random variable

$\int_s^t\theta_u dW_u$  is normally distributed and independent of the  $\sigma$ -algebra  $\mathcal{F}_s$ . Consequently, for any  $s < t$ ,

$$
\begin{array}{l} E \left(\exp \left\{\int_{0} ^{t} \theta_{u} d W _{u} \right\} \mid \mathcal {F} _{s}\right) = \exp \left\{\int_{0} ^{s} \theta_{u} d W _{u} \right\} E \left(\exp \left\{\int_{s} ^{t} \theta_{u} d W _{u} \right\} \mid \mathcal {F} _{s}\right) \\ = \exp \left\{\int_{0} ^{s} \theta_{u} d W _{u} \right\} E \exp \left\{\int_{s} ^{t} \theta_{u} d W _{u} \right\} \\ = \exp \left\{\int_{0} ^{s} \theta_{u} d W _{u} \right\} \exp \left\{\int_{s} ^{t} \theta_{u} ^{2} d u / 2 \right\}. \\ \end{array}
$$

(Here we have used the elementary property of the normal distribution that, if  $X \sim \mathrm{Normal}(0, \sigma^2)$ , then  $Ee^{X} = e^{\sigma^2 / 2}$ .) It follows from this that the process  $Z(t)$  is a martingale relative to the filtration  $(\mathcal{F}_t)_{0 \leq t < \infty}$ , and that the equation (3) is valid for all  $t < \infty$ .

Second Proof. We shall apply the Itô formula. Set

$$
f (x, t) = \exp \left\{x - \frac{1}{2} \int_{0} ^{t} \theta_{s} ^{2} d s \right\} \qquad \mathrm{an d} \qquad Y _{t} = \int_{0} ^{t} \theta_{s} d W _{s};
$$

then

$$
Z (t) = f \left(Y _{t}, t\right).
$$

The process  $Y_{t}$  is an Ito process, as it is defined by a stochastic integral, and so the Ito formula applies:

$$
\begin{array}{l} d Z (t) = f _{t} \left(Y _{t}, t\right) d t + (1 / 2) f _{x x} \left(Y _{t}, t\right) d \langle Y, Y \rangle_{t} + f _{x} \left(Y _{t}, t\right) d Y _{t} \\ = - (1 / 2) \theta_{t} ^{2} Z (t) d t + (1 / 2) Z (t) d \langle Y, Y \rangle_{t} + Z (t) d Y _{t} \\ = - (1 / 2) \theta_{t} ^{2} Z (t) d t + (1 / 2) Z (t) \theta_{t} ^{2} d t + Z (t) \theta_{t} d W _{t} \\ = Z (t) \theta_{t} d W _{t}. \\ \end{array}
$$

This implies that

$$
Z (t) = \int_{0} ^{t} Z (s) \theta_{s} d W _{s}. \tag {4}
$$

It follows that  $Z(t)$  is an  $L^2$  martingale, provided that for each  $T < \infty$  the process  $Z(t)\mathbf{1}\{t\leq T\}$  is in the class  $\mathcal{H}^2$ . This is easily checked (EXERCISE!) when the integrand  $\theta_{s}$  is nonrandom and continuous, using (for instance) the fact that  $Y_{t}$  has a normal distribution.

# 3. THE GIRSANOV THEOREM

Let  $\{\theta_t\}$  be an adapted process satisfying the hypotheses of Novikov's Proposition, and let  $Z(t)$  be defined by (1). By relation (3), for each  $T > 0$  the random variable  $Z(T)$  is a likelihood ratio: that is, the formula

$$
Q (F) = E _{P} (Z (T) \mathbf {1} _{F}) \tag {5}
$$

defines a new probability measure on  $(\Omega, \mathcal{F})$ . Girsanov's theorem describes the distribution of the stochastic process  $\{W(t)\}_{t \geq 0}$  under this new probability measure. Define

$$
\tilde {W} (t) = W (t) - \int_{0} ^{t} \theta_{s} d s \tag {6}
$$

Theorem 2. (Girsanov) Under the probability measure  $Q$ , the stochastic process  $\left\{\tilde{W}(t)\right\}_{0 \leq t \leq T}$  is a standard Wiener process.

This encompasses as a special case the Cameron-Martin Theorem proved earlier. Its uses in mathematical finance theory go far beyond the (relatively) simple calculations of the sort we did in pricing barrier options earlier. To provide a succinct example, we shall next revisit the problem of option pricing in foreign exchange, but under a more general model for exchange rates. In the next lecture, we shall give a more substantial application to the pricing of derivative securities in multi-factor models, including the derivatives known as quantos.

The proof of Girsanov's theorem is given in the appendix.

# 4. FOREIGN EXCHANGE REVISITED

In the previous lecture, we considered perhaps the simplest model of foreign exchange, in which the exchange rate between currencies (for definiteness, the U. S. dollar and the British pound sterling) follows a geometric Brownian motion with constant drift, and the riskless assets in each of the two currencies have constant (but not necessarily equal) rates of return. These assumptions are not always realistic, especially in problems involving contracts with maturities longer than a few months. Here, we shall investigate a more general model, in which the rates of return on the riskless assets and the volatility of the exchange rate process are time-varying, but nonrandom. Thus, it is assumed that the exchange rate  $Y_{t}$  (defined to be the number of British pounds that one dollar will buy at time  $t$ ) obeys a stochastic differential equation of the form

$$
d Y _{t} = \mu_{t} Y _{t} d t + \sigma_{t} Y _{t} d W _{t}, \tag {7}
$$

where both the drift  $\mu_t$  and the volatility  $\sigma_t$  are continuous but nonrandom functions of  $t$ . Furthermore, the riskless assets US MONEYMARKET and UK MONEY MARKET for dollar and pound-sterling investors, reported in units of dollars and British pounds, respectively, have share prices  $A_t$  and  $B_t$  that satisfy the ordinary differential equations

$$
d A _{t} = r _{A} (t) A _{t} d t \quad \text{an d} \tag {8}
$$

$$
d B _{t} = r _{B} (t) B _{t} d t.
$$

The solutions to these differential equations are

$$
A _{t} = A _{0} \exp \left\{\int_{0} ^{t} r _{A} (s) d s \right\} \quad \text{an d} \tag {9}
$$

$$
B _{t} = B _{0} \exp \left\{\int_{0} ^{t} r _{B} (s) d s \right\}.
$$

By Ito's formula, the solution $^2$  to the stochastic differential equation (7) is

$$
Y _{t} = Y _{0} \exp \left\{\int_{0} ^{t} \left(\mu_{s} - \sigma_{s} ^{2} / 2\right) d s + \int_{0} ^{t} \sigma_{s} d W _{s} \right\}. \tag {10}
$$

Proposition 1. Let  $Q_B$  be a risk-neutral probability measure for the pound-sterling investor. If the dollar/pound sterling exchange rate obeys a stochastic differential equation of the form (7), and

if the riskless rates of return for dollar investors and pound-sterling investors are  $r_A(t)$  and  $r_B(t)$ , respectively, then under  $Q_B$  it must be the case that

$$
\mu_{t} = r _{B} (t) - r _{A} (t), \tag {11}
$$

and so the exchange rate  $Y_{t}$  is given by

$$
\frac{Y _{t}}{Y _{0}} = \exp \left\{\int_{0} ^{t} \left(r _{B} (s) - r _{A} (s) - \sigma_{s} ^{2} / 2\right) d s + \int_{0} ^{t} \sigma_{s} d W _{s} \right\}, \tag {12}
$$

where under the measure  $Q_B$  the process  $W_t$  is a standard Brownian motion.

Proof. The proof is essentially the same as in the case of constant coefficients (Lecture 9). The asset US MONEYMARKET is tradeable, so its discounted value in pounds sterling must be a martingale under the risk-neutral measure  $Q_{B}$ . The discounted value at time  $t$  is  $A_{t}Y_{t} / B_{t}$ , which, by equations (9) and (10) is

$$
A _{t} Y _{t} / B _{t} = Y _{0} \exp \left\{\int_{0} ^{t} (\mu_{s} + r _{A} (s) - r _{B} (s) - \sigma_{s} ^{2} / 2) d s + \int_{0} ^{t} \sigma_{s} d W _{s} \right\}.
$$

It is easily checked that this is a martingale only if equation (11) holds.

Proposition 2. Let  $Q_A$  be a risk-neutral probability measure for dollar investors. Then the measures  $Q_A$  and  $Q_B$  are mutually absolutely continuous, and the likelihood ratio on the  $\sigma$ -algebra  $\mathcal{F}_T$  of events observable by time  $T$  is

$$
\left(\frac{d Q _{A}}{d Q _{B}}\right) _{\mathcal {F} _{T}} = \exp \left\{\int_{0} ^{T} \sigma_{t} d W _{t} - \frac{1}{2} \int_{0} ^{T} \sigma_{t} ^{2} d t \right\}. \tag {13}
$$

Proof. The proof is virtually the same as in the case of constant coefficients, and is therefore omitted.  $\square$

The likelihood ratio (13) is an instance of the Girsanov likelihood ratio, and so the Girsanov theorem applies. In particular, it follows that, under the risk-neutral measure  $Q_{A}$  for dollar investors, the process  $W_{t}$  that drives the exchange rate, which under  $Q_{B}$  is a standard Wiener process, is a Wiener process with instantaneous drift  $\sigma_{t} dt$ . Equivalently, the process

$$
\tilde {W} _{t} := W _{t} + \int_{0} ^{t} \sigma_{s} d s \tag {14}
$$

is, under  $Q_{A}$ , a standard Brownian motion.

# 5. ABSOLUTE CONTINUITY AND EVENTS OF PROBABILITY ZERO

Lemma 1. Let  $P$  and  $Q$  be mutually absolutely continuous probability measures on a measure space  $(\Omega, \mathcal{F})$ , that is, there is a positive random variable  $Y(= dQ / dP)$  such that for every event  $F \in \mathcal{F}$ ,

$$
\begin{array}{l} Q (F) = E _{P} \left(Y \mathbf {1} _{F}\right) \quad a n d (15) \\ P (F) = E _{Q} \left(Y ^{- 1} \mathbf {1} _{F}\right). (16) \\ \end{array}
$$

Then for any event  $F\in \mathcal{F}$

$$
P (F) = 0 \quad \Longleftrightarrow \quad Q (F) = 0. \tag {17}
$$

Proof. It is a standard theorem of measure theory that if  $X$  is a random variable that is  $P$ -almost surely zero (that is,  $P\{X = 0\} = 1$ ) then  $X$  is  $P$ -integrable and  $E|X| = EX = 0$ . If  $F \in \mathcal{F}$  is an event such that  $P(F) = 0$ , then the random variable  $Y\mathbf{1}_F$  is  $P$ -almost surely zero, because it assumes the value 0 everywhere on the complement of  $F$ , which is an event of  $P$ -probability one. Consequently, this random variable has  $E_P$ -expectation zero, which by (15) implies that  $Q(F) = 0$ . The converse follows by reversing the roles of  $P$  and  $Q$ .

It is somewhat remarkable that the converse is also true: If  $P$  and  $Q$  are probability measures on a common measure space  $(\Omega, \mathcal{F})$  such that the set of events with  $P$ -probability zero coincides with the set of events with  $Q$ -probability zero, then  $P$  and  $Q$  are mutually absolutely continuous. This is (essentially) the fundamentally important Radon-Nikodym theorem of measure theory.

Lemma 1 is of interest here because it has important ramifications in finance, some of which we now discuss. Suppose that  $\{P_{\theta}\}_{\theta \in \mathbb{R}}$  is a one-parameter family of probability measures on a common probability space such that, under  $P_{\theta}$ , the process  $W_{t}$  is a Brownian motion with drift  $\theta$ . Then by the Strong Law of Large Numbers,

$$
P _{\theta} \left(G _{\theta}\right) = 1, \quad \text{wh er e} G _{\theta} := \left\{\lim  _{t \rightarrow \infty} \frac{W _{t}}{t} = \theta \right\}. \tag {18}
$$

The event  $G_{\theta}$  is an element of the  $\sigma$ -algebra  $\mathcal{F}_{\infty}$  of events observable at time  $\infty$ . For any  $\theta \neq 0$ , the events  $G_{\theta}$  and  $G_{0}$  are mutually exclusive; hence, the measures  $P_{0}$  and  $P_{\theta}$  are not mutually absolutely continuous on  $\mathcal{F}_{\infty}$ , because by (18),  $P_{0}(G_{\theta}) = 0$  and  $P_{\theta}(G_{\theta}) = 1$ . However,  $P_{\theta}$  and  $P_{0}$  are mutually absolutely continuous on  $\mathcal{F}_{t}$ , for any  $t < \infty$  - this is the content of the Cameron-Martin theorem.

Next, recall the quadratic variation law for Brownian paths:

$$
P _{0} \left(H _{t}\right) = 1 \quad \text{wh er e} H _{t} := \left\{\lim  _{n \rightarrow \infty} Q V \left(W; \mathcal {D} _{n} [ 0, t ]\right) = t \right\}. \tag {19}
$$

Here  $QV(X, \Pi)$  denotes the quadratic variation of the process  $X(s)$  relative to the partition  $\Pi$ , and  $\mathcal{D}_n[0, t]$  is the  $n$ th dyadic partition of the interval  $[0, t]$ ; thus,

$$
Q V (W; \mathcal {D} _{n} [ 0, t ]) = \sum_{k = 1} ^{2 ^{n} t} \{W (k / 2 ^{n}) - W ((k - 1) / 2 ^{n}) \} ^{2}.
$$

Statement (19) is equivalent to the statement that the event  $H_{t}^{c}$  has  $P_{0}$ -probability zero. Since this event is an element of the  $\sigma$ -algebra  $\mathcal{F}_{t}$ , it follows from Lemma 1 that for any probability measure  $Q$  such that  $P_{0}$  and  $Q$  are mutually absolutely continuous on  $\mathcal{F}_{t}$ , the quadratic variation law holds:

$$
Q \left(H _{t}\right) = 1. \tag {20}
$$

In particular (by the Cameron-Martin and Girsanov theorems), Brownian motion with drift satisfies the same quadratic variation law as does standard (driftless) Brownian motion.

Finally, consider the Itô process

$$
X _{t} := \int_{0} ^{t} \sigma_{s} d W _{s}, \tag {21}
$$

where  $\sigma_{t}$  is an adapted, locally  $\mathcal{H}^2$  integrand. Here  $W_{t}$  is a standard Brownian motion under  $P_0$ . By the extended quadratic variation law (Lecture 6), for each  $t < \infty$ ,

$$
P _{0} \left\{\lim  _{n \rightarrow \infty} Q V (X; \mathcal {D} _{n} [ 0, t ]) = \int_{0} ^{t} \sigma_{s} ^{2} d s \right\} = 1 \tag {22}
$$

By Lemma 1, the same is true for any probability measure  $Q$  such that  $P_0$  and  $Q$  are mutually absolutely continuous on  $\mathcal{F}_t$ . Thus, by the Girsanov theorem, a change of drift in  $W_t$  (or equivalently in  $X_t$ ) has no effect on quadratic variation. This could, of course, have been proved directly, without recourse to Girsanov or Lemma 1, but the argument given here is completely painless.

These observations explain, at least in part, why dollar investors and pound-sterling investors may have different "opinions" about the drift term in the exchange rate process (or, more generally, about the drift term in the stochastic differential equation for any tradeable asset) but must agree on the volatility process. The volatility process is always (at least in principle) observable, by the quadratic variation laws, but drift processes are not.

# 6. EXERCISES

1. Time-varying short rates and volatility. Let  $S_{t}$  be the share price at time  $t$  of a risky asset STOCK. Suppose that  $S_{t}$  obeys a stochastic differential equation of the form

$$
d S _{t} = \mu_{t} S _{t} d t + \sigma_{t} S _{t} d W _{t} \tag {23}
$$

where  $\mu_t$  and  $\sigma_t$  are continuous but nonrandom functions of time  $t$ . Suppose also that the market has a riskless asset MONEYMARKET whose share price  $B_t$  obeys the ordinary differential equation

$$
d B _{t} = r _{t} B _{t} d t, \tag {24}
$$

where the "short rate"  $r_t$  is again a continuous but nonrandom function of  $t$ .

(A) Solve the differential equations (23) and (24).  
(B) Prove that, under any risk-neutral measure,  $\mu_t = r_t$ .  
(C) Find a formula for the arbitrage price of a European CALL option on STOCK with strike price  $K$  and expiration  $T$ . HINT: Your answer should be of the same form as the Black-Scholes formula. The quantities

$$
\int_{0} ^{T} r _{t} d t \qquad \text{an d} \qquad \int_{0} ^{T} \sigma_{t} ^{2} d t
$$

should figure prominently in the answer.

# 7. APPENDIX: PROOF OF THE GIRSANOV THEOREM

Given the Novikov theorem (Theorem 1), the Girsanov theorem is nothing more than a routine calculation. To show that the process  $\tilde{W}_t$ , under  $Q$ , is a standard Wiener process, it suffices to show that it has independent, normally distributed increments with the correct variances. For this, it suffices to show that the joint moment generating function (under  $Q$ ) of the increments

$$
\tilde {W} (t _{1}), \tilde {W} (t _{2}) - \tilde {W} (t _{1}), \dots , \tilde {W} (t _{n}) - \tilde {W} (t _{n - 1})
$$

where  $0 < t_1 < t_2 < \dots < t_n$ , is the same as that of  $n$  independent, normally distributed random variables with expectations 0 and variances  $t_1, t_2 - t_1, \ldots$ , that is,

$$
E _{Q} \exp \left\{\sum_{k = 1} ^{n} \alpha_{k} \left(\tilde {W} \left(t _{k}\right) - \tilde {W} \left(t _{k - 1}\right)\right) \right\} = \prod_{k = 1} ^{n} \exp \left\{\alpha_{k} ^{2} \left(t _{k} - t _{k - 1}\right) \right\}. \tag {25}
$$

We shall do only the case  $n = 1$ , leaving the rest to the industrious reader as an exercise. To evaluate the expectation  $E_{Q}$  on the left side of (25), we rewrite as an expectation under  $P$ , using

the basic likelihood ratio identity relating the two expectation operators:

$$
\begin{array}{l} E _{Q} \exp \left\{\alpha \tilde {W} (t) \right\} = E _{Q} \exp \left\{\alpha W (t) - \alpha \int_{0} ^{t} \theta_{s} d s \right\} \\ = E _{P} \exp \left\{\alpha W (t) - \alpha \int_{0} ^{t} \theta_{s} d s \right\} \exp \left\{\int_{0} ^{t} \theta_{s} d W _{s} - \int_{0} ^{t} \theta_{s} ^{2} d s / 2 \right\} \\ = E _{P} \exp \left\{\int (\alpha + \theta_{s}) d W _{s} - \int_{0} ^{t} (2 \alpha \theta_{s} + \theta_{s} ^{2}) d s / 2 \right\} \\ = e ^{\alpha^{2} t / 2} E _{P} \exp \left\{\int (\alpha + \theta_{s}) d W _{s} - \int_{0} ^{t} (\alpha + \theta_{s}) ^{2} d s / 2 \right\} \\ = e ^{\alpha^{2} t}, \\ \end{array}
$$

as desired. Notice that in the last step we used the fact that the exponential integrates to one, a consequence of Novikov's theorem, and that in the second to last step we merely completed a square. Thus, in the final analysis, the argument turns on the same trick as was used to prove the Cameron-Martin theorem.
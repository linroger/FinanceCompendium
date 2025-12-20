---
parent_directory: I. Foundations/Mathematics/FINM Mathematical Finance/Lecture Notes
title: 'Lecture 1: The Fundamental Theorem of Arbitrage Pricing'
tags: null
aliases:
- The Fundamental Theorem of Arbitrage Pricing
parent_folder: Lecture Notes
subfolder: null
key_concepts: null
cssclasses: academia
linter-yaml-title-alias: 'Lecture 1: The Fundamental Theorem of Arbitrage Pricing'
primary_tags:
- black scholes theory
- arbitrage-free market
- particular market scenario
- single underlying asset stock
secondary_tags:
- efficient market hypothesis
- black-scholes theory
- arbitrage pricing market
- market hypothesis
- arbitrage pricing
- two possible market scenarios
- fundamental theorem see
- various derivative securities
- market expectation
tags_extracted: '2025-12-18T17:57:37.692268'
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
\begin{array}{l} V _ {1} = (S _ {1} - K) _ {+} = S _ {1} - K \quad \text {i f} S _ {1} \geq K; \tag {1} \\ = 0 \quad \text {i f} S _ {1} \leq K. \\ \end{array}
$$

The market value  $V_{0}$  of the call option at time  $t = 0$ , however, depends on the uncertainty about the value of the underlying asset (STOCK) at the expiration time  $t = 1$ , as the following examples show. We assume, as in the discussion of the forward contract, that there is a riskless asset MONEYMARKET with rate of return  $r$ .

3.1. Two-Scenario Market. Suppose that there are only two possible market scenarios, labelled  $\omega_{1},\omega_{2}$ . The value of one share of STOCK at time 1 is  $S_{1}(\omega_{1}) = d_{1}$  in scenario  $\omega_{1}$ , and is  $S_{1}(\omega_{2}) = d_{2}$  in scenario  $\omega_{2}$ . Let's consider the price  $V_{0}$  at time  $t = 0$  of the call option with strike price  $K$  under the following hypotheses:

$$
\begin{array}{l} \quad \left. d _ {1} \leq K \leq d _ {2} \right. (2) \\ d _ {1} \leq S _ {0} e ^ {r} \leq d _ {2} (3) \\ \end{array}
$$

These hypotheses are forced by the Efficient Market Hypothesis. Clearly, if  $d_{1}, d_{2}$  were the only conceivable values of  $S_{1}$  then no rational agent would ever buy an option with strike  $K > d_{2}$ , or sell one with strike  $K < d_{1}$ .

EXERCISE: Show that if one of the inequalities (3) were violated then there would be an arbitrage.

Proposition 2. The market price of the call option with strike price  $K$  at time  $t = 0$  is

$$
V _ {0} = v := \left(d _ {2} - K\right) \left(\frac {S _ {0} e ^ {r} - d _ {1}}{d _ {2} - d _ {1}}\right) e ^ {- r}. \tag {4}
$$

REMARK. The fraction  $p \coloneqq (S_0 e^r - d_1) / (d_2 - d_1)$  is, in effect, the probability that the market places on scenario  $\omega_2$ , as we shall see. Thus, the value of  $V_0$  is the market expectation of the value of the call at termination.

PROOF OF PROPOSITION 2. As in the case of the forward contract, we must rule out the alternative possibilities that  $V_0 < v$  or  $V_0 > v$ . Suppose that  $V_0 < v$ . Consider the following strategy:

Financed Call Option: At time  $t = 0$ , sell  $a = (d_2 - K) / (d_2 - d_1)$  shares of STOCK short, use  $V_0$  of the proceeds to buy 1 call option contract, and invest the remainder  $(aS_0 - V_0)$  in the riskless asset MONEYMARKET. At time  $t = 1$ , you must return  $a$  shares of stock, and you will exercise the option in market scenario  $\omega_2$ , but not in scenario  $\omega_1$ .

The financed option strategy is an arbitrage, because you invested 0 at time 0 (your call option was financed by the short sale), and you will be ahead at  $t = 1$  under either scenario:

(1) Under scenario  $\omega_{1}$ , you owe  $ad_{1}$  to repay the  $a$  shares of STOCK, but your cash on hand (from the MONEYMARKET) is

$$
\begin{array}{l} (a S _ {0} - V _ {0}) e ^ {r} = a d _ {1} + (a S _ {0} - a d _ {1} e ^ {- r}) e ^ {r} - V _ {0} e ^ {r} \\ = a d _ {1} + \left(v - V _ {0}\right) e ^ {r} > a d _ {1}; \\ \end{array}
$$

(2) Under scenario  $\omega_{2}$ , you owe  $ad_{2}$  to repay the  $a$  shares of STOCK, but your cash on hand (from selling the OPTION, valued now at  $d_{2} - K$ , and from selling your MONEYMARKETS) is

$$
\begin{array}{l} \left(d _ {2} - K\right) + \left(a S _ {0} - V _ {0}\right) e ^ {r} > \left(d _ {2} - K\right) + \left(a S _ {0} - v\right) e ^ {r} \\ = \left(d _ {2} - K\right) + \left(a S _ {0} - a \left(S _ {0} - d _ {1} e ^ {- r}\right)\right) e ^ {r} \\ = (d _ {2} - K) + a d _ {1} \\ = a d _ {2}. \\ \end{array}
$$

To complete the proof we must show that if  $V_0 > v$  then there is an arbitrage. But this is now easy - you just reverse the financed option strategy above! In particular: At time  $t = 0$ , sell 1 call OPTION, borrow  $aS_0 - V_0$ , and use it together with the proceeds of the call option sale to buy  $a$  shares of STOCK. (If  $V_0 > aS_0$ , there is no need to borrow anything.) This strategy is an arbitrage, as you should check (EXERCISE!)

3.2. Three-Scenario Market. Suppose now that there are three distinct market scenarios,  $\omega_{1},\omega_{2},\omega_{3}$ , and that the values  $d_{i} = S_{1}(\omega_{i})$  of the STOCK at  $t = 1$  in the three scenarios satisfy

$$
\quad \left. d _ {1} <   d _ {2} <   d _ {3}. \right. \tag {5}
$$

As usual, suppose that there is a riskless asset MONEYMARKET whose rate of return is, as before,  $r$ . Finally, suppose that

$$
\quad \left. d _ {1} <   S _ {0} e ^ {r} <   d _ {3}. \right. \tag {6}
$$

(Note: As in the two-scenario market, the no-arbitrage hypothesis forces  $d_{1} \leq S_{0}e^{r} \leq d_{3}$ .) Consider the call option with strike price  $K$ , where  $d_{1} < K < d_{3}$ . What is its value  $V_{0}$  at  $t = 0$  under the no-arbitrage hypothesis? The answer is that it is not determined. The most that can be said is the following:

Proposition 3. Define  $\mathcal{V}$  to be the set of all real numbers

$$
v = e ^ {- r} \left(p _ {2} \left(d _ {2} - K\right) _ {+} + p _ {3} \left(d _ {3} - K\right)\right) \tag {7}
$$

where  $(p_1, p_2, p_3)$  ranges over the set of all probability distributions such that  $S_0 e^r = p_1 d_1 + p_2 d_2 + p_3 d_3$ . Then for each  $v \in \mathcal{V}$  there exists an arbitrage-free market in which the call option has value  $V_0 = v$  and the STOCK has price  $S_0$  at  $t = 0$ , and the scenarios for the STOCK price  $S_1$  are as specified above, that is,  $S_1(\omega_i) = d_i$  for  $i = 1, 2, 3$ .

This proposition is a consequence of the Fundamental Theorem - see below. In the homework, you will be asked to show that the set  $\mathcal{V}$  contains more than one value. In fact, it is an entire closed interval  $[v_{-}, v_{+}]$  of real numbers. Why isn't the price uniquely determined, as in the two-scenario market? The answer, in essence, is that the price of the asset STOCK places only one constraint on the probability distribution on the three scenarios, but two constraints are needed to uniquely determine a probability distribution on three outcomes.

# 4. THE FUNDAMENTAL THEOREM OF ARBITRAGE PRICING

Single Period Market: Consider a market in which  $K$  assets, labelled  $A_{1}, A_{2}, \ldots, A_{K}$ , are freely traded. Assume that one of these, say  $A_{1}$ , is riskless, that is, its value at time  $t = 1$  does not depend on the market scenario. The share price of asset  $A_{j}$  at time  $t = 0$  is  $S_{0}^{j}$ ; without loss of generality, we may assume that  $S_{0}^{1} = 1$ . Uncertainty about the behavior of the market is encapsulated in a finite set  $\Omega$  of  $N$  possible market scenarios, labelled  $\omega_{1}, \omega_{2}, \ldots, \omega_{N}$ . The share prices  $S_{1}^{2}, S_{1}^{3}, \ldots, S_{1}^{K}$  of the  $K - 1$  assets at time  $t = 1$  are functions of the market scenario: thus, there is an  $N \times K$  matrix with entries  $S_{1}^{j}(\omega_{i})$  such that, in scenario  $\omega_{i}$ , the price of a share of  $A_{j}$  at time  $t = 1$  is  $S_{1}^{j}(\omega_{i})$ .

Observe that, since asset  $A_{1}$  is riskless, there is a constant  $r$ , called the riskless rate of return, such that the share price  $S_{1}^{1}$  of  $A_{1}$  in any scenario  $\omega_{i}$  is

$$
S _ {1} ^ {1} \left(\omega_ {j}\right) = e ^ {r} \quad \forall i = 1, 2, \dots , N. \tag {8}
$$

Portfolios: A portfolio is a vector

$$
\boldsymbol {\theta} = (\theta_ {1}, \theta_ {2}, \dots , \theta_ {K}) \in \mathbb {R} ^ {K}
$$

of  $K$  real numbers. The entry  $\theta_{j}$  represents the number of shares of asset  $A_{j}$  that are owned; if  $\theta_{j} < 0$  then the portfolio is said to be short  $|\theta_{j}|$  shares of asset  $A_{j}$ . The value of the portfolio  $\theta$  at time  $t = 0$  is

$$
V _ {0} (\theta) = \sum_ {j = 1} ^ {K} \theta_ {j} S _ {0} ^ {j}, \tag {9}
$$

and the value of the portfolio  $\theta$  at time  $t = 1$  in market scenario  $\omega_{i}$  is

$$
V _ {1} (\theta ; \omega_ {i}) = \sum_ {j = 1} ^ {K} \theta_ {j} S _ {1} ^ {j} (\omega_ {i}). \tag {10}
$$

Arbitrage: An arbitrage is a portfolio  $\theta$  that "makes money from nothing", formally, a portfolio  $\theta$  such that either

(11)  $V_{0}(\theta)\leq 0\qquad \mathrm{and}\qquad V_{1}(\theta ;\omega_{j}) > 0\qquad \forall j = 1,2,\ldots ,N\qquad \mathrm{or}$

(12)  $V_{0}(\theta) <   0\qquad \mathrm{and}\qquad V_{1}(\theta ;\omega_{j})\geq 0\qquad \forall j = 1,2,\ldots ,N.$

Equilibrium Measure: A probability distribution  $\pi_i = \pi(\omega_i)$  on the set  $\Omega$  of possible market scenarios is said to be an equilibrium measure (or risk-neutral measure) if, for every asset  $A$ , the share price of  $A$  at time  $t = 0$  is the discounted expectation, under  $\pi$ , of the share price at time  $t = 1$ , that is, if

$$
S _ {0} ^ {j} = e ^ {- r} \sum_ {i = 1} ^ {N} \pi \left(\omega_ {i}\right) S _ {1} ^ {j} \left(\omega_ {i}\right) \quad \forall j = 1, 2, \dots , K. \tag {13}
$$

Theorem 1. (Fundamental Theorem of Arbitrage Pricing) There exists an equilibrium measure if and only if arbitrages do not exist.

The first implication is easy to prove. Suppose that there is an equilibrium measure  $\pi$ . Then for any portfolio  $\theta$ , the portfolio values at time  $t = 0$  and  $t = 1$  are related by discounted expectation:

$$
V _ {0} (\theta) = \sum_ {i = 1} ^ {N} \pi \left(\omega_ {i}\right) e ^ {- r} V \left(\theta ; \omega_ {i}\right). \tag {14}
$$

(To see this, just multiply equation (13) by  $\theta_j$ , sum on  $j$ , and use the definitions of portfolio value in (9)-(10) above.) If  $V(\theta; \omega_i) > 0$  for every market scenario  $\omega_i$  (as must be the case for an arbitrage portfolio), then equation (14) implies that  $V_0(\theta) > 0$ , and so  $\theta$  cannot be an arbitrage. Thus, arbitrages do not exist.

The second implication, that absence of arbitrages implies the existence of an equilibrium measure, is the more important one. It is also harder to prove. We postpone the argument to section 7 below, so that we may first examine some of the consequences.

Example: The Call Option, Revisited. Let's consider again the pricing of the European call option on an asset STOCK. As in section 3, the strike price is  $K$ , and so the terminal value of the option is given by equations (1).

Two-Scenario Market: There are two possible market scenarios,  $\omega_{1},\omega_{2}$ . The value of one share of STOCK at time 1 is  $S_{1}(\omega_{i}) = d_{i}$  in scenario  $\omega_{i}$ , with  $d_{1} < d_{2}$ . The riskless rate of return is  $r$ . By the fundamental theorem, in an arbitrage-free market, there is a probability distribution  $\pi$  on the two scenarios that determines prices by discounted expectation, and so, in particular,

$$
S _ {0} = \pi \left(\omega_ {1}\right) e ^ {- r} d _ {1} + \pi \left(\omega_ {2}\right) e ^ {- r} d _ {2}. \tag {15}
$$

Thus, the share price of STOCK at time zero must satisfy inequalities (3). Moreover, because there are only two market scenarios, equation (15) uniquely determines the equilibrium measure  $\pi$ :

$$
\pi \left(\omega_ {1}\right) = \left(d _ {2} - S _ {0} e ^ {r}\right) / \left(d _ {2} - d _ {1}\right), \tag {16}
$$

$$
\pi \left(\omega_ {2}\right) = \left(S _ {0} e ^ {r} - d _ {1}\right) / \left(d _ {2} - d _ {1}\right). \tag {17}
$$

Finally, if the call option is to be freely traded, and if the market is to remain arbitrage-free, then its value at time  $t = 0$  is also determined by discounted expectation. Since there is only one possible equilibrium measure, as in the last displayed equations, the value of the call at time  $t = 0$  is

$$
V _ {0} = \pi \left(\omega_ {2}\right) \left(d _ {2} - K\right), \tag {18}
$$

which agrees with the pricing formula (4).

Three-Scenario Market: Consider now the pricing of the call option with strike  $K$  in the three-scenario market discussed earlier. Assume that inequalities (5) hold; then if the market is arbitrage-free, the  $t = 0$  price of STOCK must satisfy inequality (6), by the Fundamental Theorem (EXERCISE!). If the only freely traded assets in the market were STOCK and MONEYMARKET, then the pricing formulas (13) would not uniquely determine the equilibrium distribution  $\pi$ , because formulas (13) provide only two equations in three unknowns. Thus, any probability distribution  $(\pi_1, \pi_2, \pi_3)$  on the three scenarios such that  $S_0 e^r = d_1 \pi_1 + d_2 \pi_2 + d_3 \pi_3$  would be allowable as an equilibrium measure. Call the set of all such probability distributions  $\mathcal{A}$ . Then any element  $\pi \in \mathcal{A}$  such that equation (7) holds would be an equilibrium measure for the enlarged market in which the freely traded assets are STOCK, MONEYMARKET, and CALL, where CALL is the call option on STOCK with strike  $K$ , provided the  $t = 0$  price of CALL is given by (7). By the Fundamental Theorem, any such market is arbitrage-free.

This proves Proposition 3.

# 5. HEDGING

Replicating Portfolios: Consider a market in which there are freely traded assets  $B$  and  $A^1, A^2, \ldots, A^K$ . Denote the share prices of assets  $A^j$  and  $B$  at time  $t$  in market scenario  $\omega_i$  by  $S_t^j(\omega_i)$  and  $S_t^B(\omega_i)$ . Say that a portfolio  $\theta = (\theta_1, \ldots, \theta_K)$  in the assets  $A^1, A^2, \ldots, A^K$  is a replicating portfolio for the asset  $B$  if

$$
S _ {1} ^ {B} \left(\omega_ {i}\right) = \sum_ {j = 1} ^ {K} \theta_ {j} S _ {1} ^ {j} \left(\omega_ {i}\right) \quad \forall i = 1, 2 \dots , N. \tag {19}
$$

Proposition 4. Suppose that  $\theta = (\theta_{1},\dots \theta_{K})$  is a replicating portfolio for asset  $B$  in the assets  $A^1,A^2,\ldots ,A^K$ . If the market is arbitrage-free, then the  $t = 0$  share values of the assets are related by

$$
S _ {0} ^ {B} = \sum_ {j = 1} ^ {K} \theta_ {j} S _ {0} ^ {j}. \tag {20}
$$

Proof. Suppose to the contrary that  $S_0^B \neq \sum \theta_j S_0^j$ . There are two possibilities:  $<$  or  $>$ . Consider the possibility  $S_0^B < \sum \theta_j S_0^j$ . Then the portfolio  $\theta_* = (1, -\theta_1, -\theta_2, \ldots, -\theta_K)$  in the assets  $B, A^1, A^2, \ldots, A^K$  is an arbitrage, because at  $t = 0$  its value is

$$
S _ {0} ^ {B} - \sum_ {j = 1} ^ {K} \theta_ {j} S _ {0} ^ {j} <   0
$$

but its value at  $t = 1$  in market scenario  $\omega_{i}$  is

$$
S _ {1} ^ {B} (\omega_ {i}) - \sum_ {j = 1} ^ {K} \theta_ {j} S _ {1} ^ {j} (\omega_ {i}) = 0,
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
1 = S _ {0} ^ {1} = e ^ {- r} \sum_ {i = 1} ^ {N} \pi \left(\omega_ {i}\right) e ^ {r} = e ^ {- r} \sum_ {i = 1} ^ {N} \pi \left(\omega_ {i}\right) S _ {1} ^ {1} \left(\omega_ {i}\right). \tag {21}
$$

Thus, what we must show is that, in the absence of arbitrages, there is a probability distribution  $\pi$  such that  $(\ref{eq:1})$  holds for  $2 \leq j \leq K$ .

Consider the set  $\mathcal{E}$  of all vectors that can be obtained from the discounted share prices by averaging against some probability distribution on  $\Omega$ , that is,  $\mathcal{E}$  is the set of all vectors  $y = (y_{2}, y_{3}, \ldots, y_{K})$  such that, for some probability distribution  $\pi$  on  $\Omega$ ,

$$
y _ {j} = e ^ {- r} \sum_ {i = 1} ^ {N} \pi \left(\omega_ {i}\right) S _ {1} ^ {j} \left(\omega_ {i}\right) \quad \forall j = 2, 3, \dots , K. \tag {22}
$$

The set  $\mathcal{E}$  is a bounded, closed, convex polytope in  $\mathbb{R}^{K - 1}$ . (It might be helpful to sketch the set  $\mathcal{E}$  in the case  $d = 3$  when there are 3 or 4 market scenarios. In general, if there are  $N$  market scenarios, the polytope  $\mathcal{E}$  will have  $N$  extreme points [corners]; the extreme point corresponding to market scenario  $\omega_{i}$  is the vector of discounted prices  $D_{ij}^{*}$ .) We may now restate our objective in terms of the set  $\mathcal{E}$ : we must show that, in the absence of arbitrages, the  $t = 0$  price vector  $\mathbf{S} = (S_0^2,S_0^3,\dots ,S_0^K)$  is contained in  $\mathcal{E}$ . Equivalently, we must show that if  $\mathbf{S}\notin \mathcal{E}$  then there would be an arbitrage. This we shall accomplish by a geometric argument, using the following lemma.

Lemma 1. Let  $F$  be a closed, bounded, convex subset of  $\mathbb{R}^m$  and let  $x$  be a point in  $\mathbb{R}^m$  that is not an element of  $F$ . Then there is a nonzero vector  $v \in \mathbb{R}^k$  such that

$$
v \cdot x <   v \cdot y \quad \forall y \in F, \tag {23}
$$

where  $v \cdot w$  is the dot product of  $v$  with  $w$ .

Proof. There is no loss of generality in assuming that  $x = 0$  (the origin in  $\mathbb{R}^k$ ) because the truth of the inequality (23) will not be affected by a translation of the whole space. (EXERCISE: Verify this.) Let  $v \in F$  be the element of  $F$  closest to the origin 0. Because  $F$  is closed and bounded, such a point exists; because  $F$  is convex, it is unique; and because  $0 \notin F$ , the vector  $v$  cannot be the zero vector. We shall argue that for this vector  $v$ , inequality (23) must hold for all elements  $y \in F$ . Since  $x = 0$ , this is equivalent to showing that  $v \cdot y > 0$  for all elements  $y \in F$ .

Because the dot product is unchanged by rotations of  $\mathbb{R}^k$  about the origin, we may assume without loss of generality that the vector  $v$  lies on the first coordinate axis, that is, that

$$
v = (a, 0, 0, \dots , 0) \qquad \text {f o r s o m e} a > 0.
$$

Thus, to prove that  $v \cdot y > 0$  for all elements  $y \in F$ , it suffices to show that there is no  $y \in F$  whose first coordinate is nonpositive. Here we shall use the convexity of  $F$ . If there were a point  $y \in F$  with nonpositive first coordinate, then the line segment  $L$  with endpoints  $v$  and  $y$  would be entirely contained in  $F$ . Because this line segment must cross the hyperplane consisting of points with first coordinate 0, we may suppose that  $y$  has the form

$$
y = (0, y _ {2}, y _ {3}, \ldots , y _ {k}),
$$

and so  $L$  consists of all points of the form  $y(\epsilon) \coloneqq ((1 - \epsilon)a, \epsilon y_2, \epsilon y_3, \ldots, \epsilon y_k)$ , where  $0 \leq \epsilon \leq 1$ . Now the closest point to the origin on  $L$  should be  $v$ . However, a simple calculation (do it!) shows that for all sufficiently small  $\epsilon > 0$  the point  $y(\epsilon)$  is actually closer to the origin than  $v$ , a contradiction.

Note: A variation of this argument shows that the hypothesis that  $F$  is bounded is extraneous. This fact is called the Separating Hyperplane Theorem. We shall not prove it, as we will have no further need of it.

Proof of the Fundamental Theorem. We must show that if the time-zero price vector  $\mathbf{S}$  is not an element of  $\mathcal{E}$ , then there is an arbitrage. Suppose, then, that  $\mathbf{S} \notin \mathcal{E}$ . Since  $\mathcal{E}$  is a closed, bounded, convex set, the Separating Hyperplane Theorem implies that there is a nonzero vector

$$
\theta^ {*} = \left(\theta_ {2}, \theta_ {3}, \dots , \theta_ {K}\right) \tag {24}
$$

such that for any element  $y \in \mathcal{E}$ , the dot product of  $y$  with  $\theta^{*}$  is strictly greater than the dot product of  $\mathbf{S}$  with  $\theta^{*}$ . Because  $\mathcal{E}$  includes its extreme points, that is, those points of the form (22) where the probability distribution  $\pi$  puts all its mass on a single scenario  $\omega_{i}$ , it follows that, for each scenario  $\omega_{i}$ ,

$$
e ^ {- r} \sum_ {j = 2} ^ {K} \theta_ {j} S _ {1} ^ {j} \left(\omega_ {i}\right) > \sum_ {j = 2} ^ {K} \theta_ {j} S _ {0} ^ {j}. \tag {25}
$$

Choose a real number  $-\theta_{1}$  that lies between these two values; adding  $\theta_{1}$  to both sides of the inequality (25) shows that for every market scenario  $\omega_{i}$ ,

$$
e ^ {- r} \sum_ {j = 1} ^ {K} \theta_ {j} S _ {1} ^ {j} \left(\omega_ {i}\right) > 0 > \sum_ {j = 1} ^ {K} \theta_ {j} S _ {0} ^ {j}. \tag {26}
$$

This implies that the portfolio  $\theta = (\theta_{1},\theta_{2},\dots,\theta_{K})$  is an arbitrage.

# 8. PROOF OF THE COMPLETENESS THEOREM

(A) Suppose that for every derivative security there is a replicating portfolio in the assets  $A^1, \ldots, A^K$ . We must show that the equilibrium measure is uniquely determined. Fix a particular market scenario  $\omega_{i*}$ , and consider the derivative security  $\mathcal{D}_{i*}$  whose value  $V_1(\omega_i)$  at  $t = 1$  in market scenario  $\omega_i$  is given by

$$
V _ {1} \left(\omega_ {i}\right) = 1 \quad \text {i f} \quad i = i ^ {*} \tag {27}
$$

$$
V _ {1} (\omega_ {i}) = 0 \qquad \text {i f} \qquad i \neq i ^ {*}
$$

By hypothesis, there is a replicating portfolio  $\theta = (\theta_{1},\theta_{2},\dots,\theta_{K})$  in the assets  $A^1,\ldots ,A^K$  for the derivative security  $\mathcal{D}_{i^{*}}$ . By Proposition 4, the  $t = 0$  share price of  $\mathcal{D}_{i^*}$  must be

$$
V _ {0} = \sum_ {j = 1} ^ {K} \theta_ {j} A _ {0} ^ {j}.
$$

If  $\pi$  is an equilibrium measure, then by definition the time-zero price of any security must be the discounted expectation, under  $\pi$ , of its time-one value. Thus, in particular, the time-zero value of  $\mathcal{D}_{j^*}$  must be

$$
V _ {0} = e ^ {- r} \sum_ {i = 1} ^ {N} V _ {1} (\omega_ {i}) \pi (\omega_ {i}) = e ^ {- r} \pi (\omega_ {i *}),
$$

where  $r$  is the riskless rate of return. Therefore, the only possible equilibrium probability for scenario  $\omega_{i^*}$  is

$$
\pi \left(\omega_ {i ^ {*}}\right) = e ^ {r} \sum_ {j = 1} ^ {K} \theta_ {j} A _ {0} ^ {j}. \tag {28}
$$

(B) Now suppose that the equilibrium measure  $\pi(\omega_i)$  is unique, and that  $\pi(\omega_i) > 0$  for every market scenario  $\omega_i$ . We must show that every derivative security has a replicating portfolio in the assets  $A^1, \ldots, A^K$ . Suppose, to the contrary, that for some derivative security  $\mathcal{D}$  there is no replicating portfolio; we will obtain a contradiction by showing that there is an equilibrium measure different from  $\pi$ . Denote by  $f(\omega_i) = f_i$  the value of  $\mathcal{D}$  in market scenario  $\omega_i$ , and set

$$
\mathbf {f} = \left(f \left(\omega_ {1}\right), f \left(\omega_ {2}\right), \dots , f \left(\omega_ {N}\right)\right), \tag {29}
$$

$$
\mathbf {a} ^ {j} = \left(S _ {1} ^ {j} \left(\omega^ {1}\right), S _ {1} ^ {j} \left(\omega_ {2}\right), \dots , S _ {1} ^ {j} \left(\omega_ {N}\right)\right), \tag {30}
$$

where  $S_{t}^{j}(\omega_{i})$  denotes the share price of asset  $A^j$  at time  $t$  in scenario  $\omega_{i}$ . Since, by hypothesis, there is no replicating portfolio for the security  $\mathcal{D}$  in the assets  $A^j$ , the vector  $\mathbf{f}$  is not a linear

combination of the vectors  $\mathbf{a}^j$ . Hence, the vectors  $\mathbf{a}^j$  do not span the vector space  $\mathbb{R}^N$ , and so there is a nonzero vector  $\mathbf{v} = (v(\omega_1), v(\omega_2), \ldots, v(\omega_N))$  that is orthogonal to every  $\mathbf{a}^j$ , that is,

$$
\sum_ {i = 1} ^ {N} v \left(\omega_ {i}\right) S _ {1} ^ {j} \left(\omega_ {i}\right) = 0 \quad \forall j = 1, 2, \dots , K. \tag {31}
$$

Recall that asset  $A^1$  is riskless, and so its value  $A_1^1(\omega_i) = e^r$  at time  $t = 1$  is the same in all market scenarios  $\omega_i$ . Thus, (31) implies that the vector  $\mathbf{v}$  is orthogonal to a scalar multiple  $e^r$  of the vector  $(1, 1, \ldots, 1)$ . It follows that

$$
(3 2) \qquad \qquad \qquad \sum_ {i = 1} ^ {N} v (\omega_ {i}) = 0.
$$

Now let  $\varepsilon > 0$  be a very small number, and consider the assignment

$$
\pi^ {*} (\omega_ {i}) = \pi (\omega_ {i}) + \varepsilon v (\omega_ {i}). \tag {33}
$$

Since the sum of the values  $\pi (\omega_i)$  is 1, so is the sum of the values  $\pi^{*}(\omega_{i})$ , by (32). Moreover, if  $\varepsilon >0$  is sufficiently small, then  $\pi^{*}(\omega_{i}) > 0$  for each  $i$  because, by hypothesis, each  $\pi (\omega_i) > 0$ . Consequently,  $\pi^{*}$  is a probability distribution on the set  $\Omega$  of market scenarios  $\omega_{i}$ . Now by the orthogonality relation (31),

$$
(3 4) \qquad \qquad \sum_ {i = 1} ^ {N} \pi^ {*} (\omega_ {i}) S ^ {j} (\omega_ {i}) = \sum_ {i = 1} ^ {N} \pi (\omega_ {i}) S ^ {j} (\omega_ {i}) \qquad \forall j = 1, 2, \dots , K.
$$

But this implies that  $\pi^{*}$  is another equilibrium measure! This is a contradiction, and so our hypothesis that there is a derivative security with no replicating portfolio must be false.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/90035d6c-6a95-4c1f-8f68-e4acdf553086/66b283a58e56492e32c4872cc9972069330437ed3ac8c42407a256fd2121ec1e.jpg)

# 9. PROBLEMS

In the following problems, all markets are assumed to be arbitrage-free, and to contain a riskless asset (called MONEYMARKET), with riskless rate of return  $r$ .

1. Forwards Contracts: Use the Fundamental Theorem to give another derivation of the formula obtained in class for the forward price of an asset STOCK, assuming that there is a riskless asset MONEYMARKET. Here is an outline:

(a) Let  $S_0$  and  $S_1$  denote the price of the STOCK at the initial and terminal times. Note that  $S_1$  is subject to uncertainty, that is, it is a function of the market scenario. Let  $r$  be the rate of return on the riskless asset MONEYMARKET, so that  $S_0^B = 1$  and  $S_1^B = e^r$  are the initial and terminal values of one share of MONEYMARKET. Explain why, if  $F$  is the forward price of the stock, then

$$
E _ {Q} S _ {1} = F, \tag {35}
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
\Omega = \left\{\left(a _ {1}, a _ {2}\right): a _ {1} > 0, a _ {2} > 0, \text {a n d} a _ {1} + a _ {2} > 1 \right\} \cup \{(0, 1) \};
$$

$$
S _ {1} ^ {1} \left(\left(a _ {1}, a _ {2}\right) = a _ {1} \text {a n d} S _ {0} ^ {1} = 0; \right.
$$

$$
S _ {1} ^ {2} \left(\left(a _ {1}, a _ {2}\right)\right) = a _ {2} \text {a n d} S _ {0} ^ {2} = 2.
$$

(a) Prove that  $\mathcal{E} = \Omega$  
(b) Prove that there are no arbitrages.  
(c) Prove that there is no equilibrium measure.
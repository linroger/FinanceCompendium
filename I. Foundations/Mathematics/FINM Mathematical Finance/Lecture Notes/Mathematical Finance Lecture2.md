---
title: 'Lecture 2: Multiperiod Models and Trees'
parent_directory: I. Foundations/Mathematics/FINM Mathematical Finance/Lecture Notes
formatted: 2025-12-21 06:02:00 PM
formatter_model: grok-code-fast-1
cli_tool: opencode
primary_tags:
  - multiperiod models
  - trees
secondary_tags:
  - arbitrage pricing
  - risk neutral pricing
  - binary market
cssclasses: academia
---

# LECTURE 2: MULTIPERIOD MODELS AND TREES

# 1. INTRODUCTION

One-period models, which were the subject of Lecture 1, are of limited usefulness in the pricing and hedging of derivative securities. In real-world markets, trading takes place in continuous time; moreover, perfect hedging of many derivative securities requires continuous rebalancing of portfolios, as we shall see. Nevertheless, useful numerical approximations can often be gotten by using discrete multiperiod models with a large number of very short periods.

# 2. PRINCIPLE OF NUMERAIRE INVARIANCE

The existence of an equilibrium measure was established in Lecture 1 under the hypothesis that the market contains a riskless asset, that is, an asset whose share price at market termination  $t = 1$  is the same under all market scenarios  $\omega$ . But in fact the existence of a riskless asset is a stronger hypothesis than is necessary – the Fundamental Theorem remains true under the following much weaker hypothesis:

Hypothesis 1. There is an asset whose share price at market termination  $t = 1$  is strictly positive under all market scenarios.

That the Fundamental Theorem remains true under this hypothesis is a consequence of the principle of numeraire invariance. This simple principle is also a surprisingly useful device for simplifying many arbitrage pricing problems. In rough terms, it says that it doesn't matter what "currency" is used for measuring prices. Here "currency" needn't be money - shares of any freely traded asset whose share price remains strictly positive in all market scenarios may be used as the "numeraire".

There are a number of ways to formulate the principle of numeraire invariance mathematically. For a one-period market with finitely many market scenarios, the most basic formulation is as follows. Let  $\Omega$  be a finite set of possible market scenarios  $\omega$ , and let  $A^1, A^2, \ldots, A^K$  be assets. Consider two markets,  $\mathcal{M}_1$  and  $\mathcal{M}_2$  both with  $\Omega$  as the set of possible scenarios and both with  $A^1, A^2, \ldots, A^K$  as the set of freely traded assets. In market  $\mathcal{M}_1$ , the share price of asset  $A^j$  is  $S_0^j$  at  $t = 0$  and, in scenario  $\omega$ , is  $S_1^j(\omega)$  at  $t = 1$ . In market  $\mathcal{M}_2$ , the corresponding prices are  $\tilde{S}_0^j$  and  $\tilde{S}_1^j(\omega)$ , where

$$
(1) \qquad \tilde{S}_{0}^{j} = S_{0}^{j} / S_{0}^{1} \qquad \mathrm{and} \qquad \tilde{S}_{1}^{j}(\omega) = S_{1}^{j}(\omega) / S_{1}^{1}(\omega).
$$

Thus, share prices in market  $\mathcal{M}_2$  are quoted in shares of  $A^1$ . Observe that in market  $\mathcal{M}_2$ , asset  $A^1$  is riskless, with rate of return 0, provided that its share price in market  $\mathcal{M}_1$  remains positive under every market scenario.

Proposition 1. Assume that  $S_0^1 > 0$  and that  $S_1^1(\omega) > 0$  for all market scenarios  $\omega \in \Omega$ . Then there is no arbitrage in market  $\mathcal{M}_1$  if and only if there is no arbitrage in market  $\mathcal{M}_2$ .

PROOF. Homework.

It is not assumed that there is a riskless asset in market  $\mathcal{M}_1$ ; it is only assumed that there is an asset whose share price remains strictly positive in all scenarios. Proposition 1 implies that,

if market  $\mathcal{M}_1$  is arbitrage-free, then market  $\mathcal{M}_2$  has an equilibrium distribution  $\tilde{\pi}$ , since it has a riskless asset. In particular, time  $t = 0$  share prices in market  $\mathcal{M}_2$  are given by expectation:

$$
\tilde{S}_{0}^{j} = \sum_{\omega \in \Omega} \tilde{\pi}(\omega) \tilde{S}_{1}^{j} \quad \Longrightarrow \tag{2}
$$

$$
S_{0}^{j} = S_{0}^{1} \sum_{\omega \in \Omega} \tilde{\pi}(\omega) \tilde{S}_{1}^{j} \tag{3}
$$

Equation (3) is the Principle of Numeraire Invariance. It asserts that one may compute the share price in a given numeraire by computing the risk-neutral expectation in another numeraire and then converting back to the original numeraire at the prevailing rate of exchange. Notice that the fraction  $S_0^1 / S_1^1(\omega)$  acts as a kind of generalized discount factor. (In the finance and economics literature, generalized discount factors of this sort are sometimes called deflators.) Factoring it out of each term leads to the following equivalent formula:

$$
\boxed{S_{0}^{j} = \delta \sum_{\omega \in \Omega} \pi(\omega) S_{1}^{j}(\omega)} \tag{4}
$$

where

$$
\pi(\omega) = \tilde{\pi}(\omega) \left(\frac{S_{0}^{1}}{S_{1}^{1}(\omega)}\right) / \delta \quad \text{and} \tag{5}
$$

$$
\delta = \sum_{\omega \in \Omega} \tilde{\pi}(\omega) \left(\frac{S_{0}^{1}}{S_{1}^{1}(\omega)}\right). \tag{6}
$$

Thus, there is an "equilibrium distribution"  $\pi$  for market  $\mathcal{M}_1$ , and it is related to the equilibrium distribution  $\tilde{\pi}$  for market  $\mathcal{M}_2$  by formula (5). It is important to note that the probability distributions  $\pi$  and  $\tilde{\pi}$  are not, in general, the same - in fact,  $\pi = \tilde{\pi}$  if and only if the asset  $A^1$ , which is riskless in market  $\mathcal{M}_2$ , is also riskless in  $\mathcal{M}_1$ . This is somewhat counterintuitive: the markets  $\mathcal{M}_1$  and  $\mathcal{M}_2$  are, in a sense, "equivalent", the only difference being the "un its" in which prices are quoted, but the probabilities assigned to the various scenarios are different. This fact has interesting ramifications in problems where two different currencies (e.g., the dollar and the yen) are involved.

For the remainder of this lecture, we shall use the principle of numeraire invariance as an excuse to restrict our attention to markets that have a riskless asset with rate of return  $r = 0$ . This leads to more compact pricing formulas, and also allows some simplification of arguments. (Note, however, that we have only established the principle for single-period markets.)

# 3. MULTIPERIOD MODELS

Consider now a market with finitely many traded assets  $A^1, A^2, \ldots, A^K$ , where asset  $A^1$  is riskless, with constant share price 1, but assets  $A^2, \ldots, A^K$  are risky. These assets may be freely bought and sold at times  $t = 0, 1, 2, \ldots, T$ ; their prices at time  $t$  are denoted by  $A_t^j$ , respectively. Except for time  $t = 0$ , the prices of  $A^2, \ldots, A^K$  are subject to uncertainty, and therefore must be treated as functions of the market scenario  $\omega \in \Omega$ . As in Lecture 1, we shall assume that the set  $\Omega$  of possible market scenarios is finite.

The Space of Market Scenarios as a Tree. In a multiperiod market, the market scenario reveals itself in stages: first, one sees what happens to prices in period 1, then what happens in period 2, and so on, until finally at time  $t = T$  the complete market scenario is apparent. At time  $t = 1$ , one generally will know more about what will be the final state of affairs at  $t = T$  than one

did at  $t = 0$ , and at time  $t = 2$  one will know still more, but, generally, one will not know with certainty the prices of all assets at all times  $0 \leq t \leq T$  until  $t = T$ .

The set of market scenarios may be visualised as a tree of depth  $T$ . The various events that might occur in period 1 are represented by branches emanating from a root node. For each of these branches  $\beta$ , the various events that might occur in the market in period 2, given that  $\beta$  occurred in period 1, may be represented by more branches emanating from the end of  $\beta$ , and so on. At the end of each branch, we place a vertex (also called a node); the nodes of the tree (or alternatively the unique downward paths from the root to the nodes) represent partial, or incomplete scenarios. The terminal nodes – those at depth  $T$  – represent the different possible market scenarios. Thus, the set  $\Omega$  of all possible market scenarios is just the set of all terminal nodes. Since there is a one-to-one correspondence between the set of terminal nodes and the set of downward paths from the root to terminal nodes, we may also visualize  $\Omega$  as the set of all such downward paths.

In most uses of multiperiod models in derivative security pricing, the branches are used to represent the different possible price vectors of the traded assets  $A^j$  at the end of the next trading period. For instance, if there is only one risky asset STOCK, then at each node  $\nu$  of the tree there is one branch emanating from  $\nu$  for each possible share price of STOCK at the next trading time  $t$ . See section 4 below for a simple, concrete example.

```d2
direction: right
root: t=0
period1_up: + (t=1)
period1_down: - (t=1)
period2_up_up: ++ (t=2)
period2_up_down: +- (t=2)
period2_down_up: -+ (t=2)
period2_down_down: -- (t=2)
root -> period1_up
root -> period1_down
period1_up -> period2_up_up
period1_up -> period2_up_down
period1_down -> period2_down_up
period1_down -> period2_down_down
```

Trading Strategies and Arbitrages. A pure trading strategy in the assets  $A^1, A^2, \ldots, A^K$  is a rule (function)  $\phi$  that assigns to each nonterminal node of the tree  $\Omega$  an asset  $A^j$ . The value  $\phi(t) = \phi(t; \omega)$  determines which of the assets one will hold during the time period from  $t$  to  $t + 1$ . The strategy is called pure because it requires the trader using it to put his/her entire fortune into a single asset  $A^j$  at each time  $t$ . Observe that the number of pure trading strategies is  $K^M$ , where  $M$  is the number of nonterminal nodes of the tree. The share price of a pure trading strategy  $\phi$  at time  $t$  under scenario  $\omega$  is defined inductively as follows:

$$
V_{0}^{\phi}(\omega) = 1; \tag{7}
$$

$$
V_{t+1}^{\phi}(\omega) = V_{t}^{\phi}(\omega) \left(\frac{S_{t+1}^{\phi(t)}(\omega)}{S_{t}^{\phi(t)}(\omega)}\right);
$$

thus, the share price at time  $t + 1$  is the share price at time  $t$  multiplied by the one-period return on the asset  $A^{\phi(t)}$  that the trading strategy holds between times  $t$  and  $t + 1$ .

A mixed trading strategy is defined to be a convex combination of the pure trading strategies, that is, if  $S$  denotes the set of pure trading strategies, then a mixed trading strategy is a formal sum

$$
\theta = \sum_{\phi \in \mathcal{S}} \theta_{\phi} \phi \tag{8}
$$

where  $\{\theta_{\phi} : \phi \in S\}$  is a probability distribution on the set  $S$  of pure strategies. One should interpret the expression (8) as a "hedged bet", requiring an investor following the strategy  $\theta$  to partition his/her fortune at time zero, for each  $\phi \in S$  investing a fraction  $\theta_{\phi}$  according to the rule  $\phi$ . The share price of the strategy  $\theta$  defined by (8) at any time  $t$ , under any market scenario  $\omega$ , is just the convex combination

$$
V_{t}(\omega) = V_{t}^{\theta}(\omega) = \sum_{\phi \in \mathcal{S}} \theta_{\phi} V_{t}^{\phi}(\omega)
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
\phi(0) = \mathrm{STOCK}
$$

$$
\phi(+) = \mathrm{STOCK}
$$

$$
\phi(-) = \mathrm{BOND}
$$

Denote by  $V_{T}(\phi, \omega)$  the share price of  $\phi$  at the terminal time. This share price is gotten by tracking the value of the shares held at each time  $t = 0,1,2$  through the nodes along the scenario. One easily checks that

$$
V_{T}(\phi, + +) = S_{2}(+ +)
$$

$$
V_{T}(\phi, + -) = S_{2}(+ -)
$$

$$
V_{T}(\phi, - +) = S_{1}(-)
$$

$$
V_{T}(\phi, - -) = S_{1}(-).
$$

The single-period representation  $\mathcal{M}'$  of the 2-period market  $\mathcal{M}$  has  $2^3$  assets (the 8 different pure trading strategies) and 4 market scenarios. The terminal values of these assets are the values  $V_T(\phi, \omega)$ , computed as in the above example, and the initial values  $V_0(\phi)$  are either 1 or  $S_0$ , depending on whether  $\phi$  assigns BOND or STOCK to the root node. In the absence of arbitrage, this market has an equilibrium distribution, which, in principle, could be determined from the system of 8 equations in 4 unknowns that come from the definition of an equilibrium distribution. Fortunately, there is an easier way to find the equilibrium distribution.

The Equilibrium Distribution. The Fundamental Theorem implies that an equilibrium measure exists. To guess what it is, observe that there are 3 one-period models embedded in the two-period market, one for each nonterminal node of the tree. To each of these embedded markets, the Fundamental Theorem applies. The initial and terminal prices of the risky asset STOCK in these embedded one-period markets are as follows:

<table><tr><td>MARKET</td><td>INITIAL</td><td>TERMINAL</td></tr><tr><td>1</td><td>S0</td><td>S1(+) , S1(-)</td></tr><tr><td>2</td><td>S1(+)</td><td>S2(++), S2(++-)</td></tr><tr><td>3</td><td>S1(-)</td><td>S2(--), S2(---)</td></tr></table>

For each of these embedded markets, the equilibrium distributions is uniquely determined, by assumption (12). We saw in Lecture 1 how to determine such equilibrium distributions by solving systems of linear equations. Applying the same technique here, we find that the equilibrium distributions are

$$
\pi(+) = \left(S_{0} - S_{1}(-)\right) / \left(S_{1}(+) - S_{1}(-)\right) \tag{13}
$$

$$
\pi(-) = (S_{1}(+) - S_{0}) / (S_{1}(+) - S_{1}(-))
$$

for embedded market 1,

$$
\pi(+ | +) = \left(S_{1}(+) - S_{2}(+ -)\right) / \left(S_{2}(+ +) - S_{2}(+ -)\right) \tag{14}
$$

$$
\pi(- | +) = (S_{2}(+ +) - S_{1}(+)) / (S_{2}(+ +) - S_{2}(+ -))
$$

for embedded market 2, and

$$
\pi(+ | -) = \left(S_{1}(-) - S_{2}(-)\right) / \left(S_{2}(- +) - S_{2}(- -)\right) \tag{15}
$$

$$
\pi(- | -) = \left(S_{2}(- +) - S_{1}(-)\right) / \left(S_{2}(- +) - S_{2}(- -)\right)
$$

for embedded market 3. (Note that there are no discount factors in these formulas, because we are using as numeraire the riskless asset, which, by assumption, has rate of return 0.)

Proposition 2. The unique equilibrium distribution for the 2-period market is

$$
\pi(+ +) = \pi(+) \pi(+ | +) \tag{16}
$$

$$
\pi(+ -) = \pi(+) \pi(- | +)
$$

$$
\pi(- +) = \pi(-) \pi(+ | -)
$$

$$
\pi(- -) = \pi(-) \pi(- | -),
$$

where  $\pi(\cdot)$  and  $\pi(\cdot|\cdot)$  are given by equations (13)-(15).

Proof. There are two things to be proved: (1) that equations (16) define an equilibrium distribution; and (2) that this is the only possible equilibrium distribution. But if we prove (2), then (1) will follow, because we already know that there is some equilibrium distribution.

Suppose that  $\pi (\omega_1\omega_2)$  is any equilibrium distribution. First, we shall show by an arbitrage argument that the marginal distribution is (13), that is,

$$
\pi(+ +) + \pi(+ -) = \pi(+), \tag{17}
$$

$$
\pi(- +) + \pi(- -) = \pi(-).
$$

where  $\pi(+),\pi(-)$  are defined by (13). Consider the following trading strategy: at  $t = 0$  , sell  $S_{0}$  shares of BOND and use the proceeds to buy 1 share of STOCK. Sell the STOCK at  $t = 1$  , and invest the proceeds (either  $S_{1}(+)$  or  $S_{1}(-)$  ) in BOND. Then at time  $t = 2$  the value of the portfolio is

$$
S_{1}(+) - S_{0} \quad \text{inscenarios } + +, + -, \text{and}
$$

$$
S_{1}(-) - S_{0} \quad \text{inscenarios } - +, - -.
$$

Since at time  $t = 0$  the value of the portfolio was 0 (the purchase of the share of STOCK was financed by short-selling shares of BOND, that is, borrowing), it follows by definition of an equilibrium distribution that

$$
0 = \left(S_{1}(-) - S_{0}\right) (\pi(- +) + \pi(- -)) + \left(S_{1}(+) - S_{0}\right) (\pi(+ +) + \pi(+ -)) \quad \Longrightarrow
$$

$$
S_{0} = S_{1}(-) (\pi(- +) + \pi(- -)) + S_{1}(+) (\pi(+ +) + \pi(+ -)) \tag{18}
$$

But  $(\pi(+),\pi(-))$  is the unique equilibrium measure for the embedded market 1, so, again by definition of equilibrium measure,

$$
S_{0} = S_{1}(-) \pi(-) + S_{1}(+) \pi(+)
$$

Together with equation (18), this implies (17).

Next, consider another trading strategy: At  $t = 1$ , in either of scenarios ++or +-, sell  $S_{1}(+)$  shares of BOND and use it to buy 1 share of STOCK. In scenarios -, ++, do no trading at all.

Then the value of the portfolio is 0 at  $t = 0$ ; at  $t = 2$  its value is

$$
0 \quad \text{inscenario } - - -
$$

$$
0 \quad \text{inscenario } - +
$$

$$
S_{2}(+ +) - S_{1}(+) \quad \text{inscenario } + +
$$

$$
S_{2}(+ -) - S_{1}(+) \quad \text{inscenario } + -
$$

Consequently, by definition of an equilibrium distribution, and by equation (17),

$$
\begin{array}{l} 0 = \pi(+ +) (S_{2}(+ +) - S_{1}(+)) + \pi(+ -) (S_{2}(+ -) - S_{1}(+)) \\ = (\pi(+ +) / \pi(+)) (S_{2}(+ +) - S_{1}(+)) + (\pi(+ -) / \pi(+)) (S_{2}(+ -) - S_{1}(+)) \\ = (\pi(+ +) / \pi(+)) (S_{2}(+ +) - S_{1}(+)) + (1 - \pi(+ +) / \pi(+)) (S_{2}(+ -) - S_{1}(+)) \\ = (\pi(+ +) / \pi(+)) (S_{2}(+ +) - S_{2}(+ -)) + (S_{2}(+ -) - S_{1}(+)), \\ \end{array}
$$

which may be rewritten as

$$
\pi(+ +) / \pi(+) = \left(S_{1}(+) - S_{2}(+ -)\right) / \left(S_{2}(+ +) - S_{2}(+ -)\right) = \pi(+ | +). \tag{20}
$$

This implies that the first two of equations (16) must hold. One gets the other two by considering a similar trading strategy (EXERCISE!).  $\square$

# 5. THE  $T$ -PERIOD BINARY MARKET

Once again, the market  $\mathcal{M}$  has two assets, STOCK and BOND, but now there are  $T + 1$  times  $t = 0,1,\ldots ,T$  at which trading may occur. The asset BOND is riskless, and has rate of return  $r = 0$ , so that its share price is always 1, in any scenario. The set  $\Omega$  of possible market scenarios is the set  $\{+, - \} ^T$  of all sequences  $\omega = \omega_{1}\omega_{2}\dots \omega_{T}$  with entries  $+,-$ . This set may be represented as a binary tree of depth  $T$ , with  $2^{t}$  nodes at each intermediate depth  $t < T$ , each representing a partial scenario  $\omega_{1}\omega_{2}\dots \omega_{t}$ . As in the preceding section, we assume that  $+$  implies an increase, and  $-$  a decrease, in the share price of STOCK; thus, for any partial scenario  $\omega_{1}\omega_{2}\dots \omega_{t}$ , where  $t < T$ ,

$$
S_{t+1}\left(\omega_{1} \omega_{2} \dots \omega_{t} -\right) <   S_{t}\left(\omega_{1} \omega_{2} \dots \omega_{t}\right) <   S_{t+1}\left(\omega_{1} \omega_{2} \dots \omega_{t} +\right). \tag{21}
$$

For each partial scenario  $\omega_{1}\omega_{2}\ldots \omega_{t}$ , where  $t < T$ , define

$$
\pi(+ | \omega_{1} \omega_{2} \dots \omega_{t}) = \frac{S_{t}\left(\omega_{1} \omega_{2} \dots \omega_{t}\right) - S_{t+1}\left(\omega_{1} \omega_{2} \dots \omega_{t} -\right)}{S_{t+1}\left(\omega_{1} \omega_{2} \dots \omega_{t} +\right) - S_{t+1}\left(\omega_{1} \omega_{2} \dots \omega_{t} -\right)} \tag{22}
$$

$$
\pi(- | \omega_{1} \omega_{2} \dots \omega_{t}) = \frac{S_{t+1}(\omega_{1} \omega_{2} \dots \omega_{t}) - S_{t}(\omega_{1} \omega_{2} \dots \omega_{t})}{S_{t+1}(\omega_{1} \omega_{2} \dots \omega_{t} +) - S_{t+1}(\omega_{1} \omega_{2} \dots \omega_{t} -)},
$$

and define

$$
\pi(+) = \left(S_{0} - S_{1}(-)\right) / \left(S_{1}(+) - S_{1}(-)\right) \tag{23}
$$

$$
\pi(-) = (S_{1}(+) - S_{0}) / (S_{1}(+) - S_{1}(-)).
$$

Theorem 2. The unique equilibrium distribution for the  $T$ -period binary market described above is given by

$$
\pi\left(\omega_{1} \omega_{2} \dots \omega_{T}\right) = \pi\left(\omega_{1}\right) \prod_{t=1}^{T-1} \pi\left(\omega_{t+1} \mid \omega_{1} \omega_{2} \dots \omega_{t}\right). \tag{24}
$$

Proof. The proof is by induction on  $T$ . The case  $T = 2$  was done in the preceding section. The inductive step is done by a routine modification of the case  $T = 2$ . Details are omitted.

Among other things, the formulas (22), (23), and (24) make it obvious how to compute conditional probabilities in the equilibrium distribution. Formula (22) gives the conditional probabilities that the next step is  $+$  or  $-$ , given the partial scenario  $\omega_{1}\omega_{2}\ldots \omega_{t}$ . The "multiplication law" for conditional probabilities implies that the conditional probability of scenario  $\omega_{1}\omega_{2}\ldots \omega_{T}$  given the partial scenario  $\omega_{1}\omega_{2}\ldots \omega_{t}$  is

$$
\pi\left(\omega_{1} \omega_{2} \dots \omega_{T} \mid \omega_{1} \omega_{2} \dots \omega_{t}\right) = \prod_{j=t}^{T-1} \pi\left(\omega_{j+1} \mid \omega_{1} \omega_{2} \dots \omega_{j}\right) \tag{25}
$$

# 6. THE HOMOGENEOUS  $T$ -PERIOD BINARY MARKET

When binary trees are used in practice for derivative pricing, it is often assumed that stock price movements are such that, for certain constants  $d < 1 < u$ ,

$$
S_{t+1}\left(\omega_{1} \omega_{2} \dots \omega_{t} +\right) = u S_{t}\left(\omega_{1} \omega_{2} \dots \omega_{t}\right), \tag{26}
$$

$$
S_{t+1}\left(\omega_{1} \omega_{2} \dots \omega_{t} -\right) = d S_{t}\left(\omega_{1} \omega_{2} \dots \omega_{t}\right). \tag{27}
$$

Henceforth, we shall refer to this model as the homogeneous  $T$ -period binary market. In this case the formulas (22) and (23) simplify considerably:

$$
\pi(+) = \pi(+ | \omega_{1} \omega_{2} \dots \omega_{t}) = (1 - d) / (u - d) \triangleq p \tag{28}
$$

$$
\pi(-) = \pi(- | \omega_{1} \omega_{2} \dots \omega_{t}) = (u - 1) / (u - d) \stackrel{\Delta}{=} q.
$$

Thus, in the homogeneous  $T$ -period binary market, the equilibrium distribution  $\pi$  is the unique probability distribution on  $\Omega$  that makes the coordinate random variables  $\omega_{t}$  independent and identically distributed, with distribution

$$
\pi\left(\omega_{t} = + 1\right) = 1 - \pi\left(\omega_{t} = - 1\right) = p. \tag{29}
$$

Example: European Call Option. Consider the European call with strike  $K$  in a homogeneous  $T$ -period binary market. The market price of the call, assuming no arbitrage, is the expected value of its terminal value (no discounting is necessary, because share prices are denominated in units of BOND). The terminal value, in market scenario  $\omega$ , is

$$
\left(S_{T}(\omega) - K\right)_{+}
$$

Because the market is assumed to be homogeneous, the terminal share price  $S_{t}(\omega)$  of STOCK may be written as

$$
S_{T}(\omega) = S_{0} u^{(T + \sum \omega_{t}) / 2} d^{(T - \sum \omega_{t}) / 2} = S_{0} (u / d)^{Z_{T}} d^{T},
$$

where  $Z_{T}(\omega)$  is defined to be the number of + steps in  $\omega$ . Thus, if we set  $n_*$  to be the least integer such that

$$
K <   S_{0} (u / d)^{n_{*}} d^{T},
$$

then the market price of the CALL at time  $t = 0$  is given by

$$
V_{0}(\text{CALL}) = \sum_{n=n_{*}}^{T} \left(S_{0} d^{T} (u / d)^{n} - K\right) \binom{T}{n} p^{n} q^{T-n}. \tag{30}
$$

# 7. THE BLACK-SCHOLES FORMULA

Homogeneous multiperiod binary models are commonly used for numerical approximations to security and derivative prices in real markets, where trading takes place in continuous time. In such applications, a large number  $T$  of trading periods is usually needed for accurate approximations. Since asset prices, in real time, seem to change continuously, $^{1}$  the factors  $u$  and  $d$  in (28) should be chosen close to 1; and in the limit as  $T \to \infty$  the factors  $u$  and  $d$  should converge to 1. To get an interesting asymptotic approximation to the call price in formula (30) as  $T \to \infty$ , we shall make the following assumption about the dependence of  $u$  and  $d$  on  $T$ :

$$
u = e^{\sigma / \sqrt{T}} \quad \text{and} \quad d = e^{- \sigma / \sqrt{T}}, \tag{31}
$$

where  $\sigma > 0$  is a constant, called the volatility of the stock price. This assumption may at first glance seem rather arbitrary. However, it is the only choice such that, in the limit as  $T \to \infty$ , the variance of the log of the stock price converges to a finite, positive real number  $\sigma^2$ . This choice determines the values of the risk-neutral probabilities  $p$  and  $q = 1 - p$  in (28):

$$
\begin{array}{l} p = (1 - e^{- \sigma / \sqrt{T}}) / \left(e^{\sigma / \sqrt{T}} - e^{\sigma / \sqrt{T}}\right) \tag{32} \\ = (\sigma / \sqrt{T} - \sigma^{2} / 2 T + O(1 / T^{3 / 2})) / (2 \sigma / \sqrt{T} + O(1 / T^{3 / 2})) \\ = 1 / 2 - \sigma / 4 \sqrt{T} + O(1 / T) \\ \end{array}
$$

as  $T \to \infty$ . Since, under the risk-neutral measure, the distribution of the number  $(T + \sum_{t} \omega_{t}) / 2$  of "up" steps is Binomial- $(T, p)$ , it follows from the Central Limit Theorem that for large  $T$  the distribution of the standardized variate  $\sigma \sum_{t} \omega_{t} / \sqrt{T}$  is well approximated by the Gaussian distribution with mean  $-\sigma^2 / 4$  and variance  $\sigma^2$ . Hence, the value (30) of the CALL at strike  $K$  is well approximated, as  $T \to \infty$ , by

$$
V_{0}(\text{CALL}) = E\left(S_{0} e^{Y} - K\right)_{+} \tag{33}
$$

where

$$
Y \sim \operatorname{Normal}\left(- \sigma^{2} / 4, \sigma^{2}\right). \tag{34}
$$

This is a form of the famous Black-Scholes formula. It is surprisingly accurate for call options that are "at or near the money". Later in the course, we shall discuss the Black-Scholes formula in greater depth.


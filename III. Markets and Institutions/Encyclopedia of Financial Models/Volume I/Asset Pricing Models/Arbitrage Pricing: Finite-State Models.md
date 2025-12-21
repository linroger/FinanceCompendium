
# ---
title: Arbitrage Pricing: Finite-State Models
parent_directory: III. Markets and Institutions/Encyclopedia of Financial Models/Volume I/Asset Pricing Models
formatted: 2025-12-21 08:45:00 AM
formatter_model: obsidian-formatting-agent
cli-tool: claude-code
primary_tags:
  - arbitrage pricing theory
  - finite state models
  - no arbitrage principle
  - state price deflators
  - risk neutral valuation
  - complete markets
  - multiperiod arbitrage
cssclasses: academia
---

# Arbitrage Pricing: Finite-State Models

Partner, The Intertek Group

Professor of Finance, EDHEC Business School

Abstract: Arbitrage in its most basic form involves the simultaneous buying and selling of an asset at two different prices in two different markets. In real-world financial markets, arbitrage opportunities rarely, if ever, exist. Less obvious arbitrage opportunities exist in situations where a package of assets can be assembled that have a payoff (return) that is identical to an asset that is priced differently. A market is said to be a complete market if an arbitrary payoff can be replicated by a portfolio. The most fundamental principle in asset pricing theory is the absence of arbitrage opportunities.

The principle of absence of arbitrage or the no-arbitrage principle is perhaps the most fundamental principle of finance theory. In the presence of arbitrage opportunities, there is no trade-off between risk and returns because it is possible to make unbounded risk-free gains. The principle of absence of arbitrage is fundamental for understanding asset valuation in a competitive market. This entry discusses arbitrage pricing in a finite-state, discrete-time setting. However, it is important to note that there are well-known limits to arbitrage, first identified by Shleifer and Vishny (1997), resulting from restrictions imposed on rational traders and, as a result, pricing inefficiencies may exist for a period of time.

# THE ARBITRAGE PRINCIPLE

Let's begin by defining what is meant by arbitrage. In its simple form, arbitrage is the simultaneous buying and selling of an asset at two different prices in two different markets. The arbitrageur profits without risk by buying cheap in one market and simultaneously selling at the higher price in the other market. Such opportunities for arbitrage are rare. In fact, a single arbitrageur with unlimited ability to sell short could correct a mispricing condition by financing purchases in the underpriced market with proceeds from short sales in the overpriced market. This means that riskless arbitrage opportunities are short-lived.


Less obvious arbitrage opportunities exist in situations where a package of assets can produce a payoff (return) identical to an asset that is priced differently. This arbitrage relies on a fundamental principle of finance called the law of one price, which states that a given asset must have the same price regardless of the location where the asset is traded and the means by which one goes about creating that asset. The law of one price implies that if the payoff of an asset can be synthetically created by a package of assets, the price of the package and the price of the asset whose payoff it replicates must be equal.


When a situation is discovered whereby the price of the package of assets differs from that of an asset with the same payoff, rational investors will trade these assets in such a way so as to restore price equilibrium. This market mechanism is founded on the fact that an arbitrage transaction does not expose the investor to any adverse movement in the market price of the assets in the transaction.

For example, consider how we can produce an arbitrage opportunity involving three assets A, B, and C. These assets can be purchased today at the prices shown below, and can each produce only one of two payoffs (referred to as State 1 and State 2) a year from now:

<table><tr><td>Asset</td><td>Price</td><td>Payoff in State 1</td><td>Payoff in State 2</td></tr><tr><td>A</td><td>$70</td><td>$50</td><td>100</td></tr><tr><td>B</td><td>60</td><td>30</td><td>120</td></tr><tr><td>C</td><td>80</td><td>38</td><td>112</td></tr></table>

While it is not obvious from the data presented above, an investor can construct a portfolio of assets A and B that will have the identical payoff as asset C in both State 1 and State 2. Let  $w_{A}$  and  $w_{B}$  be the proportion of assets A and B, respectively, in the portfolio. Then the payoff (i.e., the terminal value of the portfolio) under the two states can be expressed mathematically as follows:

• If State 1 occurs: $50 wA + $30 wB
• If State 2 occurs: $100 wA + $120 wB

We create a portfolio consisting of A and B that will reproduce the payoff of C regardless of the state that occurs one year from now. Here is how: For either condition (State 1 and State 2), we set the payoff of the portfolio equal to the payoff for C as follows:

• State 1: $50 wA + $30 wB = 38
• State 2: $100 wA + $120 wB = 112

We also know that  $w_{A} + w_{B} = 1$ . If we solved for the weights for  $w_{A}$  and  $w_{B}$  that would simultaneously satisfy the above equations, we would find that the portfolio should have  $40\%$  in asset A (i.e.,  $w_{A} = 0.4$ ) and  $60\%$  in asset B (i.e.,  $w_{B} = 0.6$ ). The cost of that portfolio will be equal to

$$
(0.4) (\$70) + (0.6) (\$60) = \$64
$$

Our portfolio (i.e., package of assets) comprised of assets A and B has the same payoff in State 1 and State 2 as the payoff of asset C. The cost of asset C is  \$80 while the cost of the portfolio is only\$ 64. This is an arbitrage opportunity that can be exploited by buying assets A and B in the proportions given above and shorting (selling) asset C.

For example, suppose that  \$1 million is invested to create the portfolio with assets A and B. The\$ 1 million is obtained by selling short asset C. The proceeds from the short sale of asset C provide the funds to purchase assets A and B. Thus, there would be no cash outlay by the investor. The payoffs for States 1 and 2 are shown below:

<table><tr><td>Asset</td><td>Investment</td><td>State 1</td><td>State 2</td></tr><tr><td>A</td><td>$ 400,000</td><td>$ 285,715</td><td>\$ 571,429</td></tr><tr><td>B</td><td>600,000</td><td>300,000</td><td>1,200,000</td></tr><tr><td>C</td><td>-1,000,000</td><td>-475,000</td><td>-1,400,000</td></tr><tr><td>Total</td><td>0</td><td>\$110,715</td><td>371,429</td></tr></table>

# ARBITRAGE PRICING IN A ONE-PERIOD SETTING

We can describe the concepts of arbitrage pricing in a more formal mathematical context. It is useful to start in a simple one-period, finite-state setting as in the example of the previous section. This means that we consider only one period and that there is only a finite number  $M$  of states of the world. In this setting, asset prices can assume only a finite number of values.

The assumption of finite states is not as restrictive as it might appear. In practice, security prices can only assume a finite number of values. Stock prices, for example, are not real numbers but integer fractions of a dollar. In addition, stock prices are nonnegative numbers and it is conceivable that there is some very high upper level that they cannot exceed. In addition, whatever simulation we might perform is a finite-state simulation given that the precision of computers is finite.


The finite number of states represents uncertainty. There is uncertainty because the world can be in any of the  $M$  states. At time 0 it is not known in what state the world will be at time 1. Uncertainty is quantified by probabilities but a lot of arbitrage pricing theory can be developed without any reference to probabilities. Suppose there are  $N$  securities. Each security  $i$  pays  $d_{ij}$  number of dollars (or of any other unit of account) in each state of the world  $j$ . The payoff of each security need not be a positive number. For instance, a derivative instrument might have negative payoffs in some states of the world. Therefore, in a one-period setting, the securities are formally represented by an  $N \times M$  matrix  $\mathbf{D} = \{d_{ij}\}$  where the  $d_{ij}$  entry is the payoff of security  $i$  in state  $j$ . The matrix  $\mathbf{D}$  can also be written as a set of  $N$  row vectors:

$$
\mathbf {D} = \left[ \begin{array}{c} \mathbf {d}_{1} \\ \cdot \\ \mathbf {d}_{N} \end{array} \right],   \mathbf {d}_{i} = [ d_{i 1} \cdot d_{i M} ]
$$ where the  $M$ -vector  $\mathbf{d}_i$  represents the payoffs of security  $i$  in each of the  $M$  states.


Each security is characterized by a price  $S$ . Therefore, the set of  $N$  securities is characterized by an  $N$ -vector  $\mathbf{S}$  and an  $N \times M$  matrix  $\mathbf{D}$ . Suppose, for instance, there are two states and three securities. Then the three securities are represented by

$$
\mathbf {S} = \left[ \begin{array}{c} S_{1} \\ S_{2} \\ S_{3} \end{array} \right],   \mathbf {D} = \left[ \begin{array}{c c} d_{1 1} & d_{1 2} \\ d_{2 1} & d_{2 2} \\ d_{3 1} & d_{3 2} \end{array} \right]
$$

Every row of the  $\mathbf{D}$  matrix represents one security, every column one state. Note that in a one-period setting, prices are defined at time 0 while payoffs are defined at time 1. There is no payoff at time 0 and there is no price at time 1. A portfolio is represented by an  $N$ -vector of weights  $\theta$ . In our example of a market with two states and three securities, a portfolio is a 3-vector:


$$
\boldsymbol {\theta} = \left[ \begin{array}{l} \theta_{1} \\ \theta_{2} \\ \theta_{3} \end{array} \right]
$$

The market value  $S_{\theta}$  of a portfolio  $\theta$  at time 0 is a scalar given by the scalar product:

$$
S_{\boldsymbol {\theta}} = S \boldsymbol {\theta} = \sum_{i = 1}^{N} S_{i} \theta_{i}
$$

Its payoff  $\mathbf{d}_{\theta}$  at time 1 is the  $M$  -vector:

$$
\mathbf {d}_{\theta} = \mathbf {D}^{\prime} \theta
$$

The price of a security and the market value of a portfolio can be a negative number. In the previous example of a two-state, three-security market we obtain

$$
S_{\theta} = S \theta = S_{1} \theta_{1} + S_{2} \theta_{2} + S_{3} \theta_{3}
$$

$$
\begin{array}{l} \mathbf {d}_{\boldsymbol {\theta}} = D^{\prime} \boldsymbol {\theta} = \left[ \begin{array}{c c c} d_{1 1} & d_{2 1} & d_{3 1} \\ d_{1 2} & d_{2 2} & d_{3 2} \end{array} \right] \left[ \begin{array}{c} \theta_{1} \\ \theta_{2} \\ \theta_{3} \end{array} \right] \\ = \left[ \begin{array}{c} d_{1 1} \theta_{1} + d_{2 1} \theta_{2} + d_{3 1} \theta_{3} \\ d_{1 2} \theta_{1} + d_{2 2} \theta_{2} + d_{3 2} \theta_{3} \end{array} \right] \\ \end{array}
$$

Let's introduce the concept of arbitrage in this simple setting. As we have seen, arbitrage is essentially the possibility of making money by trading without any risk. Therefore, we define an arbitrage as any portfolio  $\theta$  that has a negative market value  $S_{\theta} = \mathbf{S}\theta < 0$  and a nonnegative payoff  $D_{\theta} = D^{\prime}\theta \geq 0$  or, alternatively, a nonpositive market value  $S_{\theta} = \mathbf{S}\theta \leq 0$  and a positive payoff  $D_{\theta} = D^{\prime}\theta >0$

# State Prices

Next we define state prices. A state-price vector is a strictly positive  $M$ -vector  $\psi$  such that security prices can be written as  $\mathbf{S} = \mathbf{D}\psi$ . In other words, given a state-price vector, if it exists, security prices can be recovered as a weighted average of the securities' payoffs, where the state-price vector gives the weights. In the previous two-state, three-security example we can write:


$$
\boldsymbol {\psi} = \left[ \begin{array}{l} \psi_{1} \\ \psi_{2} \end{array} \right]
$$

$$
\mathbf {S} = \mathbf {D} \boldsymbol {\psi}
$$

$$
\left[ \begin{array}{l} S_{1} \\ S_{2} \\ S_{3} \end{array} \right] = \left[ \begin{array}{l l} d_{1 1} & d_{1 2} \\ d_{2 1} & d_{2 2} \\ d_{3 1} & d_{3 2} \end{array} \right] \left[ \begin{array}{l} \psi_{1} \\ \psi_{2} \end{array} \right] = \left[ \begin{array}{l} d_{1 1} \psi_{1} + d_{1 2} \psi_{2} \\ d_{2 1} \psi_{1} + d_{2 2} \psi_{2} \\ d_{3 1} \psi_{1} + d_{3 2} \psi_{2} \end{array} \right]
$$

Given security prices and payoffs, state prices can be determined solving the system:

$$ d_{1 1} \psi_{1} + d_{1 2} \psi_{2} = S_{1}
$$

$$ d_{2 1} \psi_{1} + d_{2 2} \psi_{2} = S_{2}
$$

$$ d_{3 1} \psi_{1} + d_{3 2} \psi_{2} = S_{3}
$$

This system admits solutions if and only if there are two linearly independent equations and the third equation is a linear combination of the other two. Note that this condition is necessary but not sufficient to ensure that there are state prices as state prices must be strictly positive numbers.

A portfolio  $\theta$  is characterized by payoffs  $\mathbf{d}_{\theta} = \mathbf{D}'\theta$ . Its price is given, in terms of state prices, by:  $S_{\theta} = S\theta = D\psi \theta = \mathbf{d}_{\theta}\psi$ .

It can be demonstrated that there is no arbitrage if and only if there is a state-price vector. The formal demonstration is quite complicated given the inequalities that define an arbitrage portfolio. It hinges on the separating hyperplane theorem, which says that, given any two convex disjoint sets in  $R^M$ , it is possible to find a hyperplane separating them. A hyperplane is the locus of points  $x_i$  that satisfy a linear equation of the type:

$$ a_{0} + \sum_{i = 1}^{M} a_{i^{x_{i}}} = 0
$$

Intuitively, however, it is clear that the existence of state prices ensures that the law of one price introduced in the previous section is automatically satisfied. In fact, if there are state prices, two identical payoffs have the same price, regardless of how they are constructed. This is because the price of a security or of any portfolio is univocally determined as a weighted average of the payoffs, with the state prices as weights.


# Risk-Neutral Probabilities

Let's now introduce the concept of risk-neutral probabilities. Given a state-price vector, consider the sum of its components  $\psi_0 = \psi_1 + \psi_2 + \dots +\psi_M$ . Normalize the state-price vector by dividing each component by the sum  $\psi_0$ . The normalized state-price vector

$$
\boldsymbol {\psi} = \{\psi_{j} \} = \left\{\frac{\psi_{j}}{\psi_{0}} \right\}
$$ is a set of positive numbers whose sum is one. These numbers can be interpreted as probabilities. They are not, in general, the real probabilities associated with states. They are called risk-neutral probabilities. We can then write


$$
\mathbf {S} \frac{1}{\psi_{0}} = \mathbf {D} \boldsymbol {\psi}
$$

We can interpret the above relationship as follows: The normalized security prices are their expected payoffs under these special probabilities. In fact, we can rewrite the above equation as

$$
\bar {S}_{i} = \frac{S_{i}}{\psi_{0}} = E [ d_{i} ]
$$ where expectation is taken with respect to risk-neutral probabilities. In this case, security prices are the discounted expected payoffs under these special risk-neutral probabilities.


Suppose that there is a portfolio  $\bar{\theta}$  such that  $\mathbf{d}_{\bar{\theta}} = \mathbf{D}'\bar{\theta} = \{1,1,\dots ,1\}$ . This portfolio can be one individual risk-free security. As we have seen above,  $\mathbf{S}\theta = \mathbf{d}_{\theta}\psi$ , which implies that  $\psi_0 = \bar{\theta}\mathbf{S}$  is the discount on riskless borrowing.

# Complete Markets

Let's now define the concept of complete markets, a concept that plays a fundamental role in finance theory. In the simple setting of the one-period finite-state market, a complete market is one in which the set of possible portfolios is able to replicate an arbitrary payoff. Call span  $(D)$  the set of possible portfolio payoffs, which is given by the following expression:

$$
\operatorname{sp an} (D) \equiv \left\{\mathbf {D}^{\prime} \theta : \theta \in R^{M} \right\}
$$

A market is complete if  $\operatorname{span}(D) = R^M$ .

A one-period finite-state complete market is one where the equation

$$
\mathbf {D}^{\prime} \boldsymbol {\theta} = \xi : \xi \in R^{M}
$$ always admits a solution. Recall from matrix algebra that this is the case if and only if the rank of  $\mathbf{D}$  is  $M$ . This means that there are at least  $M$  linearly independent payoffs—that is, there are as many linearly independent payoffs as there are states. Let's write down explicitly the system in the two-state, three-security market.


$$
\mathbf {D}^{\prime} \boldsymbol {\theta} = \boldsymbol {\xi}
$$

$$
\left[ \begin{array}{c c c} d_{1 1} & d_{2 1} & d_{3 1} \\ d_{1 2} & d_{2 2} & d_{3 2} \end{array} \right] \left[ \begin{array}{c} \theta_{1} \\ \theta_{2} \\ \theta_{3} \end{array} \right] = \left[ \begin{array}{c} \xi_{1} \\ \xi_{2} \end{array} \right]
$$

$$ d_{1 1} \theta_{1} + d_{2 1} \theta_{2} + d_{3 1} \theta_{3} = \xi_{1}
$$

$$ d_{1 2} \theta_{1} + d_{2 2} \theta_{2} + d_{3 2} \theta_{3} = \xi_{2}
$$

This system of linear equations admits solutions if and only if the rank of the coefficient matrix is 2. This condition is not verified, for example, if the securities have the same payoff in each state. In this case, the relationship  $\xi_{1} = \xi_{2}$  must always be verified. In other words, the three securities can only replicate portfolios that have the same payoff in each state.

In this simple setting it is easy to associate risk-neutral probabilities with real probabilities. In fact, suppose that the vector of real probabilities  $\mathbf{p}$  is associated to states so that  $p_i$  is the probability of the  $i$ -th state. For any given

$M$ -dimensional vector  $\mathbf{x}$ , we write its expected value under the real probabilities as

$$
E [ \mathbf {x} ] = \mathbf {p x} = \sum_{i = 1}^{M} p_{i}^{x_{i}}
$$

It can be demonstrated that there is no arbitrage if and only if there is a strictly positive  $M$ -vector  $\pi$  such that:  $\mathbf{S} = E[\mathbf{D}\pi]$ . Any such vector  $\pi$  is called a state-price deflator. To see this point, define

$$
\pi_{i} = \frac{\psi_{i}}{p_{i}}
$$

Prices can then be expressed as

$$
S_{i} = \sum_{j = 1}^{M} d_{i j} \psi_{j} = \sum_{j = 1}^{M} p_{j} d_{i j} \frac{\psi_{j}}{p_{i}} = \sum_{j = 1}^{M} p_{j} d_{i j} \pi_{j}
$$ which demonstrates that  $\mathbf{S} = E[\mathbf{D}\pi ]$


We can now specialize the above calculations in the numerical case of the previous section. Recall that in the previous section we gave the example of three securities with the following prices and payoffs expressed in dollars:

$$
\mathbf {S} = \left[ \begin{array}{c} 70 \\ 60 \\ 80 \end{array} \right]
$$

$$
\mathbf {D} = \left[ \begin{array}{c c} 50 & 100 \\ 30 & 120 \\ 38 & 112 \end{array} \right]
$$

We first compute the relative state prices:

$$
50 \psi_{1} + 100 \psi_{2} = 70
$$

$$
30 \psi_{1} + 120 \psi_{2} = 60
$$

$$
38 \psi_{1} + 112 \psi_{2} = 80
$$

Solving the first two equations, we obtain

$$
\left[ \begin{array}{c} \psi_{1} \\ \psi_{2} \end{array} \right] = \left[ \begin{array}{c} 4/5 \\ 3/10 \end{array} \right]
$$

However, the third equation is not satisfied by these values for the state prices. As a consequence, there does not exist a state-price vector, which confirms that there are arbitrage opportunities as observed in the first section.

Now suppose that the price of security C is  \$64 and not\$ 80. In this case, the third equation is satisfied and the state-price vector is the one shown above. Risk-neutral probabilities can now be easily computed. Here is how. First sum the two state prices:  $\frac{4}{5} + \frac{3}{10} = \frac{11}{10}$  to obtain

$$
\psi_{0} = \psi_{1} + \psi_{2} = 11/10
$$ and consequently the risk-neutral probabilities:


$$
\boldsymbol {\psi} = \left[ \begin{array}{l} \psi_{1} \\ \psi_{2} \end{array} \right] = \left[ \begin{array}{l} \psi_{1} / \psi_{0} \\ \psi_{2} / \psi_{0} \end{array} \right] = \left[ \begin{array}{l} 8/11 \\ 3/11 \end{array} \right]
$$

Risk-neutral probabilities sum to one while state prices do not. We can now check if our market is complete. Write the following equations:

$$
\begin{array}{l} 50 \theta_{1} + 30 \theta_{2} + 38 \theta_{3} = \xi_{1} \\ 100 \theta_{1} + 120 \theta_{2} + 112 \theta_{3} = \xi_{2} \\ \end{array}
$$

The rank of the coefficient matrix is clearly 2 as the determinant of the first minor is different from zero:

$$
\left[ \begin{array}{c c} 50 & 30 \\ 100 & 120 \end{array} \right] = 50 \times 120 - 100 \times 30 = 3000 \neq 0
$$

Our sample market is therefore complete and arbitrage-free. A portfolio composed of the first two securities can replicate any payoff and the third security can be replicated as a portfolio of the first two.

# ARBITRAGE PRICING IN A MULTIPERIOD FINITE-STATE SETTING

The above basic results can be extended to a multiperiod finite-state setting using probabilistic concepts. The economy is represented by a probability space  $(\Omega, \Im, P)$  where  $\Omega$  is the set of possible states,  $\Im$  is the algebra of events (recall that we are in a finite-state setting and therefore there are only a finite number of events), and  $P$  is a probability function. As the number of states is finite, finite probabilities  $P(\{\omega\}) \equiv$

$P(\omega)\equiv p_{\omega}$  are defined for each state. There is only a finite number of dates from 0 to  $T$

# Propagation of Information

The propagation of information is represented by a filtration  $\mathfrak{S}_t$  that, in the finite case, is equivalent to an information structure  $I_{t}$ . The latter is a discrete, hierarchical organization of partitions  $I_{t}$  with the following properties:

$$
\begin{array}{l} I_{k} \equiv (\{A_{i k} \}); \quad k = 0, \dots , T; \quad i = 1, \dots , M_{k}; \\ 1 = M_{1} \leq \cdot \leq M_{k} \leq \cdot \leq M_{T} = M \\ A_{i k} \cap A_{j k} = \varnothing \text{if } i \neq j \text{an d} \bigcup_{i = 1}^{M_{k}} A_{i k} = \Omega \\ \end{array}
$$ and, in addition, given any two sets  $A_{ik}$ ,  $A_{jh}$  with  $h > k$ , either their intersection is empty  $A_{ik} \cap A_{jh} = \emptyset$  or  $A_{ik} \supseteq A_{jh}$ . In other words, the partitions become more refined with time.


Each security  $i$  is characterized by a payoff process  $d_t^i$  and by a price process  $S_{t}^{i}$ . In this finite-state setting,  $d_{t}^{i}$  and  $S_{t}^{i}$  are discrete variables that, given that there are  $M$  states, can be represented by  $M$ -vectors  $\mathbf{d}_t^i = [d_t^i (\omega)]$  and  $\mathbf{S}_t^i = [S_t^i (\omega)]$  where  $d_{t}^{i}(\omega)$  and  $S_{t}^{i}(\omega)$  are, respectively, the payoff and the price of the  $i$ -th asset at time  $t$ ,  $0\leq t\leq T$  and in state  $\omega \in \Omega$ . All payoffs and prices are stochastic processes adapted to the filtration  $\Im_t$ . Given that  $d_{t}^{i}$  and  $S_{t}^{i}$  are adapted processes in a finite probability space, they have to assume a constant value on each partition of the information structure  $I_{t}$ . It is convenient to introduce the following notation:

$$
\begin{array}{l} d_{A_{j t}}^{i} = d_{t}^{i} (\omega), \omega \in A_{j t} \\ S_{A_{j t}}^{i} = S_{t}^{i} (\omega), \omega \in A_{j t} \\ \end{array}
$$ where  $d_{A_{jt}}^i$  and  $S_{A_{jt}}^i$  represent the constant values that the processes  $d_t^i$  and  $S_{t}^{i}$  assume on the states that belong to the sets  $A_{jt}$  of each partition  $I_{t}$ . There is  $M_0 = 1$  value for  $d_{A_{j0}}^i$  and  $S_{A_{j0}}^i$ ,  $M_{t}$  values for  $d_{A_{jt}}^i$  and  $S_{A_{jt}}^i$  and  $M_T = M$  values for  $d_{A_{jT}}^i$  and  $S_{A_{jT}}^i$ . The same notation and the same consideration can be applied to any process adapted to the filtration  $\mathfrak{S}_t$ .


# Trading Strategies

We have to define the meaning of trading strategies in this multiperiod setting. A trading strategy is a sequence of portfolios  $\theta$  such that  $\theta_{t}$  is the portfolio held at time  $t$  after trading. To ensure that there is no anticipation of information, each trading strategy  $\theta$  must be an adapted process. The payoff  $d^{\theta}$  generated by a trading strategy is an adapted process  $d_t^\theta$  with the following time dynamics:

$$ d_{t}^{\theta} = \theta_{t - 1} (S_{t} + d_{t}) - \theta_{t} S_{t}
$$

An arbitrage is a trading strategy whose payoff process is nonnegative and not always zero. In other words, an arbitrage is a trading strategy that is never negative and which is strictly positive for some instants and some states. Note that imposing the condition that payoffs are always nonnegative forbids any initial positive investment that is a negative payoff.

A consumption process is any nonnegative adapted process. Markets are said to be complete if any consumption process can be obtained as the payoff process of a trading strategy with some initial investment. Market completeness means that any nonnegative payoff process can be replicated with a trading strategy.

# State-Price Deflator

We will now extend the concept of state-price deflator to a multiperiod setting. A state-price deflator is a strictly positive adapted process  $\pi_t$  such that the following set of  $M$  equations hold:

$$
S_{t}^{i} = \frac{1}{\pi_{t}} E_{t} \left[ \sum_{j = t + 1}^{T} \pi_{j} d_{j}^{i} \right]
$$

In other words, a state-price deflator is a strictly positive process such that prices  $S_{t}^{i}$  are random variables equal to the conditional expectation of discounted payoffs with respect to the filtration  $\Im$ . As noted above, in this finite-state setting a filtration is equivalent to an information structure  $I_{t}$ . Note that in the above stochastic equation—which is a set of  $M$  equations, one for each state, the term on the left, the prices  $S_{t}^{i}$ , is an adapted process that, as mentioned, assumes constant values on each set of the partition  $I_{t}$ . The term on the right is a conditional expectation multiplied by a factor  $1 / \pi_t$ . The process  $\pi_t$  is adapted by definition and, therefore, assumes constant values  $\pi_{A_{it}}$  on each set of the partition  $I_{t}$ .


In this finite setting, conditional expectations are expectations computed with conditional probabilities. Conditional expectations are adapted processes. Therefore they assume one value at  $t = 0$ ,  $M_{j}$  values for  $t = j$ , and  $M$  values at the last date.

To illustrate the above, let's write down explicitly the above equation in terms of the notation  $d_{A_{jt}}^{i}$  and  $S_{A_{jt}}^{i}$ . Note first that

$$
\begin{array}{l} P (\{\omega \} | A_{k t}) = \frac{P (\{\omega \} \cap A_{k t})}{P (A_{k t})} = \frac{P (\{\omega \})}{P (A_{k t})}, \\ i f \omega \in A_{k t}, 0 i f \omega \notin A_{k t} \\ \end{array}
$$

Given that the probability space is finite,

$$
P (A_{j t}) = \sum_{\omega \in A_{j t}} p_{\omega}
$$

As we defined  $P(\{\omega\}) \equiv p_{\omega}$ , the previous equation becomes

$$
\begin{array}{l} P (\{\omega \} | A_{k t}) = \frac{P (\{\omega \} \cap A_{k t})}{P (A_{k t})} = \frac{P (\{\omega \})}{P (A_{k t})} \\ = \frac{p_{\omega}}{\left(\sum_{\omega \in A_{k t}} p_{\omega}\right)} \\ \end{array}
$$ if  $\omega \in A_{kt}$  , 0 if  $\omega \notin A_{kt}$


# Pricing Relationships

We can now write the pricing relationship as follows:

$$
\begin{array}{l} S_{A_{k t}}^{i} = \frac{1}{\pi A_{k t}} \left[ \sum_{\omega \in A_{k t}} \left(P (\{\omega \} | A_{k t}) \left(\sum_{j = t + 1}^{T} \pi_{j} (\omega) d_{j}^{i} (\omega)\right)\right) \right] \\ = \frac{1}{\pi_{A_{k t}}} \left[ \sum_{\omega \in A_{k t}} \left(\frac{p_{\omega}}{\left(\sum_{\omega \in A_{k t}} p_{\omega}\right)} \left(\sum_{j = t + 1}^{T} \pi_{j} (\omega) d_{j}^{i} (\omega)\right)\right) \right] \\ \end{array}
$$

$$
A_{k t} \in I_{t}, 1 \leq k \leq M_{t}
$$

The above formulas generalize to any trading strategy. In particular, if there is a state-price deflator, the market value of any trading strategy is given by

$$
\boldsymbol {\theta}_{t} \times \mathbf {S}_{t} = \frac{1}{\pi_{t}} E \left[ \sum_{j = t + 1}^{T} \pi_{j} d_{j}^{\theta} \right]
$$

$$
\begin{array}{l} \left. \left(\theta_{t} \mathbf {S}_{t}\right)_{A_{k t}} = \frac{1}{\pi_{A_{k t}}} \left[ \sum_{\omega \in A_{k t}} \left(P (\{\omega \} | A_{k t}) \left(\sum_{j = t + 1}^{T} \pi_{j} (\omega) d_{j}^{\theta} (\omega)\right)\right) \right] \right] \\ = \frac{1}{\pi_{A_{k t}}} \left[ \sum_{\omega \in A_{k t}} \left(\frac{p_{\omega}}{\left(\sum_{\omega \in A_{k t}} p_{\omega}\right)} \left(\sum_{j = t + 1}^{T} \pi_{j} (\omega) d_{j}^{\theta} (\omega)\right)\right) \right] \\ \end{array}
$$

It is possible to demonstrate that the payoff-price pair  $(d_t^i, S_t^i)$  admits no arbitrage if and only if there is a state-price deflator. These concepts and formulas generalize those of a one-period setting to a multiperiod setting.

Given a payoff-price pair  $(d_t^i, S_t^i)$  it is possible to compute the stateprice deflator, if it exists, from the previous equations. In fact, it is possible to write a set of linear equations in the  $\pi_{t}$ ,  $\pi_{t-1}$  for each period. One can proceed backward from the period  $T$  to period 1 writing a homogeneous system of linear equations. As the system is homogeneous, one of the variables can be arbitrarily fixed; for example, the initial value  $\pi_0$  can be assumed equal to 1. If the system admits nontrivial solutions and if all solutions are strictly positive, then there are state-price deflators.

To illustrate the above, let's write down explicitly the previous formulas for prices, extending the example of the previous section to a two-period setting. We assume there are three securities and two periods, that is, three dates (0,1,2) and four states, indicated with the integers 1,2,3,4, so that  $\Omega = \{1,2,3,4\}$ . Assume that the information structure is given by the following partitions of events:

$$
\begin{array}{l} I_{i} \equiv (I_{0} \equiv \{A_{1, 0} \}, I_{1} \equiv \{A_{1, 1}, A_{2, 1} \}, \\ I_{2} \equiv \left\{A_{1, 2}, A_{2, 2}, A_{3, 2}, A_{4, 2} \right\}) \\ \end{array}
$$

$$
A_{1, 0} = \{1 + 2 + 3 + 4 \}, A_{1, 1} = \{1 + 2 \},
$$

$$
A_{2, 1} = \{3 + 4 \}
$$

$$
A_{1, 2} = \{1 \}, A_{2, 2} = \{2 \}, A_{3, 2} = \{3 \}, A_{4, 2} = \{4 \}
$$ where we use  $+$  to indicate logical union, so that, for example,  $\{1 + 2\}$  is the event formed by states 1 and 2. The interpretation of the above notation is the following. At time zero the world can be in any possible state, that is, the securities can take any possible path. Therefore the partition at time zero is formed by the event  $\{1 + 2 + 3 + 4\}$ . At time 1, the set of states is partitioned into two mutually exclusive events,  $\{1 + 2\}$  or  $\{3 + 4\}$ . At time 2 the partition is formed by all individual states. Note that this is a particular example; different partitions would be logically admissible.


Figure 1 represents the above structure. Each security is characterized by a price process and a payoff process adapted to the information structure. Each process is a collection of three discrete random variables indexed with the time indexes  $0,1,2$ . Each discrete random variable is a 4-vector as it assumes as many values as states. However, as processes are adapted, they must assume the same value on each partition of the information structure. Note also that payoffs are zero at date zero and prices are zero at date 2. Therefore, in this example, we can put together these vectors in two  $3 \times 4$  matrices for each security as follows

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/d2b3e2da4e624021ae9b576e2f83e4452499f0be1ba869590146a65619452b40.jpg)
Figure 1 An Information Structure with Four States and Three Dates


$$
\left\{S_{t}^{i} (\omega) \right\} \equiv \left[ \begin{array}{c c c} S_{0}^{i} (1) & S_{1}^{i} (1) & 0 \\ S_{0}^{i} (2) & S_{1}^{i} (2) & 0 \\ S_{0}^{i} (3) & S_{1}^{i} (3) & 0 \\ S_{0}^{i} (4) & S_{1}^{i} (4) & 0 \end{array} \right];
$$

$$
\left\{d_{t}^{i} (\omega) \right\} \equiv \left[ \begin{array}{l l l} 0 & d_{1}^{i} (1) & d_{2}^{i} (1) \\ 0 & d_{1}^{i} (2) & d_{2}^{i} (2) \\ 0 & d_{1}^{i} (3) & d_{2}^{i} (3) \\ 0 & d_{1}^{i} (4) & d_{2}^{i} (4) \end{array} \right]
$$

The following relationships hold:

$$
S_{0}^{i} (1) = S_{0}^{i} (2) = S_{0}^{i} (3) = S_{0}^{i} (4) = S_{A_{1, 0}}^{i};
$$

$$
S_{1}^{i} (1) = S_{1}^{i} (2) = S_{A_{1, 1}}^{i};
$$

$$
S_{1}^{i} (3) = S_{1}^{i} (4) = S_{A_{2, 1}}^{i}
$$

$$ d_{1}^{i} (1) = d_{1}^{i} (2) = d_{A_{1, 1}}^{i}; \quad d_{1}^{i} (3) = d_{1}^{i} (4) = d_{A_{2, 1}}^{i}
$$ where, as above,  $S_{t}^{i}(\omega)$  is the price of security  $i$  in state  $\omega$  at moment  $t$  and  $d_{t}^{i}(\omega)$  is the payoff of security  $i$  in state  $\omega$  at time  $t$  with the restriction that processes must assume the same value on partitions. This is because processes are adapted to the information structure so that there is no anticipation of information. One must not be able to discriminate at time 0 events that will be revealed at time 1 and so on.


Observe that there is no payoff at time 0 and no price at time 2 and that the payoffs at time 2 have to be intended as the final liquidation of the security as in the one-period case. Payoffs at time 1, on the other hand, are intermediate payments. Note that the number of states is chosen arbitrarily for illustration purposes. Each state of the world represents a path of prices and payoffs for the set of three securities. To keep the example simple, we assume that of all the possible paths of prices and payoffs only four are possible.

The state-price deflator can be represented as follows:

$$
\{\pi_{t} (\omega) \} \equiv \left[ \begin{array}{c c c} \pi_{0} (1) & \pi_{1} (1) & \pi_{2} (1) \\ \pi_{0} (2) & \pi_{1} (2) & \pi_{2} (2) \\ \pi_{0} (3) & \pi_{1} (3) & \pi_{2} (3) \\ \pi_{0} (4) & \pi_{1} (4) & \pi_{2} (4) \end{array} \right]
$$

$$
\pi_{0} (1) = \pi_{0} (2) = \pi_{0} (3) = \pi_{0} (4)
$$

$$
\pi_{1} (1) = \pi_{1} (2) = \pi_{1} (3) = \pi_{1} (4)
$$

A probability  $p_{\omega}$  is assigned to each of the four states of the world. The probability of each event is simply the sum of the probabilities of its states. We can write down the formula for security prices in this way:

$$
\begin{array}{l} S_{A_{1, 2}}^{i} = S_{2}^{i} (1) = S_{A_{2, 2}}^{i} = S_{2}^{i} (2) = S_{A_{3, 2}}^{i} = S_{2}^{i} (3) \\ = S_{A_{4, 2}}^{i} = S_{2}^{i} (4) = 0 \\ \end{array}
$$

$$
\begin{array}{l} S_{A_{1, 1}}^{i} = S_{1}^{i} (1) = S_{1}^{i} (2) \\ = \frac{1}{\pi_{A_{1 , 1}}} [ P (A_{1, 2} | A_{1, 1}) \pi_{2} (1) d_{2}^{i} (1) \\ + P \left(A_{2, 2} \mid A_{1, 1}\right) \pi_{2} (2) d_{2}^{i} (2) ] \\ = \frac{1}{\pi_{A_{1 , 1}}} \left[ \frac{p_{1}}{p_{1} + p_{2}} \pi_{2} (1) d_{2}^{i} (1) \right. \\ \left. + \frac{p_{2}}{p_{1} + p_{2}} \pi_{2} (2) d_{2}^{i} (2) \right] \\ \end{array}
$$

$$
\begin{array}{l} S_{A_{2, 1}}^{i} = S_{1}^{i} (3) = S_{1}^{i} (4) \\ = \frac{1}{\pi_{A_{2 , 1}}} [ P (A_{3, 2} | A_{2, 1}) \pi_{2} (3) d_{2}^{i} (3) \\ + P \left(A_{4, 2} \mid A_{2, 1}\right) \pi_{2} (4) d_{2}^{i} (4) ] \\ = \frac{1}{\pi_{A_{2 , 1}}} \left[ \frac{p_{3}}{p_{3} + p_{4}} \pi_{2} (3) d_{2}^{i} (3) \right. \\ \left. + \frac{p_{4}}{p_{3} + p_{4}} \pi_{2} (4) d_{2}^{i} (4) \right] \\ \end{array}
$$

$$
\begin{array}{l} S_{A_{1, 0}}^{i} = \left\{p_{1} \left[ \pi_{A_{1, 1}} d_{A_{1, 1}}^{i} + \pi_{2} (1) d_{2}^{i} (1) \right] + p_{2} \left[ \pi_{A_{1, 1}} d_{A_{1, 1}}^{i} \right. \right. \\ + \pi_{2} (2) d_{2}^{i} (2) ] + p_{3} \left[ \pi_{A_{1, 2}} d_{A_{1, 2}}^{i} + \pi_{2} (3) d_{2}^{i} (3) \right] \\ + p_{4} \left[ \pi_{A_{1, 2}} d_{A_{1, 2}}^{i} + \pi_{2} (4) d_{2}^{i} (4) \right] \} \\ \end{array}
$$

These equations illustrate how to compute the state-price deflator knowing prices, payoffs, and probabilities. They form a homogeneous system of linear equations in  $\pi_2(1),\pi_2(2),\pi_2(3),\pi_2(4),\pi_{A_{1,1}},\pi_{A_{2,1}},\pi_{A_{1,0}}$


$$
\begin{array}{l} p_{1} d_{2}^{i} (1) \pi_{2} (1) + p_{2} d_{2}^{i} (2) \pi_{2} (2) - S_{A_{1, 1}}^{i} \left(p_{1} + p_{2}\right) \\ \pi_{A_{1, 1}} = 0 \\ p_{3} d_{2}^{i} (3) \pi_{2} (3) + p_{4} d_{4}^{i} (4) \pi_{2} (4) - S_{A_{2, 1}}^{i} \left(p_{3} + p_{4}\right) \\ \pi_{A_{2, 1}} = 0 \\ p_{1} d_{2}^{i} (1) \pi_{2} (1) + p_{2} d_{2}^{i} (2) \pi_{2} (2) + p_{3} d_{2}^{i} (3) \pi_{2} (3) \\ + p_{4} d_{4}^{i} (4) \pi_{2} (4) + \left(p_{1} + p_{2}\right) d_{A_{1, 1}}^{i} \pi_{A_{1, 1}} \\ + \left(p_{3} + p_{4}\right) d_{A_{2, 3}}^{i} \pi_{A_{2, 3}} - S_{A_{1, 0}}^{i} \pi_{A_{1, 0}} = 0 \\ \end{array}
$$

Substituting, we obtain

$$
\begin{array}{l} p_{1} d_{2}^{i} (1) \pi_{2} (1) + p_{2} d_{2}^{i} (2) \pi_{2} (2) - S_{A_{1, 1}}^{i} \left(p_{1} + p_{2}\right) \\ \pi_{A_{1, 1}} = 0 \\ \end{array}
$$

$$
\begin{array}{l} p_{3} d_{2}^{i} (3) \pi_{2} (3) + p_{4} d_{4}^{i} (4) \pi_{2} (4) - S_{A_{2, 1}}^{i} \left(p_{3} + p_{4}\right) \\ \pi_{A_{2, 1}} = 0 \\ \end{array}
$$

$$
\begin{array}{l} [ (p_{1} + p_{2}) S_{A_{1, 1}}^{i} + (p_{1} + p_{2}) d_{A_{1, 1}}^{i} ] \pi_{A_{1, 1}} \\ + \left[ \left(p_{3} + p_{4}\right) S_{A_{2, 1}}^{i} + \left(p_{3} + p_{4}\right) d_{A_{2, 1}}^{i} \right] \pi_{A_{2, 1}} \\ - S_{A_{1, 0}}^{i} \pi_{A_{1, 0}} = 0 \\ \end{array}
$$

This homogeneous system must admit a strictly positive solution to yield a state-price deflator. There are seven unknowns. However, as the system is homogeneous, if nontrivial so lutions exist, one of the unknowns can be arbitrarily fixed, for example  $\pi_{A_{1,0}}$ . Therefore, six independent equations are needed. Each asset provides two conditions, so a minimum of three assets are needed.


To illustrate the point, we assume that all states (which are also events in this discrete example) have the same probability 0.25. Thus the events of the information structure have the following probabilities: the single event at time zero has probability 1, the two events at time 1 have probability 0.5, and the four events at time 2 coincide with individual states and have probability 0.25. Conditional probabilities are shown in Table 1.

For illustration purposes, let's write the following matrices for payoffs for each security at each date in each state:

$$
\begin{array}{l} \{d_{1}^{i} (\omega) \} \equiv \left[ \begin{array}{c c c} 0 & 1 5 & 5 0 \\ 0 & 1 5 & 1 0 0 \\ 0 & 2 0 & 7 0 \\ 0 & 2 0 & 1 1 0 \end{array} \right]; \{d_{2}^{i} (\omega) \} \equiv \left[ \begin{array}{c c c} 0 & 8 & 3 0 \\ 0 & 8 & 1 2 0 \\ 0 & 1 5 & 4 0 \\ 0 & 1 5 & 1 4 0 \end{array} \right]; \\ \{d_{3}^{i} (\omega) \} \equiv \left[ \begin{array}{l l l} 0 & 5 & 3 8 \\ 0 & 5 & 1 1 2 \\ 0 & 8 & 4 2 \\ 0 & 8 & 1 3 0 \end{array} \right] \\ \end{array}
$$

Table 1 Conditional Probabilities

<table><tr><td>P(A1,1|A1,0) = P(A1,1∩A1,0)/P(A1,0) = P{1+2}/P{1+2+3+4} = 0.5</td><td>P(A2,1|A1,0) = P(A2,1∩A1,0)/P(A1,0) = P{1+2+3+4} = 0.5</td><td>P(A2,1|A1,0) = P(A2,1∩A1,0)/P(A1,0) = P{3+4}/P{1+2+3+4} = 0.5</td></tr><tr><td>P(A1,2|A1,0) = P(A1,2∩A1,0)/P(A1,0) = P{1+2+3+4} = 0.25</td><td>P(A2,2|A1,0) = P(A2,2∩A1,0)/P(A1,0) = P{2+3+4} = 0.25</td><td>P(A2,2|A1,0) = P(A2,2∩A1,0)/P(A1,0) = P{2+3+4} = 0.25</td></tr><tr><td>P(A3,2|A1,0) = P(A3,2∩A1,0)/P(A1,0) = P{3+4} = 0.25</td><td>P(A4,2|A1,0) = P(A4,2∩A1,0)/P(A1,0) = P{4+3+4} = 0.25</td><td>P(A4,2∩A1,0)/P(A1,0) = P{4+3+4} = 0.25</td></tr><tr><td>P(A1,2|A1,1) = P(A1,2∩A1,1)/P(A1,1) = P{1+2} = 0.25</td><td>P(A1,2|A1,1) = P(A1,2∩A1,1)/P(A2,1) = P{1+2} = 0.5</td><td>P(A1,2∩A1,1)/P(A2,1) = P{1+2} = 0</td></tr><tr><td>P(A2,2|A1,1) = P(A2,2∩A1,1)/P(A1,1) = P{2+3} = 0.25</td><td>P(A2,2|A2,1) = P(A2,2∩A2,1)/P(A2,1) = P{2+3} = 0.5</td><td>P(A2,2∩A2,1)/P(A2,1) = P{2+3} = 0</td></tr><tr><td>P(A3,2|A1,1) = P(A3,2∩A1,1)/P(A1,1) = P{∅} = 0</td><td>P(A3,2|A2,1) = P(A3,2∩A2,1)/P(A2,1) = P{3+4} = 0.5</td><td>P(A3,2∩A2,1)/P(A2,1) = P{3+4} = 0.5</td></tr><tr><td>P(A4,2|A1,1) = P(A4,2∩A1,1)/P(A1,1) = P{∅} = 0</td><td>P(A4,2|A2,1) = P(A4,2∩A2,1)/P(A2,1) = P{4+3} = 0.5</td><td>P(A4,2∩A2,1)/P(A2,1) = P{4+3} = 0.5</td></tr></table>

We will assume that the state-price deflator is the following given process:

$$
\{\pi_{t}(\omega)\} \equiv \left[ \begin{array}{c c c} 1 & 0.8 & 0.7 \\ 1 & 0.8 & 0.75 \\ 1 & 0.9 & 0.75 \\ 1 & 0.9 & 0.8 \end{array} \right]
$$

Each price is computed according to the previous equations. For example, calculations related to asset 1 are as follows:

$$
S_{2}^{1} (1) = S_{2}^{1} (2) = S_{2}^{1} (3) = S_{2}^{1} (4) = 0
$$

$$
\begin{array}{l} S_{A_{1,1}}^{1} = \frac{1}{0.8} (0.5 \times 0.7 \times 50 + 0.5 \times 0.75 \times 100) \\ = 68.75 \\ \end{array}
$$

$$
\begin{array}{l} S_{A_{2,1}}^{1} = \frac{1}{0.9} (0.5 \times 0.75 \times 70 + 0.5 \times 0.8 \times 110) \\ = 78.05 \\ \end{array}
$$

$$
\begin{array}{l} S_{A_{1,0}}^{1} = \frac{1}{1} [ 0.25 (0.8 \times 15 + 0.7 \times 50) \\ + 0.25 (0.8 \times 15 + 0.75 \times 100) \\ + 0.25 (0.9 \times 20 + 0.75 \times 70) \\ \left. + 0.25 (0.9 \times 20 + 0.8 \times 110) \right] \\ = 68.75 \\ \end{array}
$$

$$
S_{2}^{2} (1) = S_{2}^{2} (2) = S_{2}^{2} (3) = S_{2}^{2} (4) = 0
$$

$$
\begin{array}{l} S_{A_{1,1}}^{2} = \frac{1}{0.8} (0.5 \times 0.7 \times 30 + 0.5 \times 0.75 \times 120) \\ = 69.37 \\ \end{array}
$$

$$
\begin{array}{l} S_{A_{2,1}}^{2} = \frac{1}{0.9} (0.5 \times 0.75 \times 40 + 0.5 \times 0.8 \times 140) \\ = 78.88 \\ \end{array}
$$

$$
\begin{array}{l} S_{A_{1,0}}^{2} = \frac{1}{1} [ 0.25 (0.8 \times 8 + 0.7 \times 30) \\ + 0.25 (0.8 \times 8 + 0.75 \times 120) \\ + 0.25 (0.9 \times 15 + 0.75 \times 40) \\ \left. + 0.25 (0.9 \times 15 + 0.8 \times 140) \right] \\ = 73.2 \\ \end{array}
$$

$$
S_{2}^{3} (1) = S_{2}^{3} (2) = S_{2}^{3} (3) = S_{2}^{3} (4) = 0
$$

$$
\begin{array}{l} S_{A_{1,1}}^{3} = \frac{1}{0.8} (0.5 \times 0.7 \times 38 + 0.5 \times 0.75 \times 112) \\ = 69.12 \\ \end{array}
$$

$$
\begin{array}{l} S_{A_{2,1}}^{3} = \frac{1}{0.9} (0.5 \times 0.75 \times 42 + 0.5 \times 0.8 \times 130) \\ = 75.27 \\ \end{array}
$$

$$
\begin{array}{l} S_{A_{1,0}}^{3} = \frac{1}{1} [ 0.25 (0.8 \times 5 + 0.7 \times 38) \\ + 0.25 (0.8 \times 5 + 0.75 \times 112) \\ + 0.25 (0.9 \times 8 + 0.75 \times 42) \\ \left. + 0.25 (0.9 \times 8 + 0.8 \times 130) \right] \\ = 67.125 \\ \end{array}
$$

With the above equations we computed prices from payoffs and state-price deflators. If prices and payoffs were given, we could compute state-price deflators from the homogeneous system for state prices established above. Suppose that the following price processes were given:

$$
\{S_{t}^{1}(\omega)\} = \left[ \begin{array}{c c c} 68.75 & 68.75 & 0 \\ 68.75 & 68.75 & 0 \\ 68.75 & 78.05 & 0 \\ 68.75 & 78.05 & 0 \end{array} \right]
$$

$$
\{S_{t}^{2}(\omega)\} = \left[ \begin{array}{l l l} 73.2 & 69.37 & 0 \\ 73.2 & 69.37 & 0 \\ 73.2 & 78.88 & 0 \\ 73.2 & 78.88 & 0 \end{array} \right]
$$

$$
\{S_{t}^{3}(\omega)\} = \left[ \begin{array}{c c c} 67.125 & 69.12 & 0 \\ 67.125 & 69.12 & 0 \\ 67.125 & 75.27 & 0 \\ 67.125 & 75.27 & 0 \end{array} \right]
$$

We could then write the following system of equations to compute state-price deflators:

$$
\begin{array}{l} 0.25 \times 50 \times \pi_{2}(1) + 0.25 \times 100 \times \pi_{2}(2) \\ - 68.75 \times 0.5 \times \pi_{A_{1,1}} = 0 \\ \end{array}
$$

$$
\begin{array}{l} 0.25 \times 70 \times \pi_{2}(1) + 0.25 \times 110 \times \pi_{2}(2) \\ - 78.05 \times 0.5 \times \pi_{A_{1,1}} = 0 \\ \end{array}
$$

$$
\begin{array}{l} (55 \times 0.5 + 0.5 \times 15) \times \pi_{A_{1,1}} + (70.25 \times 0.5 \\ + 0.5 \times 20) \times \pi_{A_{2,1}} - 68.75 \times \pi_{A_{1,0}} = 0 \\ \end{array}
$$

$$
\begin{array}{l} 0.25 \times 30 \times \pi_{2}(1) + 0.25 \times 120 \times \pi_{2}(2) \\ - 69.37 \times 0.5 \times \pi_{A_{1,1}} = 0 \\ \end{array}
$$

$$
\begin{array}{l} 0.25 \times 50 \times \pi_{2}(1) + 0.25 \times 100 \times \pi_{2}(2) \\ - 68.75 \times 0.5 \times \pi_{A_{1,1}} = 0 \\ \end{array}
$$

$$
\begin{array}{l} (5 5. 5 \times 0. 5 + 0. 5 \times 8) \times \pi_{A_{1, 1}} + (7 1 \times 0. 5 \\ + 0. 5 \times 1 5) \times \pi_{A_{2, 1}} - 7 3. 2 \times \pi_{A_{1, 0}} = 0 \\ \end{array}
$$

$$
\begin{array}{l} 0.25 \times 30 \times \pi_{2}(1) + 0.25 \times 120 \times \pi_{2}(2) \\ - 69.37 \times 0.5 \times \pi_{A_{1,1}} = 0 \\ 0.25 \times 40 \times \pi_{2}(1) + 0.25 \times 140 \times \pi_{2}(2) \\ - 78.88 \times 0.5 \times \pi_{A_{1,1}} = 0 \\ (55 \times 0.5 + 0.5 \times 8) \times \pi_{A_{1,1}} + (71 \times 0.5 \\ + 0.5 \times 15) \times \pi_{A_{2,1}} - 73.2 \times \pi_{A_{1,0}} = 0 \\ \end{array}
$$

It can be verified that this system, obviously, is solvable and returns the same state-price deflators as in the previous example.

# Equivalent Martingale Measures

We now introduce the concept and properties of equivalent martingale measures. This concept has become fundamental for the technology of derivative pricing. The idea of equivalent martingale measures is the following. A martingale is a process  $X_{t}$  such that at any time  $t$  its conditional expectation at time  $s$ ,  $s > t$  coincides with its present value:  $X_{t} = E_{t}[X_{s}]$ . In discrete time, a martingale is a process such that its value at any time is equal to its conditional expectation one step ahead. In our case, this principle can be expressed in a different but equivalent way by stating that prices are the discounted expected values of future payoffs. The law of iterated expectation then implies that price plus payoff processes are martingales.

In fact, assume that we can write

$$
S_{t} = E_{t} \left[ \sum_{j = t + 1}^{T} d_{j} \right]
$$ then the following relationship holds:


$$
\begin{array}{l} S_{t} = E_{t} \left[ \sum_{j = t + 1}^{T} d_{j} \right] = E_{t} \left[ d_{t + 1} + E_{t + 1} \left[ \sum_{j = t + 1 + 1}^{T} d_{j} \right] \right] \\ = E_{t} \left[ d_{t + 1} + S_{t + 1} \right] \\ \end{array}
$$

Given a probability space, price processes are not, in general, martingales. However it can be demonstrated that, in the absence of arbitrage, there is an artificial probability measure in which all price processes, appropriately dis counted, become martingales. More precisely, we will see that in the absence of arbitrage there is an artificial probability measure  $Q$  in which the following discounted present value relationship holds:


$$
S_{t}^{i} = E_{t}^{Q} \left[ \sum_{j = t + 1}^{T} \frac{d_{j}^{i}}{R_{t , j}} \right]
$$

We can rewrite this equation explicitly as follows:

$$
\begin{array}{l} S_{t}^{i} = E_{t}^{Q} \left[ \sum_{j = t + 1}^{T} \frac{d_{j}^{i}}{R_{t , j}} \right] \\ = E_{t}^{Q} \left[ \frac{d_{t + 1}^{i}}{R_{t , t + 1}} + \frac{1}{R_{t , t + 1}} \sum_{j = t + 2}^{T} \frac{d_{j}^{i}}{R_{t + 1 , j}} \right] \\ = E_{t}^{Q} \left[ \frac{d_{t + 1}^{i}}{R_{t , t + 1}} + \frac{E_{t + 1}^{Q}}{R_{t , t + 1}} \left[ \sum_{j = t + 2}^{T} \frac{d_{j}^{i}}{R_{t , j}} \right] \right] \\ = E_{t}^{Q} \left[ \frac{d_{t + 1}^{i} + S_{t + 1}^{i}}{R_{t , t + 1}} \right] \\ \end{array}
$$ which shows that the discounted price plus payoff process is a martingale. The terms on the left are the price processes, the terms on the right are the conditional expectations under the probability measure  $Q$  of the payoffs discounted with the risk-free payoff.


The measure  $Q$  is a mathematical construct. The important point is that this new probability measure can be computed either from the real probabilities if the state-price deflators are known or directly from the price and payoff processes. This last observation illustrates that the concept of arbitrage depends only on the structure of the price and payoff processes and not on the actual probabilities. As we will see later in this entry, equivalent martingale measures greatly simplify the computation of the pricing of derivatives.

Let's assume that there is short-term risk-free borrowing in the sense that there is a trading strategy able to pay for any given interval  $(t,s)$  one sure dollar at time  $s$  given that

$(d_{t}d_{t + 1}\ldots d_{s - 1})^{-1}$  has been invested at time  $t$  Equivalently, we can define for any time interval  $(t,s)$  the payoff of a dollar invested risk-free at time  $t$  as  $R_{t,s} = (d_t d_{t + 1}\dots d_{s - 1})$

We now define the concept of equivalent probability measures. Given a probability measure  $P$  the probability measure  $Q$  is said to be equivalent to  $P$  if both assign probability zero to the same events. An equivalent probability measure  $Q$  is an equivalent martingale measure if all price processes discounted with  $R_{i,j}$  become martingales. More precisely,  $Q$  is an equivalent martingale measure if and only if the market value of any trading strategy is a martingale:

$$
\theta_{t} \times S_{t} = E_{t}^{Q} \left[ \sum_{j = t + 1}^{T} \frac{d_{j}^{\theta}}{R_{t , j}} \right]
$$

# Risk-Neutral Probabilities

Probabilities computed according to the equivalent martingale measure  $Q$  are the risk-neutral probabilities. Risk-neutral probabilities can be explicitly computed. Here is how. Call  $q_{\omega}$  the risk-neutral probability of state  $\omega$ . Let's write explicitly the relationship

$$
S_{t}^{i} = E_{t}^{\mathcal {Q}} \left[ \frac{d_{j}^{i}}{R_{t , j}} \right]
$$ as follows:


$$
\begin{array}{l} S_{A_{k t}}^{i} = \sum_{\omega \in A_{k t}} \frac{q_{\omega}}{Q (A_{k t})} \left[ \sum_{j = t + 1}^{T} \frac{d_{j}^{i} (\omega)}{R_{t , j}} \right] \\ = \sum_{\omega \in A_{k t}} \frac{q_{\omega}}{\left(\sum_{\omega \in A_{k t}} q_{\omega}\right)} \left[ \sum_{j = t + 1}^{T} \frac{d_{j}^{i} (\omega)}{R_{t , j}} \right] \\ \end{array}
$$

The above system of equations determines the risk-neutral probabilities. In fact, we can write, for each risky asset,  $M_{t}$  linear equations, where  $M_{t}$  is the number of sets in the partition  $I_{t}$  plus the normalization equation for probabilities. From the above equation, one can see that the system can be written as


$$
\begin{array}{l} \sum_{\omega \in A_{k, t}} q_{\omega} \left[ \sum_{j = t + 1}^{T} \frac{d_{j}^{i} (\omega)}{R_{t , j}} - S_{A_{k t}}^{i} \right] = 0 \\ \sum_{\omega = 1}^{S} q_{\omega} = 1 \\ \end{array}
$$

This system might be determined, indetermined, or impossible. The system will be impossible if there are arbitrage opportunities. This system will be indetermined if there is an insufficient number of securities. In this case, there will be an infinite number of equivalent martingale measures and the market will not be complete.

Now consider the relationship between risk-neutral probabilities and state-price deflators. Consider a probability measure  $P$  and a nonnegative random variable  $Y$  with expected value on the entire space equal to 1. Define a new probability measure as  $Q(B) = E[1_BY]$  for any event  $B$  and where  $1_B$  is the indicator function of the event  $B$ . The random variable  $Y$  is called the Radon-Nikodym derivative of  $Q$  and it is written

$$
Y = \frac{d Q}{d P}
$$

It is clear from the definition that  $P$  and  $Q$  are equivalent probability measures as they assign probability zero to the same events. Note that in the case of a finite-state probability space the new probability measure is defined on each state and is equal to

$$ q_{\omega} = Y (\omega) p_{\omega}
$$

Suppose  $\pi_t$  is a state-price deflator. Let  $Q$  be the probability measure defined by the Radon-Nikodym derivative:

$$
\xi_{T} = \frac{\pi_{T} R_{0 , T}}{\pi_{0}}
$$

The new state probabilities under  $Q$  are the following:

$$ q_{\omega} = \frac{\pi_{T} (\omega) R_{0 , T}}{\pi_{0} (\omega)} p_{\omega}
$$

Define the density process  $\xi_{t}$  for  $Q$  as  $\xi_{t} = E_{t}[\xi_{T}]$ . As  $\xi_{t} = E_{t}[\xi_{T}]$  is an adapted process, we can write:

$$
\begin{array}{l} \left(E_{t} \left[ \xi_{T} \right]\right)_{A_{k t}} = \xi_{A_{k t}} = \sum_{\omega \in A_{k t}} \frac{p_{\omega}}{P \left(A_{k t}\right)} \xi_{T} (\omega) \\ = \sum_{\omega \in A_{k t}} \frac{p_{\omega}}{P (A_{k t})} \frac{\pi_{T} (\omega) R_{0 , T}}{\pi_{0} (\omega)} = \frac{\pi_{A_{k t}} R_{0 , t}}{\pi_{0} (\omega)} \\ \times \frac{1}{\pi_{A_{k t}}} \sum_{\omega \in A_{k t}} \frac{p_{\omega}}{P (A_{k t})} \pi_{T} [ \pi_{0} (\omega) ] R_{t, T} \\ = \frac{\pi_{A_{k t}} R_{0 , t}}{\pi_{0}} \\ \end{array}
$$

As  $R_{t,s} = (d_t d_{t+1} \ldots d_{s-1})$  is the payoff at time  $s$  of one dollar invested in a risk-free asset at time  $t$ ,  $s > t$ , we can then write the following equation:

$$
1 = \frac{1}{\pi_{t}} E_{t} [ \pi_{s} R_{t, s} ]
$$

Therefore,

$$
\begin{array}{l} 1 = \frac{1}{\pi_{A_{k t}}} \left[ \sum_{\omega \in A_{k t}} P (\{\omega \} | A_{k t}) \pi_{s} (\omega) R_{t, s} \right] \\ = \frac{1}{\pi_{A_{k t}}} \left[ \sum_{\omega \in A_{k t}} \frac{p_{\omega}}{P \left(A_{k t}\right)} \pi_{s} (\omega) R_{t, s} \right] \\ \end{array}
$$

$$
1 \leq k \leq M_{t}
$$

Substituting in the previous equation, we obtain, for each interval  $(t,T)$

$$
\xi_{A_{k t}} = (E_{t} [ \xi_{T} ])_{A_{k t}} = \frac{\pi_{A_{k t}} R_{0 , t}}{\pi_{A_{1 0}}}
$$ which we can rewrite in the usual notation as


$$
\xi_{t} = E_{t} [ \xi_{T} ] = \frac{\pi_{t} R_{0 , t}}{\pi_{1 0}}
$$

We can now state the following result. Consider any  $\mathfrak{S}_j$ -measurable variable  $x_{j}$ . This condition can be expressed equivalently stating that  $x_{j}$  assumes constant values on each set of the partition  $I_{j}$ . Then the following relationship holds:

$$
E_{t}^{Q} [ x_{j} ] = E_{t}^{P} \frac{1}{\xi_{t}} [ \xi_{j} x_{j} ]
$$

To see this, consider the following demonstration, which hinges on the fact that  $x_{j}$  assumes a constant value on each  $A_{hj}$  and, therefore, can be taken out of sums. In addition, as demonstrated above, from

$$
1 = \frac{1}{\pi_{t}} E_{t} [ \pi_{s} R_{t, s} ]
$$ the following relationship holds:


$$
\begin{array}{l} P \left(A_{k t}\right) \pi_{A_{k t}} = \sum_{\omega \in A_{k t}} p_{\omega} \pi_{s} (\omega) R_{t, s} \\ 1 \leq k \leq M_{t} \\ \end{array}
$$

$$
\begin{array}{l} (E_{t}^{\mathrm{Q}} [ x_{j} ])_{A_{\mathrm{kt}}} \\ = \sum_{\omega \in A_{k t}} \frac{q_{\omega}}{Q (A_{k t})} x_{j} (\omega) = \sum_{\omega \in A_{k t}} \frac{p_{\omega}}{Q (A_{k t})} \frac{\pi_{T} (\omega) R_{0 , T}}{\pi_{0} (\omega)} x, (\omega) \\ = \frac{1}{Q \left(A_{k t}\right)} \sum_{A_{h j} \subset A_{k t}} \left[ \sum_{\omega \in A_{h j}} \frac{R_{0 , j} R_{j , T} p_{\omega} \pi_{T} (\omega) x_{j} (\omega)}{\pi_{0} (\omega)} \right] \\ = \frac{1}{Q \left(A_{k t}\right)} \sum_{A_{h j} \subset A_{k t}} \left[ \frac{x_{A_{h j}} R_{0 , j}}{\pi_{0} (\omega)} \sum_{\omega \in A_{h j}} R_{j, T} p_{\omega} \pi_{T} (\omega) \right] \\ = \frac{1}{Q \left(A_{k t}\right)} \sum_{A_{h j} \subset A_{k t}} \left[ \frac{x_{A_{h j}} R_{0 , j} \pi_{A_{h j}} P \left(A_{h j}\right)}{\pi_{0} (\omega)} \right] \\ = \frac{1}{Q \left(A_{k t}\right)} \sum_{A_{h j} \subset A_{k t}} \left[ x_{A_{h j}} \xi_{A_{h j}} P \left(A_{h j}\right) \right] \\ = \frac{1}{\xi_{A_{k t}}} \sum_{A_{h j} \subset A_{k t}} \frac{x_{A_{h j}} \xi_{A_{h j}} P (A_{h j})}{P (A_{k t})} \\ = \frac{1}{\xi_{A_{k t}}} \left[ E_{t}^{P} \left(\xi_{j} x_{j}\right) A_{k t} \right] \\ \end{array}
$$

Let's now apply the above result to the relationship:

$$
\begin{array}{l} S_{t}^{i} = \frac{1}{\pi_{t}} E_{t} \left[ \sum_{j = t + 1}^{T} \pi_{j} d_{j}^{i} \right] = \frac{\pi_{0}}{\pi_{t}} E_{t} \left[ \sum_{j = t + 1}^{T} \frac{\pi_{j} R_{t , j}}{\pi_{0}} \frac{d_{j}^{i}}{R_{t , j}} \right] \\ = \frac{\pi_{0}}{\pi_{t} R_{0 , j}} E_{t} \left[ \sum_{j = t + 1}^{T} \frac{\pi_{j} R_{0 , j}}{\pi_{0}} \frac{d_{j}^{i}}{R_{t , j}} \right] = E_{t}^{Q} \left(\frac{d_{j}^{i}}{R_{t , j}}\right) \\ \end{array}
$$

We have thus demonstrated the following results: There is no arbitrage if and only if there is an equivalent martingale measure. In addition,

$\pi_t$  is a state-price deflator if and only if an equivalent martingale measure  $Q$  has the density process defined by

$$
\xi_{t} = \frac{\pi_{t} R_{0 , t}}{\pi_{0}}
$$

In addition, it can be demonstrated that, if there is no arbitrage, markets are complete if and only if there is a unique equivalent martingale measure.

To illustrate the above we now proceed to detail the calculations for the previous example of three assets, three dates, and four states. Let's first write the equations for the risk-free asset:

$$
1 = \frac{1}{\pi_{A_{k t}}} \left[ \sum_{\omega \in A_{k t}} \frac{p_{\omega}}{P (A_{k t})} \pi_{s} (\omega) R_{t, s} \right]
$$

$$
1 = \frac{1}{\pi_{A_{1 1}}} \left(\frac{p_{1}}{p_{1} + p_{2}} \pi_{2} (1) R_{1, 2} + \frac{p_{2}}{p_{1} + p_{2}} \pi_{2} (2) R_{1, 2}\right)
$$

$$
1 = \frac{1}{\pi_{A_{2 1}}} \left(\frac{p_{3}}{p_{3} + p_{4}} \pi_{2} (3) R_{1, 2} + \frac{p_{4}}{p_{3} + p_{4}} \pi_{2} (4) R_{1, 2}\right)
$$

$$
\begin{array}{l} 1 = \frac{1}{\pi_{A_{1 0}}} [ p_{1} \pi_{2} (1) R_{0, 2} + p_{2} \pi_{2} (2) R_{0, 2} \\ + p_{3} \pi_{2} (3) R_{0, 2} + p_{4} \pi_{2} (4) R_{0, 2} ] \\ \end{array}
$$

$$
\pi_{A_{1 1}} = \pi_{1} (1) = \pi_{1} (2)
$$

$$
\pi_{A_{2 1}} = \pi_{1} (3) = \pi_{1} (4)
$$

$$
\pi_{A_{1 0}} = \pi_{0} (1) = \pi_{0} (2) = \pi_{0} (3) = \pi_{0} (4)
$$

We can now rewrite the pricing relationships for the other risky assets as follows:

At date 2, prices are zero:  $S_2^i = 0$ .

At date 1, the relationship

$$
S_{1}^{i} = E_{1} \left[ \frac{d_{2}^{i}}{R_{1 , 2}} \right]
$$ holds. In fact, we can write the following:


$$
\begin{array}{l} S_{A_{1, 1}}^{i} = S_{1}^{i} (1) = S_{1}^{i} (2) \\ = \frac{1}{\pi_{1} (2)} [ P (A_{1, 2} | A_{1, 1}) \pi_{2} (1) d_{2}^{i} (1) \\ + P \left(A_{2, 2} \mid A_{1, 1}\right) \pi_{2} (2) d_{2}^{i} (2) ] \\ = \frac{1}{\pi_{1 1}} \left(\frac{p_{1}}{p_{1} + p_{2}} \pi_{2} (1) R_{1, 2} \frac{d_{2}^{i} (1)}{R_{1 , 2}} \right. \\ \left. + \frac{p_{2}}{p_{1} + p_{2}} \pi_{2} (2) R_{1, 2} \frac{d_{2}^{i} (2)}{R_{1 , 2}}\right) \\ \end{array}
$$

$$
\begin{array}{l} = \left[ Q \left(A_{1, 2} \mid A_{1, 1}\right) \frac{d_{2}^{i} (1)}{R_{1 , 2}} + Q \left(A_{2, 2} \mid A_{1, 1}\right) \frac{d_{2}^{i} (2)}{R_{1 , 2}} \right] \\ = \left[ \frac{q_{1}}{q_{1} + q_{2}} \frac{d_{2}^{i} (1)}{R_{1 , 2}} + \frac{q_{2}}{q_{1} + q_{2}} \frac{d_{2}^{i} (2)}{R_{1 , 2}} \right] \\ \end{array}
$$

$$
\begin{array}{l} S_{A_{2, 1}}^{i} = S_{1}^{i} (3) = S_{1}^{i} (4) \\ = \left[ Q (A_{3, 2} | A_{1, 1}) \frac{d_{2}^{i} (3)}{R_{1 , 2}} + Q (A_{4, 2} | A_{1, 1}) \frac{d_{2}^{i} (4)}{R_{1 , 2}} \right] \\ = \left[ \frac{q_{3}}{q_{3} + q_{4}} \frac{d_{2}^{i} (3)}{R_{1 , 2}} + \frac{q_{4}}{q_{3} + q_{4}} \frac{d_{2}^{i} (4)}{R_{1 , 2}} \right] \\ \end{array}
$$

At date 0, the relationship

$$
S_{0}^{i} = E_{0} \left[ \frac{d_{1}^{i}}{R_{0 , 1}} + \frac{d_{2}^{i}}{R_{0 , 2}} \right]
$$ holds. In fact we can write the following:


$$
\begin{array}{l} S_{A_{1, 0}}^{i} = S_{0}^{i} (1) = S_{0}^{i} (2) = S_{0}^{i} (3) = S_{0}^{i} (4) \\ = \frac{1}{\pi_{A_{1 0}}} \left\{ \begin{array}{c} p_{1} [ \pi_{1} (1) d_{1}^{i} (1) + \pi_{2} (1) d_{2}^{i} (1) ] \\ \hskip 1 4. 2 2 6 3 7 8 p t + p_{2} [ \pi_{1} (2) d_{1}^{i} (2) + \pi_{2} (2) d_{2}^{i} (2) ] \\ \hskip 1 4. 2 2 6 3 7 8 p t + p_{3} [ \pi_{1} (3) d_{1}^{i} (3) + \pi_{2} (3) d_{2}^{i} (3) ] \\ \hskip 1 4. 2 2 6 3 7 8 p t + p_{4} [ \pi_{1} (4) d_{1}^{i} (4) + \pi_{2} (4) d_{2}^{i} (4) ] \end{array} \right\} \\ = p_{1} \left[ \frac{\pi_{1} (1) R_{0 , 1}}{\pi_{A_{1 , 0}}} \frac{d_{1}^{i} (1)}{R_{0 , 1}} + \frac{\pi_{2} (1) R_{0 , 2}}{\pi_{A_{1 , 0}}} \frac{d_{2}^{i} (1)}{R_{0 , 2}} \right] \\ + p_{2} \left[ \frac{\pi_{1} (2) R_{0 , 1}}{\pi_{A_{1 , 0}}} \frac{d_{1}^{i} (2)}{R_{0 , 1}} + \frac{\pi_{2} (2) R_{0 , 2}}{\pi_{A_{1 , 0}}} \frac{d_{2}^{i} (2)}{R_{0 , 2}} \right] \\ + p_{3} \left[ \frac{\pi_{1} (3) R_{0 , 1}}{\pi_{A_{1 , 0}}} \frac{d_{1}^{i} (3)}{R_{0 , 1}} + \frac{\pi_{2} (3) R_{0 , 2}}{\pi_{A_{1 , 0}}} \frac{d_{2}^{i} (3)}{R_{0 , 2}} \right] \\ + p_{4} \left[ \frac{\pi_{1} (4) R_{0 , 1}}{\pi_{A_{1 , 0}}} \frac{d_{1}^{i} (4)}{R_{0 , 1}} + \frac{\pi_{2} (4) R_{0 , 2}}{\pi_{A_{1 , 0}}} \frac{d_{2}^{i} (4)}{R_{0 , 2}} \right] \\ = p_{1} \left\{\frac{\pi_{1} (1) R_{0 , 1}}{\pi_{A_{1 , 0}}} \frac{d_{1}^{i} (1)}{R_{0 , 1}} \frac{1}{\pi_{1 1}} \left[ \frac{p_{1}}{p_{1} + p_{2}} \pi_{2} (1) R_{1, 2} \right. \right. \\ \left. \left. + \frac{p_{2}}{p_{1} + p_{2}} \pi_{2} (2) R_{1, 2} \right] \right\} \\ + p_{2} \left\{\frac{\pi_{1} (2) R_{0 , 1}}{\pi_{A_{1 , 0}}} \frac{d_{1}^{i} (2)}{R_{0 , 1}} \frac{1}{\pi_{2 1}} \left[ \frac{p_{1}}{p_{1} + p_{2}} \pi_{2} (1) R_{1, 2} \right. \right. \\ \left. \left. + \frac{p_{2}}{p_{1} + p_{2}} \pi_{2} (2) R_{1, 2} \right] \right\} \\ + p_{3} \left\{\frac{\pi_{1} (3) R_{0 , 1}}{\pi_{A_{1 , 0}}} \frac{d_{1}^{i} (3)}{R_{0 , 1}} \frac{1}{\pi_{3 1}} \left[ \frac{p_{3}}{p_{3} + p_{4}} \pi_{2} (3) R_{1, 2} \right. \right. \\ \left. \left. + \frac{p_{4}}{p_{3} + p_{4}} \pi_{2} (4) R_{1, 2} \right] \right\} \\ \end{array}
$$

$$
\begin{array}{l} + p_{4} \left\{\frac{\pi_{1} (4) R_{0 , 1}}{\pi_{A_{1 , 0}}} \frac{d_{1}^{i} (4)}{R_{0 , 1}} \frac{1}{\pi_{4 1}} \left[ \frac{p_{3}}{p_{3} + p_{4}} \pi_{2} (3) R_{1, 2} \right. \right. \\ \left. \left. + \frac{p_{3}}{p_{3} + p_{4}} \pi_{2} (4) R_{1, 2} \right] \right\} \\ + q_{1} \frac{d_{2}^{i} (1)}{R_{0 , 2}} + q_{2} \frac{d_{2}^{i} (2)}{R_{0 , 2}} + q_{3} \frac{d_{2}^{i} (3)}{R_{0 , 2}} + q_{4} \frac{d_{2}^{i} (4)}{R_{0 , 2}} \\ = \frac{d_{1}^{i} (1)}{R_{0 , 1}} \left[ \frac{p_{1} \pi_{2} (1)}{\pi_{A_{1 , 0}}} R_{0, 2} + \frac{p_{2} \pi_{2} (2)}{\pi_{A_{1 , 0}}} R_{0, 2} \right] \\ + \frac{d_{2}^{i} (3)}{R_{0 , 1}} \left[ \frac{p_{3} \pi_{2} (3)}{\pi_{A_{1 , 0}}} R_{0, 2} + \frac{p_{4} \pi_{2} (4)}{\pi_{A_{1 , 0}}} R_{0, 2} \right] \\ + q_{1} \frac{d_{2}^{i} (1)}{R_{0 , 2}} + q_{2} \frac{d_{2}^{i} (2)}{R_{0 , 2}} + q_{3} \frac{d_{2}^{i} (3)}{R_{0 , 2}} + q_{4} \frac{d_{2}^{i} (4)}{R_{0 , 2}} \\ = q_{1} \frac{d_{1}^{i} (1)}{R_{0 , 1}} + q_{2} \frac{d_{1}^{i} (2)}{R_{0 , 1}} + q_{3} \frac{d_{1}^{i} (3)}{R_{0 , 1}} + q_{4} \frac{d_{1}^{i} (4)}{R_{0 , 1}} \\ + q_{1} \frac{d_{2}^{i} (1)}{R_{0 , 2}} + q_{2} \frac{d_{2}^{i} (2)}{R_{0 , 2}} + q_{3} \frac{d_{2}^{i} (3)}{R_{0 , 2}} + q_{4} \frac{d_{2}^{i} (4)}{R_{0 , 2}} \\ \end{array}
$$

The value of a derivative instrument might depend on the path of its past values. Consider a lookback option on a stock—that is, a derivative instrument on a stock whose payoff at time  $t$  is the maximum difference between the price of the stock and a given value  $K$  at any moment prior to  $t$ . Call  $V_{t}$  the payoff of the lookback option at time  $t$ . We can then write:

$$
V_{t} = \max_{0\leq k <   t}(S_{k} - K)^{+}
$$

$$
(S_{k} - K)^{+} S_{k} - K (S_{k} - K)^{+} = \max  (S_{k} - K, 0)
$$

# THE BINOMIAL MODEL

Let's now introduce the simple but important multiperiod finite-state model known as the binomial model. The binomial model is important because it gives a simple and mathematically tractable model of stock price behavior that tends, in the limit of a zero time step, to a Brownian motion. We introduce a market populated by one risk-free asset and by one or more risky assets whose price(s) follow(s) a binomial or trinomial model. In the next section we will see how to compute the price of derivative instruments in this market.

In the binomial model of stock prices, we assume that at each time step the stock price will assume one of two possible values. This is a restriction of the general multiperiod finite-state model described in the previous sections on probability theory. The latter is, as we have seen in the previous section, a hierarchical structure of partitions of the set of states. The number of sets in any partition is arbitrary, provided that partitions grow more refined with time.

The binomial model assumes that there are two positive numbers,  $d$  and  $u$ , such that  $0 < d < u$  and such that at each time step the price  $S_{t}$  of the risky asset changes to  $dS_{t}$  or to  $uS_{t}$ . In general one assumes that  $0 < d < 1 < u$  so that  $d$  represents a price decrease (a movement down) while  $u$  represents a price increase (a movement up). It is often required that

$$ d = \frac{1}{u}
$$

In this case an equal number of movements up and down leave prices unchanged. The binomial model is a Markov model as the distribution of  $S_{t}$  clearly depends only on the value of  $S_{t - 1}$ .

A binomial model can be graphically represented by a tree. For example, Figure 2 shows a binomial model for three periods. A binomial model over  $T$  time steps, from 0 to  $T$ , produces a total of  $2^{T}$  paths. Therefore, the corresponding space of states has  $2^{T}$  states. However, the number of different final prices  $S_{T} = u^{k}d^{T - k}S_{0}, \quad k = 0,1,\ldots ,T$  is determined solely by the number of  $u$  and  $d$  in each path and increases by 1 at each time step; there are as many final prices as dates. For example, the model in Figure 2 shows three final prices and four states.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/d1decdbb3ad257d7cf7c88fd05123f4a1da7182617fb5ae7ac3ac42fe0c4c973.jpg)
Figure 2 Binomial Model: Illustration of a Binomial Tree with Three Dates, Three Final Prices, and Four States: uu, ud, du, dd


Note that there is a simple relationship between the numbers  $d$  and  $u$  and returns. In fact, we can write,

$$
R_{t} (\mathrm{up}) = \frac{S_{t + 1} - S_{t}}{S_{t}} = \frac{u S_{t} - S_{t}}{S_{t}} = u - 1
$$

$$
R_{t} (\text{do wn}) = d - 1
$$

Real probabilities of states are typically constructed from the probabilities of a movement up or down. Call  $p$  the probability of a movement up;  $1 - p$  is thus the probability of a movement down. Suppose that the state  $s$ , which is identified by a price path, has  $k$  movements up and  $T - k$  movements down. The probability of the state  $s$  is

$$ p_{s} = p^{k} (1 - p)^{T - k}
$$

Consider the final date  $T$ . Each of the possible final prices  $S_{T} = u^{k}d^{T - k}S_{0}$ ,  $k = 0,1,\ldots ,T$  can be obtained through

$$
\left( \begin{array}{c} T \\ k \end{array} \right) = \frac{T !}{k ! (T - k) !}
$$ paths with  $k$  movements up and  $T - k$  movements down. The probability distribution of final prices is therefore a binomial distribution:


$$
P (S_{T} = u^{k} d^{T - k} S_{0}) = \left( \begin{array}{c} T \\ k \end{array} \right) p^{k} (1 - p)^{T - k}
$$

Following the same reasoning, one can demonstrate that at any intermediate date the probability distribution of prices is a binomial distribution as follows:

$$
P (S_{t} = u^{k} d^{t - k} S_{0}) = \left( \begin{array}{c} y \\ k \end{array} \right) p^{k} (1 - p)^{t - k}
$$

Next introduce a risk-free security. In the setting of a binomial model, a risk-free security is simply a security such that  $d = u = 1 + r$  where

$r > 0$  is the positive risk-free rate. To avoid arbitrage it is clearly necessary that  $d < 1 + r < u$ . In fact, if the interest rate is inferior to both the up and down returns, one can make a sure profit by buying the risky asset and shorting the risk-free asset. If the interest rate is superior to both the up and down returns, one can make a sure profit by shorting the risky asset and buying the risk-free asset. Denote by  $b_{t}$  the price of the risk-free asset at time  $t$ . From the definition of price movement in the binomial model we can write:  $b_{t} = (1 + r)^{t}b_{0}$ .

# Risk-Neutral Probabilities for the Binomial Model

Let's now compute the risk-neutral probabilities. In the setting of binomial models, the computation of risk-neutral probabilities is simple. In fact we have to impose the condition:

$$ q_{t} = E_{t}^{Q} [ q_{t + 1} ]
$$ which we can explicitly write as follows:


$$
S_{t} = \frac{q u S_{t} + (1 - q) d S_{t}}{1 + r}
$$

$$
1 + r = q u + d - q d
$$

$$ q = \frac{1 + r - d}{u - d}
$$

$$
1 - q = \frac{u - 1 - r}{u - d}
$$

As we have assumed  $0 < d < 1 + r < u$ , the condition  $0 < q < 1$  holds. Therefore we can state that the unique risk-neutral probabilities are

$$ q = \frac{1 + r - d}{u - d}
$$

$$
1 - q = \frac{u - 1 - r}{u - d}
$$

The binomial model is complete and arbitrage free.

Suppose that there is more than one risky asset, for example two risky assets, in addition to the risk-free asset. At each time step each risky asset can go either up or down. Therefore there are four possible joint movements at each time step:  $uu$ ,  $ud$ ,  $du$ ,  $dd$  that we identify with the states 1,2,3,4. Four probabilities must be determined at each time step; four equations are therefore needed. Two equations are provided by the martingale conditions:


$$
\begin{array}{l} S_{t}^{1} = \frac{q_{1} u S_{t}^{1} + q_{2} u S_{t}^{1} + q_{3} u S_{t}^{1} + q_{4} u S_{t}^{1}}{1 + r} \\ S_{t}^{2} = \frac{q_{1} u S_{t}^{2} + q_{3} u S_{t}^{2} + q_{2} u S_{t}^{2} + q_{4} u S_{t}^{2}}{1 + r} \\ \end{array}
$$

A third equation is provided by the fact that probabilities must sum to 1. The fourth condition, however, is missing. The model is incomplete.

The problem of approximating price processes when there are two stocks and one bond and where the stock prices follow two correlated lognormal processes has long been of interest to financial economists. As seen above, with two stocks and one bond available for trading, markets cannot be completed by dynamic trading. This is not the case in the continuous-time model, in which markets can be completed by continuous trading in the two stocks and the bond. Different solutions to this problem have been proposed in the literature.2

# ARBITRAGE PRICING IN A DISCRETE-TIME, CONTINUOUS-STATE SETTING

Let's now discuss the discrete-time, continuous-state setting. This is an important setting as it is, for example, the setting of the arbitrage pricing theory (APT) model.

As in the previous discrete-time, discrete-state setting, we apply probabilistic concepts. The economy is represented by a probability space  $(\Omega, \sigma, P)$  where  $\Omega$  is the set of possible states,  $\sigma$  is the  $\sigma$ -algebra of events (formed, in this continuous-state setting, by a nondenumerable number of events), and  $P$  is a probability function. As the number of states is infinite, the probability of each state is zero and only events, in general, formed by nondenumerable states have a finite probability. There are only a finite number of dates from 0 to  $T$ . The propagation of information is represented by a finite filtration  $\mathfrak{I}_t$ ,  $t = 0,1,\dots,T$ . In this case, the filtration  $\mathfrak{I}_t$  is not equivalent to an information structure  $I_{t}$ .


Each security  $i$  is characterized by a payoff process  $d_t^i$  and by a price process  $S_{t}^{i}$ . In this continuous-state setting,  $d_{t}^{i}$  and  $S_{t}^{i}$  are formed by a finite number of continuous variables. As before,  $d_{t}^{i}(\omega)$  and  $S_{t}^{i}(\omega)$  are, respectively, the payoff and the price of the  $i$ -th asset at time  $t$ ,  $0 \leq t \leq T$  and in state  $\omega \in \Omega$ . All payoffs and prices are stochastic processes adapted to the filtration  $\Im$ .

To develop an intuition for continuous-state arbitrage pricing, consider the previous multiperiod, finite-state case with a very large number  $M$  of states,  $M >> N$  where  $N$  is the number of securities. Recall from our earlier discussion that risk-neutral probabilities can be computed solving the following system of linear equations:

$$
\begin{array}{l} \sum_{\omega \in A_{k, t}} q_{\omega} \left[ \sum_{j = t + 1}^{T} \frac{d_{j}^{i} (\omega)}{R_{t , j}} - S_{A_{k t}}^{i} \right] = 0 \\ \sum_{\omega = 1}^{M} q_{\omega} = 1 \\ \end{array}
$$

Recall also that at each date  $t$  the information structure  $I_{t}$  partitions the set of states into  $M_{t}$  subsets. Each partition therefore yields  $N \times M_{t}$  equations and the system is formed by a total of

$$
N \times \sum_{t = 0}^{T - 1} M_{t}
$$ equation plus the probability normalizing equation. Consider that the previous system can be broken down, at each date  $t$ , into separate blocks formed by  $N$  equations (one for


each asset) of the following type:

$$
\begin{array}{l} \sum_{\omega \in A_{k t}} q_{\omega}^{*} \sum_{j = t + 1}^{T} \frac{d_{j}^{i}}{R_{t , j}} = S_{A_{k t}} \\ q_{\omega}^{*} = \frac{q_{\omega}}{\sum_{\omega \in A_{k t}} q_{\omega}} \\ \end{array}
$$

Each of these systems can be solved individually for the conditional probabilities  $q_{\omega}^{*}$ . Recall that a system of this type admits a solution if and only if the coefficient matrix and the augmented coefficient matrix have the same rank. If the system is solvable, its solution will be unique if and only if the number of unknowns is equal to the rank of the coefficient matrix.

If the above system is not solvable, then there are arbitrage opportunities. This occurs if the payoffs of an asset are a linear combination of those of other assets, but its price is not the same linear combination of the prices of the other assets. This happens, in particular, if two assets have the same payoff in each state but different prices. In these cases, in fact, the rank of the coefficient matrix is inferior to the rank of the augmented matrix.

Under the assumption

$$
M \gg N \times \sum_{t = 0}^{T - 1} M_{t}
$$ this system, if it is solvable, will be undetermined. Therefore, there will be infinite equivalent risk-neutral probabilities and the market will not be complete. Going to the limit of an infinite number of states, the above reasoning proves, heuristically, that a discrete-time continuous-state market with a finite number of securities is inherently incomplete. In addition, there will be arbitrage opportunities only if the random variable that represents the payoff of an asset is a linear combination of the random variables that represent the payoffs of other assets, but the random variables that represent prices are not in the same relationship.


The above discussion can be illustrated in the case of multiple assets, each following a binomial model. If there are  $N$  linearly independent dent assets, the price paths in the interval  $(0,T)$  will form a total of  $2^{NT}$  states. In a binomial model, we can limit our considerations to one time step as the other steps are identical. In one step, each price  $S_{t}^{i}$  at time  $t$  can go up to  $S_{t}^{i}u^{i}$  or down to  $S_{t}^{i}d^{i}$  at time  $t + 1$ . Given the prices  $\{S_t^i\} \equiv \{S_t^1,S_t^2,\dots ,S_t^N\}$  at time  $t$ , there will be at the next time step,  $2N$  possible combinations  $\{S_t^1 w^1,S_t^2 w^2,\dots ,S_t^N w^N\}$ ,  $w^{i} = u^{t}$  or  $d^{i}$ .


Suppose that there are  $2^{N}$  states and that each combination of prices identifies a state. This means that at each date  $t$  the information structure  $I_{t}$  partitions the set of states into  $2^{Nt}$  subsets. Each set of the partition is partitioned into  $2^{N}$  subsets at the next time step. This yields  $2^{N}(t + 1)$  subsets at time  $t + 1$ .

Note that this partitioning is compatible with any correlation structure between the random variables that represent prices. In fact, correlations depend on the value of the probability assigned to each state while the partitioning we assume depends on how different prices are assigned to different states.

Risk-neutral probabilities  $q_{i}$ $i = 1,2,\dots ,2^{N}$  can be determined solving the following system of martingale conditions:

$$
\begin{array}{l} \sum_{j = 1}^{2^{N}} q_{j} S_{t}^{i} w^{i} (j) = S_{t}^{i} \\ \sum_{j = 1}^{2^{N}} q_{j}, = 1 \\ j = 1, 2, \dots , 2^{N}, i = 1, 2, \dots , N \\ \end{array}
$$ which becomes, after dividing each equation by  $S_{l}^{i}$ , the following:


$$
\begin{array}{l} \sum_{i = 1}^{2^{N}} q^{1} w_{j} (j) = 1 \\ \sum_{j = 1}^{2^{N}} q_{j} = 1 \\ \end{array}
$$ where  $w^{i}(j) = u^{i}$  or  $d^{i}$  for asset  $i$  in state  $j$ .


It can be verified that, under the previous assumptions and provided prices are positive, the above system admits infinite solutions. In fact, as  $N + 1 < 2^{N}$ , the number of equations is larger than the number of unknowns. Therefore, if the system is solvable it admits infinite solutions. To verify that the system is indeed solvable, let's choose the first asset and partition the set of states into two events corresponding to the movement up or down of the same asset. Assign to these events probabilities as in the binomial model


$$ q_{t}^{1} = \frac{1 - r + d_{t}^{1}}{u_{t}^{1} - d_{t}^{1}} \text{an d} 1 - q_{t}^{1}
$$

Choose a second asset and partition each of the previous events into two events corresponding to the movements up or down of the second asset. We can now assign the following probabilities to each of the following four events:

$$ q_{t}^{1} q_{t}^{2}, q_{t}^{1} (1 - q_{t}^{2}), (1 - q_{t}^{1}) q_{t}^{2}, (1 - q_{t}^{2}) (1 - q_{t}^{1})
$$

It can be verified that these numbers sum to one. The same process can be repeated for each additional asset. We obtain a set of positive numbers that sum to one and that satisfy the system by construction. There are infinite other possible constructions. In fact, at each step, we could multiply probabilities by "correlation factors" (i.e., numbers that form a  $2 \times 2$  correlation matrix) and still obtain solutions to the system.

We can therefore conclude that a system of positive binomial prices such as the one above plus a risk-free asset is arbitrage-free and forms an incomplete market. If we let the number of states tend to infinity, the binomial distribution converges to a normal distribution. We have therefore demonstrated heuristically that a multivariate normal distribution plus a risk-free asset forms an incomplete and arbitrage-free market. Note that the presence of correlations does not change this conclusion.

Let's now see under what conditions this conclusion can be changed. Go back to the multiple binomial model, assuming, as before, that there are  $N$  assets and  $T$  time steps. There is no logical reason to impose that the number of states be  $2^{NT}$ . As we can consider each time step separately, suppose that there is only one time step and that there are a number of states less than or equal to the number of assets plus  $1\colon M \leq N + 1$ . In this case, the martingale condition that determines risk-neutral probabilities becomes:


$$
\begin{array}{l} \sum_{j = 1}^{M} q_{j} w^{i} (j) \\ \sum_{j = 1}^{N} q_{j} = 1 \\ \end{array}
$$

There are  $M$  equations and  $N + 1$  unknowns with  $M \leq N + 1$ . This system will either determine unique risk-neutral probabilities or will be unsolvable. Therefore, the market will be either complete and arbitrage-free or will exhibit arbitrage opportunities. Note that in this case we cannot use the constructive procedure used in the previous case.

What is the economic meaning of the condition that the number of states be less than or equal to the number of assets? To illustrate this point, assume that the number of states is  $M = 2^{K} \leq N + 1$ . This means that we can choose  $K$  assets whose independent price processes identify all the states as in the previous case. Now add one more asset. This asset will go up or down not in specific states but in events formed by a number of states. Suppose it goes up in the event  $A$  and goes down in the event  $B$ . These events are determined by the value of the first  $K$  assets. In other words, the new asset will be a function of the first  $K$  assets. An interesting case is when the new asset can be expressed as a linear function of the first  $K$  assets. We can then say that the first  $K$  assets are factors and that any other asset is expressed as a linear combination of the factors.

Consider that, given the first  $K$  assets, it is possible to determine state-price deflators. These state-price deflators will not be uniquely determined. Any other price process must be expressed as a linear combination of state-price deflators to avoid arbitrage. If all price processes are arbitrage-free, the market will be complete if it is possible to determine uniquely the risk-neutral probabilities.


If we let the number of states become very large, the number of assets must become large as well. Therefore it is not easy to develop simple heuristic arguments in the limit of a large economy. What we can say is that in a large discrete economy where the number of states is less than or equal to the number of assets, if there are no arbitrage opportunities the market might be complete. If the market is complete and arbitrage-free, there will be a number of factors while all other processes will be linear combinations of these factors.

# KEY POINTS

- The law of one price states that a given asset must have the same price regardless of the means by which one goes about creating that asset.
- Arbitrage is the simultaneous buying and selling of an asset at two different prices in two different markets.
- A finite-state one-period market is represented by a vector of prices and a matrix of payoffs.
- A state-price vector is a strictly positive vector such that prices are the product of the state-price vector and the payoff matrix.
- There is no arbitrage if and only if there is a state-price vector.
- A market is complete if an arbitrary payoff can be replicated by a portfolio.
- A finite-state one-period market is complete if there are as many linearly independent assets as states.
- A multiperiod finite-state economy is represented by a probability space plus an information structure.
- In a multiperiod finite-state market each security is represented by a payoff process and a price process.
- An arbitrage is a trading strategy whose payoff process is nonnegative and not always zero.

- A market is complete if any nonnegative payoff process can be replicated with a trading strategy.
- A state-price deflator is a strictly positive process such that prices are random variables equal to the conditional expectation of discounted payoffs.
- A martingale is a process such that at any time  $t$  its conditional expectation at time  $s$ ,  $s > t$  coincides with its present value.
- In the absence of arbitrage there is an artificial probability measure in which all price processes, appropriately discounted, become martingales.
- Given a probability measure  $P$ , the probability measure  $Q$  is said to be equivalent to  $P$  if both assign probability zero to the same events.
- The binomial model assumes that there are two positive numbers,  $d$  and  $u$ , such that  $0 < d < u$  and such that at each time step the price  $S$  of the risky asset changes to  $dS$  or to  $uS$ .
- The distribution of prices of a binomial model is a binomial distribution.
- The binomial model is complete.


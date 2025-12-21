
---
title: "General Principles of Asset Pricing"
parent_directory: "Asset Pricing Models"
formatted: "2025-12-21 08:40:00 PM"
formatter_model: "grok-code-fast-1"
cli_tool: "opencode"
primary_tags:
  - asset pricing theory
  - state pricing
  - arbitrage pricing
secondary_tags:
  - stochastic discount factor
  - risk neutral pricing
  - market completeness
  - law of one price
  - linear pricing
  - fundamental theorem
cssclasses: academia
---

# General Principles of Asset Pricing

Frederick Bierman and James E. Spears Professor of Finance, Olin Business School, Washington University in St. Louis

Professor of Finance, EDHEC Business School

Abstract: Asset pricing is mainly about transforming asset payoffs into prices. The most important principles of valuation are no-arbitrage, law of one price, and linear positive state pricing. These principles imply asset prices are linearly related to their discounted payoffs in which the stochastic discount factor is a function of investors' risk tolerance and economy-wide risks. The arbitrage pricing theory, the capital asset pricing model, and the consumption asset pricing model, among others, are special cases of the discount factor models.

In this entry, we discuss the general principles of asset pricing. Our focus here is to analyze asset pricing in a more general setup. Due to its generality, this entry is inevitably more abstract and challenging, but important for understanding the foundations of modern asset pricing theory. First, by extending the state-dependent contingent claims with two possible states allowing for an arbitrary number of states, we introduce the economic notions of complete market, the law of one price, and arbitrage. Then, we provide the fundamental theorem of asset pricing that ties these concepts to asset pricing relations. Subsequently, we discuss stochastic discount factor models, which is the unified framework of various asset pricing theories that include the capital asset pricing model (CAPM) (see Sharpe, 1964; Lintner, 1965; Mossin, 1966) and arbitrage pricing theory (APT) (see Ross, 1976) as special cases.

## ONE-PERIOD FINITE STATE ECONOMY

If a security has payoffs, denoted by  $x$ ,

$$
\tilde {x} = \left\{ \begin{array}{l l} \mathbb {S} 1, & u p \\ 0, & d o w n \end{array} \right.
$$ it means that the economy will have two states next period, up or down, and the security will have a value of 1 or 0 in the up and down states, respectively. Similarly, as a simple extension, we can think that the economy has three states next period: good, normal, and bad. Then, any security in this economy must have three payoffs corresponding to the three states. For example,


$$
\tilde {x} = \left\{ \begin{array}{l l} \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \end{array} \right.
$$ is a security in the states economy with values of  $3,$ 2, and 1, respectively, in the three states. For notational brevity, we sometimes use the transposed vector dropping the dollar sign, (3, 2, 1)', to denote the payoff of this security, where the apostrophe (') is the symbol for transpose.


In general, we can consider an economy with an arbitrary number of  $s$  states and  $N$  securities. In this economy, the payoff of any security can be expressed as

$$
\tilde {x} = \left\{ \begin{array}{c c} v_{1}, & \text{St at e1} \\ v_{2}, & \text{St at e2} \\ \vdots & \vdots \\ v_{s}, & \text{St at es} \end{array} \right. \tag {1}
$$ where the  $v$ 's are the values of the security in the  $m$  states. For example, suppose state  $s = 4$ , then a security with payoff (1.10, 1.10, 1.10, 1.10)' is a well-defined security in our four-state economy. Suppose further that the price of this security is  \$1, then this security earns\$ 0.10 or 10\% ($0.1/$1) regardless of the state. Hence, this security is risk free with a rate of return of 10\% regardless of the state of the economy.


Suppose now that there is a total of  $N$  securities,  $\tilde{x}_1,\dots ,\tilde{x}_N,$  in an economy of  $s$  states. We can summarize the payoffs next period of all the  $N$  securities by using the following matrix,

$$
X = \left( \begin{array}{c c c} v_{1 1} & \dots & v_{1 N} \\ \vdots & \ddots & \vdots \\ v_{s 1} & \dots & v_{s N} \end{array} \right) \tag {2}
$$ where each of the  $N$  columns represents the values of the securities. It is evident that matrix  $X$  summarizes payoffs of all the securities and determines their future values completely.


The asset pricing question is how to determine the price for each of the securities. Mathematically, the pricing mechanism can be viewed as a mapping from the  $j$ -th security (or the  $s$ -vector, the payoff obtained from owning the security), to a price  $p$  that an investor is willing to pay today,

$$
\rho (\bar {x}_{j}) = p_{j} \tag {3}
$$

As it turns out, simple economic principles imply many useful properties for the mapping, which comprises the general principles of asset pricing to be discussed below.

## PORTFOLIOS AND MARKET COMPLETENESS

In evaluating securities, a key principle is to evaluate them as a whole, and not in isolation. To do so, consider a portfolio of the  $N$  securities

$$
\tilde {x}_{p} = \varphi_{1} \tilde {x}_{1} + \varphi_{2} \tilde {x}_{2} + \dots + \varphi_{N} \tilde {x}_{N} \tag {4}
$$ where the  $\varphi$ 's are portfolio weights that now represent the units of the securities we purchase in the portfolio, and  $\tilde{x}_p$  is the payoff of the portfolio, which simply adds up the individual values. Note that the weights can be either positive or negative. A negative weight on a security is a short position. In the case where no short sales are allowed, the weights are restricted to be positive.


Note that the portfolio weights are often the percentages of money we invest in the securities, where prices are given and we are interested in the return on a portfolio. In contrast, we focus here on the weights in terms of units because we are interested in determining the prices from payoffs. However, once the prices are given, the weights in terms of either units or percentages are equivalent. To see this, if we express a portfolio in term of returns, denoted by  $R$ , rather than payoffs as above, then the portfolio return is

$$
R_{p} = w_{1} R_{1} + w_{2} R_{2} + \dots + w_{N} R_{N} \tag {5}
$$ where


$$
R_{j} = \frac{\tilde {x}_{j}}{p_{j}}
$$ is the gross return on security  $j$ , which is one plus the usual percentage return. The relation between the  $\varphi$ 's and the  $w$ 's is


$$ w_{j} = \frac{\varphi_{j} p_{j}}{\varphi_{1} p_{1} + \cdots + \varphi_{N} p_{N}} \tag {6}
$$ where the numerator is the amount of money allocated to security  $j$ , and the denominator is the total amount of money invested in the securities, so that the  $w$ 's are the percentage weights as before.


Consider the following two securities in a two-state economy:

$$
\tilde {x}_{1} = \left\{ \begin{array}{l l} 1, & u p \\ 0, & d o w n \end{array} \right., \qquad \tilde {x}_{2} = \left\{ \begin{array}{l l} 0, & u p \\ 1, & d o w n \end{array} \right.
$$

Suppose their prices today are  \$1. Then, with an investment of\$ 1 that buys 0.5 unit each of the securities, one obtains a portfolio

$$
\tilde {x} = \varphi_{1} \tilde {x}_{1} + \varphi_{2} \tilde {x}_{2} = 0. 5 \tilde {x}_{1} + 0. 5 \tilde {x}_{2}
$$ with payoff


$$
\tilde {x} = \left\{ \begin{array}{l l} 0. 5, & u p \\ 0. 5, & d o w n \end{array} \right.
$$

One can also buy 2 units of the first security, and short one unit of the second security; then the resulting portfolio is

$$
\tilde {x} = 2 \tilde {x}_{1} + (- 1) \tilde {x}_{2}
$$ with payoff


$$
\tilde {x} = \left\{ \begin{array}{l l} 2, & u p \\ - 1, & d o w n \end{array} \right.
$$

Note that the payoff of the portfolio is negative, -\$ 1, in the down state. This means that when the economy is down, one has to buy back the second security at a price of 1 (its value in the down state) to cover the short position. The net cost is \$ 1, the payoff of the portfolio in the down state. In contrast to the portfolio where equal dollar amounts are invested in both securities, this portfolio with short sales permitted has a higher payoff of \$ 2 in the up state, which compensates for the loss in the down state.

### Redundant Assets

A portfolio is uniquely determined by its portfolio weights, which can be summarized by the  $N$ -vector

$$
\varphi = \left(\varphi_{1}, \varphi_{2}, \dots , \varphi_{N}\right)^{\prime}
$$

The portfolio's payoffs are then uniquely determined by the  $s$ -vector,

$$
\text{Pa yo ff} = X \varphi \tag {7}
$$

For example, one can easily verify that this is true in our first illustration in which  $X$  is simply equal to the identity matrix.

A portfolio  $\varphi$  is said to be replicable if we can find another portfolio with different weights,  $\omega$ , such that their payoffs are equal

$$
X \omega = X \varphi , \quad \omega \neq \varphi \tag {8}
$$

In particular, if one of the  $x$ 's can be replicated by a portfolio of others, it is called a redundant asset or redundant security. In any economy, redundant securities can be eliminated without affecting the properties of all the possible portfolios of the remaining assets. Sometimes, in order to distinguish the securities, the  $x$ 's that define the economy, and all their possible portfolios, we will refer to the  $x$ 's as primitive securities because all other portfolios are composed of them.

Consider the following two-state economy

$$
\tilde {x}_{1} = \left\{ \begin{array}{l l} 1, & u p \\ 0, & d o w n \end{array} \right., \qquad \tilde {x}_{2} = \left\{ \begin{array}{l l} 2, & u p \\ 0, & d o w n \end{array} \right.
$$ with prices for both securities being \$1 and \$2 today. The portfolio with weight vector φ = (0.5, 0.5)' is


$$
\tilde {x} = 0. 5 \tilde {x}_{1} + 0. 5 \tilde {x}_{2}
$$

This portfolio is replicable because it is also equal to

$$
\tilde {x} = 1. 5 \tilde {x}_{1}
$$

The primitive asset  $x_{2}$  is redundant here because its payoff is simply double the payoff of the first asset.

### Complete Market

In an economy with  $N$  risky securities and  $s$  states, a security market is formed if arbitrary buying and shorting are allowed, which creates infinitely many possible portfolios. We say the market is complete and is hence referred to as a complete market, if, for any possible payoff, there is a portfolio of the primitive securities to replicate it. That is, for any desired payoff  $\tilde{x}$ , we can find portfolio weights such that


$$
\varphi_{1} \tilde {x}_{1} + \varphi_{2} \tilde {x}_{2} + \dots + \varphi_{N} \tilde {x}_{N} = \tilde {x} \tag {9}
$$

A complete market not only allows investors to obtain any desired payoff in any state (with a price), but also permits unique security pricing, as will be clear later.

For example, the two securities in our first example will form a complete market. This is because for any possible payoff

$$
\tilde {x} = \left\{ \begin{array}{l l} a, & u p \\ b, & d o w n \end{array} \right.
$$ the portfolio


$$ a \tilde {x}_{1} + b \tilde {x}_{2}
$$ yields the payoff. To see why, if one investor wants to get a \$2 payoff in the up state and \$3 in the down state, buying 2 units of the first security and 3 units of the second security will provide what is exactly desired. However, the two securities in our second example above form an incomplete market. This is because for any possible portfolios consisting of the two securities, it will be impossible to create a payoff of 1 in the down state.


In terms of matrix and vector notation, a complete market requires that, for any payoff vector, we can find portfolio weights  $\varphi$  to solve the linear equation with  $\varphi$  as the unknown variable

$$
X \varphi = y \tag {10}
$$ if the above linear equation has a solution to any  $y$ , it must do so for  $s$  independent  $y$ 's, say, the  $s$  columns of the  $s$ -dimensional identity matrix, which is an  $s$  by  $s$  matrix with diagonal elements 1 and zero elsewhere. For example, if  $s = 2$ , the  $y$ 's correspond to the payoffs of the two securities in our first example. This means that the linear combinations of the columns of  $X$  are capable of yielding  $s$  independent columns. So, the number of independent columns must be greater than or equal to  $s$ . Since  $X$  is an  $s$  by  $N$  matrix, its number of independent columns,  $\operatorname{rank}(X)$ , cannot be greater than  $s$ . Then the only possibility is equal to  $s$ .

Note that  $X$  is an  $s$  by  $N$  matrix and  $y$  is an  $s$ -vector. Recall from linear algebra that the number of independent columns of  $X$  is called the rank of the matrix  $X$ , denoted as  $\operatorname{rank}(X)$  below. If  $\operatorname{rank}(X) = s$ , the linear combinations of these columns will generate all possible  $s$ -vectors. That is, a portfolio of those securities whose payoffs are those independent columns is capable of producing any possible payoffs, or the market must be complete. Conversely,


We can summarize our discussion in the following proposition:

Market Completeness Proposition: The market is complete if and only if the rank of the  $s$  by  $N$  payoff matrix  $X$  is  $s$ , that is,

$$
\operatorname{ra nk} (X) = s \tag {11}
$$

Consequently, for  $s$  possible states, we should have at least  $N \geq s$  primitive assets for the market to be complete. One can verify that the rank condition holds for the two securities in our first example, but not in our second example.

## THE LAW OF ONE PRICE AND LINEAR PRICING

In this section, we first discuss the law of one price and its relation to the linear pricing rule, and then introduce the concept of state price and relate it to the law of one price.

### Linear Pricing

The law of one price (LOP) says that two assets with identical payoffs must have the same price. In international trade, in the absence of tariffs and transportation costs, an apple sold in New York City must have the same price as an apple sold in London after converting the money into the same currency. This provides an economic channel through which to tie the currencies together. In the financial markets, the LOP says that we should not be able to profit from buying the same security at a higher price and selling it at a lower one.


Mathematically, under LOP, if two portfolios have the same payoffs

$$
X \varphi = X \omega \tag {12}
$$ then their prices today must be the same


$$
\rho (X \varphi) = \rho (X \omega) \tag {13}
$$ where, as we recall from our earlier discussion,  $\rho$  is the mapping that maps the payoff of an asset or of a portfolio into its price.


A simple necessary and sufficient condition for the LOP to hold is that every portfolio with zero payoff must have zero price. To see the necessity, suppose that there is an asset with zero payoff that sells at a nonzero price, say, \$0.01. We can combine this asset with any other asset to form a new asset without changing the payoff, but the price of this new asset is \$0.01 higher than before packaging the two assets. The LOP says that the old one and the new one must have the same price, which is, of course, a contradiction. Conversely, if two portfolios with an identical price were sold at different prices, say \$2.01 and \$2, buying the one with the price of \$2.01 and shorting the one with a price of \$2 creates an asset with zero payoff, but a price of 0.01. This is not possible from the zero price condition.

The LOP essentially prevents an asset from having multiple prices, which gives rise to its name. Only when it is true is it possible for there to be rational pricing with a unique price. An important theoretical implication of the LOP is that the price mapping, the  $\rho$  function, must be linear:

$$
\rho [ X (a \varphi + b \omega) ] = a \rho (X \varphi) + b \rho (X \omega) \tag {14}
$$

That is, the price of a portfolio must be equal to a portfolio of the component prices. Intuitively, the price of two burgers must be two times the price of one, and the price of a burger and a Coke must be the same as the sum of the two individual prices. The linear pricing rule is fundamental in finance. It implies that, if the share price of a company is its future cash flows, then no matter how one slices the cash flows, the price will remain unchanged and is equal to the values of the slices added together.


The linear pricing rule clearly implies the LOP. The price mapping is uniquely determined by the payoffs only, and so it must be the case that the prices are identical if the payoffs are. Conversely, if the LOP is true, paying the price of the left-hand side of equation (14) will result in a portfolio with the identical payoff as the right-hand side, and hence their prices must be the same. A formal statement of this is as follows:

Linear Pricing Rule: The law of one price is valid if and only if the linear pricing rule is true.

### State Price

In asset pricing, the concept of a state price is fundamental. In our states economy, there are  $s$  states. The state price in state  $i$  is the price investors are willing to pay today to obtain one unit of payoff in that state, and nothing in other states. The state price is also known as the Arrow-Debreu price, named in honor of the originators. A state price vector will then be an  $s$ -vector of all the prices in all the states. If there exists a state price vector  $q = (q_{1}, q_{2}, \ldots, q_{s})'$ , then we can write the asset price for each primitive security as

$$ p_{j} = q_{1} v_{1 j} + q_{2} v_{2 j} + \dots + q_{s} v_{s j} \tag {15}
$$

In words, this equation says that the price of the  $j$ -th security is equal to its payoffs in each of the states times the price per unit value in that state.

The state price is not only useful for linking the payoffs of the primitive securities to their prices, but also useful to price any new assets, including any other contingent claims or derivatives in the economy. All we need to do is to identify the payoffs of these assets and then sum the products of the payoffs with their state prices to obtain asset prices.


The question is whether the state price vector always exists. We rewrite the state pricing relation (15) in matrix form as

$$ p = X^{\prime} q \tag {16}
$$

The existence of the state price vector  $q$  is the existence of solution  $q$  to the linear equation given by (16). In our states economy here, we can show that the LOP is necessary and sufficient for the existence of the state price, while in more complex economies, say those with an infinite number of assets and an infinite number of states, some auxiliary condition may be needed.

Existence of State Price Condition: The law of one price is valid if and only if the state price vector exists.

The proof of the above follows from linear algebra. If the state price vector exists, then

$$ p^{\prime} \varphi = q X^{\prime} \varphi = q X^{\prime} \omega = p^{\prime} \omega
$$ which says that the price of the portfolio with weights  $\varphi$  is the same as the price of another portfolio as long as their payoffs are identical. Conversely, if the LOP is true, then for any portfolio weights  $w$  with zero payoff or satisfying  $X' \varphi = 0$ , we must have zero price or  $p' \varphi = 0$ . This means that  $p$  is orthogonal to every vector that is orthogonal to  $X$ . Now projecting  $p$  on the entire  $N$ -dimensional space,  $p$  must then be a linear combination of the columns of  $X$ . The combination coefficients are exactly equal to  $q$ , which is what we are looking for. The proof is therefore complete.


As an example, consider the following two securities in a two-state economy,

$$
\tilde {x}_{1} = \left\{ \begin{array}{c c} 1, & u p \\ 0, & d o w n \end{array} \right., \qquad \tilde {x}_{2} = \left\{ \begin{array}{c c} 2, & u p \\ 0, & d o w n \end{array} \right.
$$ where the first security has a price of  \$1 and the second of\$ 2. Clearly the prices are consistent with the LOP. In this case, a state price of (1, 0)'


can price all portfolios of the two securities:

$$
1 = 1 \times 1 + 0 \times 0
$$ and


$$
2 = 1 \times 2 + 0 \times 0
$$

Another state price  $(1,2)^{\prime}$  can also do the same. A more subtle case is in an economy when

$$
\tilde {x}_{1} = \left\{ \begin{array}{c c} 1, & u p \\ 1, & d o w n \end{array} \right., \qquad \tilde {x}_{2} = \left\{ \begin{array}{c c} 2, & u p \\ 2, & d o w n \end{array} \right.
$$ with the same prices of  \$1 and\$ 2. Then (0.5, 0.5)' and (0.2, 0.8)' both, among others, price the two primitive securities and all their portfolios correctly.


Under what conditions will the state price be unique? To find the conditions, recall the matrix form of the state pricing relation

$$ p = X^{\prime} q
$$

The LOP is equivalent to the existence of the state price vector  $q$ . If the market is in addition complete, then  $q$  in the above equation can be uniquely solved as

$$ q = \left(X X^{\prime}\right)^{- 1} X p \tag {17}
$$

Note that  $X$  is  $s$  by  $N$ , so its inverse is undefined unless  $s = N$ . But the inverse of the  $s$  by  $s$  matrix,  $XX'$ , is well defined. Equation (17) leads to our next proposition.

Uniqueness of State Price Proposition: If the law of one price holds, and if the market is complete, the state price must exist and be unique.

For example, consider the following two securities in a two-state economy

$$
\tilde {x}_{1} = \left\{ \begin{array}{c c} 1, & u p \\ 2, & d o w n \end{array} \right., \qquad \tilde {x}_{2} = \left\{ \begin{array}{c c} 3, & u p \\ 4, & d o w n \end{array} \right.
$$ where the first security has a price of  \$4 and the second of\$ 10. We can check that both the rank and LOP conditions are true. The unique state price vector is then given by equation (17),


$$
\left[ \begin{array}{c} q_{1} \\ q_{2} \end{array} \right] = \left( \begin{array}{c c} 5 & - 3. 5 \\ - 3. 5 & 2. 5 \end{array} \right) \left( \begin{array}{c c} 1 & 3 \\ 2 & 4 \end{array} \right) \left[ \begin{array}{c} 4 \\ 1 0 \end{array} \right] = \left[ \begin{array}{c} 2 \\ 1 \end{array} \right]
$$

It can be verified that these prices indeed work for pricing the two primitive securities.

## ARBITRAGE AND POSITIVE STATE PRICING

The assumption of the absence of arbitrage is the foundation upon which asset pricing theories rely. When there are any free lunches or what economists refer to as arbitrage opportunities, asset prices are not rational. Investors are likely to be able to correct the prices by exploiting the arbitrage opportunities, and eventually these opportunities will disappear, and the prices will reflect their true values. Asset pricing theory is largely concerned with these equilibrium true values.

In our states economy, the concept of arbitrage can be formally defined. There are two types of arbitrage. The first type exists if there is a portfolio strategy that requires no investment today (i.e., referred to earlier as a zero-investment strategy) and yet yields nonnegative payoffs in the future, and positive (or not identical to zero) at least in one of the states. Mathematically, this type of arbitrage can be expressed as

$X\varphi \geq 0$  , and not equal to zero with


$$ p_{1} \varphi_{1} + p_{2} \varphi_{2} + \dots + p_{N} \varphi_{N} \leq 0
$$

The second type of arbitrage is one in which a portfolio strategy earns money today, and yet has no future obligations. We can express this mathematically as follows:

$$
X \varphi \geq 0
$$ with


$$ p_{1} \varphi_{1} + p_{2} \varphi_{2} + \dots + p_{N} \varphi_{N} <   0
$$

Consider as an example the following two securities in a two-state economy:

$$
\tilde {x}_{1} = \left\{ \begin{array}{l l} 1, & u p \\ 2, & d o w n \end{array} \right., \qquad \tilde {x}_{2} = \left\{ \begin{array}{l l} 2, & u p \\ 4. 1, & d o w n \end{array} \right.
$$ with prices  \$1 and\$ 2. If we follow a strategy that involves shorting two units of the first security and buying one unit of the second security, then our net investment will be zero, but the payoffs will be


$$
- 2 \times \tilde {x}_{1} + 1 \times \tilde {x}_{2} = \left[ \begin{array}{c} 0 \\ 0. 1 \end{array} \right]
$$

This is an arbitrage of the first type. However, there is no arbitrage of the second type. This is because for any weights  $\varphi_{1}$  and  $\varphi_{2}$ , if the cost is negative, that is,

$$
\varphi_{1} + 2 \varphi_{2} <   0
$$ then the payoff in the up state of the portfolio,


$$
\varphi_{1} + 2 \varphi_{2}
$$ will be negative too.


To illustrate, consider the following two securities in a two-state economy,

$$
\tilde {x}_{1} = \left\{ \begin{array}{l l} 1, & u p \\ - 1, & d o w n \end{array} \right., \qquad \tilde {x}_{2} = \left\{ \begin{array}{l l} 2, & u p \\ - 4, & d o w n \end{array} \right.
$$ with prices  \$1 and\$ 1.9. If we short two units of the first security and buy one unit of the second security, then our net investment will be


$$
(- 2) \times 1 + 1 \times 1. 9 = - 0. 1
$$ but the payoffs will be


$$
- 2 \times \tilde {x}_{1} + 1 \times \tilde {x}_{2} = \left[ \begin{array}{c} 0 \\ 0 \end{array} \right]
$$

This is an arbitrage of the second type. However, there is no arbitrage of the first type. This is because for any weights  $\varphi_{1}$  and  $\varphi_{2}$ , the arbitrage requires the portfolio payoffs be nonnegative

$$
\varphi_{1} + 2 \varphi_{2} \geq 0
$$ and


$$
- \varphi_{1} - 2 \varphi_{2} \geq 0
$$ in the two states, respectively. The only nonnegative payoffs for both the states is the zero payoff in this case. So, there cannot be an arbitrage of the first type.


Note that the pricing operator is to map the payoffs of an asset to its price, and it provides that the state price of the payoff is 1 in that state and nothing in other states. If the state price in one state is zero, this will be clearly an arbitrage opportunity as an investor can get future payoffs in this state for paying a zero price today. To rule out arbitrage opportunities in the economy, it is hence necessary to require the state prices be positive. When the pricing operator is both linear and implying positive state prices, we call it a positive linear pricing rule. As it turns out below, the existence of such a positive linear pricing rule is equivalent to the absence of arbitrage opportunities in the economy.


Arbitrage is also related to the LOP. If there is no arbitrage, the LOP must be true. This is because if two portfolios with two identical payoffs were sold at different prices, a "buy low and sell high" strategy will result in the construction of a portfolio with zero payoffs in the future, but with positive proceeds today. This is an arbitrage of the first type. Thus, the no-arbitrage condition is stronger than the LOP. In finance, the assumption of no arbitrage is crucial, as explained next by the fundamental theorem of asset pricing.

## THE FUNDAMENTAL THEOREM OF ASSET PRICING

Consider now an investor's utility maximization problem. Assume the investor prefers more to less, so that the utility function is monotonic in the consumption level. Given an initial wealth  $W_0$ , and given the trading opportunities, the investor's future consumption, as a vector in the  $s$  states, will be

$$
C_{1} = W_{1} + \left(W_{0} - C_{0}\right) \times R_{p}
$$ where


$$
\begin{array}{l} C_{0} = \text{co ns um pt io n (me as ur ed in do ll ar s)} \\ \text{to da y ,} \end{array}
$$

$R_{p} =$  return on a portfolio of assets, which can be optimally chosen by the investor maximizing his or her utility, and

$W_{1} =$  the investor's income from other sources next period, such as labor income

The utility is a monotonic function of both  $C_0$  and  $C_1$ .

Then the following theorem ties together the no-arbitrage, positive linear pricing rule, and the utility maximization problem.

Fundamental Theorem of Asset Pricing: The following are equivalent:

1. Absence of arbitrage
2. Existence of a positive linear pricing rule
3. Existence of an investor with monotonic preference whose utility is maximized

We provide a simplified proof here. (A more rigorous proof is provided in Dybvig and Ross (1987).)

To see that the absence of arbitrage implies existence of a positive linear pricing rule, we note first that earlier we provided the argument for the existence of the linear pricing rule. The positivity of the state prices must be true in the absence of arbitrage. This is because, if there is a zero or negative state price in some state, then the payoffs in this state are free lunches, so arbitrage opportunities can arise. Conversely, if the state prices are positive, every single payoff in each state has a positive price, and there cannot be any free lunch.

Mathematically, this can also be easily demonstrated. If  $\varphi$  is an arbitrage portfolio so that its price is zero or negative, then

$$
0 \geq p^{\prime} \varphi = (X^{\prime} q)^{\prime} \varphi = q^{\prime} (X \varphi)
$$ where the first equality is the linear pricing rule, and the second equality holds by matrix multiplication rules. Because of positive state prices, all components of  $q$  are positive. If  $p' \varphi$  is zero,  $X \varphi$  must be all zeros, and if  $p' \varphi$  is negative,  $X \varphi$  must have strictly negative components. Both contradict the assumption that  $\varphi$  is an arbitrage portfolio. Hence, there are no arbitrage opportunities when the state prices are positive.


To see how the existence of a positive linear pricing rule implies the existence of an investor with monotonic preference whose utility is maximized, the consumption of the investor in each state must be finite since the investor has finite wealth, and since the investor faces a binding budget constraint due to positive state prices. Finally, the existence of an investor with monotonic preference whose utility is maximized clearly implies the absence of arbitrage. This is because adding an arbitrage portfolio (i.e., a free lunch) to the investor's portfolio will only strictly increase his or her utility without affecting the budget, contradicting the fact that the utility is maximized to begin with. This concludes our proof.

An important insight from the fundamental theorem is what we need for rational pricing. In deriving pricing formulas, many theoretical equilibrium asset pricing models assume all investors behave rationally and have identical information sets. The theorem says that, to rationally price assets or to ensure market pricing efficiency, we do not need to assume that all investors are smart. What we need is a few smart ones who can capitalize on any arbitrage opportunities. Then, the prices should be in line with their payoffs in the economy.

### The Discount Factor

Related to the fundamental theorem is the concept of the discount factor. As it turns out, this is the common feature of almost all asset pricing models, a point that will become evident in the next section. Let  $\theta_{i} > 0$  be the probability for state  $i$  to occur. The linear pricing rule given by equation (15) can be rewritten as

$$
\begin{array}{l} p_{j} = \theta_{1} \left(q_{1} / \theta_{1}\right) v_{1 j} + \theta_{2} \left(q_{2} / \theta_{2}\right) v_{2 j} + \dots \\ + \theta_{s} \left(q_{s} / \theta_{s}\right) v_{s j} = E \left(m v_{j}\right) \tag {18} \\ \end{array}
$$ where  $m$  is a random variable whose value in state  $s$  is equal to


$$ m_{s} = \frac{q_{i}}{\theta_{s}} \tag {19}
$$

Equation (18) says that the price for asset  $j$  is given by the expected value of its payoff multiplied by a random variable  $m$ , where  $m$  is common for all assets.

Suppose now that there is a risk-free asset in the economy that can earn a risk-free interest rate  $r$ , and that the price of this risk-free asset today is \$1 (we can scale the asset unit if necessary). Then the payoff of this risk-free asset's price in the next period will be  $1 + r$  in all the states. So, by equation (18), we have for the following expected payoff for this risk-free asset

$$
1 = E [ m (1 + r) ]
$$ and therefore


$$
E [ m ] = \frac{1}{1 + r} \tag {20}
$$

If there were no risks in the economy, and if there were no arbitrage, it is clear that all assets should earn the same risk-free rate of return. Hence, assets should be priced by their present values of the cash flows, or the prices are equal to the discounted cash flows with the discount factor  $1 / (1 + r)$ . When there is risk as is the case now, the payoffs are multiplied by the random variable  $m$  whose mean is  $1 / (1 + r)$ . This is why  $m$  is also known as a stochastic discount factor because (1) it is random, and (2) it extends the risk-free discounting to the risky asset case.

Consider, for example, three securities in a three-state economy with prices  $5,$ 5, and 6, and with the following payoff matrix:

$$
X = \left( \begin{array}{c c c} 1 0 & 2 0 & 3 0 \\ 1 0 & 1 0 & 1 0 \\ 1 0 & 5 & 5 \end{array} \right)
$$

In this economy, the first asset is the risk-free asset since it has a constant payoff of 10 regardless of the future state. Moreover, the risk-free rate is 100\% because the asset is sold at a price of \$ 5. The state price vector can be solved using equation (17) and is q = (0.1, 0.2, 0.2)'. Assume the probability for each state is 1/3. Then the linear pricing rule can be expressed as


$$
\begin{array}{l} 5 = p_{1} = \frac{1}{3} \times (0. 3 \times 1 0) + \frac{1}{3} \times (0. 6 \times 1 0) \\ + \frac{1}{3} \times (0. 6 \times 1 0), \\ \end{array}
$$

$$
\begin{array}{l} 5 = p_{2} = \frac{1}{3} \times (0. 3 \times 2 0) + \frac{1}{3} \times (0. 6 \times 1 0) \\ + \frac{1}{3} \times (0. 6 \times 5), \\ \end{array}
$$

$$
\begin{array}{l} 6 = p_{3} = \frac{1}{3} \times (0. 3 \times 3 0) + \frac{1}{3} \times (0. 6 \times 1 0) \\ + \frac{1}{3} \times (0. 6 \times 5) \\ \end{array}
$$

Let  $m$  be a random variable that has values 0.3, 0.6, and 0.6 in the three possible states. Then the above says that, for each asset, the price is the expected value of the discounted payoff. The mean of the discount factor is

$$
\begin{array}{l} E [ m ] = \frac{1}{3} \times 0. 3 + \frac{1}{3} \times 0. 6 + \frac{1}{3} \times 0. 6 = 0. 5 \\ = \frac{1}{1 + 100\%} \\ \end{array}
$$

This verifies equation (19).

The state price vector, or equivalently the discount factor, is not only useful for pricing primitive assets, but also useful to price any portfolio consisting of them, as well as derivatives. For example, consider a call option that grants the owner of the option the right to buy one unit of the second asset at a price of  \$10. This option will have a value in state 1 equal to\$ 10 (the price of the second asset in state 1 reduced by the price that must be paid to acquire asset 1 as provided for by the option, \$10. The value of the option is therefore \$10, the difference between $20 – $10 in state 1). In the other two states, the value of the option is zero because the payoff (i.e., the price of the second asset) is no greater than 10. Hence, it would not be economic for the owner of the option to exercise. Then the price of this call option is

$$
\begin{array}{l} P r i c e o f C a l l = \frac{1}{3} \times (0. 3 \times 1 0) + \frac{1}{3} \times 0 \\ + \frac{1}{3} \times 0 = 1 \\ \end{array}
$$

The discount factor prices the assets by taking the expectation under the true probabilities.

### Pricing Using Risk-Neutral Probabilities

Alternatively, one can also price the assets under a probability measure known as the risk-neutral probabilities. The approach is especially useful for pricing derivatives. The reason is that the risk-neutralized payoffs are easier to determine, while the solution of the discount factor is more complex.

To see how the risk-neutral approach works here, we apply the linear pricing rule given by equation (18) to the risk-free asset. We have:

$$
1 = q_{1} (1 + r) + q_{2} (1 + r) + \dots + q_{s} (1 + r)
$$ so that


$$ q_{1} + q_{2} + \dots + q_{s} = \frac{1}{1 + r} = q
$$ which says the sum of state prices must be equal to the present value of 1 today. Denote by q the sum of the individual q's. Since now all the state prices are positive, the ratio of each to q can be considered a probability. Since the ratios sum to one, the probability is well defined. However, this is not the original true probability of the states, but rather some artificial probability, which will be useful in the future for pricing derivatives and other assets.


Suppose now, without loss of generality, that the risk-free asset is the first one. Then the pricing relations for the other assets are

$$
\begin{array}{l} p_{j} = q_{1} v_{1 j} + q_{2} v_{2 j} + \dots + q_{s} v_{s j} \\ = \frac{1}{1 + r} \left(\frac{q_{1}}{q} v_{1 j} + \frac{q_{2}}{q} v_{2 j} + \dots + \frac{q_{2}}{q} v_{s j}\right) \\ = \frac{1}{1 + r} E^{Q} \left[ v_{j} \right] \tag {21} \\ \end{array}
$$ that is, the price is the present value discounted at the risk-free rate of the risk-adjusted expected payoff of the asset, where  $E^Q$  denotes the expectation taken under the artificial probability. In other words, for any risky asset, we compute


its value in two steps. In the first step, the risk-neutralized payoff is calculated. In the second step, treating this payoff as riskless, the payoff is discounted at the risk-free rate to obtain the price. Consequently, the artificial probability is also often referred to as the risk-neutral probability measure.

For example, for the assets in our previous example, the sum of the state prices is

$$
0.1 + 0.2 + 0.2 = \frac{1}{1 + 100\%} = 0.5
$$

Moreover, the risk-neutral probabilities are 1/5, 2/5, and 2/5. So the expected payoff of the earlier call option is

$$
E^{Q} (c a l l) = \frac{1}{5} \times 1 0 + \frac{2}{5} \times 0 + \frac{1}{5} \times 0 = 2
$$

Discounting the  \$2 at the risk-free rate (100\% in our example), we get the price of\$ 1 (= 2/ (1 + 1)). This price is, of course, the same as computed above using the discount factor to price the call option.

## DISCOUNT FACTOR MODELS

In this section, we provide the discount factor models in a more general setup by allowing the asset returns to be arbitrarily distributed, not necessarily finite states as in the previous section. Then we derive a lower bound on the variance of all possible discount factors, known as the Hansen-Jagannathan bound, and apply it to analyze the implications of some important theories in financial economics.

### STOCHASTIC DISCOUNT FACTORS

Consider now a more general problem of an investor who is interested in maximizing utility over the current and future values of consumption,

$$
U \left(C_{t}, C_{t + 1}\right) = u \left(C_{t}\right) + \delta E \left[ u \left(C_{t + 1}\right) \right]
$$ where the first term is the utility of consumption today, the second term is the utility of fu


ture consumption, and  $\delta$  is the subjective time-discount factor of the investor that captures the investor's trade-off between current and future consumption. Note that the second term has an expectation operation since future consumption is unknown today, and the investor can only maximize the expected utility with the expectation taken over all possible random realizations of the future consumption.

Besides the quadratic utility, another popular form of utility function is the power utility

$$ u (C_{t}) = \frac{C_{t}^{1 - \gamma}}{1 - \gamma}
$$ where  $\gamma$  is the risk-aversion coefficient. The higher the  $\gamma$ , the more risk averse the investor. Typically, a value of  $\gamma$  of about 3 is believed to be reasonable.


For notational brevity, we assume there is only one risky asset, which the pricing relation developed holds for an arbitrary number of assets by adding them into the model. Unlike earlier sections in this entry where finite payoffs were assumed, we now assume the payoff of the risky asset can have an arbitrary probability distribution, so long as the expectation is well defined. The budget constraints for maximizing the utility can be written as

$$
\begin{array}{l} C_{t} = W_{t} - p_{t} w \\ C_{t + 1} = W_{t + 1} + X_{t + 1} w \\ \end{array}
$$ where  $W_{t}$  and  $W_{t + 1}$  are the investor's wealth from other sources,  $w$  is the number of units of the risky asset the investor purchases today at time  $t$ ,  $p_t$  is the security price, and  $X_{t + 1}$  is the payoff.


Plugging the budget constraints into the utility function, and taking the derivative with respect to  $w$ , we obtain the first-order condition (FOC):

$$ p_{t} u^{\prime} (C_{t}) = E_{t} [ \delta u^{\prime} (C_{t + 1}) X_{t + 1} ]
$$ or


$$ p_{t} = E_{t} \left[ m X_{t + 1} \right], \quad m = \delta \frac{u^{\prime} \left(C_{t + 1}\right)}{u^{\prime} \left(C_{t}\right)} \tag {22}
$$

This equation says that the price today is the expected value of the discounted payoff, and  $m$ is the discount factor. In the case of the power utility,


$$ m = \delta \left(\frac{C_{t + 1}}{C_{t}}\right)^{- \gamma} \tag {23}
$$ which is a power function of the consumptions.


What we have derived in equation (22) is called a consumption-based asset pricing model, so named because the theory is motivated from the perspective of consumption. This motivation is different from the earlier no-arbitrage arguments that yield equation (18). However, the pricing equations have the same form, except that the discount factor now takes a new specification. Indeed, most, if not all, asset pricing models are of the discount factor form, and different theories may specify the  $m$  differently. For the particular specification of  $m$  given by equation (22), it is also known as the marginal rate of substitution because it is the ratio of the marginal utilities.

Intuitively, when the marginal rate of substitution is high, the value of future consumption will be high, and an investor is willing to pay more for the asset if the asset's payoff is high in this case. This is why the price, as given by equation (22), is high.

The discount factor representation of asset prices is often also expressed in terms of returns. Let  $R_{t}$  be the gross return on the asset where the gross return is equal to one plus the return. That is,  $R_{t} = X_{t + 1} / p_{t}$ . Then the pricing relation in equation (22) is equivalent to

$$
1 = E_{t} \left[ m R_{t + 1} \right] \tag {24}
$$

If an asset price is scaled to be equal to \$1, the payoff will be its return, and then the expected discounted return must be equal to \$1, its price today. When there are N risky assets, we can write the discount factor model as

$$
1 = E_{t} \left[ m R_{j, t + 1} \right] \tag {25}
$$ where  $R_{j,t + 1}$  is the return on the asset  $j$


Note that the expectation in equation (25) is conditional on all available information and therefore the pricing relation is known as the conditional form of the discount factor model. Taking expectation on both sides of equation (25), we obtain


$$
1 = E \left[ m R_{j, t + 1} \right] \tag {26}
$$ which is known as the unconditional form of the discount factor model. Since conditional implies unconditional, and the reverse is not necessarily true, equation (26) is a weaker form of the model.


### Application to CAPM and APT

To see the generality of the discount factor model, consider now its relation to the two dominant equilibrium asset pricing models: the CAPM and APT. As explained shortly, one can write these two asset pricing models as follows:

$$
E \left[ R_{j} \right] = \tau + \lambda_{1} \beta_{j 1} + \dots + \lambda_{K} \beta_{j K} \tag {27}
$$ where  $R_{j}$  is the gross return on asset  $j,\beta_{jk}$  is the beta or risk exposure on the  $k$  -th factor  $f_{k},\lambda_{k}$  is the factor risk premium, for  $k = 1,2,\ldots ,K,$  and  $\tau$  is a constant.


Although equation (27) is now written out in terms of the gross returns to conform with discount factor notations, it can be reduced to have exactly the same expression in terms of returns. For example, the CAPM specifies  $K = 1$ ,  $\tau$  as the gross risk-free rate  $1 + r$ ,  $\lambda_{1} = E[R_{m}] - 1 - r$ , and  $R_{m}$  is the gross return on the market portfolio. In this case,  $\lambda_{1}$  is same as the usual market return in excess of the risk-free rate since the ones in their difference will be canceled out.

We claim that if, and only if, the stochastic discount factor is a linear function of the factors

$$ m = a + b_{1} f_{1} + \dots + b_{K} f_{K} \tag {28}
$$ we will obtain equation (27). Conversely, if equation (27) is true, the discount factor must be a linear function of the factors. Therefore, the CAPM and APT are special cases of the discount factors models.


To see why, it is sufficient to analyze the case of  $K = 1$ . For simplicity, we drop the subscripts so that we want to show


$$ m = a + b f \tag {29}
$$ and


$$
E \left[ R_{j} \right] = \tau + \lambda \beta_{j} \tag {30}
$$ are equivalent. The latter is often referred to as a beta pricing model. In the proof below, we can assume  $E[f] = 0$  since we can always move the mean of  $f$  into  $a$ . Recall the simple statistical formula that the covariance between any two random variables can be written as a sum of the expectation of their product and the product of their expectations


$$
\operatorname{Co v} (x, y) = E [ x y ] + E [ x ] E [ y ] \tag {31}
$$

Using this formula and  $E[f] = 0$ , we have, if equation (29) is true,

$$
\begin{array}{l} 1 = E [ m R_{j} ] = a E [ R_{j} ] + b E [ f R_{j} ] \\ = a E \left[ R_{j} \right] + b C o v \left(R_{j}, f\right) - b E \left[ R_{j} \right] E [ f ] \\ = a E \left[ R_{j} \right] + b C o v \left(R_{j}, f\right) \\ \end{array}
$$

Solving for  $E[R_{j}]$ , we obtain

$$
E \left[ R_{j} \right] = \frac{1}{a} - \frac{b}{a} \operatorname{Co v} \left(R_{j}, f\right) \tag {32}
$$

Comparing this equation with equation (30), it follows that

$$
\tau = \frac{1}{a}, \quad \lambda = - \frac{b}{a} \sigma^{2} (f) \tag {33}
$$ where  $\sigma^2 (f)$  is the variance of the factor. Hence, if the discount factor model is true, it must imply the beta pricing model. Conversely, if the beta pricing model is true, we can solve  $a$  and  $b$  from equation (33) to get the discount factor model.


### Hansen-Jagannathan Bound

As we discussed, an asset pricing model is a specification of the discount factor. The question is what properties all the possible discount factors  $m$  must have. Hansen and Jagannathan (1991) show that the variance of the discount factors has to be bounded below. In other words,  $m$  must be volatile enough with respect to the asset returns to be priced.


The discount factor relation, equation (26), ties the return  $R_{t}$  of an asset to its price via the expectation of its product with  $m$ . It will be useful to separate  $R_{t}$  out to understand further the relation between  $m$  and  $R_{t}$ . Again using the covariance formula, equation (31), we have

$$
1 = \operatorname{Co v} [ m, R_{t + 1} ] + E [ m ] E \left[ R_{t + 1} \right] \tag {34}
$$

Suppose that a risk-free asset with gross return  $R_{f} = 1 + r$  is available, where  $r$  is the usual risk-free rate. Applying equation (34) to the risk-free asset, the first term will be zero, and hence

$$
E [ m ] = \frac{1}{1 + r} \tag {35}
$$

Note that this equation is true for all possible discount factors and is an extension of earlier equation (20). In other words, for all possible stochastic discount factors, their mean must be equal to  $1 / (1 + r)$  to price the risk-free asset.

Now we multiply equation (34) by  $R_{f}$  on both sides, and obtain

$$
E \left[ R_{t + 1} \right] - R_{f} = - R_{f} \operatorname{Co v} [ m, R_{t + 1} ]
$$

This says that an asset's return in excess of the risk-free rate will be higher if it has a larger negative covariance with  $m$ . Recall that the covariance is related to correlation and standard deviations by

$$
\operatorname{Co v} [ x, y ] = \sigma (x) \times \sigma (y) \times \operatorname{Co rr} (x, y)
$$ where  $\sigma (\cdot)$  denotes the standard deviation function. Since the correlation is always between  $-1$  and  $1$ , we have from the earlier equation that


$$
\begin{array}{l} \left| E \left[ R_{t + 1} \right] - R_{f} \right| = R_{f} \left| C o v [ m, R_{t + 1} ] \right| \\ \leq R_{f} \times \sigma (m) \times \sigma \left(R_{t + 1}\right) \\ \end{array}
$$

Separating terms on  $m$  from those on  $R_{t + 1}$  we have a lower bound on the standard deviation of  $m$  as denoted by  $\sigma (m)$

$$
\frac{\sigma (m)}{E [ m ]} \geq \frac{| E [ R_{t + 1} ] - R_{f} |}{\sigma \left(R_{t + 1}\right)} \tag {36}
$$

The right-hand side, the ratio of the expected return on a risky asset to its standard deviation, is the Sharpe ratio that measures the extra return beyond the risk-free rate per unit of asset risk. The relationship given by equation (36) says that, for any discount factor that prices the assets, it must have enough variability so that its standard deviation divided by its mean must be greater than the Sharpe ratio of any risky asset in the economy.

The above lower bound on  $\sigma(m)$  is known as the Hansen-Jagannathan bound. It is an important result since if an asset pricing model fails to pass this bound, then the proposed asset pricing model can be rejected. For example, to test the validity of either the discount factor model given by equation (18) for a finite state economy, or the consumption-based asset pricing given by equation (22), or the CAPM and the APT, one can test first whether it passes the bound given by (36). No further testing will be necessary if it fails the Hansen-Jagannathan bound. Theoretically, Kan and Zhou (2006) show that the Hansen-Jagannathan bound can be tightened substantially with the use of information on the state variables of the stochastic discount factor.

## KEY POINTS

- A complete market is one in which any desired payoff in the future can be generated by a suitable portfolio of the existing assets in the economy.
- In a world where the number of states (future scenarios) is finite, a market is complete if and only if this number is equal to the rank of the asset payoff matrix. In particular, it is necessary for the number of assets to be greater than the number of states.
- The law of one price states that any two assets with identical payoffs in the future must have the same price today.

- A linear pricing rule means that the price of a basket of assets is equal to the sum of the prices of those assets in the basket. The law of one price is true if and only if the linear pricing rule is true.
- The state price is the price one has to pay today to obtain a one dollar payoff in a particular future state and nothing in other states. The existence of the state price is equivalent to the validity of the law of one price. It will be unique if the market is in addition complete.
- There are two types of arbitrage opportunities. The first is paying nothing today and obtaining something in the future, and the second is obtaining something today with no future obligations.
- The fundamental theorem of asset pricing asserts the equivalence of three key issues in finance: (1) absence of arbitrage; (2) existence of a positive linear pricing rule; and (3) existence of an investor who prefers more to less and who has maximized utility (no more free lunches to pick up from the economy).
- Due to risk, a rational investor will not pay a price equal to the expected value of an asset and will instead discount it by a suitable factor for compensation for taking on the risk. A stochastic discount factor is a random variable such that the expected value of its product with the asset payoffs is the rational price of the asset. The stochastic discount extends the risk-free discounting (time value of money) to the risky asset case and is the same for pricing all the assets in the economy.
- The CAPM and APT are special cases of stochastic discount factor models in which the discount factor is a linear function of the market factor or APT factors. Moreover, almost all asset models can be formulated as stochastic discount factor models.
- The Hansen-Jagannathan bound provides a simple bound on the variance of a stochastic discount factor, so that one can examine whether the stochastic discount factor satisfies some basic restrictions on the data.

If not, we can reject it without further analysis.

## REFERENCES

Dybvig, P. H., and Ross, S. A. (1987). Arbitrage. In J. Eatwell, M. Milgate, and P. Newman (eds.), A Dictionary of Economics: Vol. 1. Macmillan Press, London, 100-106.
Hansen, L. P., and Jagannathan, R. (1991). Implications of security market data for models of dynamic economies. Journal of Political Economy 99:225-262.

Kan, R., and Zhou, G. (2006). A new variance bound on the stochastic discount factor. Journal of Business 79: 941-961.
Lintner, J. (1965). The valuation of risk assets and the selection of risky investments in stock portfolio and capital budgets. Review of Economics and Statistics 47, 1: 13-37.
Mossin, J. (1966). Equilibrium in a capital asset market. *Econometrica* 34, October: 768-783.
Ross, S. A. (1976). The arbitrage theory of capital asset pricing. Journal of Economic Theory 13, December: 343-362.
Sharpe, W. F. (1964). Capital asset prices. Journal of Finance 19, 3: 425-442.

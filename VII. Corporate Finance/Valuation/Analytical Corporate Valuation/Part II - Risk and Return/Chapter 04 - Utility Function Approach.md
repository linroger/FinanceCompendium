---
title: Chapter 04 - Utility Function Approach
parent_directory: Analytical Corporate Valuation
formatted: 2025-12-20 11:03:25 PM
formatter_model: claude-sonnet-4-5-20250929
cli-tool: claude-code
primary_tags:
  - utility theory
  - risk aversion
  - portfolio theory
  - expected utility
  - decision making
secondary_tags:
  - utility functions
  - risk measurement
  - risk tolerance
  - risk preferences
  - von neumann morgenstern
  - certainty equivalent
  - risk premium
  - indifference curves
  - portfolio optimization
  - mean variance analysis
  - absolute risk aversion
  - relative risk aversion
  - CARA utility functions
  - CRRA utility functions
  - quadratic utility
  - logarithmic utility
  - exponential utility
cssclasses: academia
---

# Chapter 04 - Utility Function Approach

![Utility Function Approach](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/87fea16b-33f6-43ec-8056-5ef3565ac4c2/4df73873f90e42f72f67c4c02ccea7eb1ab2401b174640fbcc5dabdc3ea5af7d.jpg)

**Abstract** - In the context of decisions under uncertainty investors try to maximize the expected return on investment and minimize investment risk. Unfortunately, there is a trade-off between these two aims. The theory of the choices under uncertainty leads the decision-making process in capital markets. The aim is to analyse the behaviour of the rational investor under uncertainty. Specifically, the aim of the theory is not to define a set of criteria for the investor's preference for general validity because all investors are different from one another. Otherwise, the aim of the theory is to define a set of criteria of the decision-making process based on a few principles characterized by generality, rationality, economic significance, consistency with individual criteria, and therefore able to have a normative function. In this regard, the theory defines the criteria by which the rational investor chooses between the real possible options, considering the restrictions, on the basis of the expected effects that could be achieved according to their nature and that can be sorted in consideration of the relative probability. The portfolio choices (or portfolio selection) is a problem related to wealth allocation between different investment assets. In this context, the portfolio choices will be analysed based on the two main criteria:

- utility functions criteria
- mean-variance criteria

This chapter analyses the first criteria, while the next chapter analyses the second criteria.

## 4.1 Decision Under Uncertainty

Any financial operation involves movements of money over time. There are two main variables: capital (in monetary dimensions) and time. On the basis of these two variables, investors try to maximize the expected return on investment and minimize the time period of the investment. There is a trade-off between these two aims.

In conditions of certainty, capital and time are known. There is a perfect and known relationship between decision-making and its effects in terms of both capital and time. Consequently, for each decision its effects in terms of capital and time are known, and the decision to be made can be presumed from the defined and expected effects in terms of capital and time.

On the contrary, in conditions of uncertainty, at least one of the two variables (capital and time) is unknown. The effects of the decision cannot be known ex-ante. Normally, once time has been defined, the capital value can only be expected. Indeed, it can take on different values, none of which are known at the moment of the decision.

Therefore, in the case of uncertainty between decisions and its effects in terms of capital and time, a third variable must be introduced: the "states of nature". It is uncontrollable and usually defined in terms of probability distribution associated with the possible events to be achieved.

Therefore, the effects on capital and time are a function of the decision made as well as the state of nature that could be determined in the future. Consequently, for each decision there could be $N$ different effects on capital and time unknown ex-ante, and also once the expected effects in terms of capital and time have been defined, the decision to be made cannot be presumed.

Since the investors can be defined as risk averse, the variable states of nature can be defined in terms of risk (Saltari 2011; Castellani et al. 2005).

The theory of the choices under uncertainty leads the decision-making process in capital markets. The aim is to analyse the behaviour of the rational investor under uncertainty (Campbell 2015; Varian 1992; Kreps 2012; Gravelle and Rees 1992; Mankiw 2017; Perloff 2016). Specifically, the aim of the theory is not to define a set of criteria for the investor's preference for general validity because all investors are different from one another. On the contrary, the aim of the theory is to define a set of criteria of the decision-making process based on few principles characterized by generality, rationality, economic significance, consistency with individual criteria, and therefore able to have a normative function.

In this sense, the theory defines the criteria by which the rational investor chooses between the real possible options by considering the restrictions, on the basis of the expected effects that could be achieved according to the state of nature and that can be sorted by considering the associate probability (Castellani et al. 2005; Saltari 2011).

In conditions of uncertainty, by assuming the time defined, the relationship between decision, states of nature and effects in terms of capital, can be defined as follows:

$$
y_{i, j} = p \left(a_i; s_j\right) \tag{4.1}
$$

where:

- $a_i$ : are the decisions (for $i = 1, 2, 3, \ldots, n$) and each of them belongs to the set of possible decisions $(D)$ so that $a_i \in D$;
- $s_j$ : are the states of nature (for $j = 1,2,3,\ldots,n$) and each of them belongs to the set of possible states of nature $(S)$ so that $s_j \in S$;
- $y_{i,j}$ : is the effect of the i-th decision $(a_i)$ when the j-th state of nature $(s_j)$ is achieved. It is a real number the real number $(y_{i,j})$ associated with each pair $(a_i; s_j)$ (noted $p(a_i; s_j)$).

This relationship can be represented by using the matrix Decisions-States of Nature as in Table 4.1 as follows:

It is worth noting that this relationship is based on the assumption of no correlation between the set of possible decisions $(D)$ and the set of possible states of nature $(S)$. Then, each decision $(a_i)$ can never affect the state of nature $(s_j)$.

The best way to solve the problem of the choices under uncertainty, is to assimilate, in some way, the problem of decisions under uncertainty to the problem of decisions under certainty. This would allow for the use of decisions under uncertainty of the analytical instrumentation usually used in decisions under certainty. In this sense, the reasoning can be structured as follows.

The uncertainty is due to the states of nature. A probability can be assigned $(\pi_s \text{for } s = 1, 2, 3, \ldots, S)$ to each state of nature to be achieved. Equation (4.1) can be rewritten as follows:

$$
\mathrm{y}_{\mathrm{i}, \mathrm{j}} = \mathrm{p} \left(\mathrm{a}_{\mathrm{i}}; \pi_{\mathrm{s}} \left(\mathrm{s}_{\mathrm{j}}\right)\right) \tag{4.2}
$$

In this case, it can be defined a random variable $(\tilde{X}_a)$ to associate the real number $(y_{i,j})$ to the pair $(a_i,s_j)$, as follows:

$$
\tilde{X} \left(a_i, s_j\right) = y_{i,j} \tag{4.3}
$$

Therefore, it is possible to substitute with decision $(a_i)$ the random variable associated $(\tilde{X}_a)$. Therefore, the probability distribution $(F_a)$, can be associated to each random variable, as follows:

$$
F_a (s) = y \tag{4.4}
$$

**Table 4.1** - Matrix decisions-states of nature

| | | States of nature (s) | | | |
|---|---|---|---|---|---|
| | | s1 | s2 | s3 | sm |
| Decisions (a) | a1 | y11 | y12 | y13 | y1m |
| | a2 | y21 | y22 | y23 | y2m |
| | a3 | y31 | y32 | y33 | y3m |
| | an | yn1 | yn2 | yn1 | ynm |

The effects are the results of the combination between decisions and the probability associated with the state of nature expected. Therefore it is possible to associate a probability distribution to each decision. This probability can be estimated based on the relative frequencies or purely subjective.

The choice between different decisions becomes the choice between different probability distributions. Investor's preferences are expressed according to the probability distribution associated with the decision. The choice refers to the probability distribution associated with the decision.

By assuming that investors have to choose among different probability distributions, they can be considered as goods and basket of goods in the theory of choice under certainty. By choosing among different probability distributions, it is implicitly assumed that they are characterized by certainty and not uncertainty. In other words, the investor choosing among different probability distributions assumes that they are certain (Cesari 2012a, b; Saltari 2011). Consequently, it is possible to define the problem of choice under uncertainty in the same way as the problem of choice under certainty (Hirshleifer and Riley 1992).

This consequence has a relevant corollary. If the problem of choice under uncertainty can be equated to the problem of choice under certainty, then it is possible to use the analytical instruments of the choices under certainty to the choices under uncertainty. Therefore, the theory of the utility function can be used and therefore the best choice is the one that allows for utility maximization.

In this context, the utility function is used to represent and order the investor's preferences. Decisions are evaluated based on their expected utility only. The preferred decision is the one that has the highest expected utility, or in other terms, maximizing expected utility.

Based on this process, the problem of the choice under uncertainty can be faced as a sorting problem of the decisions based on their associated probability distribution and by using the utility functions. Therefore, there are two variables to be defined (Saltari 2011):

- the probability distribution associated to each decision;
- the utility function to be used.

Formally, the utility of the i-th decision $(a_i)$ can be defined as follows:

$$
E [ U (a_i) ] = \pi_1 U \left(y_{a_i, 1}\right) + \pi_2 U \left(y_{a_i, 2}\right) + \dots + \pi_{S} U \left(y_{a_i, S}\right) = \sum_{s = 1}^{S} \pi_{s} U \left(y_{a_i, s}\right) \tag{4.5}
$$

where:

- $a_i$ : is the i-th decision (for $i = 1,2,\dots,n$) among the possible ones ( $a \in D$);
- $U(.)$ : is the utility function defined on the effects of the decision;
- $y_{a_i, S}$ : are the effects arising from the joint combination between the i-th decision $(a_j)$ and the s-th state of nature (for $s = 1, 2, \ldots, S$);
- $\pi_S$ : is the probability associated with execution of the s-th state of nature (for $s = 1,2,\ldots,S$).

Based on Eq. (4.5) the decision $A$ is preferred to the decision $B$, only if the expected utility of the decision $A$ is greater than the decision $B$, as follows:

$$
A \succ B \leftrightarrow \sum_{s = 1}^{S} \pi_{s} U \left(y_{A, s}\right) > \sum_{s = 1}^{S} \pi_{s} U \left(y_{B, s}\right) \tag{4.6}
$$

The possibility to equate the choices under uncertainty to the choices under certainty, with the consequence of using the utility functions, requires the strict adhesion of the same postulates about the investor's behaviour. These postulates define the axiomatic approach. Generally, the axioms define the baseline properties of the rational behaviour of the investor. The investor's decisions must be aligned with the axioms. The investors' behaviour can be considered as rational only if there is coherence between the investors' behaviour and the axioms and his preferences can be classified according to the utility functions (Saltari 2011).

It is worth noting that it is the axiomatic approach that guarantees the coherence and the rigorous nature of the theory of decisions under uncertainty (Von Neumann and Morgenstern 1944; Arrow 1984; Hirshleifer and Riley 1992; Varian 1992; Kreps 1979, 1990; Fishburn and Kochenberger 1979; Heap et al. 1992; Saltari 2011). There are five axioms:

1. completeness and consistency;
2. monotonicity;
3. continuity;
4. independence or substitutability;
5. reduction.

Among these, the most relevant axioms are those of continuity and independence. In fact the most relevant criticisms over time have been focused on these axioms.

### Axiom 1: Completeness and Consistency

The individual preferences are complete and consistent.

Preferences are complete in the sense that, given two probability distributions, there is always the possibility for the investor to find the one he prefers or to express his indifference to the choice. This helps to avoid conditions of doubt between alternatives.

By assuming two probability distribution, $p \in q$, we have:

$$
p \succcurlyeq q \quad \text{or} \quad q \succcurlyeq p \quad \text{or} \quad p \sim q \tag{4.7}
$$

The preferences are also consistent because they are transitive.

If the distribution of probability $p$ is preferred, at least to the probability distribution of $q$, and if, in turn, the probability distribution $q$ is preferred at least to the probability distribution $r$, then the probability distribution $p$ is preferred at least to the probability distribution $r$. If the preferences are not transitive, it is not possible to identify an optimal probability distribution. Formally:

$$
p \succcurlyeq q \quad \text{and} \quad q \succcurlyeq r \Rightarrow p \succcurlyeq r \tag{4.8}
$$

### Axiom 2: Monotonicity

Given a decision, if two distributions of probability are associated with the same effects, the decision that provides the best effects with the highest level of probability is preferred.

Given two degenerate distributions $(\delta)$, the first providing the best result $(\delta_m)$ with certainty and the second providing the worst result $(\delta_p)$ with certainty and using $\alpha$ and $\beta$ to indicate the probability including between 0 and 1, and using the symbols $o$ and $\oplus$ to indicate how the distributions are made, we have:

$$
\alpha \circ \delta_{m} \oplus (1 - \alpha) \circ \delta_{p} \succcurlyeq \beta \circ \delta_{m} \oplus (1 - \beta) \circ \delta_{p} \Leftrightarrow \alpha \geq \beta \tag{4.9}
$$

Therefore, given two degenerate distributions (or deterministic distribution) $(\delta_m$ and $\delta_p)$, the preference is function of the probability $(\alpha$ and $\beta)$ of execution and their combination.

It is worth noting that a non-degenerate distribution can be obtained through their combination with the probability $\alpha$ and $\beta$ from the two degenerate distributions $(\delta_m$ and $\delta_p)$. In this sense, $[\alpha o\delta_m\oplus (1 - \alpha)o\delta_p]$ and $[\beta o\delta_m\oplus (1 - \beta)o\delta_p]$ are two of the possible non-degenerate distributions. For each one there is a probability $(\alpha$ or $\beta)$ to obtain $\delta_m$ and the complement to 1 of this probability $((1 - \alpha)$ or $(1 - \beta))$ to obtain $\delta_p$.

### Axiom 3: Continuity

The preferences are continuous. Given two positions, it is always possible to construct an intermediate position in function of the investor's preference. Generally, this allows for construction of a sequence of positions that are closer and closer to the preferred position.

Denoted by $r$ the degenerate distributions that assigns probability 1 to the result $x$ so that $r = \delta_x$, with $\alpha$ the probability between 0 and 1, and with $P$ the set of probability distribution. Assuming that the choices can be made between two alternatives:

- alternative 1: achieving a defined result with certainty that is assumed to be equal to $\delta_x$;
- alternative 2: achieving a probability distribution $\left[\alpha o\delta_m\oplus (1 - \alpha)o\delta_p\right]$ resulting in the degenerate distributions to achieve the best result $(\delta_m)$ and the worst result $(\delta_p)$ with certainty.

In this case, we have:

$$
\forall r \in P \exists \alpha \in [ 0, 1 ]: r \sim \alpha o \delta_{m} \oplus (1 - \alpha) o \delta_{p} \tag{4.10}
$$

The relationship shows that:

- if the probability $\alpha$ is close to 1, the investor prefers the second alternative: the probability distribution provides a higher probability of achieving the result equal to the best result of the degenerate distribution $\delta_m$;
- if the probability $\alpha$ is close to 0, the investor prefers the first alternative: the probability distribution provides a higher probability of achieving the result equal to the worst result of the degenerate distribution $\delta_p$.

Therefore, given the two positions it is always possible to construct an intermediate position based on a specific investor's preference operating through the "mixture". In fact, it is always possible to find a value of $\alpha$ in order to make the investor indifferent between the probability distribution and the certain consequence $x$.

Therefore, given two alternatives, one excellent and the other one bad, due to the effects of continuity, it is always possible to obtain an equi-preferred value based on their combination through the probability $\alpha$.

It is worth noting that the value of $\alpha$ is the utility of $x$: $\alpha = U(x)$. Therefore, for this value of $\alpha$, the certain result $x$ defines the certainty equivalent of the probability distribution $[\alpha o \delta_m \oplus (1 - \alpha) o \delta_p]$. In other words, $x$ is the result, that if obtained with certainty, it is equivalent to the probability distribution because it has the same utility. Consequently, the probability $\alpha$ can be considered as an investor's risk aversion.

### Axiom 4: Independence or Substitutability

The probability distribution $p$ is indifferent to the probability distribution $q$ if any other probability distribution $r$ is considered and the probability $\alpha$ between 0 and 1, we have:

$$
\alpha o p \oplus (1 - \alpha) o r \sim \alpha o q \oplus (1 - \alpha) o r \tag{4.11}
$$

Each of the two terms of the relationship can be considered as a particular probability distribution, where with probability $\alpha$ the probability distribution $p$ is obtained (left side of the relationship) or the probability distribution $q$ (right side of the relationship), and with residual probability $(1 - \alpha)$ the probability distribution $r$ for both terms is obtained.

The difference between the two sides of the relationship $([\alpha op \oplus (1 - \alpha)or]$ and $[\alpha oq \oplus (1 - \alpha)or])$ is due to the probability distributions $p$ and $q$. Therefore, the indifference between the two terms of the relationship implies the indifference between $p$ and $q$. Consequently, there is no change to the preference between two probability distributions when an additional random element is introduced if it is added in the same manner in both probability distributions.

This axiom is also called "axiom of substitutability", because if $p$ and $q$ are indifferent among them, the probability distribution $p$ can be replaced by the probability distribution $q$, obtaining a new probability distribution that is equivalent.

### Axiom 5: Reduction

For the decision-making process only the final probability associated to the effects is relevant. The way in which they are defined is not important.

Given the two degenerate distributions $(\delta)$, the first that generates the best result with certainty $(\delta_m)$ and the second that generates the worst result with certainty $(\delta_p)$, and using $\alpha$ and $\beta$ to indicate the probability including between 0 and 1, we have:

$$
\alpha o [ \beta o \delta_{m} \oplus (1 - \beta) o \delta_{p} ] \oplus (1 - \alpha) o \delta_{p} \sim \gamma o \delta_{m} \oplus (1 - \gamma) o \delta_{p} \tag{4.12}
$$

Therefore, $\gamma = \alpha \beta$ is the total probability to obtain $\delta_m$. Consequently, for the investor it is indifferent to obtain $\delta_m$ at one time with probability $\gamma$, or twice with probability $\alpha$ and $\beta$.

Based on the axiomatic approach, if the kind of the investor's preferences respects these five axioms, then it is possible to use the utility function $(U(.))$. They are used to describe and order the investor's preferences only. Then, the value of the utility function, in absolute terms, is not relevant.

The probability distribution $p$ can be preferred to the probability distribution $q$ only if the expected utility of $p$ is higher than the expected utility of $q$. Formally:

$$
\begin{array}{l}
p \succ q \Leftrightarrow \sum U (x) p (x) \geq \sum U (x) q (x) \\
p \succcurlyeq q \Leftrightarrow \sum U (x) p (x) \geq \sum U (x) q (x) \tag{4.13} \\
p \sim q \Leftrightarrow \sum U (x) p (x) \geq \sum U (x) q (x) \\
\end{array}
$$

## 4.2 Investor Behaviour and Risk Measurement

To further understand the investor's behaviour on risk, there are two basic principles that should be kept in mind: the first one refers to reducing margin utility and the second one is always preferred more money than less.

A fair lottery can be defined as one with an expected value equal to zero. Risky aversion implies that the individual would not accept the fair lottery. Specifically, consider the random payoff $x$ where:

$$
x = \left\{ \begin{array}{l} x_1 \text{ with probability } (p) \\ x_2 \text{ with probability } (1 - p) \end{array} \right.
$$

A fair lottery must have an expected value of zero. Therefore, we have:

$$
E (x) = x_1 p + x_2 (1 - p) = 0
$$

It implies that:

$$
E (x) = x_1 p + x_2 (1 - p) = 0 \rightarrow x_1 p + x_2 (1 - p) = 0 \rightarrow\begin{array}{c}p = - \frac{x_2}{\left(x_1 - x_2\right)}\\ \text{or}\\ \frac{x_1}{x_2} = - \frac{(1 - p)}{p}\end{array}\tag{4.14}
$$

One of the useful concepts is the expected utility. Considering a random variable end-of-period wealth $W$ can have $n$ possible value $W_i$ with probability $p_i$ so that $\sum_{i=1}^{n} p_i = 1$. From any wealth outcome $W_i$ the form $U(W_i)$ denotes the utility from any wealth outcome $W_i$ while $E[U(W_i)]$ denotes the expected utility from any wealth outcome $W_i$.

The relation between the probability $p_i$ associated to any possible wealth outcome $W_i$, its utility and expected utility, is the following:

$$
E [ U (W_i) ] = \sum_{i = 1}^{n} p_i U (W_i) \tag{4.15}
$$

Now it is possible to analyse the relationship between the utility functions and the risk in the investor's perspective.

To do this, three baseline assumptions are necessary.

The first baseline assumption states that the decision is measured in terms of wealth as defined in its monetary value $(w)$. Then money is the only argument of the utility function $(U(w))$. This assumption is restrictive and has three main consequences (Saltari 2011):

1. the decisions have "mono-dimensional consequences": the consequences can be shown through a number on the real number line;
2. the decisions have "homogeneous consequences": the heterogeneous behaviour of investors can be neglected;
3. the function of the expected utility is "monotonous".

The second baseline assumption states that the utility function $U(w)$ must be continuous and twice-differentiable.

The third baseline assumption states that "more is always preferred to less". In mathematical terms it implies that the first derivative must always be strictly positive, as follows:

$$
U \left(w_2\right) > U \left(w_1\right) \quad \forall w_2 > w_1 \rightarrow U' (W) > 0 \tag{4.16}
$$

It is true regardless of the behaviour of the investor to risk. It follows that the utility function is increasing and therefore the investor is non-satiable.

It defines the sign of the second derivative and then the shape of their utility function. Specifically, the second derivative can be:

- $U''(w) < 0$: in this case the utility function is concave and the investor is risk averse;
- $U''(w) > 0$: in this case the utility function is convex and the investor is risk lover;
- $U''(w) = 0$: in this case the utility function is linear and the investor is risk neutral.

It is possible to summarize these different behaviours as in Fig. 4.1.

### Risk Behaviour

There are three main types of investor's behaviour at risk: (a) risk aversion; (b) risk lover; (c) risk neutral (Arrow 1965, 1971; Campbell 2015; Kreps 2012; Varian 1992)

![Utility function and risk behaviour](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/87fea16b-33f6-43ec-8056-5ef3565ac4c2/8aa603d6001ee426d6441586597a4eb8951b620f51b3cdccfc3b8552ff110766.jpg)
**Fig. 4.1** - Utility function and risk behaviour

#### (a) Risk Aversion

In the case of risk aversion, the second derivative of the utility function is negative $(U''(w) < 0)$. It is possible to use the Jensen's inequality. Given a function $f(x)$ where $x$ is a random variable, $f(E(x)) > E[f(x)]$ only if $f(x)$ is a function with a concave shape. If $f(x)$ has a concave shape no one segment is capable of joining two points on the graph in any point. Therefore, the segment $l(x) = a + bx$ lies always above the function: $l(x) = a + bx \geq f(x)$. The same values $l(E(x)) = f(E(x))$ can only be found in the tangent point $E(x)$. Since $l(x)$ is a linear function, it follows that: $l(E(x)) = E(l(x))$. Therefore $f(E(x)) = l(E(x)) = E(l(x)) \geq E(f(x))$. The inequality follows the condition that $l(x) - f(x) \geq 0$. Therefore, by considering the expectation, we have: $E[l(x) - f(x)] \geq 0$, and therefore $E(l(x)) \geq E(f(x))$. Therefore, on the basis of on the Jensen's inequality, we have:

$$
E [ U (w) ] < U [ E (w) ] \tag{4.17}
$$

Assuming that the random variable $(w)$ can assume two values, $w_1$ and $w_2$, with probability $p_1$ and $(1 - p_1)$ respectively. The $E[U(w)]$ and $U[E(w)]$ can be explicated as follows:

$$
E [ U (w) ] = p_1 U (w_1) + (1 - p_1) U (w_2)
$$

and

$$
U [ E (w) ] = U \left[ p_1 w_1 + \left(1 - p_1\right) w_2 \right]
$$

Substituting in Eq. (4.17), we have:

$$
p_1 U \left(w_1\right) + \left(1 - p_1\right) U \left(w_2\right) < U \left[ p_1 w_1 + \left(1 - p_1\right) w_2 \right] \tag{4.18}
$$

Equation (4.18) implies the concave shape of the function $U(w)$ in all of domain $D$, as shown in Fig. 4.2.

In (Part A) of the Fig. 4.2, the point $A_1$ coordinates are $(w_1, U(w_1))$, while the coordinates of the point $A_2$ are $(w_2, U(w_2))$. The coordinates of the point $A^*$ are:

$$
w^* = p_1 w_1 + (1 - p_1) w_2
$$

$$
U^* = p_1 U \left(w_1\right) + \left(1 - p_1\right) U \left(w_2\right)
$$

Therefore, point $A^*$ is positioned on the segment $A_1A_2$. If the utility function $U(w)$ is concave, for $w = w^*$ the function has an ordinate $(U(w^*))$ that is greater than the point $A^*$ ordinate that is $(U^*)$. It is because the curve is positioned above the segment $A_1A_2$, and therefore $p_1U(w_1) + (1 - p_1)U(w_2) < U[p_1w_1 + (1 - p_1)w_2]$.

In (Part B) of Fig. 4.2, the coordinates of the point $A_1$ are $(w_1, U(w_1))$, while the coordinates of the point $A_2$ are $(w_2, U(w_2))$.

Considering the probability distribution $(p)$, and associating the portability $p_1$ to the realization of $A_1$ and the probability $(1 - p_1)$ to the realization of $A_2$, the coordinates of the point $A^*$ on the segment $A_1A_2$ are:

$$
A^* \equiv (E (w); E [ U (w) ])
$$

The point $C(w)$ is the certainty equivalent. The distance $\pi$ measures risk aversion in monetary terms rather than in terms of utility. Specifically, the amount of money $\pi$ is the known maximum amount that the investor would be willing to pay to avoid the investment. If the investor pays $\pi$ he receives the expected value of investment for certain.

Therefore, in the case of risk aversion, the utility function is:

(a) strictly increasing and therefore the first derivative is positive $(U'(w) > 0)$;
(b) concave and therefore the second derivative is negative $(U''(w) < 0)$.

It is worth noting that a risk-averse investor is also said to have a diminishing margin utility of wealth. Therefore, each additional unit of wealth adds less to utility, the higher the initial level of wealth and then in mathematical terms it implies that $U''(w) < 0$. The degree of risk aversion is given by the concavity of the utility function and it is equivalent to the absolute size of $U''(w)$. Also, the degree of risk aversion, even for a specific individual, may depend on initial wealth and the size of the investment.

![Risk aversion and the concave shape of the utility function](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/87fea16b-33f6-43ec-8056-5ef3565ac4c2/f11f2522e8ec903d45e05d53a04b8a39c329e9d2cc12a2f2901e1c2b6f24487b.jpg)
**Fig. 4.2** - Risk aversion and the concave shape of the utility function

#### (b) Risk Lover

In the case of a risk lover (or risk seeker), the second derivative of the utility function is positive $(U''(w) > 0)$. In this case, we have:

$$
\mathrm{E} [ \mathrm{U} (\mathrm{w}) ] > U [ \mathrm{E} (\mathrm{w}) ] \tag{4.19}
$$

Assuming that the random variable $(w)$ can assume two values, $w_1$ and $w_2$, with probability $p_1$ and $(1 - p_1)$ respectively. The $E[U(w)]$ and $U[E(w)]$ can be explicated as follows:

$$
E [ U (w) ] = p_1 U (w_1) + (1 - p_1) U (w_2)
$$

and

$$
U [ E (w) ] = U [ p_1 w_1 + (1 - p_1) w_2 ]
$$

Substituting in Eq. (4.19), we have:

$$
\mathrm{p}_1 \mathrm{U} \left(\mathrm{w}_1\right) + \left(1 - \mathrm{p}_1\right) \mathrm{U} \left(\mathrm{w}_2\right) > U \left[ \mathrm{p}_1 \mathrm{w}_1 + \left(1 - \mathrm{p}_1\right) \mathrm{w}_2 \right] \tag{4.20}
$$

Equation (4.20) implies that the convex shape of the function $U(w)$ in all domain $D$, as shown in Fig. 4.3.

![Risk lover and the convex shape of the utility function](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/87fea16b-33f6-43ec-8056-5ef3565ac4c2/524997a6ff5bb1930f82dd8d9d2dca56afba9d3ac4fe95208664ed54618237ed.jpg)
**Fig. 4.3** - Risk lover and the convex shape of the utility function

In (Part A) of Fig. 4.3, the coordinates of the point $A_1$ are $(w_1,u(w_1))$ while the coordinates of the point $A_2$ are $(w_2,u(w_2))$. The coordinates of point $A^*$ are:

$$
w^* = p_1 w_1 + (1 - p_1) w_2
$$

$$
U^* = p_1 U \left(w_1\right) + \left(1 - p_1\right) U \left(w_2\right)
$$

Point $A^*$ is positioned on the segment $A_1A_2$.

If the utility function $U(w)$ is convex, for $w = w^*$ the function has an ordinate $(U(w^*))$ that is lower than the point $A^*$ ordinate that is $(U^*)$. This is because the curve is positioned below the segment $A_1A_2$, and therefore $p_1U(w_1) + (1 - p_1)U(w_2) > U[p_1w_1 + (1 - p_1)w_2]$.

In (Part B) of Fig. 4.3, the coordinates of point $A_1$ are $(w_1;U(w_1))$, while the coordinates of point $A_2$ are $(w_2;U(w_2))$.

Considering the probability distribution $(p)$, and associating probability $p_1$ to the realization of $A_1$ and the probability $(1 - p_1)$ to the realization of $A_2$, the coordinates of point $A^*$ on the segment $A_1A_2$ are:

$$
A^* \equiv (E (w); E [ U (w) ])
$$

Therefore, in the case of risk seeking, the utility function is:

(a) strictly increasing and therefore the first derivative is positive $(U'(w) > 0)$;
(b) convex and therefore the second derivative is positive $(U''(w) > 0)$.

#### (c) Risk Neutral

In the case of risk neutral (or indifferent to risk), the second derivative of the utility function is equal to zero $(U''(w) = 0)$. In this case we have:

$$
E[U(w)] = U[E(w)] \tag{4.21}
$$

Assuming that the random variable $(w)$ can assume two values, $w_1$ and $w_2$, with probability $p_1$ and $(1 - p_1)$ respectively. The $E[U(w)]$ and $U[E(w)]$ can be explicated as follows:

In this case, $U(w) = a + bw$ with $b > 0$. The utility function is unique unless it has a linear transformation. Therefore, we have $a = 0$ and $b = 1$. Therefore, $U(w) = w$ and consequently:

$$
p_1 U(w_1) + (1 - p_1) U(w_2) = U[p_1 w_1 + (1 - p_1) w_2] \tag{4.22}
$$

Equation (4.22) implies the linearity of the function $U(w)$ in all of the domain $D$, as shown in Fig. 4.4.

![Risk neutral and the linearity of the utility function](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/87fea16b-33f6-43ec-8056-5ef3565ac4c2/3ff5d1515c7c97e630720c4685aa80fbad83b2cca3c02f9b6eb5f51c7b0d37f2.jpg)
**Fig. 4.4** - Risk neutral and the linearity of the utility function

Therefore, in the case of risk neutral, the utility function is:

(a) strictly increasing (non satiety) and therefore the first derivative is positive $(U'(w) > 0)$;
(b) linear and therefore the second derivative is null $(U''(w) = 0)$.

### Risk Aversion Measurement

Having defined the relationship between utility function $U(w)$ and the risk behaviour of the investor, the main problem is the measurement of risk aversion. There are two main instruments that can be used (Pratt 1964; Arrow 1965):

- the Absolute Risk Aversion (ARA), and the corresponding Absolute Risk Tolerance (ART);
- the Relative Risk Aversion (RRA), and the corresponding Relative Risk Tolerance (RRT).

#### (a) Absolute Risk Aversion

The Absolute Risk Aversion (ARA) $(\lambda)$ is defined by the ratio between the first and second derivative of the utility function $(U(.))$ as defined in the current monetary wealth $(w_0)$ (it is a monetary amount) so that $U(w_0)$, as follows:

$$
\lambda_{(w_0)} = -\frac{U''(w_0)}{U'(w_0)} \tag{4.23}
$$

The coefficient $\lambda_{\mathrm{(w_0)}}$ measures the concavity of the utility function $(\mathrm{U}(\mathrm{w}_0))$ in the point $\mathbf{w}_0$. It is the Arrow (1970)-Pratt (1964) that measures the absolute (local) risk aversion. The measure of risk aversion is defined as "local" because it is a function of the initial level of wealth. The larger $\lambda_{\mathrm{(w_0)}}$, the greater the degree of risk aversion.

The first derivative is always positive (function increasing), while the second derivative is negative if the function is concave (risk aversion) and positive if the function is convex (risk seeking). Specifically:

- risk aversion: the utility function $(\mathrm{U}(\mathrm{w}_0))$ is concave. Consequently, the coefficient $\lambda_{(\mathrm{w}_0)}$ is positive:

$$
\lambda_{(w_0)} = -\frac{(-U''(w_0))}{U'(w_0)} = \frac{U''(w_0)}{U'(w_0)} > 0 \quad \forall w_0 \in D \tag{4.24}
$$

The coefficient $\lambda_{\mathrm{(w_0)}}$ is always positive. It increases as the second derivative increases and therefore with an increase in the absolute risk aversion of the investor;

- risk lover: the utility function $(\mathrm{U}(\mathrm{w}_0))$ is convex. Consequently, the coefficient $\lambda_{(\mathrm{w}_0)}$ is negative:

$$
\lambda_{(w_0)} = -\frac{(+U''(w_0))}{U'(w_0)} = -\frac{U''(w_0)}{U'(w_0)} < 0 \quad \forall w_0 \in D \tag{4.25}
$$

Therefore, the higher the coefficient $\lambda_{(w_0)}$, the higher the absolute risk aversion of the investor.

In comparative terms, if the investor $A$ is more absolute risk aversion than the investor $B$, the coefficient of investor $A \left( \lambda_{\left( w_0 \right)}^A \right)$ is higher than the coefficient of the investor $B \left( \lambda_{\left( w_0 \right)}^B \right)$ for each level of wealth $(w_0)$, as follows:

$$
\lambda_{\left(\mathrm{w}_0\right)}^{\mathrm{A}} > \lambda_{\left(\mathrm{w}_0\right)}^{\mathrm{B}}
$$

The coefficient $\lambda_{(w_0)}$ does not change in the case of linear transformation of the utility function $(U(w_0))$. It is calculated according to the ratio between the first and the second derivatives. Therefore, by considering a utility function:

$$
V \left(w_0\right) = a U \left(w_0\right) + b
$$

We have:

$$
\lambda_{(w_0)}^V = -\frac{V''(w_0)}{V'(w_0)} = -\frac{aU''(w_0)}{aU'(w_0)} = -\frac{U''(w_0)}{U'(w_0)} = \lambda_{(w_0)}^U \tag{4.26}
$$

The inverse of the Absolute Risk Aversion is defined Absolute Risk Tolerance (ART) $(\tau)$. Formally, it is equal to:

$$
\tau_{(w_0)} = \frac{1}{\lambda_{(w_0)}} = -\frac{U'(w_0)}{U''(w_0)} \tag{4.27}
$$

Therefore, the higher the absolute risk aversion of the investor, the lower the absolute risk tolerance, and also, the lower the absolute risk aversion of the investor, the higher the absolute risk tolerance.

Therefore, the higher the coefficient $\tau_{(w_0)}$, the higher the absolute risk tolerance of the investor.

In comparative terms, if the investor  $A$  is more absolute risk tolerant than investor  $B$ , the coefficient of the investor  $A(\tau_{(w_0)}^A)$  is higher than the coefficient of the investor  $B(\tau_{(w_0)}^B)$ , for each level of wealth  $(w_0)$ , as follows:

$$
\tau_ {(w _ {0})} ^ {A} > \tau_ {(w _ {0})} ^ {B}
$$

#### (b) Relative Risk Aversion

The Relative Risk Aversion (RRA) $(\rho)$ based on the current monetary wealth $(w_0)$ (it is monetary amount), is defined as follows:

$$
\rho_{(w_0)} = -w_0 \frac{U''(w_0)}{U'(w_0)} \tag{4.28}
$$

The coefficient $\rho_{\left(\mathrm{w}_0\right)}$ is expressed in the same unit of wealth measure $(\mathrm{w}_0)$. It also implies stabilization of the coefficient $\lambda_{\left(\mathrm{w}_0\right)}$.

As in the case of the coefficient $\lambda_{\mathrm{(w_0)}}$, the first derivative is always positive (function increasing), while the second derivative is negative if the function is concave (risk aversion) and positive if the function is convex (risk seeking), we have:

- risk aversion: the utility function $(\mathrm{U}(\mathrm{w}_0))$ is concave in all dominions (D). Consequently, the coefficient $\rho_{(\mathrm{w}_0)}$ is positive:

$$
\rho_{(w_0)} = -w_0 \frac{(-U''(w_0))}{U'(w_0)} = w_0 \frac{U''(w_0)}{U'(w_0)} > 0 \quad \forall w_0 \in D \tag{4.29}
$$

The coefficient $\rho_{\left(\mathrm{w}_0\right)}$ is always positive. It increases with an increase in the second derivative and therefore with an increase in the relative risk aversion of the investor. Generally, $\lambda_{\left(\mathrm{w}_0\right)}$ and $\rho_{\left(\mathrm{w}_0\right)}$ are measures of how the investor's risk preferences change with changes in wealth around the initial "local" level of wealth.

- risk lover: the utility function $(\mathrm{U}(\mathrm{w}_0))$ is convex in all dominions (D). Consequently, the coefficient $\rho_{(\mathrm{w}_0)}$ is negative:

$$
\rho_{(w_0)} = -w_0 \frac{(+U''(w_0))}{U'(w_0)} = -w_0 \frac{U''(w_0)}{U'(w_0)} < 0 \quad \forall w_0 \in D \tag{4.30}
$$

Therefore, the higher the coefficient $\rho_{(w_0)}$, the higher the relative risk aversion of the investor.

In comparative terms, if the investor $A$ is more relative risk aversion than the investor $B$, the coefficient of the investor $A \left( \rho_{\left( w_0 \right)}^A \right)$ is higher than the coefficient of the investor $B \left( \rho_{\left( w_0 \right)}^B \right)$, for each level of wealth $(w_0)$, as follows:

$$
\rho_{\left(\mathrm{w}_0\right)}^{\mathrm{A}} > \rho_{\left(\mathrm{w}_0\right)}^{\mathrm{B}}
$$

Also, in this case, the coefficient $\rho_{\left(\mathrm{w}_0\right)}$ does not change in the case of linear transformation of the utility function $\left(\mathrm{U}\left(\mathrm{w}_0\right)\right)$. It is calculated on the ratio between the first and the second derivatives. Therefore, by considering a utility function:

$$
\mathrm{V} \left(\mathrm{w}_0\right) = \mathrm{a U} \left(\mathrm{w}_0\right) + \mathrm{b}
$$

We have:

$$
\rho_{(w_0)}^V = -w_0 \frac{V''(w_0)}{V'(w_0)} = -w_0 \frac{aU''(w_0)}{aU'(w_0)} = -w_0 \frac{U''(w_0)}{U'(w_0)} = \rho_{(w_0)}^U \tag{4.31}
$$

The inverse of Relative Risk Aversion is defined Relative Risk Tolerance (RRT) $(\mathcal{T})$ as follows:

$$
\mathcal{T}_{(w_0)} = \frac{1}{\rho_{(w_0)}} = -\frac{1}{w_0} \frac{U'(w_0)}{U''(w_0)} \tag{4.32}
$$
$$

Therefore, the higher the relative risk aversion of the investor, the lower the relative risk tolerance, and in the same way, the lower the relative risk aversion of the investor, the higher the relative risk tolerance. Therefore, the higher the coefficient $T_{(w_0)}$, the higher the relative risk tolerance of the investor.

In comparative terms, if the investor $A$ is more relative risk tolerant than the investor $B$, the coefficient of the investor $A \left( T_{\mathrm{(w_0)}}^{\mathrm{A}} \right)$ is higher than the coefficient of the investor $B \left( T_{\mathrm{(w_0)}}^{\mathrm{B}} \right)$, for each level of wealth $(w_0)$, as follows:

$$
\mathcal{T}_{\left(\mathrm{w}_0\right)}^{\mathrm{A}} > \mathcal{T}_{\left(\mathrm{w}_0\right)}^{\mathrm{B}}
$$

## 4.3 Utility Functions

Different mathematical functions generate different implications for the form of risk aversion.

According to the dynamic of the coefficients of Absolute and Relative Risk Aversion, the utility functions can be classified into five main categories:

- Constant Absolute Risk Aversion (CARA): the utility function is characterized by a constant Absolute Risk Aversion (ARA) ($\lambda$). In this class the most useful utility function is the negative exponential.
- Constant Relative Risk Aversion (CRRA): the utility function is characterized by a constant Relative Risk Aversion (RRA) $(\rho)$. In this class the most useful utility functions are power, logarithmic, and quadratic.
- Hyperbolic Absolute Risk Aversion (HARA): the utility function is characterized by a hyperbolic Absolute Risk Aversion (ARA) $(\lambda)$.
- Hyperbolic Relative Risk Aversion (HRRA): the utility function is characterized by a hyperbolic Relative Risk Aversion (RRA) $(\rho)$.
- Decreasing Absolute Risk Aversion (DARA): it generalizes the class of utility functions HARA.

Among all of the utility functions that can be used, some of them can be defined as "standard" because they are the most common ones used in literature.

### Linear

The function can be defined as follows:

$$
U(w) = a + bw \quad b > 0 \tag{4.33}
$$

where $a$ is an arbitrary constant.

The first derivative is always positive and therefore the function is always increasing. Indeed:

$$
U'(w) = b
$$

The second derivative is equal to zero. It implies that there is no concavity and then the investor is risk neutral.

Therefore, it implies that the risk neutral is equivalent to the linear utility of the function.

### Power

The function can be defined as follows:

$$
U(w) = \frac{1}{a} w^a \quad a < 1; a \neq 0; w > 0 \tag{4.34}
$$

The first and second derivatives are the following:

$$
U'(w) = \frac{1}{a} a w^{a - 1} = w^{a - 1}
$$

$$
U''(w) = (a - 1) w^{a - 2}
$$

The absolute risk aversion $(\lambda_{(\mathrm{w})})$ and the relative risk aversion $(\rho_{(\mathrm{w})})$ are the following:

$$
\lambda_{(w)} = -\frac{U''(w)}{U'(w)} = -\left[ \frac{(a - 1) w^{a - 2}}{w^{a - 1}} \right] = -\left[ \frac{(a - 1) w^{a - 1} w^{-1}}{w^{a - 1}} \right] = -\left[ \frac{a - 1}{w} \right] = \frac{1 - a}{w}
$$

$$
\rho_{(w)} = -w \frac{U''(w)}{U'(w)} = -w \left(\frac{a - 1}{w}\right) = 1 - a
$$

Therefore, the absolute risk aversion $(\lambda_{(\mathrm{w})})$ decreases as wealth (w) increases. The relative risk aversion $(\rho_{(\mathrm{w})})$ is independent of the level of wealth (w) and therefore it is constant. For this reason, this function is classified according to function groups CRRA.

Also by considering that:

$$
\ln[U'(w)] = \ln[w^{a - 1}] = (a - 1) \ln[w]
$$

the $(a - 1)$ can be considered as the elasticity of marginal utility with respect to wealth.

### Logarithmic

The function can be defined as follows:

$$
U(w) = a \ln w + b \quad w > 0; a, b \text{ arbitrary constants} \tag{4.35}
$$

The basic assumption is that the increase in utility is directly proportional with wealth $(w)$ increases and it is inversely proportional to initial wealth.

The first and second derivatives are the following:

$$
U'(w) = a \frac{1}{w} = a w^{-1}
$$

$$
U''(w) = a(-1) w^{-2} = -a w^{-2}
$$

The absolute risk aversion $(\lambda_{(\mathrm{w})})$ and the relative risk aversion $(\rho_{(\mathrm{w})})$ are the following:

$$
\lambda_{(w)} = -\frac{U''(w)}{U'(w)} = -\left[ \frac{-a w^{-2}}{a w^{-1}} \right] = w^{-1} = \frac{1}{w}
$$

Therefore, the absolute risk aversion $(\lambda_{(\mathrm{w})})$ decreases as wealth (w) increases. The Relative Risk Aversion $(\rho_{(\mathrm{w})})$ is independent on the level of wealth (w) and therefore it is constant. For this reason, this function is classified according to function groups CRRA.

### Negative Exponential

The function can be defined as follows:

$$
U(w) = a \left(1 - e^{-\frac{w}{a}}\right) \quad a > 0 \tag{4.36}
$$

This is a superiorly limited exponential function. The parameter $\underline{a}$ is the upper extremity and therefore it represents the maximum potentiality. Indeed, the function for $\mathrm{U(w)} = a$ has a horizontal asymptote:

$$
\begin{aligned}
\lim_{w \to +\infty} [U(w)] &= \lim_{w \to +\infty} \left[ a \left(1 - e^{-\frac{w}{a}}\right)\right] = a \left(1 - e^{-\infty}\right) \\
&= a \left(1 - \frac{1}{e^{\infty}}\right) = a (1 - 0) = a
\end{aligned}
$$

The first and second derivatives are the following:

$$
U'(w) = a \left(-\left(-\frac{1}{a}\right) e^{-\frac{w}{a}}\right) = a \left(\frac{1}{a} e^{-\frac{w}{a}}\right) = e^{-\frac{w}{a}}
$$

$$
U''(w) = \left(-\frac{1}{a}\right) e^{-\frac{w}{a}}
$$

The absolute risk aversion $(\lambda_{(\mathrm{w})})$ and the relative risk aversion $(\rho_{(\mathrm{w})})$ are the following:

$$
\lambda_{(\mathrm{w})} = - \frac{\mathrm{U}^{\prime \prime} (\mathrm{w})}{\mathrm{U}^{\prime} (w)} = - \left[ \frac{(- \frac{1}{a}) e^{- \frac{w}{a}}}{e^{- \frac{w}{a}}} \right] = \frac{1}{a}
$$

$$
\rho_{(\mathrm{w})} = - \mathrm{w} \frac{\mathrm{U}^{\prime \prime} (w)}{\mathrm{U}^{\prime} (w)} = - w \left[ \frac{\left(- \frac{1}{a}\right) e^{- \frac{w}{a}}}{e^{- \frac{w}{a}}} \right] = - w \left(- \frac{1}{a}\right) = w \frac{1}{a}
$$

In this case, the relative risk aversion $(\rho_{(\mathrm{w})})$ increases as wealth (w) increases. Differently, the absolute risk aversion $(\lambda_{(\mathrm{w})})$ is independent on the wealth (w) and therefore it is constant. For this reason, this function is classified into the group of functions CARA.

### Quadratic

The function can be defined as follows:

$$
\mathrm{U} (\mathrm{w}) = \mathrm{w} - \frac{\mathrm{a}}{2} \mathrm{w}^2 \quad \mathrm{a} > 0 \tag{4.37}
$$

The first and second derivatives are the following:

$$
\mathrm{U}^{\prime} (\mathrm{w}) = 1 - \frac{\mathrm{a}}{2} 2 \mathrm{w}^{2 - 1} = 1 - a w
$$

$$
\mathrm{U}^{\prime \prime} (\mathrm{w}) = - \mathrm{a}
$$

The absolute risk aversion $(\lambda_{(\mathrm{w})})$ and the relative risk aversion $(\rho_{(\mathrm{w})})$ are the following:

$$
\lambda_{(\mathrm{w})} = - \frac{\mathrm{U}^{\prime \prime} (\mathrm{w})}{\mathrm{U}^{\prime} (w)} = - \left[ \frac{- \mathrm{a}}{1 - a w} \right] = \frac{a}{1 - a w}
$$

$$
\rho_{\mathrm{(w)}} = - \mathrm{w} \frac{\mathrm{U}^{\prime \prime} (w)}{\mathrm{U}^{\prime} (w)} = - w \left[ \frac{- \mathrm{a}}{1 - a w} \right] = w \left(\frac{a}{1 - a w}\right) = \frac{w a}{1 - a w}
$$

It is relevant to know that the first derivative must be positive, and therefore the quadratic is only defined for a value of wealth $(w)$ equal to:

$$
1 - a w > 0 \rightarrow w < \frac{1}{a} \tag{4.38}
$$

This is known as the "bliss point".

Marginal utility is linear in wealth and this can sometimes be a useful property. It is worth noting that the absolute risk aversion $(\lambda_{(\mathrm{w})})$ and relative risk aversion $(\rho_{(\mathrm{w})})$ are not constant and they are both functions of wealth $(w)$. Specifically, the absolute and relative risk aversion increases with the increase in wealth $(w)$. Undoubtedly, it seems a counter-intuitive result. However, this utility function has no main advantages that justify its preference (Cesari 2012b; Castellani et al. 2005).

The first advantage of utility function is that the quadratic utility function can be considered as the approximation to the second order of any utility function based on the Taylor's polynomial development. Therefore, it can be considered as a generalization of the specific utility functions used by the investor.

Assuming that the investor has a wealth equal to $k$ and he is characterized by a utility function $U(w)$ derivable infinitely. Therefore, it can be developed in a Taylor series around the point $w_0$ as follows:

$$
\mathrm{U} \left(\mathrm{w}_0\right) = \sum_{\mathrm{n} = 0}^{\infty} \frac{\mathrm{U}^{(\mathrm{n})} \left(\mathrm{w}_0\right)}{\mathrm{n} !} \left(\mathrm{w} - \mathrm{w}_0\right)^{\mathrm{n}} \rightarrow (k + k_1) = \sum_{\mathrm{n} = 0}^{\infty} \frac{\mathrm{U}^{(\mathrm{n})} (k)}{\mathrm{n} !} k_1^{\mathrm{n}}
$$

where $k_1$ is the increase of initial wealth $(k)$.

Since the terms of degree are higher than the second, it represents an infinitesimal of a higher order than $k_1^2$, for small increments in $k_1$ their contribution can be neglected.

It generates an equality to be considered as an approximation of the second order, as follows (Castellani et al. 2005):

For $n = 2$, we have:

$$
U (k + k_1) = \sum_{n = 0}^{2} \frac{U^{(n)} (k)}{n !} k_1^n
$$

and therefore:

$$
U (k + k_1) = \frac{U^{(0)} (k)}{0 !} k_1^0 + \frac{U^{\prime} (k)}{1 !} k_1^1 + \frac{U^{\prime \prime} (k)}{2 !} k_1^2
$$

by convention:

$$
0! = 1; 1! = 1; 2! = 2 \cdot 1 = 2
$$

We have:

$$
\mathrm{U} (\mathrm{k} + \mathrm{k}_1) = \mathrm{U} (\mathrm{k}) + \mathrm{U}^{\prime} (\mathrm{k}) k_1^1 + \frac{\mathrm{U}^{\prime \prime} (\mathrm{k})}{2} \mathrm{k}_1^2
$$

Subtracting $U(k)$ and dividing by $U'(k)$ both terms, we have:

$$
U (k + k_1) - U (k) = U (k) + U^{\prime} (k) k_1 + \frac{U^{\prime \prime} (k)}{2} k_1^2 - U (k)
$$

and therefore:

$$
\begin{array}{l}
\frac{U (k + k_1)}{U^{\prime} (k)} - \frac{U (k)}{U^{\prime} (k)} = \frac{U^{\prime} (k)}{U^{\prime} (k)} k_1 + \frac{1}{2} \frac{U^{\prime \prime} (k)}{U^{\prime} (k)} k_1^2 \\
\frac{\mathrm{U} (\mathrm{k} + \mathrm{k}_1)}{\mathrm{U}^{\prime} (\mathrm{k})} - \frac{\mathrm{U} (\mathrm{k})}{\mathrm{U}^{\prime} (\mathrm{k})} = \mathrm{k}_1 + \frac{1}{2} \frac{\mathrm{U}^{\prime \prime} (\mathrm{k})}{\mathrm{U}^{\prime} (\mathrm{k})} \mathrm{k}_1^2 \\
\end{array}
$$

Placing:

$$
\begin{array}{l}
\mathrm{a} = \frac{1}{\mathrm{U}^{\prime} (\mathrm{k})} \rightarrow \mathrm{U}^{\prime} (\mathrm{k}) > 0 \rightarrow a > 0 \\
\mathsf{b} = - \frac{\mathbf{U} (\mathbf{k})}{\mathbf{U}^{\prime} (\mathbf{k})} \\
\end{array}
$$

The first term of equation is equal to:

$$
\frac{\mathrm{U} (\mathrm{k} + \mathrm{k}_1)}{\mathrm{U}^{\prime} (\mathrm{k})} - \frac{\mathrm{U} (\mathrm{k})}{\mathrm{U}^{\prime} (\mathrm{k})} = \mathrm{a U} (\mathrm{k} + \mathrm{k}_1) + \mathrm{b}
$$

It is a positive linear transformation of the equation $U(k + k_1)$. Therefore, it is equivalent as follows:

$$
\frac{\mathrm{U} \left(\mathrm{k} + \mathrm{k}_1\right)}{\mathrm{U}^{\prime} (\mathrm{k})} - \frac{\mathrm{U} (\mathrm{k})}{\mathrm{U}^{\prime} (\mathrm{k})} = \mathrm{a U} \left(\mathrm{k} + \mathrm{k}_1\right) + \mathrm{b} \sim \mathrm{U} \left(\mathrm{k} + \mathrm{k}_1\right)
$$

The second term of equation can be rewritten on the basis of the absolute risk aversion coefficient as follows:

$$
\lambda_{(\mathrm{k})} = - \frac{\mathrm{U}^{\prime \prime} (\mathrm{k})}{\mathrm{U}^{\prime} (\mathrm{k})} \rightarrow \mathrm{k}_1 + \frac{1}{2} \frac{\mathrm{U}^{\prime \prime} (\mathrm{k})}{\mathrm{U}^{\prime} (\mathrm{k})} \mathrm{k}_1^2 = \mathrm{k}_1 - \frac{1}{2} \lambda_{(\mathrm{k})} \mathrm{k}_1^2
$$

Replacing the first and second terms in the equation, we have:

$$
\mathrm{U} (\mathrm{k} + \mathrm{k}_1) = \mathrm{k}_1 - \frac{1}{2} \lambda_{(\mathrm{k})} \mathrm{k}_1^2
$$

In order to represent the absolute risk aversion coefficient in the same unit measures of $k$, the absolute risk tolerance coefficient $(\tau_{(w_0)} = \frac{1}{\lambda_{(w_0)}})$ can be used. In this case Eq. (4.39) can be rewritten as follows:

$$
\mathrm{U} (\mathrm{k} + \mathrm{k}_1) = \mathrm{k}_1 - \frac{1}{2 \tau_{\left(\mathrm{w}_0\right)}} \mathrm{k}_1^2 \tag{4.39}
$$

Equation (4.39) can be considered as a generic quadratic utility function.

The absolute risk tolerance coefficient $(\tau_{(w_0)})$ is greater, the higher the value of $k$ around which the Taylor series is developed.

In order to be certain of the goodness of the approximation carried out, we should assume that the absolute risk tolerance $\tau_{(w_0)}$ is much greater than $k_1$ (Castellani et al. 2005):

$$
\tau_{\left(\mathrm{w}_0\right)} \gg \mathrm{k}_1
$$

The second advantage of utility function is that the quadratic utility function is coherent with the mean-variance criteria. Consequently, the quadratic utility function allows for compatibility between the utility function approach and the mean-variance approach.

The investor with a quadratic utility function chooses according to criteria coherent with mean and variance. He chooses based on mean $E[u(w)]$ and variance $Var(w)$.

Specifically, if the investor maximizes expected utility of end-of-period portfolio wealth, we can see that this is equivalent to maximising a function of expected portfolio returns and portfolio variance providing:

(a) either utility is quadratic,
(b) or portfolio returns are normally distributed and utility is concave.

Assuming that an initial wealth equal to $w_0$ and the stochastic portfolio return is equal to $R_p$. At the end of the period, we have:

$$
w = w_0 \left(1 + R_p\right) \leftrightarrow U (w) = U \left[ w_0 \left(1 + R_p\right) \right]
$$

Expanding $U(R_p)$ in a Taylor series around the mean of $R_p \approx \mu_p$, we have:

$$
U \left(R_p\right) = U \left(\mu_p\right) + \left(R_p - \mu_p\right) U^{\prime} \left(\mu_p\right) + \frac{1}{2} \left(R_p - \mu_p\right)^2 U^{\prime \prime} \left(\mu_p\right) + \text{higher order terms}
$$

Considering that $E(R_p - \mu_p) = 0$ and $E(R_p - \mu_p)^2 = \sigma_P^2$. Therefore, we have:

$$
U \left(R_p\right) = U \left(\mu_p\right) + \frac{1}{2} \sigma_P^2 U^{\prime \prime} \left(\mu_p\right) + E [ \text{higher-order terms} ]
$$

If the utility function is quadratic, then the derivative greater than the second are equal to zero.

If the return are normally distributed, we have:

(a) $E[(R_p - \mu_p)^n ] = 0$ for $n$ odd, and
(b) $E[(R_p - \mu_p)^n ]$ for $n$ even is a function only of the variance $\sigma_P^2$

Therefore, in both cases (utility is quadratic or portfolio returns are normally distributed) so $E[U(R_p)]$ is a function of only the mean $\mu_p$ and the variance $\sigma_P^2$.

It is worth noting that until a specific utility function is specified, the functional relationship between $E[U(R_p)]$ and $(\mu_p, \sigma_P^2)$ is not known and hence it is impossible to determine whether or not there is an analytic closed-form solution for asset demands (Cuthbertson and Nitzsche 2014).

This result can be verified through a simple reasoning (Cesari 2012b). Assuming a random variables $\tilde{W}$. Assuming that investor uses the quadratic utility function as defined in Eq. (4.37) as follows:

$$
\mathrm{U} (\mathrm{w}) = \mathrm{w} - \frac{\mathrm{a}}{2} \mathrm{w}^2 \quad \mathrm{a} > 0
$$

The expected utility for the variable can be computed as follows:

$$
\mathrm{E} \left[ \mathrm{U} (\widetilde{W}) \right] = \mathrm{E} \left[ \widetilde{\mathbf{W}} - \frac{\mathrm{a}}{2} \widetilde{\mathbf{W}}^2 \right] = \mathrm{E} \left(\widetilde{\mathbf{W}}\right) - \frac{\mathrm{a}}{2} \mathrm{E} \left(\widetilde{\mathbf{W}}^2\right)
$$

Based on the following property of variance:

$$
Var (x) = E \left(X^2\right) - E (X)^2 \quad \rightarrow \quad E \left(X^2\right) = Var (x) + E (X)^2
$$

the equation can be rewritten as follows:

$$
\mathrm{E} \left(\widetilde{\mathrm{W}}^2\right) = \operatorname{Var} \left(\widetilde{\mathrm{W}}\right) + \mathrm{E} \left(\widetilde{\mathrm{W}}\right)^2
$$

and by substituting we have:

$$
\operatorname{E} \left[ \mathrm{U} (\widetilde{\mathrm{W}}) \right] = \operatorname{E} (\widetilde{\mathrm{W}}) - \frac{\mathrm{a}}{2} \left[ \operatorname{Var} (\widetilde{\mathrm{W}}) + \operatorname{E} (\widetilde{\mathrm{W}})^2 \right]
$$

This equation shows how the investor chooses on the basis of two variables: mean $E(\widetilde{W})$ and variance $Var(\widetilde{W})$. The relationship can be defined as follows:

$$
\operatorname{E} \left[ \mathrm{U} (\widetilde{\mathrm{W}}) \right] = \Psi \left[ \binom{+}{\mathrm{E} (\widetilde{\mathrm{W}})}; \left(\operatorname{Var} (\widetilde{\mathrm{W}})\right) \right] \tag{4.40}
$$

The function $\Psi$ is called mean-variance indirect utility (or indirect mean-variance utility function), and it shows that:

- the mean has a positive effect: the mean increases, increase the level of welfare;
- the variance has a negative effect: the variance increases, decrease the level of welfare.

Also, the function $\Psi$ shows that as the means are equal, the investor's choices are based on risk.

By considering two random variables $(\widetilde{W_1};\widetilde{W_2})$

Therefore, if there are two random variables $(\widetilde{W}_1; \widetilde{W}_2)$ the investor choose on the basis of Eq. (4.40) as follows:

$$
\mathrm{E} \left(\widetilde{\mathrm{W}_1}\right) = \mathrm{E} \left(\widetilde{\mathrm{W}_2}\right) \quad \text{and} \quad \operatorname{Var} \left(\widetilde{\mathrm{W}_1}\right) < \operatorname{Var} \left(\widetilde{\mathrm{W}_2}\right) \Rightarrow \widetilde{\mathrm{W}_1} \gtrsim \widetilde{\mathrm{W}_2}
$$

$$
\operatorname{E} \left(\widetilde{\mathrm{W}_1}\right) > E \left(\widetilde{\mathrm{W}_2}\right) \quad \text{and} \quad \operatorname{Var} \left(\widetilde{\mathrm{W}_1}\right) = \operatorname{Var} \left(\widetilde{\mathrm{W}_2}\right) \Rightarrow \widetilde{\mathrm{W}_1} \gtrsim \widetilde{\mathrm{W}_2}
$$

### Hyperbolic Absolute Risk Aversion (HARA) and Decreasing Absolute Risk Aversion (DARA)

Generalisation of the utility functions that can be classified in the Hyperbolic Absolute Risk Aversion (HARA) class, is the following:

$$
\mathrm{U} (\mathrm{w}) = \frac{1}{a_2 - 1} \left(a_1 + a_2 w\right)^{1 - \frac{1}{a_1}} \quad w > - \frac{a_1}{a_2}; a_2 \neq 0 \tag{4.41}
$$

where $a_1$ and $a_2$ are arbitrary constants able to guarantee positive value of absolute risk aversion $(\lambda_{(\mathrm{w})})$.

Utility functions grouped in this class have the following absolute risk aversion $(\lambda_{(\mathrm{w})})$:

$$
\lambda_{(\mathrm{w})} = \frac{1}{\mathrm{a}_1 + \mathrm{a}_2 w} \tag{4.42}
$$

It is worth noting that the utility function power, negative exponential and quadratic can be grouped in the HARA class. Indeed they use a hyperbolic absolute risk aversion as follows:

- the absolute risk aversion of the power utility function is obtained by assuming $\mathrm{a}_1 = 0$ and $\mathrm{a}_2 = \frac{1}{1 - a}$ as follows:

$$
\lambda_{(\mathrm{w})} = \frac{1}{\mathrm{a}_1 + \mathrm{a}_2 w} \rightarrow \lambda_{(\mathrm{w})} = \frac{1}{\frac{w}{1 - a}} = \frac{1 - a}{w}
$$

- the absolute risk aversion of the negative exponential utility function is obtained by assuming $\mathrm{a}_1 = a$ and $\mathrm{a}_2 = 0$ as follows:

$$
\lambda_{(\mathrm{w})} = \frac{1}{\mathrm{a}_1 + \mathrm{a}_2 w} \rightarrow \lambda_{(\mathrm{w})} = \frac{1}{a}
$$

- the absolute risk aversion of the quadratic utility function is obtained by assuming $\mathrm{a}_1 = \frac{1}{a}$ and $\mathrm{a}_2 = -1$ as follows:

$$
\lambda_{(\mathrm{w})} = \frac{1}{\mathrm{a}_1 + \mathrm{a}_2 w} \rightarrow \lambda_{(\mathrm{w})} = \frac{1}{\frac{1}{a} - w} = \frac{1}{\frac{1 - a w}{a}} = \frac{\mathrm{a}}{1 - a w}
$$

The utility functions classified in the HARA group can be generalized in the class of Decreasing Absolute Risk Aversion (DARA). Generally, the HARA class uses a hyperbolic absolute risk aversion.

The generalization of the utility functions able to be grouped in DARA class, is the following:

$$
\mathrm{U} (\mathrm{w}) = \left(w + \frac{H}{G}\right)^{1 - \frac{1}{G}} \tag{4.43}
$$

where the absolute risk aversion is the following:

$$
\lambda_{(\mathrm{w})} = \frac{1}{\mathrm{G} w + H} = \frac{1}{\mathrm{G}} \cdot \frac{1}{\mathrm{w} + \frac{H}{G}} > 0 \tag{4.44}
$$

It is worth noting that by changing the value of $\mathbf{G}$ and $\mathbf{H}$ in the absolute risk aversion $(\lambda_{(\mathrm{w})})$ it is possible to obtain other classes. Indeed:

- for $\mathrm{H} = 0; \mathrm{G} > 0$: utility functions grouped in CRRA class are obtained;
- for $\mathrm{G} = 0; \mathrm{H} > 0$: utility functions grouped in CARA class are obtained.

The DARA generalization is the following:

$$
\frac{\partial \lambda_{(\mathrm{w})}}{\partial (w)} = - \frac{\mathrm{U}^{\prime \prime \prime} (w) \cdot \mathrm{U}^{\prime} (w) - [ \mathrm{U}^{\prime \prime} (w) ]^2}{[ \mathrm{U}^{\prime} (w) ]^2} < 0 \tag{4.45}
$$

In this case the third derivative is positive $(\mathrm{U}^{\prime \prime \prime}(w) > 0)$. It implies that as wealth increases, there is less absolute risk aversion.

In order to choose the utility function to be implemented, the following criteria can be used (Litner 1970):

- short-term decisions: a neutral risk can be assumed. Therefore, a zero absolute risk aversion is assumed $(\lambda_{(\mathrm{w})} = 0)$ and therefore the linear utility function can be used;
- medium-term decision: a constant risk can be assumed. Therefore, a constant absolute risk aversion can be assumed $(\lambda_{(\mathrm{w})} = a)$ and therefore the negative exponential utility function can be used;
- long-term period decision: a utility function in the DARA class can be assumed.

## 4.4 Utility Functions and Portfolio Choices

The portfolio choices (or portfolio selection) is a problem of the wealth allocation between different investment assets (Ingersoll 1987; Gravelle and Rees 1992; Markowitz 1952, 1956, 1959; Tobin 1958; Litner 1965a, b).

In this context, the portfolio choices will be analysed based on the two main criteria:

- the utility functions criteria;
- the mean-variance criteria.

This paragraph will focus on the first, while the next paragraph will focus on the second.

The aim of investors is to define the "optimum portfolio" capable of achieving maximisation of the expected utility.

The definition of this aim is simplification because the aim is based on a single parameter. However, it presents a disadvantage because it represents an over-simplification that ends up losing several key elements. In a context of risk aversion, in order to reduce the effects of the over-simplification, the objective of maximization of the expected utility can be declined in two sub-objectives:

- profit maximization;
- risk minimization.

The utility of the expected value of wealth $(\mathrm{U}[\mathrm{E}(\mathrm{w})])$ is equal to the sum of the expected value of the utility function $(\mathrm{E}[\mathrm{U}(\mathrm{w})])$ and the risk $(\Phi (\mathrm{w}))$ (Castellani et al. 2005), as follows:

$$
\mathrm{U} [ \mathrm{E} (\mathrm{w}) ] = \mathrm{E} [ \mathrm{U} (\mathrm{w}) ] + \Phi (\mathrm{w}) \tag{4.46}
$$

In a condition of risk aversion, the risk is always positive, while the risk is null in a condition of risk neutral or in the use of a degenerate variable.

Equation (4.46) can be re-written in terms of risk $(\Phi(w))$ or in terms of the expected value of the utility function $(E[U(w)])$ as follows:

$$
\mathrm{U} [ \mathrm{E} (\mathrm{w}) ] = \mathrm{E} [ \mathrm{U} (\mathrm{w}) ] + \Phi (\mathrm{w}) \rightarrow\begin{array}{l}\Phi (\mathrm{w}) = \mathrm{U} [ \mathrm{E} (\mathrm{w}) ] - \mathrm{E} [ \mathrm{U} (\mathrm{w}) ]\\\mathrm{E} [ \mathrm{U} (\mathrm{w}) ] = \mathrm{U} [ \mathrm{E} (\mathrm{w}) ] - \Phi (\mathrm{w})\end{array}\tag{4.47}
$$

Note that maximization of the expected value of the utility function $(E[U(w)])$ is due to maximization of the expected value of the wealth $(U[E(w)])$, as well as minimization of the risk $(\Phi (w))$. Consequently, the expected value of the utility is a function of the trade-off between risk and return.

Specifically, for a defined level of wealth $(w)$, using $m$ for the expected value of the wealth $(m = E(w))$, $\varphi$ the risk level $(\varphi = \Phi (w))$, and $U$ the expected utility $(U = E[U(w)])$, each financial position can be defined on the basis of the trade-off between risk $(\varphi)$ and return $(m)$ as follows (Castellani et al. 2005);

$$
\mathrm{U} (\varphi , \mathrm{m}) = \mathrm{U} (\mathrm{m}) - \varphi \tag{4.48}
$$

There is a subset of the plane $(\varphi, m)$ where the set of investment opportunities can be seen. If the utility function is continuous and derivable at least twice in the plane $(\varphi, m)$, the two partial derivatives are the following:

$$
\frac{\partial \mathrm{U}_{(\varphi , \mathbf{m})}}{\partial \mathbf{m}} = \mathrm{U}^{\prime} (\mathbf{m}) \tag{4.49}
$$

$$
\frac{\partial \mathbf{U}_{(\varphi , \mathbf{m})}}{\partial \varphi} = - 1
$$

Therefore, given two points in the plane $(\varphi ,m)$ they represent two financial positions:

- at the same risk $(\varphi)$ level: the point with the higher expected return $(m)$ is preferred. Therefore, for any value of the abscissa $(\varphi)$, the point with the higher ordinate $(m)$ is preferred because the utility function $(U)$ is increasing based on $m$ for any given $\varphi$;
- at the same expected return $(m)$ level: the point with the lower risk $(\varphi)$ is preferred. Therefore, for any value of the ordinate $(m)$, the point with the lower abscissa $(\varphi)$ is preferred because the utility function $(U)$ is concave based on $\varphi$ for any given $m$.

![Dominance of financial position in the plane](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/87fea16b-33f6-43ec-8056-5ef3565ac4c2/e11368133fddfe2c2372e11b9c5ab1f74820662fd0cbc64eae74c81ef8e8bb41.jpg)
**Fig. 4.5** - Dominance of financial position in the plane $(\varphi, \mathrm{m})$

Each point defines a financial position and it can be represented in the plane $(\varphi, m)$ as in Fig. 4.5 (adapted from Castellani et al. 2005).

Figure 4.5 shows that:

- point $A$ is preferred to points $B$ and $B'$ because they have the same risk $(\varphi)$, but the expected return $(m)$ of point $A$ is higher than that of points $B$ and $B'$; similarly, point $B'$ is preferred to point $B$: $A \succ B; A \succ B'; B' \succ B$.
- point $C$ is preferred to point $D$ because they have the same expected return $(m)$, but the risk of point $C$ is lower than that of point $D$: $C \succ D$.

At this stage of the analysis the main problem is related to the impossibility of defining relationships between points with different ordinates or abscissa (such as the preferences between point $A$ and points $C$ and $D$ and also between points $B$, $B'$ and $C$ and $D$) while it is possible to define relationships between points with the same abscissa or ordinate (such as the preferences between point $A$ and point $B'$ and $B$ or between $C$ and $D$).

The solution of the problem requires consideration of the objectives of $\varphi$ and $m$ jointly. For this objective the function $U(\varphi, m)$ can be used. Therefore, it is necessary to derive the level set (level curve) of the space $U(\varphi, m)$, and then the shape of the points in the plane $(\varphi, m)$ corresponding to the same level of the expected utility $(\bar{U})$, as follows (Castellani et al. 2005):

$$
\mathrm{U} (\varphi , \mathrm{m}) = \bar{\mathrm{U}}
$$

and therefore:

$$
\mathrm{U} (\mathrm{m}) = \varphi + \bar{\mathrm{U}} \tag{4.51}
$$

The utility function is always increasing (the first derivative is always positive). Then it is an injective function (one-to-one function) and its inverse is equal to:

$$
\mathrm{m} (\varphi) = \mathrm{U}^{- 1} (\varphi + \bar{\mathrm{U}}) \tag{4.52}
$$

Note that by placing the risk equal to zero $(\varphi = 0)$, we have:

$$
\mathrm{U} (\mathbf{m}) = \bar{\mathrm{U}}; \quad \overline{{\overline{\mathbf{m}}}} = \mathrm{U}^{- 1} (\bar{\mathrm{U}})
$$

Representing the intersection between the curve level $U(\varphi, m) = \bar{U}$ and the ordinate, and it represents the certainty equivalent of all points on the curve.

Based on the implicit function, the two first partial derivatives are the following:

$$
\begin{array}{l}
\frac{\partial \mathrm{m}}{\partial \varphi} = - \frac{\frac{\partial \mathrm{U}}{\partial \varphi}}{\frac{\partial \mathrm{U}}{\partial \mathrm{m}}} = - \frac{- 1}{\mathrm{U}^{\prime} (\mathrm{m})} = \frac{1}{\mathrm{U}^{\prime} (\mathrm{m})} \tag{4.53} \\
\frac{\partial \varphi}{\partial \mathrm{m}} = - \frac{\frac{\partial \mathrm{U}}{\partial \varphi}}{\frac{\partial \mathrm{U}}{\partial \mathrm{m}}} = - \frac{- 1}{\mathrm{U}^{\prime} (\mathrm{m})} = \frac{1}{\mathrm{U}^{\prime} (\mathrm{m})} \\
\end{array}
$$

The first derivative is always positive because the function is increasing, and therefore:

$$
\frac{1}{\mathrm{U}^{\prime} (\mathrm{m})} > 0 \tag{4.54}
$$

The second partial derivatives are the following:

$$
\begin{array}{l}
\frac{\partial^2 \mathbf{m}}{\partial \varphi^2} = \frac{\partial \left(\frac{1}{\overline{\mathbf{U}^{\prime} [ \mathbf{m}_{(\varphi)} ]}}\right)}{\partial \varphi} = - \frac{\mathbf{U}^{\prime \prime} (\mathbf{m})}{[ \mathbf{m}_{(\varphi)} ]^2} \frac{\mathrm{d} \mathbf{m}}{\mathrm{d} \varphi} = - \frac{\mathbf{U}^{\prime \prime} (\mathbf{m})}{[ \mathbf{U}^{\prime} (\mathbf{m}) ]^3} \tag{4.55} \\
\frac{\mathrm{d}^2 \varphi}{\mathrm{d m}^2} = \frac{\mathrm{d}}{\mathrm{d} \varphi} \frac{1}{\mathbf{U}^{\prime} [ \mathbf{m} (\varphi) ]} = - \frac{\mathbf{U}^{\prime \prime} (\mathbf{m})}{[ \mathbf{m} (\varphi) ]^2} \frac{\mathrm{d} \mathbf{m}}{\mathrm{d} \varphi} = - \frac{\mathbf{U}^{\prime \prime} (\mathbf{m})}{[ \mathbf{U}^{\prime} (\mathbf{m}) ]^3} \\
\end{array}
$$

The second derivative is negative because the risk aversion is assumed and therefore:

$$
- \frac{\mathrm{U}^{\prime \prime} (\mathrm{m})}{\left[ \mathrm{U}^{\prime} (\mathrm{m}) \right]^3} > 0 \tag{4.56}
$$

On the basis of the signs of the first and second derivatives, the curves in the plane $(\varphi ,m)$ are increasing function (for $m$) and convex (for $\varphi$), as shown in Fig. 4.6 (adapted from Castellani et al. 2005).

Figure 4.6 registers the indifference curves with regards to the values $\bar{u}_0, \bar{u}_1, \bar{u}_2$ of the expected utility where $\bar{u}_0 < \bar{u}_1 < \bar{u}_2$.

The points on the curve represent the financial positions of the investors.

Points $A$ and $C$ are indifferent among them because they have the same expected utility $(\bar{u}_2)$.

![Dominance of financial position in the plane based on indifference curves](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/87fea16b-33f6-43ec-8056-5ef3565ac4c2/ffa6122ea1622967dae7c4ec411d17c247987e8f499b33dda402c7ea30b38990.jpg)
**Fig. 4.6** - Dominance of financial position in the plane $(\varphi, \mathrm{m})$ based on indifference curves

Point $K_2$ represents the certainty equivalent of points $A$ and $C$, and also the points on the same curve.

Point $D$ is indifferent to point $B'$ that, in turn, is preferred to point $B$. Therefore, point $D$ is preferred to point $B$.

Point $K_0$ is indifferent to points $B^{\prime}$ and $D$, and all other points of the curve.

Having defined the single financial positions on the indifference curves, the problem of the portfolio choices can be solved based on the utility function criteria. There are two main phases (Castellani et al. 2005; Saltari 2011):

1. optimization phase;
2. maximization phase.

### Optimization Phase

It is quite clear that in the absence of constraints on risk $(\varphi)$ and expected return $(m)$ the optimal solution is given by: $\varphi = 0; m = \infty$. The presence of constraints generate a set of opportunities $(W)$ that always defines a subset of the plane $(\varphi, m)$. It is the presence of constraints on the two variables that results in the need for the Optimization phase. Its aim is to analyse separately the different partial objectives of the financial positions.

Within the set of opportunities $(W)$ a key role is played by the opportunity of frontier: it can be defined as the opportunity that minimizes the risk for a given level of the expected value. The constrained optimization problem can be defined as follows (Castellani et al. 2005):

$$
\left\{ \begin{array}{l}
\min_{\mathrm{w} \in \mathrm{W}} \Phi (\mathrm{w}) \\
\mathrm{E} (\mathrm{w}) = \mathrm{m}_0
\end{array} \right. \tag{4.57}
$$

where the first is the function to minimize and the second is the constraint.

![Opportunities frontier and the maximization points](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/87fea16b-33f6-43ec-8056-5ef3565ac4c2/11da29215bf28b9ff4aecb93569fc0fbdee79167c570ae7216aff2509620cdf8.jpg)
**Fig. 4.7** - Opportunities frontier and the maximization points

In Fig. 4.7 (adapted from Castellani et al. 2005) the set of opportunities $(W)$ is represented by the area bounded by the curve between points $S_5$ and $S_4$. It implies that the set of opportunities never touches the ordinate. Consequently, the free-risk positions are not included in the set of opportunities $(W)$ (Fig. 4.7).

Having defined a level of expected return equal to $m_0$, point $S_0$ (where $S_0 \in W$) defines the opportunity frontier. Point $S_0$ dominates all points to its right ($S_i$). They are all characterized by greater risk for the same expected return. Therefore, point $S_0$ is preferred to all of the others on its right ($S_i$), so that: $S_0 \succ S_i$.

By solving the constrained optimization of Eq. (4.57) for all values of $m_0$ the frontier opportunities are defined, defining the frontier of opportunities $(\mathcal{B})$: it is a subset of opportunities of frontier $(W)$ defined by the curve between points $S_5$ and $S_2$, and between points $S_3$ and $S_4$. On the frontier of the opportunity $(\mathcal{B})$ there may be opportunities that presents the same risk but with a different expected value (such as points $S_0$ and $S_0'$).

The efficient opportunity can be defined for every opportunity on the frontier of the opportunities $(\mathcal{B})$ which has a maximum expected value $(m)$ for the same risk level $(\varphi)$. Therefore, the efficient opportunity is the solution of the constrained optimization problem, as follows (Castellani et al. 2005):

$$
\left\{ \begin{array}{l}
\max_{\mathrm{w} \in \mathcal{B}} \mathrm{E} (\mathrm{w}) \\
\Phi (\mathrm{w}) = \varphi_0
\end{array} \right. \tag{4.58}
$$

where the first is the function to be maximized and the second is the constraint.

The set of the efficient opportunities for the different level of risk $(\varphi_0)$ defines the efficient frontier $(\varepsilon)$: it is a subset of the frontier of the opportunities $(\mathcal{B})$ that, in turn, is a subset of the set of opportunities $(W)$.

In Fig. 4.7 the efficient frontier is given by the curve portions (indicated by a continuous line) between points $S_1$ and $S_2$, and between points $S_3$ and $S_4$.

The curve portion (indicated by a dotted line) between points $S_1$ and $S_5$ is the portion of the frontier of opportunity $(\mathcal{B})$ that is dominated, and then is not efficient: for each point of the curve, it is possible to identify a point with same level of risk that offers higher expected value. The point $S_1$ has the minimum risk level.

The efficient frontier is given by an increasing function by definition because the first derivative is always positive. All points on the efficient frontier are characterized to be Pareto optimality: it is impossible to improve any one point without worse at least one other point.

The definition of the efficient frontier, allows for the separate analysis of the partial objectives of the financial positions. Therefore, with the definition of the efficient frontier, the Optimization phase is completed.

### Maximization Phase

The aim of the maximization phase is to identify the points that maximize expected utility.

Therefore, after identification of the points of optimum of the set of opportunities $(W)$, the maximum point is chosen. This point is positioned on the indifference curve with the maximum expected utility.

Therefore, it is necessary to identify the points $\hat{P}$ on the efficient frontier which are positioned on the indifference curve $U(\varphi, m) = \hat{u}$ with the highest expected utility $\hat{u}$.

In Fig. 4.7, points $\hat{P}_1$ and $\hat{P}_2$ represent the position of maximum expected utility and they are indifferent among them. Also point $\hat{P}_0$ is indifferent to points $\hat{P}_1$ and $\hat{P}_2$. Specifically, the ordinate $\overline{\overline{m}}$ of $\hat{P}_0$ is the certainty equivalent of the risky positions represented by the points $\hat{P}_1$ and $\hat{P}_2$. But $\hat{P}_0$ is outside of the set of the opportunities $(W)$ and therefore it is not a real accessible position. However, its meaning is relevant: the investor is indifferent to obtaining $\overline{\overline{m}}$ with certainty $(\hat{P}_0)$ or the set of opportunities $(W)$. Therefore, $\overline{\overline{m}}$ can be defined as the indifference price of the set of opportunities $(W)$. It is worth noting, that point $\hat{P}_0$, and therefore the value $\overline{\overline{m}}$, can be identified at the end of the optimization phase only (Castellani et al. 2005).

For greater understanding of the two phases of Optimization and Maximization for the portfolio choices under the utility function approach, three main cases can be analysed (Saltari 2011):

- (Case 1) two assets in the portfolio;
- (Case 2) more than two assets in the portfolio;
- (Case 3) more than two assets in the portfolio and one of them free-risk.

#### (Case 1) Two Assets in the Portfolio

Assuming two assets in the portfolio. Therefore, the investor has to share his wealth between asset $A_1$ and asset $A_2$. The current wealth of the investor to be invested, is the constraint: it does not change but it can only be shared between the two assets. Formally (Saltari 2011):

$$
\mathrm{P}_1^{\mathrm{A}} \mathrm{A}_1 + \mathrm{P}_2^{\mathrm{A}} \mathrm{A}_2 = \mathrm{P}_1^{\mathrm{A}} \overline{\mathrm{A}_1} + \mathrm{P}_2^{\mathrm{A}} \overline{\mathrm{A}_2} = \mathrm{w} \tag{4.59}
$$

where:

- $w$: is the current wealth held by the investor;
- $P_1^A$ and $P_2^A$: are the prices of Asset 1 and Asset 2 respectively;
- $A_1$ and $A_2$: are the amounts (number) of Asset 1 and Asset 2 respectively, purchased by the investor;
- $\overline{\mathrm{A}_1}$ and $\overline{\mathrm{A}_2}$: are the amounts (number) of Asset 1 and Asset 2 respectively, held by investor.

The current portion of wealth invested in the i-th asset $(\alpha_i)$ is equal to:

$$
\alpha_{\mathrm{i}} = \frac{\mathrm{P}_{\mathrm{i}}^{\mathrm{A}} \mathrm{A}_{\mathrm{i}}}{\mathrm{w}} \quad \text{or} \quad \alpha_{\mathrm{i}} = \frac{\mathrm{P}_{\mathrm{i}}^{\mathrm{A}} \bar{\mathrm{A}}_{\mathrm{i}}}{\mathrm{w}} \tag{4.60}
$$

where, the first is defined according to the amount of the i-th Asset purchased by the investor, while the second according to the amount of the i-th Asset held by the investor.

Considering that there are only two assets, the constraint can be defined on the bases of the sum of the portions of wealth invested in Asset 1 $(\alpha_1)$ and Asset 2 $(\alpha_2)$ as follows:

$$
\mathrm{P}_1^{\mathrm{A}} \mathrm{A}_1 + \mathrm{P}_2^{\mathrm{A}} \mathrm{A}_2 = \mathrm{w}
$$

by dividing each term by wealth (w), we have:

$$
\frac{\mathrm{P}_1^{\mathrm{A}} \mathrm{A}_1}{\mathrm{w}} + \frac{\mathrm{P}_2^{\mathrm{A}} \mathrm{A}_2}{\mathrm{w}} = \frac{\mathrm{w}}{\mathrm{w}}
$$

and on the basis of Eq. (4.60), we have:

$$
\alpha_1 + \alpha_2 = 1 \tag{4.61}
$$

The expected return of each Asset is function of the states of nature $(s)$. For simplicity, assuming that only two states are possible: $s = 1; s = 2$. The matrix

expected return—states of nature, of the two assets can be defined as follows: (Table 4.2).

The $z_{i,s}$ is the expected return of the i-th asset (for $i = 1,2$) when the s-th states of nature (for $s = 1,2$) is achieved.

Therefore, the portfolio's expected return is function of the portion of the current wealth invested in each of the two assets, as well as the expected return of the two assets as function of the states of nature. Formally (Saltari 2011):

$$
y_1 = A_1 z_{1, 1} + A_2 z_{2, 1} \quad \text{for} s = 1 (y_s = y_1) \tag{4.62}
$$

$$
y_2 = A_1 z_{1, 2} + A_2 z_{2, 2} \quad \text{for} s = 2 (y_s = y_2)
$$

where:

- the first equation is the portfolio's expected return when the state of nature 1 $(s = 1 \rightarrow y_s = y_1)$ is achieved and is equal to the sum of the amount (units) of the two assets in portfolio $(A_1, A_2)$ multiplied by their respective expected return when the state of nature 1 $(z_{1,1}, z_{2,1}$ for $i = 1, 2$ and $s = 1)$ is achieved;
- the second equation is the portfolio's expected return when the state of nature 2 $(s = 2 \rightarrow y_s = y_2)$ is achieved and is equal to the sum of the amount (units) of the two assets in portfolio $(A_1, A_2)$ multiplied by their respective expected return when the state of nature 2 $(z_{1,2}, z_{2,2}$ for $i = 1, 2$ and $s = 2)$ is achieved.

Based on Eq. (4.60), we have:

$$
\alpha_i = \frac{P_i^A A_i}{w} \rightarrow A_i = \frac{\alpha_i w}{P_i^A}
$$

and by substituting in Eq. (4.62) we have:

$$
\mathrm{y}_1 = \alpha_1 \mathrm{w} \frac{\mathrm{Z}_{1 , 1}}{\mathrm{P}_1^{\mathrm{A}}} + \alpha_2 \mathrm{w} \frac{\mathrm{Z}_{2 , 1}}{\mathrm{P}_2^{\mathrm{A}}} \quad \text{for s} = 1 (\mathrm{y}_s = \mathrm{y}_1) \tag{4.63}
$$

$$
\mathrm{y}_2 = \alpha_1 \mathrm{w} \frac{\mathrm{Z}_{1 , 2}}{\mathrm{P}_1^{\mathrm{A}}} + \alpha_2 \mathrm{w} \frac{\mathrm{Z}_{2 , 2}}{\mathrm{P}_2^{\mathrm{A}}} \quad \text{for s} = 2 (\mathrm{y}_s = \mathrm{y}_2)
$$

The rate of return of the i-th asset when the state of nature $\mathbf{s}(r_{i,s})$ is achieved can be defined on the basis of its expected return in the state of nature $\mathbf{s}(z_{i,s})$ and its purchase price $(P_i^A)$, as follows:

**Table 4.2** - Matrix expected return—state of nature

| | | States of nature | |
|---|---|---|---|
| | | State of nature 1(s = 1) | State of nature 2(s = 2) |
| Expected return | Asset 1 (i = 1) | zi,s = z1,1 | zi,s = z1,2 |
| | Asset 2 (i = 2) | zi,s = z2,1 | zi,s = z2,2 |

$$
\mathrm{r}_{\mathrm{i}, \mathrm{s}} = \frac{\mathrm{z}_{\mathrm{i} , \mathrm{s}} - \mathrm{P}_{\mathrm{i}}^{\mathrm{A}}}{\mathrm{P}_{\mathrm{i}}^{\mathrm{A}}} = \frac{\mathrm{z}_{\mathrm{i} , \mathrm{s}}}{\mathrm{P}_{\mathrm{i}}^{\mathrm{A}}} - 1 \tag{4.64}
$$

The total return of the i-th asset when the state of nature $\mathrm{s}(R_{i,s})$ is achieved, is equal to:

$$
1 + \mathrm{r}_{\mathrm{i}, \mathrm{s}} = \frac{\mathrm{Z}_{\mathrm{i} , \mathrm{s}}}{\mathrm{P}_{\mathrm{i}}^{\mathrm{A}}} \equiv \mathrm{R}_{\mathrm{i}, \mathrm{s}} \rightarrow \mathrm{R}_{\mathrm{i}, \mathrm{s}} \equiv 1 + \mathrm{r}_{\mathrm{i}, \mathrm{s}} \tag{4.65}
$$

Therefore, Eq. (4.63) can be rewritten as follows (Saltari 2011):

$$
\begin{array}{l}
y_1 = \left[ \alpha_1 R_{1, 1} + \alpha_2 R_{2, 1} \right] w \quad \text{for} s = 1 (y_s = y_1) \tag{4.66} \\
y_2 = \left[ \alpha_1 R_{1, 1} + \alpha_2 R_{2, 1} \right] w \quad \text{for} s = 2 (y_s = y_2)
\end{array}
$$

where:

- the first equation is the portfolio's expected return when the state of nature 1 $(s = 1 \rightarrow y_s = y_1)$ is achieved and is equal to the sum of wealth portions invested in the two assets $(\alpha_1 w; \alpha_2 w)$ multiplied by their expected total return respectively when the state of the nature 1 $(R_{1,1}, R_{2,1}$ for $i = 1, 2$ and $s = 1)$ is achieved;
- the second equation is the portfolio's expected return when the state of nature 2 $(s = 2\rightarrow y_s = y_2)$ is achieved and is equal to the sum of wealth portions invested in the two assets $(\alpha_1 w;\alpha_2 w)$ multiplied by their expected total return respectively when the state of the nature 2 $(R_{1,2},R_{2,2}$ for $i = 1,2$ and $s = 1)$ is achieved.

In general, we have:

$$
\mathrm{y}_{\mathrm{s}} = \alpha_{\mathrm{i}} \mathrm{R}_{\mathrm{i}, \mathrm{s}} \mathrm{w} \quad \mathrm{i} = 1, 2; \mathrm{s} = 1, 2 \tag{4.67}
$$

Therefore, the portfolio's return is function of the state of nature $(s = 1,2)$ that it is achieved and of the total return of the two assets $(R_{1,s};R_{2,s})$ on the basis of the wealth portion invested in each of them $(\alpha_1 w;\alpha_2 w)$.

![The portfolio's return](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/87fea16b-33f6-43ec-8056-5ef3565ac4c2/f0d916820f802e4a7e5d6f966d1e294dbb62ce563d3e3050acd2ae9249fb700b.jpg)
**Fig. 4.8** - The portfolio's return

In Fig. 4.8, the portfolio's return is registered on the abscissa when the state of nature $1$ ($s = 1 \rightarrow y_s = y_1$) is achieved, while the portfolio's return is registered on the ordinate when the state of nature $2$ ($s = 2 \rightarrow y_s = y_2$) is achieved. Point $A$ identifies the portfolio consisting of Asset 1 only ($\alpha_1 = 1; \alpha_2 = 0$) while point $B$ identifies the portfolio consisting of Asset 2 only ($\alpha_1 = 0; \alpha_2 = 1$). Therefore, each point between $A$ and $B$ can be obtained by changing the amount of the two assets in the portfolio ($\Delta \alpha_1; \Delta \alpha_2$).

If there is no short selling, and therefore for a positive value of $\alpha_i$ ($\alpha_i > 0$), segment $AB$ defines the constraint. The negative slope of the segment is due to the non-dominance of each of the two assets on the other one:

- for the state of nature 1, the return of asset 2 is higher than that of asset 1:

$$
s = 1 \rightarrow R_{2, 1} > R_{1, 1}
$$

- for the state of nature 2, the return of asset 1 is higher than that of asset 2:

$$
s = 2 \rightarrow R_{1, 2} > R_{2, 2}
$$

If there is short selling, and therefore also for negative value of $\alpha_i$ ($\alpha_i < 0$), the constraint goes beyond points $A$ and $B$ up to points $C$ and $D$. Specifically:

- point $D$ represents a portfolio achieved through the short selling of Asset 2. Point A defines a portfolio that includes Asset 1 only. Therefore, if the revenues due to short selling of Asset 2 are used to purchase new amounts of Asset 1, it can go beyond point A up to point D. In this case, if the state of nature $1 (s = 1)$ is achieved, the portfolio's return is null and the wealth held by the investor is just enough to repay debt due to short selling;
- point $C$ represents a portfolio achieved through the short selling of Asset 1. Point B defines a portfolio that includes Asset 2 only. Therefore, if the revenues due to short selling of Asset 1 are used to purchase new amounts of Asset 2, it

can go beyond point B up to point C. In this case, if the state of nature $2$ ($s = 2$) is achieved, the portfolio's return is null and the wealth held by the investor is just enough to repay debt due to short selling.

It is worth noting that to assume that points $C$ and $D$ cannot be exceeded, it implies the assumption that the investor cannot fail. Beyond these points, the income is negative.

By assuming the absence of short selling, and therefore by considering the segment $AB$ only, the sum of the portions of wealth invested in the two assets must be equal to the total wealth of the investor, as follows:

$$
\alpha_1 + \alpha_2 = 1 \tag{4.68}
$$

The constraint can be expressed based on one of the two assets. Therefore, based on the Eq. (4.68) the wealth portion invested in the asset $2(\alpha_2)$ can be expressed as function of the wealth portion invested in the asset $1(\alpha_1)$ as the follows:

$$
\alpha_2 = 1 - \alpha_1 \tag{4.69}
$$

By substituting Eq. (4.66) can be rewritten as follows:

$$
y_1 = \left[ \alpha_1 R_{1, 1} + \alpha_2 R_{2, 1} \right] w = \left[ \alpha_1 R_{1, 1} + (1 - \alpha_1) R_{2, 1} \right]
$$

$$
w = \left[ \alpha_1 R_{1, 1} + R_{2, 1} - \alpha_1 R_{2, 1} \right] w = \left[ \alpha_1 \left(R_{1, 1} - R_{2, 1}\right) + R_{2, 1} \right] w
$$

$$
y_2 = \left[ \alpha_1 R_{1, 2} + \alpha_2 R_{2, 2} \right] w = \left[ \alpha_1 R_{1, 2} + (1 - \alpha_1) R_{2, 2} \right]
$$

$$
w = \left[ \alpha_1 R_{1, 2} + R_{2, 2} - \alpha_1 R_{2, 2} \right] w = \left[ \alpha_1 \left(R_{1, 2} - R_{2, 2}\right) + R_{2, 2} \right] w
$$

and then:

$$
\mathbf{y}_1 = \left[ \begin{array}{l}
\alpha_1 \left(\mathbf{R}_{1, 1} - \mathbf{R}_{2, 1}\right) + \mathbf{R}_{2, 1}
\end{array} \right] \mathrm{w} \quad \text{for s = 1 (y_s = y_1)} \tag{4.70}
$$

$$
\mathrm{y}_2 = \left[ \alpha_1 \left(\mathrm{R}_{1, 2} - \mathrm{R}_{2, 2}\right) + \mathrm{R}_{2, 2} \right] \mathrm{w} \quad \text{for s} = 2 (\mathrm{y}_s = \mathrm{y}_2)
$$

It is possible to define the relationship between $y_1$ and $y_2$ on the basis of the constraint. By solving the first equation for $\alpha_1$, we have:

$$
\begin{array}{l}
y_1 = \left[ \alpha_1 \left(R_{1, 1} - R_{2, 1}\right) + R_{2, 1} \right] w \\
\frac{y_1}{w} = \alpha_1 (R_{1, 1} - R_{2, 1}) + R_{2, 1} \\
\frac{y_1}{w} - R_{2, 1} = \alpha_1 \left(R_{1, 1} - R_{2, 1}\right) \\
\alpha_1 = \frac{\left(\frac{\mathrm{Y}_1}{\mathrm{W}}\right) - \mathrm{R}_{2 , 1}}{\mathrm{R}_{1 , 1} - \mathrm{R}_{2 , 1}} \\
\end{array}
$$

By substituting in the second equation, we have:

$$
\mathbf{y}_2 = \left[ \alpha_1 \left(\mathrm{R}_{1, 2} - \mathrm{R}_{2, 2}\right) + \mathrm{R}_{2, 2} \right] \mathbf{w}
$$

$$
\mathrm{y}_2 = \left[ \frac{\left(\frac{\mathrm{y}_1}{\mathrm{W}}\right) - \mathrm{R}_{1 , 2}}{\mathrm{R}_{1 , 1} - \mathrm{R}_{2 , 1}} \left(\mathrm{R}_{1, 2} - \mathrm{R}_{2, 2}\right) + \mathrm{R}_{2, 2} \right] \mathrm{w}
$$

$$
\mathrm{y}_2 = \frac{\mathrm{R}_{1 , 2} - \mathrm{R}_{2 , 2}}{\mathrm{R}_{1 , 1} - \mathrm{R}_{2 , 1}} \left[ \left(\frac{\mathrm{y}_1}{\mathrm{W}}\right) - \mathrm{R}_{2, 1} \right] \mathrm{w} + \mathrm{R}_{2, 2} \mathrm{w}
$$

$$
\mathrm{y}_2 = \frac{\mathrm{R}_{1 , 2} - \mathrm{R}_{2 , 2}}{\mathrm{R}_{1 , 1} - \mathrm{R}_{2 , 1}} \left[ \frac{\mathrm{y}_1 - \mathrm{R}_{2 , 1} \cdot \mathrm{W}}{\mathrm{W}} \right] \mathrm{w} + \mathrm{R}_{2, 2} \mathrm{w}
$$

and then:

$$
\mathrm{y}_2 = \frac{\mathrm{R}_{1 , 2} - \mathrm{R}_{2 , 2}}{\mathrm{R}_{1 , 1} - \mathrm{R}_{2 , 1}} \left[ \mathrm{y}_1 - \mathrm{w R}_{2, 1} \right] + \mathrm{w R}_{2, 2} \tag{4.71}
$$

Equation (4.71) defines the relationship between $y_1$ and $y_2$ based on the constraint. It can be defined as the constraint's equation (Saltari 2011). The ratio $(R_{1,2} - R_{2,2}) / (R_{1,1} - R_{2,1})$ defines the slope of the constraint.

At this stage of the analysis, the main problem is the optimal allocation of the investor's wealth among the assets...

It is worth noting that the portfolio's return is function of two variables:

- the share of wealth $\alpha_i(i = 1,2)$ to be invested in each of the two assets;
- the state of nature $(s)$ which could be achieved in the future and its associate probability $\pi_s(s = 1,2)$.

Formally, a problem of constrained optimization can be defined, as follows (Saltari 2011):

$$
\left\{ \begin{array}{l}
\max_{\alpha_1, \alpha_2} E (U) = \pi_1 U \left(y_1\right) + \pi_2 U \left(y_2\right) \\
\alpha_1 + \alpha_2 = 1
\end{array} \right. \tag{4.72}
$$

where the first is the equation to be maximized and the second is the constraint.

The Lagrangian $(\mathcal{L})$ function is the following:

$$
\mathcal{L} = \pi_1 U (y_1) + \pi_2 U (y_2) + \lambda [ \alpha_1 + \alpha_2 - 1 ]
$$

By substituting Eq. (4.66) the equation to be maximized can be rewritten as follows:

$$
\begin{array}{l}
E (U) = \pi_1 U \left(y_1\right) + \pi_2 U \left(y_2\right) \\
= \pi_1 U \left[ \left(\alpha_1 R_{1, 1} + \alpha_2 R_{2, 1}\right) w \right] + \pi_2 U \left[ \left(\alpha_1 R_{1, 2} + \alpha_2 R_{2, 2}\right) w \right] \\
\end{array}
$$

The first order conditions are the following:

$$
\left\{ \begin{array}{l}
\frac{\partial \mathcal{L}}{\partial \alpha_1} = \pi_1 U^{\prime} (y_1) w R_{1, 1} + \pi_2 U^{\prime} (y_2) w R_{1, 2} - \lambda = 0 \\
\frac{\partial \mathcal{L}}{\partial \alpha_2} = \pi_1 U^{\prime} (y_1) w R_{2, 1} + \pi_2 U^{\prime} (y_2) w R_{2, 2} - \lambda = 0 \\
\frac{\partial \mathcal{L}}{\partial \lambda} = 1 - (\alpha_1 + \alpha_2) = 0
\end{array} \right. \tag{4.73}
$$

By solving the first and the second equation for $\lambda$, we have:

$$
\begin{array}{l}
\lambda = \pi_1 U^{\prime} (y_1) w R_{1, 1} + \pi_2 U^{\prime} (y_2) w R_{1, 2} \\
\lambda = \pi_1 U^{\prime} (y_1) w R_{2, 1} + \pi_2 U^{\prime} (y_2) w R_{2, 2} \\
\end{array}
$$

and then

$$
\pi_1 U^{\prime} (y_1) w R_{1, 1} + \pi_2 U^{\prime} (y_2) w R_{1, 2} = \pi_1 U^{\prime} (y_1) w R_{2, 1} + \pi_2 U^{\prime} (y_2) w R_{2, 2}
$$

By dividing first and second terms for the wealth $(w)$, we have:

$$
\pi_1 U^{\prime} (y_1) R_{1, 1} + \pi_2 U^{\prime} (y_2) R_{1, 2} = \pi_1 U^{\prime} (y_1) R_{2, 1} + \pi_2 U^{\prime} (y_2) R_{2, 2}
$$

Considering that the return of the i-th asset in the state of nature $s\left(R_{i,s}\right)$ is equal to:

$$
R_{i, s} = \frac{z_{i , s}}{P_i^A}
$$

and by substituting we have:

$$
\frac{\pi_1 \mathrm{U}^{\prime} \left(\mathrm{y}_1\right) \mathrm{z}_{1 , 1} + \pi_2 \mathrm{U}^{\prime} \left(\mathrm{y}_2\right) \mathrm{z}_{1 , 2}}{\mathrm{P}_1^{\mathrm{A}}} = \frac{\pi_1 \mathrm{U}^{\prime} \left(\mathrm{y}_1\right) \mathrm{z}_{2 , 1} + \pi_2 \mathrm{U}^{\prime} \left(\mathrm{y}_2\right) \mathrm{z}_{2 , 2}}{\mathrm{P}_2^{\mathrm{A}}} \tag{4.74}
$$

The equality (4.74) shows that for the optimal allocation, the investor shares his wealth between the two assets so that the last euro invested in asset 1 has the same expected marginal utility of the last euro invested in asset 2 (Saltari 2011).

#### (Case 2) More Than Two Assets in the Portfolio

Assuming that there are more than two assets in portfolio. In this case, the investor has to share his wealth (w) among n assets $(n > 2)$. The budget constrain can be formalized as follows (Saltari 2011):

$$
\sum_{i = 1}^{n} P_i^A A_i = w \tag{4.75}
$$

By dividing the first and second terms for wealth (w), and considering the Eq. (4.60), the Eq. (4.75) can be expressed in terms of the share of wealth invested in each assets, as follows:

$$
\sum_{i = 1}^{n} \frac{\mathrm{P}_{\mathrm{i}}^{\mathrm{A}} \mathrm{A}_{\mathrm{i}}}{w} = \frac{\mathrm{w}}{w} \rightarrow \frac{\mathrm{P}_{\mathrm{i}}^{\mathrm{A}} \mathrm{A}_{\mathrm{i}}}{w} = \alpha_i \rightarrow \sum_{\mathrm{i} = 1}^{\mathrm{n}} \alpha_{\mathrm{i}} = 1
$$

By considering Eq. (4.67), we have:

$$
\mathrm{y}_{\mathrm{s}} = \alpha_{\mathrm{i}} \mathrm{R}_{\mathrm{i}, \mathrm{s}} \mathrm{w} \rightarrow \mathrm{y}_{\mathrm{s}} = \sum_{\mathrm{i} = 1}^{\mathrm{N}} \alpha_{\mathrm{i}} \mathrm{R}_{\mathrm{i}, \mathrm{s}} \mathrm{w} \rightarrow \mathrm{y}_{\mathrm{s}} = \mathrm{w} \sum_{\mathrm{i} = 1}^{\mathrm{n}} \alpha_{\mathrm{i}} \mathrm{R}_{\mathrm{i}, \mathrm{s}}
$$

and by considering Eq. (4.65), we have:

$$
R_{i, s} \equiv 1 + r_{i, s}
$$

$$
\mathrm{y}_{\mathrm{s}} = \mathrm{w} \sum_{\mathrm{i} = 1}^{\mathrm{n}} \alpha_{\mathrm{i}} \left(1 + \mathrm{r}_{\mathrm{i}, \mathrm{s}}\right) \tag{4.76}
$$

In this case, the investor has to choose the share of wealth $(\alpha_i)$ to be invested in each asset in the portfolio with the objective of maximizing the expected utility of the portfolio's return $(y_s)$. The optimization problem, can be formalized as follows (Saltari 2011):

$$
\left\{ \begin{array}{l}
\max_{\alpha_i} E (U) = \sum_{s = 1}^{S} \pi_s U \left(y_s\right) \\
\sum_{i = 1}^{n} \alpha_i = 1
\end{array} \right. \tag{4.77}
$$

where the first is the equation to be maximized and the second is the budget constraint.

The Lagrangian function can be defined as follows:

$$
\mathcal{L} = \sum_{s = 1}^{S} \pi_s U (y_s) + \lambda \left(\sum_{\mathrm{i} = 1}^{\mathrm{n}} \alpha_{\mathrm{i}} - 1\right)
$$

and by considering that

$$
\mathbf{y}_{\mathrm{s}} = \mathrm{w} \sum_{\mathrm{i} = 1}^{\mathrm{N}} \alpha_{\mathrm{i}} \mathbf{R}_{\mathrm{i}, \mathrm{s}}
$$

the $E(U)$ function can be rewritten as follows:

$$
\mathrm{E} (\mathrm{U}) = \sum_{s = 1}^{S} \pi_s U (y_s) = \sum_{\mathrm{s} = 1}^{\mathrm{S}} \pi_{\mathrm{s}} \mathrm{U} \left(\mathrm{w} \sum_{\mathrm{i} = 1}^{\mathrm{N}} \alpha_{\mathrm{i}} \mathrm{R}_{\mathrm{i}, \mathrm{s}}\right)
$$

The first order conditions are the following:

$$
\left\{ \begin{array}{l}
\frac{\partial \mathcal{L}}{\partial \alpha_{\mathrm{i}}} = \sum_{\mathrm{s} = 1}^{\mathrm{S}} \pi_{\mathrm{s}} \mathrm{U}^{\prime} \left(\mathrm{y}_{\mathrm{s}}\right) w \mathrm{R}_{\mathrm{i}, \mathrm{s}} - \lambda = 0 i = 1, 2, \dots , n \\
\frac{\partial \mathcal{L}}{\partial \lambda} = 1 - \sum_{\mathrm{i} = 1}^{\mathrm{n}} \alpha_{\mathrm{i}} = 0
\end{array} \right. \tag{4.78}
$$

The solution of the system with regards to the value of $\alpha_{\mathrm{i}}$ and $\lambda$ are the optimal choice (Saltari 2011).

#### (Case 3) More Than Two Assets and one of Them Free-Risk in the Portfolio

Assuming that there are more than two assets and one of them free-risk in the portfolio.

It is worth noting that, in this context, the asset is free-risk if its expected return is independent from the state of nature (s) that will be achieved.

Therefore, the portfolio consists of $n$ risky assets and one asset free-risk $(n + 1)$. Therefore, the budget constraint can be defined as follows:

$$
\sum_{\mathrm{i} = 0}^{\mathrm{n}} \alpha_{\mathrm{i}} = 1 \tag{4.79}
$$

Also in this case, as in the previous cases 1 and 2, the investor has to choose the share of wealth $(\alpha_i)$ to be invested in each asset in the portfolio with the objective of maximizing the expected utility of the portfolio's return $(y_s)$. The optimization problem can be formalized as follows (Saltari 2011):

$$
\left\{ \begin{array}{l}
\max_{\alpha_i, \alpha_0} \mathrm{E} (\mathrm{U}) = \sum_{\mathrm{s} = 1}^{\mathrm{S}} \pi_{\mathrm{s}} \mathrm{U} \left(\mathrm{y}_{\mathrm{s}}\right) \\
\sum_{\mathrm{i} = 0}^{\mathrm{n}} \alpha_{\mathrm{i}} = 1
\end{array} \right. \tag{4.80}
$$

Denoting with $r_0$ the rate of return of the free-risk asset (so that its return is equal to $R_0 = 1 + r_0$) and considering that is independent from the state of nature, the index $s$ can be omitted and with $\alpha_0$ the part of the wealth invested in the risk-free asset, the Lagrangian $(\mathcal{L})$ can be formalized as follows:

$$
\mathcal{L} = \operatorname{E} (\mathrm{U}) + \lambda \left(1 - \sum_{\mathrm{i} = 0}^{\mathrm{N}} \alpha_{\mathrm{i}}\right)
$$

By deriving partially with respect to $\alpha_i,\alpha_0$ and $\lambda$, the first order condition is achieved. By placing them equal to zero, we have:

$$
\left\{ \begin{array}{l}
\frac{\partial \mathcal{L}}{\partial \alpha_{\mathrm{i}}} = \sum_{\mathrm{s} = 1}^{\mathrm{S}} \pi_{\mathrm{s}} \mathrm{U}^{\prime} \left(\mathrm{y}_{\mathrm{s}}\right) w \mathrm{R}_{\mathrm{i}, \mathrm{s}} - \lambda = 0 i = 1, 2, \dots , n \\
\frac{\partial \mathcal{L}}{\partial \alpha_0} = \sum_{\mathrm{s} = 1}^{\mathrm{S}} \pi_{\mathrm{s}} \mathrm{U}^{\prime} \left(\mathrm{y}_{\mathrm{s}}\right) w \mathrm{R}_0 - \lambda = 0 i = 0 \\
\frac{\partial \mathcal{L}}{\partial \lambda} = 1 - \sum_{\mathrm{i} = 0}^{\mathrm{N}} \alpha_{\mathrm{i}} = 0
\end{array} \right. \tag{4.81}
$$

It is worth noting, that in this case for $i = 0$ we have $\alpha_0$ that it is independent of the state of nature, so that: $y_s = w\alpha_0R_0$. Therefore, in this case, unlike the previous case, a new condition is introduced in which $i = 0$ with regards to the risk-free rate.

From the first equation we have:

$$
\lambda = \sum_{s = 1}^{S} \pi_s U^{\prime} (y_s) w R_{i, s}
$$

and from the second equation we have:

$$
\lambda = \sum_{\mathrm{s} = 1}^{\mathrm{S}} \pi_{\mathrm{s}} \mathrm{U}^{\prime} (\mathrm{y}_{\mathrm{s}}) \mathrm{w R}_0
$$

Consequently, by considering the first and the second equation we have:

$$
\sum_{s = 1}^{S} \pi_s U^{\prime} \left(y_s\right) w R_{i, s} = \sum_{s = 1}^{S} \pi_s U^{\prime} \left(y_s\right) w R_0
$$

and then:

$$
\sum_{s = 1}^{S} \pi_s \mathrm{U}^{\prime} \left(\mathrm{y}_{\mathrm{s}}\right) \mathrm{w} \left(\mathrm{R}_{\mathrm{i}, s} - \mathrm{R}_0\right) = 0 \leftrightarrow \mathrm{E} \left[ \mathrm{U}^{\prime} \left(\mathrm{y}_{\mathrm{s}}\right) \mathrm{w} \left(\mathrm{R}_{\mathrm{i}, s} - \mathrm{R}_0\right) \right] = 0 \quad \mathrm{i} = 1, 2, \dots , n \tag{4.82}
$$

where the two forms are equivalent.

If the number of the risky assets is high, the solution of the optimal portfolio by defining the share of wealth to be invested in each asset $(\alpha_i)$, is very hard. The

mutual fund theorem (Tobin 1958; Cass and Stiglitz 1970) can be used to solve the problem of the optimal portfolio.

On the basis of some conditions, the portfolio can be assumed as consisting only of two assets:

- the first is the asset risk-free;
- the second is a "common fund" obtained from the optimal combination of all risky assets. The weight of each risky asset in the common fund is independent from the wealth level.

Therefore, the investor chooses the share of wealth to invest in the asset free-risk and in the common fund.

Use of the separation theorem requires several conditions. Specifically, it is necessary to introduce some constraints on the probability distribution of the expected return, or alternatively, on the utility function used by investor (Saltari 2011). Therefore, constraints can be used on:

- probability distribution of the expected return, it is necessary to assume that the expected return follows a normal distribution;
- the utility function, is necessary to assume that it is classified in the HARA (Hyperbolic Absolute Risk Aversion) group. In this case, the absolute risk aversion coefficient is a hyperbolic function of $y_s$ while the absolute risk tolerance has a linear form.

Specifically, the absolute risk aversion coefficient for the utility function in the class HARA can be defined as follows:

$$
\lambda_{\left(\mathrm{y}_{\mathrm{s}}\right)} = - \frac{\mathrm{U}^{\prime \prime} \left(\mathrm{y}_{\mathrm{s}}\right)}{\mathrm{U}^{\prime} \left(\mathrm{y}_{\mathrm{s}}\right)} = \frac{1}{\left(\mathrm{c} + \mathrm{d y}_{\mathrm{s}}\right)} \quad \text{with} c \text{and} d \text{constant}
$$

and the absolute risk tolerance coefficient is equal to (Saltari 2011):

$$
\tau_{(y_s)} = \frac{1}{\lambda_{(y_s)}} = - \frac{U^{\prime} (y_s)}{U^{\prime \prime} (y_s)} = c + d y_s
$$

# References

Arrow K (1965) "The theory of risk aversion", aspects of the theory of risk-bearing (Lecture 2). Yrjs Jansson Foundation, Helsinki
Arrow K (1971) Essays in the theory of risk-bearing. Markham, Chicago
Arrow K (1984) Individual choice under certainty and uncertainty, Collected Papers of Kenneth J. Arrow, Vol. 3, Belknap Press, Cambridge MA
Campbell RM (2015) Microeconomics: principles, problems, and policies, McGraw-Hill
Cass D, Stiglitz J (1970) The structure of investor preferences and asset returns, and separability in portfolio allocation: a contribution to the pure theory of mutual funds. Journal of Economic Theory 2(2):122-160

Castellani G, De Felice M, Moriconi F (2005) Manuale di Finanza 2. Teoria del portafoglio e mercato azionario, Il Mulino
Cesari R (2012a) Introduzione alla finanza matematica. Concetti di base, tassi e obbligazioni, 2nd edn. McGraw-Hill, New York
Cesari R (2012b) Introduzione alla finanza matematica. Mercati azionari, rischi, e portafogli, 2nd edn. McGraw-Hill, New York
Cuthbertson K, Nitzsche D (2014) Quantitative financial economics: stocks, bonds and foreign exchange, 2nd ed., Wiley
Fishburn PC, Kochenberger GA (1979) Two-piece Von Neumann-Morgenstern utility functions. Decis Sci 10(4):503-518
Gravelle H, Rees R (1992) Microeconomics, 2nd edn. Longman, London
Heap S, Lyons B, Hollis M, Sugden R, Weale A (1992) The theory of choice: a critical guide. Blackwell
Hirshleifer J, Riley JG (1992) The analytics of uncertainty and information. Cambridge University Press
Ingersoll JE (1987) Theory of financial decision making. Rowman&Littlefield Pub Inc., Baltimore
Kreps DM (1979) A representation theorem for "preference for flexibility". Econometrica 47(3):565-577
Kreps DM (1990) A course in microeconomic theory. Princeton University Press
Kreps DM (2012) Microeconomic foundations I: choice and competitive markets. Princeton University Press
Litner J (1965a) Security prices, risk, and maximal gains from diversification. J Finance 20(4):587-615
Litner J (1965b) The valuation of risk assets and the selection of risky investments in stock portfolios and capital budgets. The Rev Econ Stat 47(1):13-37
Litner J (1970) The market price of risk, size of market and investor's risk aversion. The Review of Economics and Statistics 52(1):87-99
Mankiw GN (2017) Principles of microeconomics. 8th ed., Cengage Learning
Markowitz H (1952) Portfolio selection. The Journal of Finance 7(1):77-91
Markowitz H (1956) The optimization of a quadratic function subject to linear constraints. Nav Res Logist 3(1-2):111-133
Markowitz H (1959) Portfolio selection: efficient diversification of investment. Wiley, New York
Perloff JM (2016) Microeconomics: theory and applications with calculus. 4th ed., Pearson
Pratt JW (1964) Risk aversion in the small and in the large. Econometrica 32(1/2):122-136
Saltari E (2011) Appunti di Economia Finanziaria. Esculpio
Tobin J (1958) Liquidity preference as behavior towards risk. The Review of Economic Studies 25(2):65-86
Varian HR (1992) Microeconomic analysis, 3rd edn. W.W. Norton & Company, New York
Von Neumann J, Morgenstern O (1944) Theory of games and economic behavior. Princeton University Press

## D2 Diagrams for Utility Function Approach

### Utility Function Types
```d2
# Utility Function Types and Risk Preferences
risk_aversion: "Risk Averse U''(W) < 0"
risk_neutral: "Risk Neutral U''(W) = 0"
risk_seeking: "Risk Seeking U''(W) > 0"

risk_aversion -> "Concave utility function\nPrefers certain outcome\nto risky prospect with\nsame expected value"
risk_neutral -> "Linear utility function\nIndifferent between\ncertain and risky outcomes\nwith same expected value"
risk_seeking -> "Convex utility function\nPrefers risky prospect\nto certain outcome with\nsame expected value"
```

### Expected Utility Framework
```d2
# Expected Utility Components
probabilities: "Probabilities π_s"
outcomes: "Outcomes y_{i,s}"
utility_function: "Utility Function U(.)"
expected_utility: "Expected Utility E[U(y)]"

probabilities -> expected_utility: "Weight outcomes"
outcomes -> expected_utility: "Input to utility"
utility_function -> expected_utility: "Transform outcomes"
expected_utility -> "Decision criterion"
```

### Axioms of Rational Choice
```d2
# Axioms of Rational Choice
completeness: "Completeness"
transitivity: "Transitivity"
independence: "Independence"
continuity: "Continuity"
monotonicity: "Monotonicity"

completeness <-> transitivity: "Rational preferences"
independence <-> continuity: "Consistent mixing"
monotonicity -> "Preference for more"
```

### Risk Measures
```d2
# Risk Aversion Measures
absolute_risk: "Absolute Risk Aversion\n-AU''(W)/U'(W)"
relative_risk: "Relative Risk Aversion\n-WU''(W)/U'(W)"
certainty_equiv: "Certainty Equivalent"
risk_premium: "Risk Premium"

absolute_risk -> "Local risk attitude"
relative_risk -> "Scaling with wealth"
certainty_equiv -> "Willing to accept for sure"
risk_premium -> "Amount willing to pay\nto avoid risk"
```

$$
\mathrm {U} (\mathrm {w}) = \mathrm {a} + \mathrm {b w} \quad \mathrm {b} > 0 \tag {4.33}
$$

where  $a$  is an arbitrary constant.

The first derivative is always positive and therefore the function is always increasing. Indeed:

$$
\mathrm {U} ^ {\prime} (\mathrm {w}) = \mathrm {b}
$$

The second derivative is equal to zero. It implies that there is no concavity and then the investor is risk neutral.

Therefore, it implies that the risk neutral is equivalent to the linear utility of the function.

# Power

The function can be defined as follows:

$$
\mathrm {U} (\mathrm {w}) = \frac {1}{a} w ^ {a} \quad a \langle 1; a \neq 0; w \rangle 0 \tag {4.34}
$$

The first and second derivatives are the following:

$$
\mathrm {U} ^ {\prime} (\mathrm {w}) = \frac {1}{a} a w ^ {a - 1} = w ^ {a - 1}
$$

$$
\mathrm {U} ^ {\prime \prime} (\mathrm {w}) = (\mathrm {a} - 1) w ^ {a - 2}
$$

The absolute risk aversion  $(\lambda_{(\mathrm{w})})$  and the relative risk aversion  $(\rho_{(\mathrm{w})})$  are the following:

$$
\lambda_ {(\mathrm {w})} = - \frac {\mathrm {U} ^ {\prime \prime} (\mathrm {w})}{\mathrm {U} ^ {\prime} (w)} = - \left[ \frac {(\mathrm {a} - 1) w ^ {a - 2}}{w ^ {a - 1}} \right] = - \left[ \frac {(\mathrm {a} - 1) w ^ {a - 1} w ^ {- 1}}{w ^ {a - 1}} \right] = - \left[ \frac {\mathrm {a} - 1}{w} \right] = \frac {1 - a}{w}
$$

$$
\rho_ {\left(\mathrm {w}\right)} = - \mathrm {w} \frac {\mathrm {U} ^ {\prime \prime} (w)}{\mathrm {U} ^ {\prime} (w)} = - w \left(\frac {\mathrm {a} - 1}{w}\right) = 1 - a
$$

Therefore, the absolute risk aversion  $(\lambda_{(\mathrm{w})})$  decreases as wealth (w) increases. The relative risk aversion  $(\rho_{(\mathrm{w})})$  is independent of the level of wealth (w) and therefore it is constant. For this reason, this function is classified according to function groups CRRA.

Also by considering that:

$$
\ln \left[ U ^ {\prime} (w) \right] = \ln \left[ w ^ {a - 1} \right] = (a - 1) \ln [ w ]
$$

the  $(a - 1)$  can be considered as the elasticity of marginal utility with respect to wealth.

# Logarithmic

The function can be defined as follows:

$$
\mathrm {U} (\mathrm {w}) = \mathrm {a} \ln w + b \quad w > 0; a, b \text {a r b i t a r y c o n s t a n t s} \tag {4.35}
$$

The basic assumption is that the increase in utility is directly proportional with wealth  $(w)$  increases and it is inversely proportional to initial wealth.

The first and second derivatives are the following:

$$
\mathrm {U} ^ {\prime} (\mathrm {w}) = \mathrm {a} \frac {1}{w} = a w ^ {- 1}
$$

$$
\mathrm {U} ^ {\prime \prime} (\mathrm {w}) = \mathrm {a} (- 1) w ^ {- 2} = - a w ^ {- 2}
$$

The absolute risk aversion  $(\lambda_{(\mathrm{w})})$  and the relative risk aversion  $(\rho_{(\mathrm{w})})$  are the following:

$$
\lambda_ {(\mathrm {w})} = - \frac {\mathrm {U} ^ {\prime \prime} (\mathrm {w})}{\mathrm {U} ^ {\prime} (w)} = - \left[ \frac {- a w ^ {- 2}}{a w ^ {- 1}} \right] = w ^ {- 1} = \frac {1}{w}
$$

$$
\rho_ {(\mathrm {w})} = - \mathrm {w} \frac {\mathrm {U} ^ {\prime \prime} (w)}{\mathrm {U} ^ {\prime} (w)} = - w \left[ \frac {- a w ^ {- 2}}{a w ^ {- 1}} \right] = - w [ - w ^ {- 1} ] = - w \left[ - \frac {1}{w} \right] = 1
$$

Therefore, the absolute risk aversion  $(\lambda_{(\mathrm{w})})$  decreases as wealth (w) increases. The Relative Risk Aversion  $(\rho_{(\mathrm{w})})$  is independent on the level of wealth (w) and therefore it is constant. For this reason, this function is classified according to function groups CRRA.

# Negative Exponential

The function can be defined as follows:

$$
\mathrm {U} (\mathrm {w}) = \mathrm {a} \left(1 - e ^ {- \frac {w}{a}}\right) \quad a > 0 \tag {4.36}
$$

This is a superiorly limited exponential function. The parameter  $\underline{a}$  is the upper extremity and therefore it represents the maximum potentiality. Indeed, the function for  $\mathrm{U(w)} = a$  has a horizontal asymptote:

$$
\begin{array}{l} \lim  _ {w \rightarrow + \infty} [ U (w) ] = \lim  _ {w \rightarrow + \infty} \left[ a \left(1 - e ^ {- \frac {w}{a}}\right)\right] = a \left(1 - e ^ {- \infty}\right) \\ = \mathrm {a} \left(1 - \frac {1}{e ^ {\infty}}\right) = \mathrm {a} (1 - 0) = a \\ \end{array}
$$

# 4.3 Utility Functions

The first and second derivatives are the following:

$$
\mathrm {U} ^ {\prime} (\mathrm {w}) = \mathrm {a} \left(- \left(- \frac {1}{a}\right) e ^ {- \frac {w}{a}}\right) = \mathrm {a} \left(\frac {1}{a} e ^ {- \frac {w}{a}}\right) = e ^ {- \frac {w}{a}}
$$

$$
\mathrm {U} ^ {\prime \prime} (\mathrm {w}) = \left(- \frac {1}{a}\right) e ^ {- \frac {\mathrm {w}}{a}}
$$

The absolute risk aversion  $(\lambda_{(\mathrm{w})})$  and the relative risk aversion  $(\rho_{(\mathrm{w})})$  are the following:

$$
\lambda_ {(\mathrm {w})} = - \frac {\mathrm {U} ^ {\prime \prime} (\mathrm {w})}{\mathrm {U} ^ {\prime} (w)} = - \left[ \frac {(- \frac {1}{a}) e ^ {- \frac {w}{a}}}{e ^ {- \frac {w}{a}}} \right] = \frac {1}{a}
$$

$$
\rho_ {(\mathrm {w})} = - \mathrm {w} \frac {\mathrm {U} ^ {\prime \prime} (w)}{\mathrm {U} ^ {\prime} (w)} = - w \left[ \frac {\left(- \frac {1}{a}\right) e ^ {- \frac {w}{a}}}{e ^ {- \frac {w}{a}}} \right] = - w \left(- \frac {1}{a}\right) = w \frac {1}{a}
$$

In this case, the relative risk aversion  $(\rho_{(\mathrm{w})})$  increases as wealth (w) increases. Differently, the absolute risk aversion  $(\lambda_{(\mathrm{w})})$  is independent on the wealth (w) and therefore it is constant. For this reason, this function is classified into the group of functions CARA.

# Quadratic

The function can be defined as follows:

$$
\mathrm {U} (\mathrm {w}) = \mathrm {w} - \frac {\mathrm {a}}{2} \mathrm {w} ^ {2} \quad \mathrm {a} > 0 \tag {4.37}
$$

The first and second derivatives are the following:

$$
\mathrm {U} ^ {\prime} (\mathrm {w}) = 1 - \frac {\mathrm {a}}{2} 2 \mathrm {w} ^ {2 - 1} = 1 - a w
$$

$$
\mathrm {U} ^ {\prime \prime} (\mathrm {w}) = - \mathrm {a}
$$

The absolute risk aversion  $(\lambda_{(\mathrm{w})})$  and the relative risk aversion  $(\rho_{(\mathrm{w})})$  are the following:

$$
\lambda_ {(\mathrm {w})} = - \frac {\mathrm {U} ^ {\prime \prime} (\mathrm {w})}{\mathrm {U} ^ {\prime} (w)} = - \left[ \frac {- \mathrm {a}}{1 - a w} \right] = \frac {a}{1 - a w}
$$

$$
\rho_ {\mathrm {(w)}} = - \mathrm {w} \frac {\mathrm {U} ^ {\prime \prime} (w)}{\mathrm {U} ^ {\prime} (w)} = - w \left[ \frac {- \mathrm {a}}{1 - a w} \right] = w \left(\frac {a}{1 - a w}\right) = \frac {w a}{1 - a w}
$$

It is relevant to know that the first derivative must be positive, and therefore the quadratic is only defined for a value of wealth  $(w)$  equal to:

$$
1 - a w > 0 \rightarrow w <   \frac {1}{a} \tag {4.38}
$$

This is known as the "bliss point".

Marginal utility is linear in wealth and this can sometimes be a useful property. It is worth noting that the absolute risk aversion  $(\lambda_{(\mathrm{w})})$  and relative risk aversion  $(\lambda_{(\mathrm{w})})$  are not constant and they are both functions of wealth  $(w)$ . Specifically, the solute and relative risk aversion increases with the increase in wealth  $(w)$ . undoubtedly, it seems a counter-intuitive result. However, this utility function has no main advantages that justify its preference (Cesari 2012b; Castellani et al. 2005).

The first advantage of utility function is that the quadratic utility function can be considered as the approximation to the second order of any utility function based on the Taylor's polynomial development. Therefore, it can be considered as a generalization of the specific utility functions used by the investor.

Assuming that the investor has a wealth equal to  $k$  and he is characterized by a utility function  $U(w)$  derivable infinitely. Therefore, it can be developed in a Taylor series around the point  $w_0$  as follows:

$$
\mathrm {U} \left(\mathrm {w} _ {0}\right) = \sum_ {\mathrm {n} = 0} ^ {\infty} \frac {\mathrm {U} ^ {(\mathrm {n})} \left(\mathrm {w} _ {0}\right)}{\mathrm {n} !} \left(\mathrm {w} - \mathrm {w} _ {0}\right) ^ {\mathrm {n}} \rightarrow (\mathrm {k} + \mathrm {k} _ {1}) = \sum_ {\mathrm {n} = 0} ^ {\infty} \frac {\mathrm {U} ^ {(\mathrm {n})} (\mathrm {k})}{\mathrm {n} !} \mathrm {k} _ {1} ^ {\mathrm {n}}
$$

where  $k_{1}$  is the increase of initial wealth  $(k)$ .

Since the terms of degree are higher than the second, it represents an infinitesimal of a higher order than  $k_{1}^{2}$ , for small increments in  $k_{1}$  their contribution can be neglected.

It generates an equality to be considered as an approximation of the second order, as follows (Castellani et al. 2005):

For  $n = 2$ , we have:

$$
U (k + k _ {1}) = \sum_ {n = 0} ^ {2} \frac {U ^ {(n)} (k)}{n !} k _ {1} ^ {n}
$$

and therefore:

$$
U (k + k _ {1}) = \frac {U ^ {(0)} (k)}{0 !} k _ {1} ^ {0} + \frac {U ^ {\prime} (k)}{1 !} k _ {1} ^ {1} + \frac {U ^ {\prime \prime} (k)}{2 !} k _ {1} ^ {2}
$$

# 4.3 Utility Functions

by convention:

$$
0! = 1; 1! = 1; 2! = 2 \cdot 1 = 2
$$

We have:

$$
\mathrm {U} (\mathrm {k} + \mathrm {k} _ {1}) = \mathrm {U} (\mathrm {k}) + \mathrm {U} ^ {\prime} (\mathrm {k}) k _ {1} ^ {1} + \frac {\mathrm {U} ^ {\prime \prime} (\mathrm {k})}{2} \mathrm {k} _ {1} ^ {2}
$$

Subtracting  $U(k)$  and dividing by  $U'(k)$  both terms, we have:

$$
U (k + k _ {1}) - U (k) = U (k) + U ^ {\prime} (k) k _ {1} + \frac {U ^ {\prime \prime} (k)}{2} k _ {1} ^ {2} - U (k)
$$

and therefore:

$$
\begin{array}{l} \frac {U (k + k _ {1})}{U ^ {\prime} (k)} - \frac {U (k)}{U ^ {\prime} (k)} = \frac {U ^ {\prime} (k)}{U ^ {\prime} (k)} k _ {1} + \frac {1}{2} \frac {U ^ {\prime \prime} (k)}{U ^ {\prime} (k)} k _ {1} ^ {2} \\ \frac {\mathrm {U} (\mathrm {k} + \mathrm {k} _ {1})}{\mathrm {U} ^ {\prime} (\mathrm {k})} - \frac {\mathrm {U} (\mathrm {k})}{\mathrm {U} ^ {\prime} (\mathrm {k})} = \mathrm {k} _ {1} + \frac {1}{2} \frac {\mathrm {U} ^ {\prime \prime} (\mathrm {k})}{\mathrm {U} ^ {\prime} (\mathrm {k})} \mathrm {k} _ {1} ^ {2} \\ \end{array}
$$

Placing:

$$
\begin{array}{l} \mathrm {a} = \frac {1}{\mathrm {U} ^ {\prime} (\mathrm {k})} \rightarrow \mathrm {U} ^ {\prime} (\mathrm {k}) > 0 \rightarrow a > 0 \\ \mathsf {b} = - \frac {\mathbf {U} (\mathbf {k})}{\mathbf {U} ^ {\prime} (\mathbf {k})} \\ \end{array}
$$

The first term of equation is equal to:

$$
\frac {\mathrm {U} (\mathrm {k} + \mathrm {k} _ {1})}{\mathrm {U} ^ {\prime} (\mathrm {k})} - \frac {\mathrm {U} (\mathrm {k})}{\mathrm {U} ^ {\prime} (\mathrm {k})} = \mathrm {a U} (\mathrm {k} + \mathrm {k} _ {1}) + \mathrm {b}
$$

It is a positive linear transformation of the equation  $U(k + k_{1})$ . Therefore, it is equivalent as follows:

$$
\frac {\mathrm {U} \left(\mathrm {k} + \mathrm {k} _ {1}\right)}{\mathrm {U} ^ {\prime} (\mathrm {k})} - \frac {\mathrm {U} (\mathrm {k})}{\mathrm {U} ^ {\prime} (\mathrm {k})} = \mathrm {a U} \left(\mathrm {k} + \mathrm {k} _ {1}\right) + \mathrm {b} \sim \mathrm {U} \left(\mathrm {k} + \mathrm {k} _ {1}\right)
$$

The second term of equation can be rewritten on the basis of the absolute risk aversion coefficient as follows:

$$
\lambda_ {(\mathrm {k})} = - \frac {\mathrm {U} ^ {\prime \prime} (\mathrm {k})}{\mathrm {U} ^ {\prime} (\mathrm {k})} \rightarrow \mathrm {k} _ {1} + \frac {1}{2} \frac {\mathrm {U} ^ {\prime \prime} (\mathrm {k})}{\mathrm {U} ^ {\prime} (\mathrm {k})} \mathrm {k} _ {1} ^ {2} = \mathrm {k} _ {1} - \frac {1}{2} \lambda_ {(\mathrm {k})} \mathrm {k} _ {1} ^ {2}
$$

Replacing the first and second terms in the equation, we have:

$$
\mathrm {U} (\mathrm {k} + \mathrm {k} _ {1}) = \mathrm {k} _ {1} - \frac {1}{2} \lambda_ {(\mathrm {k})} \mathrm {k} _ {1} ^ {2}
$$

In order to represent the absolute risk aversion coefficient in the same unit measures of  $k$ , the absolute risk tolerance coefficient  $(\tau_{(w_0)} = \frac{1}{\lambda_{(w_0)}})$  can be used. In this case Eq. (4.44) can be rewritten as follows:

$$
\mathrm {U} (\mathrm {k} + \mathrm {k} _ {1}) = \mathrm {k} _ {1} - \frac {1}{2 \tau_ {\left(\mathrm {w} _ {0}\right)}} \mathrm {k} _ {1} ^ {2} \tag {4.39}
$$

Equation (4.39) can be considered as a generic quadratic utility function.

The absolute risk tolerance coefficient  $(\tau_{(w_0)})$  is greater, the higher the value of  $k$  around which the Taylor series is developed.

In order to be certain of the goodness of the approximation carried out, we should assume that the absolute risk tolerance  $\tau_{(w_0)}$  is much greater than  $k_{1}$  (Castellani et al. 2005):

$$
\tau_ {\left(\mathrm {w} _ {0}\right)} \gg \mathrm {k} _ {1}
$$

The second advantage of utility function is that the quadratic utility function is coherent with the mean-variance criteria. Consequently, the quadratic utility function allows for compatibility between the utility function approach and the mean-variance approach.

The investor with a quadratic utility function chooses according to criteria coherent with mean and variance. He chooses based on mean  $E[u(w)]$  and variance  $Var(w)$ .

Specifically, if the investor maximizes expected utility of end-of-period portfolio wealth, we can see that this is equivalent to maximising a function of expected portfolio returns and portfolio variance providing:

(a) either utility is quadratic,
(b) or portfolio returns are normally distributed and utility is concave.

Assuming that an initial wealth equal to  $w_0$  and the stochastic portfolio return is equal to  $R_p$ . At the end of the period, we have:

$$
w = w _ {0} \left(1 + R _ {p}\right) \leftrightarrow U (w) = U \left[ w _ {0} \left(1 + R _ {p}\right) \right]
$$

# 4.3 Utility Functions

Expanding  $U(R_{p})$  in a Taylor series around the mean of  $R_{p} \approx \mu_{p}$ , we have:

$$
U \left(R _ {p}\right) = U \left(\mu_ {p}\right) + \left(R _ {p} - \mu_ {p}\right) U ^ {\prime} \left(\mu_ {p}\right) + \frac {1}{2} \left(R _ {p} - \mu_ {p}\right) ^ {2} U ^ {\prime \prime} \left(\mu_ {p}\right) + h i g h e r o d e r t e r m s
$$

Considering that  $E(R_{p} - \mu_{p}) = 0$  and  $E(R_{p} - \mu_{p})^{2} = \sigma_{P}^{2}$ . Therefore, we have:

$$
U \left(R _ {p}\right) = U \left(\mu_ {p}\right) + \frac {1}{2} \sigma_ {P} ^ {2} U ^ {\prime \prime} \left(\mu_ {p}\right) + E [ h i g h e r - o r d e r t e r m s ]
$$

If the utility function is quadratic, then the derivative greater than the second are equal to zero.

If the return are normally distributed, we have:

(a)  $E[(R_p - \mu_p)^n ] = 0$  for  $n$  odd, and
(b)  $E[(R_p - \mu_p)^n ]$  for  $n$  even is a function only of the variance  $\sigma_P^2$

Therefore, in both cases (utility is quadratic or portfolio returns are normally distributed) so  $E[U(R_p)]$  is a function of only the mean  $\mu_p$  and the variance  $\sigma_P^2$ .

It is worth noting that until a specific utility function is specified, the functional relationship between  $E[U(R_p)]$  and  $(\mu_p, \sigma_P^2)$  is not known and hence it is impossible to determine whether or not there is an analytic closed-form solution for asset demands (Cuthbertson and Nitzsche 2014).

This result can be verified through a simple reasoning (Cesari 2012b). Assuming a random variables  $\tilde{W}$ . Assuming that investor uses the quadratic utility function as defined in Eq. (4.37) as follows:

$$
\mathrm {U} (\mathrm {w}) = \mathrm {w} - \frac {\mathrm {a}}{2} \mathrm {w} ^ {2} \quad \mathrm {a} > 0
$$

The expected utility for the variable can be computed as follows:

$$
\mathrm {E} \left[ \mathrm {U} (\widetilde {W}) \right] = \mathrm {E} \left[ \widetilde {\mathbf {W}} - \frac {\mathrm {a}}{2} \widetilde {\mathbf {W}} ^ {2} \right] = \mathrm {E} \left(\widetilde {\mathbf {W}}\right) - \frac {\mathrm {a}}{2} \mathrm {E} \left(\widetilde {\mathbf {W}} ^ {2}\right)
$$

Based on the following property of variance:

$$
V a r (x) = E \left(X ^ {2}\right) - E (X) ^ {2} \quad \rightarrow \quad E \left(X ^ {2}\right) = V a r (x) + E (X) ^ {2}
$$

the equation can be rewritten as follows:

$$
\mathrm {E} \left(\widetilde {\mathrm {W}} ^ {2}\right) = \operatorname {V a r} \left(\widetilde {\mathrm {W}}\right) + \mathrm {E} \left(\widetilde {\mathrm {W}}\right) ^ {2}
$$

and by substituting we have:

$$
\operatorname {E} \left[ \mathrm {U} (\widetilde {\mathrm {W}}) \right] = \operatorname {E} (\widetilde {\mathrm {W}}) - \frac {\mathrm {a}}{2} \left[ \operatorname {V a r} (\widetilde {\mathrm {W}}) + \operatorname {E} (\widetilde {\mathrm {W}}) ^ {2} \right]
$$

This equation shows how the investor chooses on the basis of two variables: mean  $E(\widetilde{W})$  and variance  $Var(\widetilde{W})$ . The relationship can be defined as follows:

$$
\operatorname {E} \left[ \mathrm {U} (\widetilde {\mathrm {W}}) \right] = \Psi \left[ \binom {+} {\mathrm {E} (\widetilde {\mathrm {W}})}; \left(\operatorname {V a r} (\widetilde {\mathrm {W}})\right) \right] \tag {4.40}
$$

The function  $\Psi$  is called mean-variance indirect utility (or indirect mean-variance utility function), and it shows that:

- the mean has a positive effect: the mean increases, increase the level of welfare;
- the variance has a negative effect: the variance increases, decrease the level of welfare.

Also, the function  $\Psi$  shows that as the means are equal, the investor's choices are based on risk.

By considering two random variables  $(\widetilde{W_1};\widetilde{W_2})$

Therefore, if there are two random variables  $(\widetilde{W}_1; \widetilde{W}_2)$  the investor choose on the basis of Eq. (4.40) as follows:

$$
\mathrm {E} \left(\widetilde {\mathrm {W} _ {1}}\right) = \mathrm {E} \left(\widetilde {\mathrm {W} _ {2}}\right) \quad \text {a n d} \quad \operatorname {V a r} \left(\widetilde {\mathrm {W} _ {1}}\right) <   \operatorname {V a r} \left(\widetilde {\mathrm {W} _ {2}}\right) \Rightarrow \widetilde {\mathrm {W} _ {1}} \gtrsim \widetilde {\mathrm {W} _ {2}}
$$

$$
\operatorname {E} \left(\widetilde {\mathrm {W} _ {1}}\right) > E \left(\widetilde {\mathrm {W} _ {2}}\right) \quad \text {a n d} \quad \operatorname {V a r} \left(\widetilde {\mathrm {W} _ {1}}\right) = \operatorname {V a r} \left(\widetilde {\mathrm {W} _ {2}}\right) \Rightarrow \widetilde {\mathrm {W} _ {1}} \gtrsim \widetilde {\mathrm {W} _ {2}}
$$

# Hyperbolic Absolute Risk Aversion (hara) and Decreasing Absolute Risk Aversion (dara)

Generalisation of the utility functions that can be classified in the Hyperbolic Absolute Risk Aversion (HARA) class, is the following:

$$
\mathrm {U} (\mathrm {w}) = \frac {1}{a _ {2} - 1} \left(a _ {1} + a _ {2} w\right) ^ {1 - \frac {1}{a _ {1}}} \quad w > - \frac {a _ {1}}{a _ {2}}; a _ {2} \neq 0 \tag {4.41}
$$

where  $a_1$  and  $a_2$  are arbitrary constants able to guarantee positive value of absolute risk aversion  $(\lambda_{(\mathrm{w})})$ .

Utility functions grouped in this class have the following absolute risk aversion  $(\lambda_{(\mathrm{w})})$ :

$$
\lambda_ {(\mathrm {w})} = \frac {1}{\mathrm {a} _ {1} + \mathrm {a} _ {2} w} \tag {4.42}
$$

# 4.3 Utility Functions

It is worth noting that the utility function power, negative exponential and quadratic can be grouped in the HARA class. Indeed they use a hyperbolic absolute risk aversion as follows:

- the absolute risk aversion of the power utility function is obtained by assuming  $\mathrm{a}_1 = 0$  and  $\mathrm{a}_2 = \frac{1}{1 - a}$  as follows:

$$
\lambda_ {(\mathrm {w})} = \frac {1}{\mathrm {a} _ {1} + \mathrm {a} _ {2} w} \rightarrow \lambda_ {(\mathrm {w})} = \frac {1}{\frac {w}{1 - a}} = \frac {1 - a}{w}
$$

- the absolute risk aversion of the negative exponential utility function is obtained by assuming  $\mathrm{a}_1 = a$  and  $\mathrm{a}_2 = 0$  as follows:

$$
\lambda_ {(\mathrm {w})} = \frac {1}{\mathrm {a} _ {1} + \mathrm {a} _ {2} w} \rightarrow \lambda_ {(\mathrm {w})} = \frac {1}{a}
$$

- the absolute risk aversion of the quadratic utility function is obtained by assuming  $\mathrm{a}_1 = \frac{1}{a}$  and  $\mathrm{a}_2 = -1$  as follows:

$$
\lambda_ {(\mathrm {w})} = \frac {1}{\mathrm {a} _ {1} + \mathrm {a} _ {2} w} \rightarrow \lambda_ {(\mathrm {w})} = \frac {1}{\frac {1}{a} - w} = \frac {1}{\frac {1 - a w}{a}} = \frac {\mathrm {a}}{1 - a w}
$$

The utility functions classified in the HARA group can be generalized in the class of Decreasing Absolute Risk Aversion (DARA). Generally, the HARA class uses a hyperbolic absolute risk aversion.

The generalization of the utility functions able to be grouped in DARA class, is the following:

$$
\mathrm {U} (\mathrm {w}) = \left(w + \frac {H}{G}\right) ^ {1 - \frac {1}{G}} \tag {4.43}
$$

where the absolute risk aversion is the following:

$$
\lambda_ {(\mathrm {w})} = \frac {1}{\mathrm {G} w + H} = \frac {1}{\mathrm {G}} \cdot \frac {1}{\mathrm {w} + \frac {H}{G}} > 0 \tag {4.44}
$$

It is worth noting that by changing the value of  $\mathbf{G}$  and  $\mathbf{H}$  in the absolute risk aversion  $(\lambda_{(\mathrm{w})})$  it is possible to obtain other classes. Indeed:

- for  $\mathrm{H} = 0; \mathrm{G} > 0$ : utility functions grouped in CRRA class are obtained;
- for  $\mathrm{G} = 0; \mathrm{H} > 0$ : utility functions grouped in CARA class are obtained.

The DARA generalization is the following:

$$
\frac {\partial \lambda_ {(\mathrm {w})}}{\partial (w)} = - \frac {\mathrm {U} ^ {\prime \prime \prime} (w) \cdot \mathrm {U} ^ {\prime} (w) - [ \mathrm {U} ^ {\prime \prime} (w) ] ^ {2}}{[ \mathrm {U} ^ {\prime} (w) ] ^ {2}} <   0 \tag {4.45}
$$

In this case the third derivative is positive  $(\mathrm{U}^{\prime \prime \prime}(w) > 0)$ . It implies that as wealth increases, there is less absolute risk aversion.

In order to choose the utility function to be implemented, the following criteria can be used (Litner 1970):

- short-term decisions: a neutral risk can be assumed. Therefore, a zero absolute risk aversion is assumed  $(\lambda_{(\mathrm{w})} = 0)$  and therefore the linear utility function can be used;
- medium-term decision: a constant risk can be assumed. Therefore, a constant absolute risk aversion can be assumed  $(\lambda_{(\mathrm{w})} = a)$  and therefore the negative exponential utility function can be used;
- long-term period decision: a utility function in the DARA class can be assumed.

# 4.4 Utility Functions and Portfolio Choices

The portfolio choices (or portfolio selection) is a problem of the wealth allocation between different investment assets (Ingersoll 1987; Gravelle and Rees 1992; Markowitz 1952, 1956, 1959; Tobin 1958; Litner 1965a, b).

In this context, the portfolio choices will be analysed based on the two main criteria:

- the utility functions criteria;
- the mean-variance criteria.

This paragraph will focus on the first, while the next paragraph will focus on the second.

The aim of investors is to define the "optimum portfolio" capable of achieving maximisation of the expected utility.

The definition of this aim is simplification because the aim is based on a single parameter. However, it presents a disadvantage because it represents an over-simplification that ends up losing several key elements. In a context of risk aversion, in order to reduce the effects of the over-simplification, the objective of maximization of the expected utility can be declined in two sub-objectives:

- profit maximization;
- risk minimization.

The utility of the expected value of wealth  $(\mathrm{U}[\mathrm{E}(\mathrm{w})])$  is equal to the sum of the expected value of the utility function  $(\mathrm{E}[\mathrm{U}(\mathrm{w})])$  and the risk  $(\Phi (\mathrm{w}))$  (Castellani et al. 2005), as follows:

$$
\mathrm {U} [ \mathrm {E} (\mathrm {w}) ] = \mathrm {E} [ \mathrm {U} (\mathrm {w}) ] + \Phi (\mathrm {w}) \tag {4.46}
$$

In a condition of risk aversion, the risk is always positive, while the risk is null in a condition of risk neutral or in the use of a degenerate variable.

Equation (4.46) can be re-written in terms of risk  $(\Phi(w))$  or in terms of the expected value of the utility function  $(E[U(w)])$  as follows:

$$
\mathrm {U} [ \mathrm {E} (\mathrm {w}) ] = \mathrm {E} [ \mathrm {U} (\mathrm {w}) ] + \Phi (\mathrm {w}) \rightarrow\begin{array}{l}\Phi (\mathrm {w}) = \mathrm {U} [ \mathrm {E} (\mathrm {w}) ] - \mathrm {E} [ \mathrm {U} (\mathrm {w}) ]\\\mathrm {E} [ \mathrm {U} (\mathrm {w}) ] = \mathrm {U} [ \mathrm {E} (\mathrm {w}) ] - \Phi (\mathrm {w})\end{array}\tag {4.47}
$$

Note that maximization of the expected value of the utility function  $(E[U(w)])$  is due to maximization of the expected value of the wealth  $(U[E(w)])$ , as well as minimization of the risk  $(\Phi (w))$ . Consequently, the expected value of the utility is a function of the trade-off between risk and return.

Specifically, for a defined level of wealth  $(w)$ , using  $m$  for the expected value of the wealth  $(m = E(w))$ ,  $\varphi$  the risk level  $(\varphi = \Phi (w))$ , and  $U$  the expected utility  $(U = E[U(w)])$ , each financial position can be defined on the basis of the trade-off between risk  $(\varphi)$  and return  $(m)$  as follows (Castellani et al. 2005);

$$
\mathrm {U} (\varphi , \mathrm {m}) = \mathrm {U} (\mathrm {m}) - \varphi \tag {4.48}
$$

There is a subset of the plane  $(\varphi, m)$  where the set of investment opportunities can be seen. If the utility function is continuous and derivable at least twice in the plane  $(\varphi, m)$ , the two partial derivatives are the following:

$$
\frac {\partial \mathrm {U} _ {(\varphi , \mathbf {m})}}{\partial \mathbf {m}} = \mathrm {U} ^ {\prime} (\mathbf {m}) \tag {4.49}
$$

$$
\frac {\partial \mathbf {U} _ {(\varphi , \mathbf {m})}}{\partial \varphi} = - 1
$$

Therefore, given two points in the plane  $(\varphi ,m)$  they represent two financial positions:

- at the same risk  $(\varphi)$  level: the point with the higher expected return  $(m)$  is preferred. Therefore, for any value of the abscissa  $(\varphi)$ , the point with the higher ordinate  $(m)$  is preferred because the utility function  $(U)$  is increasing based on  $m$  for any given  $\varphi$ ;
- at the same expected return  $(m)$  level: the point with the lower risk  $(\varphi)$  is preferred. Therefore, for any value of the ordinate  $(m)$ , the point with the lower abscissa  $(\varphi)$  is preferred because the utility function  $(U)$  is concave based on  $\varphi$  for any given  $m$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/87fea16b-33f6-43ec-8056-5ef3565ac4c2/e11368133fddfe2c2372e11b9c5ab1f74820662fd0cbc64eae74c81ef8e8bb41.jpg)
Fig. 4.5 Dominance of financial position in the plane  $(\varphi, \mathrm{m})$

Each point defines a financial position and it can be represented in the plane  $(\varphi, m)$  as in Fig. 4.5 (adapted from Castellani et al. 2005).

Figure 4.5 shows that:

- point  $A$  is preferred to points  $B$  and  $B'$  because they have the same risk  $(\varphi)$ , but the expected return  $(m)$  of point  $A$  is higher than that of points  $B$  and  $B'$ ; similarly, point  $B'$  is preferred to point  $B$ :  $A \succ B; A \succ B'; B' \succ B$ .
- point  $C$  is preferred to point  $D$  because they have the same expected return  $(m)$ , but the risk of point  $C$  is lower than that of point  $D$ :  $C \succ D$ .

At this stage of the analysis the main problem is related to the impossibility of defining relationships between points with different ordinates or abscissa (such as the preferences between point  $A$  and points  $C$  and  $D$  and also between points  $B$ ,  $B'$  and  $C$  and  $D$ ) while it is possible to define relationships between points with the same abscissa or ordinate (such as the preferences between point  $A$  and point  $B'$  and  $B$  or between  $C$  and  $D$ ).

The solution of the problem requires consideration of the objectives of  $\varphi$  and  $m$  jointly. For this objective the function  $U(\varphi, m)$  can be used. Therefore, it is necessary to derive the level set (level curve) of the space  $U(\varphi, m)$ , and then the shape of the points in the plane  $(\varphi, m)$  corresponding to the same level of the expected utility  $(\bar{U})$ , as follows (Castellani et al. 2005):

$$
\mathrm {U} (\varphi , \mathrm {m}) = \bar {\mathrm {U}} \rightarrow \bar {U} = U (m) - \varphi \tag {4.50}
$$

and therefore:

$$
\mathrm {U} (\mathrm {m}) = \varphi + \bar {\mathrm {U}} \tag {4.51}
$$

The utility function is always increasing (the first derivative is always positive). Then it is an injective function (one-to-one function) and its inverse is equal to:

$$
\mathrm {m} (\varphi) = \mathrm {U} ^ {- 1} (\varphi + \bar {\mathrm {U}}) \tag {4.52}
$$

Note that by placing the risk equal to zero  $(\varphi = 0)$ , we have:

$$
\mathrm {U} (\mathbf {m}) = \bar {\mathrm {U}}; \quad \overline {{\overline {{\mathbf {m}}}}} = \mathrm {U} ^ {- 1} (\bar {\mathrm {U}})
$$

Representing the intersection between the curve level  $U(\varphi, m) = \bar{U}$  and the ordinate, and it represents the certainty equivalent of all points on the curve.

Based on the implicit function, the two first partial derivatives are the following:

$$
\begin{array}{l} \frac {\partial \mathrm {m}}{\partial \varphi} = - \frac {\frac {\partial \mathrm {U}}{\partial \varphi}}{\frac {\partial \mathrm {U}}{\partial \mathrm {m}}} = - \frac {- 1}{\mathrm {U} ^ {\prime} (\mathrm {m})} = \frac {1}{\mathrm {U} ^ {\prime} (\mathrm {m})} \tag {4.53} \\ \frac {\partial \varphi}{\partial \mathrm {m}} = - \frac {\frac {\partial \mathrm {U}}{\partial \varphi}}{\frac {\partial \mathrm {U}}{\partial \mathrm {m}}} = - \frac {- 1}{\mathrm {U} ^ {\prime} (\mathrm {m})} = \frac {1}{\mathrm {U} ^ {\prime} (\mathrm {m})} \\ \end{array}
$$

The first derivative is always positive because the function is increasing, and therefore:

$$
\frac {1}{\mathrm {U} ^ {\prime} (\mathrm {m})} > 0 \tag {4.54}
$$

The second partial derivatives are the following:

$$
\begin{array}{l} \frac {\partial^ {2} \mathbf {m}}{\partial \varphi^ {2}} = \frac {\partial \left(\frac {1}{\overline {{\mathbf {U} ^ {\prime} [ \mathbf {m} _ {(\varphi)} ]}}}\right)}{\partial \varphi} = - \frac {\mathbf {U} ^ {\prime \prime} (\mathbf {m})}{[ \mathbf {m} _ {(\varphi)} ] ^ {2}} \frac {\mathrm {d} \mathbf {m}}{\mathrm {d} \varphi} = - \frac {\mathbf {U} ^ {\prime \prime} (\mathbf {m})}{[ \mathbf {U} ^ {\prime} (\mathbf {m}) ] ^ {3}} \tag {4.55} \\ \frac {\mathrm {d} ^ {2} \varphi}{\mathrm {d m} ^ {2}} = \frac {\mathrm {d}}{\mathrm {d} \varphi} \frac {1}{\mathbf {U} ^ {\prime} [ \mathbf {m} (\varphi) ]} = - \frac {\mathbf {U} ^ {\prime \prime} (\mathbf {m})}{[ \mathbf {m} (\varphi) ] ^ {2}} \frac {\mathrm {d} \mathbf {m}}{\mathrm {d} \varphi} = - \frac {\mathbf {U} ^ {\prime \prime} (\mathbf {m})}{[ \mathbf {U} ^ {\prime} (\mathbf {m}) ] ^ {3}} \\ \end{array}
$$

The second derivative is negative because the risk aversion is assumed and therefore:

$$
- \frac {\mathrm {U} ^ {\prime \prime} (\mathrm {m})}{\left[ \mathrm {U} ^ {\prime} (\mathrm {m}) \right] ^ {3}} > 0 \tag {4.56}
$$

On the basis of the signs of the first and second derivatives, the curves in the plane  $(\varphi ,m)$  are increasing function (for  $m$  ) and convex (for  $\varphi$  ), as shown in Fig. 4.6 (adapted from Castellani et al. 2005).

Figure 4.6 registers the indifference curves with regards to the values  $\bar{u}_0, \bar{u}_1, \bar{u}_2$  of the expected utility where  $\bar{u}_0 < \bar{u}_1 < \bar{u}_2$ .

The points on the curve represent the financial positions of the investors.

Points  $A$  and  $C$  are indifferent among them because they have the same expected utility  $(\bar{u}_2)$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/87fea16b-33f6-43ec-8056-5ef3565ac4c2/ffa6122ea1622967dae7c4ec411d17c247987e8f499b33dda402c7ea30b38990.jpg)
Fig. 4.6 Dominance of financial position in the plane  $(\varphi, \mathrm{m})$  based on indifference curves

Point  $K_{2}$  represents the certainty equivalent of points  $A$  and  $C$ , and also the points on the same curve.

Point  $D$  is indifferent to point  $B'$  that, in turn, is preferred to point  $B$ . Therefore, point  $D$  is preferred to point  $B$ .

Point  $K_{0}$  is indifferent to points  $B^{\prime}$  and  $D$ , and all other points of the curve.

Having defined the single financial positions on the indifference curves, the problem of the portfolio choices can be solved based on the utility function criteria. There are two main phases (Castellani et al. 2005; Saltari 2011):

(1) optimization phase;
(2) maximization phase.

# Optimization Phase

It is quite clear that in the absence of constraints on risk  $(\varphi)$  and expected return  $(m)$  the optimal solution is given by:  $\varphi = 0; m = \infty$ . The presence of constraints generate a set of opportunities  $(W)$  that always defines a subset of the plane  $(\varphi, m)$ . It is the presence of constraints on the two variables that results in the need for the Optimization phase. Its aim is to analyse separately the different partial objectives of the financial positions.

Within the set of opportunities  $(W)$  a key role is played by the opportunity of frontier: it can be defined as the opportunity that minimizes the risk for a given level of the expected value. The constrained optimization problem can be defined as follows (Castellani et al. 2005):

$$
\left\{ \begin{array}{l} \min  _ {\mathrm {w} \in \mathrm {W}} \Phi (\mathrm {w}) \\ \mathrm {E} (\mathrm {w}) = \mathrm {m} _ {0} \end{array} \right. \tag {4.57}
$$

where the first is the function to minimize and the second is the constraint.

In Fig. 4.7 (adapted from Castellani et al. 2005) the set of opportunities  $(W)$  is represented by the area bounded by the curve between points  $S_{5}$  and  $S_{4}$ . It implies that the set of opportunities never touches the ordinate. Consequently, the free-risk positions are not included in the set of opportunities  $(W)$  (Fig. 4.7).

Having defined a level of expected return equal to  $m_0$ , point  $S_0$  (where  $S_0 \in W$ ) defines the opportunity frontier. Point  $S_0$  dominates all points to its right ( $S_i$ ). They are all characterized by greater risk for the same expected return. Therefore, point  $S_0$  is preferred to all of the others on its right ( $S_i$ ), so that:  $S_0 \succ S_i$ .

By solving the constrained optimization of Eq. (4.57) for all values of  $m_0$  the frontier opportunities are defined, defining the frontier of opportunities  $(\mathcal{B})$ : it is a subset of opportunities of frontier  $(W)$  defined by the curve between points  $S_5$  and  $S_2$ , and between points  $S_3$  and  $S_4$ . On the frontier of the opportunity  $(\mathcal{B})$  there may be opportunities that presents the same risk but with a different expected value (such as points  $S_0$  and  $S_0'$ ).

The efficient opportunity can be defined for every opportunity on the frontier of the opportunities  $(\mathcal{B})$  which has a maximum expected value  $(m)$  for the same risk level  $(\varphi)$ . Therefore, the efficient opportunity is the solution of the constrained optimization problem, as follows (Castellani et al. 2005):

$$
\left\{ \begin{array}{l} \max  _ {\mathrm {w} \in \mathcal {B}} \mathrm {E} (\mathrm {w}) \\ \Phi (\mathrm {w}) = \varphi_ {0} \end{array} \right. \tag {4.58}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/87fea16b-33f6-43ec-8056-5ef3565ac4c2/11da29215bf28b9ff4aecb93569fc0fbdee79167c570ae7216aff2509620cdf8.jpg)
Fig. 4.7 Opportunities frontier and the maximization points

where the first is the function to be maximized and the second is the constraint.

The set of the efficient opportunities for the different level of risk  $(\varphi_0)$  defines the efficient frontier  $(\varepsilon)$ : it is a subset of the frontier of the opportunities  $(\mathcal{B})$  that, in turn, is a subset of the set of opportunities  $(W)$ .

In Fig. 4.7 the efficient frontier is given by the curve portions (indicated by a continuous line) between points  $S_{1}$  and  $S_{2}$ , and between points  $S_{3}$  and  $S_{4}$ .

The curve portion (indicated by a dotted line) between points  $S_{1}$  and  $S_{5}$  is the portion of the frontier of opportunity  $(\mathcal{B})$  that is dominated, and then is not efficient: for each point of the curve, it is possible to identify a point with same level of risk that offers higher expected value. The point  $S_{1}$  has the minimum risk level.

The efficient frontier is given by an increasing function by definition because the first derivative is always positive. All points on the efficient frontier are characterized to be Pareto optimality: it is impossible to improve any one point without worse at least one other point.

The definition of the efficient frontier, allows for the separate analysis of the partial objectives of the financial positions. Therefore, with the definition of the efficient frontier, the Optimization phase is completed.

# Maximization Phase

The aim of the maximization phase is to identify the points that maximize expected utility.

Therefore, after identification of the points of optimum of the set of opportunities  $(W)$ , the maximum point is chosen. This point is positioned on the indifference curve with the maximum expected utility.

Therefore, it is necessary to identify the points  $\hat{P}$  on the efficient frontier which are positioned on the indifference curve  $U(\varphi, m) = \hat{u}$  with the highest expected utility  $\hat{u}$ .

In Fig. 4.7, points  $\hat{P}_1$  and  $\hat{P}_2$  represent the position of maximum expected utility and they are indifferent among them. Also point  $\hat{P}_0$  is indifferent to points  $\hat{P}_1$  and  $\hat{P}_2$ . Specifically, the ordinate  $\overline{\overline{m}}$  of  $\hat{P}_0$  is the certainty equivalent of the risky positions represented by the points  $\hat{P}_1$  and  $\hat{P}_2$ . But  $\hat{P}_0$  is outside of the set of the opportunities  $(W)$  and therefore it is not a real accessible position. However, its meaning is relevant: the investor is indifferent to obtaining  $\overline{\overline{m}}$  with certainty  $(\hat{P}_0)$  or the set of opportunities  $(W)$ . Therefore,  $\overline{\overline{m}}$  can be defined as the indifference price of the set of opportunities  $(W)$ . It is worth noting, that point  $\hat{P}_0$ , and therefore the value  $\overline{\overline{m}}$ , can be identified at the end of the optimization phase only (Castellani et al. 2005).

For greater understanding of the two phases of Optimization and Maximization for the portfolio choices under the utility function approach, three main cases can be analysed (Saltari 2011):

- (Case 1) two assets in the portfolio;
Case 2) more than two assets in the portfolio;
- (Case 3) more than two assets in the portfolio and one of them free-risk.

# Case 1) Two Assets in the Portfolio

Assuming two assets in the portfolio. Therefore, the investor has to share his wealth between asset  $A_{1}$  and asset  $A_{2}$ . The current wealth of the investor to be invested, is the constraint: it does not change but it can only be shared between the two assets. Formally (Saltari 2011):

$$
\mathrm {P} _ {1} ^ {\mathrm {A}} \mathrm {A} _ {1} + \mathrm {P} _ {2} ^ {\mathrm {A}} \mathrm {A} _ {2} = \mathrm {P} _ {1} ^ {\mathrm {A}} \overline {{\mathrm {A} _ {1}}} + \mathrm {P} _ {2} ^ {\mathrm {A}} \overline {{\mathrm {A} _ {2}}} = \mathrm {w} \tag {4.59}
$$

where:

-  $w$ : is the current wealth held by the investor;
-  $P_1^A$  and  $P_2^A$ : are the prices of Asset 1 and Asset 2 respectively;
-  $A_{1}$  and  $A_{2}$ : are the amounts (number) of Asset 1 and Asset 2 respectively, purchased by the investor;
-  $\overline{\mathrm{A}_1}$  e  $\overline{\mathrm{A}_2}$ : are the amounts (number) of Asset 1 and Asset 2 respectively, held by investor.

The current portion of wealth invested in the i-th asset  $(\alpha_{i})$  is equal to:

$$
\alpha_ {\mathrm {i}} = \frac {\mathrm {P} _ {\mathrm {i}} ^ {\mathrm {A}} \mathrm {A} _ {\mathrm {i}}}{\mathrm {w}} \quad \text {o r} \quad \alpha_ {\mathrm {i}} = \frac {\mathrm {P} _ {\mathrm {i}} ^ {\mathrm {A}} \bar {\mathrm {A}} _ {\mathrm {i}}}{\mathrm {w}} \tag {4.60}
$$

where, the first is defined according to the amount of the i-th Asset purchased by the investor, while the second according to the amount of the i-th Asset held by the investor.

Considering that there are only two assets, the constraint can be defined on the bases of the sum of the portions of wealth invested in Asset 1  $(\alpha_{1})$  and Asset 2  $(\alpha_{2})$  as follows:

$$
\mathrm {P} _ {1} ^ {\mathrm {A}} \mathrm {A} _ {1} + \mathrm {P} _ {2} ^ {\mathrm {A}} \mathrm {A} _ {2} = \mathrm {w}
$$

by dividing each term by wealth (w), we have:

$$
\frac {\mathrm {P} _ {1} ^ {\mathrm {A}} \mathrm {A} _ {1}}{\mathrm {w}} + \frac {\mathrm {P} _ {2} ^ {\mathrm {A}} \mathrm {A} _ {2}}{\mathrm {w}} = \frac {\mathrm {w}}{\mathrm {w}}
$$

and on the basis of Eq. (4.60), we have:

$$
\alpha_ {1} + \alpha_ {2} = 1 \tag {4.61}
$$

The expected return of each Asset is function of the states of nature  $(s)$ . For simplicity, assuming that only two states are possible:  $s = 1; s = 2$ . The matrix

expected return—states of nature, of the two assets can be defined as follows: (Table 4.2).

The  $z_{i,s}$  is the expected return of the i-th asset (for  $i = 1,2$ ) when the s-th states of nature (for  $s = 1,2$ ) is achieved.

Therefore, the portfolio's expected return is function of the portion of the current wealth invested in each of the two assets, as well as the expected return of the two assets as function of the states of nature. Formally (Saltari 2011):

$$
y _ {1} = A _ {1} z _ {1, 1} + A _ {2} z _ {2, 1} \quad \text {f o r} s = 1 \left(y _ {s} = y _ {1}\right) \tag {4.62}
$$

$$
y _ {2} = A _ {1} z _ {1, 2} + A _ {2} z _ {2, 2} \quad \text {f o r} s = 2 \left(y _ {s} = y _ {2}\right)
$$

where:

- the first equation is the portfolio's expected return when the state of nature 1  $(s = 1 \rightarrow y_s = y_1)$  is achieved and is equal to the sum of the amount (units) of the two assets in portfolio  $(A_1, A_2)$  multiplied by their respective expected return when the state of nature 1  $(z_{1,1}, z_{2,1}$  for  $i = 1, 2$  and  $s = 1)$  is achieved;
- the second equation is the portfolio's expected return when the state of nature 2  $(s = 2 \rightarrow y_s = y_2)$  is achieved and is equal to the sum of the amount (units) of the two assets in portfolio  $(A_1, A_2)$  multiplied by their respective expected return when the state of nature 2  $(z_{1,2}, z_{2,2}$  for  $i = 1, 2$  and  $s = 2)$  is achieved.

Based on Eq. (4.60), we have:

$$
\alpha_ {i} = \frac {P _ {i} ^ {A} A _ {i}}{w} \rightarrow A _ {i} = \frac {\alpha_ {i} w}{P _ {i} ^ {A}}
$$

and by substituting in Eq. (4.62) we have:

$$
\mathrm {y} _ {1} = \alpha_ {1} \mathrm {w} \frac {\mathrm {Z} _ {1 , 1}}{\mathrm {P} _ {1} ^ {\mathrm {A}}} + \alpha_ {2} \mathrm {w} \frac {\mathrm {Z} _ {2 , 1}}{\mathrm {P} _ {2} ^ {\mathrm {A}}} \quad \text {f o r s} = 1 \left(\mathrm {y} _ {\mathrm {s}} = \mathrm {y} _ {1}\right) \tag {4.63}
$$

$$
\mathrm {y} _ {2} = \alpha_ {1} \mathrm {w} \frac {\mathrm {Z} _ {1 , 2}}{\mathrm {P} _ {1} ^ {\mathrm {A}}} + \alpha_ {2} \mathrm {w} \frac {\mathrm {Z} _ {2 , 2}}{\mathrm {P} _ {2} ^ {\mathrm {A}}} \quad \text {f o r s} = 2 (\mathrm {y} _ {\mathrm {s}} = \mathrm {y} _ {2})
$$

The rate of return of the i-th asset when the state of nature  $\mathbf{s}(r_{i,s})$  is achieved can be defined on the basis of its expected return in the state of nature  $\mathbf{s}(z_{i,s})$  and its purchase price  $(P_i^A)$ , as follows:

Table 4.2 Matrix expected return—state of nature

<table><tr><td colspan="4">Matrix expected return—states of nature</td></tr><tr><td rowspan="2" colspan="2"></td><td colspan="2">States of nature</td></tr><tr><td>State of nature 1(s = 1)</td><td>State of nature 1(s = 1)</td></tr><tr><td rowspan="2">Expected return</td><td>Asset 1 (i = 1)</td><td>zi,s = z1,1</td><td>zi,s = z1,2</td></tr><tr><td>Asset 2 (i = 2)</td><td>zi,s = z2,1</td><td>zi,s = z2,2</td></tr></table>

$$
\mathrm {r} _ {\mathrm {i}, \mathrm {s}} = \frac {\mathrm {z} _ {\mathrm {i} , \mathrm {s}} - \mathrm {P} _ {\mathrm {i}} ^ {\mathrm {A}}}{\mathrm {P} _ {\mathrm {i}} ^ {\mathrm {A}}} = \frac {\mathrm {z} _ {\mathrm {i} , \mathrm {s}}}{\mathrm {P} _ {\mathrm {i}} ^ {\mathrm {A}}} - 1 \tag {4.64}
$$

The total return of the i-th asset when the state of nature  $\mathrm{s}(R_{i,s})$  is achieved, is equal to:

$$
1 + \mathrm {r} _ {\mathrm {i}, \mathrm {s}} = \frac {\mathrm {Z} _ {\mathrm {i} , \mathrm {s}}}{\mathrm {P} _ {\mathrm {i}} ^ {\mathrm {A}}} \equiv \mathrm {R} _ {\mathrm {i}, \mathrm {s}} \rightarrow \mathrm {R} _ {\mathrm {i}, \mathrm {s}} \equiv 1 + \mathrm {r} _ {\mathrm {i}, \mathrm {s}} \tag {4.65}
$$

Therefore, Eq. (4.63) can be rewritten as follows (Saltari 2011):

$$
\begin{array}{l} y _ {1} = \left[ \alpha_ {1} R _ {1, 1} + \alpha_ {2} R _ {2, 1} \right] w \quad \text {f o r} s = 1 \left(y _ {s} = y _ {1}\right) \tag {4.66} \\ \begin{array}{l} y _ {1} = \left[ \alpha_ {1} R _ {1, 1} + \alpha_ {2} R _ {2, 1} \right] w \quad \text {f o r} s = 2 \left(y _ {s} = y _ {2}\right) \end{array} \\ \end{array}
$$

where:

- the first equation is the portfolio's expected return when the state of nature 1  $(s = 1 \rightarrow y_s = y_1)$  is achieved and is equal to the sum of wealth portions invested in the two assets  $(\alpha_1 w; \alpha_2 w)$  multiplied by their expected total return respectively when the state of the nature 1  $(R_{1,1}, R_{2,1}$  for  $i = 1, 2$  and  $s = 1)$  is achieved;
- the second equation is the portfolio's expected return when the state of nature 2  $(s = 2\rightarrow y_s = y_2)$  is achieved and is equal to the sum of wealth portions invested in the two assets  $(\alpha_{1}w;\alpha_{2}w)$  multiplied by their expected total return respectively when the state of the nature 2  $(R_{1,2},R_{2,2}$  for  $i = 1,2$  and  $s = 1)$  is achieved.

In general, we have:

$$
\mathrm {y} _ {\mathrm {s}} = \alpha_ {\mathrm {i}} \mathrm {R} _ {\mathrm {i}, \mathrm {s}} \mathrm {w} \quad \mathrm {i} = 1, 2; \mathrm {s} = 1, 2 \tag {4.67}
$$

Therefore, the portfolio's return is function of the state of nature  $(s = 1,2)$  that it is achieved and of the total return of the two assets  $(R_{1,s};R_{2,s})$  on the basis of the wealth portion invested in each of them  $(\alpha_{1}w;\alpha_{2}w)$ .

The equations can be schematically represented as in Fig. 4.8 (adapted from Saltari 2011).

In Fig. 4.8, the portfolio's return is registered on the abscissa when the state of nature  $1$  ( $s = 1 \rightarrow y_s = y_1$ ) is achieved, while the portfolio's return is registered on the ordinate when the state of nature  $2$  ( $s = 2 \rightarrow y_s = y_2$ ) is achieved. Point  $A$  identifies the portfolio consisting of Asset 1 only ( $\alpha_1 = 1; \alpha_2 = 0$ ) while point  $B$  identifies the portfolio consisting of Asset 2 only ( $\alpha_1 = 0; \alpha_2 = 1$ ). Therefore, each point between  $A$  and  $B$  can be obtained by changing the amount of the two assets in the portfolio ( $\Delta \alpha_1; \Delta \alpha_2$ ).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/87fea16b-33f6-43ec-8056-5ef3565ac4c2/f0d916820f802e4a7e5d6f966d1e294dbb62ce563d3e3050acd2ae9249fb700b.jpg)
Fig. 4.8 The portfolio's return

If there is no short selling, and therefore for a positive value of  $\alpha_{i}$  ( $\alpha_{i} > 0$ ), segment  $AB$  defines the constraint. The negative slope of the segment is due to the non-dominance of each of the two assets on the other one:

- for the state of nature 1, the return of asset 2 is higher than that of asset 1:

$$
s = 1 \rightarrow R _ {2, 1} > R _ {1, 1}
$$

- for the state of nature 2, the return of asset 1 is higher than that of asset 2:

$$
s = 2 \rightarrow R _ {1, 2} > R _ {2, 2}
$$

If there is short selling, and therefore also for negative value of  $\alpha_{i}$  ( $\alpha_{i} < 0$ ), the constraint goes beyond points  $A$  and  $B$  up to points  $C$  and  $D$ . Specifically:

- point  $D$  represents a portfolio achieved through the short selling of Asset 2. Point A defines a portfolio that includes Asset 1 only. Therefore, if the revenues due to short selling of Asset 2 are used to purchase new amounts of Asset 1, it can go beyond point A up to point D. In this case, if the state of nature  $1 (s = 1)$  is achieved, the portfolio's return is null and the wealth held by the investor is just enough to repay debt due to short selling;
- point  $C$  represents a portfolio achieved through the short selling of Asset 1. Point B defines a portfolio that includes Asset 2 only. Therefore, if the revenues due to short selling of Asset 1 are used to purchase new amounts of Asset 2, it

can go beyond point B up to point C. In this case, if the state of nature  $2$  ( $s = 2$ ) is achieved, the portfolio's return is null and the wealth held by the investor is just enough to repay debt due to short selling.

It is worth noting that to assume that points  $C$  and  $D$  cannot be exceeded, it implies the assumption that the investor cannot fail. Beyond these points, the income is negative.

By assuming the absence of short selling, and therefore by considering the segment  $AB$  only, the sum of the portions of wealth invested in the two assets must be equal to the total wealth of the investor, as follows:

$$
\alpha_ {1} + \alpha_ {2} = 1 \tag {4.68}
$$

The constraint can be expressed based on one of the two assets. Therefore, based on the Eq. (4.68) the wealth portion invested in the asset  $2(\alpha_{2})$  can be expressed as function of the wealth portion invested in the asset  $1(\alpha_{1})$  as the follows:

$$
\alpha_ {2} = 1 - \alpha_ {1} \tag {4.69}
$$

By substituting Eq. (4.66) can be rewritten as follows:

$$
y _ {1} = \left[ \alpha_ {1} R _ {1, 1} + \alpha_ {2} R _ {2, 1} \right] w = \left[ \alpha_ {1} R _ {1, 1} + (1 - \alpha_ {1}) R _ {2, 1} \right]
$$

$$
w = \left[ \alpha_ {1} R _ {1, 1} + R _ {2, 1} - \alpha_ {1} R _ {2, 1} \right] w = \left[ \alpha_ {1} \left(R _ {1, 1} - R _ {2, 1}\right) + R _ {2, 1} \right] w
$$

$$
y _ {2} = \left[ \alpha_ {1} R _ {1, 2} + \alpha_ {2} R _ {2, 2} \right] w = \left[ \alpha_ {1} R _ {1, 2} + (1 - \alpha_ {1}) R _ {2, 2} \right]
$$

$$
w = \left[ \alpha_ {1} R _ {1, 2} + R _ {2, 2} - \alpha_ {1} R _ {2, 2} \right] w = \left[ \alpha_ {1} \left(R _ {1, 2} - R _ {2, 2}\right) + R _ {2, 2} \right] w
$$

and then:

$$
\mathbf {y} _ {1} = \left[ \begin{array}{l} \alpha_ {1} \left(\mathbf {R} _ {1, 1} - \mathbf {R} _ {2, 1}\right) + \mathbf {R} _ {2, 1} \end{array} \right] \mathrm {w} \quad \text {f o r s = 1 (y _ {s} = y _ {1})} \tag {4.70}
$$

$$
\mathrm {y} _ {2} = \left[ \alpha_ {1} \left(\mathrm {R} _ {1, 2} - \mathrm {R} _ {2, 2}\right) + \mathrm {R} _ {2, 2} \right] \mathrm {w} \quad \text {f o r s} = 2 \left(\mathrm {y} _ {\mathrm {s}} = \mathrm {y} _ {2}\right)
$$

It is possible to define the relationship between  $y_{1}$  and  $y_{2}$  on the basis of the constraint. By solving the first equation for  $\alpha_{1}$ , we have:

$$
\begin{array}{l} y _ {1} = \left[ \alpha_ {1} \left(R _ {1, 1} - R _ {2, 1}\right) + R _ {2, 1} \right] w \\ \frac {y _ {1}}{w} = \alpha_ {1} (R _ {1, 1} - R _ {2, 1}) + R _ {2, 1} \\ \frac {v _ {1}}{w} - R _ {2, 1} = \alpha_ {1} \left(R _ {1, 1} - R _ {2, 1}\right) \\ \alpha_ {1} = \frac {\left(\frac {\mathrm {Y} _ {1}}{\mathrm {W}}\right) - \mathrm {R} _ {2 , 1}}{\mathrm {R} _ {1 , 1} - \mathrm {R} _ {2 , 1}} \\ \end{array}
$$

By substituting in the second equation, we have:

$$
\mathbf {y} _ {2} = \left[ \alpha_ {1} \left(\mathrm {R} _ {1, 2} - \mathrm {R} _ {2, 2}\right) + \mathrm {R} _ {2, 2} \right] \mathbf {w}
$$

$$
\mathrm {y} _ {2} = \left[ \frac {\left(\frac {\mathrm {y} _ {1}}{\mathrm {W}}\right) - \mathrm {R} _ {1 , 2}}{\mathrm {R} _ {1 , 1} - \mathrm {R} _ {2 , 1}} \left(\mathrm {R} _ {1, 2} - \mathrm {R} _ {2, 2}\right) + \mathrm {R} _ {2, 2} \right] \mathrm {w}
$$

$$
\mathrm {y} _ {2} = \frac {\mathrm {R} _ {1 , 2} - \mathrm {R} _ {2 , 2}}{\mathrm {R} _ {1 , 1} - \mathrm {R} _ {2 , 1}} \left[ \left(\frac {\mathrm {y} _ {1}}{\mathrm {W}}\right) - \mathrm {R} _ {2, 1} \right] \mathrm {w} + \mathrm {R} _ {2, 2} \mathrm {w}
$$

$$
\mathrm {y} _ {2} = \frac {\mathrm {R} _ {1 , 2} - \mathrm {R} _ {2 , 2}}{\mathrm {R} _ {1 , 1} - \mathrm {R} _ {2 , 1}} \left[ \frac {\mathrm {y} _ {1} - \mathrm {R} _ {2 , 1} \cdot \mathrm {W}}{\mathrm {W}} \right] \mathrm {w} + \mathrm {R} _ {2, 2} \mathrm {w}
$$

and then:

$$
\mathrm {y} _ {2} = \frac {\mathrm {R} _ {1 , 2} - \mathrm {R} _ {2 , 2}}{\mathrm {R} _ {1 , 1} - \mathrm {R} _ {2 , 1}} \left[ \mathrm {y} _ {1} - \mathrm {w R} _ {2, 1} \right] + \mathrm {w R} _ {2, 2} \tag {4.71}
$$

Equation (4.72) defines the relationship between  $y_{1}$  and  $y_{2}$  based on the constraint. It can be defined as the constraint's equation (Saltari 2011). The ratio  $(R_{1,2} - R_{2,2}) / (R_{1,1} - R_{2,1})$  defines the slope of the constraint.

At this stage of the analysis, the main problem is the optimal allocation of the investor's wealth among the assets, and therefore the definition of the optimal portfolio. Based on the utility function criteria, this aim can be redefined in terms of the utility function maximization. Then, the optimal portfolio is the one that maximizes the investor's utility function, and consequently maximizes the expected return of the portfolio  $(y_{s})$ .

It is worth noting that the portfolio's return is function of two variables:

- the share of wealth  $\alpha_{i}(i = 1,2)$  to be invested in each of the two assets;
- the state of nature  $(s)$  which could be achieved in the future and its associate probability  $\pi_s(s = 1,2)$ .

Formally, a problem of constrained optimization can be defined, as follows (Saltari 2011):

$$
\left\{ \begin{array}{l} \max  _ {\alpha_ {1}, \alpha_ {2}} E (U) = \pi_ {1} U \left(y _ {1}\right) + \pi_ {2} U \left(y _ {2}\right) \\ \alpha_ {1} + \alpha_ {2} = 1 \end{array} \right. \tag {4.72}
$$

where the first is the equation to be maximized and the second is the constraint.

The Lagrangian  $(\mathcal{L})$  function is the following:

$$
\mathcal {L} = \pi_ {1} U (y _ {1}) + \pi_ {2} U (y _ {2}) + \lambda [ \alpha_ {1} + \alpha_ {2} - 1 ]
$$

By substituting Eq. (4.66) the equation to be maximized can be rewritten as follows:

$$
\begin{array}{l} E (U) = \pi_ {1} U \left(y _ {1}\right) + \pi_ {2} U \left(y _ {2}\right) \\ = \pi_ {1} U \left[ \left(\alpha_ {1} R _ {1, 1} + \alpha_ {2} R _ {2, 1}\right) w \right] + \pi_ {2} U \left[ \left(\alpha_ {1} R _ {1, 2} + \alpha_ {2} R _ {2, 2}\right) w \right] \\ \end{array}
$$

The first order conditions are the following:

$$
\left\{ \begin{array}{l} \frac {\partial \mathcal {L}}{\partial \alpha_ {1}} = \pi_ {1} U ^ {\prime} (y _ {1}) w R _ {1, 1} + \pi_ {2} U ^ {\prime} (y _ {2}) w R _ {1, 2} - \lambda = 0 \\ \frac {\partial \mathcal {L}}{\partial \alpha_ {2}} = \pi_ {1} U ^ {\prime} (y _ {1}) w R _ {2, 1} + \pi_ {2} U ^ {\prime} (y _ {2}) w R _ {2, 2} - \lambda = 0 \\ \frac {\partial \mathcal {L}}{\partial \lambda} = 1 - (\alpha_ {1} + \alpha_ {2}) = 0 \end{array} \right. \tag {4.73}
$$

By solving the first and the second equation for  $\lambda$ , we have:

$$
\begin{array}{l} \lambda = \pi_ {1} U ^ {\prime} (y _ {1}) w R _ {1, 1} + \pi_ {2} U ^ {\prime} (y _ {2}) w R _ {1, 2} \\ \lambda = \pi_ {1} U ^ {\prime} (y _ {1}) w R _ {2, 1} + \pi_ {2} U ^ {\prime} (y _ {2}) w R _ {2, 2} \\ \end{array}
$$

and then

$$
\pi_ {1} U ^ {\prime} (y _ {1}) w R _ {1, 1} + \pi_ {2} U ^ {\prime} (y _ {2}) w R _ {1, 2} = \pi_ {1} U ^ {\prime} (y _ {1}) w R _ {2, 1} + \pi_ {2} U ^ {\prime} (y _ {2}) w R _ {2, 2}
$$

By dividing first and second terms for the wealth  $(w)$ , we have:

$$
\pi_ {1} U ^ {\prime} (y _ {1}) R _ {1, 1} + \pi_ {2} U ^ {\prime} (y _ {2}) R _ {1, 2} = \pi_ {1} U ^ {\prime} (y _ {1}) R _ {2, 1} + \pi_ {2} U ^ {\prime} (y _ {2}) R _ {2, 2}
$$

Considering that the return of the i-th asset in the state of nature  $s\left(R_{i,s}\right)$  is equal to:

$$
R _ {i, s} = \frac {z _ {i , s}}{P _ {i} ^ {A}}
$$

and by substituting we have:

$$
\frac {\pi_ {1} \mathrm {U} ^ {\prime} \left(\mathrm {y} _ {1}\right) \mathrm {z} _ {1 , 1} + \pi_ {2} \mathrm {U} ^ {\prime} \left(\mathrm {y} _ {2}\right) \mathrm {z} _ {1 , 2}}{\mathrm {P} _ {1} ^ {\mathrm {A}}} = \frac {\pi_ {1} \mathrm {U} ^ {\prime} \left(\mathrm {y} _ {1}\right) \mathrm {z} _ {2 , 1} + \pi_ {2} \mathrm {U} ^ {\prime} \left(\mathrm {y} _ {2}\right) \mathrm {z} _ {2 , 2}}{\mathrm {P} _ {2} ^ {\mathrm {A}}} \tag {4.74}
$$

The equality (4.74) shows that for the optimal allocation, the investor shares his wealth between the two assets so that the last euro invested in asset 1 has the same expected marginal utility of the last euro invested in asset 2 (Saltari 2011).

# Case 2) More Than Two Assets in the Portfolio

Assuming that there are more than two assets in portfolio. In this case, the investor has to share his wealth (w) among n assets  $(n > 2)$ . The budget constrain can be formalized as follows (Saltari 2011):

$$
\sum_ {i = 1} ^ {n} P _ {i} ^ {A} A _ {i} = w \tag {4.75}
$$

By dividing the first and second terms for wealth (w), and considering the Eq. (4.60), the Eq. (4.75) can be expressed in terms of the share of wealth invested in each assets, as follows:

$$
\sum_ {i = 1} ^ {n} \frac {\mathrm {P} _ {\mathrm {i}} ^ {\mathrm {A}} \mathrm {A} _ {\mathrm {i}}}{w} = \frac {\mathrm {w}}{w} \rightarrow \frac {\mathrm {P} _ {\mathrm {i}} ^ {\mathrm {A}} \mathrm {A} _ {\mathrm {i}}}{w} = \alpha_ {i} \rightarrow \sum_ {\mathrm {i} = 1} ^ {\mathrm {n}} \alpha_ {\mathrm {i}} = 1
$$

By considering Eq. (2.67), we have:

$$
\mathrm {y} _ {\mathrm {s}} = \alpha_ {\mathrm {i}} \mathrm {R} _ {\mathrm {i}, \mathrm {s}} \mathrm {w} \rightarrow \mathrm {y} _ {\mathrm {s}} = \sum_ {\mathrm {i} = 1} ^ {\mathrm {N}} \alpha_ {\mathrm {i}} \mathrm {R} _ {\mathrm {i}, \mathrm {s}} \mathrm {w} \rightarrow \mathrm {y} _ {\mathrm {s}} = \mathrm {w} \sum_ {\mathrm {i} = 1} ^ {\mathrm {n}} \alpha_ {\mathrm {i}} \mathrm {R} _ {\mathrm {i}, \mathrm {s}}
$$

and by considering Eq. (2.65), we have:

$$
R _ {i, s} \equiv 1 + r _ {i, s}
$$

$$
\mathrm {y} _ {\mathrm {s}} = \mathrm {w} \sum_ {\mathrm {i} = 1} ^ {\mathrm {n}} \alpha_ {\mathrm {i}} \left(1 + \mathrm {r} _ {\mathrm {i}, \mathrm {s}}\right) \tag {4.76}
$$

In this case, the investor has to choose the share of wealth  $(\alpha_{i})$  to be invested in each asset in the portfolio with the objective of maximizing the expected utility of the portfolio's return  $(y_{s})$ . The optimization problem, can be formalized as follows (Saltari 2011):

$$
\left\{ \begin{array}{l} \max  _ {\alpha_ {i}} E (U) = \sum_ {s = 1} ^ {S} \pi_ {s} U \left(y _ {s}\right) \\ \sum_ {i = 1} ^ {n} \alpha_ {i} = 1 \end{array} \right. \tag {4.77}
$$

where the first is the equation to be maximized and the second is the budget constraint.

The Lagrangian function can be defined as follows:

$$
\mathcal {L} = \sum_ {s = 1} ^ {S} \pi_ {s} U (y _ {s}) + \lambda \left(\sum_ {\mathrm {i} = 1} ^ {\mathrm {n}} \alpha_ {\mathrm {i}} - 1\right)
$$

and by considering that

$$
\mathbf {y} _ {\mathrm {s}} = \mathrm {w} \sum_ {\mathrm {i} = 1} ^ {\mathrm {N}} \alpha_ {\mathrm {i}} \mathbf {R} _ {\mathrm {i}, \mathrm {s}}
$$

the  $E(U)$  function can be rewritten as follows:

$$
\mathrm {E} (\mathrm {U}) = \sum_ {s = 1} ^ {S} \pi_ {s} U (y _ {s}) = \sum_ {\mathrm {s} = 1} ^ {\mathrm {S}} \pi_ {\mathrm {s}} \mathrm {U} \left(\mathrm {w} \sum_ {\mathrm {i} = 1} ^ {\mathrm {N}} \alpha_ {\mathrm {i}} \mathrm {R} _ {\mathrm {i}, \mathrm {s}}\right)
$$

The first order conditions are the following:

$$
\left\{ \begin{array}{l} \frac {\partial \mathcal {L}}{\partial \alpha_ {\mathrm {i}}} = \sum_ {\mathrm {s} = 1} ^ {\mathrm {S}} \pi_ {\mathrm {s}} \mathrm {U} ^ {\prime} \left(\mathrm {y} _ {\mathrm {s}}\right) w \mathrm {R} _ {\mathrm {i}, \mathrm {s}} - \lambda = 0 i = 1, 2, \dots , n \\ \frac {\partial \mathcal {L}}{\partial \lambda} = 1 - \sum_ {\mathrm {i} = 1} ^ {\mathrm {n}} \alpha_ {\mathrm {i}} = 0 \end{array} \right. \tag {4.78}
$$

The solution of the system with regards to the value of  $\alpha_{\mathrm{i}}$  and  $\lambda$  are the optimal choice (Saltari 2011).

(Case 3) More Than Two Assets and one of Them Free-Risk in the Portfolio Assuming that there are more than two assets and one of them free-risk in the portfolio.

It is worth noting that, in this context, the asset is free-risk if its expected return is independent from the state of nature (s) that will be achieved.

Therefore, the portfolio consists of  $n$  risky assets and one asset free-risk  $(n + 1)$ . Therefore, the budget constraint can be defined as follows:

$$
\sum_ {\mathrm {i} = 0} ^ {\mathrm {n}} \alpha_ {\mathrm {i}} = 1 \tag {4.79}
$$

Also in this case, as in the previous cases 1 and 2, the investor has to choose the share of wealth  $(\alpha_{i})$  to be invested in each asset in the portfolio with the objective of maximizing the expected utility of the portfolio's return  $(y_{s})$ . The optimization problem can be formalized as follows (Saltari 2011):

$$
\left\{ \begin{array}{l} \max  _ {\alpha_ {i}, \alpha_ {0}} \mathrm {E} (\mathrm {U}) = \sum_ {\mathrm {s} = 1} ^ {\mathrm {S}} \pi_ {\mathrm {s}} \mathrm {U} \left(\mathrm {y} _ {\mathrm {s}}\right) \\ \sum_ {\mathrm {i} = 0} ^ {\mathrm {n}} \alpha_ {\mathrm {i}} = 1 \end{array} \right. \tag {4.80}
$$

Denoting with  $r_0$  the rate of return of the free-risk asset (so that its return is equal to  $R_0 = 1 + r_0$ ) and considering that is independent from the state of nature, the index  $s$  can be omitted and with  $\alpha_0$  the part of the wealth invested in the risk-free asset, the Lagrangian  $(\mathcal{L})$  can be formalized as follows:

$$
\mathcal {L} = \operatorname {E} (\mathrm {U}) + \lambda \left(1 - \sum_ {\mathrm {i} = 0} ^ {\mathrm {N}} \alpha_ {\mathrm {i}}\right)
$$

By deriving partially with respect to  $\alpha_{i},\alpha_{0}$  and  $\lambda$  , the first order condition is achieved. By placing them equal to zero, we have:

$$
\left\{ \begin{array}{l} \frac {\partial \mathcal {L}}{\partial \alpha_ {\mathrm {i}}} = \sum_ {\mathrm {s} = 1} ^ {\mathrm {S}} \pi_ {\mathrm {s}} \mathrm {U} ^ {\prime} \left(\mathrm {y} _ {\mathrm {s}}\right) w \mathrm {R} _ {\mathrm {i}, \mathrm {s}} - \lambda = 0 i = 1, 2, \dots , n \\ \frac {\partial \mathcal {L}}{\partial \alpha_ {0}} = \sum_ {\mathrm {s} = 1} ^ {\mathrm {S}} \pi_ {\mathrm {s}} \mathrm {U} ^ {\prime} \left(\mathrm {y} _ {\mathrm {s}}\right) w \mathrm {R} _ {0} - \lambda = 0 i = 0 \\ \frac {\partial \mathcal {L}}{\partial \lambda} = 1 - \sum_ {\mathrm {i} = 0} ^ {\mathrm {N}} \alpha_ {\mathrm {i}} = 0 \end{array} \right. \tag {4.81}
$$

It is worth noting, that in this case for  $i = 0$  we have  $\alpha_0$  that it is independent of the state of nature, so that:  $y_{s} = w\alpha_{0}R_{0}$ . Therefore, in this case, unlike the previous case, a new condition is introduced in which  $i = 0$  with regards to the risk-free rate.

From the first equation we have:

$$
\lambda = \sum_ {s = 1} ^ {S} \pi_ {s} U ^ {\prime} (y _ {s}) w R _ {i, s}
$$

and from the second equation we have:

$$
\lambda = \sum_ {\mathrm {s} = 1} ^ {\mathrm {S}} \pi_ {\mathrm {s}} \mathrm {U} ^ {\prime} (\mathrm {y} _ {\mathrm {s}}) \mathrm {w R} _ {0}
$$

Consequently, by considering the first and the second equation we have:

$$
\sum_ {s = 1} ^ {S} \pi_ {s} U ^ {\prime} \left(y _ {s}\right) w R _ {i, s} = \sum_ {s = 1} ^ {S} \pi_ {s} U ^ {\prime} \left(y _ {s}\right) w R _ {0}
$$

and then:

$$
\sum_ {s = 1} ^ {S} \pi_ {s} \mathrm {U} ^ {\prime} \left(\mathrm {y} _ {\mathrm {s}}\right) \mathrm {w} \left(\mathrm {R} _ {\mathrm {i}, s} - \mathrm {R} _ {0}\right) = 0 \leftrightarrow \mathrm {E} \left[ \mathrm {U} ^ {\prime} \left(\mathrm {y} _ {\mathrm {s}}\right) \mathrm {w} \left(\mathrm {R} _ {\mathrm {i}, s} - \mathrm {R} _ {0}\right) \right] = 0 \quad \mathrm {i} = 1, 2, \dots , n \tag {4.82}
$$

where the two forms are equivalent.

If the number of the risky assets is high, the solution of the optimal portfolio by defining the share of wealth to be invested in each asset  $(\alpha_{i})$ , is very hard. The

mutual fund theorem (Tobin 1958; Cass and Stiglitz 1970) can be used to solve the problem of the optimal portfolio.

On the basis of some conditions, the portfolio can be assumed as consisting only of two assets:

- the first is the asset risk-free;
- the second is a "common fund" obtained from the optimal combination of all risky assets. The weight of each risky asset in the common fund is independent from the wealth level.

Therefore, the investor chooses the share of wealth to invest in the asset free-risk and in the common fund.

Use of the separation theorem requires several conditions. Specifically, it is necessary to introduce some constraints on the probability distribution of the expected return, or alternatively, on the utility function used by investor (Saltari 2011). Therefore, constraints can be used on:

- probability distribution of the expected return, it is necessary to assume that the expected return follows a normal distribution;
- the utility function, is necessary to assume that it is classified in the HARA (Hyperbolic Absolute Risk Aversion) group. In this case, the absolute risk aversion coefficient is a hyperbolic function of  $y_{s}$  while the absolute risk tolerance has a linear form.

Specifically, the absolute risk aversion coefficient for the utility function in the class HARA can be defined as follows:

$$
\lambda_ {\left(\mathrm {y} _ {\mathrm {s}}\right)} = - \frac {\mathrm {U} ^ {\prime \prime} \left(\mathrm {y} _ {\mathrm {s}}\right)}{\mathrm {U} ^ {\prime} \left(\mathrm {y} _ {\mathrm {s}}\right)} = \frac {1}{\left(\mathrm {c} + \mathrm {d y} _ {\mathrm {s}}\right)} \quad \text {w i t h} c \text {a n d} d \text {c o n s t a n t}
$$

and the absolute risk tolerance coefficient is equal to (Saltari 2011):

$$
\tau_ {(y _ {s})} = \frac {1}{\lambda_ {(y _ {s})}} = - \frac {U ^ {\prime} (y _ {s})}{U ^ {\prime \prime} (y _ {s})} = c + d y _ {s}
$$

# References

Arrow K (1965) "The theory of risk aversion", aspects of the theory of risk-bearing (Lecture 2). Yrjs Jansson Foundation, Helsinki
Arrow K (1971) Essays in the theory of risk-bearing. Markham, Chicago
Arrow K (1984) Individual choice under certainty and uncertainty, Collected Papers of Kenneth J. Arrow, Vol. 3, Belknap Press, Cambridge MA
Campbell RM (2015) Microeconomics: principles, problems, and policies, McGraw-Hill
Cass D, Stiglitz J (1970) The structure of investor preferences and asset returns, and separability in portfolio allocation: a contribution to the pure theory of mutual funds. Journal of Economic Theory 2(2):122-160

Castellani G, De Felice M, Moriconi F (2005) Manuale di Finanza 2. Teoria del portafoglio e mercato azionario, Il Mulino
Cesari R (2012a) Introduzione alla finanza matematica. Concetti di base, tassi e obbligazioni, 2nd edn. McGraw-Hill, New York
Cesari R (2012b) Introduzione alla finanza matematica. Mercati azionari, rischi, e portafogli, 2nd edn. McGraw-Hill, New York
Cuthbertson K, Nitzsche D (2014) Quantitative financial economics: stocks, bonds and foreign exchange, 2nd ed., Wiley
Fishburn PC, Kochenberger GA (1979) Two-piece Von Neumann-Morgenstern utility functions. Decis Sci 10(4):503-518
Gravelle H, Rees R (1992) Microeconomics, 2nd edn. Longman, London
Heap S, Lyons B, Hollis M, Sugden R, Weale A (1992) The theory of choice: a critical guide. Blackwell
Hirshleifer J, Riley JG (1992) The analytics of uncertainty and information. Cambridge University Press
Ingersoll JE (1987) Theory of financial decision making. Rowman&Littlefield Pub Inc., Baltimore
Kreps DM (1979) A representation theorem for "preference for flexibility". Econometrica 47(3):565-577
Kreps DM (1990) A course in microeconomic theory. Princeton University Press
Kreps DM (2012) Microeconomic foundations I: choice and competitive markets. Princeton University Press
Litner J (1965a) Security prices, risk, and maximal gains from diversification. J Finance 20(4):587-615
Litner J (1965b) The valuation of risk assets and the selection of risky investments in stock portfolios and capital budgets. The Rev Econ Stat 47(1):13-37
Litner J (1970) The market price of risk, size of market and investor's risk aversion. The Review of Economics and Statistics 52(1):87-99
Mankiw GN (2017) Principles of microeconomics. 8th ed., Cengage Learning
Markowitz H (1952) Portfolio selection. The Journal of Finance 7(1):77-91
Markowitz H (1956) The optimization of a quadratic function subject to linear constraints. Nav Res Logist 3(1-2):111-133
Markowitz H (1959) Portfolio selection: efficient diversification of investment. Wiley, New York
Perloff JM (2016) Microeconomics: theory and applications with calculus. 4th ed., Pearson
Pratt JW (1964) Risk aversion in the small and in the large. Econometrica 32(1/2):122-136
Saltari E (2011) Appunti di Economia Finanziaria. Esculpio
Tobin J (1958) Liquidity preference as behavior towards risk. The Review of Economic Studies 25(2):65-86
Varian HR (1992) Microeconomic analysis, 3rd edn. W.W. Norton & Company, New York
Von Neumann J, Morgenstern O (1944) Theory of games and economic behavior. Princeton University Press

## D2 Diagrams for Utility Function Approach

### Utility Function Types
```d2
# Utility Function Types and Risk Preferences
risk_aversion: "Risk Averse U''(W) < 0"
risk_neutral: "Risk Neutral U''(W) = 0"
risk_seeking: "Risk Seeking U''(W) > 0"

risk_aversion -> "Concave utility function\nPrefers certain outcome\nto risky prospect with\nsame expected value"
risk_neutral -> "Linear utility function\nIndifferent between\ncertain and risky outcomes\nwith same expected value"
risk_seeking -> "Convex utility function\nPrefers risky prospect\nto certain outcome with\nsame expected value"
```

### Expected Utility Framework
```d2
# Expected Utility Components
probabilities: "Probabilities π_s"
outcomes: "Outcomes y_{i,s}"
utility_function: "Utility Function U(.)"
expected_utility: "Expected Utility E[U(y)]"

probabilities -> expected_utility: "Weight outcomes"
outcomes -> expected_utility: "Input to utility"
utility_function -> expected_utility: "Transform outcomes"
expected_utility -> "Decision criterion"
```

### Axioms of Rational Choice
```d2
# Axioms of Rational Choice
completeness: "Completeness"
transitivity: "Transitivity"
independence: "Independence"
continuity: "Continuity"
monotonicity: "Monotonicity"

completeness <-> transitivity: "Rational preferences"
independence <-> continuity: "Consistent mixing"
monotonicity -> "Preference for more"
```

### Risk Measures
```d2
# Risk Aversion Measures
absolute_risk: "Absolute Risk Aversion\n-AU''(W)/U'(W)"
relative_risk: "Relative Risk Aversion\n-WU''(W)/U'(W)"
certainty_equiv: "Certainty Equivalent"
risk_premium: "Risk Premium"

absolute_risk -> "Local risk attitude"
relative_risk -> "Scaling with wealth"
certainty_equiv -> "Willing to accept for sure"
risk_premium -> "Amount willing to pay\nto avoid risk"
```


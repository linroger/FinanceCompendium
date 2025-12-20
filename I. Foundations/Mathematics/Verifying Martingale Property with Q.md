---
parent_directory: I. Foundations/Mathematics
title: Verifying the Martingale Property for Subsequent Periods
tags: null
aliases:
- Verifying the Martingale Property for Subsequent Periods
parent_folder: Mathematics
subfolder: null
key_concepts: null
cssclasses: academia
linter-yaml-title-alias: Verifying the Martingale Property for Subsequent Periods
primary_tags:
- time axis
- risk-neutral probabilities
- required martingale property
secondary_tags:
- martingale properties
- other risk-neutral probabilities
- discounted stock price
- bond numeraire
- subsequent periods
- expected value
tags_extracted: '2025-12-18T17:58:50.694849'
tags_method: max_quality_v1
---

# Verifying the Martingale Property for Subsequent Periods

In Section 5.2.2.2, we verified that the stock price relative to the bond (the bond as the numeraire) satisfies the martingale property from time 0 to 1. Here, we will do the same for the stock price from time 1 to 2 and then in subsequent periods. We will also demonstrate that the required measure that makes the discounted stock price into a martingale is the risk-neutral probability  $\mathbb{Q}$ . This appendix is essentially a continuation of Section 5.2.2.2.

Suppose, we are given the stock price  $S_{0,1;u}$  at time 1 after an upjump at time 1. Denote  $S_{0,2;u,u}$  and  $S_{0,2;u,d}$  as the stock prices at time 2 given the outcomes  $\omega_{\mathrm{u,u}}$  (consecutive upjumps at time 1 and 2) and  $\omega_{\mathrm{u,d}}$ , respectively. Denote  $q_{1,2;u,u}$  and  $q_{1,2;u,d}$  as the risk-neutral probabilities that at time 1, the stock will have an upjump or downjump at time 2 given that it had an upjump at time 1. Let  $B_{1,2}$  (discount function) be the time 1 value of a bond that pays 1 at time 2. Analogous to equation (5.15), the forward prices from time 1 to 2 given the stock price  $S_{0,1;u}$  at time 1, must satisfy the system of equations:

$$
\left[ \begin{array}{c c} S_{0, 2; u, u} & S_{0, 2; u, d} \\ 1 & 1 \end{array} \right] \left[ \begin{array}{c} \psi_{1, 2; u, u} \\ \psi_{1, 2; u, d} \end{array} \right] = \left[ \begin{array}{c} S_{0, 1; u} \\ B_{1, 2} \end{array} \right]. \tag{1}
$$

If we divide the matrix equation by  $B_{1,2}$ , and define the risk-neutral probabilities  $q_{1,2;u,u} = \psi_{1,2;u,u} / B_{1,2}$  and  $q_{1,2;u,d} = \psi_{1,2;u,d} / B_{1,2}$  as required by equation (5.12) we get:

$$
\left[ \begin{array}{c c} S_{0, 2; u, u} & S_{0, 2; u, d} \\ 1 & 1 \end{array} \right] \left[ \begin{array}{c} q_{1, 2; u, u} \\ q_{1, 2; u, d} \end{array} \right] = \left[ \begin{array}{c} S_{0, 1; u} / B_{1, 2} \\ 1 \end{array} \right]. \tag{2}
$$

The first row of matrix equation (2) is the equation:

$$
S_{0, 2; u, u} q_{1, 2; u, u} + S_{0, 2; u, d} q_{1, 2; u, d} = \frac{S_{0,1;u}}{B_{1,2}}. \tag{3}
$$

Equation (3) can be expressed in the form:

$$
(4) \qquad E_{\mathbb{Q}} \left[ S_2 \Big | \frac{S_{0,1;u}}{B_{1,2}} \right] = \frac{S_{0,1;u}}{B_{1,2}}.
$$

We can repeat the calculation given the stock price  $S_{0,1;d}$ . Analogous to equations (3) and (4), we would obtain:

$$
S_{0, 2; d, u} q_{1, 2; d, u} + S_{0, 2; d, d} q_{1, 2; d, d} = \frac{S_{0,1;d}}{B_{1,2}}
$$

and

$$
\mathrm{(6)} \qquad E_{\mathbb{Q}} \left[ S_2 \middle | \frac{S_{0,1;d}}{B_{1,2}} \right] = \frac{S_{0,1;d}}{B_{1,2}}.
$$

Equations (4) and (6) together verify the martingale property going from time 1 to 2 that the expected value of the stock at time 2 given its value at time 1 (in bond numeraire) is equal to the value of the stock at time 1 (in bond numeraire).

Next, we study the stock model going from time 0 to 2. Let,  $q_{0,2;u,d}$ ,  $q_{0,2;d,u}$ , and  $q_{0,2;d,d}$  denote the risk-neutral probabilities at time 0 that the stock price will experience the outcomes  $\omega_{u,u}$ ,  $\omega_{u,d}$ ,  $\omega_{d,u}$ , and  $\omega_{d,d}$ , respectively, in going from time 0 to time 2. Let  $B_{0,2}$  be the time 0 value of a bond that pays 1 at time 2. Note that this bond value must satisfy the equation  $B_{0,2} = B_{0,1}B_{1,2}$ . Recall that  $\psi_{0,2;u,u}$  is the price of the pure security at time 0 that pays 1 at time 2 after the upjump in the price of the stock from time 0 to time 1 and also from time 1 to time 2. The prices  $\psi_{0,2;u,d}$ ,  $\psi_{0,2;d,u}$ , and  $\psi_{0,2;d,d}$  are defined analogously. Similar to previous analysis, we have:

$$
\begin{array}{r l r} & & {(7)} \\ & & {\left[ \begin{array}{c c c c} S _ {0, 2; u, u} & S _ {0, 2; u, d} & S _ {0, 2; d, u} & S _ {0, 2; d, d} \\ 1 & 1 & 1 & 1 \end{array} \right] \left[ \begin{array}{c} \psi_ {0, 2; u, u} \\ \psi_ {0, 2; u, d} \\ \psi_ {0, 2; d, u} \\ \psi_ {0, 2; d, d} \end{array} \right] = \left[ \begin{array}{c} S _ {0} \\ B _ {0, 2} \end{array} \right].} \end{array}
$$

If we divide both sides of equation (7) by  $B_{0,2}$  and use equation (5.12) to define the risk-neutral probabilities, we obtain:

$$
\left[ \begin{array}{c c c c} S _ {0, 2; u, u} & S _ {0, 2; u, d} & S _ {0, 2; d, u} & S _ {0, 2; d, d} \\ 1 & 1 & 1 & 1 \end{array} \right] \left[ \begin{array}{c} q _ {0, 2; u, u} \\ q _ {0, 2; u, d} \\ q _ {0, 2; d, u} \\ q _ {0, 2; d, d} \end{array} \right] = \left[ \begin{array}{c} S _ {0} / B _ {0, 2} \\ 1 \end{array} \right]. \tag {8}
$$

Notice that the first row of the matrix equation (8) is the equation:

$$
\mathrm {(9)} \qquad S _ {0, 2; u, u} q _ {0, 2; u, u} + S _ {0, 2; u, d} q _ {0, 2; u, d} + S _ {0, 2; d, u} q _ {0, 2; d, u} + S _ {0, 2; d, d} q _ {0, 2; d, d} = \frac {S _ {0}}{B _ {0 , 2}}.
$$

The left side of equation (9) is the expected value with respect to the probability measure  $\mathbb{Q}$  of the stock price at time 2 given its value at time 0 in bond numeraire, Thus equation (9) states that this expected value equals the value of the stock at time 0 in bond numeraire:

$$
E _ {\mathbb {Q}} \left[ S _ {2} \mid S _ {0} / B _ {0, 2} \right] = \frac {S _ {0}}{B _ {0 , 2}}. \tag {10}
$$

This is the required martingale property for the stock going from time 0 to 2. Now, we need to check that this result is consistent with the results going from time 0 to 1 followed by going from time 1 to 2. Since  $q_{0,2;u,u}$  is the probability that the stock had upjumps at times 1 and 2,  $q_{1,2;u,u}$  is the conditional probability that the stock had an upjump at time 2 given that it had an upjump at time 1, and  $q_{0,1;u}$  is the probability that the stock had an upjump at time 1, then by the definition of conditional probability, we require  $q_{1,2;u,u} = q_{0,2;u,u} / q_{0,1;u}$ , or equivalently:  $q_{0,2;u,u} = q_{0,1;u} q_{1,2;u,u}$ . The relationships for the other risk-neutral probabilities are computed in a similar way giving us:

$$
q _ {0, 2; u, u} = q _ {0, 1; u} q _ {1, 2; u, u}, q _ {0, 2; u, d} = q _ {0, 1; u} q _ {1, 2; u, d}, q _ {0, 2; d, u} = q _ {0, 1; d} q _ {1, 2; d, u}, \tag {11}
$$

$$
q _ {0, 2; d, d} = q _ {0, 1; d} q _ {1, 2; d, d}
$$

Note that equations (11) define the risk-neutral probabilities from time 0 to time 2, and we need to check that they are consistent with equation (9). Since the left side of equation (9) is  $E_{\mathbb{Q}}[S_2|S_0 / B_{0,2}]$  and substituting the results of equations (11) into the left side of equation (9) gives:

$$
E _ {\mathbb {Q}} \big [ S _ {2} | S _ {0} / B _ {0, 2} \big ] = S _ {0, 2; u, u} q _ {0, 1; u} q _ {1, 2; u, u} + S _ {0, 2; u, d} q _ {0, 1; u} q _ {1, 2; u, d}
$$

$$
\begin{array}{l} + S _ {0, 2; d, u} q _ {0, 1; d} q _ {1, 2; d, u} + S _ {0, 2; d, d} q _ {0, 1; d} q _ {1, 2; d, d} \\ = (S _ {0, 2; u, u} q _ {1, 2; u, u} + S _ {0, 2; u, d} q _ {1, 2; u, d}) q _ {0, 1; u} + (S _ {0, 2; d, u} q _ {1, 2; d, u} + S _ {0, 2; d, d} q _ {1, 2; d, d}) q _ {0, 1; d} \\ \end{array}
$$

Referring to equations (3) and (5), we see that:

$$
E _ {\mathbb {Q}} \big [ S _ {2} | S _ {0} / B _ {0, 2} \big ] = \frac {S _ {0 , 1 ; u} q _ {0 , 1 ; u} + S _ {0 , 1 ; d} q _ {0 , 1 ; d}}{B _ {1 , 2}}.
$$

Referring to equation (5.17) and using the fact that  $B_{0,2} = B_{0,1}B_{1,2}$ , we get:

$$
E _ {\mathbb {Q}} \left[ S _ {2} \mid S _ {0} / B _ {0, 2} \right] = \frac {S _ {0}}{B _ {0 , 2}}. \tag {12}
$$

Equation (10) is identical to equation (12), so the results are consistent. Equation (12) states that the expected value with respect to the probability measure  $\mathbb{Q}$  of the stock price at time 2 given its price at time 0 (in bond numeraire) is equal to the stock price at time 0 (in bond numeraire). Thus, we have verified all of the martingale properties up to time 2. The proof to show the martingale properties for all subsequent times essentially duplicates the work we have done using an induction argument. We omit the details. The induction argument would give the result:

$$
E _ {\mathbb {Q}} \left[ S _ {n} \middle | \frac {S _ {0}}{B _ {0 , n}}, \frac {S _ {1}}{B _ {1 , n}}, \dots , \frac {S _ {k}}{B _ {k , n}} \right] = \frac {S _ {k}}{B _ {k , n}}
$$

for all  $k = 0,1,2,\dots,n - 1$

Since  $E_{\mathbb{Q}}[S_{\mathrm{n}}|S_0,S_1,\ldots ,S_k] = S_{\mathrm{k}} \forall k < n$  if the stock prices are expressed in the units of the bond as the numeraire, it is clear that  $S_{\mathrm{t}}$  is a martingale, despite its having been a submartingale when priced relative to currency.

# Brownian Motion as a Limit of a Discrete Random Walk

Think of the discrete random walk and Brownian motion taking place on the  $z$ -axis, where we start at the origin ( $z = 0$ ) at time 0. We will then study these two processes as a function of time. We can also graph each of these two processes if we wish with position  $z$  as the vertical axis versus time  $t$  as the horizontal axis, analogous to the graph of a stock price ( $S$ ) versus time ( $t$ ). The graph of the discrete random walk versus time for a specific history will consist of a large number of discrete points in the  $t-z$  plane, while the graph of Brownian motion versus time for a specific history will consist a continuous zig-zag graph in the  $t-z$  plane. To create Brownian motion from the discrete random walk with  $p = 1/2$ , first divide each unit of time on the continuous time axis into  $n$  equal subintervals, so that the width of each subinterval is  $\Delta t = 1/n$ . This results in the discrete times 0, 1/n, 2/n, …, k/n, … on the continuous time axis. Define the following discrete random walk as a function of time  $k$  (the  $k^{\text{th}}$  discrete time on the continuous time axis at time  $k/n$ ) by:

$$
X _ {k} ^ {(n)} = \sum_ {i = 1} ^ {k} \frac {Z _ {i}}{\sqrt {n}}.
$$

Assume that each  $Z_{i}$  is a random variable that equals 1 with probability  $\frac{1}{2}$  and equals -1 with probability  $\frac{1}{2}$  at time  $i$ , and that the  $Z_{i}$ 's are pairwise independent of one another. This discrete random walk, starting at 0, takes independent small steps of length  $\pm \frac{1}{\sqrt{n}}$  at each moment of time from  $(i-1)/n$  to  $i/n$  as  $i$  goes from 1 to  $k$  until it arrives at the position  $X_{k}^{(n)}$  at time  $k/n$ . Since the random walk  $X_{k}^{(n)}$  takes ever-smaller steps approaching length 0 as  $n \to \infty$ , it is approaching a continuous path as  $n \to \infty$  for each specific history. This justification for the existence and continuity of the path isn't rigorous. A rigorous argument is beyond the level of this text.

We next claim that as  $n \to \infty$ , the random walk will converge to a process that has a normal distribution (which is one of the requirements to be Brownian motion). To prove this, pick a particular time  $t$  on the continuous non-negative real line. Pick the integer  $k$ ,  $k \leq nt$ , so that it best approximates  $k / n \approx t$ . Note that  $|k / n - t| < 1 / n$  so that the approximation improves as  $n$  approaches  $\infty$ . Also note that  $k \approx nt$ , so that  $k \to \infty$  as  $n \to \infty$ . Define the sample mean random variable

$$
\bar {Z} = \frac {\sum_ {i = 1} ^ {k} Z _ {i}}{k}.
$$

Clearly,  $X_{k}^{(n)} = \frac{k}{\sqrt{n}}\bar{Z}$ . Since the random variables  $Z_{i}$  are independent and identically distributed random variables with mean  $\mu = 0$  and variance  $\sigma^2 = 1$ , by the Central Limit Theorem from section 2.7, we conclude that  $\sqrt{k}\bar{Z} = \frac{\bar{Z}}{1 / \sqrt{k}}$  approaches the standard normal random distribution  $Z \sim N(0,1)$  as  $k \to \infty$ . This implies that

$$
X _ {k} ^ {(n)} = \sqrt {k} \bar {Z} \sqrt {\frac {k}{n}} \rightarrow Z \sqrt {t}
$$

as  $k \to \infty$ . Since  $Z\sqrt{t} \sim N(0, t)$ , this shows that  $X_k^{(n)}$  approaches a normal distribution, say  $X_t$  with mean 0 and variance  $t$ . We have completed the main step to show that our random walk converges to a process that has a normal distribution with mean 0 and variance  $t$ .

The rest of the properties are easier to justify. If we choose the integer  $j$  so that it  $j / n$  best approximates a value  $s$ , with  $s < t$ , on the time axis, then by a proof similar to that we just completed, we have  $X_{k}^{(n)} - X_{j}^{(n)}$  approaching a normal distribution  $X_{t} - X_{s}$  with mean 0 and variance  $t - s$ . Consider the values  $s < t < u < \nu$  on the time axis. Choose the integers  $j < k < l < m$  so that they best approximate  $j / n \approx s$ ,  $k / n \approx t$ ,  $l / n \approx u$ , and  $m / n \approx \nu$ . Since

$$
X _ {k} ^ {(n)} - X _ {j} ^ {(n)} = \sum_ {i = j + 1} ^ {k} \frac {Z _ {i}}{\sqrt {n}}, X _ {m} ^ {(n)} - X _ {l} ^ {(n)} = \sum_ {i = l + 1} ^ {m} \frac {Z _ {i}}{\sqrt {n}},
$$

and  $j + l \leq k \leq l + l \leq m$ , then the random variables  $X_{k}^{(n)} - X_{j}^{(n)}$  and  $X_{m}^{(n)} - X_{l}^{(n)}$  are independent. This is easily seen by observing that the  $Z_{i}$ 's in the first sum are independent of the  $Z_{i}$ 's in the second sum in this case. But  $X_{k}^{(n)} - X_{j}^{(n)}$  approaches  $X_{t} - X_{s}$  and  $X_{l}^{(n)} - X_{m}^{(n)}$  approaches  $X_{u} - X_{v}$  as  $n \to \infty$ . Thus,  $X_{t} - X_{s}$  and  $X_{u} - X_{v}$  should be independent of one another. Each of the requirements in order that  $X_{k}^{(n)}$  will converge to the standard Brownian motion process as  $n \to \infty$  have been addressed, and we conclude that the convergent process  $X_{t}$  is in fact standard Brownian motion.

# Geometric Brownian Motion as a Limit of a Discrete Stochastic Process

In the same way that we derived Brownian motion as a limit of a discrete stochastic process, we divide each unit of time into  $n$  equal subintervals, so that the width of each subinterval is  $\Delta t = 1/n$ . This results in the discrete times 0, 1/n, 2/n, …, k/n, … on the continuous time axis. Define the price of a stock  $S_{k}^{(n)}$  as a discrete stochastic process as a function of time  $k$  (the  $k^{th}$  discrete time on the continuous time axis at time  $k/n$ ) so that:

$$
\frac {S _ {k} ^ {(n)} - S _ {k - 1} ^ {(n)}}{S _ {k - 1} ^ {(n)}} = \frac {\mu}{n} + \frac {\sigma Z _ {k}}{\sqrt {n}}.
$$

Assume that each  $Z_{k}$  is a random variable that equals 1 with probability  $\frac{1}{2}$  and equals -1 with probability  $\frac{1}{2}$  at time  $i$ , and that the  $Z_{i}$ 's are pairwise independent of one another. Observe that  $\mu$  is the return per unit time per unit value of the stock and  $\sigma$  is the degree of volatility of the stock. Solving for  $S_{k}^{(n)}$  gives:

$$
S _ {k} ^ {(n)} = \left(1 + \frac {\mu}{n} + \frac {\sigma Z _ {k}}{\sqrt {n}}\right) S _ {k - 1} ^ {(n)}.
$$

Substituting  $k$  with  $k - 1$  in this equation and replacing the result for  $S_{k - 1}^{(n)}$  in terms of  $S_{k - 2}^{(n)}$  on the right side of the equation above, and continuing this process all the way back to time 0 results in:

$$
S _ {k} ^ {(n)} = S _ {0} \left(1 + \frac {\mu}{n} + \frac {\sigma Z _ {1}}{\sqrt {n}}\right) \left(1 + \frac {\mu}{n} + \frac {\sigma Z _ {2}}{\sqrt {n}}\right) \dots \left(1 + \frac {\mu}{n} + \frac {\sigma Z _ {k}}{\sqrt {n}}\right).
$$

Taking logarithms, we have:

$$
l n S _ {k} ^ {(n)} = l n S _ {0} + \sum_ {i = 1} ^ {k} l n \left(1 + \frac {\mu}{n} + \frac {\sigma Z _ {i}}{\sqrt {n}}\right).
$$

From calculus, we know that the Taylor series for  $\ln(1 + x)$  centered at zero is

$$
\ln (1 + x) = x - \frac {1}{2} x ^ {2} + \frac {1}{3} x ^ {3} - \dots
$$

For a particular history  $\omega$  of the stock, each  $Z_{i}(\omega)$  will take on the definite value of either  $I$  or  $-I$ . Applying the Taylor series above to

$$
x = \frac {\mu}{n} + \frac {\sigma Z _ {i} (\omega)}{\sqrt {n}}
$$

for each  $i$  results in:

$$
\begin{array}{l} l n S _ {k} ^ {(n)} (\omega) = l n S _ {0} + \sum_ {i = 1} ^ {k} \left[ \frac {\mu}{n} + \frac {\sigma Z _ {i} (\omega)}{\sqrt {n}} - \frac {1}{2} \left(\frac {\mu}{n} + \frac {\sigma Z _ {i} (\omega)}{\sqrt {n}}\right) ^ {2} + \frac {1}{3} \left(\frac {\mu}{n} + \frac {\sigma Z _ {i} (\omega)}{\sqrt {n}}\right) ^ {3} - \dots \right] \\ = l n S _ {0} + \mu \frac {k}{n} + \sigma \sum_ {i = 1} ^ {k} \frac {Z _ {i} (\omega)}{\sqrt {n}} - \frac {\sigma^ {2}}{2 n} \sum_ {i = 1} ^ {k} \left(Z _ {i} (\omega)\right) ^ {2} + e r r o r t e r m s. \\ \end{array}
$$

Since  $Z_{i}(\omega)$  is always 1 or -1, then  $(Z_{i}(\omega))^{2} = 1$ . So, we have:

$$
l n S _ {k} ^ {(n)} (\omega) = l n S _ {0} + \left(\mu - \frac {\sigma^ {2}}{2}\right) \frac {k}{n} + \sigma \sum_ {i = 1} ^ {k} \frac {Z _ {i} (\omega)}{\sqrt {n}} + e r r o r t e r m s.
$$

Similar to the derivation of Brownian motion from the discrete model, pick a particular time  $t$  on the continuous time axis. Choose the integer  $k$  so that  $k / n \leq t$  and  $k / n$  best approximates  $t$ . As before,  $|k / n - t| \leq 1 / n$ , and so  $k / n \to t$  as  $n \to \infty$ . It is also not hard to show that the error terms are bounded by  $C(t, \mu, \sigma) / \sqrt{n}$  where  $C(t, \mu, \sigma)$  is a value independent of  $n$ . Thus, the error

terms approach 0 as  $n \to \infty$ . We showed in the derivation of Brownian motion from the discrete model that  $\sum_{i=1}^{k} \frac{Z_i(\omega)}{\sqrt{n}}$  converges to  $Z_t(\omega)$  where  $Z_t$  is standard Brownian motion. These observations show  $\ln S_k^{(n)}(\omega)$  converges to

$$
l n S _ {0} + \left(\mu - \frac {\sigma^ {2}}{2}\right) t + \sigma Z _ {t} (\omega)
$$

as  $n\to \infty$  . Exponentiating, we have  $S_{k}^{(n)}(\omega)$  converges to

$$
S _ {0} e ^ {\left(\mu - \frac {\sigma^ {2}}{2}\right) t + \sigma Z _ {t} (\omega)}.
$$

Let's label this resulting continuous stochastic process as  $S_{t}(\omega)$ . Since this result holds for all possible histories  $\omega$  in the sample space, then

$$
S _ {t} = S _ {0} e ^ {\left(\mu - \frac {\sigma^ {2}}{2}\right) t + \sigma Z _ {t}}.
$$

# Verification of the Tower Property

First, we state the Tower Property: Suppose  $X_{t}$  is a stochastic process with an adapted filtration  $\{\mathcal{F}_{t}\}$ . If  $s \leq t$ , then for any  $T \geq t$ , we have

$$
E \big [ E \big [ X _ {T} | \mathcal {F} _ {t} \big ] | \mathcal {F} _ {s} \big ] = E \big [ X _ {T} | \mathcal {F} _ {s} \big ].
$$

To verify this property for the case that the filtrations are finite, consider the following more general theorem. Suppose  $\mathcal{G}$  and  $\mathcal{F}$  are  $\sigma$ -algebras with  $\mathcal{G} \subseteq \mathcal{F}$ , and  $X$  is a random variable with respect to the  $\sigma$ -algebra with  $\mathcal{F}$ . Then, the following expectation result holds:

$$
E \left[ X | \mathcal {G} \right] = E \left[ E \left[ X | \mathcal {F} \right] | \mathcal {G} \right].
$$

Observe that the tower property follows from this result by choosing  $\mathcal{G} = \mathcal{F}_s$  and  $\mathcal{F} = \mathcal{F}_t$ . We are going to prove this more general statement for the case that the  $\sigma$ -algebras are finite.

To interpret the expectation equation immediately above, notice that the  $\sigma-$  algebra  $\mathcal{F}$  is a "finer"  $\sigma-$  algebra than  $\mathcal{G}$ , since it contains all of the measurable sets that are in  $\mathcal{G}$ . Although a proof is provided below, this result is understandable intuitively. Roughly speaking, the equation states that if one averages a random variable conditioned on the finer subdivision  $\mathcal{F}$  and then averages these averages conditioned on the coarser subdivision  $\mathcal{G}$ , one gets the same average as conditioning on the coarser subdivision  $\mathcal{G}$  alone.

Verification of the theorem: Since we are assuming the  $\sigma$ -algebra  $\mathcal{G}$  is finite, then  $\mathcal{G}$  consists of a finite number of disjoint sets  $G_{1}, G_{2}, \ldots, G_{n}$  and all of the possible unions of these

sets. Since  $\mathcal{G} \subseteq \mathcal{F}$  and  $\mathcal{F}$  is finite, then we can further decompose each set  $G_{\mathrm{i}}$  into disjoint sets  $F_{\mathrm{ij}}$  for  $j = 1, \ldots, n_{\mathrm{i}}$  so that

$$
G _ {i} = \bigcup_ {j = 1} ^ {n _ {i}} F _ {i j}
$$

and  $\mathcal{F}$  consists of the sets  $F_{\mathrm{ij}}$  and all of the possible unions of these sets. To find  $E[X|\mathcal{G}]$  means to calculate  $E[X|G_{\mathrm{i}}]$  for each  $i$ . Suppose  $p(x)$  denotes the probability that the random variable  $X = x$ . Then, by definition,

$$
E [ X | G _ {i} ] = \frac {\sum_ {x \in G _ {i}} x p (x)}{\sum_ {x \in G _ {i}} p (x)}.
$$

To find  $E[X|\mathcal{F}]$  means to calculate  $E[X|F_{\mathrm{ij}}]$  for each  $i$  and  $j$ . By definition,

$$
E \left[ X \mid F _ {i j} \right] = \frac {\sum_ {x \in F _ {i j}} x p (x)}{\sum_ {x \in F _ {i j}} p (x)}.
$$

To find  $E[E[X|\mathcal{F}]|\mathcal{G}]$  means to calculate  $E[E[X|\mathcal{F}]|G_i]$  for each  $i$ .  $E[X|\mathcal{F}]$  is a random variable that takes on the values  $E[X|F_{ij}]$  with probability  $\sum_{x\in F_{ij}}p(x)$ . Thus:

$$
\begin{array}{l} E \left[ E [ X | \mathcal {F} ] | G _ {i} \right] = \frac {\sum_ {j = 1} ^ {n _ {i}} E \left[ X \mid F _ {i j} \right] (\sum_ {x \in F _ {i j}} p (x))}{\sum_ {x \in G _ {i}} p (x)} \\ = \frac {\sum_ {j = 1} ^ {n _ {i}} \left[ \frac {\sum_ {x \in F _ {i j}} x p (x)}{\sum_ {x \in F _ {i j}} p (x)} \right] (\sum_ {x \in F _ {i j}} p (x))}{\sum_ {x \in G _ {i}} p (x)} = \frac {\sum_ {j = 1} ^ {n _ {i}} \sum_ {x \in F _ {i j}} x p (x)}{\sum_ {x \in G _ {i}} p (x)} \\ \end{array}
$$

Since the sets  $F_{\mathrm{ij}}$  are disjoint from one another and  $\bigcup_{j=1}^{n_i} F_{ij} = G_i$ , then

$$
\sum_ {j = 1} ^ {n _ {i}} \sum_ {x \in F _ {i j}} x p (x) = \sum_ {x \in G _ {i}} x p (x).
$$

We conclude that

$$
E [ E [ X | \mathcal {F} ] | \mathcal {G} ] = \frac {\sum_ {x \in G _ {i}} x p (x)}{\sum_ {x \in G _ {i}} p (x)} = E [ X | G _ {i} ]
$$

as we wished to prove.
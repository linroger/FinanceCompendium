---
primary_tags:
- family indexed theoretical gdp
- productivity terms trade indexes
- cost function indexed period
- appendix price productivity
secondary_tags:
- theoretical price indexes laspeyres
- paasche quantity index empirical
- index formula depending prices
- factor productivity geometric
- price index total factor
- formula like econometrics understanding
- appendix measuring countries bilateral
- book relied index numbers
- geometric mean price ratios
tags_extracted: '2025-12-18T00:14:09.517219'
---

# Appendix A: Price, Productivity and Terms of Trade Indexes

At various points throughout this book we have relied on index numbers to measure prices or total factor productivity. There is a good deal of theory, dating back more than a hundred years, that we can rely on to guide us in the choice of index number formula. Like econometrics, an understanding of index numbers can be very helpful in empirical research. Unlike econometrics, these methods are seldom taught. So in this Appendix we present a self-contained treatment of index numbers, focusing on price indexes.

We begin with some examples of price indexes. Let  $p = (p_1, \ldots, p_N) > 0$  denote a vector of prices, and  $q = (q_1, \ldots, q_N) \geq 0$  denote the corresponding vector of quantities. We let  $p^i$  and  $q^i$  denote these vectors in situation  $i = 0, 1$ . We can think of  $i = 0, 1$  as measuring two time periods, or later in the Appendix, as measuring two countries. A bilateral index number formula  $P(p^0, p^1, q^0, q^1)$  uses just this information on prices and quantities to measure the "average" change in prices from situation 0 to 1. For example, the Laspeyres price index is:

$$
\mathrm{P}_{\mathrm{L}} \left(\mathrm{p}^{0}, \mathrm{p}^{1}, \mathrm{q}^{0}, \mathrm{q}^{1}\right) \equiv \frac{\sum_{\mathrm{i} = 1}^{\mathrm{N}} \mathrm{q}_{\mathrm{i}}^{0} \mathrm{p}_{\mathrm{i}}^{1}}{\sum_{\mathrm{i} = 1}^{\mathrm{N}} \mathrm{q}_{\mathrm{i}}^{0} \mathrm{p}_{\mathrm{i}}^{0}}. \tag {A1}
$$

Thus, the Laspeyres weights the prices in each period by the quantities in the base period.

Conversely, if we use the current period quantities to weight the prices, we obtain the Paasche price index:

$$
\mathrm{P}_{\mathrm{P}} \left(\mathrm{p}^{0}, \mathrm{p}^{1}, \mathrm{q}^{0}, \mathrm{q}^{1}\right) \equiv \frac{\sum_{\mathrm{i} = 1}^{\mathrm{N}} \mathrm{q}_{\mathrm{i}}^{1} \mathrm{p}_{\mathrm{i}}^{1}}{\sum_{\mathrm{i} = 1}^{\mathrm{N}} \mathrm{q}_{\mathrm{i}}^{1} \mathrm{p}_{\mathrm{i}}^{0}}. \tag {A2}
$$

We might expect the Paasche price index to give a lower value than the Laspeyres index when applied to a consumer choice problem, because by using current period quantities, the Paasche index incorporates consumer substitution away from goods with the highest price increase. We will show below that this is indeed the case. A third commonly used formula is Irving Fisher's (1922) ideal price index,  $\mathrm{P_F}$ :

$$
\mathrm{P}_{\mathrm{F}} \left(\mathrm{p}^{0}, \mathrm{p}^{1}, \mathrm{q}^{0}, \mathrm{q}^{1}\right) \equiv \left[ \mathrm{P}_{\mathrm{L}} \left(\mathrm{p}^{0}, \mathrm{p}^{1}, \mathrm{q}^{0}, \mathrm{q}^{1}\right) \mathrm{P}_{\mathrm{P}} \left(\mathrm{p}^{0}, \mathrm{p}^{1}, \mathrm{q}^{0}, \mathrm{q}^{1}\right) \right]^{1 / 2}. \tag {A3}
$$

which is the geometric mean of the Laspeyres and Paasche indexes.

Another important formula is the Tornqvist (1936) price index  $\mathbf{P}_{\mathrm{T}}$ , defined as a geometric mean of the price ratios  $(p_{i}^{1} / p_{i}^{0})$ , using as weights the average of the expenditure shares  $s_i^0 \equiv p_i^0 q_i^0 / \sum_{i=1}^{N} p_i^0 q_i^0$  and  $s_i^1 \equiv p_i^1 q_i^1 / \sum_{i=1}^{N} p_i^1 q_i^1$  in the two periods:

$$
\mathrm{P}_{\mathrm{T}} \left(\mathrm{p}^{0}, \mathrm{p}^{1}, \mathrm{q}^{0}, \mathrm{q}^{1}\right) \equiv \prod_{\mathrm{i} = 1}^{\mathrm{N}} \left(\mathrm{p}_{\mathrm{i}}^{1} / \mathrm{p}_{\mathrm{i}}^{0}\right)^{\left(\mathrm{s}_{\mathrm{i}}^{0} + \mathrm{s}_{\mathrm{i}}^{1}\right) / 2}, \tag {A4}
$$

or in logs,

$$
\ln \mathrm{P}_{\mathrm{T}} \left(\mathrm{p}^{0}, \mathrm{p}^{1}, \mathrm{q}^{0}, \mathrm{q}^{1}\right) = \sum_{\mathrm{i} = 1}^{\mathrm{N}} (1 / 2) \left(\mathrm{s}_{\mathrm{i}}^{0} + \mathrm{s}_{\mathrm{i}}^{1}\right) \ln \left(\mathrm{p}_{\mathrm{i}}^{1} / \mathrm{p}_{\mathrm{i}}^{0}\right). \tag {A4'}
$$

How can we choose between these various formulas? The economic approach to index numbers is to ask how well each formula reflects the behaviour of consumers or firms. On the consumer side, we would need to take into account that tastes may be non-homothetic (see Diewert, 1974, and Pollack, 1989). We will focus here on the problem for firms, where we consider either an index of the input prices faced by a firm or the output prices. In either case, we will also want to develop an index of productivity change for the firm, and with an open economy, an index of the terms of trade.

# Input Price Indexes

Let  $\mathfrak{p} = (\mathfrak{p}_1, \ldots, \mathfrak{p}_{\mathrm{N}})$  denote a positive vector of input prices that producers face in period t, and let y denote an M dimensional vector of nonnegative outputs that the production sector might be asked to produce in period t. Then the cost function using period t technology is defined as:

$$
C^{t} (p, y) \equiv \min_{q} \left\{p^{\prime} q: (q, y) \text{be lo ng st o} S^{t} \right\}, \tag {A5}
$$

where  $S^t$  denotes the period  $t$  technology set. Thus  $C^t(p, y)$  is the minimum cost that the economy can achieve in period  $t$ , given that the vector of outputs  $y$  must be produced. Productivity improvements are reflected in an expansion of the technology set  $S^t$ , and this is why the cost function  $C^t(p, y)$  is also indexed by the period  $t = 0, 1$ .

Generally, the goal of price and productivity indexes will be to measure changes in the value of costs  $C^t$  over time: costs increase as input prices rise, and decrease as productivity improves. The difficulty is that we do not observe the separate effect of each, but rather, just observe the total change in costs. We would like to decompose the total change in costs into components that can be attributed to input prices, productivity, and changes in output.

Toward this end, we can use the function  $C^t$  to define the economy's period  $t$  technology theoretical input price index  $P^t$  between any two periods, say period 0 and period 1, as follows:

$$
\mathrm{P}^{\mathrm{t}} \left(\mathrm{p}^{0}, \mathrm{p}^{1}, \mathrm{y}\right) = \mathrm{C}^{\mathrm{t}} \left(\mathrm{p}^{1}, \mathrm{y}\right) / \mathrm{C}^{\mathrm{t}} \left(\mathrm{p}^{0}, \mathrm{y}\right), \tag {A6}
$$

where  $\mathbf{p}^{\mathrm{t}}$  is the vector of output prices that the economy faces in period t,  $t = 0,1$ , and y is a reference vector of outputs. We refer to this as a "theoretical" index because it cannot be computed from information on  $\mathbf{p}^0$ ,  $\mathbf{p}^1$ ,  $\mathbf{q}^0$ , and  $\mathbf{q}^1$  alone, but also depends on the function  $\mathbf{C}^{\mathrm{t}}$ . Note

that this theoretical index has the advantage that it is not influenced by technological change; rather, it is measured relative to a given period  $t$  technology. Our immediate goal is to see whether, for specific functional forms for the cost function in (A5), there will correspond some observable price index formula (depending only on prices and quantities  $p^0$ ,  $p^1$ ,  $q^0$ , and  $q^1$ ) that will equal (A6), or at least provide upper and lower-bounds to it.

We are interested in two special cases of the theoretical input price index (A6): (a)  $\mathrm{P}^0 (\mathfrak{p}^0,\mathfrak{p}^1,\mathfrak{y}^0)$  which uses the period 0 technology and the output vector  $\mathbf{y}^0$  that was actually used in period 0, and (b)  $\mathrm{P}^1 (\mathfrak{p}^0,\mathfrak{p}^1,\mathfrak{y}^1)$  which uses the period 1 technology and the output vector  $\mathbf{y}^1$ . Let  $\mathbf{q}^0$  and  $\mathbf{q}^1$  be the observed input quantities used in periods 0 and 1, respectively. We assume that these are optimally chosen to minimize costs in (A5), so that,

$$
\mathrm{C}^{0} \left(\mathrm{p}^{0}, \mathrm{y}^{0}\right) = \mathrm{p}^{0}, \mathrm{q}^{0} \quad \text{an d} \quad \mathrm{C}^{1} \left(\mathrm{p}^{1}, \mathrm{y}^{1}\right) = \mathrm{p}^{1}, \mathrm{q}^{1}. \tag {A7}
$$

Under these cost minimizing assumptions, we can adapt the arguments of Fisher and Shell (1972, pp. 57-58) and Archibald (1977, p. 66) to show that the two theoretical indexes,  $\mathrm{P}^0 (\mathfrak{p}^0,\mathfrak{p}^1,\mathfrak{y}^0)$  and  $\mathrm{P}^1 (\mathfrak{p}^0,\mathfrak{p}^1,\mathfrak{y}^1)$  satisfy the following inequalities:

$$
\begin{array}{l} \mathrm{P}^{0} \left(\mathrm{p}^{0}, \mathrm{p}^{1}, \mathrm{y}^{0}\right) \equiv \mathrm{C}^{0} \left(\mathrm{p}^{1}, \mathrm{y}^{0}\right) / \mathrm{C}^{0} \left(\mathrm{p}^{0}, \mathrm{y}^{0}\right) \quad \text{us in gd ef in it io n (A6)} \\ = \mathrm{C}^{0} \left(\mathrm{p}^{1}, \mathrm{y}^{0}\right) / \mathrm{p}^{0} \mathrm{q}^{0} \quad \text{us in g (A7)} \\ \begin{array}{l l} \leq p^{1} q^{0} / p^{0} q^{0} & \text{si nc e} q^{0} \text{is fe as ib le fo rt he mi ni mi za ti on pr ob le m} \\ & \text{wh ic hd ef in es C^{0} (p^{1} , y^{0}) a n d s o C^{0} (p^{1} , y^{0}) \leq p^{1} q^{0}} \end{array} \\ \mathbf {\nabla} \equiv \mathrm{P}_{\mathrm{L}} (\mathbf {p}^{0}, \mathbf {p}^{1}, \mathbf {q}^{0}, \mathbf {q}^{1}), \\ \end{array}
$$

where  $\mathrm{P_L}$  is the Laspeyres price index. Similarly, we have:

$$
\begin{array}{l} \mathrm{P}^{1} \left(\mathrm{p}^{0}, \mathrm{p}^{1}, \mathrm{y}^{1}\right) \equiv \mathrm{C}^{1} \left(\mathrm{p}^{1}, \mathrm{y}^{1}\right) / \mathrm{C}^{1} \left(\mathrm{p}^{0}, \mathrm{y}^{1}\right) \quad \text{us in gd ef in it io n (A6)} \\ = p^{1} \prime q^{1} / C^{1} \left(p^{0}, y^{1}\right) \quad \text{us in g (A7)} \\ \geq p^{1} q^{1} / p^{0} q^{1} \qquad \text{si nc e} q^{1} \text{is fe as ib le fo rt he mi ni mi za ti on pr ob le m} \\ \text{wh ic hd ef in es C^{1} (p^{0} , y^{1}) a n d s o C^{1} (p^{0} , y^{1}) \leq p^{0} q^{1}} \\ \equiv \mathrm{P}_{\mathrm{P}} (\mathrm{p}^{0}, \mathrm{p}^{1}, \mathrm{q}^{0}, \mathrm{q}^{1}), \\ \end{array}
$$

where  $\mathrm{P_P}$  is the Paasche price index. So we find that the Laspeyres index of input prices  $\mathrm{P_L}$  is an upper bound to the theoretical price index  $\mathrm{P^0(p^0,p^1,y^0)}$ , and that the Paasche index of input prices  $\mathrm{P_P}$  is a lower bound to the theoretical price index  $\mathrm{P^1(p^0,p^1,y^1)}$ . To further explore these bounds, we separately discuss the cases of constant and changing technology.

# Constant Technology

If technology is constant then the Paasche and Laspeyres price indexes provide bounds to the "true" price index. That is, if technology is constant the cost function can be written as  $C(p,y)$ , so the bounds above immediately imply that,

$$
\mathrm{P}_{\mathrm{P}} \left(\mathrm{p}^{0}, \mathrm{p}^{1}, \mathrm{q}^{0}, \mathrm{q}^{1}\right) \leq \mathrm{C} \left(\mathrm{p}^{1}, \mathrm{y}^{1}\right) / \mathrm{C} \left(\mathrm{p}^{0}, \mathrm{y}^{1}\right), \quad \text{an d} \quad \mathrm{C} \left(\mathrm{p}^{1}, \mathrm{y}^{0}\right) / \mathrm{C}^{0} \left(\mathrm{p}^{0}, \mathrm{y}^{0}\right) \leq \mathrm{P}_{\mathrm{L}} \left(\mathrm{p}^{0}, \mathrm{p}^{1}, \mathrm{q}^{0}, \mathrm{q}^{1}\right). \tag {A8}
$$

These expressions can be further simplified by assuming that there is a single output, and that the technology has constant returns to scale, so that  $\mathrm{C(p,y)} = \mathrm{y} \mathrm{c(p)}$ , where  $\mathrm{c(p)}$  is the unit-cost function. Then the inequalities in (A8) simplify to,

$$
P_{P} \left(p^{0}, p^{1}, q^{0}, q^{1}\right) \leq c \left(p^{1}\right) / c \left(p^{0}\right) \leq P_{L} \left(p^{0}, p^{1}, q^{0}, q^{1}\right). \tag {A9}
$$

Thus, we see that the Paasche and Laspeyres price indexes provide lower and upper bounds to the ratio of unit-costs for the firm, which is the "true" price index. The same would apply to a

consumer, where we would use the ratio of unit-expenditure functions in the two periods rather than the ratio of unit-cost. This confirms our assertion above that the Paasche price index is less than the Laspeyres price index for a consumer choice problem, provided that the quantities used are optimal for the consumer.

These observations lead us to ask whether it is possible to construct a price index that exactly equals the ratio of unit-costs, and that is the goal of the economic approach to index numbers. The strategy is to choose some specific functional form for the cost function, and then see whether there is a price index formula such that  $\mathrm{P}(\mathfrak{p}^0,\mathfrak{p}^1,\mathfrak{q}^0,\mathfrak{q}^1) = \mathrm{c}(\mathfrak{p}^1) / \mathrm{c}(\mathfrak{p}^0)$ . For certain choices of the functional form for costs, it turns out that there is indeed an price index formula that will satisfy this equality. In this case, Diewert (1976) call the price index exact.

For example, suppose that we choose the quadratic production function  $y = (q'Aq)^{1/2}$ , where  $A = A'$  is a symmetric matrix of parameters. It is clear that this production function in homogeneous of degree one. Diewert (1976, p. 130) shows that this quadratic production function can approximate any linearly homogeneous function  $f(q)$  to the second-order around a point. For this reason, Diewert calls the quadratic function  $(q'Aq)^{1/2}$  a "flexible" functional form. If  $A$  is invertible, then it is not difficult to show that the cost function is  $C(p,y) = y(p'Bp)^{1/2}$ , where  $B = A^{-1}$ , so the unit-cost function becomes  $c(p) = (p'Bp)^{1/2}$ , which is again a "flexible" functional form.

Then corresponding to the quadratic production and unit-cost functions, we have:

# Theorem 1 (Diewert, 1976)

If the production and unit-cost functions are quadratic and linearly homogeneous, and the observed quantities  $\mathbf{q}^{\mathrm{t}} > 0$  are the cost-minimizing, then:

$$
\frac{c \left(p^{1}\right)}{c \left(p^{1}\right)} = P_{F} \left(p^{0}, p^{1}, q^{0}, q^{1}\right). \tag {A11}
$$

The price index on the right of (A11) is the Fisher ideal formula, defined by (A3), which is therefore exact for the quadratic unit-cost function. Since the quadratic function is itself flexible, then Diewert (1976) refers to the Fisher ideal price index as superlative. The remarkable feature of this theorem is that we achieve equality between the Fisher ideal index and the ratio of unit-cost function for all values of the parameters A and B. Intuitively, as these parameters change then so would the optimal choices q, so these choices are "revealing" what the underlying parameters must be. Using the data on the optimal choices  $\mathbf{q}^{\mathrm{t}}$ , combined with their prices  $\mathfrak{p}^{\mathrm{t}}$ , we are able to measure the ratio of the unit-cost functions in (A11) without knowing B. This show the power of the economic approach to index numbers.

# Changing Technology

With technology changing over time, the situation is more difficult. We are in the awkward position that the Paasche and Laspeyres indexes provide bounds to a theoretical price index  $\mathrm{P}^{\mathrm{t}}(\mathfrak{p}^{0},\mathfrak{p}^{1},\mathfrak{y})$  that itself depends on the period  $t = 0,1$ . Fortunately, this issue can be resolved, and it is possible to define a theoretical price index that falls between the observable Paasche and Laspeyres price indexes. To do this, first we define a hypothetical cost function,  $\mathrm{C}(\mathfrak{p},\alpha)$ , that corresponds to the use of an  $\alpha$ -weighted average of the technology sets  $\mathbf{S}^0$  and  $\mathbf{S}^1$  for periods 0

and 1 as the reference technology, and that uses an  $\alpha$ -weighted average of the period 0 and period 1 net output vectors  $y^0$  and  $y^1$ :

$$
C (p, \alpha) \equiv \min_{q} \left\{p^{\prime} q: (q, [ 1 - \alpha ] y^{0} + \alpha y^{1}) \text{be lo ng st o} (1 - \alpha) S^{0} + \alpha S^{1} \right\}. \tag {A11}
$$

We can now use this cost function to define the following family of theoretical price indexes:

$$
\mathrm{P} \left(\mathrm{p}^{0}, \mathrm{p}^{1}, \alpha\right) \equiv \mathrm{C} \left(\mathrm{p}^{1}, \alpha\right) / \mathrm{C} \left(\mathrm{p}^{0}, \alpha\right). \tag {A12}
$$

We can adapt the proof of Diewert (1983, pp. 1060-1061) and show that there exists an  $\alpha$  such that the theoretical price index defined by (A12) lies between the Paasche and Laspeyres output indexes,  $\mathrm{P_P}$  and  $\mathrm{P_L}$ :

# Theorem 2 (Diewert, 1983)

There exists  $\alpha$  between 0 and 1 such that:

$$
\mathrm{P}_{\mathrm{L}} \equiv \mathrm{p}^{1} \mathrm{q}^{0} / \mathrm{p}^{0}, \mathrm{q}^{0} \leq \mathrm{P} \left(\mathrm{p}^{0}, \mathrm{p}^{1}, \alpha\right) \leq \mathrm{p}^{1}, \mathrm{q}^{1} / \mathrm{p}^{0}, \mathrm{q}^{1} \equiv \mathrm{P}_{\mathrm{P}} \quad \text{or} \quad \mathrm{P}_{\mathrm{P}} \leq \mathrm{P} \left(\mathrm{p}^{0}, \mathrm{p}^{1}, \alpha\right) \leq \mathrm{P}_{\mathrm{L}}. \tag {A13}
$$

If the Paasche and Laspeyres indexes are numerically close to each other, then (A13) tells us that a “true” economic input price index is fairly well determined and we can find a reasonably close approximation to the “true” index by taking an average of  $\mathrm{P_L}$  and  $\mathrm{P_P}$ , such as Fisher’s ideal price index  $\mathrm{P_F}$  defined earlier by (A3). This provides a justification for using the Fisher ideal formula even when the technology is changing.

Further results can be obtained by making more specific assumptions on the nature of technological change. In particular, suppose that the cost function takes on the translog functional form for  $t = 0,1$ :

$$
\begin{array}{l} \ln C^{t} (p, y) = \alpha_{0}^{t} + \sum_{i = 1}^{N} \alpha_{i}^{t} \ln p_{i} + \sum_{k = 1}^{M} \beta_{k}^{t} \ln y_{k} + \frac{1}{2} \sum_{i = 1}^{N} \sum_{j = 1}^{N} \gamma_{i j}^{t} \ln p_{i} \ln p_{j} \tag {A14} \\ + \frac{1}{2} \sum_{\mathrm{k} = 1}^{\mathrm{M}} \sum_{\ell = 1}^{\mathrm{M}} \delta_{\mathrm{k} \ell}^{\mathrm{t}} \ln \mathrm{y}_{\mathrm{k}} \ln \mathrm{y}_{\ell} + \sum_{\mathrm{i} = 1}^{\mathrm{N}} \sum_{\mathrm{k} = 1}^{\mathrm{M}} \phi_{\mathrm{ik}}^{\mathrm{t}} \ln p_{\mathrm{i}} \ln \mathrm{y}_{\mathrm{k}} \\ \end{array}
$$

where the parameters satisfy the restrictions  $\gamma_{\mathrm{ij}}^{\mathrm{t}} = \gamma_{\mathrm{ji}}^{\mathrm{t}}$  and,

$$
\sum_{\mathrm{i} = 1}^{\mathrm{N}} \alpha_{\mathrm{i}}^{\mathrm{t}} = 1 \quad \text{an d} \quad \sum_{\mathrm{i} = 1}^{\mathrm{N}} \gamma_{\mathrm{ij}}^{\mathrm{t}} = \sum_{\mathrm{i} = 1}^{\mathrm{N}} \phi_{\mathrm{ik}}^{\mathrm{t}} = 0. \tag {A15}
$$

These restrictions ensure that  $C^{\mathrm{t}}(\mathfrak{p},\mathfrak{y})$  is linearly homogeneous in the input price vector  $\mathfrak{p}$  (which is a property that any cost function must satisfy). Note that we are allowing the parameters that characterize the technology (the  $\alpha$ 's,  $\beta$ 's,  $\gamma$ 's,  $\delta$ 's and  $\phi$ 's) to be completely different in each period, reflecting technological change.

Now let us add the restriction that the quadratic price parameters in (A14) are equal across the two periods, i.e.  $\gamma_{\mathrm{ij}}^{0} = \gamma_{\mathrm{ij}}^{1}$ , though we still allow the other parameters to change over time. Then we can adapt the result in Caves, Christensen and Diewert (1982, pp. 1410) to show that the geometric mean of the theoretical price indexes in periods 0 and 1,  $\mathbf{P}^0 (\mathbf{p}^0,\mathbf{p}^1,\mathbf{y}^1)$  and  $\mathbf{P}^1 (\mathbf{p}^0,\mathbf{p}^1,\mathbf{y}^1)$ , is equal to the Tornqvist price index  $\mathbf{P}_{\mathrm{T}}$  defined by (A4):

# Theorem 3 (Caves, Christensen and Diewert, 1982)

Assume that  $\gamma_{ij}^{0} = \gamma_{ij}^{1}$ , and that the cost-minimizing input quantities  $q^t$  are strictly positive in both periods,  $t = 0,1$ . Then:

$$
\left[ \mathrm{P}^{0} \left(\mathrm{p}^{0}, \mathrm{p}^{1}, \mathrm{y}^{0}\right) \mathrm{P}^{1} \left(\mathrm{p}^{0}, \mathrm{p}^{1}, \mathrm{y}^{1}\right) \right]^{1 / 2} = \mathrm{P}_{\mathrm{T}} \left(\mathrm{p}^{0}, \mathrm{p}^{1}, \mathrm{q}^{0}, \mathrm{q}^{1}\right). \tag {A16}
$$

The assumptions required for this result seem rather weak; in particular, there is no requirement that the technologies exhibit constant returns to scale in either period and our assumptions are consistent with technological progress occurring between the two periods being compared. Because the index number formula  $\mathrm{P_T}$  is exactly equal to the geometric mean of two theoretical price indexes, which correspond to the translog and is itself a "flexible" functional form, this confirms that Törnqvist index number formula is superlative.

To see the usefulness of this result, let us decompose the total change in costs between period 0 and period 1 in two alternative ways:

$$
\frac{\mathrm{C}^{0} \left(\mathrm{p}^{0} , \mathrm{y}^{0}\right)}{\mathrm{C}^{1} \left(\mathrm{p}^{1} , \mathrm{y}^{1}\right)} = \frac{\mathrm{C}^{0} \left(\mathrm{p}^{0} , \mathrm{y}^{0}\right)}{\mathrm{C}^{0} \left(\mathrm{p}^{1} , \mathrm{y}^{0}\right)} \frac{\mathrm{C}^{0} \left(\mathrm{p}^{1} , \mathrm{y}^{0}\right)}{\mathrm{C}^{0} \left(\mathrm{p}^{1} , \mathrm{y}^{1}\right)} \frac{\mathrm{C}^{0} \left(\mathrm{p}^{1} , \mathrm{y}^{1}\right)}{\mathrm{C}^{1} \left(\mathrm{p}^{1} , \mathrm{y}^{1}\right)}, \tag {A17}
$$

and,

$$
\frac{\mathrm{C}^{0} \left(\mathrm{p}^{0} , \mathrm{y}^{0}\right)}{\mathrm{C}^{1} \left(\mathrm{p}^{1} , \mathrm{y}^{1}\right)} = \frac{\mathrm{C}^{1} \left(\mathrm{p}^{0} , \mathrm{y}^{1}\right)}{\mathrm{C}^{1} \left(\mathrm{p}^{1} , \mathrm{y}^{1}\right)} \frac{\mathrm{C}^{1} \left(\mathrm{p}^{0} , \mathrm{y}^{0}\right)}{\mathrm{C}^{1} \left(\mathrm{p}^{0} , \mathrm{y}^{1}\right)} \frac{\mathrm{C}^{0} \left(\mathrm{p}^{0} , \mathrm{y}^{0}\right)}{\mathrm{C}^{1} \left(\mathrm{p}^{0} , \mathrm{y}^{0}\right)}. \tag {A18}
$$

In each of these decompositions, the first ratio on the right reflects the changing input prices; the second ratio reflects the changing output vector; and the third ratio reflects pure technological change. Let us define the measure of technological change, or total factor productivity, as a geometric mean of the final ratios in (A17) and (A18):

$$
\mathrm{TF P} \equiv \left[ \frac{\mathrm{C}^{0} \left(\mathrm{p}^{1} , \mathrm{y}^{1}\right)}{\mathrm{C}^{1} \left(\mathrm{p}^{1} , \mathrm{y}^{1}\right)} \frac{\mathrm{C}^{0} \left(\mathrm{p}^{0} , \mathrm{y}^{0}\right)}{\mathrm{C}^{1} \left(\mathrm{p}^{0} , \mathrm{y}^{0}\right)} \right]^{1 / 2}. \tag {A19}
$$

This index reflects the fall in costs from period 0 to period 1 due to pure technological change, but as defined, it is not observable: neither the period 0 costs with period 1 prices and outputs, nor the period 1 costs with period 0 prices and outputs, are known. However, we can make use of Theorem 3 to indirectly measure TFP. In particular, taking the geometric mean of (A17) and (A18), and using (A19), we obtain:

$$
\frac{\mathrm{C}^{0} \left(\mathrm{p}^{0} , \mathrm{y}^{0}\right)}{\mathrm{C}^{1} \left(\mathrm{p}^{1} , \mathrm{y}^{1}\right)} = \mathrm{P}_{\mathrm{T}} \left(\mathrm{p}^{0}, \mathrm{p}^{1}, \mathrm{q}^{0}, \mathrm{q}^{1}\right)^{- 1} \times \mathrm{TF P} \times \left[ \frac{\mathrm{C}^{1} \left(\mathrm{p}^{1} , \mathrm{y}^{0}\right)}{\mathrm{C}^{1} \left(\mathrm{p}^{1} , \mathrm{y}^{1}\right)} \frac{\mathrm{C}^{0} \left(\mathrm{p}^{0} , \mathrm{y}^{0}\right)}{\mathrm{C}^{0} \left(\mathrm{p}^{0} , \mathrm{y}^{1}\right)} \right]^{1 / 2}. \tag {A20}
$$

Thus, the total change in costs from period 0 to period 1 is decomposed into the inverse of the Tönnqvist input price index, total factor productivity, and the final term in (A20) which reflects the change in outputs. We will see some techniques later in the Appendix that allow us to measure the final term, but note here a particularly simply result.

If there is a single output, so that  $y^{\mathrm{t}}$  is a scalar, and the cost function is linearly homogeneous in this output, then it can be written as  $C^{\mathrm{t}}(\mathrm{p},\mathrm{y}) = \mathrm{y} c^{\mathrm{t}}(\mathrm{p})$  where  $c^{\mathrm{t}}(\mathrm{p})$  is the unit-cost function. In that case, the final bracketed term on the right of (A20) is simply  $y^{0} / y^{1}$ . This ratio of outputs also appears on the left of (A20), which equals  $(y^{0} / y^{1})[c^{0}(p^{0}) / c^{1}(p^{1})]$ , so it cancels from both sides. Then we can re-arrange the terms in (A20) to obtain total factor productivity as:

$$
\ln (\mathrm{TF P}) = \ln \mathrm{P}_{\mathrm{T}} \left(\mathrm{p}^{0}, \mathrm{p}^{1}, \mathrm{q}^{0}, \mathrm{q}^{1}\right) - \ln \left[ \mathrm{c}^{1} \left(\mathrm{p}^{1}\right) / \mathrm{c}^{0} \left(\mathrm{p}^{0}\right) \right]. \tag {A21}
$$

If there is perfect competition in the industry then unit-costs equal price, so the ratio of unit-costs on the right of (A21) is replaced by the ratio of output prices in the two periods. Then (A21) becomes the dual Törnqvist measure of total factor productivity that we used in chapter 4, which is a weighted average of the change in input prices minus the change in output prices. The above results provide a rigorous justification for the use of this index (or its primal counterpart, the change in log output minus the log Törnqvist index of input quantities), which is widely thought to be the "best" measure of productivity change.

# Gdp Price Index

Our results above can be readily extended to the GDP price index for an economy. We suppose that the feasible set of outputs  $\mathbf{q} = (\mathbf{q}_1, \dots, \mathbf{q}_{\mathrm{N}})$  and factor endowments  $\mathbf{v} = (\mathbf{v}_1, \dots, \mathbf{v}_{\mathrm{M}}) \geq 0$  during period  $t$  is a set  $S^t$ , a subset of  $\mathbf{N} + \mathbf{M}$  dimensional space. We make the following conventions on outputs: if commodity  $i$  in the list of net outputs is an output in period  $t$ , then its corresponding quantity  $q_i^t$  is positive; however, if commodity  $i$  is an input in period  $t$ , then its corresponding quantity  $q_i^t$  is negative. The latter would include imported intermediate inputs, for example. Then the sum of price times quantity over all net outputs,  $\sum_{i=1}^{N} p_i^t q_i^t$ , equals net revenue or GDP for the economy.

Let  $\mathfrak{p} = (\mathfrak{p}_1, \ldots, \mathfrak{p}_{\mathrm{N}})$  denote a positive vector of net output prices that producers face in period t. Then the revenue or GDP function using period t technology is defined as:

$$
\mathrm{G}^{\mathrm{t}} (\mathrm{p}, \mathrm{v}) \equiv \max_{\mathrm{q}} \left\{\mathrm{p}^{\prime} \mathrm{q}: (\mathrm{q}, \mathrm{v}) \text{be lo ng st oS}^{\mathrm{t}} \right\}. \tag {A22}
$$

Thus  $\mathbf{G}^{\dagger}(\mathbf{p},\mathbf{v})$  is the maximum value of (net) output that the economy can produce, given that the vector of net inputs  $\mathbf{v}$  is available for use, using the period  $t$  technology.

The GDP function can be used to define the economy's period  $t$  technology theoretical GDP price index  $\mathbf{P}^{\dagger}$  between any two periods, say period 0 and period 1, as follows:

$$
\mathrm{P}^{\mathrm{t}} \left(\mathrm{p}^{0}, \mathrm{p}^{1}, \mathrm{v}\right) = \mathrm{G}^{\mathrm{t}} \left(\mathrm{p}^{1}, \mathrm{v}\right) / \mathrm{G}^{\mathrm{t}} \left(\mathrm{p}^{0}, \mathrm{v}\right), \tag {A23}
$$

where  $\mathbf{p}^{\mathrm{t}}$  is the vector of net output prices that the economy faces in period t,  $t = 0,1$ , and  $\mathbf{v}$  is a reference vector of factor endowments.

Note that there are a wide variety of price indexes of the form (A23) depending on which (t,v) reference technology and input vector v that we choose. Again, we are interested in two special cases: (a)  $\mathrm{P}^0 (\mathrm{p}^0,\mathrm{p}^1,\mathrm{v}^0)$  which uses the period 0 technology and the input vector  $\mathbf{V}^0$  that was actually used in period 0, and (b)  $\mathrm{P}^{1}(\mathrm{p}^{0},\mathrm{p}^{1},\mathrm{v}^{1})$  which uses the period 1 technology and the input vector  $\mathbf{V}^1$ . Let  $\mathbf{q}^0$  and  $\mathbf{q}^1$  be the observed net output vectors in periods 0 and 1 respectively. If there is competitive behaviour on the part of producers in periods 0 and 1, then observed GDP in periods 0 and 1 should be equal to  $\mathrm{G}^0 (\mathrm{p}^0,\mathrm{v}^0)$  and  $\mathrm{G}^1 (\mathrm{p}^1,\mathrm{v}^1)$  respectively; i.e.:

$$
\mathrm{G}^{0} \left(\mathrm{p}^{0}, \mathrm{v}^{0}\right) = \mathrm{p}^{0} \mathrm{q}^{0} \quad \text{an d} \quad \mathrm{G}^{1} \left(\mathrm{p}^{1}, \mathrm{v}^{1}\right) = \mathrm{p}^{1} \mathrm{q}^{1}. \tag {A24}
$$

Then we can use these results of Fisher and Shell (1972, p. 57-58) and Archibald (1977, p. 66) to again develop a series of inequalities on the theoretical price indexes:

$$
\begin{array}{l} \mathrm{P}^{0} \left(\mathrm{p}^{0}, \mathrm{p}^{1}, \mathrm{v}^{0}\right) \equiv \mathrm{G}^{0} \left(\mathrm{p}^{1}, \mathrm{v}^{0}\right) / \mathrm{G}^{0} \left(\mathrm{p}^{0}, \mathrm{v}^{0}\right) \quad \text{us in gd ef in it io n (A2 3)} \\ = \mathrm{G}^{0} \left(\mathrm{p}^{1}, \mathrm{v}^{0}\right) / \mathrm{p}^{0}, \mathrm{q}^{0} \quad \text{us in g (A2 4)} \\ \begin{array}{l l} \geq p^{1} q^{0} / p^{0} q^{0} & \text{si nc e} q^{0} \text{is fe as ib le fo rt he ma xi mi za ti on pr ob le m} \\ & \text{th at de fi ne sG^{0} (p^{1} , v^{0}) a n d s o G^{0} (p^{1} , v^{0}) \geq p^{1} q^{0}} \end{array} \\ \mathbf {\nabla} \equiv \mathrm{P}_{\mathrm{L}} (\mathbf {p}^{0}, \mathbf {p}^{1}, \mathbf {q}^{0}, \mathbf {q}^{1}), \\ \end{array}
$$

where  $\mathbf{P_L}$  is the Laspeyres price index. Similarly, we have:

$$
\begin{array}{l} \mathrm{P}^{1} \left(\mathrm{p}^{0}, \mathrm{p}^{1}, \mathrm{v}^{1}\right) \equiv \mathrm{G}^{1} \left(\mathrm{p}^{1}, \mathrm{v}^{1}\right) / \mathrm{G}^{1} \left(\mathrm{p}^{0}, \mathrm{v}^{1}\right) \quad \text{us in gd ef in it io n (A2 3)} \\ = p^{1} q^{1} / G^{1} \left(p^{0}, v^{1}\right) \quad \text{us in g (A2 4)} \\ \begin{array}{l l} \leq p^{1} q^{1} / p^{0} q^{1} & \text{si nc eq^{1} i s f e a s i b l e f o r t h e m a x i m i z a t i o n p r o b l e m} \\ & \text{th at de fi ne sG^{1} (p^{0} , v^{1}) a n d s o G^{1} (p^{0} , v^{1}) \geq p^{0} q^{1}} \end{array} \\ \mathbf {\nabla} \equiv \mathrm{P_{P}} (\mathbf {p}^{0}, \mathbf {p}^{1}, \mathbf {q}^{0}, \mathbf {q}^{1}), \\ \end{array}
$$

where  $\mathrm{P_P}$  is the Paasche price index. Note that these inequalities are in the opposite direction compared to their counterparts for the input index, which reflects that fact that revenue is maximized in (A22) whereas costs are minimized in (A5).

As with the input index, it is possible to define a theoretical GDP price index that falls between the observable Paasche and Laspeyres price indexes. To do this, we first define a hypothetical GDP function,  $\mathrm{G}(\mathrm{p},\alpha)$ , that corresponds to the use of an  $\alpha$ -weighted average of the technology sets  $\mathbf{S}^0$  and  $\mathbf{S}^1$  for periods 0 and 1 as the reference technology, and that uses an  $\alpha$ -weighted average of the period 0 and period 1 input vectors  $\mathbf{v}^0$  and  $\mathbf{v}^1$ :

$$
\mathrm{G} (\mathrm{p}, \alpha) \equiv \max_{\mathrm{q}} \left\{\mathrm{p}^{\prime} \mathrm{q}: \left(\mathrm{q}, [ 1 - \alpha ] \mathrm{v}^{0} + \alpha \mathrm{v}^{1}\right) \text{be lo ng st o} (1 - \alpha) \mathrm{S}^{0} + \alpha \mathrm{S}^{1} \right\}. \tag {A25}
$$

Then we can define the following family (indexed by  $\alpha$ ) of theoretical GDP price indexes:

$$
\mathrm{P} \left(\mathrm{p}^{0}, \mathrm{p}^{1}, \alpha\right) \equiv \mathrm{G} \left(\mathrm{p}^{1}, \alpha\right) / \mathrm{G} \left(\mathrm{p}^{0}, \alpha\right). \tag {A26}
$$

Then it turns out that for the theoretical index in (A26), Theorem 2 continues to hold as stated. That is, there exists  $\alpha$  between 0 and 1 such that the theoretical GDP index in (A26) lies between the observable Paasche and Laspeyres indexes. There is an important qualification to this result, however: as stated in (A13), we do not know in general whether  $\mathrm{P_L} \geq \mathrm{P_P}$  or  $\mathrm{P_L} \leq \mathrm{P_P}$ . For the input index, cost-minimizing behavior with a constant technology will cause the

Laspeyres price index to exceed the Paasche price index, since the former uses base-period quantities that do not reflect the substitution by firms away from the inputs whose prices increase the most. Conversely, for the GDP price index, firms will substitute towards the goods with the greatest increase in price, and with a constant technology this will lead the Paasche price index to exceed the Laspeyres price index. In practice, however, even for GDP price indexes we typically find that the Laspeyres price index exceeds the Paasche price index. The same holds for quantity indexes: the Laspeyres quantity index typically exceeds the Paasche quantity index. This empirical regularity is called the “Gerschenkron effect,” after the work of Alexander Gerschenkron (1951).

The case where the Gerschenkron effect does not hold is illustrated in Figure A.1, where we hold technology constant along a given production possibilities frontier (PPF). We choose good 2 as the numeraire and evaluate GDP by the intercepts on the vertical axis. The initial prices lead to outputs at point A, with GDP measured by 0A of good 2 along the vertical axis. At the new prices outputs occur at point B, with GDP is measured by 0B of good 2. So the ratio 0B/0A is the theoretical GDP price index. The Laspeyres price index would evaluate the price change at the initial quantities, to obtain the ratio  $0\mathrm{A}^{\prime} / 0\mathrm{A} < 0\mathrm{B} / 0\mathrm{A}$ . On the other hand, the Paasche price index would evaluate the price change at the new quantities, to obtain  $0\mathrm{B} / 0\mathrm{B}^{\prime} > 0\mathrm{B} / 0\mathrm{A} > 0\mathrm{A}^{\prime} / 0\mathrm{A}$ , which exceeds that obtained from the Laspeyres price index. This confirms

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/e92518f5-4cf8-4c58-a165-b17ce17987b7/323c6b17502ee8a2f4a6e3800e2eae8950d165d3c3ad6799cad04bd550b60eb7.jpg)
Figure A.1

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/e92518f5-4cf8-4c58-a165-b17ce17987b7/ce31ef086c3f36aef2b9385bcdea81eab533e1ddba69e8b08896e31b93dbcc89.jpg)
Figure A.2

that the Paasche price index exceeds the Laspeyres index when technology does not change, due to output substitution by producers.

In Figure A.2, by contrast, we suppose that the PPF is shifting out due to technological change. At unchanged prices, GDP would increase from point A to point B (i.e. GDP would increase from the intercept of AA and BB with the vertical axis). Suppose, however, that the relative price of good 1 falls due to its increased supply, so that the slope of the line CC shows the new prices. Production now occurs at point B' rather than point B. We have drawn the case where the budget lines AA and CC are both tangent to an indifference curve U, indicating that the change in equilibrium prices are due to changing supply with constant tastes. Thus, the change in prices will reflect consumer substitution rather than producer substitution.

In the case we have illustrated, the production points A and B' lie on the same ray from the origin, so that the relative outputs of the two goods are unchanged. This means that the Laspeyres and Paasche price indexes, using the outputs at points A or B', would be identical. In fact, evaluating the Laspeyres price index using the initial outputs at point A, we would obtain GDP of 0A along the vertical axis at the old prices and 0C' at the new prices, so the price index is  $0\mathrm{C}^{\prime} / 0\mathrm{A} < 1$ , indicating a substantial fall in the price of good 1. The Paasche price index, evaluated at the outputs at point B', would give exactly the same result. If point B' occurred along the PPF slightly to the right, however, then the higher supply of good 1, whose relative price has fallen, would cause the Paasche price index to be less than the Laspeyres price index. This would illustrate the Gerschenkron effect.

Finding that the Laspeyres output index exceeds the Paasche is indirect evidence of changing technology or factor endowments, so that equilibrium prices reflect consumer substitution rather than producer substitution. The theoretical GDP price index  $\mathrm{P}(\mathrm{p}^0,\mathrm{p}^1,\alpha)$

defined in (A26) holds technology and factor endowments constant, and is therefore a suitable measure of price change. Theorem 2 says that this theoretical index can be measured by an average of the Paasche and Laspeyres price indexes, which is one justification for using the Fisher ideal index for the output price index, as we also found for the input price index.

Further results can be obtained by using the translog form for the GDP function, where we allow its parameters to vary over time due to technological change:

$$
\begin{array}{l} \ln \mathrm{G}^{\mathrm{t}} (\mathrm{p}, \mathrm{v}) = \alpha_{0}^{\mathrm{t}} + \sum_{\mathrm{i} = 1}^{\mathrm{N}} \alpha_{\mathrm{i}}^{\mathrm{t}} \ln \mathrm{p}_{\mathrm{i}} + \sum_{\mathrm{k} = 1}^{\mathrm{M}} \beta_{\mathrm{k}}^{\mathrm{t}} \ln \mathrm{v}_{\mathrm{k}} + \frac{1}{2} \sum_{\mathrm{i} = 1}^{\mathrm{N}} \sum_{\mathrm{j} = 1}^{\mathrm{N}} \gamma_{\mathrm{ij}}^{\mathrm{t}} \ln \mathrm{p}_{\mathrm{i}} \ln \mathrm{p}_{\mathrm{j}} \tag {A27} \\ + \frac{1}{2} \sum_{\mathrm{k} = 1}^{\mathrm{M}} \sum_{\ell = 1}^{\mathrm{M}} \delta_{\mathrm{k} \ell}^{\mathrm{t}} \ln \mathrm{v}_{\mathrm{k}} \ln \mathrm{v}_{\ell} + \sum_{\mathrm{i} = 1}^{\mathrm{N}} \sum_{\mathrm{k} = 1}^{\mathrm{M}} \phi_{\mathrm{ik}}^{\mathrm{t}} \ln \mathrm{p}_{\mathrm{i}} \ln \mathrm{v}_{\mathrm{k}}. \\ \end{array}
$$

In order to ensure that the translog GDP function is homogeneous of degree one in prices, we impose symmetry  $\gamma_{ij}^{t} = \gamma_{ji}^{t}$  and the requirements,

$$
\sum_{\mathrm{i} = 1}^{\mathrm{N}} \alpha_{\mathrm{i}}^{\mathrm{t}} = 1 \quad \text{an d} \quad \sum_{\mathrm{i} = 1}^{\mathrm{N}} \gamma_{\mathrm{ij}}^{\mathrm{t}} = \sum_{\mathrm{i} = 1}^{\mathrm{N}} \phi_{\mathrm{ik}}^{\mathrm{t}} = 0. \tag {A28}
$$

In addition, to ensure that the GDP function is homogeneous of degree one in endowments, we impose symmetry  $\delta_{\mathrm{k}\ell}^{\mathrm{t}} = \delta_{\ell \mathrm{k}}^{\mathrm{t}}$  and the requirements,

$$
\sum_{k = 1}^{M} \beta_{k}^{t} = 1 \quad \text{an d} \quad \sum_{k = 1}^{M} \delta_{k \ell}^{t} = \sum_{k = 1}^{M} \phi_{i k}^{t} = 0. \tag {A29}
$$

The next result is completely analogous to Theorem 3 for the translog cost function, where again we require that the second-order parameters on prices  $\gamma_{ij}^{t}$ , remain constant. This result follows by adapting the arguments in Caves, Christensen and Diewert (1982). It does not

require the GDP function to be homogeneous of degree one in factor endowments, though we will make use of (A29) later.

# Theorem 4 (Caves, Christensen and Diewert, 1982)

Assuming that  $\gamma_{ij}^{0} = \gamma_{ij}^{1}$ , and that the output quantities  $q^t$  are revenue-maximizing at prices  $p^t$ ,  $t = 0,1$ , Then:

$$
\left[ \mathrm{P}^{0} \left(\mathrm{p}^{0}, \mathrm{p}^{1}, \mathrm{v}^{0}\right) \mathrm{P}^{1} \left(\mathrm{p}^{0}, \mathrm{p}^{1}, \mathrm{v}^{1}\right) \right]^{1 / 2} = \mathrm{P}_{\mathrm{T}} \left(\mathrm{p}^{0}, \mathrm{p}^{1}, \mathrm{q}^{0}, \mathrm{q}^{1}\right). \tag {A30}
$$

Thus, a geometric mean of the theoretical GDP price indexes  $\mathrm{P}^0 (\mathfrak{p}^0,\mathfrak{p}^1,\mathfrak{v}^0)$  and  $\mathrm{P}^1 (\mathfrak{p}^0,\mathfrak{p}^1,\mathfrak{v}^1)$  equals the translog price index defined by (A4). Unlike Theorem 3, we no longer need to assume that the quantities  $\mathbf{q}^{\mathrm{t}}$  are strictly positive: we are now letting  $q_{i}^{t} > 0$  denote an output, and  $q_{i}^{t} < 0$  denote an input, and a commodity can switch from one to the other across the two periods. This raises an important question of interpretation, however. Since  $q_{i}^{t} < 0$  can reflect imported intermediate inputs, while  $q_{i}^{t} > 0$  can reflect exported commodities, it appears that the output price index is mixing together terms of trade effects with other price movements. This is indeed the case, and in the next section we use the results of Diewert and Morrison (1986) and Kohli (1990, 2001) to separately measure the terms of trade impact and productivity.

# Terms of Trade and Productivity

Let us return to Figure A.2, where we illustrated a productivity improvement and a fall in the relative price of goods 1. We have already argued that the Paasche and Laspeyres output price indexes would be equal in the example illustrated, and would indicate a very substantial decline in prices, of  $0\mathrm{C}^{\prime} / 0\mathrm{A} < 1$ . Using good 2 as the numeraire, the resulting value of GDP

(measured off the vertical axis) indicates a much smaller decline, from 0A to 0C, with the ratio 0C/0A. If we divide this change in GDP by the price index, we obtain a measure of the change in real GDP, which is just (0C/0A)/(0C'/0A) = 0C/0C' > 1. Thus, we find that real GDP has risen, which is entirely appropriate since production has indeed increased from point A to point B'. Indeed, the ratio 0C/0C' along the vertical axis is identical to the ratio 0B'/0C along the ray from the origin, which precisely measures the increase in outputs and real GDP. We conclude that our GDP price index, and the corresponding measure of real GDP, accurately reflects the outward shift in the PPF due to technological change or factor accumulation.

Now suppose we pose a different question, and ask what has happened to the cost of living for the representative consumer, with indifference curve shown by U in Figure A.2. An exact cost of living index for the consumer would compare the initial expenditure 0A in Figure A.2 with the new expenditure 0C, both measured with good 2 as the numeraire and giving constant utility of U. Thus, an exact cost of living index would equal  $0\mathrm{C} / 0\mathrm{A} < 1$ . Notice that this index is constructed using exactly the same prices as the GDP price index, but now using different quantities as weights: the cost of living index using the quantities demanded, whereas the GDP price index uses the quantities supplied. For this reason we can expect the indexes to differ, and in our example, the cost of living index 0C/0A exceeds the GDP price index, which was 0C'/0A. Indeed, the difference between the two indexes is entirely due to the terms of trade change for the economy. The fall in the relative price of good 1 is reflected more in the GDP price index than in the cost of living index, because this export good has production exceeding consumption.

The above argument suggests the following definition of the terms of trade index:

(Terms of trade index)  $\equiv$  (GDP price index)/(Cost of Living index), (A31)

where all of these indexes are computed over the set of final goods sold in an economy. To further motivate this definition, consider the Tornqvist index in (A4) or (A4'). Let  $\mathrm{P_T(p^0,p^1,q^0,q^1)}$  denote the cost of living index, computed with prices  $p^t$  and quantities consumed  $q^t$ ,  $t = 0,1$ . In addition, let  $\mathrm{P_T(p^0,p^1,y^0,y^1)}$  denote the GDP price index, computed with prices  $p^t$  and quantities produced  $y^t$ ,  $t = 0,1$ . Exports of final goods are simply  $x^t = y^t - q^t$ , and let us assume for simplicity that trade is balanced, so that  $p^t x^t = p^t y^t - p^t q^t = 0$ . Then it follows immediately from (A4') that,

$$
\ln \mathrm{P}_{\mathrm{T}} \left(\mathrm{p}^{0}, \mathrm{p}^{1}, \mathrm{y}^{0}, \mathrm{y}^{1}\right) - \ln \mathrm{P}_{\mathrm{T}} \left(\mathrm{p}^{0}, \mathrm{p}^{1}, \mathrm{q}^{0}, \mathrm{q}^{1}\right) = \sum_{\mathrm{i} = 1}^{\mathrm{N}} \left(\frac{1}{2}\right) \left(\frac{\mathrm{p}_{\mathrm{i}}^{0} \mathrm{x}_{\mathrm{i}}^{0}}{\mathrm{p}^{0} , \mathrm{y}^{0}} + \frac{\mathrm{p}_{\mathrm{i}}^{1} \mathrm{x}_{\mathrm{i}}^{1}}{\mathrm{p}^{1} , \mathrm{y}^{1}}\right) \ln \left(\mathrm{p}_{\mathrm{i}}^{1} / \mathrm{p}_{\mathrm{i}}^{0}\right). \tag {A32}
$$

The left of (A32) is the difference between the log GDP price index and the log cost of living index, while the right is a price index constructed using as weights the average value of exports relative to GDP in the two periods. These weights are negative for imports, so the right of (A32) is indeed interpreted as a terms of trade index.

These results can be extended to the case where imports include intermediate inputs, as in Diewert and Morrison (1986). To achieve this, let us identify three groups of commodities: those for final domestic demand (quantity  $q_{\mathrm{di}}^{\mathrm{t}} > 0$  and price  $p_{\mathrm{di}}^{\mathrm{t}} > 0$ , for  $i = 1, \dots, N_{\mathrm{d}}$ ); those for export ( $q_{\mathrm{xi}}^{\mathrm{t}} > 0$  and  $p_{\mathrm{xi}}^{\mathrm{t}} > 0$ , for  $i = 1, \dots, N_{\mathrm{x}}$ ); and imported intermediate inputs ( $q_{\mathrm{mi}}^{\mathrm{t}} < 0$  and  $p_{\mathrm{mi}}^{\mathrm{t}} > 0$ , for  $i = 1, \dots, N_{\mathrm{m}}$ ). The quantity vector for all commodities is  $q^{\mathrm{t}} = (q_{\mathrm{d}}^{\mathrm{t}}, q_{\mathrm{x}}^{\mathrm{t}}, q_{\mathrm{m}}^{\mathrm{t}})$ , with prices  $p^{\mathrm{t}} = (p_{\mathrm{d}}^{\mathrm{t}}, p_{\mathrm{x}}^{\mathrm{t}}, p_{\mathrm{m}}^{\mathrm{t}})$ . Then the GDP function for the economy is still defined as in (A22), where  $q^{\mathrm{t}}$  is

the revenue-maximizing choices by firms. We will suppose that GDP takes on the translog form as in (A27)-(A29).

For this GDP function, let us define the theoretical productivity index:

$$
\mathrm{R} (\mathrm{p}, \mathrm{v}) = \mathrm{G}^{1} (\mathrm{p}, \mathrm{v}) / \mathrm{G}^{0} (\mathrm{p}, \mathrm{v}). \tag {A33}
$$

Thus, this theoretical index holds prices and factor endowments fixed, and considers only the change in productivity between periods 0 and 1. We are interested in two special cases: (a) the Laspeyres productivity index,  $\mathrm{R_L} \equiv \mathrm{R(p^0,v^0)} = \mathrm{G^1(p^0,v^0)} / \mathrm{G^0(p^0,v^0)}$ , which uses prices and endowments from period 0; (b) the Paasche productivity index,  $\mathrm{R_P} \equiv \mathrm{R(p^1,v^1)} = \mathrm{G^1(p^1,v^1)} / \mathrm{G^1(p^1,v^1)}$ , which uses prices and endowments from period 1. Each of these are unobservable, but as in our earlier discussion of productivity in (A19)-(A21), we can measure their geometric mean:

# Theorem 5 (Diewert and Morrison, 1986)

Assuming that the GDP function takes on the translog form in (A27)-(A29), and the revenue-maximizing quantities  $\mathbf{q}^{\mathrm{t}}$  are non-zero, then:

$$
\left(\mathrm{R}_{\mathrm{L}} \mathrm{R}_{\mathrm{P}}\right)^{1 / 2} = \left(\frac{\mathrm{p}^{1} , \mathrm{q}^{1}}{\mathrm{p}^{0} , \mathrm{q}^{0}}\right) / \left[ \mathrm{P}_{\mathrm{T}} \left(\mathrm{p}^{0}, \mathrm{p}^{1}, \mathrm{q}^{0}, \mathrm{q}^{1}\right) \mathrm{Q}_{\mathrm{T}} \left(\mathrm{w}^{0}, \mathrm{w}^{1}, \mathrm{v}^{0}, \mathrm{v}^{1}\right) \right]. \tag {A34}
$$

The first term on the right of (A34) is the ratio of GDP in the two periods, or the growth in nominal GDP. This is deflated by the two other terms on the right: the first is the Törnqvist

price index of GDP using the formula in (A4); and the second is a Törnqvist quantity index of factor endowments, defined by:

$$
\ln Q_{\mathrm{T}} \left(\mathrm{w}^{0}, \mathrm{w}^{1}, \mathrm{v}^{0}, \mathrm{v}^{1}\right) \equiv \sum_{\mathrm{i} = 1}^{\mathrm{N}} \left(\frac{1}{2}\right) \left(\frac{\mathrm{w}_{\mathrm{i}}^{0} \mathrm{v}_{\mathrm{i}}^{0}}{\mathrm{w}^{0 ,} \mathrm{v}^{0}} + \frac{\mathrm{w}_{\mathrm{i}}^{1} \mathrm{v}_{\mathrm{i}}^{1}}{\mathrm{w}^{1 ,} \mathrm{v}^{1}}\right) \ln \left(\mathrm{v}_{\mathrm{i}}^{1} / \mathrm{v}_{\mathrm{i}}^{0}\right). \tag {A35}
$$

Thus, this is a factor-share weighted average of the growth in primary inputs for the economy. Notice that under our assumption (A29) that the GDP function is linearly homogeneous in  $\mathbf{v}$ , then  $\mathbf{p}^{\mathrm{t}}\mathbf{q}^{\mathrm{t}} = \mathbf{w}^{\mathrm{t}}\mathbf{v}^{\mathrm{t}}$ , so the shares in the Törnqvist price index and the Törnqvist quantity index are both measured relative to GDP. Theorem 5 generalizes our earlier derivation of TFP in (A19)-(A21), to allow now for multiple inputs and outputs.

Let us now take the Törnqvist price index of GDP that appears on the right of (A34), and decompose it into the portion dealing with domestic goods, exports, and imports:

$$
\begin{array}{l} \ln \mathrm{P}_{\mathrm{T}} \left(\mathrm{p}^{0}, \mathrm{p}^{1}, \mathrm{q}^{0}, \mathrm{q}^{1}\right) = \sum_{\mathrm{i} = 1}^{\mathrm{N}_{\mathrm{d}}} \left(\frac{1}{2}\right) \left(\frac{\mathrm{p}_{\mathrm{di}}^{0} \mathrm{q}_{\mathrm{di}}^{0}}{\mathrm{p}^{0} , \mathrm{q}^{0}} + \frac{\mathrm{p}_{\mathrm{di}}^{1} \mathrm{q}_{\mathrm{di}}^{1}}{\mathrm{p}^{1} , \mathrm{q}^{1}}\right) \ln \left(\mathrm{p}_{\mathrm{di}}^{1} / \mathrm{p}_{\mathrm{di}}^{0}\right) \tag {A36} \\ + \sum_{i = 1}^{N_{\mathrm{x}}} \left(\frac{1}{2}\right) \left(\frac{p_{\mathrm{xi}}^{0} q_{\mathrm{xi}}^{0}}{p^{0} , q^{0}} + \frac{p_{\mathrm{xi}}^{1} q_{\mathrm{xi}}^{1}}{p^{1} , q^{1}}\right) \ln \left(p_{\mathrm{xi}}^{1} / p_{\mathrm{xi}}^{0}\right) + \sum_{i = 1}^{N_{\mathrm{m}}} \left(\frac{1}{2}\right) \left(\frac{p_{\mathrm{mi}}^{0} q_{\mathrm{mi}}^{0}}{p^{0} , q^{0}} + \frac{p_{\mathrm{mi}}^{1} q_{\mathrm{mi}}^{1}}{p^{1} , q^{1}}\right) \ln \left(p_{\mathrm{mi}}^{1} / p_{\mathrm{mi}}^{0}\right). \\ \end{array}
$$

We will refer to the first summation on the right of (A36) as the cost of living index, because it uses the quantities and prices of final goods demanded by the consumer. The exponent of this first summation is denoted by the Törnqvist price index  $\mathrm{P_T(p_d^0,p_d^1,q_d^0,q_d^1)}$ , where the shares are computed relative to total GDP  $p^{t}q^{t}$ . The second and third terms are the difference between the export and import price indexes, respectively, where recall that  $q_{mi}^{t} < 0$ . Let us denote the

exponent of these two summations by the Tornqvist index  $\mathrm{P_T(p_{xm}^0,p_{xm}^1,q_{xm}^0,q_{xm}^1)}$ , where again, the shares are computed relative to total GDP  $p^{t},q^{t}$ .

Then we can re-write the result in (A34) in the following form:

$$
\left(\frac{p^{1} , q^{1}}{p^{0} , q^{0}}\right) = \left(R_{L} R_{P}\right)^{1 / 2} P_{T} \left(p_{d}^{0}, p_{d}^{1}, q_{d}^{0}, q_{d}^{1}\right) P_{T} \left(p_{x m}^{0}, p_{x m}^{1}, q_{x m}^{0}, q_{x m}^{1}\right) Q_{T} \left(w^{0}, w^{1}, v^{0}, v^{1}\right). \tag {A37}
$$

Thus, the ratio of nominal GDP is decomposed as a total factor productivity index, a cost of living price index, a terms of trade index, and a quantity index of endowment growth. Kohli (2001) argues that if we wish to deflate the growth in GDP to obtain a measure of welfare change for the representative consumer, then we should use the cost of living index rather than the GDP price index as a deflator. That is, a measure of welfare change would be,

$$
\left(\frac{p^{1} , q^{1}}{p^{0} , q^{0}}\right) / P_{T} \left(p_{d}^{0}, p_{d}^{1}, q_{d}^{0}, q_{d}^{1}\right) = \left(R_{L} R_{P}\right)^{1 / 2} P_{T} \left(p_{x m}^{0}, p_{x m}^{1}, q_{x m}^{0}, q_{x m}^{1}\right) Q_{T} \left(w^{0}, w^{1}, v^{0}, v^{1}\right). \tag {A38}
$$

This decomposition allows productivity growth, improvements in the terms of trade, and endowment growth in factors to all contribute positively to welfare. Notice that this measure of welfare is quite different from how the growth in real GDP is normally calculated, which is to deflate the ratio of nominal GDP by the GDP price index, obtaining,

$$
\left(\frac{\mathrm{p}^{1} , \mathrm{q}^{1}}{\mathrm{p}^{0} , \mathrm{q}^{0}}\right) / \mathrm{P}_{\mathrm{T}} \left(\mathrm{p}^{0}, \mathrm{p}^{1}, \mathrm{q}^{0}, \mathrm{q}^{1}\right) = \left(\mathrm{R}_{\mathrm{L}} \mathrm{R}_{\mathrm{P}}\right)^{1 / 2} \mathrm{Q}_{\mathrm{T}} \left(\mathrm{w}^{0}, \mathrm{w}^{1}, \mathrm{v}^{0}, \mathrm{v}^{1}\right). \tag {A39}
$$

The log of (A39) is reported as real GDP growth in national income statistics, but it leaves out changes in the terms of trade as a source of welfare gain. In (A38), by contrast, we

deflate nominal GDP by the price index computed for domestic goods only, i.e. by the price index for domestic absorption,  $\mathrm{C +I +G}$ . By applying this cost of living index to all components of GDP,  $\mathrm{C +I +G +X -M}$ , including exports and imports, we obtain a measure of "real welfare" that is more appropriate to assess changes in the representative consumer. Kohli (1990b, 2001) shows that deflating nominal GDP by the cost of living index leads to a considerably higher growth in "real welfare" for some countries (such as Switzerland) that real GDP growth. This is explained by the terms of trade improvements for such countries in recent years.


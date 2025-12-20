---
primary_tags:
- infer individual taste
- random products consumers general
- optimal prices estimated jointly
secondary_tags:
- appendix discrete choice models
- choice models discrete
- nonlinear income discrete choice
- discrete choice literature implies
- aggregated individual choice
- discrete choice purchased quantity
tags_extracted: '2025-12-18T00:14:12.237080'
---

# Appendix B: Discrete Choice Models

Discrete choice models are commonly taught in econometrics, but the economic generality of these models is sometimes unclear. This is especially true when we consider models that incorporate not just demand but also the optimal prices charged by firms under imperfect competition. In that case, we want to derive demand and prices in a mutually consistent fashion, as will be discussed in this Appendix.

We begin with an aggregation theorem due to McFadden (1978, 1981). He has shown that when individual have random utility over discrete alternatives, the decisions that they made can sometimes be aggregated up to a representative consumer. McFadden focuses on the case where individual have utility functions that are linear in income, and where the goods over which a discrete choice is being made are purchased in the quantity 0 or 1. Under certain conditions, it is possible to generalize this to the case where utility is nonlinear in income, and where the discrete-choice good is purchased in continuous quantities. This is a principal result of Anderson, de Palma and Thisse (1992, chaps. 2-5) who show, for example, that the representative consumer can have a CES utility function, as we also demonstrate below.

At the same time as presenting these aggregation results, we will discuss the empirical strategy to estimate discrete choice models due to Berry (1994). In this approach, we suppose that the individual-level data on consumer choices is not available. Rather, we just observe the market-level data on the quantity purchased of each product, as well as their prices and characteristics. The goal is to infer the individual taste parameters from this market-level data on quantities and prices, as well as parameters of marginal cost, so that price-cost margins can be estimated.

# Discrete Choice Model

Suppose there is a population of consumers  $h$ , and we normalize its size to unity. Each consumer must decide which of a discrete number of alternatives  $j = 1, \dots, N$  to purchase, and receives the following utility from consuming one unit of product  $j$ :

$$
V_{j}^{h} = u_{j} + \varepsilon_{j}^{h}, \tag {B1}
$$

where  $u_{j}$  is the utility obtained from product  $j$  by every consumer, while  $\varepsilon_{j}^{h}$  is an additional part of utility obtained by consumer  $h$ . We will treat  $\varepsilon_{j}^{h}$  as a random variable with cumulative density function  $F(\varepsilon)$ , where each consumer obtains a different draw of  $\varepsilon = (\varepsilon_{1},\dots,\varepsilon_{N})$ . Given this draw, the consumer chooses the product with highest utility. The probability that a consumer will choose product  $j$  is:

$$
\begin{array}{l} P_{j} = \operatorname{Pr ob} \left[ V_{j} \geq V_{k}, \text{fo ra ll k =1 , . . . ,N} \right] \\ = \operatorname{Pr ob} \left[ u_{j} + \varepsilon_{j} \geq u_{k} + \varepsilon_{k}, \text{fo ra ll} k = 1, \dots , N \right] \tag {B2} \\ = \operatorname{Pr ob} \left[ \varepsilon_{\mathrm{j}} - \varepsilon_{\mathrm{k}} \geq u_{\mathrm{k}} - u_{\mathrm{j}}, \text{fo ra ll k =1 , . . . ,N} \right]. \\ \end{array}
$$

We can think of (B2) as the probability that any consumer choose alternative  $j$ , or equivalently, as the expected fraction of the population that chooses that alternative. The solution for these choice probabilities depends on the distribution function  $F(\varepsilon)$ , as well as on the specification of utility  $u_j$ . A simplified version of utility used by Berry (1994) is,

$$
u_{j} = y + \beta^{\prime} z_{j} - \alpha p_{j} + \xi_{j}, \quad \alpha > 0. \tag {B3}
$$

Thus, utility is linear in individual income  $y$ , decreasing in the price  $p_j$ , and also depends on the characteristics  $z_j$  of the product. The term  $\xi_j$  is another random element in utility, but unlike  $\varepsilon_j^h$ , it does not vary across consumers. We could think of  $\xi_j$  as some unmeasured characteristics of product  $j$ , which is random across products but not consumers.

In general, computing the choice probabilities from (B2) is computationally intensive since it requires integration over various subsets of the domain of  $\mathrm{F}(\varepsilon)$ . However, McFadden has shown that for a class of distribution functions  $\mathrm{F}(\varepsilon)$  known as the generalized extreme value, the expected demands can be equivalently obtained by simple differentiation:

# Theorem 1 (McFadden, 1978, P. 80; 1981, P. 227)

Let  $\mathrm{H}$  be a nonnegative function defined over  $\mathbf{R}_{+}^{\mathrm{N}}$  that satisfies the following properties:

(i) H is homogeneous of degree one;
(ii)  $\mathrm{H}\to \infty$  as any of its argument approaches infinity;
(iii) The mixed partial derivatives of  $\mathrm{H}$  with respect to  $\mathbf{k}$  variables exist and are continuous, non-negative if  $\mathbf{k}$  is odd and non-positive if  $\mathbf{k}$  is even,  $\mathrm{k} = 1,\dots ,\mathrm{N}$ .

Define the generalized extreme value distribution function,

$$
\mathrm{F} \left(\varepsilon_{1}, \dots , \varepsilon_{\mathrm{N}}\right) \equiv \exp \left[ - \mathrm{H} \left(\mathrm{e}^{- \varepsilon_{1}}, \mathrm{e}^{- \varepsilon_{2}}, \dots , \mathrm{e}^{- \varepsilon_{\mathrm{N}}}\right) \right]. \tag {B4}
$$

Then the expected value of consumer utility (up to a constant) is given by the aggregate utility function,

$$
\mathrm{G} \left(\mathrm{u}_{1}, \dots , \mathrm{u}_{\mathrm{N}}\right) \equiv \ln \mathrm{H} \left(\mathrm{e}^{\mathrm{u}_{1}}, \mathrm{e}^{\mathrm{u}_{2}}, \dots , \mathrm{e}^{\mathrm{u}_{\mathrm{N}}}\right), \tag {B5}
$$

and the choice probabilities  $\mathrm{P_j}$  in (B2) can be obtained as:

$$
\mathrm{P}_{\mathrm{j}} = \partial \mathrm{G} / \partial \mathrm{u}_{\mathrm{j}}. \tag {B6}
$$

To interpret this theorem, consider the linear utility function in (B3). Substituting this into (B5) and using the linear homogeneity of  $\mathbf{H}$ , the aggregate utility function is:

$$
\tilde {G} \left(p_{1}, z_{1}, \dots , p_{N}, z_{N}, y\right) = y + \ln H \left(e^{\beta^{\prime} z_{1} - \alpha p_{1} + \xi_{1}}, \dots , e^{\beta^{\prime} z_{N} - \alpha p_{N} + \xi_{N}}\right). \tag {B5'}
$$

Notice that  $\partial \widetilde{G} / \partial y = 1$ , and consider the case where  $\alpha = 1$ . Then price is inversely related to utility  $(du_j = -dp_j)$ , so the choice probabilities in (B6) can be computed as  $P_j = \partial G / \partial u_j = -(\partial \widetilde{G} / \partial p_j) / (\partial \widetilde{G} / \partial y)$ . Thus, the result that  $P_j = \partial G / \partial u_j$  in (B6) of the theorem can be interpreted as saying that Roy's Identity holds at the aggregate level.

The conditions on H in (i)-(iii) are technical properties needed to ensure that the  $\mathrm{F}(\varepsilon)$  defined in (B4) is indeed a cumulative distribution function. There will be many choices of H satisfying these conditions, and for each, we obtain the aggregate utility function in (B5), whose demands are identical to those aggregated from the individual choice problem in (B1)-(B2). Furthermore, this aggregate utility function can be used to make welfare statements about the individual consumers, since it reflects expected individual utility.

To see the usefulness of this result, we consider the well-known example where the random utility  $\varepsilon_{\mathrm{j}}$  in (B1) from consuming each product are independently distributed across products, with the extreme value distribution.

# Example 1: Logit Demand System

Let us choose the function  $\mathrm{H}$  as linear in its arguments:

$$
\mathrm{H} \left(\mathrm{e}^{- \varepsilon_{1}}, \mathrm{e}^{- \varepsilon_{2}}, \dots , \mathrm{e}^{- \varepsilon_{\mathrm{N}}}\right) = \sum_{\mathrm{j} = 1}^{\mathrm{N}} \mathrm{e}^{- \varepsilon_{\mathrm{j}}} \tag {B7}
$$

Substituting (B7) into (B4), the distribution function is:

$$
F \left(\varepsilon_{1}, \dots , \varepsilon_{N}\right) = \prod_{j = 1}^{N} \exp \left(- e^{- \varepsilon_{j}}\right). \tag {B8}
$$

This cumulative distribution function is therefore the product of N iid "double-exponential" or extreme value distributions, which apply to the random utility terms in (B1). Therefore, the random term in utility is distributed as iid extreme value.2

Computing the choice probabilities as in (B6) using (B7) and (B3), we obtain:

$$
P_{j} = \frac{e^{u_{j}}}{\left[ \sum_{k = 1}^{N} e^{u_{k}} \right]} = \frac{e^{\beta^{\prime} z_{j} - \alpha p_{j} + \xi_{j}}}{\left[ \sum_{k = 1}^{N} e^{\beta^{\prime} z_{k} - \alpha p_{k} + \xi_{k}} \right]}, \tag {B9}
$$

which are the choice probabilities under the logit system.

Berry (1994) discusses how estimates of  $\alpha$  and  $\beta$  can be obtained even if we do not have data on the purchases by each individual, but just observe the quantity-share  $s_j$  of each product in demand, as well as their prices and characteristics. Then the probabilities in (B9) would be measured by these quantity-shares  $s_j$ . Suppose in addition there is some outside option  $j = 0$ , which gives utility normalized to zero,  $u_0 = 0$ . Then setting  $s_j = P_j$ , and taking logs of the ratio of (B9) to  $s_0$ , we obtain:

$$
\ln \mathrm{s}_{\mathrm{j}} - \ln \mathrm{s}_{0} = \beta^{\prime} \mathrm{z}_{\mathrm{j}} - \alpha \mathrm{p}_{\mathrm{j}} + \xi_{\mathrm{j}}. \tag {B10}
$$

In addition, we follow Berry to solve for the optimal prices of the firm, where we assume for simplicity that each firm produces only one product. Denoting the marginal costs of producing good  $j$  by  $\mathrm{g_j(z_j)}$ , and ignoring fixed costs, the profits from producing model  $j$  are,

$$
\pi_{\mathrm{j}} = \left[ p_{\mathrm{j}} - g_{\mathrm{j}} \left(z_{\mathrm{j}}\right) \right] s_{\mathrm{j}}, \tag {B11}
$$

Maximizing (B11) over the choice of  $\mathfrak{p}_{\mathrm{j}}$ , treating the prices of all other products as fixed, we obtain:

$$
\mathrm{p}_{\mathrm{j}} = \mathrm{g}_{\mathrm{j}} (\mathrm{z}_{\mathrm{j}}) - \mathrm{s}_{\mathrm{j}} / (\partial \mathrm{s}_{\mathrm{j}} / \partial \mathrm{p}_{\mathrm{j}}) = \mathrm{g}_{\mathrm{j}} (\mathrm{z}_{\mathrm{j}}) - (\partial \ln \mathrm{s}_{\mathrm{j}} / \partial \mathrm{p}_{\mathrm{j}})^{- 1}. \tag {B12}
$$

For the special case of the logit system (B9) with  $s_j = P_j$  denoting the quantity-shares, we see that  $\partial \ln s_j / \partial p_j = -\alpha (1 - s_j)$ . If we also specify marginal costs as  $g_j(z_j) = \gamma' z_j + \omega_j$ , where  $\omega_j$  is a random error, then from (B12) the optimal prices are:

$$
p_{j} = \gamma^{\prime} z_{j} + \frac{1}{\alpha \left(1 - s_{j}\right)} + \omega_{j}, \tag {B13}
$$

which can be estimated jointly with (B10). It is apparent, though, that the random error  $\xi_{\mathrm{j}}$  influence the market shares in (B10), and therefore from (B13) will be correlated with prices  $\mathfrak{p}_{\mathrm{j}}$ . Accordingly, the joint estimation of (B10) and (B13) should be done with instrumental

variables.3

The problem with this simple logit example is that the demand elasticities obtained are implausible. From the market shares  $s_j = P_j$  in (B9) we readily see that  $s_j / s_k$  is independent of the price or characteristics of any third product  $i$ . This property is known as the "independence of irrelevant alternatives" in the discrete choice literature, and it implies that the cross-elasticity of demand between products  $j$  and  $k$  and the third product  $i$  must be equal. To improve on this, we consider the nested logit system.

# Example 2: Nested Logit Demand System

Now suppose that the consumers have a choice over two levels of the differentiated product. First, an individual decides whether to purchase a product in each of  $\mathrm{g} = 1,\dots ,\mathrm{G}$  groups (for example, small cars and big cars), and second, the individual decides which of the products in that group to purchase. Suppose that the products available in each group  $\mathbf{g}$  are denoted by the set  $\mathrm{J_g}\subset \{1,\ldots ,\mathrm{N}\}$ , while  $\mathrm{J_0}$  denotes the outside option. Utility from consumer  $\mathrm{h}$  is still given by (B1), where the errors  $\varepsilon_{\mathrm{j}}$  are distributed as extreme value but are not independent. Instead, we suppose that if consumer  $\mathrm{h}$  has a high value of  $\varepsilon_{\mathrm{j}}^{\mathrm{h}}$  for some product  $\mathrm{j}\in \mathrm{J_g}$ , then that person will also tend to have high values of  $\varepsilon_{\mathrm{k}}^{\mathrm{h}}$  for all other products  $\mathrm{k}\in \mathrm{J_g}$ , so  $\varepsilon_{\mathrm{j}}$  is positively correlated across products in each group. For example, an individual who has a preference from some small car also tends to like other small cars.

To achieve this correlation between the random errors in (B1), McFadden (1981, p. 228) chooses the function  $\mathrm{H}$  as,

$$
\mathrm{H} \left(\mathrm{e}^{- \varepsilon_{1}}, \dots , \mathrm{e}^{- \varepsilon_{\mathrm{N}}}\right) = \sum_{\mathrm{g} = 0}^{\mathrm{G}} \left[ \sum_{\mathrm{j} \in \mathrm{J}_{\mathrm{g}}} \mathrm{e}^{- \varepsilon_{\mathrm{j}} / \left(1 - \rho_{\mathrm{g}}\right)} \right]^{\left(1 - \rho_{\mathrm{g}}\right)}. \tag {B14}
$$

To satisfy property (iii) of Theorem 1, we need to specify that  $0 \leq \rho_{\mathrm{g}} < 1$ . Using this choice of H, we obtain a distribution function  $\mathrm{F}(\varepsilon)$  from (B4),

$$
\mathrm{F} \left(\varepsilon_{1}, \dots , \varepsilon_{\mathrm{N}}\right) = \exp \left(\sum_{\mathrm{g} = 0}^{\mathrm{G}} \left[ \sum_{\mathrm{j} \in \mathrm{J}_{\mathrm{g}}} - \mathrm{e}^{- \varepsilon_{\mathrm{j}} / \left(1 - \rho_{\mathrm{g}}\right)} \right]^{\left(1 - \rho_{\mathrm{g}}\right)}\right), \tag {B15}
$$

where  $\rho_{\mathrm{g}}$  roughly measures the correlation between random terms  $\varepsilon_{\mathrm{j}}$  within a group. Computing the choice probabilities as in (B6) using (B14), we obtain:

$$
P_{j} = \frac{e^{u_{j} / \left(1 - \rho_{g}\right)}}{D_{g}} \frac{D_{g}^{\left(1 - \rho_{g}\right)}}{\left[ \sum_{g = 0}^{G} D_{g}^{\left(1 - \rho_{g}\right)} \right]}, \quad f o r j \in J_{g}, \tag {B16}
$$

where the term  $\mathrm{D_g} \equiv \sum_{\mathrm{k} \in \mathrm{J_g}} \mathrm{e}^{\mathrm{u_k} / (1 - \rho_g)}$  appearing in (B16) is called an "inclusive value", since it summarizes the utility obtained from all products in the group  $\mathrm{g}$ .

Berry (1994, p. 252) motivates this nested logit case somewhat differently. He re-writes the random errors  $\varepsilon_{j}^{h}$  as,

$$
\varepsilon_{j}^{h} = \zeta_{g}^{h} + \left(1 - \rho_{g}\right) e_{j}^{h}, \quad \text{fo r} j \in J_{g}, \tag {B17}
$$

where the errors  $\mathrm{e}_{\mathrm{j}}^{\mathrm{h}}$  are iid extreme value. The random variable  $\zeta_{\mathrm{g}}^{\mathrm{h}}$  in (B17) is common to all products within group  $\mathbf{g}$ , and therefore induces a correlation between the random utilities for those products. Cardell (1997) shows that there exists a distribution for  $\zeta_{\mathrm{g}}^{\mathrm{h}}$  (depending on  $\rho_{\mathrm{g}}$ ) such that when  $\mathrm{e}_{\mathrm{j}}^{\mathrm{h}}$  are iid extreme value, then  $\varepsilon_{\mathrm{j}}^{\mathrm{h}}$  are also distributed extreme value but are not independent. Notice that as the parameter  $\rho_{\mathrm{g}}$  approaches unity then  $\varepsilon_{\mathrm{j}}^{\mathrm{h}}$  are perfectly correlated within the group  $\mathbf{g}$  (since they equal  $\zeta_{\mathrm{g}}^{\mathrm{h}}$ ), whereas when  $\rho_{\mathrm{g}}$  approaches zero (in which case  $\zeta_{\mathrm{g}}^{\mathrm{h}}$  also approaches zero) then  $\varepsilon_{\mathrm{j}}^{\mathrm{h}}$  become independent. Using the errors in (B17) gives the same choice probabilities as shown in (B16).

Using the nested logit choice probabilities in (B16), we can re-derive the estimating equations for market share and optimal prices, as in Berry (1994, pp. 252-253). The first term on the right of (B16) is the probability that an individual will choose product  $j \in J_g$  conditional on having already chosen the group  $g$ . Let us denote this conditional probability by  $s_{j|g}$ . The second term on the right of (B16) is the probability of choosing any product from group  $g$ , which we write as  $\overline{s}_g$ . So replacing  $P_j$  in (B16) by the market shares  $s_j$ , we write this choice probability as  $s_j = s_{j|g}\overline{s}_g$ . In addition, we suppose that the outside good has  $u_0 = 0$  and inclusive value  $D_0 = 1$ , so that from (B16),  $s_0 = P_0 = \left[\sum_{g=0}^{G}D_g^{(1 - \rho_g)}\right]^{-1}$ . Taking logs of the ratio  $s_j / s_0 = s_{j|g}\overline{s}_g / s_0$  and using the linear utility  $u_j$  in (B3), we therefore have,

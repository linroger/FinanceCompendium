---
title: "Technical Note 09 - Generalized Tree Building Procedure for Trinomial Trees"
tags:
  - trinomial_trees
  - tree_construction
  - moment_matching
  - numerical_methods
  - option_pricing
  - generalized_procedure
parent_directory: Options Futures & Forwards
key_concepts:
  - trinomial tree construction
  - generalized tree building procedure
  - moment matching in trees
  - variable standard deviation and drift
  - node probability calculations
cssclasses: academia
---

# Technical Note 09 - Generalized Tree Building Procedure for Trinomial Trees

**Author:** John Hull

## Generalized Tree Building Procedure

This note describes a general procedure for constructing a trinomial tree for a variable, $x$, in the situation where

1. There are nodes at times $t_1, t_2, \ldots, t_N$ where $\Delta_i = t_i - t_{i-1}$ and $t_0 = 0$.
2. The standard deviation of $x$ between time $t_{i-1}$ and $t_i$ is $s_i$.
3. The drift between time $t_{i-1}$ and $t_i$ is $m_i$.

Suppose that $x_0$ is the initial value of $x$. At time $t_i$ the nodes are chosen to be at $x_0 + jq_i$ where $j$ is a positive or negative integer and $q_i = s_i\sqrt{3\Delta_i}$. We will refer to the node where $x = x_0 + jq_i$ at time $t_i$ as the $(i,j)$ node.

If we are at the $(i,j)$ node, the expected value of $x$ at time $t_{i+1}$ is $x_0 + jq_i + m_{i+1} \Delta_{i+1}$. Let the node at time $t_{i+1}$ that is closest to this expected value be the node $(i+1,k)$. The tree is constructed so that we branch from node $(i,j)$ to one of the three nodes $(i+1,k-1)$, $(i+1,k)$ and $(i+1,k+1)$.

We choose the probabilities on the branches to match the first and second moment. Define $p_u$, $p_m$, and $p_d$ as the probabilities on the upper middle and lower branches. It follows that

$$
p_u + p_m + p_d = 1
$$

$$
k q_{i+1} + (p_u - p_d) q_{i+1} = j q_i + M
$$

$$
k^2 q_{i+1}^2 + 2k(p_u - p_d) q_{i+1}^2 + (p_u + p_d) q_{i+1}^2 = V + (j q_i + M)^2
$$

where $M = m_{i+1}\Delta_{i+1}$ and $V = s_{i+1}^2\Delta_{i+1}$.

The solution to these equations is

$$
p_u = \frac{V}{2 q_{i+1}^2} + \frac{\alpha^2 + \alpha}{2}
$$

$$
p_d = \frac{V}{2 q_{i+1}^2} + \frac{\alpha^2 - \alpha}{2}
$$

$$
p_m = 1 - \frac{V}{q_{i+1}^2} - \alpha^2
$$

where

$$
\alpha = \frac{j q_i + M - k q_{i+1}}{q_{i+1}}
$$
---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: "Technical Note No. 9*  "
linter-yaml-title-alias: "Technical Note No. 9*  "
---

# Technical Note No. 9*  

Options, Futures, and Other Derivatives  
John Hull

# Generalized Tree Building Procedure

This note describes a general procedure for constructing a trinomial tree for a variable,  $x$ , in the situation where

1. There are nodes at times  $t_1, t_2, \ldots, t_N$  where  $\Delta_i = t_i - t_{i-1}$  and  $t_0 = 0$ .  
2. The standard deviation of  $x$  between time  $t_{i-1}$  and  $t_i$  is  $s_i$  
3. The drift between time  $t_{i-1}$  and  $t_i$  is  $m_i$

Suppose that  $x_0$  is the initial value of  $x$ . At time  $t_i$  the nodes are chosen to be at  $x_0 + jq_i$  where  $j$  is a positive or negative integer and  $q_i = s_i\sqrt{3\Delta_i}$ . We will refer to the node where  $x = x_0 + jq_i$  at time  $t_i$  as the  $(i,j)$  node.

If we are at the  $(i,j)$  node, the expected value of  $x$  at time  $t_{i+1}$  is  $x_0 + jq_i + m_{i+1} \Delta_{i+1}$ . Let the node at time  $t_{i+1}$  that is closest to this expected value be the node  $(i+1,k)$ . The tree is constructed so that we branch from node  $(i,j)$  to one of the three nodes  $(i+1,k-1)$ ,  $(i+1,k)$  and  $(i+1,k+1)$ .

We choose the probabilities on the branches to match the first and second moment. Define  $p_u$ ,  $p_m$ , and  $p_d$  as the probabilities on the upper middle and lower branches. It follows that

$$
p _ {u} + p _ {m} + p _ {d} = 1
$$

$$
k q _ {i + 1} + \left(p _ {u} - p _ {d}\right) q _ {i + 1} = j q _ {i} + M
$$

$$
k ^ {2} q _ {i + 1} ^ {2} + 2 k (p _ {u} - p _ {d}) q _ {i + 1} ^ {2} + (p _ {u} + p _ {d}) q _ {i + 1} ^ {2} = V + (j q _ {i} + M) ^ {2}
$$

where  $M = m_{i + 1}\Delta_{i + 1}$  and  $V = s_{i + 1}^{2}\Delta_{i + 1}$

The solution to these equations is

$$
p _ {u} = \frac {V}{2 q _ {i + 1} ^ {2}} + \frac {\alpha^ {2} + \alpha}{2}
$$

$$
p _ {d} = \frac {V}{2 q _ {i + 1} ^ {2}} + \frac {\alpha^ {2} - \alpha}{2}
$$

$$
p _ {m} = 1 - \frac {V}{q _ {i + 1} ^ {2}} - \alpha^ {2}
$$

where

$$
\alpha = \frac {j q _ {i} + M - k q _ {i + 1}}{q _ {i + 1}}
$$
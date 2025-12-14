---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Doob Decomposition
linter-yaml-title-alias: Doob Decomposition
---

# Doob Decomposition

Martingale processes and deterministic processes are normally much easier to analyze and manipulate than other stochastic processes containing both drift and random elements. One major reason for this is that working with martingales free us from having to calculate unknown risk-adjusted discount rates and risk premiums in the valuation process. Two types of procedures to convert drift processes to martingales involve either decoupling the drift from the random process and its associated martingale or changing the probability measure. Doob's Decomposition Theorem states that every discrete suband super-martingale  $S_{t}$  can be decomposed into the sum of a martingale  $M_{t}$  and a predictable drift process  $\mu_{t}$ ; that is,  $S_{t} = M_{t} + \mu_{t}$ .

We start by demonstrating the construction extending from time  $t-1$  to  $t$ . Express  $S_{t} = S_{t} - S_{t-1} + S_{t-1}$ . The drift in the process from time  $t-1$  to  $t$  equals  $E[S_{t} / \mathcal{F}_{t-1}] - S_{t-1}$ . The remaining change in the process from time  $t-1$  to  $t$  will be the martingale contribution:  $(S_{t} - S_{t-1}) - (E[S_{t} / \mathcal{F}_{t-1}] - S_{t-1}) = S_{t} - E[S_{t} / \mathcal{F}_{t-1}]$ . Observe that the martingale contribution is a measure of the volatility (variation) of the security from its mean at time  $t$  conditioned on its price at time  $t-1$ . We have:

$$
S _ {t} = \left(S _ {t} - E \left[ S _ {t} \mid \mathcal {F} _ {\mathrm {t} - 1} \right]\right) + \left(E \left[ S _ {t} \mid \mathcal {F} _ {\mathrm {t} - 1} \right] - S _ {t - 1}\right) + S _ {t - 1}.
$$

martingale term drift term

Next, repeat the same decomposition on the term  $S_{t-1}$  extending from time  $t-2$  to  $t-1$ . Continue this procedure back to time 0. This process results in:

$$
S _ {t} = \sum_ {i = 1} ^ {t} (S _ {i} - E [ S _ {i} | \mathcal {F} _ {\mathrm {i - 1}} ]) + \sum_ {i = 1} ^ {t} (E [ S _ {i} | \mathcal {F} _ {\mathrm {i - 1}} ] - S _ {i - 1}) + S _ {0}.
$$

Define  $M_{\mathrm{t}}$  and  $\mu_{\mathrm{t}}$  as follows:

$$
M _ {t} = \sum_ {i = 1} ^ {t} (S _ {i} - E [ S _ {i} | \mathcal {F} _ {i - 1} ]) + S _ {0}
$$

and

$$
\mu_ {t} = \sum_ {i = 1} ^ {t} (E [ S _ {i} | \mathcal {F} _ {i - 1} ] - S _ {i - 1}).
$$

Then  $S_{t} = M_{t} + \mu_{t}$ . It is clear that  $\mu_{t}$  is a predictable process in the sense that it is determined at time  $t - 1$  and is measurable with respect to the filtration  $\mathcal{F}_{t-1}$ . It is easy to show that  $M_{t}$  is a martingale. First note that

$$
M _ {t - 1} = \sum_ {i = 1} ^ {t - 1} (S _ {i} - E [ S _ {i} | \mathcal {F} _ {i - 1} ]) + S _ {0}.
$$

It follows that  $M_{t} = S_{t} - E[S_{t} / \mathcal{F}_{t - 1}] + M_{t - 1}$ . Next, we calculate the conditional expectation:

$$
\begin{array}{l} E \big [ M _ {t} | \mathcal {F} _ {t - 1} \big ] = E \big [ S _ {t} - E \big [ S _ {t} | \mathcal {F} _ {t - 1} \big ] + M _ {t - 1} | \mathcal {F} _ {t - 1} \big ] \\ = E \left[ S _ {t} | \mathcal {F} _ {t - 1} \right] - E \left[ S _ {t} | \mathcal {F} _ {t - 1} \right] + M _ {t - 1} = M _ {t - 1} \\ \end{array}
$$

which shows that  $M_{t}$  is a martingale.

The Doob-Meyer decomposition applies similar principles to continuous-time processes, decomposing each such a process into a martingale and a predictable drift process. Since Doob-Meyer decompositions are used only infrequently in finance, we will not discuss them here.

# Illustration: Doob Decomposition

Consider a binomial submartingale process (binomial process with positive drift)  $S_{t}$  in which, during any interval  $t-1$  to  $t$ , the value of  $S$  increases by 1 with probability  $p$  and decreases by 1 with probability  $(1-p)$ , with  $.5 < p < 1$ . Also, assume that the change  $S_{t} - S_{t-1}$  at time  $t$  is independent of the change  $S_{s} - S_{s-1}$  at any time  $t \neq s$ . To find the Doob Decomposition for this process, it is useful to express the change  $Z_{i} = S_{i} - S_{i-1}$ . Thus, the random variables  $Z_{1}, Z_{2}, \ldots, Z_{t}$  are independent of one another. We can express:

$$
\begin{array}{l} S _ {t} = (S _ {t} - S _ {t - 1}) + (S _ {t - 1} - S _ {t - 2}) + \dots + (S _ {1} - S _ {0}) + S _ {0} \\ \sum_ {i = 1} ^ {t} (S _ {i} - S _ {i - 1}) + S _ {0} = \sum_ {i = 1} ^ {t} Z _ {i} + S _ {0}. \\ \end{array}
$$

Since  $Z_{i} = S_{i} - S_{i - 1}$ , then  $S_{i} = Z_{i} + S_{i - 1}$ . Thus,

$$
E [ S _ {i} | \mathcal {F} _ {i - 1} ] = E [ Z _ {i} | \mathcal {F} _ {i - 1} ] + E [ S _ {i - 1} | \mathcal {F} _ {i - 1} ] = 1 (p) + (- 1) (1 - p) + S _ {i - 1} = 2 p - 1 + S _ {i - 1}.
$$

The martingale contribution to the process from time  $i - 1$  to  $i$  is:

$$
S _ {i} - E [ S _ {i} | \mathcal {F} _ {i - 1} ] = Z _ {i} + S _ {i - 1} - (2 p - 1 + S _ {i - 1}) = Z _ {i} - (2 p - 1).
$$

The predictable contribution from time  $i - 1$  to  $i$  is:

$$
E [ S _ {i} | \mathcal {F} _ {i - 1} ] - S _ {i - 1} = 2 p - 1 + S _ {i - 1} - S _ {i - 1} = 2 p - 1.
$$

Thus, the martingale  $M_{t}$  will be

$$
M _ {t} = \sum_ {i = 1} ^ {t} [ Z _ {i} - (2 p - 1) ] + S _ {0} = \sum_ {i = 1} ^ {t} Z _ {i} - t (2 p - 1) + S _ {0}.
$$

The predictable process  $\mu_t$  will be

$$
\mu_ {t} = \sum_ {i = 1} ^ {t} (2 p - 1) = t (2 p - 1).
$$

Observe that  $\mu_t$  is exactly the drift upward of the security. Since the drift upward after each unit of time is  $2p - 1$ , the cumulative net drift by time  $t$  will be  $t(2p - 1)$ . Also, observe that the change in the process from time  $t$  to  $t + 1$ ,  $\Delta S_t = S_{t + 1} - S_t$ , satisfies  $\Delta S_t = \Delta M_t + \Delta \mu_t$ , where  $\Delta M_t = Z_t - (2p - 1)$  and  $\Delta \mu_t = 2p - 1$ . Thus,  $\Delta M_t$  is the volatility of the process over a unit change in time, and  $\Delta \mu_t = 2p - 1$  is the drift of the process per unit change in time. We will study continuous processes for securities with the same perspective. For example, we will express the change in the value of a security over a time increment  $dt$  from  $t$  to  $t + dt$  in the form  $dS_t = \sigma_t dZ_t + \mu_t dt$ , where  $Z_t$  is standard Brownian motion. Analogous to the Doob Decomposition, the term  $\sigma_t dZ_t$  will be the volatility factor and  $\mu_t dt$  will be the drift factor.

# Verification of the Itô Isometry

If  $f_{\mathrm{t}}$  is a square integrable stochastic process, then

$$
E \left[ \left(\int_ {0} ^ {T} f _ {t} d Z _ {t}\right) ^ {2} \right] = \int_ {0} ^ {T} E [ f _ {t} ^ {2} ] d t
$$

Proof: First we have

$$
E \left[ \left(\int_ {0} ^ {T} f _ {t} d Z _ {t}\right) ^ {2} \right] = E \left[ \left(\int_ {0} ^ {T} f _ {t} d Z _ {t}\right) ^ {2} | \mathcal {F} _ {0} \right]
$$

since every stochastic process is known at time 0. Next, we approximate the integral by a sum:

$$
\int_ {0} ^ {T} f _ {t} d Z _ {t} \approx \sum_ {j = 0} ^ {n - 1} f _ {t _ {j}} \Delta Z _ {t _ {j}}
$$

where  $\Delta Z_{t_j} = Z_{t_{j + 1}} - Z_{t_j}$ . We calculate the required expectation:

$$
\begin{array}{l} E \left[ \left(\int_ {0} ^ {T} f _ {t} d Z _ {t}\right) ^ {2} | \mathcal {F} _ {0} \right] \approx E \left[ \left(\sum_ {j = 0} ^ {n - 1} f _ {t _ {j}} \Delta Z _ {t _ {j}}\right) \left(\sum_ {k = 0} ^ {n - 1} f _ {t _ {k}} \Delta Z _ {t _ {k}}\right) | \mathcal {F} _ {0} \right] \\ = \sum_ {j <   k} E [ f _ {t _ {j}} f _ {t _ {k}} \Delta Z _ {t _ {j}} \Delta Z _ {t _ {k}} | \mathcal {F} _ {0} ] + \sum_ {j > k} E [ f _ {t _ {j}} f _ {t _ {k}} \Delta Z _ {t _ {j}} \Delta Z _ {t _ {k}} | \mathcal {F} _ {0} ] + \sum_ {j = 0} ^ {n - 1} E [ f _ {t _ {j}} ^ {2} (\Delta Z _ {t _ {j}}) ^ {2} | \mathcal {F} _ {0} ]. \\ \end{array}
$$

The last line above follows from the distributive property for multiplication and addition along with the property that the expectation of a sum is the sum of the expectations.

By the Tower Property (See Section 5.5), we have

$$
E [ f _ {t _ {j}} f _ {t _ {k}} \Delta Z _ {t _ {j}} \Delta Z _ {t _ {k}} | \mathcal {F} _ {0} ] = E [ E [ f _ {t _ {j}} f _ {t _ {k}} \Delta Z _ {t _ {j}} \Delta Z _ {t _ {k}} | \mathcal {F} _ {t _ {j}} ] | \mathcal {F} _ {0} ].
$$

If we compute an expectation conditioned on  $\mathcal{F}_{t_j}$  and  $j > k$ , then  $f_{t_j}f_{t_k}\Delta Z_{t_k}$  is determined since all information is known up to time  $t_j$ . Only  $\Delta Z_{t_j} = Z_{t_{j+1}} - Z_{t_j}$  is a non-deterministic random variable. This implies that

$$
E \left[ f _ {t _ {j}} f _ {t _ {k}} \Delta Z _ {t _ {j}} \Delta Z _ {t _ {k}} | \mathcal {F} _ {t _ {j}} \right] = f _ {t _ {j}} f _ {t _ {k}} \Delta Z _ {t _ {k}} E \left[ \Delta Z _ {t _ {j}} | \mathcal {F} _ {t _ {j}} \right] = f _ {t _ {j}} f _ {t _ {k}} \times 0 = 0
$$

where we also used the fact that the expectation of  $\Delta Z_{t_j} = Z_{t_{j + 1}} - Z_{t_j}$  at time  $t_j$  equals 0. Now, we see that

$$
E \left[ f _ {t _ {j}} f _ {t _ {k}} \Delta Z _ {t _ {j}} \Delta Z _ {t _ {k}} \Big | \mathcal {F} _ {0} \right] = 0
$$

whenever  $j > k$ . By the same argument, we have

$$
E [ f _ {t _ {j}} f _ {t _ {k}} \Delta Z _ {t _ {j}} \Delta Z _ {t _ {k}} | \mathcal {F} _ {0} ] = 0
$$

whenever  $j < k$ . Putting the results of these two equations into the last line of our integral above yields:

$$
\begin{array}{l} E \left[ \left(\int_ {0} ^ {T} f _ {t} d Z _ {t}\right) ^ {2} | \mathcal {F} _ {0} \right] \approx \\ = \sum_ {j <   k} E [ f _ {t _ {j}} f _ {t _ {k}} \Delta Z _ {t _ {j}} \Delta Z _ {t _ {k}} | \mathcal {F} _ {0} ] + \sum_ {j > k} E [ f _ {t _ {j}} f _ {t _ {k}} \Delta Z _ {t _ {j}} \Delta Z _ {t _ {k}} | \mathcal {F} _ {0} ] + \sum_ {j = 0} ^ {n - 1} E [ f _ {t _ {j}} ^ {2} (\Delta Z _ {t _ {j}}) ^ {2} | \mathcal {F} _ {0} ] \\ = 0 + 0 + \sum_ {j = 0} ^ {n - 1} E \left[ f _ {t _ {j}} ^ {2} \left(\Delta Z _ {t _ {j}}\right) ^ {2} | \mathcal {F} _ {0} \right]. \\ \end{array}
$$

In Section 6.4.2.1, we showed that  $(\Delta Z_{t_j})^2 \approx \Delta t$ . The Itô Isometry now follows since:

$$
\sum_ {j = 0} ^ {n - 1} E [ f _ {t _ {j}} ^ {2} (\Delta Z _ {t _ {j}}) ^ {2} | \mathcal {F} _ {0} ] \approx \sum_ {j = 0} ^ {n - 1} E [ f _ {t _ {j}} ^ {2} \Delta t | \mathcal {F} _ {0} ] = \sum_ {j = 0} ^ {n - 1} E [ f _ {t _ {j}} ^ {2} ] \Delta t \approx \int_ {0} ^ {T} E [ f _ {t} ^ {2} ] d t.
$$

Note that the second to last expression in the above equation is simply a Riemann sum for approximating the integral of the real-valued function  $E[f_t^2]$ , which is the last expression. We point out that in the limit as  $n \to \infty$ , the approximations become equalities.
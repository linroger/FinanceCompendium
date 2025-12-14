---
aliases:
  - Valuation of a Variance Swap
tags:
key_concepts:
parent_directory: Technical Notes from Options, Futures, and Other Derivatives
cssclasses: academia
title: Technical Note No. 22 - Valuation of a Variance Swap
linter-yaml-title-alias: Technical Note No. 22 - Valuation of a Variance Swap
---

# Technical Note No. 22*  

Options, Futures, and Other Derivatives  
John Hull

# Valuation of a Variance Swap

This note proves the result in the text for the valuation of a variance swap. Suppose that the stock price follows process

$$
\frac {d S}{S} = (r - q) d t + \sigma d z
$$

in a risk-neutral world where  $\sigma$  is itself stochastic. From Ito's lemma

$$
d \ln S = (r - q - \sigma^ {2} / 2) d t + \sigma d z
$$

By subtracting these two equations we obtain

$$
{\frac {\sigma^ {2}}{2}} d t = {\frac {d S}{S}} - d \ln S
$$

Integrating between time 0 and time  $T$ , the realized average variance rate,  $\overline{V}$ , between time 0 and time  $T$  is given by

$$
\frac {1}{2} \overline {{V}} T = \int_ {0} ^ {T} \frac {d S}{S} - \ln \frac {S _ {T}}{S _ {0}}
$$

or

$$
\overline {{V}} = \frac {2}{T} \int_ {0} ^ {T} \frac {d S}{S} - \frac {2}{T} \ln \frac {S _ {T}}{S _ {0}} \tag {1}
$$

Taking expectations in a risk-neutral world

$$
\hat {E} (\overline {{V}}) = \frac {2}{T} (r - q) T - \frac {2}{T} \hat {E} \left(\ln \frac {S _ {T}}{S _ {0}}\right)
$$

or

$$
\hat {E} (\overline {{V}}) = \frac {2}{T} \ln \frac {F _ {0}}{S _ {0}} - \frac {2}{T} \hat {E} \left(\ln \frac {S _ {T}}{S _ {0}}\right) \tag {2}
$$

where  $F_0$  is the forward price of the asset for a contract maturing at time  $T$ .

Consider

$$
\int_ {K = 0} ^ {S ^ {*}} \frac {1}{K ^ {2}} \max (K - S _ {T}, 0) d K
$$

for some value  $S^*$  of  $S$ . When  $S^* < S_T$  this integral is zero. When  $S^* > S_T$  it is

$$
\int_ {K = S _ {T}} ^ {S ^ {*}} \frac {1}{K ^ {2}} (K - S _ {T}) d K = \ln \frac {S ^ {*}}{S _ {T}} + \frac {S _ {T}}{S ^ {*}} - 1
$$

Consider next

$$
\int_ {K = S ^ {*}} ^ {\infty} \frac {1}{K ^ {2}} \max (S _ {T} - K, 0) d K
$$

When  $S^{*} > S_{T}$  this is zero. When  $S^{*} < S_{T}$  it is

$$
\int_ {K = S ^ {*}} ^ {S _ {T}} \frac {1}{K ^ {2}} (S _ {T} - K) d K = \ln \frac {S ^ {*}}{S _ {T}} + \frac {S _ {T}}{S ^ {*}} - 1
$$

From these results it follows that

$$
\int_ {K = 0} ^ {S ^ {*}} \frac {1}{K ^ {2}} \max (K - S _ {T}, 0) d K + \int_ {K = S ^ {*}} ^ {\infty} \frac {1}{K ^ {2}} \max (S _ {T} - K, 0) d K = \ln \frac {S ^ {*}}{S _ {T}} + \frac {S _ {T}}{S ^ {*}} - 1
$$

for all values of  $S^{*}$  so that

$$
\ln \frac {S _ {T}}{S ^ {*}} = \frac {S _ {T}}{S ^ {*}} - 1 - \int_ {K = 0} ^ {S ^ {*}} \frac {1}{K ^ {2}} \max (K - S _ {T}, 0) d K - \int_ {K = S ^ {*}} ^ {\infty} \frac {1}{K ^ {2}} \max (S _ {T} - K, 0) d K \quad (3)
$$

This shows that a variable that pays off  $\ln S_T$  can be replicated using options. This result can be used in conjunction with equation (1) to provide a replicating portfolio for  $\overline{V}$ . Taking expectations in a risk-neutral world in equation (3)

$$
\hat {E} \left(\ln \frac {S _ {T}}{S ^ {*}}\right) = \frac {F _ {0}}{S ^ {*}} - 1 - \int_ {K = 0} ^ {S ^ {*}} \frac {1}{K ^ {2}} e ^ {R T} p (K) d K - \int_ {K = S ^ {*}} ^ {\infty} \frac {1}{K ^ {2}} e ^ {R T} c (K) d K \tag {4}
$$

where  $c(K)$  and  $p(K)$  are the prices of European call and put options with strike price  $K$  and maturity  $T$  and  $R$  is the risk-free interest rate for a maturity of  $T$ .

Combining equations (2) and (4) and noting that

$$
\hat {E} \left(\ln {\frac {S _ {T}}{S _ {0}}}\right) = \ln {\frac {S ^ {*}}{S _ {0}}} + \hat {E} \left(\ln {\frac {S _ {T}}{S ^ {*}}}\right)
$$

$$
\begin{array}{l} \hat {E} (\overline {{V}}) = \frac {2}{T} \ln \frac {F _ {0}}{S _ {0}} - \frac {2}{T} \ln \frac {S ^ {*}}{S _ {0}} \\ - \frac {2}{T} \left[ \frac {F _ {0}}{S ^ {*}} - 1 \right] + \frac {2}{T} \left[ \int_ {K = 0} ^ {S ^ {*}} \frac {1}{K ^ {2}} e ^ {R T} p (K) d K + \int_ {K = S ^ {*}} ^ {\infty} \frac {1}{K ^ {2}} e ^ {R T} c (K) d K \right] \\ \end{array}
$$

which reduces to

$$
\hat {E} (\overline {{V}}) = \frac {2}{T} \ln \frac {F _ {0}}{S ^ {*}} - \frac {2}{T} \left[ \frac {F _ {0}}{S ^ {*}} - 1 \right] + \frac {2}{T} \left[ \int_ {K = 0} ^ {S ^ {*}} \frac {1}{K ^ {2}} e ^ {R T} p (K) d K + \int_ {K = S ^ {*}} ^ {\infty} \frac {1}{K ^ {2}} e ^ {R T} c (K) d K \right]
$$

This is the result in the text.
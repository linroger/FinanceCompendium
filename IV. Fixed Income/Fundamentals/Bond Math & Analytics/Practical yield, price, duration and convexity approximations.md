---
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Practical yield, price, duration and convexity approximations
---

# Practical yield, price, duration and convexity approximations
# Abstract

Practical techniques for approximating yield given the price and price given the yield are described. Duration and convexity estimations given prices and yields at three observation points are presented. Such approximations are useful when computing prices and yields from their values at nearby points and generating additional data for scenario analysis.

# 1 Price approximation given the yield and yield approximation given the price.

The duration-convexity (second order) approximation of price given the yield of a security is well-known[2]. The inverse relationship, i.e., the approximation or yield given the price, is found in text books less often, however, it can be just as useful for practical purposes.

Suppose that we know the yield of a security or portfolio of securities  $y_0$  corresponding to the price  $p_0$ . By Taylor expansion [1], (approximated) price  $p$  corresponding to (known) yield  $y$  can be computed as

$$ p (y) \approx p _ {0} + \frac {d p (y)}{d y} \Bigg | _ {y = y _ {0}} (y - y _ {0}) + \frac {1}{2} \frac {d ^ {2} p (y)}{d y ^ {2}} \Bigg | _ {y = y _ {0}} (y - y _ {0}) ^ {2}, \tag {1}
$$ or, in terms of duration and convexity,


$$ p (y) \approx p _ {0} \left[ 1 - D \left(y _ {0}\right) \left(y - y _ {0}\right) + \frac {1}{2} C \left(y _ {0}\right) \left(y - y _ {0}\right) ^ {2} \right], \tag {2}
$$

$$
D \left(y _ {0}\right) = - \frac {1}{p _ {0}} \frac {d p (y)}{d y} \Bigg | _ {y = y _ {0}}, \tag {3}
$$

$$
C \left(y _ {0}\right) = \left. \frac {1}{p _ {0}} \frac {d ^ {2} p (y)}{d y ^ {2}} \right| _ {y = y _ {0}}, \tag {4}
$$ where:


$D(y_{0})$  duration at  $y_{0}$  , provided it is not undefined,
$C(y_{0})$  convexity at  $y_{0}$  , provided it is not undefined

Conversely, (approximated) yield  $y$  corresponding to (known) price  $p$  can be computed as

$$

{ y ( p ) } { \approx } { y _ { 0 } + \frac { d y ( p ) } { d p } \Bigg | _ { p = p _ { 0 } } ( p - p _ { 0 } ) + \frac { 1 } { 2 } \frac { d ^ { 2 } y ( p ) } { d p ^ { 2 } } \Bigg | _ { p = p _ { 0 } } ( p - p _ { 0 } ) ^ { 2 } . } { ( 5 ) }

$$ or, in terms of duration and convexity,


$$ y (p) \approx y _ {0} - \frac {p - p _ {0}}{p _ {0} D (y _ {0})} + \frac {1}{2} \frac {(p - p _ {0}) ^ {2} C (y _ {0})}{p _ {0} ^ {2} D ^ {3} (y _ {0})}. \tag {6}
$$

See Appendix A for the derivation of (6).

# 2 Estimating approximation parameters from observed data points

It is sometimes convenient to approximate the effective duration and convexity of a bond (or a more complex security) rather than calculate those quantities directly. The formulas below provide a means to perform such an approximation using prices and yields known at three data points.

Suppose that two data points  $(y_{1},p_{1})$  and  $(y_{2},p_{2})$  are known in the neighborhood of  $(y_0,p_0)$ . To the second degree of accuracy, from (2) we get

$$ p ^ {\prime} \left(y _ {0}\right) + \frac {1}{2} \Delta y _ {1} p ^ {\prime \prime} \left(y _ {0}\right) = \frac {\Delta p _ {1}}{\Delta y _ {1}}, \tag {7}
$$

$$ p ^ {\prime} \left(y _ {0}\right) + \frac {1}{2} \Delta y _ {2} p ^ {\prime \prime} \left(y _ {0}\right) = \frac {\Delta p _ {2}}{\Delta y _ {2}}, \tag {8}
$$ where:


$$ p ^ {\prime} (y _ {0}) = \frac {d p}{d y} \Bigg | _ {y = y _ {0}} \quad , \text {p r o v i d e d i t i s d e f i n e d},
$$

$$ p ^ {\prime \prime} (y _ {0}) = \left. \frac {d ^ {2} p}{d y ^ {2}} \right| _ {y = y _ {0}}, \text {p r o v i d e d i t i s d e f i n e d},
$$

$$
\Delta p _ {i} = p _ {i} - p _ {0}, i = 1, 2
$$

$$
\Delta y _ {i} = y _ {i} - y _ {0}, i = 1, 2
$$

This is a linear system of two equations in two unknowns,  $p'(y_0)$  and  $p''(y_0)$ .

The solution is given by

$$ p ^ {\prime} \left(y _ {0}\right) = \frac {\Delta p _ {1} \left(\Delta y _ {2}\right) ^ {2} - \Delta p _ {2} \left(\Delta y _ {1}\right) ^ {2}}{\Delta y _ {1} \Delta y _ {2} \left(y _ {2} - y _ {1}\right)}, \tag {9}
$$

$$ p ^ {\prime \prime} (y _ {0}) = \frac {2 \left(\Delta y _ {1} \Delta p _ {2} - \Delta y _ {2} \Delta p _ {1}\right)}{\Delta y _ {1} \Delta y _ {2} \left(y _ {2} - y _ {1}\right)}. \tag {10}
$$

Accordingly, for duration  $D$  and convexity  $C$ :

$$
D \left(y _ {0}\right) = - \frac {p ^ {\prime} \left(y _ {0}\right)}{p _ {0}} = - \frac {\Delta p _ {1} \left(\Delta y _ {2}\right) ^ {2} - \Delta p _ {2} \left(\Delta y _ {1}\right) ^ {2}}{\Delta y _ {1} \Delta y _ {2} \left(y _ {2} - y _ {1}\right) p _ {0}}, \tag {11}
$$

$$
C \left(y _ {0}\right) = \frac {p ^ {\prime \prime} \left(y _ {0}\right)}{p _ {0}} = \frac {2 \left(\Delta y _ {1} \Delta p _ {2} - \Delta y _ {2} \Delta p _ {1}\right)}{\Delta y _ {1} \Delta y _ {2} \left(y _ {2} - y _ {1}\right) p _ {0}}. \tag {12}
$$

See Appendix B for the derivation of (9) - (12).

# 3 Example

This example illustrates the approximation described above for a  $1.5\%$  10-year US Treasury bond with a price of 99.5 (per $100 notional) currently yielding  $1.5542\%$ .

Table 1: Worked example of price, duration and convexity approximations.

<table><tr><td>Scenario</td><td>Price</td><td>Yield, \%</td><td>Effective Dura-tion, Excel</td><td>Effective Con-vexity, Excel</td><td>Effective Dura-tion, approx.</td><td>Effective Con-vexity, approx.</td></tr><tr><td>Base</td><td>99.5000</td><td>1.5542</td><td>-9.2494</td><td>94.0938</td><td>9.2494</td><td>94.0938</td></tr><tr><td>- 100 bp</td><td>99.5921</td><td>1.5442</td><td></td><td></td><td></td><td></td></tr><tr><td>+ 100 bp</td><td>99.4080</td><td>1.5642</td><td></td><td></td><td></td><td></td></tr></table>

# Appendix A Derivation of the yield approximation in terms of duration and convexity

Applying the usual reasoning for inverse functions $^2$  to (3), we get

$$
\frac {d y}{d p} = \frac {1}{\frac {d p}{d y}} = - \frac {1}{p D}, \tag {A.1}
$$

$$
\frac {d ^ {2} y}{d p ^ {2}} = - \frac {d}{d p} \left[ \frac {1}{p D} \right] = \frac {D - p \frac {d D}{d p}}{p ^ {2}}. \tag {A.2}
$$

By the chain rule,

$$
\frac {d D}{d p} = \frac {d D}{d y} \frac {d y}{d p} = \frac {d D}{d y} \left(- \frac {1}{p D}\right), \tag {A.3}
$$

$$
\frac {d D}{d y} = - \frac {\frac {d p}{d y}}{p} = - \frac {\frac {d ^ {2} p}{d y ^ {2}}}{p} + \frac {\left(\frac {d p}{d y}\right) ^ {2}}{p ^ {2}} = - C (y) + D ^ {2} (y), \tag {A.4}
$$ hence


$$

\frac {d D}{d p} = \frac {D ^ {2} - C}{p D}, \tag {A.5}

$$ and


$$

\frac {d ^ {2} y}{d p ^ {2}} = \frac {D - \frac {p}{p D} (D ^ {2} - C)}{p ^ {2} D ^ {2}} = \frac {C}{p ^ {2} D ^ {3}}, \tag {A.6}

$$ yielding, in terms of duration and convexity,


$$ y (p) \approx y \left(p _ {0}\right) - \frac {p - p _ {0}}{p _ {0} D \left(y _ {0}\right)} + \frac {1}{2} \frac {\left(p - p _ {0}\right) ^ {2} C \left(y _ {0}\right)}{p _ {0} ^ {2} D ^ {3} \left(y _ {0}\right)}. \tag {A.7}
$$

# Appendix B Derivation of duration and convexity approximations

Recall that (9) - (10) is a 2x2 system of linear equations in  $p'(y_0)$  and  $p''(y_0)$ :

$$ p ^ {\prime} \left(y _ {0}\right) = \frac {\Delta p _ {1} \left(\Delta y _ {2}\right) ^ {2} - \Delta p _ {2} \left(\Delta y _ {1}\right) ^ {2}}{\Delta y _ {1} \Delta y _ {2} \left(y _ {2} - y _ {1}\right)} , \tag {B.1}
$$

$$ p ^ {\prime \prime} \left(y _ {0}\right) = \frac {2 \left(\Delta y _ {1} \Delta p _ {2} - \Delta y _ {2} \Delta p _ {1}\right)}{\Delta y _ {1} \Delta y _ {2} \left(y _ {2} - y _ {1}\right)}. \tag {B.2}
$$

Computing the determinants, we obtain:

$$
\begin{array}{l} \Delta = \left| \begin{array}{c c} 1 & 0. 5 \Delta y _ {1} \\ 1 & 0. 5 \Delta y _ {2} \end{array} \right| = 0. 5 (\Delta y _ {2} - \Delta y _ {1}) \\ = 0. 5 \left(y _ {2} - y _ {0} - y _ {1} + y _ {0}\right) = 0. 5 \left(y _ {2} - y _ {1}\right) \neq 0, \tag {B.3} \\ \end{array}
$$

$$
\Delta_ {p ^ {\prime}} = \left| \begin{array}{c c} \frac {\Delta p _ {1}}{\Delta y _ {1}} & 0. 5 \Delta y _ {1} \\ \frac {\Delta p _ {2}}{\Delta y _ {2}} & 0. 5 \Delta y _ {2} \end{array} \right| = 0. 5 \frac {\Delta p _ {1} (\Delta y _ {2}) ^ {2} - \Delta p _ {2} (\Delta y _ {1}) ^ {2}}{\Delta y _ {1} \Delta y _ {2}}, \tag {B.4}
$$

$$
\Delta_ {p ^ {\prime \prime}} = \left| \begin{array}{l l} 1 & \frac {\Delta p _ {1}}{\Delta y _ {1}} \\ 1 & \frac {\Delta p _ {2}}{\Delta y _ {2}} \end{array} \right| = \frac {\Delta p _ {2} \Delta y _ {1} - \Delta p _ {1} \Delta y _ {2}}{\Delta y _ {1} \Delta y _ {2}}. \tag {B.5}
$$

Hence [3],

$$ p ^ {\prime} \left(y _ {0}\right) = \frac {\Delta p ^ {\prime}}{\Delta} = \frac {\Delta p _ {1} \left(\Delta y _ {2}\right) ^ {2} - \Delta p _ {2} \left(\Delta y _ {1}\right) ^ {2}}{\Delta y _ {1} \Delta y _ {2} \left(y _ {2} - y _ {1}\right)}, \tag {B.6}
$$

$$ p ^ {\prime \prime} \left(y _ {0}\right) = \frac {\Delta p ^ {\prime \prime}}{\Delta} = \frac {2 \left(\Delta p _ {2} \Delta y _ {1} - \Delta p _ {1} \Delta y _ {2}\right)}{\Delta y _ {1} \Delta y _ {2} \left(y _ {2} - y _ {1}\right)}, \tag {B.7}
$$

$$
D y _ {0} = - \frac {p ^ {\prime} \left(y _ {0}\right)}{p _ {0}} = - \frac {\Delta p _ {1} \left(\Delta y _ {2}\right) ^ {2} - \Delta p _ {2} \left(\Delta y _ {1}\right) ^ {2}}{\Delta y _ {1} \Delta y _ {2} \left(y _ {2} - y _ {1}\right) p _ {0}}, \tag {B.8}
$$

$$
C y _ {0} = \frac {p ^ {\prime \prime} \left(y _ {0}\right)}{p _ {0}} = \frac {2 \left(\Delta p _ {2} \Delta y _ {1} - \Delta p _ {1} \Delta y _ {2}\right)}{\Delta y _ {1} \Delta y _ {2} \left(y _ {2} - y _ {1}\right) p _ {0}}. \tag {B.9}
$$

# References

[1] Abramowitz, M. and Stegun, I. Handbook of Mathematical Functions with Formulas, Graphs, and Mathematical Tables. Dover Publications, 1965.

[2] F. Fabozzi. The Handbook of Fixed Income Securities. McGraw-Hill, 7th edition, 2005.

[3] Strang, G. Linear Algebra and Its Applications. Brooks Cole, 4th edition, 2005.
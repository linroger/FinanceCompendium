---
aliases:
  - Valuation of a Compounding Swap
tags:
key_concepts:
parent_directory: Technical Notes from Options, Futures, and Other Derivatives
cssclasses: academia
title: Technical Note No. 18 - Valuation of a Compounding Swap
linter-yaml-title-alias: Technical Note No. 18 - Valuation of a Compounding Swap
---

# Technical Note No. 18*  

Options, Futures, and Other Derivatives  
John Hull

# Valuation of a Compounding Swap

Consider a compounding swap where floating rate cash flows in a swap are compounded forward at LIBOR plus a spread rather than being paid. We can use forward rate agreements to show that the value of the floating side is the same as the value it would have if forward rates were realized. In other words, the swap can be valued similarly to a regular swap by assuming that future interest rates equal today's forward rates.

Suppose that  $t_0$  is the time of the payment date immediately preceding the valuation date and that the payment dates following the valuation date are at times  $t_1, t_2, \ldots, t_n$ . Define  $\tau_i = t_{i+1} - t_i$  ( $0 \leq i \leq n-1$ ) and other variables as follows<sup>1</sup>

$L$ : Principal on the floating side of swap

$Q_{i}$ : Value of floating side compounded forward to time  $t_i$  ( $Q_0$  is known)

$Q_{i}^{*}$ : Value of floating side compounded forward to time  $t_i$  if forward rate is realized

$R_{i}$  : LIBOR rate from  $t_i$  to  $t_{i + 1}$  for  $i\geq 1$  ( $R_0$  is known)

$F_{i}$ : Forward rate applicable to period between time  $t_i$  and  $t_{i+1}$  (all known)

$s_p$ : Spread above LIBOR at which interest is paid on the floating side of the swap (20 basis points in Business Snapshot example in text)

$s_c$ : Spread above LIBOR at which floating interest compounds (10 basis points in Business Snapshot example in text)

We assume that the spread  $s_c$  is applied first to  $Q_i$  and then the result is compounded forward at  $R_i$  to produce  $Q_i(1 + R_i\tau_i)(1 + s_c\tau_i)$ . (This assumption is discussed at the end of the Note.)

The value of the floating side of the swap at time  $t_1$  is known. It is:

$$
Q _ {1} = Q _ {0} [ (1 + R _ {0} \tau_ {0}) (1 + s _ {c} \tau_ {0}) ] + L (R _ {0} + s _ {p}) \tau_ {0}
$$

The first term on the right hand side is the result of compounding the floating payments from time  $t_0$  to  $t_1$ . The second term is the floating payment at time  $t_1$ .

The value of the floating side at time  $t_2$  is not known and depends on  $R_1$ . It is

$$
Q _ {2} = Q _ {1} \left[ \left(1 + R _ {1} \tau_ {1}\right) \left(1 + s _ {c} \tau_ {1}\right) \right] + L \left(R _ {1} + s _ {p}\right) \tau_ {1} \tag {1}
$$

However, we can costlessly enter into two FRAs today:

1. An FRA to exchange, at time  $t_2$ ,  $R_1$  for  $F_1$  on a principal of  $Q_1(1 + s_c\tau_1)$  
2. An FRA to exchange, at time  $t_2$ ,  $R_1$  for  $F_1$  on a principal of  $L$

The first FRA shows that the first term on the right hand side of equation (1) has the same present value as a cash flow of  $Q_{1}(1 + F_{1}\tau_{1})(1 + s_{c}\tau_{1})$  at time  $t_2$ . The second FRA shows that the second term on the right hand side of equation (1) has the same present value as a cash flow of  $L(F_{1} + s_{p})\tau_{1}$  at time  $t_2$ . The value of the floating side of the swap at time  $t_2$  is, therefore the same as the value of a cash flow of

$$
Q _ {1} [ (1 + F _ {1} \tau_ {1}) (1 + s _ {c} \tau_ {1}) ] + L (F _ {1} + s _ {p}) \tau_ {1}
$$

at time  $t_2$ . This means that  $Q_2$  at time  $t_2$  can costlessly be converted to  $Q_2^*$  at time  $t_2$ .

Consider next time  $t_3$ . The compounded forward amount at time  $t_3$  is

$$
Q _ {3} = Q _ {2} \left[ \left(1 + R _ {2} \tau_ {2}\right) \left(1 + s _ {c} \tau_ {2}\right) \right] + L \left(R _ {2} + s _ {p}\right) \tau_ {2} \tag {2}
$$

To deal with the first term on the right hand side, we note that a cash flow of  $Q_{2}[(1 + R_{2}\tau_{2})(1 + s_{c}\tau_{2})]$  at time  $t_3$  is worth the same as  $Q_{2}(1 + s_{c}\tau_{2})$  at time  $t_2$ . This from our earlier result is worth the same as  $Q_{2}^{*}(1 + s_{c}\tau_{2})$  at time  $t_2$ . This in turn is worth the same as  $Q_{2}^{*}[(1 + F_{2}\tau_{2})(1 + s_{c}\tau_{2})]$  at time  $t_3$ . To deal with the second term, we note that we can today enter into an FRA to exchange, at time  $t_3$ ,  $R_{2}$  for  $F_{2}$  on a principal of  $L$ . These two observations show that a cash flow of  $Q_{3}$  at time  $t_3$  is worth the same as a cash flow of  $Q_{3}^{*}$  at time  $t_3$ .

Similarly, a cash flow of  $Q_{4}$  at time  $t_{4}$  is worth the same as a cash flow of  $Q_{4}^{*}$  at time  $t_{4}$ ; a cash flow of  $Q_{5}$  at time  $t_{5}$  is worth the same as a cash flow of  $Q_{5}^{*}$  at time  $t_{5}$ ; and so on. In particular, a cash flow of  $Q_{n}$  at time  $t_{n}$  is worth the same as a cash flow of  $Q_{n}^{*}$  at time  $t_{n}$  so that the result is proved.

In practice it may be the case that  $Q_{i}$  is compounds forward to  $Q_{i}[1 + (R_{i} + s_{c})\tau_{i}]$  rather than to  $Q_{i}(1 + R_{i}\tau_{i})(1 + s_{c}\tau_{i})$ . There is then an approximation. The result is only true when small terms of the form  $s_cR_i\tau_i^2$  are ignored.

The example in the text provides an application of the result in this Technical Note. (It does make the approximation just mentioned).
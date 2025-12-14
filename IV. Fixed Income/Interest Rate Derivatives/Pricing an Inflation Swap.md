# Pricing an Inflation Swap

D. L. Chertok†

November 8, 2012

# Summary

An inflation swap is a contract between two counterparties where at maturity sides exchange a pre-specified payment determined by the the inflation rate at inception for a payment determined by the simple rate of return of the Consumer Price Index (CPI) from inception to maturity.

# 1 Mathematical formulation

At inception, counterparties of an inflation swap agree to exchange payments at maturity. The fixed side pays the contract notional amount:

$$
P _ {f i x e d} \left(t _ {0}, T; r _ {C P I} \left(t _ {0}, T\right)\right) = N \left\{\left[ 1 + r _ {C P I} \left(t _ {0}\right) \right] ^ {\left(T - t _ {0}\right)} - 1 \right\}, \tag {1.1}
$$

where:

$t_0$  - effective date,

$T$  - swap maturity (in years),

$r_{CPI}(t_0)$  - contract inflation rate from  $t_0$  to  $T$  specified at inception,

$P_{fixed}(t,T;r_{CPI}(t_0,T))$  - fixed payout at  $T$

$N$  - contract notional.

The floating side pays the actual realized simple inflation rate adjustment based on the realized CPI at maturity:

$$
P _ {\text {f l o a t i n g}} \left(t _ {0}, T\right) = N \left[ \frac {I (T)}{I \left(t _ {0}\right)} - 1 \right], \tag {1.2}
$$

where:

$I(t_0)$  -CPI index at inception,

$I(T)$  - CPI index at maturity,

$P_{\text{floating}}(t, T)$  - floating side payout at  $T$ .

At inception, the IS should value at par, i.e., the net value of both sides is zero. At time  $t > t_0$ , however, the value of the IS changes as the new expected inflation rate diverges from the contract rate and as the maturity of the swap approaches. If we were to enter (at par) a new IS at time  $t$  with the same maturity  $T$  as the original IS, the fixed side payout would be

$$
P _ {f i x e d} (t, T; r _ {C P I} (t, T)) = N \left\{\left[ 1 + r _ {C P I} (t) \right] ^ {(T - t)} - 1 \right\}, \tag {1.3}
$$

using the same notation as in (1.1). Since the contract at  $t$  is worth zero, the expectation at  $t$  of the floating side payout at  $T$  equals that of the fixed payout. From (1.2), we get

$$
I (T) = I (t) \left[ \frac {P _ {\text {f i x e d}} (t , T ; r _ {C P I} (t , T))}{N} + 1 \right]. \tag {1.4}
$$

This, in turn, allows us to compute the expected floating payout from (1.2) and (1.3) and substituting  $t$  for  $t_0$ :

$$
P _ {f l o a t i n g} (t, T) = N \left\{\frac {I (t)}{I (t _ {0})} [ 1 + r _ {C P I} (t, T) ] ^ {(T - t)} - 1 \right\}. \tag {1.5}
$$

The total value of the IS at  $t$  is the difference between the floating and fixed sides present valued from  $T$  back to  $t$ :

$$
\begin{array}{l} V (t, T) = \left[ P _ {\text {f l o a t i n g}} (t, T) - P _ {\text {f i x e d}} \left(t _ {0}, T; r _ {C P I} (t _ {0}, T)\right) \right] \\ \times \quad d f (t, T) \delta_ {p a y f i x e d}, \tag {1.6} \\ \end{array}
$$

where:

$$
V (t, T) \quad - \quad \text {v a l u e o f I S a t} t,
$$

$df(t,T)$  - discount factor associated with  $T$  as seen at  $t$

$$
\delta_ {p a y f i x e d} \qquad = \left\{ \begin{array}{r l} 1, & \text {I S i s p a y - f i x e d}, \\ - 1, & \text {o t h e r w i s e}. \end{array} \right.
$$

If the counterparty to the IS is considered risk free, discount factor  $df(t,T)$  above is calculated using the usual swap discount curve ( e.g., as described in [2]). In the opposite case, an adjustment to the discount curve can be made by shocking the discount curve by its spread to a bond issued by this counterparty and maturing at ( approximately ) the same time as the IS. Fof additional details see [1].

# 2 Example

We consider a pay-fixed inflation swap effective 3/4/2008 and maturing on 3/4/2010. The swap was priced 3/7/2008 settling on 3/11/2007. The CPI for 12/31/2007 and 1/31/2008 were 210.036 and 211.08 respectively. Quoted IS rates for 3/7/2008 are presented in Table 1. The results are presented in Table 2.

Table 1: IS rate quotes.  

<table><tr><td>Effective Date</td><td>Maturity</td><td>Rate</td></tr><tr><td>3/11/2008</td><td>3/11/2009</td><td>2.622%</td></tr><tr><td>3/11/2008</td><td>3/11/2010</td><td>2.646%</td></tr></table>

Table 2: Inflation swap price calculation.  

<table><tr><td>Parameter</td><td>Value</td><td>Computation</td></tr><tr><td>Effective date</td><td>3/11/2008</td><td></td></tr><tr><td>Valuation date</td><td>3/7/2008</td><td></td></tr><tr><td>Notional</td><td>900,000</td><td></td></tr><tr><td>Strike</td><td>2.65%</td><td></td></tr><tr><td>Day count basis</td><td>Act/Act</td><td>= 2.622% + 723/730 × (2.646% - 2.622%)</td></tr><tr><td>Today&#x27;s quote</td><td>2.6457%</td><td></td></tr><tr><td>CPI on 12/31/2007</td><td>210.036</td><td></td></tr><tr><td>CPI on 1/31/2008</td><td>211.08</td><td></td></tr><tr><td>CPI at inception</td><td>210.137032</td><td></td></tr><tr><td>CPI today</td><td>210.372774</td><td>= 210.036 + 11-1/31 × (211.08 - 210.036)</td></tr><tr><td>Fixed payout</td><td>48,332.03</td><td>= 900,000 × (1.02652 - 1)</td></tr><tr><td>Expected floating payout</td><td>48,838.14</td><td>= 900,000 × (1.206455723/365 × 210.372774/210.13703 - 1)</td></tr><tr><td>Total payout</td><td>-506.11</td><td>= 48,332.03 - 48,838.14</td></tr><tr><td>df, no counterparty default</td><td>0.950555227</td><td>from the riskless US swap curve</td></tr><tr><td>PV, no counterparty default</td><td>-481.09</td><td>= -506.11 × 0.950555227</td></tr><tr><td>Issuer spread to swap</td><td>55.65 bp.</td><td></td></tr><tr><td>df, counterparty default</td><td>0.940205749</td><td>from the bond spread of the issuer</td></tr><tr><td>PV, counterparty default</td><td>-475.85</td><td>= -506.11 × 0.940205749</td></tr></table>

# References

[1] FINCAD Financial Corporation. Support and Reference, 2007. http:// fincad.com/default.asp?id=17300&s=Support&n=References.  
[2] P. Miron and P. Swannell. Pricing and Hedging Swaps. Euromoney Books, 1991.
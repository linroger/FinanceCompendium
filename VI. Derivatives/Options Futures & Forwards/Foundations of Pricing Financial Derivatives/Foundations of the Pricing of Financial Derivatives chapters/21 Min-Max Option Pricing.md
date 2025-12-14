---
aliases:
  - Min-Max Option Pricing
tags:
key_concepts:
parent_directory: Foundations of the Pricing of Financial Derivatives chapters
cssclasses: academia
title: "Chapter 21: Min-Max Option Pricing"
linter-yaml-title-alias: "Chapter 21: Min-Max Option Pricing"
---

# Min-Max Option Pricing

There are a number of variations of options in which there is more than one underlying asset. These options have a variety of interesting names. Nearly all of them are based on the maximum or minimum performer of two or more underlying assets or rates. The first paper to examine this type of option was Stulz (1982), who derived formulas for calls and puts that pay off based on which of two assets has the maximum or minimum value. We focus on the Stulz model initially and then show how it establishes a framework for variations of this type of option.

# 21.1 CHARACTERISTICS OF STULZ'S MIN-MAX OPTION

Suppose there are two assets whose current values at an arbitrary time are  $S_{1}$  and  $S_{2}$  and whose values at expiration  $T$  are  $S_{1T}$  and  $S_{2T}$ . Each asset may pay a cash flow yield or require a payment, such as storage costs. We generically denote these continuous cash flows as  $\delta_{1}$  and  $\delta_{2}$ , consistent with dividend yields in the case where the underlying instruments are stocks. Consider a call option with exercise price of  $X$  expiring at time  $T$  that pays off based on which of the two assets has the lesser value. So what happens at expiration is two-step. We first determine which is the lesser valued of the two assets. Then we insert the value of that asset into the standard payoff formula for a call. Thus, the call payoff is

$$
c _ {\min , T} = \max  \left[ 0, \min  \left(S _ {1 T}, S _ {2 T}\right) - X \right]. \tag {21.1}
$$

Let us denote the current price of this option as  $c_{\min}$ , where it will be understood that the call is on the minimum value of asset 1 and asset 2 and is being evaluated at time  $t$ .

Likewise, a call on the maximum has a current price of  $c_{\text{max}}$ . At expiration, we first determine the greater valued of the two assets and insert the value of that asset into the formula for the payoff of a call. The call payoff in this case is

$$
c _ {\max , T} = \max  \left[ 0, \max  \left(S _ {1 T}, S _ {2 T}\right) - X \right]. \tag {21.2}
$$

To establish some bounds on the prices of these options, much in the same way that we developed bounds on the prices of standard European options, let us compare the payoffs of a portfolio of long the call on the max priced at  $c_{\mathrm{max}}$  and long the call on the min priced at  $c_{\mathrm{min}}$  with a portfolio consisting of long the standard call on asset 1 priced at  $c_1$  and long the standard call on asset 2 priced at  $c_2$ . We must consider two general cases,  $S_{1T} < S_{2T}$  and  $S_{1T} \geq S_{2T}$  and three outcomes in each case, as displayed in Table 21.1 Panels A and B.

TABLE 21.1 Min and Max Calls in Comparison to Standard Calls  

<table><tr><td colspan="4">Panel A. S1T &lt; S2T</td></tr><tr><td></td><td colspan="3">Payoff</td></tr><tr><td>Current value of instrument</td><td>S1T &lt; S2T &lt; X</td><td>S1T ≤ X ≤ S2T</td><td>X &lt; S1T &lt; S2T</td></tr><tr><td>+cmax</td><td>0</td><td>S2T - X</td><td>S2T - X</td></tr><tr><td>+cmmin</td><td>0</td><td>0</td><td>S1T - X</td></tr><tr><td>Total</td><td>0</td><td>S2T - X</td><td>S2T + S1T - 2X</td></tr><tr><td>+ct1</td><td>0</td><td>0</td><td>S1T - X</td></tr><tr><td>+ct2</td><td>0</td><td>S2T - X</td><td>S2T - X</td></tr><tr><td>Total</td><td>0</td><td>S2T - X</td><td>S2T + S1T - 2X</td></tr></table>

Panel B.  $S_{1T} \geq S_{2T}$  

<table><tr><td></td><td colspan="3">Payoff</td></tr><tr><td>Current value of instrument</td><td>S2T ≤ S2T &lt; X</td><td>S2T ≤ X ≤ S1T</td><td>X &lt; S2T ≤ S1T</td></tr><tr><td>+cmax</td><td>0</td><td>S1T - X</td><td>S1T - X</td></tr><tr><td>+cmmin</td><td>0</td><td>0</td><td>S2T - X</td></tr><tr><td>Total</td><td>0</td><td>S1T - X</td><td>S2T + S1T - 2X</td></tr><tr><td>+ct1</td><td>0</td><td>S1T - X</td><td>S1T - X</td></tr><tr><td>+ct2</td><td>0</td><td>0</td><td>S2T - X</td></tr><tr><td>Total</td><td>0</td><td>S1T - X</td><td>S2T + S1T - 2X</td></tr></table>

It is apparent that the call on the max plus the call on the min has the same payoff as the combination of long calls on both assets. Therefore, the following parity must hold for their current prices:

$$
c _ {\max } + c _ {\min } = c _ {1} + c _ {2}. \tag {21.3}
$$

Note that the cash flow yields related to the underlying assets do not directly influence this parity. This type of max-min parity will continue to be useful because all we need to do is to derive a pricing model for one of the two min-max options, and the price of the other can be obtained using the previous equation.

Now let us consider a put on the minimum. Its current price evaluated at time  $t$  is expressed as  $p_{\min}$ . Its payoff at expiration is

$$
p _ {\min , T} = \max  \left[ 0, X - \min  \left(S _ {1 T}, S _ {2 T}\right) \right]. \tag {21.4}
$$

A put on the maximum has a current price of  $p_{\mathrm{max}}$  and a payoff of

$$
p _ {\max , T} = \max  \left[ 0, X - \max  \left(S _ {1 T}, S _ {2 T}\right) \right]. \tag {21.5}
$$

Following similar arguments as the call, we note that

$$
p _ {\max } + p _ {\min } = p _ {1} + p _ {2}. \tag {21.6}
$$

Intuitively, the call on the max will be worth at least the call on the min as  $\max(S_{1T}, S_{2T}) \geq \min(S_{1T}, S_{2T})$ . Specifically,  $c_{\mathrm{max}} \geq c_{\mathrm{min}}$ . We demonstrate this intuition in Table 21.2. Thus, if  $c_{\mathrm{max}} \geq c_{\mathrm{min}}$ , then a portfolio can be created such that there is a positive probability of receiving money and no chance of losing. Clearly, this would require a nonnegative investment; otherwise, we have arbitrage resulting in disequilibrium.

Following a similar argument, the put on the min will be worth at least the put on the max. Specifically,  $p_{\min} \geq p_{\max}$ . We demonstrate this intuition in Table 21.3. Thus, if  $p_{\min} < p_{\max}$ , then again there is a portfolio that can be created such that there is a positive probability

TABLE 21.2 Max Call in Comparison to Min Call  

<table><tr><td colspan="4">Panel A. S1T &lt; S2T</td></tr><tr><td></td><td colspan="3">Payoff</td></tr><tr><td>Current value of instrument</td><td>S1T &lt; S2T &lt; X</td><td>S1T ≤ X ≤ S2T</td><td>X &lt; S1T &lt; S2T</td></tr><tr><td>+cmax</td><td>0</td><td>S2T - X</td><td>S2T - X</td></tr><tr><td>-cmin</td><td>0</td><td>0</td><td>-(S1T - X)</td></tr><tr><td>Total</td><td>0</td><td>S2T - X</td><td>S2T - S1T</td></tr><tr><td></td><td></td><td>≥ 0</td><td>&gt; 0</td></tr></table>

Panel B.  $S_{1T} \geq S_{2T}$  

<table><tr><td></td><td colspan="3">Payoff</td></tr><tr><td>Current value of instrument</td><td>S2T ≤ S1T &lt; X</td><td>S2T ≤ X ≤ S1T</td><td>X &lt; S2T &lt; S1T</td></tr><tr><td>+cmax</td><td>0</td><td>S1T - X</td><td>S1T - X</td></tr><tr><td>-cmin</td><td>0</td><td>0</td><td>-(S2T - X)</td></tr><tr><td>Total</td><td>0</td><td>S1T - X</td><td>S1T - S2T</td></tr><tr><td></td><td></td><td>≥ 0</td><td>&gt; 0</td></tr></table>

TABLE 21.3 Min Put in Comparison to Max Put  

<table><tr><td colspan="4">Panel A. S1T &lt; S2T</td></tr><tr><td></td><td colspan="3">Payoff</td></tr><tr><td>Current value of instrument</td><td>S1T &lt; S2T &lt; X</td><td>S1T ≤ X ≤ S2T</td><td>X &lt; S1T &lt; S2T</td></tr><tr><td>+pmin</td><td>X - S1T</td><td>X - S1T</td><td>0</td></tr><tr><td>-pmax</td><td>-(X - S2T)</td><td>0</td><td>0</td></tr><tr><td rowspan="2">Total</td><td>S2T - S1T</td><td>X - S1T</td><td rowspan="2">0</td></tr><tr><td>&gt;0</td><td>≥0</td></tr></table>

Panel B.  $S_{1T} \geq S_{2T}$  

<table><tr><td></td><td colspan="3">Payoff</td></tr><tr><td>Current value of instrument</td><td>S2T ≤ S1T &lt; X</td><td>S2T ≤ X ≤ S1T</td><td>X &lt; S2T &lt; S1T</td></tr><tr><td>+pmin</td><td>X - S2T</td><td>X - S2T</td><td>0</td></tr><tr><td>-pmax</td><td>-(X - S1T)</td><td>0</td><td>0</td></tr><tr><td rowspan="2">Total</td><td>S1T - S2T</td><td>X - S2T</td><td rowspan="2">0</td></tr><tr><td>≥0</td><td>≥0</td></tr></table>

of receiving money and no chance of losing. Clearly, this would require a nonnegative investment; otherwise, we have arbitrage resulting in disequilibrium.

Further, the call on the max will be worth at least the maximum of the call on each asset  $c_{\max} \geq \min(c_1, c_2)$ . Without loss of generality, we let  $c_1 > c_2$ . We demonstrate this intuition in Table 21.4. Thus, if  $c_{\max} \geq c_1$ , then again there is a portfolio that can be created such that there is a positive probability of receiving money and no chance of losing. Clearly, this would require a nonnegative investment; otherwise, we have arbitrage resulting in disequilibrium.

Following a similar argument, the put on the min will be worth at least the maximum of the put on each asset or  $p_{\max} \geq \min(p_1, p_2)$ .

Consider the following comparison whereby a put on the min is shown to be equivalent to a long position in risk-free bonds with face value  $X$  maturing at the option's expiration, a short position in a call on the minimum struck at zero, whose price we denote as  $c_{\min,X=0}$ , and a long position on a call on the min with exercise price  $X$ . Note first that a call on the minimum struck at zero is an instrument that always pays off the lower-priced asset and there are effectively two exercise prices,  $X = 0$  and  $X > 0$ . We denote the current price of a call on the min struck at zero as  $c_{\min,X=0}$ . We illustrate these results in Table 21.5.

From Table 21.5, it is apparent that a put on the min is a perfect substitute for the combination of options and the risk-free bond. Consequently, the current value of the put on the min is the same as the current value of the combination, namely

$$
p _ {\min } = X e ^ {- r _ {c} \tau} - c _ {\min , X = 0} + c _ {\min }. \tag {21.7}
$$

Thus, once we have already obtained a formula for a call on the minimum, we can simply use this formula to get a put on the minimum.

Finally, we can easily obtain the price of the put on the maximum. Let us compare it to a long position in a pure discount bond, a call on the maximum struck at zero, and a long call on the maximum with an exercise price of  $X$  illustrated in Table 21.6.

TABLE 21.4 Max Calls in Comparison to Max of Two Standard Calls  

<table><tr><td colspan="4">Panel A. S1T &lt; S2T</td></tr><tr><td></td><td colspan="3">Payoff</td></tr><tr><td>Current value of instrument</td><td>S1T &lt; S2T &lt; X</td><td>S1T ≤ X ≤ S2T</td><td>X &lt; S1T &lt; S2T</td></tr><tr><td>+cmax</td><td>0</td><td>S2T - X</td><td>S2T - X</td></tr><tr><td>-c1</td><td>0</td><td>0</td><td>-(S1T - X)</td></tr><tr><td rowspan="2">Total</td><td rowspan="2">0</td><td>S2T - X</td><td>S2T - S1T</td></tr><tr><td>≥ 0</td><td>&gt; 0</td></tr><tr><td colspan="4">Panel B. S1T ≥ S2T</td></tr><tr><td></td><td colspan="3">Payoff</td></tr><tr><td>Current value of instrument</td><td>S2T ≤ S1T &lt; X</td><td>S2T ≤ X ≤ S1T</td><td>X &lt; S2T ≤ S1T</td></tr><tr><td>+cmax</td><td>0</td><td>S1T - X</td><td>S1T - X</td></tr><tr><td>-c1</td><td>0</td><td>-(S1T - X)</td><td>-(S1T - X)</td></tr><tr><td>Total</td><td>0</td><td>0</td><td>0</td></tr></table>

TABLE 21.5 Put-Call Parity for Options on the Min  

<table><tr><td colspan="4">Panel A. S1T &lt; S2T</td></tr><tr><td></td><td colspan="3">Payoff</td></tr><tr><td>Current value of instrument</td><td>S1T &lt; S2T &lt; X</td><td>S1T ≤ X ≤ S2T</td><td>X &lt; S1T &lt; S2T</td></tr><tr><td>+pmin</td><td>X - S1T</td><td>X - S1T</td><td>0</td></tr><tr><td>+Xe-rcτ</td><td>X</td><td>X</td><td>X</td></tr><tr><td>-cmin,X=0</td><td>-S1T</td><td>-S1T</td><td>-S1T</td></tr><tr><td>+cmin</td><td>0</td><td>0</td><td>S1T - X</td></tr><tr><td>Total</td><td>X - S1T</td><td>X - S1T</td><td>0</td></tr><tr><td colspan="4">Panel B. S1T ≥ S2T</td></tr><tr><td></td><td colspan="3">Payoff</td></tr><tr><td>Current value of instrument</td><td>S2T ≤ S1T &lt; X</td><td>S2T ≤ X ≤ S1T</td><td>X &lt; S2T ≤ S1T</td></tr><tr><td>+pmin</td><td>X - S2T</td><td>X - S2T</td><td>0</td></tr><tr><td>+Xe-rcτ</td><td>X</td><td>X</td><td>X</td></tr><tr><td>-cmin,X=0</td><td>-S2T</td><td>-S2T</td><td>-S2T</td></tr><tr><td>+cmin</td><td>0</td><td>0</td><td>S2T - X</td></tr><tr><td>Total</td><td>X - S2T</td><td>X - S2T</td><td>0</td></tr></table>

TABLE 21.6 Put-Call Parity for Options on the Max  

<table><tr><td colspan="4">Panel A. S1T &lt; S2T</td></tr><tr><td></td><td colspan="3">Payoff</td></tr><tr><td>Current value of instrument</td><td>S1T &lt; S2T &lt; X</td><td>S1T ≤ X ≤ S2T</td><td>X &lt; S1T &lt; S2T</td></tr><tr><td>+pmax</td><td>X - S2T</td><td>0</td><td>0</td></tr><tr><td>+Xe-rcτ</td><td>X</td><td>X</td><td>X</td></tr><tr><td>-cmax,X=0</td><td>-S2T</td><td>-S2T</td><td>-S2T</td></tr><tr><td>+cmax</td><td>0</td><td>S2T - X</td><td>S2T - X</td></tr><tr><td>Total</td><td>X - S2T</td><td>0</td><td>0</td></tr><tr><td colspan="4">Panel B. S1T ≥ S2T</td></tr><tr><td></td><td colspan="3">Payoff</td></tr><tr><td>Current value of instrument</td><td>S2T ≤ S1T &lt; X</td><td>S2T ≤ X ≤ S1T</td><td>X &lt; S2T ≤ S1T</td></tr><tr><td>+pmax</td><td>X - S1T</td><td>0</td><td>0</td></tr><tr><td>+Xe-rcτ</td><td>+X</td><td>+X</td><td>+X</td></tr><tr><td>-cmax,X=0</td><td>-S1T</td><td>-S1T</td><td>-S1T</td></tr><tr><td>+cmax</td><td>0</td><td>S1T - X</td><td>S1T - X</td></tr><tr><td>Total</td><td>X - S1T</td><td>0</td><td>0</td></tr></table>

Equivalence is apparent and, consequently, the price of a put on the max can be obtained by the formula,

$$
p _ {\max } = X e ^ {- r _ {c} \tau} - c _ {\max , X = 0} + c _ {\max }. \tag {21.8}
$$

Thus, once we obtain the price of a call on the minimum, we can then obtain the price of a call on the maximum using Equation (21.3), a put on the minimum using Equation (21.7), and a put on the maximum using Equation (21.8).

# 21.2 PRICING THE CALL ON THE MIN

Suppose the terminal payout on the call on the min is as given in Equation (21.1). Now suppose our two assets follow the standard lognormal diffusions,

$$
\frac {d S _ {1}}{S _ {1}} = \alpha_ {1} d t + \sigma_ {1} d W _ {1}
$$

$$
\frac {d S _ {2}}{S _ {2}} = \alpha_ {2} d t + \sigma_ {2} d W _ {2}, \tag {21.9}
$$

where  $\alpha_{i}$  and  $\sigma_{i}$  are the drift and volatility of asset  $i$ , and  $dW_{i}$  is the Wiener process driving asset  $i$ , with  $i = 1,2$ . The correlation between assets 1 and 2 is  $\rho_{12}$ . Note that  $c_{min}$  is a function of  $S_{1}, S_{2}$ , and  $t$ . Thus, based on Ito's lemma, we know

$$
\begin{array}{l} \begin{array}{r} d c _ {\mathrm {m i n}} = \left[ \frac {\partial c _ {\mathrm {m i n}}}{\partial t} + \frac {\partial c _ {\mathrm {m i n}}}{\partial S _ {1}} \alpha_ {1} S _ {1} + \frac {\partial c _ {\mathrm {m i n}}}{\partial S _ {2}} \alpha_ {2} S _ {2} \right. \\ + \frac {1}{2} \left(\frac {\partial^ {2} c _ {\mathrm {m i n}}}{\partial S _ {1} ^ {2}} \sigma_ {1} ^ {2} S _ {1} ^ {2} + \frac {\partial^ {2} c _ {\mathrm {m i n}}}{\partial S _ {2} ^ {2}} \sigma_ {2} ^ {2} S _ {2} ^ {2} + 2 \frac {\partial^ {2} c _ {\mathrm {m i n}}}{\partial S _ {1} \partial S _ {2}} \sigma_ {1} S _ {1} \sigma_ {2} S _ {2} \rho_ {1 2}\right) \Bigg ] d t \end{array} \\ + \frac {\partial c _ {\mathrm {m i n}}}{\partial S _ {1}} \sigma_ {1} S _ {1} d W _ {1} + \frac {\partial c _ {\mathrm {m i n}}}{\partial S _ {2}} \sigma_ {2} S _ {2} d W _ {2}. \\ \end{array}
$$

Consider a hedged portfolio where we are short one call on the minimum and long  $(\partial c_{\mathrm{min}} / \partial S_1)$  shares of  $S_{1}$  and also long  $(\partial c_{\mathrm{min}} / \partial S_2)$  shares of  $S_{2}$ . Thus, the current value of the portfolio,  $V$ , is

$$
V = - c _ {\min } + \frac {\partial c _ {\min }}{\partial S _ {1}} S _ {1} + \frac {\partial c _ {\min }}{\partial S _ {2}} S _ {2}. \tag {21.10}
$$

Now let us assume constant dividend yields and denote them  $\delta_{1}$  and  $\delta_{2}$ . Recall the dividend is assumed to be paid continuously based on the current asset price. Thus, the change in portfolio value is

$$
d V = - d c _ {\min } + \frac {\partial c _ {\min }}{\partial S _ {1}} d S _ {1} + \frac {\partial c _ {\min }}{\partial S _ {2}} d S _ {2} + \frac {\partial c _ {\min }}{\partial S _ {1}} \delta_ {1} S _ {1} d t + \frac {\partial c _ {\min }}{\partial S _ {2}} \delta_ {2} S _ {2} d t. \tag {21.11}
$$

Substituting, we have

$$
\begin{array}{l} d V = - \left\{ \begin{array}{l} \left[ \frac {\partial c _ {\mathrm {m i n}}}{\partial t} + \frac {\partial c _ {\mathrm {m i n}}}{\partial S _ {1}} \alpha_ {1} S _ {1} + \frac {\partial c _ {\mathrm {m i n}}}{\partial S _ {2}} \alpha_ {2} S _ {2} \right. \\ \left. + \frac {1}{2} \left(\frac {\partial^ {2} c _ {\mathrm {m i n}}}{\partial S _ {1} ^ {2}} \sigma_ {1} ^ {2} S _ {1} ^ {2} + \frac {\partial^ {2} c _ {\mathrm {m i n}}}{\partial S _ {2} ^ {2}} \sigma_ {2} ^ {2} S _ {2} ^ {2} + 2 \frac {\partial^ {2} c _ {\mathrm {m i n}}}{\partial S _ {1} \partial S _ {2}} \sigma_ {1} S _ {1} \sigma_ {2} S _ {2} \rho_ {1 2}\right) \right] d t \\ \left. + \frac {\partial c _ {\mathrm {m i n}}}{\partial S _ {1}} \delta_ {1} S _ {1} + \frac {\partial c _ {\mathrm {m i n}}}{\partial S _ {2}} \delta_ {2} S _ {2} \right. \\ \left. + \frac {\partial c _ {\mathrm {m i n}}}{\partial S _ {1}} \sigma_ {1} S _ {1} d W _ {1} + \frac {\partial c _ {\mathrm {m i n}}}{\partial S _ {2}} \sigma_ {2} S _ {2} d W _ {2} \right. \\ \end{array} \right\} \\ + \frac {\partial c _ {\min}}{\partial S _ {1}} \left(\alpha_ {1} S _ {1} d t + \sigma_ {1} S _ {1} d W _ {1}\right) + \frac {\partial c _ {\min}}{\partial S _ {2}} \left(\alpha_ {2} S _ {2} d t + \sigma_ {2} S _ {2} d W _ {2}\right). \tag {21.12} \\ \end{array}
$$

Similar to many other derivations, many terms cancel and we have

$$
d V = - \left[ \begin{array}{l} \frac {\partial c _ {\operatorname* {m i n}}}{\partial t} + \frac {1}{2} \left(\frac {\partial^ {2} c _ {\operatorname* {m i n}}}{\partial S _ {1} ^ {2}} \sigma_ {1} ^ {2} S _ {1} ^ {2} + \frac {\partial^ {2} c _ {\operatorname* {m i n}}}{\partial S _ {2} ^ {2}} \sigma_ {2} ^ {2} S _ {2} ^ {2} + 2 \frac {\partial^ {2} c _ {\operatorname* {m i n}}}{\partial S _ {1} \partial S _ {2}} \sigma_ {1} S _ {1} \sigma_ {2} S _ {2} \rho_ {1 2}\right) \\ + \frac {\partial c _ {\operatorname* {m i n}}}{\partial S _ {1}} \delta_ {1} S _ {1} + \frac {\partial c _ {\operatorname* {m i n}}}{\partial S _ {2}} \delta_ {2} S _ {2} \end{array} \right] d t. \tag {21.13}
$$

Because the portfolio is risk free, we also know that

$$
d V = r V d t = r \left(- c _ {\min } + \frac {\partial c _ {\min }}{\partial S _ {1}} S _ {1} + \frac {\partial c _ {\min }}{\partial S _ {2}} S _ {2}\right) d t. \tag {21.14}
$$

Setting these two expressions equal and canceling the  $dt$  term, we have

$$
\begin{array}{l} r \left(- c _ {\min } + \frac {\partial c _ {\min }}{\partial S _ {1}} S _ {1} + \frac {\partial c _ {\min }}{\partial S _ {2}} S _ {2}\right) \\ = - \left[ \begin{array}{l} \frac {\partial c _ {\min }}{\partial t} + \frac {1}{2} \left(\frac {\partial^ {2} c _ {\min }}{\partial S _ {1} ^ {2}} \sigma_ {1} ^ {2} S _ {1} ^ {2} + \frac {\partial^ {2} c _ {\min }}{\partial S _ {2} ^ {2}} \sigma_ {2} ^ {2} S _ {2} ^ {2} + 2 \frac {\partial^ {2} c _ {\min }}{\partial S _ {1} \partial S _ {2}} \sigma_ {1} S _ {1} \sigma_ {2} S _ {2} \rho_ {1 2}\right) \\ + \frac {\partial c _ {\min }}{\partial S _ {1}} \delta_ {1} S _ {1} + \frac {\partial c _ {\min }}{\partial S _ {2}} \delta_ {2} S _ {2} \end{array} \right]. \tag {21.15} \\ \end{array}
$$

Rearranging in a more familiar form, we have the two-asset PDE,

$$
\begin{array}{l} r c _ {\mathrm {m i n}} = \frac {\partial c _ {\mathrm {m i n}}}{\partial t} + \frac {\partial c _ {\mathrm {m i n}}}{\partial S _ {1}} (r - \delta_ {1}) S _ {1} + \frac {\partial c _ {\mathrm {m i n}}}{\partial S _ {2}} (r - \delta_ {2}) S _ {2} \\ + \frac {1}{2} \left(\frac {\partial^ {2} c _ {\operatorname* {m i n}}}{\partial S _ {1} ^ {2}} \sigma_ {1} ^ {2} S _ {1} ^ {2} + \frac {\partial^ {2} c _ {\operatorname* {m i n}}}{\partial S _ {2} ^ {2}} \sigma_ {2} ^ {2} S _ {2} ^ {2} + 2 \frac {\partial^ {2} c _ {\operatorname* {m i n}}}{\partial S _ {1} S _ {2}} \sigma_ {1} S _ {1} \sigma_ {2} S _ {2} \rho_ {1 2}\right). \tag {21.16} \\ \end{array}
$$

Thus, we seek a solution to this PDE that satisfies the boundary conditions.2

Recall from Chapter 13 that the univariate Feynman-Kac theorem provides a link between the PDE solution and the expectations solution. There is a multivariate version that provides the same link that can be applied here. Appendix 21.A provides a formal

expression of the multivariate Feynman-Kac theorem. Thus, based on the multivariate Feynman-Kac theorem, we know

$$
S _ {i T} = S _ {i t} e ^ {\left(r _ {c} - \delta_ {i} - \frac {\sigma_ {i} ^ {2}}{2}\right) \tau + \sigma_ {i} \sqrt {\tau} \varepsilon_ {i}}; i = 1, 2 \text {a n d} \tag {21.17}
$$

$$
\begin{array}{l} c _ {\mathrm {m i n}, t} = e ^ {- r _ {c} \tau} E _ {t} (c _ {\mathrm {m i n}, T}) \\ = e ^ {- r _ {c} \tau} \int_ {0} ^ {\infty} \int_ {0} ^ {\infty} \max  \left[ 0, \min  \left(S _ {1 T} S _ {2 T}\right) - X \right] f \left(S _ {1 T}, S _ {2 T}\right) d S _ {1 T} d S _ {2 T}. \tag {21.18} \\ \end{array}
$$

Solving the double integral based on the bivariate normal distribution, we have the min-max option model.

The call on minimum option model can be expressed as<sup>3</sup>

$$
\begin{array}{l} c _ {\min , t} = S _ {1} e ^ {- \delta_ {1} \tau} N _ {2} \left(d _ {1 1}, d _ {3}, \frac {\sigma_ {2} \rho - \sigma_ {1}}{\sigma}\right) \\ + S _ {2} e ^ {- \delta_ {2} \tau} N _ {2} \left(d _ {2 1}, d _ {4}, \frac {\sigma_ {1} \rho - \sigma_ {2}}{\sigma}\right) - X e ^ {- r _ {c} \tau} N _ {2} \left(d _ {1 2}, d _ {2 2}, \rho\right), \tag {21.19} \\ \end{array}
$$

where

$$
\sigma^ {2} \equiv \sigma_ {1} ^ {2} + \sigma_ {2} ^ {2} - 2 \rho_ {1 2} \sigma_ {1} \sigma_ {2}, \tag {21.20}
$$

$$
d _ {1 1} \equiv \frac {\ln \left(\frac {S _ {1}}{X}\right) + \left(r _ {c} - \delta_ {1} + \frac {\sigma_ {1} ^ {2}}{2}\right) \tau}{\sigma_ {1} \sqrt {\tau}}, \tag {21.21}
$$

$$
d _ {1 2} \equiv \frac {\ln \left(\frac {S _ {1}}{X}\right) + \left(r _ {c} - \delta_ {1} - \frac {\sigma_ {1} ^ {2}}{2}\right) \tau}{\sigma_ {1} \sqrt {\tau}} = d _ {1 1} - \sigma_ {1} \sqrt {\tau}, \tag {21.22}
$$

$$
d _ {2 1} \equiv \frac {\ln \left(\frac {S _ {2}}{X}\right) + \left(r _ {c} - \delta_ {2} + \frac {\sigma_ {2} ^ {2}}{2}\right) \tau}{\sigma_ {2} \sqrt {\tau}}, \tag {21.23}
$$

$$
d _ {2 2} \equiv \frac {\ln \left(\frac {S _ {2}}{X}\right) + \left(r _ {c} - \delta_ {2} - \frac {\sigma_ {2} ^ {2}}{2}\right) \tau}{\sigma_ {2} \sqrt {\tau}} = d _ {2 1} - \sigma_ {2} \sqrt {\tau}, \tag {21.24}
$$

$$
d _ {3} \equiv \frac {\ln \left(\frac {S _ {2}}{S _ {1}}\right) + \left(\delta_ {1} - \delta_ {2} - \frac {\sigma^ {2}}{2}\right) \tau}{\sigma \sqrt {\tau}}, \text {a n d} \tag {21.25}
$$

$$
d _ {4} \equiv \frac {\ln \left(\frac {S _ {1}}{S _ {2}}\right) + \left(\delta_ {1} - \delta_ {2} - \frac {\sigma^ {2}}{2}\right) \tau}{\sigma \sqrt {\tau}} = - d _ {3} - \sigma \sqrt {\tau}. \tag {21.26}
$$

Note the call on maximum can be found based on Equation (21.3). Further, the put on max is found based on Equation (21.8) and the put on min is found based on Equation (21.6).

We draw several interesting insights from the following figures generated based on the min-max option model presented here. The base parameters used in these figures are as follows:  $S_{1} = 100$ ,  $S_{2} = 100$ ,  $\delta_{1} = 0$ ,  $\delta_{2} = 0$ ,  $\sigma_{1} = 30\%$ ,  $\sigma_{2} = 30\%$ ,  $\rho = 0.7$ ,  $X = 100$ ,  $r_{c} = 5\%$ , and  $\tau = 1$  year.

Figure 21.1 illustrates the sensitivity of min-max options with respect to changes in asset price  $2(S_{2})$ . Note that as asset price 2 declines, the call on max converges to the Black-Scholes-Merton call value for asset 1 (14.23 with these parameters), the put on the max converges to the Black-Scholes-Merton put value for asset 1 (9.35 with these parameters), the call on the min converges to zero, and the put on the min converges to the lower boundary condition for asset 2. Further, as asset price 2 increases, the call on min converges to the Black-Scholes-Merton call value for asset 1, the put on the min converges to the Black-Scholes-Merton put value, the call on the max converges to the lower boundary condition for asset 2, and the put on the max converges to zero.

Figure 21.2 illustrates the sensitivity of min-max options with respect to changes in the correlation between asset 1 and asset 2. Note that as the correlation declines, the call on max and the put on the min increase in value as the likelihood of favorable moves in one of the two assets increases due to the lower correlation. Further, the call on the min and the put on the max decrease in value as the likelihood of an unfavorable move in one of the two assets increases. Further, note that as the correlation tends to  $+1$ , the call on the min and call on the max converge to the Black-Scholes-Merton call value (14.23, same for both underlying calls) and the put on the min and put on the max converge to the Black-Scholes-Merton put value (9.35, same for both underlying puts).

Figure 21.3 illustrates the sensitivity of min-max options with respect to changes in the time to expiration. The familiar time value decay is evident with all four min-max options

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/cfdaa8719cd65abf28f17707f38b61cfc7f4f6f06aca7a63ba729ba3ae77fa28.jpg)  
FIGURE 21.1 Min-Max Option Value Sensitivity to Asset Price 2

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/a4038248553c9200279aa4dd85375da3895022b25d3d03273aa521246d5af670.jpg)  
FIGURE 21.2 Min-Max Option Value Sensitivity to Correlation

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/4a98da974eadb852174e95dc9e5ffb70f78b5c1de84c4b819cf9fb7b68f7e1ad.jpg)  
FIGURE 21.3 Min-Max Option Value Sensitivity to Time to Expiration

converging to zero as time to expiration tends toward zero. The call on the max and the put on the min have greater time value decay because they have greater value for longer maturities.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/6846992ec43da1175aa58cfa73ed1851867d8c8a8510f6b65a250ab02de64692.jpg)  
FIGURE 21.4 Min-Max Option Value Sensitivity to Asset 2 Volatility

Figure 21.4 illustrates the sensitivity of min-max options with respect to changes in asset 2 volatility. As asset 2 volatility tends toward zero, the put on the min converges to the Black-Scholes-Merton put value for asset 1 and the put on the max converges to zero. Min-max call options are less transparent. When volatility converges to zero, the Black-Scholes-Merton call value converges to the lower bound, which in this case is positive (asset price 2 less the present value of the exercise price). Based on Equation (21.3), we know the sum of min-max call options should equal the sum of the underlying calls. Thus, we observe a nonzero call on min and a call on max in excess of the Black-Scholes-Merton call value (14.23).

# 21.3 OTHER RELATED OPTIONS

There have been numerous extensions of the basic formula. Johnson (1987) and Rich and Chance (1993) develop the formula under the condition of more than two assets. Also, several other useful results have been obtained by Rubinstein (1991b). He first establishes a formula for an option that pays off the better of two risky assets or a fixed amount of cash. Letting  $X$  be the fixed amount of cash, we write this payoff as  $\max(S_{1T}, S_{2T}, X)$ . Rubinstein then derives the pricing formula for this option. Let us denote this price as  $c_{12X}$ , where the subscripts denote asset price 1, asset price 2, and some fixed amount  $X$ . Then note the following relationship,  $\max(S_{1T}, S_{2T}, X) - X = \max[0, \max(S_{1T}, S_{2T}) - X]$ . This equivalence implies that a long position in Rubinstein's option paying the best of two assets or  $X$  and a short position worth the present value of  $X$  is equivalent to a call on the max struck at  $X$ . Thus,

$$
c _ {1 2 X} = X e ^ {- r _ {c} \tau} + c _ {\max } \tag {21.27}
$$

One particular problem encountered in using options on the max or min of two or more assets is that the asset values may be far apart at the start of the option. It would hardly be interesting to own a call paying off based on the maximum of two assets if one asset were currently worth  $100 and the other were currently worth$ 20. We already pretty much know which of the two assets will be the more highly valued asset at expiration. To overcome this problem, it is customary to express the option in terms of the assets' relative performances. For example, a call on the max would have a payoff as follows:

$$
\left. \max  \left[ 0, \max  \left(\frac {S _ {1 T} - S _ {1}}{S _ {1}}, \frac {S _ {2 T} - S _ {2}}{S _ {2}}\right) - X _ {R} \right]. \right. \tag {21.28}
$$

Here the rates of return of the two assets are compared and the payoff is determined by comparing the greater return to an exercise rate,  $X_{R}$ , expressed in terms of a return. To price this option, we first express the payoff above by adding a 1 to the returns on each asset and also the exercise price:

$$
\max  \left[ 0, \max  \left(\frac {S _ {1 T}}{S _ {1}}, \frac {S _ {2 T}}{S _ {2}}\right) - \left(1 + X _ {R}\right) \right]. \tag {21.29}
$$

This equation is the payoff of a call on the max in which the price of each asset has been normalized to a value of 1 at the start and the exercise price is expressed as 1 plus a return. This option can be valued directly with Stulz's formulas, inserting 1 as the price of each asset and using  $1 + X_{R}$  as the exercise price. The volatilities and the correlation remain the same. $^{4}$

Options on more than one asset are used in the over-the-counter options market. One particularly popular application is to have the assets be the returns on indexes representing different sectors of the market. Then the investor receives a return based on the better or worse performing sector. In practice, options paying off based on more than one asset are sometimes called two-color rainbow options. One variation is the outperformance option, whose payoff would be as follows:

$$
\left. \max  \left[ 0, \left(\frac {S _ {1 T} - S _ {1}}{S _ {1}}\right) - \left(\frac {S _ {2 T} - S _ {2}}{S _ {2}}\right) \right]. \right. \tag {21.30}
$$

Note that this option pays off the difference between the return on asset 1 and the return on asset 2, if that difference is positive, and zero if the difference is negative. Of course, the option could be structured with the assets reversed. This option is an exchange option, expressed in rate of return form and can be priced by the exchange option model of Margrabe (1978). The standard version that pays off the difference in the value of the asset with the better return and the strike is commonly called an alternative option. Another variation is the spread option discussed in Chapter 17, whose payoff is

$$
\max  \left[ 0, \left(S _ {1 T} - S _ {2 T}\right) - X \right]. \tag {21.31}
$$

Another variation is the dual-strike option, whose payoff is

$$
\left. \max  \left(0, S _ {1 T} - X _ {1}, S _ {2 T} - X _ {2}\right), \right. \tag {21.32}
$$

which has no known closed-form solution.

# 21.4 RECAP AND PREVIEW

In this chapter, we looked at options in which there is more than one underlying asset. Specifically, we examined options on the greater or lesser valued or greater or lesser performing of two assets. These assets have a second feature not found in standard options in that they enable the user to bet or hedge on which asset will be worth more or less or generate a greater or lesser rate of return.

In Chapter 22, we look at two different types of derivatives: forwards and futures. We do this because they complete our knowledge base in the pricing of derivatives. Yet, they do it in a different manner. As we shall see, they do not require the dynamic hedging we are required to use with options.

# APPENDIX 21A

# Multivariate Feynman-Kac Theorem

Consider the multivariate partial differential equation

$$
\begin{array}{l} \frac {\partial f (X , t)}{\partial t} + \sum_ {k = 1} ^ {N} \frac {\partial f (X , t)}{\partial x _ {k}} \mu_ {k} (X, t) + \frac {1}{2} \sum_ {i = 1} ^ {N} \sum_ {k = 1} ^ {N} \frac {\partial^ {2} f (X , t)}{\partial x _ {i} \partial x _ {k}} \sum_ {j = 1} ^ {m} \sum_ {l = 1} ^ {m} \sigma_ {i j} (X, t) \sigma_ {k l} (X, t) \rho_ {j l} (X, t) \\ - V (X, t) f (X, t) = g (X, t). \tag {21.33} \\ \end{array}
$$

Defined for all  $x \in \mathbb{R}$ ,  $t \in (0, T)$ , where  $f(X, t): \mathbb{R}^N \times (0, T) \to \mathbb{R}$  is the unknown, subject to the terminal condition,

$$
f (X, t) = h (X). \tag {21.34}
$$

Note that  $\mu, \sigma, h, V, g,$  and  $\rho$ , are known functions. Then the Feynman-Kac formula provides the solution as a conditional expectation expressed as

$$
\begin{array}{l} f (X, t) \\ = E ^ {Q} \left[ \int \int \dots \int e ^ {- \int_ {t} ^ {T} V (X _ {\tau}, \tau) d \tau} g (X _ {\tau}, \tau) d r _ {1} \dots d r _ {n - 1} d r _ {n} + e ^ {- \int_ {t} ^ {T} V (X _ {\tau}, \tau) d \tau} h (X) \right| X _ {t} = x \Bigg ]. \tag {21.35} \\ \end{array}
$$

Under the probability measure  $\mathrm{Q}$  such that  $X$  is an Itô process driven by the equation

$$
d X = \mu (X, t) d t + \sigma (X, t) d W ^ {Q}. \tag {21.36}
$$

With  $W^{\mathcal{Q}}(t)$  a Wiener process under  $\mathcal{Q}$  and the initial condition for  $X(t)$  is  $X(t) = x$ .

# APPENDIX 21B

# An Alternative Derivation of the Min-Max Option Model

Let us form a hedge portfolio currently valued at  $V$  by placing  $x\%$  of our wealth in asset 1,  $y\%$  of our wealth in asset 2, and  $100\% - x\% - y\%$  of our wealth in the risk-free asset. For example, let  $x$  and  $y$  be expressed as percentages (e.g.,  $x = 0.3$  or  $30\%$ ,  $y = 0.6$  or  $60\%$ ,  $1 - x - y = 0.1$  or  $10\%$ ). To express the current value of this portfolio consider that we invest  $xV$  dollars in asset 1, which will buy  $xV / S_1$  shares. We invest  $yV$  dollars in asset 2, which will buy  $yV / S_2$  shares. We then invest  $V - xV - yV$  dollars in the risk-free asset. The current value of our portfolio can, therefore, be expressed as

$$
V = \left(\frac {x V}{S _ {1}}\right) S _ {1} + \left(\frac {y V}{S _ {2}}\right) S _ {2} + (1 - x - y) V. \tag {21.37}
$$

The change in the value of this portfolio can be expressed as

$$
d V = \left(\frac {x V}{S _ {1}}\right) d S _ {1} + \left(\frac {y V}{S _ {2}}\right) d S _ {2} + (1 - x - y) V r d t + \delta_ {1} \left(\frac {x V}{S _ {1}}\right) S _ {1} d t + \delta_ {2} \left(\frac {y V}{S _ {2}}\right) S _ {2} d t, \tag {21.38}
$$

which can be written as

$$
d V = x \left(\frac {d S _ {1}}{S _ {1}}\right) V + y \left(\frac {d S _ {2}}{S _ {2}}\right) V + (1 - x - y) V r d t + \delta_ {1} x V d t + \delta_ {2} y V d t. \tag {21.39}
$$

Because  $dV$  is driven by two stochastic processes, each of which follows a separate lognormal diffusion, we know that the change in  $V$  can also be expressed using the multivariate version of Ito's lemma. In other words,

$$
\begin{array}{l} d V = \frac {\partial V}{\partial S _ {1}} d S _ {1} + \frac {\partial V}{\partial S _ {2}} d S _ {2} + \frac {\partial V}{\partial t} d t \\ + \frac {1}{2} \left(\frac {\partial^ {2} V}{\partial S _ {1} ^ {2}} S _ {1} ^ {2} \sigma_ {1} ^ {2} + \frac {\partial^ {2} V}{\partial S _ {2} ^ {2}} S _ {2} ^ {2} \sigma_ {2} ^ {2} + 2 \frac {\partial^ {2} V}{\partial S _ {1} \partial S _ {2}} S _ {1} S _ {2} \sigma_ {1} \sigma_ {2} \rho_ {1 2}\right) d t. \tag {21.40} \\ \end{array}
$$

Suppose we select the value of  $x$  to be  $(\partial V / \partial S_1)S_1 / V$  and the value of  $y$  to be  $(\partial V / \partial S_2)S_2 / V$ . We choose the values  $x$  and  $y$  based on current conditions, and, therefore, we can certainly set them where they should be, because we know the current values of  $\partial V / \partial S_1$ ,  $S_1$ ,  $\partial V / \partial S_2$ ,  $S_2$ , and  $V$ . Making these substitutions and setting Equations (21.39) and (21.40) equal to each other eliminates the stochastic terms, justifying use of the risk-free rate for discounting, leaving the following non-stochastic partial differential equation:

$$
\begin{array}{l} V r = \frac {\partial V}{\partial S _ {1}} S _ {1} (r - \delta_ {1}) + \frac {\partial V}{\partial S _ {2}} S _ {2} (r - \delta_ {2}) + \frac {\partial V}{\partial t} \\ + \frac {1}{2} \left(\frac {\partial^ {2} V}{\partial S _ {1} ^ {2}} S _ {1} ^ {2} \sigma_ {1} ^ {2} + \frac {\partial^ {2} V}{\partial S _ {2} ^ {2}} S _ {2} ^ {2} \sigma_ {2} ^ {2} + 2 \frac {\partial^ {2} V}{\partial S _ {1} \partial S _ {2}} S _ {1} S _ {2} \sigma_ {1} \sigma_ {2} \rho_ {1 2}\right). \tag {21.41} \\ \end{array}
$$

This equation will apply to any min-max options. The differences in the various min-max options will come from the boundary conditions, which are Equations (21.4) and (21.5). We shall use Equation (21.41) to price a call on the minimum. Therefore its price, the solution to the above PDE, is subject to the boundary condition of Equation (21.2), which we repeat here,

$$
c _ {\min , T} = \max  \left[ 0, \min  \left(S _ {1 T} S _ {2 T}\right) - X \right]. \tag {21.42}
$$

Stulz obtains the solution reported in the chapter by discounting the expected payoff under risk neutrality.

# QUESTIONS AND PROBLEMS

1 One of the challenging aspects of creating min-max options is the need to have similarly priced underlying instruments. Explain how you can transform any two underlying instrument prices to resolve the similarly priced feature.  
2 A portfolio of two call options on different stocks with the same maturity and exercise price can be replicated with options on the maximum and/or minimum. Identify the replicating min and/or max option combination and prove that this portfolio is the proper replicating portfolio.  
3 Explain how a dividend yield will influence the boundary condition given in the previous problem.  
4 Based on arbitrage arguments, show that  $p_{\mathrm{max}} + p_{\mathrm{min}} = p_1 + p_2$ .  
5 Based on the previous problems as well as standard put-call parity, we have the following relationships:

$$
\begin{array}{l} p _ {\max } + p _ {\min } = p _ {1} + p _ {2}, \\ p _ {\max } = X e ^ {- r _ {c} \tau} - c _ {\max , X = 0} + c _ {\max }, \\ p _ {\min } = X e ^ {- r _ {c} \tau} - c _ {\min , X = 0} + c _ {\min}, \\ p _ {1} = c _ {1} - S _ {1} + X e ^ {- r _ {c} \tau}, a n d \\ p _ {2} = c _ {2} - S _ {2} + X e ^ {- r _ {c} \tau}. \\ \end{array}
$$

Demonstrate, by substitution, that  $c_{\max, X = 0} + c_{\min, X = 0} = S_1 + S_2$ . Prove with an arbitrage table that this equality holds.

# NOTES

1. We leave the proof of this claim to an end-of-chapter problem.  
2. An alternative derivation is provided in Appendix 21.B.  
3. Haug (2007) presents a version of this solution; see pp. 211-212.  
4. The properties of the lognormal diffusion hold even if the asset is normalized to a value of 1, because the diffusion describes the proportional change in the asset's value.  
5. The values of the partial derivatives of  $V$  with respect to  $S_{1}$  and  $S_{2}$  are not known at the present. With the pricing model that solves this PDE, we can then derive these partial derivatives.


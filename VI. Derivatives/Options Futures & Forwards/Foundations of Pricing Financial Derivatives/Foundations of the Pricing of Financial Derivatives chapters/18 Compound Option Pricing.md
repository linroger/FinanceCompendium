---
title: "Chapter 18: Compound Option Pricing"
parent_directory: Foundations of the Pricing of Financial Derivatives chapters
formatted: 2025-12-21 02:28:30 PM
formatter_model: claude-sonnet-4-5-20250929
cli_tool: claude-code
primary_tags:
   - compound options
   - option on option
   - credit risk modeling
   - equity valuation
   - geske model
secondary_tags:
   - call on call
   - put on put
   - risk neutral pricing
   - bivariate normal
   - american option pricing
   - installment options
   - boundary conditions
   - put call parity
   - compound option greeks
   - delta and gamma
   - theta calculation
cssclasses: academia
---

# Compound Option Pricing

In this chapter we study compound options, which are options in which the underlying is an option. Thus, a compound option is an option on an option. Compound options are rarely seen directly in practice, but that is not an excuse to ignore them. For example, they are extremely valuable tools for understanding credit risk. Compound option models have also been deployed when addressing contingency hedging (e.g., hedging an extended bid on a project), various aspects of drug development, and captions (i.e., an option on a cap where a cap is a series of interest rate options that can be used to hedge, say, a loan portfolio for a bank). As we will show here, an option on the stock of a company that has debt is a compound option. In addition, compound option theory provides a means for pricing American options.

After introducing specific notation for compound options, we show how an option perspective on a common stock can aid in understanding the credit risk related to a firm. With this foundation, we proceed to explore options on stock as compound options. Next, we turn to a formal treatment of compound options complete with boundary conditions and parity relationships. We then turn to a careful examination of Geske's call on call model as he applied it to stock options. Next, we identify a generalized compound option model that addresses four different versions of compound options as well as incorporates cash flow yields on both the underlying instrument as well as the underlying option. We conclude this chapter with a brief look at installment options, which are variations of compound options.

The original development of the compound option model was Geske (1979b). The context in which this model was developed was that of a call option on a stock, which is itself a call option on the assets of the firm, an idea set forth by Black and Scholes and part of the foundation for the understanding of credit risk, as mentioned. Although the Black-Scholes-Merton model would appear to properly price such a call option, if all the basic assumptions are met, Geske's compound option model shows that the volatility of the stock is dynamic because it is determined by the leverage of the firm, meaning how much debt it uses. Leverage, of course, changes with changes in the value of the stock. Recall that the Black-Scholes-Merton model assumes constant volatility. And although most people use the Black-Scholes-Merton model to price options on stocks, technically the compound model is more appropriate.

The compound option model requires significantly more variables, so we briefly introduce some of the terms. Figure 18.1 illustrates three important dates with compound options: the trade date  $(t)$ , the compound option expiration date  $(T_1)$ , and the underlying option expiration  $(T_2)$ . There are three important periods of time corresponding to the compound option: the period of time until the compound option expires  $(\tau_1)$, the period of time until the underlying option expires $(\tau_{2})$, and the period of time between the compound option expiration and the underlying option expiration $(\tau_{12})$.

Further, the compound option model requires the compound option exercise price  $(X_{C})$  and the underlying option exercise price  $(X_{U})$ . The remaining underlying parameters are as defined before with  $S_{t}$  denoting the underlying instrument price,  $r_{c}$  denoting the annualized continuously compounded risk-free rate, and  $\sigma$  denoting the annualized standard deviation of the continuously compounded rates of return of the underlying instrument.

Finally, we introduce an underlying option yield,  $\hat{q}$ . Compound options are often used in modeling complex financial valuation problems that are often not related to traditional stock options. A yield on the underlying option may be useful for many applications of compound options, including the default option embedded in bonds, drug development applications with ongoing expenses (negative option yield), and some forms of contingency hedging. Although standard stock options do not pay any dividends, there may be times when we will wish to model options that do involve cash flows. We explore one case later in this chapter.

We motivate compound options first with options on common stock.

## 18.1 Equity as an Option

Let us start by assuming the existence of a corporation that has a single issue of zero-coupon debt due at time  $T_{2}$ . We define the following terms:

$V_{t}$: value of the firm's assets at time $t$,<sup>1</sup>

$M = X_{U}$  : face value of zero-coupon debt issued by the firm and maturing at time  $T_{2}$ ,  $S_{t}$ : market value of the stock of the firm at time  $t$ , and

$\sigma_{V} = \sigma$  :volatility of the log return of the assets of the firm.

Again, we continue to use  $r_c$  as the risk-free rate and the maturity of the debt in years is  $\tau_2$ . As Black and Scholes demonstrated, the equity is an option on the assets with payoff at  $T_2$  of  $\max(0, V_{T_2} - M)$ . That is, at time  $T_2$ , if the stockholders pay off the creditors in the amount of their claim,  $M$ , they retain their own claim on the assets worth  $V_{T_2}$ . Thus, when the debt matures and the value of the firm is large enough to avert default, the stock is worth  $V_{T_2} - M$ . When the value of the assets is below the value of the debt, the stockholders will default, and their claim is worth nothing. Hence, the stock is like a call option with a payoff of $\max\left(0, V_{T_2} - M\right)$. If the return on the assets can be expressed with the lognormal diffusion,

$$
\frac{d V_{t}}{V_{t}} = \alpha_{V} dt + \sigma_{V} dW_{t}, \tag{18.1}
$$

and the usual Black-Scholes-Merton assumptions are met, the equity can be valued as

$$
\begin{array}{l}
S_{t} = V_{t} N\left(d_{1}\right) - M e^{-r_{c} \tau_{2}} N\left(d_{2}\right) \\
d_{1} = \frac{\ln\left(V_{t}/M\right) + \left(r_{c} + \sigma_{V}^{2}/2\right) \tau_{2}}{\sigma_{V} \sqrt{\tau_{2}}} \\
d_{2} = d_{1} - \sigma_{V} \sqrt{\tau_{2}}.
\tag{18.2}
\end{array}
$$

This result is straightforward. We simply view the equity through the lens of an ordinary option in which the underlying is represented by the assets of the firm. But what if there is an option on the equity? Until now, we would value this option using the Black-Scholes-Merton model, but now we see that the option should be valued in a more meaningful way, one in which the volatility is not constant as would be the case if the firm had leverage.

Also, recall from Chapter 13 that  $N(d_2)$  is the probability of the call option expiring in-the-money under the risk-neutral measure. Thus, the value of viewing equity as an option is immediately transparent as  $N(d_2)$  is the probability of the firm paying off its debts when they mature under the risk-neutral measure. Alternatively,  $1 - N(d_2)$  is the probability of the firm not being able to pay off its debts when they mature under the risk-neutral measure. There have been many applications of this perspective, including appraising credit risk. See, for example, the widely popular KMV model.[2]

## 18.2 Valuing an Option on the Equity as a Compound Option

In valuing compound options, we must first recognize that there are calls on calls, calls on puts, puts on calls, and puts on puts. In addition, these options can be either European or American, and they can be mixed, as for example, an American call on a European put. We will use the simple notation  $cc$ ,  $cp$ ,  $pc$ , and  $pp$  to denote the price of a European call or put on a European call or put. We would use an uppercase  $c$  or  $p$  if either option is American, but we will not cover American options here. $^3$

Now suppose there is a call option on the stock expiring at  $T_{1}$  with an exercise price of  $X_{C}$ . Viewing stock as an option on the firm means the call option on the stock can be viewed as a compound option, specifically, a call on a call described in much more detail later. We denote this call on a call price as cc. Let this compound call expire before the debt matures  $(T_{2})$ ; therefore,  $T_{1} < T_{2}$ . Let us now derive the value of this compound call option in terms of the underlying asset,  $V_{t}$ , the value of the firm. We construct a hedge portfolio by purchasing  $n_{1}$  units of the asset and  $n_{2}$  compound call options. The value of this portfolio is initially<sup>4</sup>

$$
H_{t} = n_{1} V_{t} + n_{2} cc_{t}. \tag{18.3}
$$

We shall now temporarily drop the  $t$  subscript for notational simplification. We know that the change in the value of this portfolio is given by the total differential,

$$
dH = \frac{\partial H}{\partial V} dV + \frac{\partial H}{\partial cc} dcc. \tag{18.4}
$$

And note that  $dcc$  is the differential of the compound call price, cc. From Equation (18.3), we know that

$$
\frac{\partial H}{\partial V} = n_{1}
$$

$$
\frac{\partial H}{\partial cc} = n_{2}. \tag{18.5}
$$

Thus, the change in the value of the hedge portfolio is

$$
d H = n _ {1} d V + n _ {2} d c c. \tag {18.6}
$$

Because the price of the option is a function of  $V$  and  $t$ , Ito's lemma permits us to express the change in the call price as

$$
d c c = \frac {\partial c c}{\partial t} d t + \frac {\partial c c}{\partial V} d V + \frac {1}{2} \frac {\partial^ {2} c c}{\partial V ^ {2}} V ^ {2} \sigma_ {V} ^ {2} d t. \tag {18.7}
$$

Now we substitute Equation (18.7) into the right-hand side of Equation (18.6). This gives

$$
d H = n _ {1} d V + n _ {2} \frac {\partial c c}{\partial t} d t + n _ {2} \frac {\partial c c}{\partial V} d V + n _ {2} \frac {1}{2} \frac {\partial^ {2} c c}{\partial V ^ {2}} V ^ {2} \sigma_ {v} ^ {2} d t. \tag {18.8}
$$

Because we are free to set  $n_1$  and  $n_2$ , then let  $n_1 = -n_2(\partial cc / \partial V)$ . Substituting into Equation (18.8) gives

$$
d H = n _ {2} \frac {\partial c c}{\partial t} d t + n _ {2} \frac {1}{2} \frac {\partial^ {2} c c}{\partial V ^ {2}} V ^ {2} \sigma_ {V} ^ {2} d t. \tag {18.9}
$$

This expression has no stochastic terms, so it is risk free. Therefore, the value of the hedge portfolio,  $H$ , should grow at the risk-free rate. Thus, we specify that

$$
d H = H r _ {c} d t. \tag {18.10}
$$

Substituting from Equation (18.3) for  $H$ , and  $-n_{2}(\partial cc / \partial V)$  for  $n_1$ , we obtain

$$
n _ {2} \frac {\partial c c}{\partial t} d t + n _ {2} \frac {1}{2} \frac {\partial^ {2} c c}{\partial V ^ {2}} V ^ {2} \sigma_ {V} ^ {2} d t = - n _ {2} \frac {\partial c c}{\partial V} V r _ {c} d t + n _ {2} c c r _ {c} d t. \tag {18.11}
$$

Dividing by  $n_2$  and  $dt$  gives

$$
c c r _ {c} = \frac {\partial c c}{\partial V} V r _ {c} + \frac {\partial c c}{\partial t} + \frac {1}{2} \frac {\partial^ {2} c c}{\partial V ^ {2}} V ^ {2} \sigma_ {V} ^ {2}, \tag {18.12}
$$

which appears to be the same partial differential equation we obtained for the standard European call option.<sup>6</sup> Unfortunately, there are some complicating factors in finding the solution. The solution for the call on call price in terms of the firm's asset price, not the stock price, is more difficult because the call (modeled here as a call on call) will exercise or not at an intervening time based on the value of the stock (modeled as the underlying call in this case) relative to the underlying call exercise price,  $X_U$ . The call is not simply worth  $\max(0, V_{T_1} - X_C)$ . The call on call payoff is made at time  $T_1$  and is  $\max(0, c_{T_1} - X_C)$ . Note that the value of  $c_{T_1}$  depends on  $S_{T_1}$  that is used to solve another partial differential equation because it is a standard European option expiring later at  $T_2$ .

We now turn to compound option boundaries and parities before introducing the general compound option valuation model.

## 18.3 Compound Option Boundary Conditions and Parities

We briefly review the appropriate compound option boundary conditions and parities followed by selected proofs. For completeness, we consider both the possibility of dividends on the underlying asset, denoted  $\delta$  as before, as well as the possibility of dividends on the underlying option, denoted  $\hat{q}$  or the option yield. In the previous section, recall equity was viewed as an option on the firm and that equity may pay a dividend. Thus, for completeness, we need a model that can address the yield paid out of the firm as a whole as well as the yield paid out specifically to equity holders. Also, recall that compound options are often used in modeling complex financial valuation problems where the capacity to capture a cash flow related to the underlying option is useful.

Going forward, we adopt the more general case where  $S_{t}$  is the underlying asset price. Thus, in our prior discussion,  $S_{t}$  is the underlying firm value. In this way, the following results are generic and can easily be applied to other assets.

We now review the detailed proof for the call on call lower and upper bounds. The remaining bounds are given without proof as they follow in a similar manner.

Call on call lower bound:

$$
c c _ {t} \left[ c _ {t} \left(S _ {t}, X _ {U}, T _ {2}\right), X _ {\mathrm {C}}, T _ {1} \right] \geq \max  \left[ 0, e ^ {- \hat {q} \tau_ {1}} c _ {t} \left(S _ {t}, X _ {U}, T _ {2}\right) - X _ {\mathrm {C}} e ^ {- r _ {c} \tau_ {1}} \right]. \tag {18.13}
$$

Recall for European-style call options on the underlying instrument, we have the following lower bound:

$$
c _ {t} \geq \max  \left(0, S _ {t} e ^ {- \delta \tau_ {2}} - X _ {U} e ^ {- r _ {c} \tau_ {2}}\right). \tag {18.14}
$$

Thus, in a similar fashion, for a call on a call option, we have

$$
c c _ {t} \left[ c _ {t} \left(S _ {t}, X _ {U}, T _ {2}\right), X _ {C}, T _ {1} \right] \geq \max  \left[ 0, e ^ {- \hat {q} \tau_ {1}} c _ {t} \left(S _ {t}, X _ {U}, T _ {2}\right) - X _ {C} e ^ {- r _ {c} \tau_ {1}} \right]. \tag {18.15}
$$

Although the intuition may not be clear, the boundary condition must hold or otherwise there will be arbitrage profits available, as illustrated in the following proof.

Proof: Recall that  $X_{1} > 0$  and that limited liability implies observed option prices are non-negative. Assume the opposite:

$$
c c _ {t} \left[ c _ {t} \left(S _ {t}, X _ {U}, T _ {2}\right), X _ {\mathrm {C}}, T _ {1} \right] <   \max  \left[ 0, e ^ {- \hat {q} \tau_ {1}} c _ {t} \left(S _ {t}, X _ {U}, T _ {2}\right) - X _ {\mathrm {C}} e ^ {- r _ {c} \tau_ {1}} \right]. \tag {18.16}
$$

TABLE 18.1 Lower Bound for Call on Call  

<table><tr><td rowspan="2">Strategy</td><td rowspan="2">Today (t)</td><td colspan="2">At Expiration (T1)</td></tr><tr><td>cT1≤ XC</td><td>cT1&gt;XC</td></tr><tr><td>Sell e-ˆqτ1units of underlying call</td><td>+e-ˆqτ1ct</td><td>-cT1</td><td>-CT1</td></tr><tr><td>Lend XCe-rτ1</td><td>-XCe-rτ1</td><td>+XC</td><td>+XC</td></tr><tr><td>Buy call on call</td><td>+cct</td><td>0</td><td>+(CT1-XC)</td></tr><tr><td>Net</td><td>&gt;0 (By assumption)</td><td>+XC-cT1≥0 (By column)</td><td>=0</td></tr></table>

Note if  $e^{-\hat{q}\tau_1}c_t(S_t,X_U,T_2) - X_Ce^{-r_c\tau_1} < 0$ , then  $cc_{t}\left[c_{t}\left(S_{t},X_{U},T_{2}\right),X_{C},T_{1}\right] < 0$ . In this case, simply sell the compound option and you have positive cash flow today at no risk in the future. Therefore, we only need now consider the case where

$$
c c _ {t} \left[ c _ {t} \left(S _ {t}, X _ {U}, T _ {2}\right), X _ {\mathrm {C}}, T _ {1} \right] <   e ^ {- \hat {q} \tau_ {1}} c _ {t} \left(S _ {t}, X _ {U}, T _ {2}\right) - X _ {\mathrm {C}} e ^ {- r _ {c} \tau_ {1}}. \tag {18.17}
$$

Move terms to the greater-than side,

$$
0 <   e ^ {- \hat {q} \tau_ {1}} c _ {t} (S _ {t}, X _ {U}, T _ {2}) - X _ {\mathrm {C}} e ^ {- r _ {c} \tau_ {1}} - c c _ {t} [ c _ {t} (S _ {t}, X _ {U}, T _ {2}), X _ {\mathrm {C}}, T _ {1} ]. \tag {18.18}
$$

Table 18.1 provides a cash flow table illustrating the arbitrage profits.

Because this trading strategy results in receiving money today and there is no chance of paying money in the future, this trading strategy is very attractive and should not appear in rational markets for very long. Therefore, the original asserted boundary condition would hold.

Call on call upper bound:

$$
c c _ {t} \left[ c _ {t} (S, X _ {U}, T _ {2}), X _ {C}, T _ {1} \right] \leq e ^ {- \hat {q} \tau_ {1}} c _ {t} (S, X _ {U}, T _ {2}). \tag {18.19}
$$

Recall for European call options on the underlying instrument, we have the following upper bound:

$$
c _ {t} \leq S _ {t} e ^ {- \delta \tau_ {2}}. \tag {18.20}
$$

In a similar fashion, for a compound call on call option, we have

$$
c c _ {t} \left[ c _ {t} (S, X _ {U}, T _ {2}), X _ {C}, T _ {1} \right] \leq e ^ {- \hat {q} \tau_ {1}} c _ {t} (S, X _ {U}, T _ {2}). \tag {18.21}
$$

The option to purchase another option should not cost more than the underlying yield-adjusted option; otherwise, one would just buy the underlying option.

Proof: Recall that  $X_{\mathrm{C}} > 0$  and limited liability implies observed option prices are nonnegative. Assume the opposite:

$$
c c _ {t} \left[ c _ {t} (S, X _ {U}, T _ {2}), X _ {C}, T _ {1} \right] > e ^ {- \hat {q} \tau_ {1}} c _ {t} (S, X _ {U}, T _ {2}). \tag {18.22}
$$

Move terms to the greater-than side:

$$
c c _ {t} \left[ c _ {t} (S, X _ {U}, T _ {2}), X _ {C}, T _ {1} \right] - e ^ {- \hat {q} \tau_ {1}} c _ {t} (S, X _ {U}, T _ {2}) > 0. \tag {18.23}
$$

TABLE 18.2 Upper Bound for Call on Call  

<table><tr><td rowspan="2">Strategy</td><td rowspan="2">Today (t)</td><td colspan="2">At Expiration (T1)</td></tr><tr><td>ct ≤ XC</td><td>ct &gt; XC</td></tr><tr><td>Sell call on call</td><td>+cct</td><td>0</td><td>-(ct - XC)</td></tr><tr><td>Buy e-ˆτ1units of underlying call</td><td>-e-ˆτ1ct</td><td>+ct1</td><td>+ct1</td></tr><tr><td rowspan="2">Net</td><td>&gt;0</td><td>≥0</td><td>XC &gt; 0</td></tr><tr><td>(By assumption)</td><td>(By limited liability)</td><td>(By assumption)</td></tr></table>

Table 18.2 illustrates the arbitrage opportunity with a cash flow table.

Because this trading strategy results in receiving money today and there is no chance of paying money in the future, this trading strategy is very attractive and should not appear in rational markets for very long. In other words, it is an easy arbitrage opportunity. Therefore, the original asserted boundary condition must hold.

The remaining boundary conditions are stated without proof. Proofs would follow in a similar manner to what we just covered.

Call on put lower bound:

$$
c p _ {t} \left[ p _ {t} \left(S, X _ {U}, T _ {2}\right), X _ {C}, T _ {1} \right] \geq \max  \left[ 0, e ^ {- \hat {q} \tau_ {1}} p _ {t} \left(S, X _ {U}, T _ {2}\right) - X _ {C} e ^ {- r _ {c} \tau_ {1}} \right]. \tag {18.24}
$$

Call on put upper bound:

$$
c p _ {t} \left[ p _ {t} \left(S, X _ {U}, T _ {2}\right), X _ {C}, T _ {1} \right] \leq e ^ {- \hat {q} \tau_ {1}} p _ {t} \left(S, X _ {U}, T _ {2}\right). \tag {18.25}
$$

Put on call lower bound:

$$
p c _ {t} \left[ c _ {t} \left(S, X _ {U}, T _ {2}\right), X _ {C}, T _ {1} \right] \geq \max  \left[ 0, X _ {C} e ^ {- r _ {c} \tau_ {1}} - e ^ {- \hat {q} \tau_ {1}} c _ {t} \left(S, X _ {U}, T _ {2}\right) \right]. \tag {18.26}
$$

Put on call upper bound:

$$
p c _ {t} \left[ c _ {t} (S, X _ {U}, T _ {2}), X _ {\mathrm {C}}, T _ {1} \right] \leq X _ {\mathrm {C}} e ^ {- r _ {c} \tau_ {1}}. \tag {18.27}
$$

Put on put lower bound:

$$
p p _ {t} \left[ p _ {t} \left(S, X _ {U}, T _ {2}\right), X _ {C}, T _ {1} \right] \geq \max  \left[ 0, X _ {C} e ^ {- r _ {c} \tau_ {1}} - e ^ {- \hat {q} \tau_ {1}} p _ {t} \left(S, X _ {U}, T _ {2}\right) \right]. \tag {18.28}
$$

Put on put upper bound:

$$
p p _ {t} \left[ p _ {t} \left(S, X _ {\mathrm {C}}, T _ {2}\right), X _ {U}, T _ {1} \right] \leq X _ {\mathrm {C}} e ^ {- r _ {c} \tau_ {1}}. \tag {18.29}
$$

The underlying option put-call parity is:

$$
e ^ {- \hat {q} _ {c} \tau_ {2}} c _ {t} (S, X _ {U}, T _ {2}) - e ^ {- \hat {q} _ {p} \tau_ {2}} p _ {t} (S, X _ {U}, T _ {2}) = S _ {t} e ^ {- \delta \tau_ {2}} - X _ {C} e ^ {- r _ {c} \tau_ {2}}. \tag {18.30}
$$

TABLE 18.3 Call on Call-Call on Put Parity  

<table><tr><td rowspan="2">Strategy</td><td rowspan="2">Today (t)</td><td colspan="2">At Expiration (T1)</td></tr><tr><td>cT1≤ XC</td><td>cT1&gt;XC</td></tr><tr><td>Sell call on call</td><td>+cct</td><td>0</td><td>-(cT1-XC)</td></tr><tr><td>Buy put on call</td><td>-pct</td><td>+(XC-cT1)</td><td>0</td></tr><tr><td>Buy e-ˆqτ1units of underlying call</td><td>-e-ˆqτ1ct</td><td>+ct1</td><td>+ct1</td></tr><tr><td>Borrow e-rcτ1XC</td><td>+erτ1XC</td><td>-XC</td><td>-XC</td></tr><tr><td>Net</td><td>?</td><td>=0</td><td>=0</td></tr></table>

The compound option put-call parity relations include:

$$
c c _ {t} \left[ c _ {t} (S, X _ {U}, T _ {2}), X _ {\mathrm {C}}, T _ {1} \right] - p c _ {t} \left[ c _ {t} (S, X _ {U}, T _ {2}), X _ {\mathrm {C}}, T _ {1} \right] = e ^ {- \hat {q} \tau_ {1}} c _ {t} - e ^ {- r _ {c} \tau_ {1}} X _ {\mathrm {C}}, \tag {18.31}
$$

$$
c p _ {t} \left[ p _ {t} \left(S, X _ {U}, T _ {2}\right), X _ {\mathrm {C}}, T _ {1} \right] - p p _ {t} \left[ p _ {t} \left(S, X _ {U}, T _ {2}\right), X _ {\mathrm {C}}, T _ {1} \right] = e ^ {- \hat {q} \tau_ {1}} p _ {t} - e ^ {- r _ {c} \tau_ {1}} X _ {\mathrm {C}}, \text {a n d} \tag {18.32}
$$

$$
\begin{array}{l} c c _ {t} \left[ c _ {t} \left(S, X _ {U}, T _ {2}\right), X _ {\mathrm {C}}, T _ {1} \right] - p c _ {t} \left[ c _ {t} \left(S, X _ {U}, T _ {2}\right), X _ {\mathrm {C}}, T _ {1} \right] \\ - \left\{c p _ {t} \left[ p _ {t} \left(S, X _ {U}, T _ {2}\right), X _ {C}, T _ {1} \right] - p p _ {t} \left[ p _ {t} \left(S, X _ {U}, T _ {2}\right), X _ {C}, T _ {1} \right] \right\} \\ = e ^ {- \delta \tau_ {2}} c _ {t} - e ^ {- r _ {c} \tau_ {2}} X _ {\mathrm {C}}. \tag {18.33} \\ \end{array}
$$

We now sketch the proofs for the put-call parity stated in Equation (18.31).

Proof: Rearranging and simplifying notation,

$$
c c _ {t} - p c _ {t} - e ^ {- \hat {q} \tau_ {1}} c _ {t} + e ^ {- r _ {c} \tau_ {1}} X _ {C} = 0. \tag {18.34}
$$

Consider the cash flow table shown in Table 18.3.

Because this trading strategy results in no cash flow in the future, this trading strategy would be very attractive if the net cash flow today is either positive or negative. Thus, we place a question mark for the net cash flow today. If the net cash flow today is positive, then sell the call on the call, buy the put on the call, buy  $e^{-\hat{q}\tau_1}$  units of the underlying call, and borrow  $e^{-r_c\tau_1}X_C$ . If the net cash flow today is negative, then do the opposite set of trades, that is, buy the call on call, sell the put on call, sell call, and lend  $e^{-r_c\tau_1}X_C$ .

## 18.4 Geske's Approach to Valuing a Call on a Call

Geske uses the principle of risk-neutral valuation to price a stock option. Due to his focus solely on a call option on a stock, we follow his notation where  $c$  denotes the call option,  $S$  denotes the common stock price, and  $V$  denotes the firm value per share. Note we follow Geske's notation only in this section and will revert back to the more generic notation in the next section. Remember, our focus here is on valuing a call option on a stock as a compound option on the firm. Specifically, he evaluates the expression

$$
c _ {t} = e ^ {- r _ {c} \tau_ {1}} E \left\{\max  \left[ 0, S _ {1} \left(V _ {1}\right) - X \right] \right\}. \tag {18.35}
$$

This expression means that we find the expected payoff of the call at its expiration, time  $T_{1}$ , and discount it to the present. The expected payoff of the call is based on the stock price at  $T_{1}$ , which is a function of the value of the firm at  $T_{1}$ . More formally, the expression to be evaluated is<sup>8</sup>

$$
c _ {t} = e ^ {- r _ {c} \tau_ {1}} \int_ {- \infty} ^ {\infty} \max  \left[ 0, S _ {1} \left(V e ^ {u}\right) - X \right] f (u) d u, \tag {18.36}
$$

where

$$
u = \ln \left(V _ {1} / V _ {t}\right)
$$

$$
f (u) = \frac {e ^ {- \frac {q ^ {2}}{2}}}{\sigma_ {V} \sqrt {2 \pi \tau_ {1}}}
$$

$$
q = \frac {u - \mu_ {V} \tau_ {1}}{\sigma_ {V} \sqrt {\tau_ {1}}}
$$

$$
\mu_ {V} = r _ {c} - \sigma_ {V} ^ {2} / 2. \tag {18.37}
$$

These expressions arise from the fact that the value of the assets,  $V_{1}$ , is assumed to be lognormally distributed and the expected return is set to the risk-free rate.

Now the problem can be broken down into three parts that have logical interpretations. If the option expires in-the-money at  $T_{1}$ , the holder will exercise it and obtain a position in the stock. When the bonds mature at  $T_{2}$ , the stock value behaves like an ordinary call with a payoff equal to the expected value of the assets conditional on the bonds being paid off minus the expected payoff on the bonds. Thus, the value of the compound call can be expressed as the sum of three option parts:

(OP1) The value today of the assets of the firm at  $T_{1}$  
(OP2) The value today of the payment of the exercise price,  $M$ , on the compound option  
(OP3) The value today of the payment of the exercise price,  $X$ , on the underlying, meaning, the payoff of the bonds

Each of these values is conditional on the compound option being exercised at  $T_{1}$ . These three values are written formally as

$$
\begin{array}{l} \left(\mathrm {O P} 1\right) \quad V e ^ {- r _ {c} \tau_ {1}} \int_ {\ln \left(V ^ {*} / V\right)} ^ {\infty} e ^ {u} N (z) f (u) d u \\ \text {(O P 2)} \quad M e ^ {- r _ {c} \tau_ {2}} \int_ {\ln (V ^ {*} / V)} ^ {\infty} N \left(z - \sigma_ {V} \sqrt {\tau_ {1 2}}\right) f (u) d u \\ \left(\mathrm {O P} 3\right) \quad X e ^ {- r _ {c} \tau_ {1}} \int_ {\ln \left(V ^ {*} / V\right)} ^ {\infty} f (u) d u \tag {18.38} \\ \end{array}
$$

where

$$
z = \frac {\left(\ln \left(V ^ {*} / M\right) + \left(r _ {c} + \sigma_ {V} ^ {2} / 2\right) \tau_ {1 2}\right)}{\sigma_ {V} \sqrt {\tau_ {1 2}}}.
$$

The term  $V^{*}$  is the critical value of the assets at  $T_{1}$  at which the equity would be sufficiently valuable to have the call option expire at-the-money. It can be found by solving the following equation for  $V^{*}$ :

$$
V ^ {*} N (z) - M e ^ {- r _ {c} \tau_ {1 2}} N \left(z - \sigma_ {V} \sqrt {\tau_ {1 2}}\right) = X. \tag {18.39}
$$

Observe that the left-hand solution of Equation (18.39) is the Black-Scholes-Merton value of the underlying option at the point at which the compound option is expiring. Note that the exercise price is the amount owed on the bond at time  $T_{2}$ , and the volatility is the volatility of the assets. The right-hand solution is the exercise price of the compound option. We are finding the value at the expiration of the compound option that forces the value of the underlying option to equal its exercise value. In other words, if the underlying is above this level, the compound option will exercise and convert to the stock, which then proceeds as an ordinary call option on the assets that will expire at  $T_{2}$ .

The values of the option parts, (OP1), (OP2), and (OP3), are as follows:

(OP1)  $VN_{2}(x,y;\rho)$  
(OP2)  $Me^{-r_c\tau_2}N_2(x - \sigma_V\sqrt{\tau_1},y - \sigma_V\sqrt{\tau_2};\rho)$  
(OP3)  $Xe^{-r_c\tau_1}N_1(x - \sigma_V\sqrt{\tau_1})$

where

$$
\begin{array}{l} x = \frac {\ln (V / V ^ {*}) + (r _ {c} + \sigma_ {V} ^ {2} / 2) \tau_ {1}}{\sigma_ {\nu} \sqrt {\tau_ {1}}} \\ y = \frac {\ln (V / M) + \left(r _ {c} + \sigma_ {V} ^ {2} / 2\right) \tau_ {2}}{\sigma_ {v} \sqrt {\tau_ {2}}} \\ \rho = \sqrt {\tau_ {1} / \tau_ {2}}. (1 8. 4 0) \\ \end{array}
$$

Note that  $N_{2}(:,.,.)$  is the bivariate normal probability and reflects the likelihood of both events occurring. The two events are exercise of the compound option and exercise of the underlying option. The overall price of the compound option is (OP1) - (OP2) - (OP3).

## 18.5 Characteristics of Geske's Call on Call Option

Geske also provides the derivatives of the compound call price with respect to the underlying variables  $V, M, \tau_{2}, r_{c}, \sigma_{V}, X,$  and  $\tau_{1}$ . These illustrate some interesting results. For example,  $\frac{\partial c}{\partial M} < 0$ , meaning that increasing the firm's leverage, which raises the variance of the equity, then increases the value of the call; however, the larger debt value combined with a fixed value of the assets lowers the value of the equity, which is the dominant effect. This lowers the call price.

Another interesting result is that the volatility of the stock is not constant. Define

$$
V = B + S. \tag {18.41}
$$

Then the total differential of Equation (18.41) is

$$
d V = \left(\frac {\partial V}{\partial B}\right) d B + \left(\frac {\partial V}{\partial S}\right) d S. \tag {18.42}
$$

Holding  $dB$  to zero, we have  $dV = (\partial V / \partial S)dS$ . Then write the equation as

$$
\begin{array}{l} {\frac {d V}{V}} = {\frac {\left({\frac {\partial V}{\partial S}}\right) \left({\frac {d S}{V}}\right)}{S / S}} \\ = \left(\frac {\partial V}{\partial S}\right) \left(\frac {S}{V}\right) \left(\frac {d S}{S}\right). \tag {18.43} \\ \end{array}
$$

Thevolatilityof theasset return,  $\sigma_{\mathrm{V}}$  ,is,therefore,

$$
\sigma_ {V} = \left(\frac {\partial V}{\partial S}\right) \frac {S}{V} \sigma_ {S}, \tag {18.44}
$$

where  $\sigma_{S}$  is the volatility of  $dS / S$ . Turning this around, we have

$$
\sigma_ {S} = \sigma_ {V} \left(\frac {\partial S}{\partial V}\right) \frac {V}{S}. \tag {18.45}
$$

The stock volatility is, thus, seen as a function of the asset volatility and the firm's leverage, which is picked up in the elasticity factor,  $(\partial S / \partial V)(V / S)$ . The significance of this result is that the volatility of the stock, which is what we would usually insert into the Black-Scholes-Merton model to obtain the call price, is definitely not constant as the Black-Scholes-Merton model assumes. The volatility of the assets may well be constant, but the firm's leverage changes with any change in the market value of the equity relative to the market value of the assets.

The formulas for selected Greeks are provided in the appendix.

## 18.6 Geske's Call on Call Option Model and Linear Homogeneity

Geske goes on to show that the compound option is linearly homogeneous with respect to the value of the firm, the face value of the debt, and the exercise price and that the compound option value is convex in the value of the firm. He also shows that if there is no debt, meaning that  $M = 0$ , the model will converge to the Black-Scholes-Merton formula. This will also occur if the bond is a perpetuity or if the option expiration coincides with the bond maturity. In the latter case, the two exercise prices merge to  $M + X$ .

## 18.7 Generalized Compound Option Pricing Model

Rubinstein (1991) generalizes the Geske result to accommodate the other possible compound options: a call on a put, a put on a call, and a put on a put, as well as the case of a continuous payout on the assets of  $\delta$ . Brooks (2019) extends this generalized result to include a continuous payout on the underlying option of  $\hat{q}$ , which is not simply a trivial adjustment.

The generalized compound option pricing model, denoted  $co$ , is observed at time  $t$  under geometric Brownian motion based on an underlying instrument, denoted  $S_{t}$ . When compared to Geske's call on call model,  $S_{t}$  represents the firm value per share. The underlying option exercise price is denoted  $X_{U}$  and expires at time 2, denoted  $T_{2}$ . By comparison, the compound option exercise price is denoted  $X_{C}$  and expires at time 1 ( $T_{2} > T_{1}$ ). Mathematically, the generalized model can be expressed as

$$
\begin{array}{l} c o (S, t, T _ {1}, T _ {2}, \iota_ {C}, \iota_ {U}) = \iota_ {C} \iota_ {U} S _ {t} e ^ {- \delta \tau_ {2}} e ^ {\widehat {q} \tau_ {1 2}} N _ {2} (\iota_ {C} \iota_ {U} d _ {1 1}, \iota_ {U} d _ {1 2}; \iota_ {C} \rho) \\ - \iota_ {C} \iota_ {U} X _ {U} e ^ {- r _ {c} \tau_ {2}} e ^ {\hat {q} \tau_ {1 2}} N _ {2} \left(\iota_ {C} \iota_ {U} d _ {2 1}, \iota_ {U} d _ {2 2}; \iota_ {C} \rho\right) \\ - \iota_ {\mathrm {C}} X _ {\mathrm {C}} e ^ {- r _ {c} \tau_ {1}} N \left(\iota_ {\mathrm {C}} \iota_ {\mathrm {U}} d _ {2 1}\right), \tag {18.46} \\ \end{array}
$$

where indicator functions denote

$$
\iota_ {C} = \left\{ \begin{array}{l} + 1 \text {i f c o m p o u n d c a l l o p t i o n} \\ - 1 \text {i f c o m p o u n d p u t o p t i o n} \end{array} \right. \tag {18.47}
$$

$$
\iota_ {U} = \left\{ \begin{array}{l} + 1 \text {i f u n d e r l y i n g c a l l o p t i o n} \\ - 1 \text {i f u n d e r l y i n g p u t o p t i o n} \end{array} \right.. \tag {18.48}
$$

The bivariate cumulative standard normal distribution is denoted

$$
N _ {2} (a, b; \rho) \equiv \int_ {- \infty} ^ {a} \int_ {- \infty} ^ {b} \frac {\exp \left\{- \frac {z _ {1} ^ {2} - 2 \rho z _ {1} z _ {2} + z _ {2} ^ {2}}{2 (1 - \rho^ {2})} \right\}}{2 \pi \sqrt {1 - \rho^ {2}}} d z _ {1} d z _ {2}. \tag {18.49}
$$

The correlation coefficient used in the bivariate distribution is

$$
\rho = \sqrt {\frac {\tau_ {1}}{\tau_ {2}}}. \tag {18.50}
$$

Let  $S_{T_1}^*$  be defined such that the underlying option is at-the-money or

$$
\iota_ {U} S _ {T _ {1}} ^ {*} e ^ {- \delta \tau_ {1 2}} N _ {1} \left(\iota_ {U} d _ {1, T _ {1}, T _ {2}} ^ {*}\right) - \iota_ {U} X _ {U} e ^ {- r _ {c} \tau_ {1 2}} N _ {1} \left(\iota_ {U} d _ {2, T _ {1}, T _ {2}} ^ {*}\right) - X _ {C} = 0, \tag {18.51}
$$

where

$$
\begin{array}{l} d _ {2, T _ {1}, T _ {2}} ^ {*} = \frac {\ln \left(\frac {S _ {1} ^ {*}}{X _ {U}}\right) + \left(r _ {c} - \delta - \frac {\sigma^ {2}}{2}\right) \tau_ {1 2}}{\sigma \sqrt {\tau_ {1 2}}}, (18.52) \\ d _ {1, T _ {1}, T _ {2}} ^ {*} = \frac {\ln \left(\frac {S _ {1} ^ {*}}{X _ {U}}\right) + \left(r _ {c} - \delta + \frac {\sigma^ {2}}{2}\right) \tau_ {1 2}}{\sigma \sqrt {\tau_ {1 2}}} = d _ {2, T _ {1}, T _ {2}} ^ {*} + \sigma \sqrt {\tau_ {1 2}}, \text {a n d} (18.53) \\ N _ {1} (d) = \int_ {- \infty} ^ {d} \frac {e ^ {- \frac {x ^ {2}}{2}}}{\sqrt {2 \pi}} d x. (18.54) \\ \end{array}
$$

Let  $d_{ij}$  denote the upper limits used in the bivariate normal cumulative distribution function given in Equation (18.49), where  $i = 1,2$  denotes whether the volatility term is added ( $i = 1$ ) or subtracted ( $i = 2$ ) and  $j = 1,2$  denotes whether the evaluation is  $S^*$  at  $T_1$  ( $j = 1$ ) or  $X_U$  at  $T_2$  ( $j = 2$ ). We define

$$
d _ {2 1} \equiv \frac {\ln \left(\frac {S _ {t}}{S _ {1} ^ {*}}\right) + \left(r _ {c} - \delta - \frac {\sigma^ {2}}{2}\right) \tau_ {1}}{\sigma \sqrt {\tau_ {1}}}, \tag {18.55}
$$

$$
d _ {1 1} \equiv \frac {\ln \left(\frac {S _ {t}}{S _ {1} ^ {*}}\right) + \left(r _ {c} - \delta + \frac {\sigma^ {2}}{2}\right) \tau_ {1}}{\sigma \sqrt {\tau_ {1}}} = d _ {2 1} + \sigma \sqrt {\tau_ {1}}, \tag {18.56}
$$

$$
d _ {2 2} \equiv \frac {\ln \left(\frac {S _ {t}}{X _ {U}}\right) + \left(r _ {c} - \delta - \frac {\sigma^ {2}}{2}\right) \tau_ {2}}{\sigma \sqrt {\tau_ {2}}}, \text {a n d} \tag {18.57}
$$

$$
d _ {1 2} \equiv \frac {\ln \left(\frac {S _ {t}}{X _ {U}}\right) + \left(r _ {c} - \delta + \frac {\sigma^ {2}}{2}\right) \tau_ {2}}{\sigma \sqrt {\tau_ {2}}} = d _ {2 2} + \sigma \sqrt {\tau_ {2}}. \tag {18.58}
$$

Extending Merton (1974), Geske (1977, 1984) has adapted his compound option pricing model to the case of coupon paying corporate bonds. Most important, however, Roll (1977) and Whaley (1981) have used the compound option model to obtain a closed-form solution for the price of an American call, and we cover this topic in Chapter 19.

## 18.8 Installment Options

A variation of the compound option is the installment option. This is an option in which the premium is spread out in equal amounts over time. At each installment date, the holder of the option decides whether to exercise it, thereby paying the installment premium and continuing with the option. If the holder prefers not to continue, they simply fail to pay the installment. The option then terminates. $^{11}$  This instrument is very much like the compound option except that there are typically several installments, necessitating a more complex option pricing model requiring the evaluation of higher-order multivariate normal probability distributions. Also, the installments, which correspond to the exercise prices of the multiple underlying options, are usually all equal. Solving the pricing equation is quite difficult and usually requires a numerical iterative solution. The installment option permits the holder to change their mind later and get out of the contract by simply failing to pay later installments. All previously paid installments are, of course, forgone.

Finally, it should be noted that a bond or loan with multiple payments is somewhat like an installment option. At each payment date, the borrower decides whether to pay off, which is like deciding to make an installment payment. For more information, see Merton (1974) and Geske (1977, 1984). Once default occurs, the sequence of installment payments ends.

## 18.9 Recap and Preview

In this chapter, we examined compound options, which are useful in helping us to understand how the stock of a company is actually an option itself, where the underlying is the assets of the firm.

In Chapter 19, we get into American option pricing in continuous time, where the use of a compound option will be very helpful.

## APPENDIX 18A: Selected Greeks of the Compound Option

The compound option delta with respect to the underlying instrument is

$$
\Delta_{co} \equiv \frac{\partial co}{\partial S} = \iota_{C} \iota_{U} e^{-\hat{q} \tau_{1}} e^{-\delta \tau_{12}} N_{2} \left(\iota_{C} \iota_{U} d_{11}, \iota_{U} d_{12}; \iota_{C} \rho\right), \tag{18.59}
$$

and the underlying option, which has a price of  $o$ , has a delta with respect to the underlying instrument,  $S$ , is

$$
\Delta_{o} \equiv \frac{\partial o}{\partial S} = \iota_{U} e^{-(\delta - \hat{q}) \tau_{2}} N_{1} (\iota_{U} d_{1}). \tag{18.60}
$$

The compound option gamma with respect to the underlying instrument,  $S$ , is

$$
\Gamma_{co} \equiv \frac{\partial^{2} co}{\partial S^{2}} = \frac{e^{-\hat{q} \tau_{1}} e^{-\delta \tau_{12}}}{S_{t}} \left[ \begin{array}{l} N_{1} \left(\iota_{U} \frac{d_{12} - \rho d_{11}}{\sqrt{1 - \rho^{2}}}\right) \frac{n_{1} (d_{11})}{\sigma \sqrt{\tau_{1}}} \\ + \iota_{C} N_{1} \left(\iota_{C} \iota_{U} \frac{d_{11} - \rho d_{12}}{\sqrt{1 - \rho^{2}}}\right) \frac{n_{1} (d_{12})}{\sigma \sqrt{\tau_{2}}} \end{array} \right], \tag{18.61}
$$

and the underlying option gamma with respect to the underlying instrument,  $S$ , is

$$
\Gamma_{o} \equiv \frac{\partial^{2} o}{\partial S^{2}} = \frac{e^{-(\delta - \hat{q}) \tau_{2}} n_{1} (d_{1})}{S_{t} \sigma \sqrt{\tau_{2}}}. \tag{18.62}
$$

The compound option theta is

$$
\begin{array}{l} \Theta_{co} \equiv \frac{\partial co}{\partial t} = -\frac{\sigma^{2}}{2} S_{t} e^{-\hat{q} \tau_{1}} e^{-\delta \tau_{12}} \left[ \begin{array}{l} N_{1} \left(\iota_{U} \frac{d_{12} - \rho d_{11}}{\sqrt{1 - \rho^{2}}}\right) \frac{n_{1} (d_{11})}{\sigma \sqrt{\tau_{1}}} \\ - \iota_{C} N_{1} \left(\iota_{C} \iota_{U} \frac{d_{11} - \rho d_{12}}{\sqrt{1 - \rho^{2}}}\right) \frac{n_{1} (d_{12})}{\sigma \sqrt{\tau_{2}}} \end{array} \right] \\ + \iota_{C} \iota_{U} \hat{q} S_{t} e^{-\hat{q} \tau_{1}} e^{-\delta \tau_{12}} N_{2} \left(\iota_{C} \iota_{U} d_{11}, \iota_{U} d_{12}; \iota_{C} \rho\right) \\ - \iota_{C} \iota_{U} r_{c} e^{-r_{c} \tau_{2}} X_{U} N_{2} \left(\iota_{C} \iota_{U} d_{21}, \iota_{U} d_{22}; \iota_{C} \rho\right) - \iota_{C} r_{c} e^{-r_{c} \tau_{1}} B_{t, T_{1}, r} X_{C} N_{1} \left(\iota_{C} d_{21}\right), \tag{18.63} \\ \end{array}
$$

and the underlying option theta is

$$
\begin{array}{l} \Theta_{o} \equiv \frac{\partial o}{\partial t} = \iota_{U} (\delta - \hat{q}) S_{t} e^{-(\delta - \hat{q}) \tau_{2}} N (\iota_{U} d_{1}) \\ - \iota_{U} (r - \hat{q}) X e^{-(r - \hat{q}) \tau_{2}} N (\iota_{U} d_{2}) - \frac{\sigma S_{t} e^{-(\delta - \hat{q}) \tau_{2}}}{2} n (d_{1}). \tag{18.64} \\ \end{array}
$$



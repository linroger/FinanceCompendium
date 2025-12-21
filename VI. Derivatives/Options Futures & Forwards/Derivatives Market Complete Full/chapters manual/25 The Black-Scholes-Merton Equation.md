---
title: "The Black-Scholes-Merton Equation"
parent_directory: "Derivatives Market Complete Full"
formatted: "2025-12-21 02:25:00 AM"
formatter_model: "kimi-k2-turbo"
cli-tool: "claude-code"
primary_tags:
  - black-scholes equation
  - risk-neutral pricing
  - geometric brownian motion
secondary_tags:
  - ito's lemma
  - delta hedging
  - option pricing
  - brownian motion
  - merton model
  - partial differential equations
  - stochastic calculus
  - jump diffusion
cssclasses: academia
---

# The Black-Scholes-Merton Equation

In deriving the option pricing formula, Black and Scholes studied the problem faced by a delta-hedging market-maker. The market-maker who sells a call option buys shares to offset the risk of the written call. To analyze this situation it is necessary to characterize the risk of the position as a function of the share price. Ito's Lemma provides a tool that permits us to see how the option price changes in response to the stock price.

Black and Scholes assumed that the stock follows geometric Brownian motion and used Itô's Lemma to describe the behavior of the option price. Their analysis yields a partial differential equation, which the correct option pricing formula must satisfy.

In this chapter we study the Black-Scholes approach to pricing options. This methodology is important not only for pricing European call options; it provides the intellectual foundation for pricing virtually all derivatives, and also underpins the risk-management practices of modern financial institutions.

## I. Differential Equations and Valuation Under Certainty

The end result of the Black-Scholes derivation is a partial differential equation that describes the price of an option. At first glance the idea of using a differential equation to perform valuation may seem perplexing and special to options. However, differential equations can also be used to motivate even very simple calculations that appear in an elementary finance course. The valuation of stocks and bonds when payouts are known provides simple examples. We will demonstrate this in order to provide some context for the discussion of the Black-Scholes model.

## The Valuation Equation

A familiar equation from introductory finance is the following:

$$
S(t) = \frac{D(t + h)h + S(t + h)}{(1 + r_h)} \tag{1}
$$

This equation says that the stock price today,  $S(t)$ , is the discounted value of the future stock price,  $S(t + h)$ , plus dividends paid over the period of length  $h$ ,  $D(t + h)h$ . The discount rate over a period of length  $h$  is  $r_h$ . We can also interpret  $S(t)$  as the price of a bond and  $D(t)$  as the coupon payment.

Whatever the interpretation, we can write

$$
\underbrace {S (t + h) - S (t)} _ {\text {C h a n g e i n s t o c k p r i c e}} + \underbrace {D (t + h) h} _ {\text {C a s h p a y o u t}} = \underbrace {r _ {h} S (t)} _ {\text {R e t u r n o n s t o c k}} \tag {2}
$$

Written in this form, the equation says that the change in the stock price plus cash payouts (such as dividends) equals the return on the stock. Equation (2) is written to emphasize how the stock price should evolve over time, rather than the value of the stock at a point in time.

Dividing by  $h$  and letting  $h \to 0$  in equation (2), we obtain

$$
\frac {d S (t)}{d t} + D (t) = r S (t) \tag {3}
$$

Equation (3) is a differential equation stating the condition that the stock must appreciate to earn an appropriate rate of return. The transformation from equation (1) to equation (3) illustrates the sense in which an equation describing the evolution of the price is linked to valuation.

## Bonds

Let  $S(t)$  represent the price of a zero-coupon bond that pays \$1 at time  $T$ . Since the bond makes no payouts, the evolution of the bond price satisfies equation (3) with  $D = 0$ . The interpretation is that at every time,  $t$ , the percentage change in the price of the bond  $\left[\frac{dS(t)}{dt} / S(t)\right]$  equals the interest rate. This is a familiar condition that the bond should satisfy if it is fairly priced. The general solution to this equation is

$$
S (t) = A e ^ {- r (T - t)} \tag {4}
$$ where  $A$  can be any number. You can check that this is in fact a solution by differentiating it to be sure that it satisfies the differential equation.


The differential equation describes the bond's behavior over time but does not tell us what  $A$  is. In order to price the bond we also need to know the bond price at some particular point in time. This price is called a boundary condition. If the bond is worth \$1 at maturity, we have the boundary condition  $S(T) = \$1$ . Examining equation (4) shows that  $S(T)$  can equal \$1 only if  $A = \$1$ . Thus, the bond price is

$$

S (t) = \$ 1 \times e ^ {- r (T - t)}

$$

The condition  $S(T) = \$ 1$  is called a terminal boundary condition because it sets the bond price at its maturity date. If instead we knew the bond price today,  $S(0)$ , we could set  $A$  so that the equation gave the correct value for  $S(0)$ . That value would be an initial boundary condition.

The solution confirms what you already know: The price of the bond is the present value of 1.

## Dividend-Paying Stocks

We can interpret  $S(t)$  as the price of a risk-free stock that pays a continuous fixed dividend of  $D$  and has a price of  $\bar{S}$  at time  $T$ . Equation (3) then says that at every time,  $t$ , dividends plus capital gains on the stock provide the risk-free rate of return.

Since we know the value at time  $T$  will be  $\bar{S}$ , we also have the boundary condition

$$
S(T) = \bar{S}
$$

Equation (3) with this boundary condition has the solution

$$
S(t) = \int_{t}^{T} D e^{-r(s - t)} ds + \bar{S} e^{-r(T - t)}
$$

The stock price today is the discounted value of dividends to be paid between now and time  $T$ , plus the present value of the stock at time  $T$ . Again, the discrete time version of this equation is the standard present value formula taught in every introductory finance class.

## The General Structure

Under certainty, a bond or stock will be priced so that the owner receives a risk-free return. The differential equation in these examples describes how the security changes from a given point. The boundary condition describes the price at some point in the security's life (such as at a bond's maturity date). By combining the differential equation and the boundary condition, we can determine the price of the bond at any point in time.

By analogy, if at every point you know an automobile's speed and direction, and if you know where it stops, you can work backward to figure out where it started. Essentially the same idea is used to price options: We know the price of the option at maturity (for a call it is  $\max [0,S - K]$ ), and we then need to know how the option price changes over time.

## 2. The Black-Scholes Equation

Consider the problem of owning an option and buying or selling enough shares to create a riskless position. Assume that the stock price follows geometric Brownian motion:

$$
\frac{dS}{S} = (\alpha - \delta) dt + \sigma dZ \tag{5}
$$ where  $\alpha$  is the expected return on the stock,  $\sigma$  is the stock's volatility, and  $\delta$  is the continuous dividend yield on the stock. The option value depends on the stock price,  $S(t)$ , and time,  $t$ , so we write it as  $V[S(t), t]$ . Also suppose there are risk-free bonds that pay the return  $r$ . If we invest  $W$  in these bonds, the change in the value of the bond position is

$$ dW = r W dt \tag{6}
$$

Let  $I$  denote the total investment in the option, stocks, and the risk-free bond. Suppose that we buy  $N$  shares of stock to hedge the option and invest  $W$  in risk-free bonds so that our total investment is zero. Then we have

$$
I = V(S, t) + N S + W = 0 \tag{7}
$$

The zero-investment condition ensures that we keep track of financing costs. It imposes the requirement that in order to buy more of one asset we have to sell something else. To buy stock, for example, we can short-sell bonds.

Applying Itô's Lemma to equation (7), we have

$$
\begin{array}{l} d I = d V + N (d S + \delta S d t) + d W \\ = V _ {t} d t + V _ {S} d S + \frac {1}{2} \sigma^ {2} S ^ {2} V _ {S S} d t + N (d S + \delta S d t) + r W d t \tag {8} \\ \end{array}
$$

If we own the physical stock, we receive dividends; this accounts for the  $N\delta Sdt$  term.

We delta-hedge the position to eliminate risk. The option's delta  $(\Delta)$  is  $V_{S}$ . We delta-hedge by setting

$$
N = - V _ {S}
$$

Holding this number of shares has two results. First, the  $dS$  and, hence,  $dZ$  terms in equation (8) vanish, so the portfolio is no longer affected by changes in the stock price—the portfolio is risk-free. Second, because we are also maintaining zero investment (equation (7)) our holding of bonds is whatever is necessary to finance the net purchase or sale of the option and the hedging position in stock:

$$
W = V _ {S} S - V \tag {9}
$$

Substituting  $N = -V_{S}$  and this expression for  $W$  into equation (8) gives

$$ d I = V _ {t} d t + \frac {1}{2} \sigma^ {2} S ^ {2} V _ {S S} d t - V _ {S} \delta S d t + r (V _ {S} S - V) d t \tag {10}
$$

With a zero-investment, zero-risk portfolio, we should expect to earn a zero return or else there is arbitrage, so that  $dI = 0$ . Imposing this condition in equation (10) and dividing by  $dt$  gives

$$
\boxed{V_t + \frac{1}{2} \sigma^{2} S^{2} V_{SS} + (r - \delta) S V_{S} - r V = 0} \tag{11}
$$

This is the famous Black-Scholes partial differential equation (PDE), which we will call the Black-Scholes equation.4 (We will refer to the formula giving us the price of a European call as the Black-Scholes formula.) Appendix A derives the generalization of equation (11) when the value of  $V$  depends on more than one underlying asset.

The significance of equation (11) is that the price of an option must satisfy this equation, or else there is an arbitrage opportunity. The delta, gamma, and theta of a fairly priced option has to be related in a certain way. Since  $V_{SS}$  is the option's gamma,  $V_{S}$  the option's delta, and  $V_{t}$  the option's theta, equation (11) describes the same relationship among the Greeks.

We started this discussion by supposing that we owned an option that we wished to delta-hedge. Nothing in the derivation uses the fact that  $V$  is the price of a call option or indeed any particular kind of option at all. Thus, equation (11) describes the change in value of any contingent claim for which the underlying assumptions are met. To be sure, we have assumed a great deal: That (a) the underlying asset follows geometric Brownian motion with constant volatility, (b) the underlying asset pays a continuous proportional dividend at the rate  $\delta$  (this can be zero), (c) the contingent claim itself pays no dividend and has a payoff depending on  $S$ , (d) the interest rate is fixed, with equal borrowing and lending rates, and (e) there are no transaction costs.

These assumptions are unquestionably violated in practice. There are transaction costs, volatility and interest rates change over time, asset prices can jump, etc. However, our goal is to have a thorough understanding of how derivatives pricing and hedging works in this basic setting. This is a starting point for developing more realistic models.

## Verifying the Formula for a Derivative

We can now answer the main question of option pricing: Given that asset prices follow geometric Brownian motion (equation (5)), what is the correct formula for the price of an option? As discussed in Section 1, there are two conditions. The pricing formula must satisfy the Black-Scholes equation, (11), and it must also satisfy the appropriate boundary conditions for the option. If we satisfy both conditions, we have the correct option price.

Several nonstandard option formulas solve the Black-Scholes equation. The pricing formulas seem different, but they differ only in the boundary conditions. Here, we discuss several particular solutions in order to convey the basic idea of how the Black-Scholes equation works.

Simple Present Value Calculations. Let's begin by considering two familiar calculations: the price of a zero-coupon bond and the prepaid forward contract for a stock.

Suppose the bond matures at time  $T$  and pays \$1. The boundary condition is that it must be worth \$1 at time  $T$ . In addition, it must satisfy the Black-Scholes equation, equation (11). Consider this formula for the price of the bond:

$$
V ^ {1} (t, T) = e ^ {- r (T - t)} \tag {12}
$$

First, this satisfies the boundary condition since  $V^{1}(T,T) = \$ 1$ . Second, the price of the bond does not depend on the price of a stock. Thus,  $V_{S} = 0$  and  $V_{SS} = 0$ . Equation (11) then becomes

$$
V _ {t} ^ {1} = r V ^ {1}
$$

Equation (12) satisfies this equation, with the boundary condition  $V^{1}(T,T) = \$ 1$ .

Now consider the prepaid forward contract for a share of stock. We know the value is

$$
V ^ {2} [ S (t), t ] = S (t) e ^ {- \delta (T - t)} \tag {13}
$$

Since this contract pays a share at maturity, the boundary condition is that it is worth a share at maturity:

$$
V ^ {2} [ S (T), T ] = S (T)
$$

We will verify that equation (13) solves the Black-Scholes equation. We have

$$
V _ {S} ^ {2} = e ^ {- \delta (T - t)}
$$

$$
V _ {S S} ^ {2} = 0
$$

$$
S(t) = \$1 \times e^{-r(T - t)}
$$

Substituting these into the Black-Scholes equation gives

$$
\frac {1}{2} \sigma^ {2} S (t) ^ {2} \times 0 + (r - \delta) S (t) \times e ^ {- \delta (T - t)} + \delta S (t) e ^ {- \delta (T - t)} - r S (t) e ^ {- \delta (T - t)} = 0
$$

Equation (13) thus satisfies the Black-Scholes equation and the boundary condition.

Notice that for both claims,  $V_{SS} = 0$ ; their gamma is zero. We can replicate a prepaid forward by buying a tailed position in the stock. No further trading is necessary. This static hedging strategy works because gamma is zero.

Call Option. A European call option has the boundary condition

$$
V [ S (T), T ] = \max  [ 0, S (T) - K ] \tag {14}
$$

Let's verify that the Black-Scholes formula does satisfy the boundary condition. We can examine the behavior of the formula as  $t$  approaches  $T$ , the option expiration date. The value of the call is

$$
S e ^ {- \delta (T - t)} N \left(d _ {1}\right) - K e ^ {- r (T - t)} N \left(d _ {2}\right)
$$

For an option at expiration, since  $t = T$ , the terms  $e^{-\delta (T - t)}$  and  $e^{-r(T - t)}$  are both equal to 1. What happens to  $N(d_{1})$  and  $N(d_{2})$ ?

We will rewrite slightly the definitions of  $d_{1}$  and  $d_{2}$ :

$$ d _ {1} = \frac {\ln (S / K)}{\sigma \sqrt {T - t}} + \left(r - \delta + \frac {1}{2} \sigma^ {2}\right) \frac {\sqrt {T - t}}{\sigma}
$$

$$ d _ {2} = d _ {1} - \sigma \sqrt {T - t}
$$

As  $t$  approaches  $T$ , the difference between  $d_{1}$  and  $d_{2}$  goes to zero, since the term  $-\sigma \sqrt{T - t}$  goes to zero. Moreover, the term  $(r - \delta + \frac{1}{2}\sigma^{2})\sqrt{T - t}$  also goes to zero. Thus, both  $d_{1}$  and  $d_{2}$  are governed by the term  $\ln(S / K) / \sigma \sqrt{T - t}$ .

If  $S > K$ , then the option is in-the-money and  $\ln(S / K) > 0$ . If  $S < K$ , the option is out-of-the-money and  $\ln(S / K) < 0$ . Thus, as  $t \to T$ , we have

$$
S > K \Rightarrow \ln (S / K) > 0 \Rightarrow \frac {\ln (S / K)}{\sigma \sqrt {T - t}} \rightarrow + \infty \Rightarrow N (d _ {1}) = N (d _ {2}) = 1
$$

$$
S <   K \Rightarrow \ln (S / K) <   0 \Rightarrow \frac {\ln (S / K)}{\sigma \sqrt {T - t}} \rightarrow - \infty \Rightarrow N (d _ {1}) = N (d _ {2}) = 0
$$

Thus, at expiration the Black-Scholes formula for a call equals  $S - K$  if  $S > K$ , and 0 if  $S < K$ , so it satisfies the boundary condition, equation (14). The call formula also satisfies equation (11), but we will not verify that here.

Puts can be analyzed just like calls. European puts have the boundary condition

$$
V [ S (T), T ] = \max  [ 0, K - S (T) ]
$$

The put formula contains  $N(-d_1)$  and  $N(-d_2)$ ; as a result, the  $N()$  expressions at maturity equal 1 when  $S < K$ , and 0 when  $S > K$ .

All-Or-Nothing Options. Both terms in the Black-Scholes formula individually satisfy the Black-Scholes equation. Consequently, each of the two expressions

$$
V ^ {3} [ S (t), t ] = e ^ {- \delta (T - t)} S \times N \left(\frac {\ln [ S (t) / K ] + [ r - \delta + 0 . 5 \sigma^ {2} ] [ T - t ]}{\sigma \sqrt {T - t}}\right) \tag {15}
$$

$$
V ^ {4} [ S (t), t ] = e ^ {- r (T - t)} \times N \left(\frac {\ln [ S (t) / K ] + [ r - \delta - 0 . 5 \sigma^ {2} ] [ T - t ]}{\sigma \sqrt {T - t}}\right) \tag {16}
$$ on its own is a legitimate price of a derivative. What are they the prices of?


An asset-or-nothing option pays one share of stock if  $S(T) > K$ , and nothing otherwise. Examine  $V^3$  closely. We have  $V^3 [S(T), T] = 0$  if  $S(T) < K$ , and  $V^3 [S(T), T] = S(T)$  if  $S(T) > K$ . Thus, at time  $T$ ,  $V^3$  has the same value as an asset-or-nothing option. Moreover, because  $V^3$  satisfies the Black-Scholes equation, it gives the correct value at time  $t$  for this payoff. Thus,  $V^3$  is the value of an asset-or-nothing option.

A cash-or-nothing option pays \$1 at time  $T$  if  $S(T) > K$ , and nothing otherwise. $^{8}$  Equation (16) has the same value at maturity as a cash-or-nothing option and satisfies the Black-Scholes equation. Thus, equation (16) gives us the time- $t$  value of a cash-or-nothing option. Both asset-or-nothing and cash-or-nothing options are examples of all-or-nothing options, which pay a discrete amount or nothing.

A European call option is equivalent to buying one asset-or-nothing option and selling  $K$  cash-or-nothing options, both maturing at time  $T$ . The price of a European call is the cost of this strategy:

$$

V ^ {3} [ S (t), t ] - K \times V ^ {4} [ S (t), t ]

$$

You should verify that this is in fact the Black-Scholes formula. (See Problem 7.)

The fact that  $V^3$  and  $V^4$  solve the Black-Scholes equation gives us pricing formulas for two new derivatives, asset-or-nothing and cash-or-nothing options. Also, however, because  $V^4$  by itself solves the Black-Scholes equation, we could have sold any number of cash-or-nothing options and still had a valid price for a derivative claim. In order to create a standard call, we buy one asset-or-nothing option and sell  $K$  cash-or-nothing options. However, suppose we had instead sold  $0.5K$  cash-or-nothing options. The resulting claim would have paid  $S(T) - 0.5K$  if  $S(T) > K$  and 0 otherwise. This is a gap option.


The boundary conditions we have considered thus far are all terminal boundary conditions, meaning that they are satisfied by an option at expiration. American options and some nonstandard options have a boundary condition that must be satisfied prior to expiration. For example, barrier options have boundary conditions prior to expiration related to knocking in or out. Nevertheless, their price still solves equation (11).

## The Black-Scholes Equation and Equilibrium Returns

In the foregoing derivation of the option pricing formula we required that a delta-hedged position earn the risk-free rate of return. A different approach to pricing an option is to impose the condition that the actual expected return on the option must equal the equilibrium expected return.[10] In the context of the binomial model, the expected return on the option changes as the option moves into or out of the money.

We can decompose the return on the option into expected and unexpected components. Using Ito's Lemma, we have

$$ d V = \underbrace {\left[ \frac {1}{2} \sigma^ {2} S ^ {2} V _ {S S} + (\alpha - \delta) S V _ {S} + V _ {t} \right] d t} _ {\text {E x p e c t e d r e t u r n}} + \underbrace {S V _ {S} \sigma d Z} _ {\text {U n e x p e c t e d r e t u r n}}
$$

Thus, the instantaneous expected return on the option is

$$
\begin{array}{l} \frac {1}{d t} \frac {E (d V)}{V} = \frac {1}{d t} \frac {\left[ \frac {1}{2} \sigma^ {2} S ^ {2} V _ {S S} + (\alpha - \delta) S V _ {S} + V _ {t} \right] d t}{V} \tag {17} \\ \equiv \alpha_ {\mathrm {o p t i o n}} \\ \end{array}
$$

The unexpected portion of the return is

$$
\begin{array}{l} \frac {E (d V)}{V} - \frac {d V}{V} = \frac {S V _ {S}}{V} \sigma d Z (18) \\ \equiv \sigma_ {\text {o p t i o n}} d Z (19) \\ \end{array}
$$

In interpreting this expression, recall that  $SV_{S} / V$  is the option's elasticity,  $\Omega$ . Thus, we have

$$
\sigma_ {\text {o p t i o n}} = | \Omega | \sigma \tag {20}
$$

Two assets with returns generated by the same  $dZ$  must have the same Sharpe ratio. Thus, we have

$$
\frac {\alpha - r}{\sigma} = \frac {\alpha_ {\text {o p t i o n}} - r}{\sigma_ {\text {o p t i o n}}} \tag {21}
$$

Using equation (20), we can rewrite equation (21) to give

$$
\alpha_ {\text {o p t i o n}} - r = \frac {S V _ {S}}{V} (\alpha - r) \tag {22}
$$

In words, the risk premium on the option is the risk premium on the stock times the option elasticity. We can interpret equation (22) as stating an equilibrium condition that the option must obey. In other words, if we view the option as just another asset, it must be priced so that its expected return is related to the expected return on the stock in a particular way.

Using equation (17), substitute for  $\alpha_{\mathrm{option}}$  in equation (22). This gives

$$
\frac {1}{d t} \frac {\left[ \frac {1}{2} \sigma^ {2} S ^ {2} V _ {S S} + (\alpha - \delta) S V _ {S} + V _ {t} \right] d t}{V} - r = \frac {S V _ {S}}{V} (\alpha - r) \tag {23}
$$

When we multiply both sides by  $V$  and rearrange terms, the expected return on the stock,  $\alpha$ , vanishes: We once again obtain the Black-Scholes PDE, equation (11). Thus, an interpretation of the Black-Scholes equation is that the option is priced so as to earn its equilibrium expected return.

When we equate expected and actual returns, we can interpret the result as giving us a fair price for the option, as opposed to a no-arbitrage price. This is equilibrium pricing. The no-arbitrage and equilibrium prices are the same. The equilibrium approach makes clear that determining a fair price for the option using the Black-Scholes equation does not depend upon the assumption that hedging is actually possible.

## What If the Underlying Asset Is Not an Investment Asset?

So far we have been discussing option pricing when the underlying asset is an investment asset, meaning that the asset is priced so as to be held by investors. Stocks and bonds are investment assets, but many commodities are not. Suppose that widgets generate no dividends, and that the price of widgets,  $S$ , follows the process

$$
\frac {d S}{S} = \mu d t + \sigma d Z \tag {24}
$$

From this equation, widget price risk is generated by the term  $dZ$ . Let  $\phi$  represent the Sharpe ratio associated with  $dZ$  and let  $\hat{\alpha}$  represent the expected return for an asset with  $\sigma dZ$  risk. Since the Sharpe ratio is  $\phi = (\hat{\alpha} - r) / \sigma$ , we have

$$
\hat {\alpha} = r + \sigma \phi
$$

The important characteristic of an investment asset is that  $\mu = \hat{\alpha}$ . What happens if an asset is not an investment asset and  $\mu < \hat{\alpha}$ ?

Consider again equation (20), which says that the expected return on the option equals the actual return on the option. When we derive this equation again using  $\hat{\alpha}$  as the equilibrium expected return for an asset with risk  $dZ$  and  $\mu$  as the actual expected return for widgets, we obtain

$$
\frac {V _ {t} + \frac {1}{2} \sigma^ {2} S ^ {2} V _ {S S} + \mu S V _ {S}}{V} - r = \frac {S V _ {S}}{V} (\hat {\alpha} - r) \tag {25}
$$

Rearranging this equation, we obtain

$$
V _ {t} + \frac {1}{2} \sigma^ {2} S ^ {2} V _ {S S} + [ r - (\hat {\alpha} - \mu) ] S V _ {S} - r V = 0 \tag {26}
$$

If you compare equation (26) with (11), the dividend yield,  $\delta$ , has been replaced with  $\hat{\alpha} - \mu$ , the difference between the equilibrium expected return and the actual expected return on noninvestment widgets.[11]

Let  $\hat{\delta} = \hat{\alpha} - \mu$ . We can interpret  $\hat{\delta}$  as follows:  $\mu$  is the return you get from holding a widget and  $\hat{\alpha}$  is the return you must expect if you are to voluntarily hold a widget. Thus, in order for you to hold a widget you would need an additional return of  $\hat{\delta} = \hat{\alpha} - \mu$ . Given the expected widget price change,  $\mu$ , the only way to receive the extra return is through a dividend. This is the reason that  $\hat{\alpha} - \mu$  replaces the dividend yield in the Black-Scholes equation.

We have encountered this concept before:  $\hat{\delta}$  is the lease rate for the widget, or more generally the lease rate for an asset with expected capital gain  $\mu$  and risk  $\sigma dZ$ . When you lend a commodity, you receive its capital gains. The lease rate is the extra income you need to make you willing to buy and lend the asset. In the same way,  $\hat{\delta}$  is the extra income you need to make you willing to hold a widget as an investment asset.

In practice, a widget-linked bond could be used to hedge the risk of a widget option. If the widget bond were constructed so that its price equalled the widget price today and at maturity, the bond would pay the widget lease rate as a coupon. This coupon, being a cash payment on the underlying asset, would play the role in the option pricing formula of a dividend on the underlying asset. This idea of a hypothetical lease-rate-paying, widget-linked security is also like a twin security. It provides an investment vehicle for owning the risk  $dZ$ . If such a twin security existed, we could use it to hedge the risk of the option, and its dividend yield,  $\hat{\delta}$ , would appear in the option price.

An equivalent way to write equation (26) is to replace  $\hat{\alpha}$  with  $r + \phi \sigma$ . We then obtain

$$
\boxed {V _ {t} + \frac {1}{2} \sigma^ {2} S ^ {2} V _ {S S} + (\mu - \phi \sigma) S V _ {S} - r V = 0} \tag {27}
$$

In this version, the coefficient on the  $SV_{S}$  term is the drift on the widget less the risk premium appropriate for widgets.

Note that when the asset is an investment asset,  $\hat{\alpha} = \alpha$  and  $\mu = \alpha -\delta = r + \phi \sigma -\delta$ . Both equations (26) and (27) reduce to equation (11).

To summarize, the Black-Scholes PDE, equation (11), also characterizes derivative prices for assets that are not investment assets. In the case of an asset that is not an investment asset, the dividend yield,  $\delta$ , is replaced with the lease rate of the asset,  $\hat{\delta}$ .

Example 1. To see how to use equation (26), suppose we have an option for which the maturity payoff is based upon the stock price raised to a power,  $S^a$ . This type of option is called a power option. For example, we could have a call option with a payoff of

$$
\max  \left(S ^ {a} - K ^ {a}, 0\right)
$$

The lease rate on an asset paying  $S^a$  is  $\delta^{*} = r - a(r - \delta) - \frac{1}{2} a(a - 1)\sigma^{2}$ . From Ito's Lemma, the volatility is  $a\sigma$ . Thus, using equation (26), we can price the option by using  $S^a$  as the stock price,  $K^a$  as the strike price,  $\delta^{*}$  as the dividend yield, and  $a\sigma$  as the volatility.

## 3. Risk-Neutral Pricing

The expected return on the stock,  $\alpha$ , does not appear in the Black-Scholes equation, equation (11). Thus, when pricing derivatives on investment assets, only the risk-free rate matters; the actual expected return on a stock is irrelevant for pricing an option on the stock. The binomial pricing formula also depends only on the risk-free rate.

This observation led Cox and Ross (1976) to the following important observation: Because only the risk-free rate appears in the Black-Scholes PDE, it must be consistent with any possible world in which there is no arbitrage. If we are trying to value an option, we can assume that we are in the world in which it is easiest to value the option. Valuation will be easiest in a risk-neutral world, in which (if it actually existed) all assets would earn the risk-free rate of return and we would discount expected future cash flows at the risk-free rate. Thus, we can value options and other derivative claims by assuming that the stock earns the risk-free rate of return and calculate values based on that premise. We assume that the stock in this world follows the process

$$
\frac {d S}{S} = (r - \delta) d t + \sigma d \tilde {Z} \tag {28}
$$

As we keep emphasizing, the risk-neutral distribution is not an assumption about investor risk preferences. It is a device that can be used when pricing by arbitrage is possible (see Appendix B for a discussion).

## Interpreting the Black-Scholes Equation

The actual expected change in the option price is given by

$$
\frac {1}{d t} \mathrm {E} _ {t} (d V) = V _ {t} + \frac {1}{2} \sigma^ {2} S ^ {2} V _ {S S} + (\alpha - \delta) S V _ {S} \tag {29}
$$

Let  $\mathrm{E}^*$  represent the expectation with respect to the risk-neutral distribution. Under the risk-neutral distribution, the expected change in the stock price is  $\mathrm{E}^*(dS) = (r - \delta)dt$ . The drift in the option price can thus be written

$$
\frac {1}{d t} \mathrm {E} _ {t} ^ {*} (d V) = V _ {t} + \frac {1}{2} \sigma^ {2} S ^ {2} V _ {S S} + (r - \delta) S V _ {S} \tag {30}
$$

The Black-Scholes equation, (11), can therefore be rewritten as

$$
\frac {1}{d t} \mathrm {E} _ {t} ^ {*} (d V) = r V \tag {31}
$$

Under the risk-neutral process, the option appreciates on average at the risk-free rate.

## The Backward Equation

Closely related to equation (31) are the following equations, which characterize both the actual and risk-neutral probability distributions:

$$
\frac {1}{d t} \mathrm {E} _ {t} (d V) = 0 \tag {32}
$$

$$
\frac {1}{d t} \mathrm {E} _ {t} ^ {*} (d V) = 0 \tag {33}
$$

For the risk-neutral process, equation (33) is

$$
V _ {t} + \frac {1}{2} \sigma^ {2} S ^ {2} V _ {S S} + (r - \delta) S V _ {S} = 0 \tag {34}
$$

Equation (34) is called the Kolmogorov backward equation for the geometric Brownian motion process given by equation (28). Whereas the Black-Scholes PDE characterizes prices, the backward equation characterizes probabilities. The backward equation is just like the Black-Scholes PDE except that there is no  $rV$  term. $^{12}$

The Black-Scholes equation can be interpreted as saying that the expected return on the option must equal the risk-free rate. The backward equation pertains to probabilities of events, such as the probability that an option will expire in-the-money. To understand how such probabilities should behave, suppose we decide that the probability is 0.65 that the stock price 1 year from today will be greater than 100. We know today that if the stock price goes up tomorrow, we will then assign a greater probability to this event. If the stock price goes down tomorrow, our estimate of the probability will go down. However, we should not expect our estimate of the probability to change on average: Our expectation today, of tomorrow's probability, must also be 0.65. If today's estimate of tomorrow's probability were not 0.65, then 0.65 could not have been the correct probability today.

Thus, whereas the price of a financial asset is expected to change over time, the expected change in the probability of an event is zero. This is why the backward equation does not have the  $rV$  term.

If  $f(S_{T}; S_{t})$  is the probability density for  $S_{T}$  given that the price today is  $S_{t}$ , both of these expressions would satisfy the backward equation:

$$
\int_ {K} ^ {\infty} f \left(S _ {T}; S _ {t}\right) d S _ {T}
$$

$$
\int_ {K} ^ {\infty} S _ {T} f \left(S _ {T}; S _ {t}\right) d S _ {T}
$$

The first is the probability a call is in-the-money at time  $T$ . The second is the partial expectation of the stock price, conditional on  $S_{T} > K$ . Both are undiscounted. The backward equation holds for both the true and risk-neutral distributions generated by Ito processes.

## Derivative Prices as Discounted Expected Cash Flows

The solution to equation (31) is equivalent to computing an expected value of the derivative payoff under the risk-neutral probability distribution and discounting at the risk-free rate. The specific form of the integral depends upon boundary conditions and payouts. We can see how this works with our assumptions (in particular a constant risk-free interest rate) by considering a simple European call option on a stock that pays continuous dividends at the rate  $\delta$ . In that case, equation (11), along with the boundary condition that the option at expiration is worth  $\max[0, S(T) - K]$ , is equivalent to the discounted expectation

$$
C [ S (t), K, \sigma , r, T - t, \delta ] = e ^ {- r (T - t)} \int_ {K} ^ {\infty} [ S (T) - K ] f ^ {*} [ S (T), \sigma , r, \delta ; S (t) ] d S (T)
$$ where  $f^{*}[S(T),\sigma ,r,\delta ;S(t)]$  is the risk-neutral probability density for  $S(T)$ , conditional on the time- $t$  price being  $S(t)$ . In general, it is possible to write the solution to equation (11), with appropriate boundary conditions, as an explicit integral.


If a probability  $W(S, t)$  satisfies the backward equation under the risk-neutral distribution, expression (33), then  $V(S, t) = e^{-r(T - t)}W(S, t)$ , the present value of  $W(S, t)$ , will satisfy the Black-Scholes equation, equation (31). To see this, suppose that  $W(S, t)$  satisfies the backward equation, i.e.,

$$

\frac {1}{d t} \mathrm {E} _ {t} ^ {*} [ d W (S, t) ] = 0

$$

Since  $V = e^{-r(T - t)}W$ , we have

$$

\begin{array}{l} \frac {1}{d t} \mathrm {E} _ {t} ^ {*} [ d V (S, t) ] = \frac {1}{d t} \mathrm {E} _ {t} ^ {*} \left\{d \left[ e ^ {- r (T - t)} W (S, t) \right] \right\} \\ = r V + e ^ {- r (T - t)} \frac {1}{d t} \mathrm {E} _ {t} ^ {*} [ d W (S, t) ] \\ = r V \\ \end{array}

$$

This is the Black-Scholes PDE, equation (11).

This result means that discounted risk-neutral probabilities and partial expectations are prices of derivatives. Thus, any risk-neutral probability or partial expectation also has a corresponding derivative price. As an example of this, the Black-Scholes term  $N(d_{2})$  is the risk-neutral probability that an option is in-the-money at expiration. The discounted probability,  $e^{-r(T - t)}N(d_2)$ , is therefore the price of a derivative that pays 1 if the option is in-the-money at expiration.

# 4. CHANGING THE NUMERAIRE

Now we consider what happens when the number of options (or other derivative contracts) that we receive at expiration is random, determined by some asset price. This odd-sounding payoff is common. Consider the following example.

Example 2. The price today of a nondividend-paying stock is \$100, and the forward price is \$106.184. Joe bets Sarah that in 1 year the stock price will be greater than \$106.184. Joe wants the loser to pay one share to the winner. Sarah wants the loser to pay \$106.184 to the winner.

The share received by Joe would be worth more than  \$106.184 if he wins. Similarly, Sarah's desired payoff of\$ 106.184 is worth more than one share if she wins. Are either of these fair bets? If not, who has the more valuable side of the bet if it is denominated in shares? Who has the more valuable side of the bet if it is denominated in cash?

If Sarah wins (i.e., the share price is below \$106.184), a payment of \$106.184 will exceed the value of one share. If Joe wins (i.e., the share price is greater than \$106.184), a payment of one share will be worth more than \$106.184. However, it is not obvious which bet has a greater fair value given a current stock price of 100. Assuming no inside information about the stock, would an investor pay a greater price for Joe's desired bet or Sarah's desired bet?

We can describe the two forms of the bet as each having a different numeraire, or unit of denomination. Joe's desired bet is denominated in shares, whereas Sarah's desired bet is denominated in dollars. You can interpret the share-denominated bet as paying either a fixed number of shares (one) or a variable number of dollars (the dollar price of one share). The dollar-denominated bet pays a fixed number of dollars ( \$106.184) or a variable number of shares (the number of shares with the value\$ 106.184). The general question we want to answer is how a change in the numeraire (unit of denomination) for a derivative changes the price of the derivative.

Here are some other examples where a change of denomination is relevant:

- Currency translation: A cash flow originating in yen (for example) can be valued in yen, or in some other currency.
- Quantity uncertainty: An agricultural producer who wants to insure production of an entire field must hedge total revenue—the product of price and quantity—rather than quantity alone.
- All-or-nothing options: All-or-nothing options, which we briefly discussed earlier, can be structured either to pay cash if a certain event occurs (such as the stock price exceeding the strike) or shares. The payoffs to the stock price bets above are in fact all-or-nothing payoffs; thus, the bets can be valued as all-or-nothing options.

To see what happens when we change the denomination of an option, suppose  $Q$  is the price of an asset that follows

$$

\frac {d Q}{Q} = \left(\alpha_ {Q} - \delta_ {Q}\right) d t + \sigma_ {Q} d Z _ {Q} \tag {35}

$$

Let  $V(S, t)$  represent the price of an option denominated in cash, where  $S$  follows the process in equation (5). The correlation between  $dZ_{Q}$  and  $dZ$  is  $\rho$ . Suppose we receive the time-  $T$  payoff

$$

Y [ Q (T), S (T), T ] = Q (T) ^ {b} V [ S (T), K, \sigma , r, T, \delta ] \tag {36}

$$

Equation (36) represents a random number,  $Q^b$ , of claims,  $V$ . The value of this payoff is given in the following proposition.

Proposition 1 Suppose the process for  $S$  is given by equation (5) and the process for  $Q$  by equation (35), with  $\rho$  the correlation between  $dS$  and  $dQ$ . Let  $V(S, K, \sigma_S, r, T - t, \delta_S)$  represent the price of a European derivative claim on  $S$  expiring at time  $T$ . The price of a claim paying  $Q^bV$  is given by

$$

Q (t) ^ {b} e ^ {(r - \delta^ {*}) (T - t)} V [ S (t), K, \sigma_ {S}, r, T - t, \eta ] \tag {37}

$$ where  $\eta = \delta - b\rho \sigma \sigma_{Q}$  and  $\delta^{*} = r - b(r - \delta_{Q}) - \frac{1}{2} b(b - 1)\sigma_{Q}^{2}$ . In other words, to value  $Q^{b}$  claims, each with value  $V$ , we replace the dividend yield on  $S$ ,  $\delta$ , by  $\eta$  and multiply the resulting price by  $Q(t)^{b}e^{(r - \delta^{*})(T - t)}$ .

The proof is in Appendix B. Equation (37) is quite important and deserves further comment. The term  $\delta^{*}$  is the lease rate for  $Q^b$ . Thus  $Q(t)^{b}e^{(r - \delta^{*})(T - t)}$  is the forward price for a claim paying  $Q^b$ . The value of a claim paying  $Q^b V$  is thus the forward price for  $Q^b$  times  $V$  evaluated at a modified dividend yield. If  $Q$  and  $S$  are correlated (in which case  $Q$  and  $V$  are correlated), there must also be a covariance term. The term  $\eta$  replaces the dividend yield  $\delta$  to account for this covariance.

Example 3. We will now value the share-price bets described in Example 2. Let  $V^{+}$  denote the value of a bet that pays \$1 at time  $T$  if  $S(T) > K$ , and  $V^{-}$  the value of a bet that pays \$1 at time  $T$  when  $S(T) < K$ . Both bets are cash-or-nothing options; therefore, from equation (16) we have that

$$
\begin{array}{l} V ^ {+} [ S (0), K, \sigma , r, T, \delta ] = e ^ {- r T} N \left(\frac {\ln [ S (0) / K ] + [ r - \delta - 0 . 5 \sigma^ {2} ] T}{\sigma \sqrt {T}}\right) \\ = e ^ {- r T} N \left(d _ {2}\right) \\ \end{array}
$$

This expression is the discounted risk-neutral probability that the bet pays off; it is also the second term in the Black-Scholes formula. If you hold both a bet that pays \$1 when S(T) > K and a bet that pays \$1 when S(T) < K then for certain you will receive 1 at time T. Therefore, V+ + V- = e-rT, and we have

$$
\begin{array}{l} V ^ {-} [ S (0), K, \sigma , r, T, \delta ] = e ^ {- r T} - V ^ {+} [ S (0), K, \sigma , r, T, \delta ] \\ = e ^ {- r T} \left[ 1 - N \left(d _ {2}\right) \right] \\ \end{array}
$$

Now consider the bets denominated in shares. Let  $Y^{+}$  denote the value of a bet that pays one share when  $S(T) > K$  and  $Y^{-}$  the value of a bet paying one share when  $S(T) < K$ . Holding a share-denominated bet is like having a random number,  $S(T)$ , of cash bets. By Proposition 1, the value of the share bet is obtained by multiplying  $V$  by the forward price for  $S$ , and replacing  $\delta$  with  $\delta - \sigma^2$  (we have  $b = 1$  and  $\rho = 1$  since  $S$  multiplies a claim based on  $S$ ). Making these substitutions, the value of the share bet is  $S(0)e^{(r - \delta)T}V[S(0), K, \sigma, r, T, \delta - \sigma^2]$ , or

$$
\begin{array}{l} Y ^ {+} [ S (0), K, \sigma , r, T, \delta ] = S (0) e ^ {- \delta T} N \left(\frac {\ln [ S (0) / K ] + [ r - \delta + 0 . 5 \sigma^ {2} ] T}{\sigma \sqrt {T}}\right) \\ = S (0) e ^ {- \delta T} N \left(d _ {1}\right) \\ \end{array}
$$

This is the value of an asset-or-nothing option, equation (15), and it is the first term in the Black-Scholes formula. Thus, we can view the first Black-Scholes term as a discounted risk-neutral probability with a change of numeraire.

If you hold both a share-denominated bet paying one share when  $S(T) > K$ , and also a bet that pays one share when  $S(T) < K$ , then you will for certain receive a share at time  $T$ . Thus,  $Y^{+} + Y^{-} = e^{-\delta T}S_{0}$ , and we therefore have

$$
\begin{array}{l} Y ^ {-} [ S (0), K, \sigma , r, T, \delta ] = S (0) e ^ {- \delta T} - Y ^ {+} [ S (0), K, \sigma , r, T, \delta ] \\ = S (0) e ^ {- \delta T} - S (0) e ^ {- \delta T} N \left(d _ {1}\right) \\ \end{array}
$$

In the case of Joe and Sarah's bet, suppose that the share-price volatility is  $30\%$ , the continuously compounded risk-free rate is  $6\%$ , the time to expiration is 1 year, and the share pays no dividends. Joe bets that the share price will be above 106.184. The value of this bet is

$$
\text {V a l u e o f J o e ' s b e t} = Y ^ {+} [ 1 0 0, 1 0 6. 1 8 4, 0. 3 0, 0. 0 8, 1, 0 ] = \$ 5 5. 9 6 2
$$

The opposite side of Joe's bet—receiving one share when  $S(T) < \106.184$ —has the value \100 - \$55.962 = \$44.038.\

Sarah's bet pays \$106.184 if the price is below \$106.184; this bet has the value

$$
\text {V a l u e o f S a r a h ' s b e t} = e ^ {- 0. 0 8 \times 1} - V ^ {+} [ 1 0 0, 1 0 6. 1 8 4, 0. 3 0, 0. 0 8, 1, 0 ] = \$ 5 5. 9 6 2
$$

The opposite side of Sarah's bet pays  $e^{-0.08} \times \106.184 - \$ 55.962 = \$44.038 . Thus, both Sarah and Joe wish to denominate the bet in their favor. Moreover, Sarah and Joe's desired bets have the same value.

Problem 8 asks you to find the strike prices such that the cash and share-denominated bets have equal value.

# 5. OPTION PRICING WHEN THE STOCK PRICE CAN JUMP

Jumps pose a problem for the Black-Scholes option pricing methodology. When the stock price can jump discretely as well as move continuously, a position that hedges against small moves will not also hedge against big moves.

The fact that jumps cannot be hedged does not mean that option pricing is impossible; rather, it means that risk-neutral option pricing may be impossible. When moves in the option price cannot be hedged, we can still price the option by computing discounted expected payoffs using the actual probability density rather than the risk-neutral probability density. The problem is that the option has the risk of a leveraged position in the stock, and we do not know what discount rate is appropriate. Some assumption about appropriate discount rates (which is really an assumption about investor preferences) will then be necessary to price an option.[15]

Merton (1976) derived an option pricing formula when the stock price can jump by assuming that the jump risk is diversifiable. This assumption neatly sidesteps the discounting issue since diversifiable risk does not affect expected returns. While jump risk for a broad index is not diversifiable, arguably many of the discrete moves for individual stocks are. In that case, by holding a portfolio of delta-hedged positions, the market-maker can diversify the effects of jump risk.

Ultimately, the importance of jumps and their systematic component is an empirical issue. Nevertheless, Merton's formulas provide useful insights into the effects of jumps.

# Merton's Solution for Diversifiable Jumps

Suppose that the stock follows the process

$$ d S (t) / S (t) = (\alpha - \lambda k) d t + \sigma d Z + d q \tag {38}
$$ where, over an interval  $dt$ , a jump occurs with probability  $\lambda dt$ , and  $dq = 0$  if there is no jump and  $Y - 1$  if there is a jump. The jump magnitude,  $Y$ , is lognormally distributed such that


$$

\ln (Y) \sim \mathcal {N} \left(\alpha_ {J}, \sigma_ {J} ^ {2}\right) \tag {39}

$$

Thus, if the stock price is  $S$  before a jump, it is  $YS$  following the jump, where  $Y - 1$  is the percentage change in the stock price due to the jump and  $k = \operatorname{E}(Y - 1)$  is the expected percentage jump. Assume that the occurrence and magnitude of the jump are uncorrelated with the stock return.

Merton (1976) shows that with the stock following equation (38), and with jumps diversifiable, the Black-Scholes PDE becomes

$$

V _ {t} + \frac {1}{2} V _ {S S} \sigma^ {2} S ^ {2} + V _ {S} (r - \delta - \lambda k) S + \lambda \mathrm {E} _ {Y} [ V (S Y, t) - V (S, t) ] = r V \tag {40}

$$

When jumps are lognormal, as in equation (39), Merton shows that the price of a European call is

$$

\sum_ {i = 0} ^ {\infty} \frac {e ^ {- \lambda^ {\prime} T} (\lambda^ {\prime} T) ^ {i}}{i !} \operatorname {B S C a l l} \left(S, K, \sqrt {\sigma^ {2} + i \sigma_ {J} ^ {2} / T}, r - \lambda k + i \alpha_ {J} / T, T, \delta\right) \tag {41}

$$ where  $\lambda' = \lambda e^{\alpha J}$ . The price of a call is obtained by put-call parity.

Equation (41) provides the option value as an expectation of European option prices with respect to the probability of a given number of jumps occurring. Conditional on  $i$  jumps, we replace the variance,  $\sigma^2 T$ , with  $\sigma^2 T + i\sigma_J^2$ , a quantity that reflects the added variance from having  $i$  discrete lognormal price moves. We also replace the risk-free rate,  $r$ , with  $(r - \lambda k)T + i\alpha_J$ . The instantaneous drift,  $r - \lambda k$ , is increased by the cumulative mean of  $i$  jumps,  $i\alpha_J$ .[17]

An interesting special case occurs when the only possible jump that can occur is a jump of the stock price to zero. If the stock jumps to zero, a call option becomes worthless:  $V(SY, t) = 0$ , and  $\lambda k = -\lambda$ . Hence, with a jump to zero, the PDE for a call becomes

$$
V _ {t} + \frac {1}{2} V _ {S S} \sigma^ {2} S ^ {2} + V _ {S} (r + \lambda - \delta) S = (r + \lambda) V
$$

Every occurrence of  $r$  is replaced by  $r + \lambda$ ; hence, when the stock can jump to zero with instantaneous probability  $\lambda dt$ , the value of a European call,  $\mathrm{BSCall}_{\lambda}$ , is

$$
\operatorname {B S C a l l} _ {\lambda} (S, K, \sigma , r, T - t, \delta) = \operatorname {B S C a l l} (S, K, \sigma , r + \lambda , T - t, \delta) \tag {42}
$$

The formula for a put,  $\mathrm{BSPut}_{\lambda}$ , is then obtained by put-call parity:

$$
\begin{array}{l} \operatorname {B S P u t} _ {\lambda} (S, K, \sigma , r, T - t, \delta) \\ = \operatorname {B S C a l l} (S, K, \sigma , r + \lambda , T - t, \delta , \lambda) - S e ^ {- \delta (T - t)} + K e ^ {- r (T - t)} \\ \end{array}
$$

# CHAPTER SUMMARY

The Black-Scholes equation, equation (11), characterizes the behavior of a derivative as a function of the price of one or more underlying assets. We can interpret the Black-Scholes equation as requiring that a derivative earn an appropriate rate of return, which occurs when the delta, gamma, and theta of an asset satisfy a particular relationship. The Black-Scholes equation is thus a generalization of the idea, familiar from introductory finance, that zero-coupon bonds appreciate at the risk-free rate. Probabilities and partial expectations satisfy a related condition known as the backward equation. Along with the Black-Scholes equation, a derivative must satisfy an appropriate boundary condition.

A change of the units of an option payoff is called a change of numeraire. Proposition 1 shows that the price effect of a change of numeraire is accounted for with a simple transformation of the pricing formula.

# FURTHER READING

Two classic papers on option pricing are Black and Scholes (1973) and Merton (1973b). Merton (1976) extends the Black-Scholes model to allow diversifiable jumps in the stock price, and Naik and Lee (1990) develop a model to price options when jumps are systematic. The Heston model is described in Heston (1993). In addition to Bakshi et al. (1997) and Bates (2000), recent empirical studies of volatility skew include Benzoni (2001), Andersen et al. (2002), Eraker (2001), and Pan (2002).

Cox and Miller (1965) and Wilmott (1998, ch. 10) discuss the backward equation and its counterpart, the forward equation, which characterizes the probability density for  $S_{t}$ , conditional on  $S_{T}$ . Geman et al. (1995) studied the role of changing the numeraire as a pricing technique. Schroder (1999) extends their results, including examples with stochastic volatility and jump-diffusion models. Ingersoll (2000) provides some additional examples of the use of this technique. Marcus and Modest (1984, 1986) examine quantity uncertainty in agricultural production.

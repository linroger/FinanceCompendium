---
aliases:
tags:
key_concepts:
parent_directory: Derivatives Market Complete Full/chapters manual
cssclasses: academia
title: Interest Rate and Bond Derivatives
formatted: 2025-12-21 12:00:00 PM
formatter_model: grok-code-fast-1
cli_tool: opencode
primary_tags:
  - interest rate derivatives
  - bond pricing models
  - short-rate models
secondary_tags:
  - market models
  - forward rates
  - bond options
  - caplets and floorlets
  - Black-Scholes approach
  - Vasicek model
  - Cox-Ingersoll-Ross model
  - duration and convexity
  - yield curve dynamics
  - risk-neutral valuation
  - interest rate options
---

# Interest Rate and Bond Derivatives

In this chapter we discuss fixed income pricing models, i.e., derivatives with payoffs depending on bond prices and interest rates. The primary goals are to introduce a number of standard fixed income pricing models, and to explore the economic underpinnings of these models. Interest rate derivatives are a large topic, so this chapter can only present an overview.

We begin in Section 1 with a brief review of bond and interest rate notation and a discussion of forward pricing. We then discuss bond and interest rate options, and show that contracts with payments based on an interest rate can typically be transformed into contracts with payments based on a bond price. Thus, if you understand options on bonds, you understand options on rates. We also explain how the large number of pricing models in the chapter can be put into two buckets—short-rate models and market models—according to the economic idea underlying the calculation. This grouping of the models should help to organize your understanding of the many models in this chapter.

The following three sections discuss short-rate models. Section 2 shows how the Black-Scholes-Merton approach to pricing options applies to bonds. We discuss the role of the interest rate risk premium. Section 3 describes continuous-time short-rate models, including the Vasicek and Cox-Ingersoll-Ross models. Section 4 discusses binomial and trinomial interest rate trees as a way to implement short-rate models for cases where there is no closed-form pricing formula. Specifically, the Black-Derman-Toy model provides an example of a binomial interest rate tree, and the Hull-White model is an example of a trinomial tree. Finally, Section 5 discusses market models, including the Black model and LIBOR market model.

Some of the models we discuss have explicit formulas for bond prices and others are numerical solutions, using either a tree (binomial or trinomial) or simulation. You should keep in mind the distinction between the underlying economic model and the solution method. The choice of an economic model for a particular problem is governed by the characteristics of cash flows and interest rates. The solution method can then be a pragmatic choice.

# I. AN INTRODUCTION TO INTEREST RATE DERIVATIVES

In this section we first review the basic notation and forward pricing formulas for bonds and interest rates. Next, we define options on interest rates and bonds and show that the two kinds of options—products that may seem quite different—are in fact the same: Options with payments based on interest rates can be transformed into options with payments based on bond prices. Finally, we explain that the pricing models in this chapter fit into two broad categories: short-rate models and market models.

# Bond and Interest Rate Forwards

We let  $P_{t}(t_{1}, t_{2})$  denote the time  $t$  price of a bond bought at  $t_{1} \geq t$  and maturing at  $t_{2} \geq t_{1}$ . If  $t < t_{1}$ , the price is a bond forward price. When we buy a bond at the current market price, then by definition  $t = t_{1}$ . If there is no ambiguity, we will write the time  $t$  price of a bond maturing at time  $T$  as  $P(t, T)$ .

The forward price quoted at time  $t$ , to purchase a bond at time  $T$  that matures at time  $T + s$ , is

$$
F _ {t, T, T + s} \equiv P _ {t} (T, T + s) = \frac {P _ {t} (t , T + s)}{P _ {t} (t , T)} \tag {1}
$$

The time  $T$  payoff to a long bond forward, with the forward bought at  $t$ , is

$$
\Delta = \frac{C_u - C_d}{F (u - d)}
$$

Similarly,  $R_{t}(T,T + s)$  is the nonannualized interest rate that can be obtained at time  $t$  for a loan commencing at  $T$  that is repaid in a lump sum at time  $T + s$ . If  $T > t$ , the interest rate is a forward rate agreement (FRA).

The forward rate quoted at time  $t$  for a loan commencing at time  $T$  with repayment at time  $T + s$  is

$$
B = e^{-r h} \left(C_u \frac{1 - d}{u - d} + C_d \frac{u - 1}{u - d}\right)
$$

Note that  $R_{t}(T,T + s) = 1 / F_{t,T,T + s} - 1$

The time  $T + s$  payoff to a long position on a forward rate agreement created at time  $t$  is the difference between the spot  $s$ -period rate,  $R_{T}(T,T + s)$ , and the forward rate,  $R_{t}(T,T + s)$ :

$$
\Delta \times (u F - F) + e^{r h} \times B = C_u
$$

We could also settle the FRA at time  $T$  in an economically equivalent way by paying the present value of the time  $T + s$  payoff:

$$
\text {P a y o f t o F R A} T = \frac {R _ {T} (T , T + s) - R _ {t} (T , T + s)}{1 + R _ {T} (T , T + s)}
$$

Finally, it is possible to write a bond price in terms of a series of forward interest rates. Suppose we have a series of nonoverlapping forward interest rates spanning the time from  $T$  to  $T + s$ . Let  $h$  be the length of a single forward rate agreement and let  $n = s / h$ . We have

$$
P _ {t} (T, T + s) = \prod_ {i = 1} ^ {n} \frac {1}{1 + R _ {t} (T + (i - 1) h , T + i h)} \tag {3}
$$

To see why the equation holds with forward rates, rewrite equation (3) using equation (2) to replace forward interest rates with bond price ratios:

$$
P _ {t} (T, T + s) = \prod_ {i = 1} ^ {n} \frac {P _ {t} (t , T + i h)}{P _ {t} (t , T + (i - 1) h)} = \frac {P _ {t} (t , T + s)}{P _ {t} (t , T)}
$$

This gives us equation (1).

Example 1. Let the prices of zero-coupon bonds be  $P_0(0, 1) = 0.9625$ ,  $P_0(0, 2) = 0.9137$ ,  $P_0(0, 3) = 0.8585$ , and  $P_0(0, 4) = 0.8004$ . The forward price for a 1-year bond purchased in year 2 is

$$
P _ {0} (2, 3) = P _ {0} (0, 3) / P _ {0} (0, 2) = 0. 9 3 9 6
$$

The implied 1-year forward rates for years 0 through 3 are 0.03896, 0.05341, 0.06430, and 0.07259. For example, the implied forward interest rate from year 2 to 3 is

$$
R _ {0} (2, 3) = P _ {0} (0, 2) / P _ {0} (0, 3) - 1 = 0. 0 6 4 3 0
$$

The price of a 3-year bond can be written in terms of forward rates:

$$
P _ {0} (0, 3) = \frac {1}{1 . 0 3 8 9 6} \times \frac {1}{1 . 0 5 3 4 1} \times \frac {1}{1 . 0 6 4 3 0} = 0. 8 5 8 5
$$

# Options on Bonds and Rates

We now define the payoffs on bond and interest rate options, and demonstrate the equivalence between a put option on a bond and a call option on an interest rate.

Bond Options. First, consider call and put options on an  $s$ -period zero-coupon bond, where the options expire at time  $T$ . If the strike price is  $K$ , the maturity payment is

$$
\operatorname {C a l l} \left(P _ {T} (T, T + s), K, T\right) = \max  \left[ 0, P _ {T} (T, T + s) - K P _ {T} (T, T) \right] \tag {4}
$$

$$
\operatorname {P u t} \left(P _ {T} (T, T + s), K, T\right) = \max  \left[ 0, K P _ {T} (T, T) - P _ {T} (T, T + s) \right] \tag {5}
$$

We write the strike price as  $K P_{T}(T, T)$  (where  $P_{T}(T, T) \equiv \$1$ ) in order to emphasize that a claim paying  $K$  at time  $T$  is a zero-coupon bond.

Interest Rate Options. We can also have options on interest rates. An interest rate caplet makes a payment if the interest rate is above the strike rate,  $K_{r}$ . A caplet would be a hedge for a borrower, paying if rates are high. Similarly, an interest rate floorlet makes a payment if the interest rate is below the strike rate. A floorlet is a hedge for a lender, paying if rates are low. A cap is a series of caplets and a floor is a series of floorlets.

With payment made at time  $T + s$ , the caplet and floorlet have payoffs with a time  $T$  value of

$$
\operatorname {C a p l e t} \left(P _ {T} (T, T + s), T\right) = \frac {1}{1 + R _ {T} (T , T + s)} \max  \left[ 0, R _ {T} (T, T + s) - K _ {R} P _ {T} (T, T) \right] \tag {6}
$$

Floorlet  $(P_T(T, T + s), T) = \frac{1}{1 + R_T(T, T + s)}$  max[0,  $K_R P_T(T, T) - x R_T(T, T + s)]$  (7)

Note that we are using the market rate at time  $T$  to discount the payment.

# Equivalence of a Bond Put and an Interest Rate Call

Options on bonds can be converted into options on interest rates. A borrower who is hedging wants a contract that makes a payment when interest rates rise. Intuitively, either a call option on the interest rate or a put option on a bond will accomplish this. In fact, we can transform one into the other.

Using the fact that  $P_T(T, T) = 1$ , we can rewrite the caplet payoff, equation (6), as

$$
\begin{array}{l} \left(1 + K _ {R}\right) \max  \left[ 0, \frac {R _ {T} (T , T + s) - K _ {R}}{\left(1 + R _ {T} (T , T + s)\right) \left(1 + K _ {R}\right)} \right] \tag {8} \\ = \left(1 + K _ {R}\right) \max  \left[ 0, \frac {1}{1 + K _ {R}} - \frac {1}{1 + R _ {T} (T , T + s)} \right] \\ \end{array}
$$

The right-hand side of equation (8) is the payoff of  $1 + K_{R}$  put options on an  $s$ -period bond with strike price  $1 / (1 + K_{R})$ . A model that can price bond options can therefore be used to price interest rate options, and vice versa.

Example 2. Consider a caplet with a strike of  $6\%$ , paying  $\max(0, R_T - 0.06) / (1 + R_T(T, T + s))$ . This is equivalent to 1.06 bond put options with a strike of  $K = 1/1.06$ , paying  $1.06 \times \max[0, 1/1.06 - P_T(T, T + s)]$ , where  $P_T(T, T + s) \equiv 1 / (1 + R_T(T, T + s))$ .

# Taxonomy of Interest Rate Models

All of the pricing models in this chapter fall into one of two categories: short-rate models and market models. Here we will briefly explain each pricing model.

Short-Rate Models. In a short-rate model, we assume that the short-term interest rate,  $r(t)$ , follows some process. We can then value a claim with the payoff  $X(T)$  by computing

$$
\boxed {X (t) = \mathrm {E} _ {t} ^ {B} \left[ X (T) e ^ {- \int_ {t} ^ {T} r (s) d s} \right]} \tag {9}
$$ where  $r(s)$  follows the assumed process and  $\mathrm{E}^B$  is the expectation with respect to the risk-neutral distribution. For example, in order to value a zero-coupon bond paying \$1 at time  $T$ , we compute


$$

P _ {t} (t, T) = \mathrm {E} _ {t} ^ {B} \left[ e ^ {- \int_ {t} ^ {T} r (s) d s} \right] \tag {10}

$$

All of the short-rate models in this chapter use equation (9), or approximate it, in order to compute the prices of bonds and derivatives.

To evaluate equation (9), we must specify a risk-neutral process for  $r(t)$ . Different specifications give rise to different pricing models. Models in this class include Vasicek (1977), Cox et al. (1985b), Ho and Lee (1986), Hull and White (1990), Black et al. (1990), and Black and Karasinski (1991). In some cases it is possible to compute a closed-form solution to equation (9), typically by assuming that the short-term interest rate follows an Itô process and then solving an appropriate form of the Black-Scholes-Merton partial differential equation. Alternatively, it is possible to approximate the behavior of the interest rate binomially or trinomially, and calculate an approximation to equation (9). In other cases, simulation may be best. There is great leeway in modeling  $r(t)$ . The goal is to pick a model that generates bond and option prices matching those observed in markets, and that is not too difficult to compute.

Short-rate models and equation (9) arise from choosing as numeraire a default-free account that earns the short-term rate of interest. If we invest  $B(t)$  in this account, we earn the instantaneous return  $r(t)B(t)dt$ , where  $r(t)$  can be random. With reinvestment, at time  $T$  the account will be worth  $B(T) = B(t)e^{\int_t^T r(s)ds}$ . The risk-neutral measure is then defined as the probability distribution under which the price ratio  $S(t) / B(t)$  is a martingale for all non-dividend-paying assets  $S(t)$ . Under this distribution, the instantaneous expected return on all stocks and assets equals  $r(t)$ .

Market Models. Models assuming that forward prices are martingales are sometimes called market models. If we also assume that the forward price is lognormally distributed with volatility  $\sigma$ , we can write the process for the forward price in a market model as

$$ d F _ {t, T} = \sigma F _ {t, T} d Z (t) \tag {11}
$$

Given a process like equation (11), how do we value payoffs that depend on a forward price?

One example arises when computing the price of an option on a zero-coupon bond. We can write the payoff to a call, for example, in terms of the forward price of the bond:

$$
\max (0, P _ {T} (T, T + s) - P _ {T} (T, T) K) = P _ {T} (T, T) \max \left(0, \frac {P _ {T} (T , T + s)}{P _ {T} (T , T)} - K\right)
$$

We saw in Section 5 that the time  $t$  value of this payoff is computed using the distribution under which the forward price is a martingale:

$$
\text {T i m e} t \text {v a l u e} = P _ {t} (t, T) \mathrm {E} _ {t} ^ {F} \left[ \max  \left(0, \frac {P _ {T} (T , T + s)}{P _ {T} (T , T)} - K\right) \right] \tag {12}
$$

The result is the Black formula for an option on a forward contract.

As another example, suppose that a specific forward interest rate satisfies equation (11). From equation (3), we can value a zero-coupon bond using forward rates. However, Jensen's inequality restricts the set of rates that can simultaneously be martingales. We discuss in Section 5 which rates are martingales, as well as the processes followed by the other rates.

The theoretical justification for equation (11) arises from the choice of a zero-coupon bond,  $P_{t}(t,T)$ , as numeraire. An asset price divided by  $P_{t}(t,T)$  is a forward price, so the result that all such price ratios are martingales means that all forward prices with maturity  $T$  are martingales. Such a price ratio can represent the forward price for bonds (when the numerator is  $P_{t}(t,T + s)$ ) or for nonannualized interest rates (when the numerator is  $P_{t}(t,T - s)$ ).

# 2. INTEREST RATE DERIVATIVES AND THE BLACK-SCHOLES-MERTON APPROACH

In this section we see how the Black-Scholes-Merton approach can be applied to price bonds and interest rate derivatives. The Black-Scholes-Merton derivation characterizes the fair option price for a delta-hedging market-maker. Vasicek (1977) used the same approach for pricing bonds, assuming that the short-term interest rate followed an Ito process.

We assume in this section that the short-term interest rate follows the Itô process

$$ d r (t) = a (r, t) d t + \sigma (r, t) d Z \tag {13}
$$

This is the physical process, as opposed to the risk-neutral process. In equation (13), the drift and standard deviation are functions of  $r$ . A special case of equation (13) is

$$ d r = \left[ \theta (t) + a (t) (b - r) \right] d t + \sigma (t) r ^ {\beta} d Z \tag {14}
$$ with either  $\beta = 0$  or  $\beta = 1/2$ . This interest rate process was studied by Hull and White (1990). Many well-known models of the short-term interest rate are special cases of equation (14), including those of Vasicek (1977), Ho and Lee (1986), and Cox et al. (1985b).


We should consider the reason to start with equation (13) rather than with a similar equation for bonds. We could, for example, model a zero-coupon bond the same way we model a stock, by assuming that the bond price,  $P_{t}(t,T)$ , follows an Ito process:

$$

\frac {d P}{P} = \alpha (r, t) d t - q (r, t) d Z \tag {15}

$$

This is the physical process for the bond. For this equation to be reasonable,  \alpha(r, t)  and  q(r, t)  must be carefully specified functions of the interest rate and time. A zero-coupon bond must be worth 1 at maturity; this boundary condition is not automatically satisfied by the price in equation (15). Also, the volatility of the bond should decrease as the bond approaches maturity. The finite life of a bond constrains the coefficients. As a result, it is typically more convenient to start with the interest rate process in equation (13) and to then compute the price of the bond, taking into account the necessary boundary condition that  P_T(T, T) = \1 . The implied  \alpha(r, t)  and  q(r, t)  are then correctly specified.

The logic of the Vasicek approach to pricing bonds is identical to the Black-Scholes approach to analyzing options: We think about the problem faced by a market-maker and see what it tells us about bond price behavior. We will focus on pricing zero-coupon bonds since they are a building block for all fixed-income products.

# An Equilibrium Equation for Bonds

We now consider how to price a bond given that the interest rate follows equation (13). One approach would be to start with a risk-neutral version of equation (13) and then compute equation (10). Instead, however, we will treat equation (13) as the physical interest rate process and work through the hedging argument. We will end up with the same pricing formula and we will have a better appreciation for the role of the risk premium in bond pricing.

Vasicek (1977) showed how to adapt the Black-Scholes-Merton pricing approach to bonds by considering the hedging problem faced by a delta-hedging market-maker. To begin, it helps to characterize the bond price process (which we do not know) in terms of the interest rate process in equation (13). From Ito's Lemma, the bond, which is a function of the interest rate and time, follows the process

$$

\begin{array}{l} d P (r, t, T) = \frac {\partial P}{\partial r} d r + \frac {1}{2} \frac {\partial^ {2} P}{\partial r ^ {2}} (d r) ^ {2} + \frac {\partial P}{\partial t} d t \tag {16} \\ = \left[ a (r) \frac {\partial P}{\partial r} + \frac {1}{2} \frac {\partial^ {2} P}{\partial r ^ {2}} \sigma (r) ^ {2} + \frac {\partial P}{\partial t} \right] d t + \frac {\partial P}{\partial r} \sigma (r) d Z \\ \end{array}

$$

This equation does not look like equation (15), but we can define terms so that it does. Let

$$

\alpha (r, t, T) = \frac {1}{P (r , t , T)} \left[ a (r) \frac {\partial P}{\partial r} + \frac {1}{2} \frac {\partial^ {2} P}{\partial r ^ {2}} \sigma (r) ^ {2} + \frac {\partial P}{\partial t} \right] \tag {17}

$$

$$ q (r, t, T) = - \frac {1}{P (r , t , T)} \frac {\partial P}{\partial r} \sigma (r) \tag {18}
$$

Equation (16) is then

$$
\frac {d P (r , t , T)}{P (r , t , T)} = \alpha (r, t, T) d t - q (r, t, T) d Z \tag {19}
$$

By using equations (17) and (18) to define  $\alpha$  and  $q$ , equations (15) and (19) are the same. Note that  $\alpha$  and  $q$  depend on both the interest rate and on the time to maturity of the bond.

We now analyze the delta-hedging problem. We buy one bond maturing at time  $T_{2}$ , hedge by buying  $N$  bonds maturing at time  $T_{1}$  ( $N$  can be negative), and finance the difference by buying or selling a money-market fund, which earns the short-term interest rate,  $r(t)$ .

The resulting portfolio has the value

$$
I = N P \left(t, T _ {1}\right) + P \left(t, T _ {2}\right) + W = 0 \tag {20}
$$

Since the money-market fund is invested in short-term bonds, we have

$$ d W = r (t) W d t \tag {21}
$$

We then apply Itô's Lemma to the delta-hedged bond portfolio, the value of which is given by equation (20). Substituting into the result equations (17) and (18), we have

$$
\begin{array}{l} d I = N \left[ \alpha (r, t, T _ {1}) d t - q (r, t, T _ {1}) d Z \right] P (r, t, T _ {1}) \\ + \left[ \alpha (r, t, T _ {2}) d t - q (r, t, T _ {2}) d Z \right] P (r, t, T _ {2}) + r W d t \tag {22} \\ \end{array}
$$

In order to eliminate interest rate risk, we set

$$
N = - \frac {P (r , t , T _ {2})}{P (r , t , T _ {1})} \frac {q (r , t , T _ {2})}{q (r , t , T _ {1})}
$$

By using the definition of  $q$ , equation (18), this can be rewritten

$$
N = - \frac {P _ {r} (r , t , T _ {2})}{P _ {r} (r , t , T _ {1})} \tag {23}
$$

The delta-hedged portfolio has no risk and no investment; it should therefore earn a zero return:

$$ d I = 0
$$

Substituting equation (23) into equation (22) and setting  $dI = 0$ , we obtain

$$
\frac {\alpha (r , t , T _ {1}) - r}{q (r , t , T _ {1})} = \frac {\alpha (r , t , T _ {2}) - r}{q (r , t , T _ {2})} \tag {24}
$$

This equation says that the Sharpe ratio for the two bonds is equal. Since both bond prices are driven by the same random term,  $dZ$ , they must have the same Sharpe ratio if they are fairly priced.

Equation (24) seems to leave us at an impasse. We can treat the Sharpe ratio as a parameter, however, and solve for the bond price as a function of the Sharpe ratio. Denote the Sharpe ratio for  $dZ$  as  $\phi(r, t)$ . For any bond we then have

$$
\frac {\alpha (r , t , T) - r}{q (r , t , T)} = \phi (r, t)
$$

Substituting equations (17) and (18) for  $\alpha$  and  $q$  then gives us

$$
\boxed {\frac {1}{2} \sigma (r) ^ {2} \frac {\partial^ {2} P}{\partial r ^ {2}} + [ a (r) + \sigma (r) \phi (r, t) ] \frac {\partial P}{\partial r} + \frac {\partial P}{\partial t} - r P = 0} \tag {25}
$$

When the short-term interest rate is the only source of uncertainty, this partial differential equation must be satisfied by any zero-coupon bond. Different bonds will have different maturity dates and therefore different boundary conditions. All bonds solve the same PDE, however. The Black-Scholes equation characterizes claims that are a function of the stock price. Equation (25) is the analogous equation for derivative claims that are a function of the interest rate.

A difference between equation (25) and the Black-Scholes equation is the explicit appearance of the risk premium,  $\sigma(r,t)\phi(r,t)$ , in the bond equation. It is important to understand the reason.

In the context of stock options, we hedge an option with a stock, which is an investment asset. The stock is expected to earn its risk premium,  $\phi^S\sigma$ . Thus, for the stock, the drift term, which is analogous to  $a(r)$ , equals  $r + \phi^S\sigma$ . The delta-hedging procedure eliminates the risk premium on the stock, so we are left with the risk-free rate,  $r$ , as the coefficient on the  $\partial V / \partial S$  term in the Black-Scholes equation.

The interest rate, by contrast, is not the price of an investment asset. The interest rate risk premium does not disappear when we delta-hedge the bond. The interest rate is a characteristic of an asset, not an asset by itself. The risk-neutral process for the interest rate is obtained by subtracting the risk premium from the drift. The risk-neutral process for the interest rate is therefore

$$
\boxed {d r = [ a (r) + \sigma (r) \phi (r, t) ] d t + \sigma (r) d \widetilde {Z}} \tag {26}
$$

The drift in this equation is what appears in equation (25).

Given a zero-coupon bond (which has a terminal boundary condition that the bond is worth 1 at maturity), Cox et al. (1985b) show that equation (10) is a solution to equation (25). Thus, the bond price solution using the Black-Scholes-Merton approach is the same as that in equation (10).

Finally, the expected change in the bond price under the risk-neutral distribution of the interest rate, equation (26), is

$$
\frac {1}{d t} \mathrm {E} ^ {*} (d P) = \frac {1}{2} \sigma (r) ^ {2} \frac {\partial^ {2} P}{\partial r ^ {2}} + [ a (r) + \sigma (r) \phi (r, t) ] \frac {\partial P}{\partial r} + \frac {\partial P}{\partial t}
$$

Equation (25) therefore says that

$$
\frac {1}{d t} \mathrm {E} ^ {*} (d P) = r P \tag {27}
$$

Under the risk-neutral distribution, bonds on average earn the instantaneous risk-free rate.

The fact that bonds satisfy equation (27) means that the delta-gamma-theta approximation for the change in a bond price holds exactly if the interest rate moves one standard deviation.

To summarize, we can compute the price of a bond by assuming a model for the interest rate and then using equation (25) to obtain a partial differential equation that describes the bond price. Using the PDE together with boundary conditions, we can determine the price of the bond. This is the same procedure we used to price options on stock.

The derivation of equation (25) assumes that bond prices are a function of a single-state variable, the short-term interest rate  $r(t)$ . It is possible to allow bond prices to depend on additional state variables, and there is empirical support for having bond prices depend on more than one state variable. Litterman and Scheinkman (1991) estimate a factor model for Treasury bond returns and find that a three-factor model typically explains more than  $95\%$  of the variability in a bond's return. They identify the three factors as level, steepness, and curvature of the yield curve. The single most important factor, the level of interest rates, accounts for almost  $90\%$  of the movement in bond returns. The overwhelming importance of the level of interest rates explains why duration-based hedging, despite its conceptual problems, is widely used. We will focus in this chapter on models with a single state variable.

# 3. CONTINUOUS-TIME SHORT-RATE MODELS

In this section we discuss several bond pricing models in which the instantaneous shortterm interest rate,  $r(t)$ , follows a form of equation (13) and bond prices are determined by equation (25). The three pricing models we discuss—Rendleman-Bartter, Vasicek, and Cox-Ingersoll-Ross—differ in their specification of  $\alpha(r)$ ,  $\sigma(r)$ , and  $\phi(r)$ . These differences can result in very different pricing implications.

# The Rendelman-Bartter Model

The simplest models of the short-term interest rate are those in which the interest rate follows arithmetic or geometric Brownian motion. For example, we could write

$$ d r = a d t + \sigma d Z \tag {28}
$$

In this specification, the short-rate is normally distributed with mean  $r_0 + at$  and variance  $\sigma^2 t$ . There are several objections to this model:

- The short-rate can be negative. It is not reasonable to think the nominal short-rate can be negative, since if it were, investors would prefer holding cash under a mattress to holding bonds.
- The drift in the short-rate is constant. If  $a > 0$ , for example, the short-rate will drift up over time forever. In practice if the short-rate rises, we expect it to fall; i.e., it is mean-reverting.
- The volatility of the short-rate is the same whether the rate is high or low. In practice, we expect the short-rate to be more volatile if rates are high.

The Rendleman and Bartter (1980) model, by contrast, assumes that the short-rate follows geometric Brownian motion:

$$ d r = a r d t + \sigma r d Z \tag {29}
$$

While interest rates can never be negative in this model, they can be arbitrarily high. In practice we would expect rates to exhibit mean reversion; if rates are high, we expect them on average to decrease. The Rendleman-Bartter model, on the other hand, says that the probability of rates going up or down is the same whether rates are  $100\%$  or  $1\%$ .

# The Vasicek Model

The Vasicek model incorporates mean reversion:

$$
\boxed {d r = a (b - r) d t + \sigma d Z} \tag {30}
$$

This is an Ornstein-Uhlenbeck process. The drift term induces mean reversion. Suppose we set  $a = 20\%$  and  $b = 10\%$ . The parameter  $b$  is the level to which short-term interest rates revert. If  $r < b$ , the short-rate is expected to rise. For example, if  $r(t) = 5\%$ , the instantaneous expected change in the interest rate is 0.01. If  $r > b$ , the short-rate is expected to decrease: If  $r(t) = 20\%$ , the instantaneous expected change in the interest rate is -0.02.

Note also that the standard deviation of interest rates,  $\sigma$ , is independent of the level of the interest rate. This formulation implies that it is possible for interest rates to become negative and that the variability of interest rates is independent of the level of rates. For example, if  $\sigma = 1\%$ , a one-standard-deviation move for the short-rate is 100 basis points, whatever the level of the rate.

In the Rendleman-Bartter model, the interest rate is lognormal, so it cannot be negative. In the Vasicek model, by contrast, rates can become negative because the variance is constant.

Vasicek used equation (30) simply to illustrate the pricing methodology outlined in Section 2, without claiming that it was a plausible empirical description of interest rates. The Vasicek model can have unreasonable pricing implications, including negative yields for long-term bonds.

Let the Sharpe ratio for interest rate risk be a constant,  $\phi$ . With the Vasicek interest rate dynamics, equation (30), equation (25) becomes

$$
\frac {1}{2} \sigma^ {2} \frac {\partial^ {2} P}{\partial r ^ {2}} + [ a (b - r) + \sigma \phi ] \frac {\partial P}{\partial r} + \frac {\partial P}{\partial t} - r P = 0
$$

The bond price formula that solves this equation subject to the boundary condition  $P(T, T, r) = 1$ , and assuming  $a \neq 0$ , is

$$
P [ t, T, r (t) ] = A (t, T) e ^ {- B (t, T) r (t)} \tag {31}
$$

$$
A = e ^ {- 0. 5 \sigma \phi (T - t) ^ {2} + \sigma^ {2} (T - t) ^ {3} / 6}
$$

$$
B = T - t
$$ where


$$

A (t, T) = e ^ {\bar {r} (B (t, T) + t - T) - B (t, T) ^ {2} \sigma^ {2} / 4 a}

$$

$$

B (t, T) = (1 - e ^ {- a (T - t)}) / a

$$

$$

\bar {r} = b + \sigma \phi / a - 0. 5 \sigma^ {2} / a ^ {2}

$$ with  $\bar{r}$  being the yield to maturity on an infinitely lived bond. $^{10}$

# The Cox-Ingersoll-Ross Model

The Cox-Ingersoll-Ross (CIR) model (Cox et al., 1985b) assumes a short-term interest rate model of the form

$$
\boxed {d r = a (b - r) d t + \sigma \sqrt {r} d Z} \tag {32}
$$

The standard deviation of the interest rate is proportional to the square root of the interest rate, instead of being constant as in the Vasicek model. Because of this subtle difference, the CIR model satisfies the objections to the earlier models:

- It is impossible for interest rates to be negative. If  $r = 0$  (and assuming that  $b > 0$  and  $a > 0$ ), the drift in the rate is positive and the variance is zero, so the rate will become positive. If  $2ab > \sigma^2$ , the interest rate will never reach zero.
- The volatility of the short-rate increases with the level of the short-rate.
- The short-rate exhibits mean reversion.

The assumption that the variance is proportional to  $\sqrt{r}$  also turns out to be convenient analytically—Cox, Ingersoll, and Ross (CIR) derive bond and option pricing formulas using this model. The Sharpe ratio in the CIR model takes the form

$$
\phi (r, t) = \bar {\phi} \sqrt {r} / \sigma \tag {33}
$$

With this specification for the risk premium and equation (32), the CIR interest rate dynamics, the partial differential equation for the bond price is

$$
\frac {1}{2} \sigma^ {2} r \frac {\partial^ {2} P}{\partial r ^ {2}} + [ a (b - r) + r \bar {\phi} ] \frac {\partial P}{\partial r} + \frac {\partial P}{\partial t} - r P = 0
$$

The CIR bond price looks similar to that for the Vasicek dynamics, equation (31), but with  $A(t,T)$  and  $B(t,T)$  defined differently:

$$
P [ t, T, r (t) ] = A (t, T) e ^ {- B (t, T) r (t)} \tag {34}
$$ where


$$

A (t, T) = \left[ \frac {2 \gamma e ^ {(a - \bar {\phi} + \gamma) (T - t) / 2}}{(a - \bar {\phi} + \gamma) (e ^ {\gamma (T - t)} - 1) + 2 \gamma} \right] ^ {2 a b / \sigma^ {2}}

$$

$$

B (t, T) = \frac {2 (e ^ {\gamma (T - t)} - 1)}{(a - \bar {\phi} + \gamma) (e ^ {\gamma (T - t)} - 1) + 2 \gamma}

$$

$$

\gamma = \sqrt {(a - \bar {\phi}) ^ {2} + 2 \sigma^ {2}}

$$

With the CIR process, the yield on a long-term bond approaches the value  $\bar{r} = 2ab / (a - \bar{\phi} +\gamma)$  as time to maturity goes to infinity.

# Comparing Vasicek and CIR

How different are the prices generated by the CIR and Vasicek models? What is the role of the different variance specifications in the two models?

Figure 1 illustrates the yield curves generated by the Vasicek and by the CIR models, assuming that the current short-term rate,  $r$ , is  $5\%$ ,  $a = 0.2$ , and  $b = 10\%$ . Volatility in the Vasicek model is  $2\%$  in the top panel and  $10\%$  in the bottom panel. The volatility,  $\sigma$ , has a different interpretation in each model. In the Vasicek model, volatility is absolute, whereas in the CIR model, volatility is scaled by the square root of the current interest rate. To make the CIR volatility comparable at the initial interest rate, it is set so that  $\sigma_{\mathrm{CIR}}\sqrt{r} = \sigma_{\mathrm{Vasicek}}$ , or 0.0894 in the top panel and 0.447 in the bottom panel. The interest rate risk premium is assumed to be zero.

The two models can exhibit very different behavior. The bottom panel has a relatively high volatility. For short-term bonds—with a maturity extending to about 2.5 years—the yield curves look similar. This is a result of setting the CIR volatility to match the Vasicek volatility. Beyond that point the two diverge, with Vasicek yields below CIR yields. The long-run interest rate in the Vasicek model is  $-0.025$ , whereas that in the CIR model is  $0.0463$ . This difference is evident in Figure 1 as the Vasicek yields approach zero (in the long run approaching  $-0.025$ ).

What accounts for the difference in medium to long-term bonds? As discussed earlier, the pricing formulas are based on averages of interest rate paths, as in equation (9). Some of the interest rate paths in the Vasicek model will be negative. Although the typical path will be positive because of mean reversion—rates will be pulled toward  $10\%$ —there will be paths on which rates are negative. Because of Jensen's inequality, these paths will be disproportionately important. Over sufficiently long horizons, large negative interest rates become more likely and this leads to negative yields. In the CIR model, this effect results

# FIGURE I

Yield curves implied by the Vasicek and CIR models, assuming that  $r = 0.05$ ,  $a = 0.2$ ,  $b = 0.1$ . In the top panel,  $\sigma = 0.02$  in the Vasicek model and  $\sigma = 0.02 / \sqrt{0.05} = 0.0894$  in the CIR model. In the bottom panel,  $\sigma = 0.10$  in the Vasicek model and  $\sigma = 0.10 / \sqrt{0.05} = 0.447$  in the CIR model. In all cases,  $\phi = 0$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/6fe8db78996c8c312a432a8d48c48a825ab21b182b4adee9797c263977743166.jpg)
Yield to Maturity

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/6d5b37bd2fa32662810f6efd52c350cfa146c814e46e39ae6b697ce10a9bf2a6.jpg)
Yield to Maturity in the long-run yield decreasing with volatility. Negative yields are impossible in the CIR model, however, since the short-term interest rate can never become negative.


In the top panel, with relatively low volatility, both yield curves are upward sloping. The effect of mean reversion outweighs that of volatility. In the long run, the Vasicek yield exceeds the CIR yield because volatility increases with the level of the interest rate in the CIR model. Consequently, the Jensen's inequality effect is more pronounced in the CIR model than in the Vasicek model.

# Duration and Convexity Revisited

Duration and convexity are measures of a bond's sensitivity to interest rates. In a short-rate model, we can compute this sensitivity by computing the analogues of delta and gamma, namely,  $P_r$  and  $P_{rr}$ . There are two reasons for expecting delta and gamma to differ from duration and convexity.

First, duration and convexity are defined with respect to a change in the bond's yield to maturity, whereas in a short-rate model delta and gamma are defined with respect to a change in the current short rate. These are two different calculations. Second, duration and convexity are defined assuming that the yield curve is flat (all zero-coupon bonds at all maturities have the same yield to maturity) and that when the yield curve changes, yields for all bonds change uniformly so that the yield curve remains flat. It turns out that this simple and intuitive behavior of the yield curve does not satisfy equation (25).

Suppose that the interest rate follows equation (13) and that all zero-coupon bonds have the price

$$

P (t, T) = e ^ {- r (t) (T - t)} \tag {35}

$$

In this specification, every bond has yield to maturity  $r(t)$ . We can compute the derivatives of  $P(t,T)$ :

$$

\frac {\partial P}{\partial r} = - (T - t) P; \qquad \frac {\partial^ {2} P}{\partial r ^ {2}} = (T - t) ^ {2} P; \qquad \frac {\partial P}{\partial t} = r P d t

$$

Substituting these expressions into equation (25), we obtain

$$

\frac {1}{2} \sigma^ {2} (r) (T - t) = a (r) + \sigma (r) \phi

$$

This equation can hold for at most a single value of  $T - t$ , and thus it can hold for at most one bond. We conclude that equation (35) is not an acceptable bond pricing model.

Delta and gamma are thus fundamentally different calculations than duration and convexity, and the assumed yield curve shift in computing duration and convexity is inconsistent with the bond pricing equation. By how much do duration and convexity differ from delta and gamma? The following example illustrates that in the CIR model, delta and gamma can differ substantially from the traditional measures of duration and convexity. The conclusion to draw from this example is that if one is using a bond pricing model, it makes sense to use the sensitivities implied by the model, which can be very different from duration and convexity.

Example 3. Consider a 5-year zero-coupon bond priced using the CIR model, and suppose that  $a = 0.2$ ,  $b = 0.1$ ,  $r = 0.08$ ,  $\bar{\phi} = 0$ , and  $\sigma = 0.2$ . The bond price is \$0.667. Because it is a 5-year zero-coupon bond, Macaulay duration is 5 and convexity is 25. However, in the CIR model with these parameters,  $P_r = -1.918$  and  $P_{rr} = 5.518$ . The scale-free sensitivities to the short-term rate are  $-P_r / P = 2.876$  (instead of 5) and  $P_{rr} / P = 8.273$  (instead of 25).

# 4. SHORT-RATE MODELS AND INTEREST RATE TREES

In this section we discuss the use of binomial and trinomial interest rate trees to compute bond and option prices. $^{12}$  Just as with stock price trees, interest rate trees permit valuing American options, and also allow more flexibility in selecting an appropriate interest rate process.

With any numerical pricing procedure two issues arise: First, how should the tree be constructed and second, how can the procedure be calibrated, i.e., how can the parameters of the procedure be selected to match existing price data? We will discuss both questions in the context of short-rate models proposed by Black et al. (1990) and Hull and White (1994).

# An Illustrative Tree

We begin this section with a simple illustrative interest rate tree. As before, the goal is to value cash flows using equation (9), using cumulative discount rates on a path-by-path basis. The tree models the evolution of the continuously compounded short-term interest rate, which we define as the rate prevailing from time  $t$  to time  $t + h$ , where  $h$  is the length

# FIGURE 2

Three-period interest rate tree showing the evolution of the continuously compounded 1-year rate. The state at each node (represented by time index  $i$  and level index  $j$ ) are in braces at each node. The risk-neutral probability of an up move is  $p$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/ccc6736f01e7980f3aeb44461db7c072db197d39668ac86b93ae05cb89af7881.jpg) between nodes on the tree. $^{13}$  For this example we set  $h = 1$ ; we are thus using movements in the one-year rate to approximate changes in the instantaneous short-rate.


We construct the 1-year rate tree by starting with today's 1-year rate, which we can observe. We assume the 1-year rate moves up or down the second year, and again the third year. This behavior gives us the tree in Figure 2, which is drawn so that it need not recombine. Figure 2 uses two different systems to identify interest rates. First, rates are identified by the sequence of up and down moves by which they are reached, e.g.,  $r_0$ ,  $r_u$ ,  $r_{ud}$ , etc. Second, the rates can be identified by the binomial period and the state within that period:  $r(0,0)$ ,  $r(1,1)$ ,  $r(2,2)$ , etc. The timing in the tree is such that the final nodes represent one-period rates observed 2 periods from today. Thus, the tree in Figure 2 can price bonds up to 3 years in maturity. Let  $p$  denote the risk-neutral probability of an up move. We will assume that rates are continuously compounded in this example.

Zero-Coupon Bond Prices. We calculated the one-period bond price at each node by discounting at the one-period rate prevailing at that node:

$$

P (i, j, h) = e ^ {- r (i, j) h} \tag {36}

$$

$P(i, j, h)$  in this equation represents the price of an  $h$ -period zero-coupon bond when the one-period rate at time  $i$  is  $r(i, j)$ . We can value a two-period bond by discounting the expected one-period bond price, one period hence. At any node we can value an  $n$ -period zero-coupon bond by proceeding in this way recursively. Beginning in period  $i + n$ , we value one-period bonds, then in period  $i + n - 1$  we have two-period bond values, and so forth. The tree can thus be used at any node to value zero-coupon bonds (and therefore implied forward rates) of any maturity, constrained only by the size of the tree. The tree also implies volatilities of bond prices and interest rates.


With the tree in Figure 2, we obtain the following valuation equations. For the one-period bond we have

$$

P (0, 0, 1) = e ^ {- r _ {0} h} \tag {37}

$$

The 2-year bond is priced by working backward along the tree. In the second period, the price of the bond is \$1. One year from today, the bond will have the price  $e^{-r_u}$  with probability  $p$  or  $e^{-r_d}$  with probability  $1 - p$ . The price of the bond is therefore

$$

\begin{array}{l} P (0, 0, 2) = e ^ {- r _ {0} h} \left[ p e ^ {- r _ {u} h} + (1 - p) e ^ {- r _ {d} h} \right] \tag {38} \\ = e ^ {- r _ {0} h} \left[ p P _ {1} (1, 2, 1) + (1 - p) P _ {1} (1, 1, 1) \right] \\ \end{array}

$$

Thus, we can price the 2-year bond using either the interest rate tree or the implied bond prices.

Finally, the 3-year bond is again priced by traversing the entire tree. The price is  \$1 after 3 years. After 2 years, the price will be\$ 1 discounted at  $r_{uu}, r_{ud}, r_{du}$ , or  $r_{dd}$ . Continuing in this way, the price is

$$

\begin{array}{l} P (0, 0, 3) = e ^ {- r _ {0}} \left[ p e ^ {- r _ {u}} \left(p e ^ {- r _ {u u}} + (1 - p) e ^ {- r _ {u d}}\right) \right. \tag {39} \\ \left. + (1 - p) e ^ {- r _ {d}} \left(p e ^ {- r _ {d u}} + (1 - p) e ^ {- r _ {d d}}\right) \right] \\ \end{array}

$$

By collecting terms in equation (39), we can rewrite the 3-year bond calculation in terms of cumulative discount rates:

$$

\begin{array}{l} P (0, 0, 3) = p ^ {2} e ^ {- \left(r _ {0} + r _ {u} + r _ {u u}\right)} + p (1 - p) e ^ {- \left(r _ {0} + r _ {u} + r _ {u d}\right)} \tag {40} \\ + (1 - p) p e ^ {- \left(r _ {0} + r _ {d} + r _ {d u}\right)} + (1 - p) ^ {2} e ^ {- \left(r _ {0} + r _ {d} + r _ {d d}\right)} \\ \end{array}

$$

This way of writing the valuation equation makes it clear that we are valuing the bond with a discrete approximation to equation (9): We discount the 1 payoff separately for each path the interest rate can take, and take an expectation over those paths using risk-neutral probabilities. In general, letting  r_i  represent the realized time- i  rate, we have

$$

\boxed {P (0, 0, n h) = \mathrm {E} ^ {*} \left(e ^ {- \sum_ {i = 0} ^ {n} r _ {i} h}\right)} \tag {41}

$$

Example 4. Figure 3 constructs an interest rate tree assuming that the current 1-year rate is  $10\%$  and that each year the 1-year rate moves up or down  $4\%$ , with probability  $p = 0.5$ . We can use this tree to price 1-, 2-, and 3-year zero-coupon default-free bonds.

1-year bond. From equation (37), the price of the 1-year bond is

$$

P (0, h) = e ^ {- 0. 1 0} = \$ 0. 9 0 4 8 \tag {42}

$$

2-year bond. From equation (38), the two-period bond price is

$$

\begin{array}{l} P (0, 2) = e ^ {- 0. 1 0} \left(0. 5 e ^ {- 0. 1 4} + 0. 5 e ^ {- 0. 0 6}\right) \\ = \$ 0. 8 1 9 4 \\ \end{array}

$$

<table><tr><td>FIGURE 3</td><td></td><td></td><td>Risk-Neutral Probability</td><td>Cumulative Discount Factor</td></tr><tr><td rowspan="4">Three-period interest rate tree assuming that the interest rate moves up or down 0.04 each year. The risk-neutral probability of an up move is 0.5.</td><td>0.14</td><td>0.18</td><td>0.25</td><td>0.42</td></tr><tr><td>0.10</td><td>0.10</td><td>0.25</td><td>0.34</td></tr><tr><td>0.06</td><td>0.10</td><td>0.25</td><td>0.26</td></tr><tr><td></td><td>0.02</td><td>0.25</td><td>0.18</td></tr></table>

3-year bond. Finally, from equation (39), the price of the 3-year bond is

$$

\begin{array}{l} P (0, 3) = e ^ {- 0. 1 0} \left[ 0. 5 e ^ {- 0. 1 4} \left(0. 5 e ^ {- 0. 1 8} + 0. 5 e ^ {- 0. 1 0}\right) + 0. 5 e ^ {- 0. 0 6} \left(0. 5 e ^ {- 0. 1 0} \right. \right. \\ + 0. 5 e ^ {- 0. 0 2}) ] = \$ 0. 7 4 3 8 \\ \end{array}

$$

Equation (41) also gives 0.7438 as the price of the three-period zero-coupon bond.

Yields and Expected Interest Rates. In Figure 3, we assume that  $p = 0.5$  and the up and down moves are symmetric—the interest rate follows a random walk. Consequently, the expected interest rate at each node is  $10\%$ . The yields on the two- and three-period bonds, however, are not  $10\%$ . The yield on the two-period bond is

$$
- \ln [ P (0, 2) ] / 2 = - \ln (0. 8 1 9 4) / 2 = 0. 0 9 9 6
$$

The yield on the three-period bond is

$$
- \ln [ P (0, 3) ] / 3 = - \ln (0. 7 4 3 8) / 3 = 0. 0 9 8 7
$$

Yields are less than  $10\%$  on the two- and three-period bonds because of Jensen's inequality: Uncertainty causes bond yields to be lower than the expected average interest rate. We cannot discount a cash flow by using the expected interest rate. Rather, we use the expected discount factor. The discrepancy between yields and average interest rates increases with volatility. (Problem 7 asks you to verify this relationship by constructing a different interest rate tree and repeating the bond valuation.)

Option Pricing. Suppose we have a call option with strike price  $K$  on a  $T$ -year zero-coupon bond. The expiration value of the option at node  $\{i, j\}$  is

$$

V (i, j) = \max  [ 0, P (i, j, T) - K ] \tag {43}

$$

To price the option, we can work recursively backward through the tree using risk-neutral pricing, as with an option on a stock. The value one period earlier at the node  $j'$  is

$$

V (i - 1, j ^ {\prime}) = P (i - 1, j ^ {\prime}, h) \times \left[ p \times V (i, j + 1) + (1 - p) \times V (i, j) \right] \tag {44}

$$

We continue in this way to obtain the option value in period 0. In the same way, we can value an option on a yield, or an option on any instrument that is a function of the interest rate.

Delta-hedging works for the bond option just as for a stock option. If the option has  $t$  periods until expiration, the underlying asset is a zero-coupon bond maturing at  $t + T$ , since that will be a  $T$ -period bond at expiration. Each period, the delta-hedged portfolio of the option and underlying asset is financed by the short-term bond, paying whatever one-period interest rate prevails at that node.

Example 5. Suppose we have a 2-year put on a 1-year zero-coupon bond and the strike price is 0.88. The payoff in year 2 at node j is

$$

\max  [ 0, \mathbb {S} 0. 8 8 - P (2, j, 1) ]

$$

The option price is computed based on the 1-year bond price in year 2.

From Figure 3, there is only one node at which the put will be exercised, namely, that where the interest rate is 0.18 and, hence, the bond price is  e^{-0.18} = \0.8353 . Using the interest rates along the tree, and multiplying by the 0.25 risk-neutral probability of reaching that one node, we obtain an option price of

$$

\left. (\$ 0. 8 8 - \$ 0. 8 3 5 3) e ^ {- (0. 1 4 + 0. 1 0)} \times 0. 2 5 = \$ 0. 0 0 8 8 \right.

$$

# The Black-Derman-Toy Model

The preceding example illustrated the use of a binomial interest rate tree to price bonds and options, but we did not discuss how to construct the tree. In practice we want a tree that correctly prices zero-coupon bonds (in which case it will correctly price forwards and swaps) and options. Selecting parameters for a model so that it fits the data is called calibration. In this section and the next, we illustrate this process.

Yield curves can have various shapes depending on the interest rate process and the parameters that can be chosen. For example, a binomial random walk model has two parameters: the starting interest rate and the volatility generating up and down moves. The CIR and Vasicek models have four parameters  $(a, b, r, \text{and} \sigma)$  and generate yield curves with particular stylized shapes that may or may not match the data.

The Black-Derman-Toy model is a binomial tree of short-term interest rates with a flexible structure.[15] We assume in this discussion that the length of a binomial period is 1 year, although that is arbitrary.

Hypothetical bond-market data. Bond prices and yields are the observed prices and effective annual yields for zero-coupon bonds with the indicated maturity. Volatility refers to the volatility of the bond yield 1 year from today.

TABLEI

<table><tr><td>Maturity (years)</td><td>Yield to Maturity</td><td>Bond Price ($)</td><td>Volatility in Year 1</td></tr><tr><td>1</td><td>10\%</td><td>0.9091</td><td>N/A</td></tr><tr><td>2</td><td>11\%</td><td>0.8116</td><td>10\%</td></tr><tr><td>3</td><td>12\%</td><td>0.7118</td><td>15\%</td></tr><tr><td>4</td><td>12.5\%</td><td>0.6243</td><td>14\%</td></tr></table>

Table 1 lists market information about bonds that we would like to construct a tree to match. We follow the example in Black et al. (1990), using effective annual yields rather than continuously compounded yields. Since the table contains prices of zero-coupon bonds, we can infer the term structure of implied forward interest rates. There is also information about the volatility of interest rates. The column headed "Volatility in Year 1" is the standard deviation of the natural log of the yield for that bond 1 year hence. (We could, if we wished, convert this into a standard deviation of the bond price in a year.) The volatility for the  $n$ -year bond tells us the uncertainty about the year-1 yield on an  $(n - 1)$ -year bond. The volatility in year 1 of the 2-year bond is  $10\%$ ; this tells us that the 1-year yield in year 1 will have a  $10\%$  volatility. Similarly, the volatility in year 1 of the 4-year bond (which will be a 3-year bond in year 1) is  $14\%$ . While the tree matches observed yields and volatilities, it makes no attempt to capture the evolution of the yield curve over time. The yield curve evolution is of course implicit in the tree, but the tree is not calibrated with this in mind.

The BDT approach provides enough flexibility to match this data. Black, Derman, and Toy describe their tree as driven by the short-term rate, which they assume is lognormally distributed. The general structure of the resulting tree is illustrated in Figure 4. We assume that the risk-neutral probability of an up move in the interest rate is  $50\%$ .

For each period in the tree there are two parameters.  $R_{ih}$  can be thought of as a rate level parameter at a given time and  $\sigma_{i}$  as a volatility parameter. These parameters can be used to match the tree with the data. In an ordinary lognormal stock-price tree, the ratio of the up node to the down node is  $Ae^{\sigma \sqrt{h}} / Ae^{-\sigma \sqrt{h}} = e^{2\sigma \sqrt{h}}$ . The ratio between adjacent nodes is the same in Figure 4.

The volatilities in Table 1 are measured in the tree as follows. Let the time-  $h$  price of a zero-coupon bond maturing at  $T$  when the time-  $h$  short-term rate is  $r(h)$  be  $P[h, T, r(h)]$ . The annualized yield of the bond is

$$ y [ h, T, r (h) ] = P [ h, T, r (h) ] ^ {- 1 / (T - h)} - 1
$$

$$ d \ln (r) = \left[ d \ln (R) - \frac {\sigma^ {\prime} (t)}{\sigma (t)} (\ln (R) - \ln (r)) \right] d t + \sigma (t) d Z (t)
$$

# FIGURE 4

General form of a Black-Derman-Toy interest rate tree. The probability of going up or down from each node is  $50\%$ .

Period 0

Period 1

Period 2

Period 3

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/fafeb6d379c1ee0b969842ca93437a62e24532e8b5597122b8207e3ad5bdfe10.jpg)

At time  $h$  the short-term rate can take on the two values  $r_u$  or  $r_d$ . The annualized lognormal yield volatility is then

$$
Y i e l d \quad \text {v o l a t i l i t y} = 0. 5 \times \ln \left[ \frac {y (h , T , r _ {u})}{y (h , T , r _ {d})} \right] \times \frac {1}{\sqrt {h}} \tag {45}
$$

We multiply by 0.5 since the distance between nodes is twice the exponentiated volatility.

The tree in Figure 5, which depicts 1-year effective annual rates, was constructed using the data in Table 1. The tree behaves differently from binomial trees we have seen thus far. Unlike a stock-price tree, the nodes are not necessarily centered on the previous period's nodes. For example, in year 1, the lowest interest rate node is above the year-0 interest rate. If we track the minimum interest rate along the bottom of the tree, it increases, then decreases, then increases again. The maximum interest rate in year 3 is below the maximum rate in year 2.

These oddities arise because we constructed the tree to match the data in Table 1. Although bond yields steadily increase with maturity, volatilities do not. In order to match the pattern of volatilities given the structure of the BDT tree, rates must behave in what seems like an unusual fashion.

It is straightforward to verify that the tree in Figure 5 matches the data in Table 1. We can compute the prices of zero-coupon bonds to verify that the tree matches the yield curve. To verify the volatilities, we need to compute the prices of 1-, 2-, and 3-year zero-coupon bonds at year 1 and then compute the yield volatilities of those bonds using equation (45).

# FIGURE 5

Black-Derman-Toy interest rate tree constructed using the data in Table 1. Each rate is an effective annual 1-year rate. The probability of going up or down from each node is  $50\%$ .

Year 0

Year 1

Year 2

Year 3

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/e652ea28b788f638b53bda2ac7d75862e1c7c97d9781b35b80b2618834ee4654.jpg)

Constructing the tree in the first place is a matter of running verification in reverse. We build the tree out, starting from period 1. If we have a tree with  $n - 1$  periods, we can construct the  $n$ th period by simultaneously matching the yield of the  $n$ -period bond and the volatility of the  $n - 1$  period bond in period 1. Appendix A shows how to construct Figure 5.

Example 6. Figure 6 computes the cap payments on a \$100 4-year loan with annual interest payments, assuming a  $12\%$  cap settled annually. The payments in the figure are the present value of the cap payments for the interest rate at that node. For example, consider the topmost node in year 2. The realized interest rate is  $20.173\%$ . The caplet payment made at the node, 2 years from today, is therefore

$$
\text {C a p l e t} = \frac {\mathbb {S} 1 0 0 \times (0 . 2 0 1 7 - 0 . 1 2)}{1 + 0 . 2 0 1 7} = \mathbb {S} 6. 7 9 9
$$

Since  $20.17\%$  is the observed 1-year rate 2 years from today, 3 years from today the borrower will owe an interest payment of  $\$20.17$ . The  $\$6.799$ payment can be invested at the rate of  $20.17\%$ , so the net interest payment will be

$$
\$ 20.17 - (\$ 6.799 \times 1.2017) = \$ 12.00
$$

In the same way, we can compute the caplet payment at the middle node in year 2, 1.463. The payment at the bottom node is zero since 9.254\% is below the 12\% cap.

# FIGURE 6

Tree showing the payoff to a 12\% interest rate cap on a \100 3-year loan, assuming that interest rates evolve according to Figure 5. Each amount is the present value of the cap payment made at the interest payment date.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/7673287bd37612029c29e37d6e43398e79101028567448276c36e46d19c7bb2a.jpg)

We can value the year-3 caplet binomially by working back through the tree in the usual way. The calculation is

$$
\begin{array}{l} \text {V a l u e o f y e a r - 3 c a p p a m e n t} = \$ 0. 9 0 9 1 \times [ 0. 5 \times \$ 0. 8 8 3 2 \times (0. 5 \times \$ 6. 7 9 9 \\ + 0. 5 \times \$ 1. 4 6 3) + 0. 5 \times \$ 0. 9 0 2 3 \times (0. 5 \times 1. 4 6 3 + 0. 5 \times 0) ] = \$ 1. 9 5 8 \\ \end{array}
$$

The value of the cap is the value of the sum of the caplets. Problem 10 asks you to verify that the value of the cap is 3.909.

# Hull-White Model

Following Hull and White (1994), we will illustrate in detail a numerical procedure for fitting a trinomial tree to the interest rate process

$$ d r (t) = [ \theta (t) - a r (t) ] d t + \sigma d Z (t) \tag {46}
$$

This is a mean-reverting process where the instantaneous volatility,  $\sigma$ , is a constant. However, the interest rate volatility over a discrete period depends upon both  $\sigma$  and  $a$ . The Hull-White model provides a different parameterization of the interest rate process than does the Black-Derman-Toy model, which focuses on matching the term structure of volatilities.

Mean reversion in the Hull-White model will have two important consequences. First, the drift term in equation (46) becomes more important as the difference between  $r$  and  $\theta(t)/a$  becomes larger. A consequence is that extreme high and low interest rates become increasingly unlikely. Therefore, at each point in time we will be able to specify maximum and minimum values of the interest rate, an approximation that simplifies calculations.

Second, the probabilities of interest rate movements will vary with the level of the interest rate: When the interest rate is high it is likelier to decrease, and when low it is likelier to increase.

We construct the interest rate tree in two steps. First, we construct an interest rate grid consistent with the process in equation (46), but assuming that  $\theta(t) = 0$ . After constructing the grid, we determine the time-varying change in the interest rate,  $\theta(t)$ , so that we can match zero-coupon bond prices.

Example 7. Throughout this section we will work with a specific numerical example, from Hull and White (1994), in which  $a = 0.10$  and  $\sigma = 0.01$ . The yield on a zero-coupon bond with  $t$  years to maturity is given by  $y(t) = 0.08 - 0.05e^{-0.18t}$ . The annual yields on bonds with 1, 2, and 3 years to maturity, for example, are  $3.824\%$ ,  $4.512\%$ , and  $5.086\%$ . The corresponding zero-coupon bond prices are 0.962, 0.914, and 0.858.

Constructing the Initial Interest Rate Grid. We begin by constructing a grid of possible interest rates over time, taking account of the behavior implied by equation (46). The goal is to produce a tree that matches the expected change in the interest rate, the volatility of the change in interest rates, and zero-coupon bond yields. We need to determine the distance on the grid between interest rates at a point in time, as well as the probabilities of moving from node to node over time.

Because of mean reversion, interest rates on the grid will attain a minimum value of  $\underline{r}$  and a maximum value  $\overline{r}$ . There are  $n_r$  steps, which implies a step size of  $\epsilon = (\overline{r} - \underline{r}) / n_r$ . Possible interest rates are then  $\underline{r}, \underline{r} + \epsilon, \underline{r} + 2\epsilon, \dots, \underline{r} + (n_r - 1)\epsilon, \overline{r}$ . Hull and White (1994) suggest setting  $\epsilon = \sigma \sqrt{3h}$  and the number of grid points equal to  $n_r = 2k + 1$ , where  $k$  is the smallest integer greater than  $0.184 / ah$ . Along the time axis, if we have  $n_t$  time steps, the distance between times is  $h = T / n_t$ .

The resulting grid appears in Figure 7. This grid approximates the process in equation (46), assuming that  $\theta(t) = 0$ . The one-period discount factors implied by the rates in Figure 7 are  $e^{0.0346}$ ,  $e^{0.0173}$ ,  $e^0$ ,  $e^{-0.0173}$ , and,  $e^{-0.0346}$ .

Probabilities. We now compute the probabilities associated with the various interest rate movements in Figure 7. There will be three possible patterns of interest rate movements on the grid, illustrated in Figure 8. Pattern (a) occurs for the maximum interest rate, pattern (b) for the minimum interest rate, and pattern (c) for other interest rates. We will derive the probabilities for scenario (a); the derivations for (b) and (c) will be analogous.

The central node in Figure 7—the tree before calibration—corresponds to an interest rate of 0. If there are  $J$  nodes, the index runs from  $j_{\mathrm{min}} \equiv -(J - 1) / 2$  to  $j_{\mathrm{max}} \equiv (J - 1) / 2$  (by virtue of symmetry and being centered at zero,  $J$  is odd). At node  $j$ , the interest rate is then  $\hat{r}_j = j\epsilon$ . The expected change in the interest rate is  $-a\hat{r}_jh$ . The interest rate can transition to one of three rates the following period:  $\hat{r} - \epsilon, \hat{r}$ , or  $\hat{r} + \epsilon$ . Denoting probabilities of up, middle, and down rates as  $q_u, q_m$ , and  $q_d$ , the equation matching the expected change in the process is

# FIGURE 7

Hull-White interest rate grid prior to matching zero coupon bond prices. The time step is  $h = 1$  and the interest rate difference between nodes is  $\epsilon = 0.0173$ . Assumes  $a = 0.10$  and  $\sigma = 0.01$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/b9c408c6b702fe0e3a8244e4922128b68f22f5009e0951fa6c50467e5dad55ce.jpg)

# FIGURE 8

Possible movements of interest rates in the Hull-White interest rate grid. Pattern (b) occurs when the interest rate is at its minimum level, (c) when the interest rate is at its maximum level, and (a) otherwise.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/43e93e9504b4a37467388616a42b4041aa2600498efc453204919de6a0f1f006.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/357320476b9b802b43eac3dba9f3fbaa4372fc4227ff1ff1820bcd6836ed4512.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/4f7f94918330b3febc43d3e3fcf2e533166ddbf244ff179074a276b082eee59c.jpg)

$$
\begin{array}{l} p^* = \frac{F_{t,t+h}/S_t - d}{u - d} \tag{23} \\ = \frac{e^{(r - \delta)h} - d}{u - d} \\ \end{array}
$$

The variance of the change in the interest rate is

$$
\sigma^ {2} h = q _ {u} [ \epsilon - (- a \hat {r} h) ] ^ {2} + q _ {m} [ a \hat {r} h ] ^ {2} + q _ {d} [ - \epsilon - (- a \hat {r} h) ] ^ {2}
$$

Imposing  $q_{u} + q_{m} + q_{d} = 1$  and solving for the probabilities, we have

$$ q _ {u} = \frac {1}{6} + \frac {1}{2} \left(a ^ {2} h ^ {2} j ^ {2} - a h j\right)
$$

$$ q _ {m} = \frac {2}{3} - a ^ {2} h ^ {2} j ^ {2} \tag {47}
$$

$$ q _ {d} = \frac {1}{6} + \frac {1}{2} \left(a ^ {2} h ^ {2} j ^ {2} + a h j\right)
$$

In similar fashion, we can solve for the probabilities when  $r = \overline{r}$  and  $r = \underline{r}$ . When  $r = \overline{r}$  ( $j = (J - 1)/2$ ), we have

$$ q _ {u} = \frac {7}{6} + \frac {1}{2} \left(a ^ {2} h ^ {2} j ^ {2} + 3 a h j\right)
$$

$$ q _ {m} = - \frac {1}{3} - a ^ {2} h ^ {2} j ^ {2} - 2 a h j \tag {48}
$$

$$ q _ {d} = \frac {1}{6} + \frac {1}{2} \left(a ^ {2} h ^ {2} j ^ {2} + a h j\right)
$$

When  $r = \underline{r}$ $(j = -(J - 1) / 2)$ , the probabilities are

$$ q _ {u} = \frac {1}{6} + \frac {1}{2} \left(a ^ {2} h ^ {2} j ^ {2} - a h j\right)
$$

$$ q _ {m} = - \frac {1}{3} - a ^ {2} h ^ {2} j ^ {2} + 2 a h j \tag {49}
$$

$$ q _ {d} = \frac {7}{6} + \frac {1}{2} \left(a ^ {2} h ^ {2} j ^ {2} - 3 a h j\right)
$$

To recap, there are  $J$  possible interest rate nodes. The probability of a move from state  $j$  at time  $t$  to state  $k$  at time  $t + h$ ,  $q_{j,k}$ , is given by equations (47)-(49). Table 2 contains the transition probabilities for the assumptions in Example 7. We can summarize the transition probabilities in the matrix  $\mathbf{Q} = \{q_{j,k}\}$ . The entry in row  $j$  and column  $k$  is the probability of moving in one period from state  $j$  to  $k$ ; thus  $\mathbf{Q}$  is the same as Table 2.

Matching Zero-Coupon Bond Prices. The interest rate process has one additional parameter, the time-varying drift,  $\theta(t)$ . Hull and White (1994) show that setting  $\theta(t)$  is the same as selecting a period-specific discount factor  $e^{-\alpha(t)}$  by which to shift the interest rate grid. We will determine  $\alpha(t)$  by starting at time 0 and working forward through the tree.

Period 1. At time 0, the 1-period interest rate,  $3.824\%$ , is known. Thus, we set  $\alpha(1) = 0.03824$ . You can see this is the rate at the first node in Figure 9.

Period 2. There are three possible interest rates in period 2. If we number the nodes so that the center node is node 0, we can determine the price of a two-period zero-coupon bond as follows:

$$
P _ {0} (0, 2) = \left[ q _ {0, 1} e ^ {0. 0 1 7 3} + q _ {0, 0} e ^ {0} + q _ {0, - 1} e ^ {- 0. 0 1 7 3} \right] e ^ {- (0. 0 3 8 2 4 + \alpha (2))}
$$

Solving for  $\alpha (2)$  , we obtain  $\alpha (2) = 0.052046$

Probabilities of transitioning from state  $j$  (row) to state  $k$  (column), constructed using equations (47)-(49) and the assumptions in Example 7.

TABLE 2

<table><tr><td rowspan="2">From State:</td><td colspan="5">To State:</td></tr><tr><td>2</td><td>1</td><td>0</td><td>-1</td><td>-2</td></tr><tr><td>2</td><td>0.887</td><td>0.0267</td><td>0.0867</td><td>0.0000</td><td>0.000</td></tr><tr><td>1</td><td>0.122</td><td>0.6567</td><td>0.2217</td><td>0.0000</td><td>0.000</td></tr><tr><td>0</td><td>0.000</td><td>0.1667</td><td>0.6667</td><td>0.1667</td><td>0.000</td></tr><tr><td>-1</td><td>0.000</td><td>0.0000</td><td>0.2217</td><td>0.6567</td><td>0.122</td></tr><tr><td>-2</td><td>0.000</td><td>0.0000</td><td>0.0867</td><td>0.0267</td><td>0.887</td></tr></table>

# FIGURE 9

Hull-White interest rate grid after matching zero-coupon bond prices. The time step is  $h = 1$  and the interest rate difference between nodes is  $\epsilon = 0.0173$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/4935cd4a4989251e980bcab5817115fbfc09f8c1e5a40099fb7ec44ae0f14ee4.jpg)

Before moving on to 3-period valuation, we will solve for  $\alpha(2)$  using a different notation that will be useful in subsequent periods. We can write the calculation for  $P_0(0,2)$  using the probability transition matrix  $\mathbf{Q}$ . At any point in Figure 7, there are five possible interest rates, although in period 2 we have a positive probability of reaching only three of them. Let  $\mathbf{R}$  denote the matrix with  $e^{(j_{\max} - (j - 1))\epsilon}$  on the  $j$ th element of the diagonal ( $j_{\max} = 2$  in this example):

$$
\mathbf {R} = \left( \begin{array}{c c c c c} e ^ {0. 0 3 4 6} & 0 & 0 & 0 & 0 \\ 0 & e ^ {0. 0 1 7 3} & 0 & 0 & 0 \\ 0 & 0 & e ^ {0} & 0 & 0 \\ 0 & 0 & 0 & e ^ {- 0. 0 1 7 3} & 0 \\ 0 & 0 & 0 & 0 & e ^ {- 0. 0 3 4 6} \end{array} \right)
$$

With  $\mathbf{Q}$  as the matrix describing the probability of transiting from row  $i$  at time  $t$  to column  $j$  at time  $t + h$ , the probability of transiting to a node times the (uncalibrated) discount rate at that node is  $\mathbf{Q} \times \mathbf{R}$ . Let  $\mathbf{1}$  be a column vector of ones of length 5:  $\mathbf{1} = (1 1 1 1 1)^{\prime}$ . We can write the value of the two-period bond as

$$
\mathbf {P} _ {0} (0, 2) = \mathbf {Q} \times \mathbf {R} \times e ^ {- 0. 0 3 8 2 4 - 0. 0 5 2 0 4 6} \times \mathbf {1}
$$

This calculation actually computes five bond prices, with each price corresponding to one of five possible initial one-period interest rates. We are calibrating the tree based on the center node, however (see Figure 7), so we use only the bond price at that node.

Period 3. Following the procedure used to value the two-period bond, we have an additional probability transition matrix and set of discount factors. Thus, we can write the value of the three-period bond as

$$
\mathbf {P} _ {0} (0, 3) = \underbrace {\mathbf {Q} \times \mathbf {R} \times e ^ {- 0 . 0 3 8 2 4 - 0 . 0 5 2 0 4 6}} _ {\text {T w o - p e r i o d b o n d c a l c u l a t i o n}} \times \mathbf {Q} \times \mathbf {R} \times e ^ {- \alpha (3)} \times \mathbf {1}
$$

Performing this calculation, we obtain  $0.91388e^{-\alpha(3)}$  for the uncalibrated bond price. The bond price we want to match is  $P_0(0,3) = 0.85848$ , so we compute  $\alpha(3)$  as

$$
\alpha (3) = \ln (0. 9 1 3 8 8 / 0. 8 5 8 4 8) = 0. 0 6 2 5 4
$$

$N$  periods. We can value an  $N$ -period zero-coupon bond by repeating the procedure above. Doing this, we obtain

$$
\mathbf {P} _ {0} (0, N) = \left[ \prod_ {i = 2} ^ {N} \mathbf {Q} \times \mathbf {R} \right] \times e ^ {- \sum_ {i = 1} ^ {N} \alpha (i)} \times \mathbf {1} \tag {50}
$$

In order to value options or other contingent cash flows, we simply replace 1, the vector of ones, with the appropriate vector of cash flows at each node. The value is that at the middle node of the resulting vector.

Valuation. Figure 10 summarizes the valuation results. The number at node  $j$  at time  $t$  is  $V(t, j)$ , the value at time 0 of a \$1 cash flow at that node—a state price. We can compute this value by replacing the cash flow vector  $\mathbf{1}$  in equation (50) with a vector with 1 in the  $j$ th row and all the rest zeros. If we do this for every node, we obtain an  $n_r \times n_T$  matrix  $V$  that we can use for valuation.[18]

# FIGURE 10

State prices in the Hull-White interest rate grid. Each square represents an interest rate, and the amount below the square is the time 0 value of 1 paid in that state. The time step is h = 1 and the interest rate difference between nodes is ε = 0.0173. The assumptions are given in Example 7.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/09d9e992cd2cb707bd9370b0dc06f803c975dc4b97378535383a51d4d6352cdd.jpg)

Looking at Figure 10, the value of  \$1 paid at time 1 is e^{-0.0382} = 0.962\$ . The time 0 value of 1 paid at time 3 at the top node in Figure 10 is 0.017. These are the time 0 state prices corresponding to each interest rate node. We can compute the price of a 3-year zero-coupon bond by summing the time 3 entries in Figure 10.

Example 8. Consider a 4-year  $8\%$  annual interest rate cap. From Figure 9, over 4 years there are three nodes at which the interest rate exceeds  $8\%$ :  $9.72\%$ ,  $10.51\%$ , and  $8.77\%$ . The value of the cap per dollar of notional amount is

$$
\begin{array}{l} 0. 0 1 7 \times (0. 0 9 7 2 - 0. 0 8) + 0. 0 3 3 \times (0. 1 0 5 1 - 0. 0 8) \\ + 0. 1 7 9 \times (0. 0 8 7 7 - 0. 0 8) = 0. 0 0 2 5 1 \\ \end{array}
$$

Example 9. Consider a 3-year call option on a 1-year bond with a strike price of  $K = 0.94$ . The applicable rates are 1-year rates for a bond bought in period 3 and paying 1 in period 4. The two in-the-money nodes are those in period 3 where rates are 5.31\% and 3.58\%. The value of the option is

$$
\begin{array}{l} P(S, K, t) = \\ \max\left(K - S, e^{-r h} \left[ P(u S, K, t + h) p^* + P(d S, K, t + h) (1 - p^*) \right]\right) \tag{19} \\ \end{array}
$$

# 5. MARKET MODELS

Thus far we have considered interest rate models where we specify the behavior of the short-term interest rate and then value a payoff using equation (9). We now consider a second class of models, where we assume that the forward price follows equation (11) and we value a payoff using equation (12). The Black model, which is a prominent example of this class of models, is used to value options on bonds and interest rates.

# The Black Model

Consider a call option with strike price  $K$ , expiring at time  $T$ , on a zero-coupon bond paying \$1 at time  $T + s$ . The payoff of this option at time  $T$  is

$$
\text {C a l l} = \max  [ 0, P _ {T} (T, T + s) - K P _ {T} (T, T) ] \tag {52}
$$

Here  $P_T(T, T)$  is the price of a zero-coupon bond maturing at time  $T$ . We assume that the forward price

$$
F _ {t, T} [ P (T + s) ] = P _ {t} (t, T + s) / P _ {t} (t, T) \tag {53}
$$ is an Ito process with constant volatility,  $\sigma$ . The price of an option with this payoff is then given as


$$

\begin{array}{l} \operatorname {C a l l} = P _ {t} (t, T + s) N \left(\frac {\ln \left[ P _ {t} (t , T + s) / P _ {t} (t , T) K \right] + 0 . 5 \sigma^ {2} (T - t)}{\sigma \sqrt {T - t}}\right) \\ - K P _ {t} (t, T) N \left(\frac {\ln [ P _ {t} (t , T + s) / K P _ {t} (t , T) ] - 0 . 5 \sigma^ {2} (T - t)}{\sigma \sqrt {T - t}}\right) \\ \end{array}

$$

The volatility in equation (54) is the volatility of the forward price for the bond, where the forward contract calls for time- $T$  delivery of the bond maturing at  $T + s$ . Equation (54) can also be written in terms of the forward price:

$$

P _ {t} (t, T) \left[ F _ {t, T} [ P (T + s) ] N \left(d _ {1}\right) - K N \left(d _ {2}\right) \right] \tag {55}

$$ where


$$ d _ {1} = \frac {\ln \left(F _ {t , T} [ P (T + s) ] / K\right) + 0 . 5 \sigma^ {2} (T - t)}{\sigma \sqrt {T - t}}
$$

$$ d _ {2} = d _ {1} - \sigma \sqrt {T}
$$

This is the Black formula for a call option on a bond. The formula for a put can be obtained by put-call parity. As we saw in Section 1, the formula can also be used to price caplets and floorlets.

The Black formula assumes that the volatility of the forward price is constant. The volatility of any particular bond varies over time, typically decreasing as it approaches maturity. The volatility of a forward price, however, is the volatility of the ratio in the prices of bonds with different maturities. A variation in the interest rate affects the discounting of both the underlying asset (the bond maturing at time  $T + s$ ) and the bond maturing at time  $T$ , so this volatility plausibly could be constant.

In practice, the implied volatility from the Black formula is often used for quoting prices of caplets and floorlets. For example, the statement that a particular caplet is priced at a volatility of 90 basis points (using the Black formula) tells us the volatility of a specific forward interest rate and provides a general sense of prices. The difference in implied volatilities across maturities provides information about the relative volatilities along different portions of the forward curve.

For an example using the Black formula to price caplets and caps, suppose a borrower has a floating rate loan with interest payments at times  $t_i$ ,  $i = 1, \dots, n$ . A cap would make the series of payments

$$
\text {C a p} t _ {i + 1} = \max  \left[ 0, R _ {t _ {i}} \left(t _ {i}, t _ {i + 1}\right) - K _ {R} \right] \tag {56}
$$

The value of the cap is the summed value of the individual caplets.

Example 10. One-year and 2-year zero-coupon bonds with a \$1 maturity value have prices of \$0.9091 and \$0.8116. The 1-year implied forward 1-year bond price is therefore $0.8116/$0.9091 = \$0.8928, with an implied forward rate of 12.01\%. Suppose the volatility of the forward bond price is 2\%. The price of a 1-year put option to sell the 1-year bond for a price of 0.88 is

$$
\operatorname {B S P u t} (0. 8 1 1 6, 0. 9 0 9 1 \times 0. 8 8, 0. 0 2, 0, 1, 0) = 0. 0 0 2 2 2 8
$$

We can also price the option using the Black formula:

$$
0. 9 0 9 1 \times \operatorname {B S P u t} (0. 8 1 1 6 / 0. 9 0 9 1, 0. 8 8, 0. 0 2, 0, 1, 0) = 0. 0 0 2 2 2 8
$$

# LIBOR Market Model

The Black model values a cash flow based on a single interest rate or bond price. In some circumstances a valuation may depend on several interest rates or bond prices (e.g., coupon bonds and swaps). The LIBOR market model, due to Brace et al. (1997), extends the framework of the Black model to value such claims.[19]

To understand the LIBOR market model, suppose we select time  $T$  as the date for which all forward contracts are martingales. Figure 11 illustrates the set of forward interest rates that are martingales. For example, consider the ratio  $P_{t}(t,T - 4h) / P_{t}(t,T)$ . This is the nonannualized forward interest rate for a loan beginning at time  $T - 4h$  and ending at time  $T$ , which we denote  $R_{t}(T - 4h,T)$ . If we invest \$1 at time  $T - 4h$  earning the rate we locked in at time  $t$ , then at time  $T$  we will have  $1 + R_{t}(T - 4h,T)$ .

The forward interest rates in Figure 11 that are martingales all represent overlapping periods of time, and all have different maturities, but all mature at date  $T$  and are therefore computed with  $P_{t}(t,T)$  as the denominator. The rate  $R_{t}(T - 2h,T - h)$ , which is an  $h$ -period rate prevailing from  $T - 2h$  to  $T - h$ , is not a martingale. Jensen's inequality is the reason. We can represent  $R_{t}(T - 2h,T - h)$  as the ratio of forward rates that are martingales:

$$
1 + R _ {t} (T - 2 h, T - h) = \frac {1 + R _ {t} (T - 2 h , T)}{1 + R _ {t} (T - h , T)}
$$

# FIGURE 11

Forward interest rates that are martingales when the zero-coupon bond maturing at time  $T$  is numeraire.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/36879b2ddce2d1c890d37028da1a1d615c3558826e23c25b4b72d7b47eee5515.jpg)

Jensen's inequality tells us that if both  $1 + R_{t}(T - 2h,T)$  and  $1 + R_{t}(T - h,T)$  are martingales, their ratio cannot be a martingale.[20]

The insight of the LIBOR market model is that we can use the processes for rates that are martingales to compute the process for forward rates that are not martingales under the same measure, such as  $R_{t}(T - ih, T - (i - 1)h)$ . We will call these one-period rates LIBOR rates, denoted  $L_{i}(t)$ .

To simplify the notation, for a given  $T$  and  $h$  define  $R_{i}(t) = R_{t}(T - ih,T)$ . With  $P_{t}(t,T)$  as numeraire,  $R_{i}(t)$  is a martingale:

$$
\frac {d R _ {i} (t)}{R _ {i} (t)} = \nu_ {i} (t) d Z
$$

We assume that the annualized LIBOR rate follows the process

$$
\frac {d L _ {i} (t)}{L _ {i} (t)} = \mu_ {i} (t) d t + \sigma_ {i} (t) d Z (t) \tag {57}
$$

Because  $L_{i}(t)$  is annualized (unlike the  $R_{i}$ ), the actual interest paid over a period  $h_{i}$  is  $h_{i}L_{i}$ . We wish to find the appropriate  $\mu_{i}$  and  $\sigma_{i}$  given that the  $R_{i}(t)$  are martingales.

We begin by noting that for the first period,  $h_1L_1(t) = R_1(t)$ . Thus,  $L_{1}(t)$  is a martingale:

$$ h _ {1} d L _ {1} (t) = d R _ {1} (t)
$$

Moving back one period, the forward rate formula implies that  $1 + h_2L_2(t) = (1 + R_2(t)) / (1 + h_1L_1(t))$ . Take logs of both sides:

$$
\ln [ 1 + R _ {2} (t) ] = \ln [ 1 + h _ {2} L _ {2} (t) ] + \ln [ 1 + h _ {1} L _ {1} (t) ] \tag {58}
$$

Let  $h_i L_i(t) / (1 + h_i L_i(t)) = \phi_i(t)$  denote the present value of interest on a loan at rate  $L_i(t)$ . From Ito's Lemma, we have

$$ d \ln [ 1 + R _ {2} (t) ] = - 0. 5 v _ {2} ^ {2} d t + v _ {2} d Z
$$

$$ d \ln [ 1 + h _ {1} L _ {1} (t) ] = - 0. 5 \phi_ {1} (t) ^ {2} \sigma_ {1} ^ {2} d t + \phi_ {1} (t) \sigma_ {1} d Z
$$

$$ d \ln [ 1 + h _ {2} L _ {2} (t) ] = \phi_ {2} (t) \mu_ {2} d t - 0. 5 \phi_ {2} (t) ^ {2} \sigma_ {2} ^ {2} d t + \phi_ {2} (t) \sigma_ {2} d Z
$$

Using equation (58), we can equate coefficients on the  $dZ$  and  $dt$  terms to obtain

$$
\nu_ {2} (t) = \phi_ {2} (t) \sigma_ {2} (t) + \phi_ {1} (t) \sigma_ {1} (t)
$$ and


$$

\mu_ {2} \phi_ {2} (t) = 0. 5 \phi_ {1} (t) ^ {2} \sigma_ {1} ^ {2} + 0. 5 \phi_ {2} (t) ^ {2} \sigma_ {2} ^ {2} - 0. 5 \nu_ {2} ^ {2}

$$

Substituting the expression for  $\nu_{2}(t)$  into that for  $\mu_2\phi_2(t)$ , we obtain the process for  $L_{2}(t)$ :

$$

\frac {d L _ {2} (t)}{L _ {2} (t)} = - \frac {h _ {1} L _ {1} (t)}{1 + h _ {1} L _ {1} (t)} \sigma_ {1} \sigma_ {2} + \sigma_ {2} d Z

$$

Continuing in this way in general, we obtain

$$

\frac {d L _ {n} (t)}{L _ {n} (t)} = - \sum_ {j = 1} ^ {n - 1} \frac {h _ {j} L _ {j} (t) \sigma_ {j} (t)}{1 + h _ {j} L _ {j} (t)} \sigma_ {n} (t) d t + \sigma_ {n} (t) d Z \tag {59}

$$

This solution uses  $P_{t}(t,T)$  as numeraire.

Equation (59) defines processes for the complete set of LIBOR rates in an internally consistent manner. These rates can be used to construct bond prices and to determine the values of caps and swaptions. It is possible to select the individual LIBOR volatilities to match implied volatilities for different maturities.

You may encounter variants of equation (59) constructed using a different zero-coupon bond as numeraire. These solutions will look different, but this occurs because a different maturity is the starting point.

## CHAPTER SUMMARY

Two important classes of interest rate and bond derivatives are those based on the evolution of the short-rate and those based on forward prices. Short-rate models generally value a zero-coupon bond by specifying a process for the short-term interest rate,  $r(t)$ , and then computing

$$

\mathrm {E} _ {t} ^ {B} \left[ e ^ {- \int_ {t} ^ {T} r (s) d s} \right]

$$

The Vasicek and Cox-Ingersoll-Ross short-rate models assume different mean-reverting processes for the short-rate and result in closed-form bond pricing models.

For many short-rate processes there is not a closed-form solution. In these cases a binomial or trinomial tree can be used to approximate the calculation. The Black-Derman-Toy tree is a binomial interest rate tree calibrated to match zero-coupon yields and a particular set of volatilities. The Hull-White model illustrates a trinomial calculation approximating a mean-reverting short-rate process.

Under the assumption that the forward price for a bond is lognormally distributed, the Black model provides a simple closed-form pricing model (essentially the Black-Scholes formula) that can be used to price bond and interest rate options. The LIBOR market model is a generalization of the Black model that specifies the process for an entire set of forward interest rates.

```d2
direction: right

InterestRateDerivatives: Interest Rate Derivatives {
  shape: rectangle
  style.fill: "#e3f2fd"
  style.stroke: "#1976d2"
}

ShortRateModels: Short-Rate Models {
  shape: rectangle
  style.fill: "#f3e5f5"
  style.stroke: "#7b1fa2"
}

MarketModels: Market Models {
  shape: rectangle
  style.fill: "#e8f5e9"
  style.stroke: "#388e3c"
}

BlackScholes: Black-Scholes-Merton Approach {
  shape: rectangle
  style.fill: "#fff3e0"
  style.stroke: "#f57c00"
}

Vasicek: Vasicek Model {
  shape: rectangle
  style.fill: "#fce4ec"
  style.stroke: "#c2185b"
}

CIR: Cox-Ingersoll-Ross Model {
  shape: rectangle
  style.fill: "#f1f8e9"
  style.stroke: "#689f38"
}

BinomialTrees: Binomial Trees {
  shape: rectangle
  style.fill: "#e0f7fa"
  style.stroke: "#00bcd4"
}

TrinomialTrees: Trinomial Trees {
  shape: rectangle
  style.fill: "#f3e5f5"
  style.stroke: "#9c27b0"
}

InterestRateDerivatives -> ShortRateModels: Includes
InterestRateDerivatives -> MarketModels: Includes
ShortRateModels -> BlackScholes: Uses
ShortRateModels -> Vasicek: Example
ShortRateModels -> CIR: Example
ShortRateModels -> BinomialTrees: Implements with
ShortRateModels -> TrinomialTrees: Implements with
MarketModels -> Black: Uses
MarketModels -> LIBOR: Uses
```

## FURTHER READING

Fixed income texts at roughly the level of this chapter include Sundaresan (2009), Tuckman and Serrat (2012), and Veronesi (2010). Classic treatments of bond pricing with interest rate uncertainty are Vasicek (1977) and Cox et al. (1985b). These are examples of affine term structure models, discussed more generally in Duffie and Kan (1996) and Dai and Singleton (2000).

Binomial treatments include Rendleman and Bartter (1980), Ho and Lee (1986), and Black et al. (1990). Heath et al. (1992) have been extremely influential insofar as they provide an equilibrium characterization of the evolution of forward rates. See also Brace et al. (1997) and Miltersen et al. (1997). More in-depth treatments of interest rate derivatives can be found in Hull (2000, chs. 20-22), Rebonato (1996), Jarrow (1996), and James and Webber (2001).

Litterman and Scheinkman (1991) is a classic study of factors affecting bond returns. Bliss (1997) surveys this literature.

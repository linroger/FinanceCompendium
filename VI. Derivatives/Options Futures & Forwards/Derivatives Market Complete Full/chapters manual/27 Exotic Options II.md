---
title: "27 Exotic Options II"
parent_directory: Derivatives Market Complete Full/chapters manual
formatted: 2025-12-21 02:25:00 AM
formatter_model: claude-sonnet-4
cli_tool: claude-code
primary_tags:
  - exotic options
  - barrier options
  - quantos
secondary_tags:
  - all-or-nothing options
  - cash-or-nothing calls
  - asset-or-nothing options
  - rebate options
  - digital options
  - quanto contracts
  - nikkei futures
cssclasses: academia
---

# 27 Exotic Options II

## I. All-or-Nothing Options

We begin with a discussion of simple all-or-nothing options, which pay the holder a discrete amount of cash or a share if some particular event occurs. These are described as all-orn-thing (also called binary or digital options) because the payoff can be thought of as 0 or 1: Either you receive the cash or share, or you do not.

### Terminology

There are many different kinds of all-or-nothing options; payoffs can be contingent on the stock price at expiration, as well as on whether the stock price has hit a barrier over the life of the option. We are interested in these options in and of themselves, and also because they are building blocks, useful for constructing variants of ordinary puts and calls as well as barrier options.

Naming all of these options can be a complex task. Table 1 describes the naming scheme we will use. The terminology will make sense as we introduce the various claims.

To see how the naming scheme works, consider the cash-or-nothing option. One kind of cash-or-nothing option pays the holder \$1 at time  $T$  if the stock price is greater than  $K$ .

From Chapter 23 of Derivatives Markets, Third Edition, Robert McDonald. Copyright © 2013 by Pearson Education, Inc. Published by Pearson Prentice Hall. All rights reserved.

TABLE I Option nomenclature used in this chapter.

<table><tr><td>Notation</td><td>Meaning</td></tr><tr><td>Asset</td><td>Payment at expiration is one unit of the asset</td></tr><tr><td>Cash</td><td>Payment at expiration is \$1</td></tr><tr><td>Call</td><td>Payment received if ST &gt; K</td></tr><tr><td>Put</td><td>Payment received if ST &lt; K</td></tr><tr><td>UI</td><td>Up and in: Payment received only if barrier H &gt; S0 is hit</td></tr><tr><td>DI</td><td>Down and in: Payment received only if barrier H &lt; S0 is hit</td></tr><tr><td>UO</td><td>Up and out: Payment received only if barrier H &gt; S0 is not hit</td></tr><tr><td>DO</td><td>Down and out: Payment received only if barrier H &lt; S0 is not hit</td></tr><tr><td>UR</td><td>Up rebate: Rebate received at the time the barrier, H &gt; S0, is hit</td></tr><tr><td>DR</td><td>Down rebate: Rebate received at the time the barrier, H &lt; S0, is hit</td></tr><tr><td>URDeferred</td><td>Same as UR, except \$1 paid at expiration</td></tr><tr><td>DRDeferred</td><td>Same as DR, except 1 paid at expiration</td></tr></table>

The condition under which it pays off,  $S_{T} > K$ , is like that for an ordinary call option, but it is not an ordinary call, because it pays \$1 instead of  $S_{T} - K$ . We will identify an option like this as a "cash call" (CashCall), i.e., a contract that pays cash under the same condition as a call—when  $S_{T} > K$ .

Some options make payments only if multiple events occur. For example, consider a cash-or-nothing call that pays 1 only if S_{T} > K and the barrier H > S_{0} has not been hit. We will refer to this as a "cash up and out call" (CashUOCall): "Cash" because it pays \$1, "up and out" because payment does not occur if the stock price rises to the barrier, and "call" because payment requires S_{T} > K. Similarly, we will use the terms "asset" to refer to options that pay off in shares and "put" to refer to options that pay off only when S_{T} < K. To simplify the formulas in this chapter, we will use the notation in Table 2.

## Cash-or-Nothing Options

The risk-neutral probability that  $S_{T} > K$  is given by  $N(d_{2})$  from the Black-Scholes formula. Discounted risk-neutral probabilities are prices of derivatives. Thus, the price for a cash-orn-thing call—which pays $1 if  $S_{T} > K$  and zero otherwise—is

$$
\operatorname {C a s h C a l l} (S, K, \sigma , r, T - t, \delta) = e ^ {- r (T - t)} N \left(d _ {2}\right) \tag {3}
$$

Equation (3), multiplied by the strike price,  $K$ , is the second term in the Black-Scholes formula for a call option. If you were to be paid  $x$  if  $S > K$ , you could value this as  $x$  cash-or-nothing options:

$$ x e ^ {- r (T - t)} N \left(d _ {2}\right)
$$

# TABLE 2

Definitions of expressions used in pricing formulas in this chapter.

$$ d _ {1} = \left[ \ln \left(S _ {t} / K\right) + (r - \delta + 0. 5 \sigma^ {2}) (T - t) \right] / \sigma \sqrt {T - t}
$$

$$ d _ {2} = d _ {1} - \sigma \sqrt {T - t}
$$

$$ d _ {3} = \left[ \ln \left(H ^ {2} / S _ {t} K\right) + \left(r - \delta + 0. 5 \sigma^ {2}\right) (T - t) \right] / \sigma \sqrt {T - t}
$$

$$ d _ {4} = d _ {3} - \sigma \sqrt {T - t}
$$

$$ d _ {5} = \left[ \ln \left(S _ {t} / H\right) + (r - \delta + 0. 5 \sigma^ {2}) (T - t) \right] / \sigma \sqrt {T - t}
$$

$$ d _ {6} = d _ {5} - \sigma \sqrt {T - t}
$$

$$ d _ {7} = \left[ \ln \left(H / S _ {t}\right) + (r - \delta + 0. 5 \sigma^ {2}) (T - t) \right] / \sigma \sqrt {T - t}
$$

$$ d _ {8} = d _ {7} - \sigma \sqrt {T - t}
$$

You could also have a security that pays  \$1 if S is less than K. This is equivalent to a security that pays\$ 1, less a security that pays 1 if S_T is greater than K. Such an option is called a cash-or-nothing put. The value is

$$
\begin{array}{l} \operatorname {C a s h P u t} (S, K, \sigma , r, T - t, \delta) = e ^ {- r (T - t)} - e ^ {- r (T - t)} N \left(d _ {2}\right) \tag {4} \\ = e ^ {- r (T - t)} N (- d _ {2}) \\ \end{array}
$$

Example 1. Suppose S = $40, K = $40, σ = 0.3, r = 0.08, T - t = 0.25, and δ = 0. The value of a claim that pays \$1 if S > K in 3 months is \$0.5129, computed using equation (3). The value of a claim that pays \$1 if S < K is \$0.4673, using equation (4). The combined value of the two claims is e-0.08×0.25 = 0.9802.

We know that equations (3) and (4) are correct since both formulas satisfy the Black-Scholes equation (equation (11)) and the appropriate boundary conditions.

## Asset-or-Nothing Options

An asset-or-nothing call is an option that gives the owner a unit of the underlying asset if the asset price exceeds a certain level and zero otherwise. The price of an asset-or-nothing call is obtained from the price of a cash-or-nothing by replacing the dividend yield,  $\delta$ , in the cash-or-nothing formula with  $\delta - \sigma^2$ , and multiplying the result by the forward price for the stock. The result is

$$
\begin{array}{l} S e ^ {(r - \delta) (T - t)} e ^ {- r (T - t)} N \left(\frac {\ln [ S _ {t} / K ] + [ r - (\delta - \sigma^ {2}) - 0 . 5 \sigma^ {2} ] [ T - t ]}{\sigma \sqrt {T - t}}\right) \\ = S e ^ {- \delta (T - t)} N \left(d _ {1}\right) \\ \end{array}
$$

This is the first term in the Black-Scholes formula.

Thus, the formula for an asset-or-nothing call that pays one unit of stock is

$$
\operatorname {A s s e t C a l l} (S, K, \sigma , r, T - t, \delta) = e ^ {- \delta (T - t)} S N \left(d _ {1}\right) \tag {5}
$$

We could also have an option in which we receive the stock if  $S_T < K$ , in which case the value is

$$
S e ^ {- \delta (T - t)} - S e ^ {- \delta (T - t)} N \left(d _ {1}\right) = S e ^ {- \delta (T - t)} N \left(- d _ {1}\right)
$$

Thus, the value of the asset-or-nothing put is

$$
\operatorname {A s s e t P u t} (S, K, \sigma , r, T - t, \delta) = e ^ {- \delta (T - t)} S N (- d _ {1})
$$

Example 2. Suppose S = $40, K = $40, σ = 0.3, r = 0.08, T - t = 0.25, and δ = 0. The value of a claim that pays one share if S > K in 3 months is \$23.30, computed using equation (5). The value of a claim that pays one share if S < K is \$16.70. The combined value of the two claims is 40.

Figure 1 graphs the maturity payoffs of cash and asset calls.

### Ordinary Options and Gap Options

We can construct an ordinary call by buying a European asset-or-nothing call with strike price  $K$  and selling  $K$  European cash-or-nothing calls with strike price  $K$ . That is,

# FIGURE I

Payoff at maturity to one asset call and 40 cash calls. Assumes  $K = \$  40, \sigma = 0.30, r = 0.08, \text{and} \delta = 0. The payoff to both is zero for S < \$ 40.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/84a585980426e6a1fccef8d6c409869c5fd3576eee06448512a8a31c6af5f55a.jpg)

Option Value ($)

$$
\begin{array}{l} \operatorname {B S C a l l} (S, K, \sigma , r, T - t, \delta) \\ = \operatorname {A s s e t C a l l} (S, K, \sigma , r, T - t, \delta) - K \times \operatorname {C a s h C a l l} (S, K, \sigma , r, T - t, \delta) \\ = S e ^ {- \delta (T - t)} N \left(d _ {1}\right) - K e ^ {- r (T - t)} N \left(d _ {2}\right) \\ \end{array}
$$

This is the Black-Scholes formula.

Similarly, we can construct a put:

$$
\begin{array}{l} \operatorname {B S P u t} (S, K, \sigma , r, T - t, \delta) \\ = K \times \operatorname {C a s h P u t} (S, K, \sigma , r, T - t, \delta) - \operatorname {A s s e t P u t} (S, K, \sigma , r, T - t, \delta) \\ \end{array}
$$

Finally, we can construct a gap option using asset-or-nothing options. Consider a call option that pays  $S - K_{1}$  if  $S > K_{2}$ . The value of this is

$$
\operatorname {A s s e t C a l l} (S, K _ {2}, \sigma , T - t, r, \delta) - K _ {1} \times \operatorname {C a s h C a l l} (S, K _ {2}, \sigma , T - t, r, \delta)
$$

We buy an asset call and sell  $K_{1}$  cash calls, both with the strike price  $K_{2}$ .

Example 3. Suppose S = $40, K = $40, σ = 0.3, r = 0.08, T - t = 0.25, and δ = 0. The price of an ordinary call is an asset call less 40 cash calls. Using results in Examples 1 and 2, the price of the ordinary call is $23.30 - 40 × $0.5129 = 2.7848.

The price of a gap call in which the owner pays \$20 (K1) if the stock is greater than \$40 (K2) at expiration is $23.20 - 20 × $0.5129 = 13.0427.

### Delta-Hedging All-or-Nothing Options

All-or-nothing options appear frequently in writings about options, but they are relatively rare in practice. The reason is that they are easy to price but hard to hedge. To understand why, think about the position of a market-maker when such an option is close to expiration. The nightmare scenario for a market-maker is that the option is close to expiration and close to the strike price. In this case a small swing in the stock price can determine whether the option is inor out-of-the-money, with the payoff changing discretely. This potential for a small price change to have a large effect on the option value is evident in Figure 1.

To assess hedging difficulty, Figure 2 graphs the price and delta of cash calls paying  \$1 with 3 months to expiration and 2 minutes to expiration. With 3 months to go, hedging is straightforward and delta is well-behaved. However, with 2 minutes to go until expiration, the cash call delta at\$ 40 is 15. For the at-the-money option, delta and gamma approach infinity at expiration because an arbitrarily small change in the price can result in a 1 change in the option's value.

An ordinary call or put is easier to hedge because the payoff is continuous—there is no discrete jump at the strike price as the option approaches expiration. Supershares provide an alternative technology for creating complex payoffs.

# FIGURE 2

Price and delta of a cash call at two different times to expiration: 3 months (top panel) and 2 minutes (bottom panel). Assumes K = \40, \sigma = 0.30, r = 0.08, and \delta = 0

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/38039a0e5810b2ac9cf6793f2852f25018281796b7359c704539398b6e32da5e.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/25a710f7e43dff160ae0da9fca6a23ca6588d3d0d96148434c6177f2bccd046d.jpg)

## 2. All-or-Nothing Barrier Options

Barrier options are options in which the option comes into or goes out of existence if the price of the underlying asset hits a barrier. There are down-and-out options, which become worthless if the stock price hits a barrier price below the initial stock price, as well as up-and-out, down-and-in, and up-and-in options. We can construct options such as these using all-or-nothing barrier options.

Suppose we take a cash-or-nothing call paying 1 if S_T > K, but modify it by adding the additional requirement that it will only pay 1 at expiration if the stock has also hit the barrier H sometime during the life of the option. If H < S(0), this is a down-and-in cash call. Using the notation in Table 1, this would be a CashDICall. Just as we were able to construct ordinary options from digital options, we will also be able to construct barrier options from digital barrier options.

We will examine three different kinds of barrier options:

- A contract that pays 1 contingent on either a barrier having or not having been reached (cash-or-nothing barrier options).

# BOX 1: Supershares

Hakannson (1976) proposed a concept known as supershares, which could be used to create exotic option-like payoffs without the need for delta-hedging by a dealer. The idea of a supershare is to create shares that pay 1 in particular circumstances, and to use these as building blocks for more complicated instruments. Supershares can be illustrated with a simple example.

Suppose that the risk-free rate is 10\%, the market index is 100, and over the next year there are three possible values of the market index: $60, $110, and \$160. (The use of three possible prices is just for simplicity.) Define three supershares that pay \$1 if the market in 1 year is $60, $1 if the market is \$110, and \$1 if the market is 160. Call these shares "down," "middle," and "up."

We can create a fund with a \$100 million investment in the index, and finance it by selling 60 million down shares, 110 million middle shares, and 160 million up shares.* If the market is \$60 in 1 year, the entire \$60 million is paid to the holders of the down shares. If the market is \$160, the entire amount is paid to the holders of the up shares. Note that if you were to buy all of these shares, you would earn a return equivalent to a \$100 million investment in the index. (You could also buy 6 down shares, 11 middle shares, and 16 up shares for a small position in the index.) If you bought 100 each of the down, middle, and up shares, you would have a risk-free zero-coupon bond paying \$100. By buying just the down shares, you could replicate the payoff to a cash-or-nothing put, and so forth.

Although the supershare payoffs resemble the payoffs of cash-or-nothing options, the elegant simplicity of the supershare idea is that the shares are created as fully collateralized contingent claims on a fund. No delta-hedging is required. Relative pricing of the components is determined by the willingness of investors to hold them, but the portfolios replicating a bond and the index must be priced correctly or else there would be arbitrage.

Supershares were actually brought to market in November 1992 by Leland, O'Brien, and Rubinstein (the first and third named principals are finance professors). The product consisted of exchange-traded money-market and index funds, which could be decomposed into four supershares that could be traded individually at the Chicago Board Options Exchange. There were significant regulatory hurdles to introducing supershares, described in Lux (1992). Trading volume was weak and after several years the product was abandoned. The exchange-traded index fund, however, was the precursor to current popular products such as exchange-traded funds and SPDRs.

*In the examples in Hakannson (1976), shares are created paying returns every percentage point between  $-50\%$  and  $+60\%$ .

- A contract that pays a share of stock worth  $S$  contingent on either a barrier having or not having been reached (asset-or-nothing barrier options).
- A contract that pays  \$1 at the time a barrier is reached (rebate options) or that pays\$ 1 at expiration as long as the barrier has been reached during the life of the option (deferred rebate options).

By valuing these pieces and adding them together we can price any standard barrier option. The assumption that the stock follows geometric Brownian motion makes it possible to derive relatively simple formulas for these options.

There are 16 basic kinds of all-or-nothing barrier options. First, consider cash-or-nothing barrier options that pay \$1 at expiration. Such options can knock in or knock out; they can be calls (pay cash if  $S_T > K$ ) or puts (pay cash if  $S_T < K$ ); and the barrier event can occur if the barrier is above the price (up-and-ins or up-and-outs) or below the price (down-and-ins or down-and-outs). This gives us  $2^3 = 8$  basic cash-or-nothing barrier options to value. By the same reasoning there are also 8 basic asset-or-nothing barrier options, for a total of 16 all-or-nothing barrier options.

### Cash-or-Nothing Barrier Options

We first consider the valuation of barrier cash-or-nothing options. To anticipate the results in this section, we will first see how to value one particular barrier cash-or-nothing option, a down-and-in cash call. From this one formula we will be able to value the remaining seven cash-or-nothing options and deferred rebate options.

Assume that the option is issued at time 0 and expires at time  $T$ . Let  $\overline{S}_t$  denote the greatest stock price between times 0 and  $t$  (where  $t \leq T$ ) and let  $\underline{S}_t$  denote the lowest stock price between times 0 and  $t$ . Suppose the barrier is below the initial stock price, i.e.,  $H < S_0$ . A cash down-and-in call (CashDICall) is an option that pays \$1 if two conditions are satisfied. First, at some point prior to maturity, the stock price drops to reach  $H$ , i.e.,  $\underline{S}_T \leq H$ . Second, at expiration, the stock price is greater than the strike price,  $K$ .

We can analyze this option by first examining the risk-neutral probability that this joint event  $(\underline{S}_T \leq H$  and  $S_T \geq K)$  occurs. This probability should satisfy three conditions:

1. Once the barrier has been hit  $(\underline{S}_t \leq H)$  the probability equals the probability that  $S_T \geq K$  (the barrier at this point is irrelevant).
2. If at time  $T$ ,  $\underline{S}_T \leq H$  and  $S_T \geq K$ , the probability equals 1.
3. If at time  $T$ ,  $\underline{S}_T > H$  or  $S_T < K$ , the probability equals 0.

Assume that  $H \leq K$ , and consider this expression:

$$
\Pr \left(\underline {{S}} _ {T} \leq H \quad \text {a n d} \quad S _ {T} > K\right) = \left(\frac {H}{S}\right) ^ {2 \frac {r - \delta}{\sigma^ {2}} - 1} N \left(d _ {4}\right) \tag {6}
$$

The terms  $d_{1}$  through  $d_{8}$  are defined in Table 2. An expression of this form solves the backward equation. We also want to verify that it satisfies the three boundary conditions described above.

First, at the point where  $S_{t} = H$ , equation (6) collapses to  $N(d_{2})$ , which is the risk-neutral probability that  $S_{T} > K$ . (This occurs because when  $H = S_{t}$ ,  $d_{1} = d_{3}$ . You should examine equation (6) to verify that this happens.) Thus, once we hit the barrier, the barrier value  $H$  drops out of the expression because it is irrelevant. Second, if at expiration  $\underline{S}_{T} \leq H$  and  $S_{T} > K$ , then equation (6) equals 1. The reason is that the probability equals  $N(d_{2})$  once the barrier is hit, and if  $S_{T} > K$ ,  $N(d_{2}) = 1$ . Finally, if  $\underline{S}_{T} > H$ , i.e.,  $S_{t}$  never reaches  $H$ , then at expiration  $H^{2} < S_{T}K$  (recall that  $H \leq K$ ) and equation (6) collapses to 0. Thus, equation (6) both satisfies the backward equation and obeys the appropriate boundary conditions.

Equation (6) assumes that  $H \leq K$ . Why is this important? The answer is that if  $H > K$ , the boundary conditions may be violated. Consider the case where at expiration  $S_{T} = \55, K = \$ 45 , and  $H = \$54$  (thus violating the condition  $H \leq K$ ) and the boundary has not been hit. In this case a correct expression for the probability will evaluate to zero at expiration. However,  $\ln (H^2 /S_TK) = \ln (54^2 /45\times 55) = 0.164$ , so equation (6) at maturity will equal 1 when the event has not occurred.

As a final comment on equation (6), you might ask why it is necessary to multiply  $N(d_4)$  by the term  $(H / S)^{2(r - \delta) / \sigma^2 - 1}$ . The answer is simply that  $N(d_4)$  by itself does not solve the backward equation, whereas equation (6) does solve the backward equation.

To handle the case where  $H > K$  we need a more complicated version of equation (6). When  $H > K$ , we have

$$
\Pr \left(\underline {{S}} _ {T} \leq H \quad \text {a n d} \quad S _ {T} > K\right) = N \left(d _ {2}\right) - N \left(d _ {6}\right) + \left(\frac {H}{S}\right) ^ {2 \frac {r - \delta}{\sigma^ {2}} - 1} N \left(d _ {8}\right) \tag {7}
$$

Problem 3 asks you to verify that this equation satisfies the boundary conditions. Note that when  $S = H$ ,  $N(d_6) = N(d_8)$ ; the formula again reduces to  $N(d_2)$ .

Down-And-In Cash Call. Equations (6) and (7) give us expressions for the probability that the barrier is hit and  $S_{T} > K$ . What is the value of a claim that pays 1 when this event occurs? To answer this question we can use the fact that discounted risk-neutral probabilities are prices of derivative claims. Discounting equations (6) and (7), we have

$$
\begin{array}{l} \operatorname {C a s h D I C a l l} (S, K, \sigma , r, T - t, \delta , H) = \\ e ^ {- r (T - t)} \left(\frac {H}{S}\right) ^ {2 \frac {r - \delta}{\sigma^ {2}} - 1} N \left(d _ {4}\right) \quad H \leq K \tag {8} \\ e ^ {- r (T - t)} \left[ N (d _ {2}) - N (d _ {6}) + \left(\frac {H}{S}\right) ^ {2 \frac {r - \delta}{\sigma^ {2}} - 1} N (d _ {8}) \right] H > K \\ \end{array}
$$

Equation (8) gives us the value for a cash down-and-in call when  $S_0 > H$ . There are three closely related options we can now price: cash down-and-out calls (CashDOCall), cash down-and-in puts (CashDIPut), and cash down-and-out puts (CashDOPut). We can value each of these using only the formula for the cash down-and-in call, equation (8). In addition, we can value a deferred down rebate option.

Deferred Down Rebate Option. We first value a deferred down rebate, which is a claim that pays  \$1 at time T as long as the barrier has been hit over the life of the option. The payoff to this claim does not depend on a strike price: It pays\$ 1 as long as the barrier has been hit. We will call this claim a deferred down rebate. It is a "down rebate" because it pays \$1 if we reach the barrier, and it is “deferred” because the payment is at expiration rather than at the time we reach the barrier. We obtain the value of this claim by setting K = \$0 in equation (8). Since we always have S_T > 0, the result is a claim that pays 1 at T as long as S_T ≤ H. Thus, we have²

$$
\operatorname {D R D e f e r r e d} (S, \sigma , r, T - t, \delta , H) = \operatorname {C a s h D I C a l l} (S, 0, \sigma , r, T - t, \delta , H) \tag {9}
$$

Note that since we set  $K = 0$ , the value of the deferred down rebate does not depend on the strike price.

Now we can compute the value of the remaining three options.

Down-And-Out Cash Call. We can create a synthetic cash call by buying down-and-in and down-and-out cash calls with the same barrier; this combination is guaranteed to pay $1 if  $S_T > K$ . Thus, the value of a down-and-out cash call is

$$
\begin{array}{l} \operatorname {C a s h D O C a l l} (S, K, \sigma , r, T - t, \delta , H) = \operatorname {C a s h C a l l} (S, K, \sigma , r, T - t, \delta) \\ - \operatorname {C a s h D I C a l l} (S, K, \sigma , r, T - t, \delta , H) \tag {10} \\ \end{array}
$$

Down-And-In Cash Put. If you buy a down-and-in cash put with strike price  $K$ , you receive  $\$1$  if the barrier is reached and  $S_{T} < K$ . If you buy a down-and-in cash call, you receive  $\$1$  if the barrier is reached and  $S_{T} \geq K$ . Thus, if you buy both a down-and-in call and put, you receive  $\$1$  as long as the barrier is hit. This is the same payoff as a deferred rebate; thus, we have

$$
\begin{array}{l} \operatorname {C a s h D I P u t} (S, K, \sigma , r, T - t, \delta , H) = \operatorname {D R D e f e r r e d} (S, \sigma , r, T - t, \delta , H) \\ - \operatorname {C a s h D I C a l l} (S, K, \sigma , r, T - t, \delta , H) \\ \end{array}
$$

Down-And-Out Cash Put. Buying down-and-in and down-and-out cash puts creates an ordinary cash put. Thus, the value of the down-and-out put is

$$
\begin{array}{l} \operatorname {C a s h D O P u t} (S, K, \sigma , r, T - t, \delta , H) = \operatorname {C a s h P u t} (S, K, \sigma , r, T - t, \delta) \\ - \operatorname {C a s h D I P u t} (S, K, \sigma , r, T - t, \delta , H) \\ \end{array}
$$

As a final point, we can compute the risk-neutral probability that we reach the barrier. The deferred down rebate option pays 1 at expiration as long as the barrier is hit. Thus the price of this option is the present value of the risk-neutral probability that the barrier is reached. Therefore,

$$ e ^ {r (T - t)} \operatorname {D R D e f e r e d} (S, 0, \sigma , r, T - t, \delta) \tag {13}
$$ is the risk-neutral probability that the barrier is reached during the life of the option.


Example 4. Suppose S = \$40, σ = 0.3, r = 0.08, δ = 0, and T - t = 1. The value of a claim that pays \$1 if the stock hits the barrier H = \$35 over the next year is computed by setting K = \$0 in equation (8):

$$

\text {C a s h D I C a l l} (\mathbb {S} 4 0, \mathbb {S} 0. 0 0 0 0 0 0 1, 0. 3, 0. 0 8, 1, 0, \mathbb {S} 3 5) =

$$

$$ e ^ {- r (T - t)} \left[ 1 - N \left(d _ {6}\right) + \left(\frac {H}{S}\right) ^ {2 (r - \delta) / \sigma^ {2} - 1} N \left(d _ {8}\right) \right] = \$ 0. 5 7 4
$$

The risk-neutral probability that the stock will hit the barrier is the undiscounted value of this claim, or  $0.574 \times e^{0.08} = 0.622$ .

The value of a claim that pays \$1 if the stock hits the barrier, \$35, and then is also greater than K = 35 at the end of the year is

$$ e ^ {- r (T - t)} \left(\frac {H}{S}\right) ^ {2 (r - \delta) / \sigma^ {2} - 1} N \left(d _ {4}\right) = \$ 0. 3 0 9

$$

This is the value of CashDICall($40, $35, 0.3, 0.08, 1, 0, \$35). The risk-neutral probability of hitting the barrier and being above \$35 is 0.309 × e^0.08 = 0.335.

This example illustrates an interesting point. The value of the claim that pays \$1 at expiration when the stock at expiration is greater than \$35 and has hit the 35 barrier

(\$0.309) is approximately one-half the value of the claim that pays \$1 at expiration as long as the stock has hit the \$35 barrier (\$0.574). The reason is that once the stock has hit \$35, it subsequently has about a 50\% chance of being above or below that value. This observation suggests that the probability of being above \$35 conditional upon having hit \$35 is 0.5 × 0.622 = 0.311. The actual probability is greater than that, however. The reason is that the lognormal drift is r - 0.5σ² = 0.035, which is positive. Thus, after having hit \$35, the stock on average drifts higher.

To verify this intuition, suppose we set the lognormal drift equal to zero. We can do this by setting the risk-free rate to 0.045, which gives us  $r - 0.5\sigma^2 = 0.045 - 0.5 \times 0.3^2 = 0$ . We might expect that the value of a claim paying  $1 at T$  if the barrier is hit is one-half the value of a claim paying  $1 at T$  if the barrier is hit and the stock price at expiration is greater than the barrier. Put differently, when  $r = 0.5\sigma^2$ , the probability of hitting and ending up above  \$35 is half the unconditional probability of hitting\$ 35. The next example shows that this intuition works.

Example 5. Suppose S = \$40, σ = 0.3, r = 0.045, δ = 0, and T - t = 1. The value of a claim paying \$1 if the stock hits the barrier H = 35 over the next year is

$$ e ^ {- r (T - t)} \left[ 1 - N \left(d _ {6}\right) + \left(\frac {H}{S}\right) ^ {2 (r - \delta) / \sigma^ {2} - 1} N \left(d _ {8}\right) \right] = \$ 0. 6 2 7 4
$$

The corresponding risk-neutral probability is  $e^{0.045} \times 0.6274 = 0.6562$ .

The value of a claim paying 1 if the stock hits the barrier and is then greater than K = 35 at the end of the year is

$$ e ^ {- r (T - t)} \left(\frac {H}{S}\right) ^ {2 (r - \delta) / \sigma^ {2} - 1} N \left(d _ {4}\right) = \$ 0. 3 1 3 7

$$

This is one-half of 0.6274. The corresponding risk-neutral probability is e^{0.045} × 0.3137 = 0.3281.

Up-And-In Cash Put. Now we consider cash-or-nothing options when the barrier is above the current stock price. First, consider the following formula for an up-and-in cash put, which pays \$1 when  $\overline{S}_T > H$  and  $S_T < K$ :

CashUIPut(S, K, σ, r, T - t, δ, H) =

$$ e ^ {- r (T - t)} \left(\frac {H}{S}\right) ^ {2 \frac {r - \delta}{\sigma^ {2}} - 1} N (- d _ {4}) \quad H \geq K \tag {14}
$$

$$ e ^ {- r (T - t)} \left[ N (- d _ {2}) - N (- d _ {6}) + \left(\frac {H}{S}\right) ^ {2 \frac {r - \delta}{\sigma^ {2}} - 1} N (- d _ {8}) \right] H <   K
$$

If you compare this formula to equation (8), you will see that  $N(d_{2})$  is replaced with  $N(-d_{2})$ ,  $N(d_{4})$  with  $N(-d_{4})$ , and so forth. These terms also solve the Black-Scholes equation. The effect of these changes is to reverse the effect of the  $d_{i}$  terms. As a consequence, equation (8), which prices a down-and-in cash call, is transformed into an equation pricing an up-and-in cash put. Problem 4 asks you to verify that equation (14) solves the appropriate boundary conditions for an up-and-in cash put.

Deferred Up Rebate. Given equation (14), the procedure for obtaining the prices of the other three cash-or-nothing options when  $H > S_0$  is analogous to that before. First, by setting  $K = \infty$  in equation (14), we obtain the price of a claim paying 1 at expiration as long as the barrier is reached:3

$$
\operatorname {U R D e f e r r e d} (S, \sigma , r, T - t, \delta , H) = \operatorname {C a s h U I P u t} (S, \infty , \sigma , r, T - t, \delta , H) \tag {15}
$$

With this equation, we can solve for the price of the other cash-or-nothing options.

Up-And-Out Cash Put. Buying up-and-in and up-and-out cash puts gives an ordinary cash put; hence,

$$
\begin{array}{l} \begin{array}{l} \text {C a s h U O P u t} (S, K, \sigma , r, T - t, \delta , H) = \text {C a s h P u t} (S, K, \sigma , r, T - t, \delta) \\ \text {C a s h U P p t} (S, K, r, T - t, \delta , H) \end{array} \tag {16} \\ - \operatorname {C a s h U I P u t} (S, K, \sigma , r, T - t, \delta , H) \\ \end{array}
$$

Up-And-In Cash Call. Buying an up-and-in cash call and an up-and-in cash put yields the same payoff as a deferred up rebate. Thus, we have

$$
\begin{array}{l} \begin{array}{l} \text {C a s h U I C a l l} (S, K, \sigma , r, T - t, \delta , H) = \text {U R D e f e r r e d} (S, \sigma , r, T - t, \delta , H) \\ \text {C a s h U I P i t} (S, K, \sigma , r, T - t, \delta , H) \end{array} \tag {17} \\ - \operatorname {C a s h U I P u t} (S, K, \sigma , r, T - t, \delta , H) \\ \end{array}
$$

Up-And-Out Cash Call. Buying up-and-in and up-and-out cash calls gives an ordinary cash call; hence,

$$
\begin{array}{l} \operatorname {C a s h U O C a l l} (S, K, \sigma , r, T - t, \delta , H) = \operatorname {C a s h C a l l} (S, K, \sigma , r, T - t, \delta) \tag {18} \\ - \operatorname {C a s h U I C a l l} (S, K, \sigma , r, T - t, \delta , H) \\ \end{array}
$$

### Asset-or-Nothing Barrier Options

We now wish to find the eight pricing formulas for asset-or-nothing options corresponding to those for the eight cash-or-nothing options. Fortunately, there is a simple way to do this. If we view asset-or-nothing options as cash-or-nothing options denominated in shares rather than cash, we can use a proposition dealing with a change of numeraire, to transform the pricing formulas for cash-or-nothing options into formulas for asset-or-nothing options. In each case, we replace  $\delta$  by  $\delta - \sigma^2$ , and we multiply the cash-or-nothing formula by  $S_0 e^{(r - \delta)(T - t)}$ , the forward price for the stock. For example, we have

$$
\begin{array}{l} \operatorname {A s s e t D I C a l l} (S, K, \sigma , r, T - t, \delta , H) \tag {19} \\ = S e ^ {(r - \delta) (T - t)} \text {C a s h D I C a l l} (S, K, \sigma , r, T - t, \delta - \sigma^ {2}, H) \\ \end{array}
$$

The other seven asset-or-nothing pricing formulas—AssetDOCall, AssetDIPut, Asset-DOPut, AssetUICall, AssetUOCall, AssetUIPut, and AssetUOP—can be created in exactly the same way.

### Rebate Options

Rebate options pay  \$1 if the barrier is hit. We have already seen how to price deferred rebate options, which pay the\$ 1 at expiration. If the option pays at the time the barrier is hit, we will call the claim a rebate option or immediate rebate option.

We have already seen in equations (9) and (15) how to price deferred rebates. The formulas for rebates paid when the barrier is hit are more complicated because the discount factor for the 1 payment depends on the time at which the barrier is hit. In effect there is a random discount factor.

The formula for the price of a down rebate when  $S > H$  is

$$
\mathrm {D R} (S, \sigma , r, T - t, \delta , H) = \left(\frac {S}{H}\right) ^ {h _ {1}} N \left(Z _ {1}\right) + \left(\frac {S}{H}\right) ^ {h _ {2}} N \left(Z _ {2}\right) \tag {20}
$$ where


$$

Z _ {1} = \left[ \ln (H / S) - g \sigma^ {2} (T - t) \right] / \sigma \sqrt {T - t}

$$

$$

Z _ {2} = \left[ \ln (H / S) + g \sigma^ {2} (T - t) \right] / \sigma \sqrt {T - t}

$$

$$ g = \sqrt {\left(\frac {r - \delta}{\sigma^ {2}} - \frac {1}{2}\right) ^ {2} + \frac {2 r}{\sigma^ {2}}}
$$

$$ h _ {1} = \left(\frac {1}{2} - \frac {r - \delta}{\sigma^ {2}}\right) + g; \quad h _ {2} = \left(\frac {1}{2} - \frac {r - \delta}{\sigma^ {2}} -\right) - g
$$

This formula satisfies (as it must) both the Black-Scholes equation and the boundary conditions for a rebate option. Suppose that the barrier is not hit over the life of the option. Then  $H < S$  and both terms go to 0 as  $t \to T$ . At the point when the barrier is hit,  $H = S$  and  $\ln(H / S) = 0$ . Because the normal distribution is symmetric around 0,

$$
N \left[ \frac {- g \sigma^ {2} (T - t)}{\sigma \sqrt {T - t}} \right] + N \left[ \frac {g \sigma^ {2} (T - t)}{\sigma \sqrt {T - t}} \right] = 1
$$

Thus, the formula evaluates to 1 when the barrier is hit.

The up rebate formula is symmetric:

$$
\operatorname {U R} (S, \sigma , r, T - t, \delta , H) = \left(\frac {S}{H}\right) ^ {h _ {1}} N (- Z _ {1}) + \left(\frac {S}{H}\right) ^ {h _ {2}} N (- Z _ {2}) \tag {21}
$$ where all variables are defined as above for the down rebate.


### Perpetual American Options

If we set  $T = \infty$  in (21), we obtain the price of a perpetual claim that pays 1 the first time S reaches H from below. Note that g > 0. Therefore, when T → ∞, equation (21) becomes

$$

\operatorname {U R} (S, \sigma , r, \infty , \delta , H) = \left(\frac {S}{H}\right) ^ {h _ {1}} \quad S <   H \tag {22}

$$

$H_{c}$  maximizes the value of the call. Similarly, using the down rebate formula, we have

$$

\mathrm {D R} (S, \sigma , r, \infty , \delta , H) = \left(\frac {S}{H}\right) ^ {h _ {2}} \quad S > H \tag {23}

$$

# 3. BARRIER OPTIONS

At this point it is easy to construct barrier option formulas using the preceding formulas. A down-and-out call, for example, can be valued as

$$

\begin{array}{l} \operatorname {C a l l D o w n O u t} (S, K, \sigma , r, T - t, \delta , H) = \operatorname {A s s e t D O C a l l} (S, K, \sigma , r, T - t, \delta , H) \\ - K \times \operatorname {C a s h D O C a l l} (S, K, \sigma , r, T - t, \delta , H) \\ \end{array}

$$

Up-and-outs, down-and-ins, and so forth are all constructed analogously. See Table 3 for a listing of formulas for barrier calls and puts.

As another example of the use of all-or-nothing options as building blocks, capped options are single options that have the payoff of bull spreads, except that the option is exercised the first time the stock price reaches the upper strike price. An example of an American capped option is an option with a strike price of  \$100 and a cap of\$ 120. When the stock hits \$120, the option pays \$20. If the option expires without the stock having hit \$120, then the payoff is  $\max(S_T - 100, 0)$ . This option can be priced as the sum of the following two options:

- A rebate call, which pays the  \$20 when the stock hits\$ 120 prior to expiration.
- A knock-out call with a strike of  \$100, which knocks out at\$ 120.

If the stock reaches \$120 prior to expiration, the rebate is triggered and the call knocks out. If the stock has not hit \$120 prior to expiration but is above \$100, the knock-out call pays S - \$100. The table below illustrates the payoffs, assuming that the option strike is K, the cap is H, and the option expires at T:

<table><tr><td></td><td>H Hit</td><td>H Not Hit</td></tr><tr><td>Purchased Knock-Out</td><td>0</td><td>max(0, ST−K)</td></tr><tr><td>Rebate</td><td>H−K at Hit</td><td>0</td></tr><tr><td>Total</td><td>H−K at Hit</td><td>max(0, ST−K)</td></tr></table>

Note that a European capped option is simpler to price. Since the payoff does not occur until expiration, this option is just an ordinary vertical spread (buy a 100-strike call and sell a 120-strike European call with the same times to expiration).

Formulas for barrier puts and calls. In each case, the arguments for the functions are  $(S,K,\sigma ,r,T - t,\delta ,H)$

TABLE 3

<table><tr><td></td><td colspan="2">Call</td><td colspan="2">Put</td></tr><tr><td>Up-and-In</td><td colspan="2">AssetUICall - K × CashUICall</td><td>K × CashUIPut</td><td>- AssetUIPut</td></tr><tr><td>Up-and-Out</td><td colspan="2">AssetUOCall - K × CashUOCall</td><td>K × CashUOPut</td><td>- AssetUOPut</td></tr><tr><td>Down-and-In</td><td colspan="2">AssetDICall - K × CashDICall</td><td>K × CashDIPut</td><td>- AssetDIPut</td></tr><tr><td>Down-and-Out</td><td colspan="2">AssetDOCall - K × CashDOCall</td><td>K × CashDOPut</td><td>- AssetDOPut</td></tr></table>

Example 6. Consider the capped call discussed in the text above and suppose that  S = \100, \sigma = 0.3, r = 0.08, T - t = 1,  and  \delta = 0 . We can compute the price of an up-and-out call as

$$

\begin{array}{l} \operatorname {C a l l U p O u t} (S, K, \sigma , r, T - t, \delta , H) = \operatorname {A s s e t U O C a l l} (S, K, \sigma , r, T - t, \delta , H) \\ - K \times \operatorname {C a s h U O C a l l} (S, K, \sigma , r, T - t, \delta , H) \\ \end{array}

$$

The price of the capped call is

$$

\begin{array}{l} 2 0 \times \operatorname {U R} (\$ 1 0 0, 0. 3, 0. 0 8, 1, 0, \$ 1 2 0) + \text {C a l l U p O u t} (\$ 1 0 0, \$ 1 0 0, 0. 3, 0. 0 8, 1, 0, \$ 1 2 0) \\ = 2 0 \times \$ 0. 5 6 4 9 + \$ 0. 4 2 9 8 = \$ 1 1. 7 3 \\ \end{array}

$$

The price of a European bull spread for the same parameters would be

$$

\begin{array}{l} \text {B S C a l l} (\mathbb {1 0 0}, \mathbb {1 0 0}, 0. 3, 0. 0 8, 1, 0) - \text {B S C a l l} (\mathbb {1 0 0}, \mathbb {1 2 0}, 0. 3, 0. 0 8, 1, 0) \\ = \$ 15.7113 - \$ 7.8966 = \$ 7.8147 \\ \end{array}

$$

The capped call is more expensive because all of the stock price paths that cross 120 and end up lower result in the maximum payout on the capped call but a lower payout on the bull spread.

## 4. Quantos

A U.S. investor wishing to invest in a foreign stock index can purchase the foreign index directly or hold futures based on that index. However, the investor then bears two risks: the risk of the foreign index, and currency (exchange rate) risk.

For example, suppose that a U.S. investor wishes to invest in the Nikkei 225 index, expecting that it will increase over the next month. The investor can take a position in the Nikkei by directly investing in the cash Nikkei index or by investing in yen-denominated futures, such as a Nikkei futures contract trading in Japan. Both strategies have a payoff denominated in yen. If the Nikkei appreciates but the yen depreciates, the investor can lose money despite being correct about the movement of the Nikkei.

You could try to reduce the problem of exchange rate risk by hedging the Nikkei investment using currency futures. However, the quantity of yen to be exchanged is high when the index has a high return and low when the index has a low return. Thus, there is no way to know in advance how many yen to short. This price uncertainty creates quantity uncertainty with respect to the yen exposure.

We could imagine a synthetic Nikkei investment in which the quantity of currency forwards depended upon the Nikkei's yen return. Such a contract would permit an investor in one currency to hold an asset denominated in another currency, without exchange rate risk. This contract is called an equity-linked forward, or quanto. For reasons that will become clear below, a quanto is also sometimes defined as a derivative having a payoff that depends on the product or ratio of two prices.

The Nikkei 225 index futures contract, traded at the CME, is an example of a quanto contract. This futures contract is marked-to-market daily in dollars, even though it settles

<table><tr><td>TABLE 4</td><td colspan="3">Parameters used in the Nikkei/yen quanto example.</td></tr><tr><td></td><td>Dollar-denominated interest rate</td><td>r</td><td>0.08</td></tr><tr><td></td><td>Yen-denominated interest rate</td><td>rf</td><td>0.04</td></tr><tr><td></td><td>Current Nikkei index</td><td>Q0</td><td>¥20,000</td></tr><tr><td></td><td>Nikkei dividend yield</td><td>δQ</td><td>0.02</td></tr><tr><td></td><td>Nikkei volatility (¥)</td><td>σQ</td><td>0.15</td></tr><tr><td></td><td>Current exchange rate ($/¥)</td><td>x0</td><td>0.0100</td></tr><tr><td></td><td>Exchange rate volatility</td><td>s</td><td>0.1</td></tr><tr><td></td><td>Nikkei-exchange rate ($/¥) correlation</td><td>ρ</td><td>0.2</td></tr><tr><td></td><td>Time to expiration</td><td>T</td><td>1 year</td></tr></table> based on a yen-denominated price. $^4$  There is also a yen-denominated Nikkei futures contract that trades in Osaka. Both futures are based on the Nikkei 225 contract, but they differ in currency of denomination. We will see in this section how their pricing differs. A box on a later page discusses Nikkei put warrants, which were another example of a quanto contract. Table 4 lists the symbols and specific numbers used throughout the examples in this section.


### The Yen Perspective

The yen-based investor is interested in the yen price of \$1 and, hence, faces an exchange rate of 1/x0 = 100 ¥/$. Because the Nikkei index and the yen price of a dollar are both denominated in yen, we use the usual formulas to find forward prices for the yen and Nikkei. For the Nikkei, we have

$$

\text {N i k k e i f o r w a r d} (\yen): F _ {0, T} (Q) = Q _ {0} e ^ {\left(r _ {f} - \delta_ {Q}\right) T} \tag {24}

$$

For the exchange rate, the dollar-denominated interest rate is the yield on dollars, so the forward price is

$$

\text {E x c h a n g e r a t e f o r w a r d} (\yen / \$: F _ {0, T} (1 / x) = \frac {1}{x _ {0}} e ^ {(r _ {f} - r) T} \tag {25}

$$

These will be the forward prices observed in Japan.

A yen-based investor would construct binomial trees for the yen and Nikkei in the usual fashion. Figure 3 depicts trees for the dollar and Nikkei. The nodes on the dollar tree are constructed as

$$

(1 / x _ {T}) = (1 / x _ {0}) e ^ {(r _ {f} - r) T \pm s \sqrt {T}}

$$ and on the Nikkei tree as


# FIGURE 3

Binomial trees for the dollar and the Nikkei index from the perspective of a yen-based investor. Both are forward trees constructed using the parameters in Table 4. The risk-neutral probabilities of up moves are 0.4750 in the dollar tree and 0.4626 in the Nikkei tree.

Binomial Tree for the Dollar

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/2ee1d91f917bf38e6a8dfe2c0b8e7fa5e77723411f68b06f64e03df4fbcf3693.jpg)

Binomial Tree for the Nikkei

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/39b5f7a0ba58a58d8ce19bd0a6ffc62f5df55d5bbf35e62c04453c336c953b13.jpg)

$$

Q _ {T} = Q _ {0} e ^ {(r _ {f} - \delta_ {Q}) T \pm \sigma_ {Q} \sqrt {T}}

$$

Example 7. Given the parameters in Table 4, the 1-year yen-denominated forward price for the Nikkei index is

$$

F _ {0, 1} (Q) = \yen 2 0, 0 0 0 e ^ {(0. 0 4 - 0. 0 2) \times 1} = \yen 2 0, 4 0 4. 0 3

$$ and that for the exchange rate is


$$

F _ {0, 1} (1 / x) = \yen 1 0 0 e ^ {(0. 0 4 - 0. 0 8) \times 1} = \yen 9 6. 0 7 9

$$

We can also compute the forward prices on both trees as expected values. For the dollar tree we have

$$

F _ {0, 1} (1 / x) = 0. 4 7 5 0 \times \$ 1 0 6. 1 8 4 + (1 - 0. 4 7 5 0) \times \$ 8 6. 9 3 6 = \$ 9 6. 0 7 9

$$

For the Nikkei tree we have

$$

F _ {0, 1} (Q) = \yen 0. 4 6 2 6 \times \yen 2 3, 7 0 6. 1 0 + (1 - 0. 4 6 2 6) \times \yen 1 7, 5 6 1. 9 1 = \yen 2 0, 4 0 4. 0 3

$$

### The Dollar Perspective

Now we consider yen and Nikkei investments from the perspective of a dollar-based investor. The yen forward price is given by

$$

\text {E x c h a n g e r a t e f o r w a r d} (\$ / \yen): F _ {0, T} (x) = x _ {0} e ^ {(r - r _ {f}) T} \tag {26}

$$

However, from the dollar perspective, the forward price of the Nikkei is not so straightforward.

As discussed above, any Nikkei investment entails a combination of currency and index risk. To see why, suppose a dollar-based investor buys  $e^{-\delta_Q T}$  units of the Nikkei and holds it for  $T$  years. The actual steps in this transaction are as follows:

1. Exchange  $Q_0x_0e^{-\delta_Q T}$  dollars into yen (this is enough dollars to buy  $e^{-\delta_Q T}$  units of the index).
2. Buy  $e^{-\delta_Q T}$  units of the Nikkei index and hold for  $T$  periods.
3. Dividends are paid continuously over time and reinvested in the index; after  $T$  years we have an additional  $e^{\delta_Q T}$  shares.
4. After  $T$  years sell the index and convert back into dollars.

The time- $T$  value of the investment, denominated in dollars, is

$$

Y (T) = x _ {T} Q _ {T}

$$

The payoff is a combination of yen and Nikkei risk; we will call this investment the currency-translated index. Here is a point that is crucial for understanding what follows: From the perspective of a dollar-based investor, the dollar-translated price of a yen-denominated asset,  $Y_{T}$ , is just like any other dollar-denominated asset. However,  $Q_{T}$  is not the price of an asset for a dollar-based investor, because there is no simple way to obtain the risk of  $Q$  without also bearing currency risk.

The price  $Y_{t}$  is that of a dollar-denominated asset. Hence, the forward price for  $Y_{T}$  for a dollar-based investor is

$$

F _ {0, T} (Y) = Y _ {0} e ^ {(r - \delta_ {Q}) T} \tag {27}

$$

Because we can trade shares of the currency-translated index, we can undertake arbitrage if the forward price is anything other than equation (27).

We know that

$$

F _ {0, T} (Y) = F _ {0, T} (x) F _ {0, T} (Q) e ^ {\rho \sigma_ {Q} s T} \tag {28}

$$

You should be sure you understand that all three forward prices in equation (28) are those for a dollar-denominated investor. Assume that both  $S$  and  $Q$  were traded assets; the point is to find the price of a traded asset that paid the product of two traded assets. In this context, both  $Y$  and  $x$  are dollar assets, so we can simply solve for the dollar-denominated forward price for  $Q$ .

Substituting for  $F_{0,T}(Y)$  and  $F_{0,T}(x)$  in equation (28), we have

$$ x _ {0} Q _ {0} e ^ {(r - \delta_ {Q}) T} = x _ {0} e ^ {(r - r _ {f}) T} F _ {0, T} (Q) e ^ {\rho \sigma_ {Q} s T} \tag {29}
$$

Solving for  $F_{0,T}(Q)$ , we have

$$
F _ {0, T} (Q) = Q _ {0} e ^ {\left(r _ {f} - \delta_ {Q} - \rho \sigma_ {Q} s\right) T} \tag {30}
$$

The dollar-denominated forward price for the Nikkei index is the same as the yen-denominated forward price, with a covariance correction. The prepaid quanto index forward price is

$$
F _ {0, T} ^ {P} (Q) = Q _ {0} e ^ {\left(r _ {f} - \delta_ {Q} - \rho \sigma_ {Q} s - r\right) T} \tag {31}
$$

The role of the covariance term in equation (30) is intuitive. Consider a dollar-denominated investor who buys the cash Nikkei index and ultimately converts yen back to dollars. Suppose the index and the exchange rate (measured in dollars/yen) are positively correlated. When the index does well, there are many yen to exchange. If  $\rho$  is positive, on average the exchange rate is favorable when there are many yen to exchange. When the index does poorly, there are fewer yen to exchange so the decline in the exchange rate does not matter as much. Thus, other things equal, the positive correlation systematically benefits the unhedged investment in the Nikkei relative to a contract with a fixed exchange rate. Consequently, if the exchange rate is fixed, as in a quanto contract, the price for the index settling in dollars will be lower in order to compensate the buyer for the loss of beneficial correlation between the index and exchange rate.

Example 8. Using equation (30) and the information in Table 4, the yen forward price is

$$
F _ {0. 1} = x _ {0} e ^ {(r - r _ {f}) t} = 0. 0 1 \yen / \yen e ^ {(0. 0 8 - 0. 0 4)} = 0. 0 1 0 4 0 8 \yen / \yen
$$

The forward price for the currency-translated Nikkei is

$$
F _ {0, 1} = x _ {0} Q _ {0} e ^ {(r - \delta_ {Q}) t} = 0. 0 1 \\ / \yen \times \yen 2 0, 0 0 0 e ^ {(0. 0 8 - 0. 0 2)} = \\ \ 2 1 2. 3 6 7
$$

Finally, using equation (30), the quanto forward price is

$$
\begin{array}{l} V _ {0, 1} (\$ 2 0 0, 0. 0 1 \$\$/ \yen) = \yen 2 0, 0 0 0 e ^ {(0. 0 4 - 0. 0 2 - 0. 2 \times 0. 1 \times 0. 1 5)} \\ = \yen 20,342.91 \\ \end{array}
$$

This is lower than the yen-denominated Nikkei forward price of ¥20,404 in Example 7.

# A Binomial Model for the Dollar-Denominated Investor

As another way to understand quanto pricing, we can construct a binomial tree that simultaneously models the currency-translated index and the exchange rate. In addition to this particular application of two-variable binomial trees, some options have prices that depend on two state variables.

In Figure 3 we constructed separate binomial trees for the yen-based investor. For the dollar-based investor we need to construct a tree that takes account of the correlation between the Nikkei and the yen. We can do so by first modeling the behavior of the yen in the usual way, and then, conditional upon the yen, model the movement in the Nikkei. $^{8}$  Since for each yen move there are two Nikkei moves, the tree will have four binomial nodes. We will denote these as  $\{uu, ud, du, dd\}$ , with the first letter denoting the yen move and the second the Nikkei move. We have a choice of constructing a joint tree for the yen and Nikkei or the yen and dollar-translated Nikkei, but we obtain the same answer either way. Here we will model the yen and Nikkei. Problem 17 asks you to jointly model the yen and dollar-translated Nikkei.

The basic idea underlying the joint binomial model for  $x$  and  $Q$  is as follows. If  $x$  and  $Q$  are lognormal, they evolve like this:

$$ x _ {h} = x _ {0} e ^ {(r - r _ {f}) h + s \sqrt {h} Z _ {1}} \tag {32a}
$$

$$
Q _ {h} = Q _ {0} e ^ {(r - \delta_ {Q}) h + \sigma_ {Q} \sqrt {h} Z _ {2}} \tag {32b}
$$

In the standard binomial model, we simply approximate  $Z_{1}$  and  $Z_{2}$  binomially, so that  $Z_{i} = \pm 1$ . However, we want to induce correlation between  $Z_{1}$  and  $Z_{2}$ . We can create correlation by using Cholesky decomposition. Begin by rewriting equation (32a):

$$ x _ {h} = x _ {0} e ^ {(r - r _ {f}) h + s \sqrt {h} \epsilon_ {1}} \tag {33a}
$$

$$
Q _ {h} = Q _ {0} e ^ {\left(r _ {f} - \delta_ {Q}\right) h + \sigma_ {Q} \sqrt {h} \left(\epsilon_ {1} \rho + \epsilon_ {2} \sqrt {1 - \rho^ {2}}\right)} \tag {33b}
$$

Thus,  $Z_{1} = \epsilon_{1}$  and  $Z_{2} = \rho \epsilon_{1} + \sqrt{1 - \rho^{2}}\epsilon_{2}$ . By construction, this  $Z_{1}$  and  $Z_{2}$  have correlation  $\rho$ . Now we construct the binomial tree by setting  $\epsilon_{1} = \pm 1$  (the exchange rate moves up or down) and  $\epsilon_{2} = \pm 1$  (the index moves up or down). There are four possible outcomes, which we will label  $A$  ( $\epsilon_{1} = 1; \epsilon_{2} = 1$ ),  $B$  ( $\epsilon_{1} = 1; \epsilon_{2} = -1$ ),  $C$  ( $\epsilon_{1} = -1; \epsilon_{2} = 1$ ), and  $D$  ( $\epsilon_{1} = -1; \epsilon_{2} = -1$ ).

For a dollar-based investor, the possible yen moves are

$$ x _ {A} = x _ {B} = x _ {0} e ^ {(r - r _ {f}) h + s \sqrt {h}} = x _ {0} u \tag {34a}
$$

$$ x _ {C} = x _ {D} = x _ {0} e ^ {(r - r _ {f}) h - s \sqrt {h}} = x _ {0} d \tag {34b}
$$

For each yen move, there are two Nikkei moves:

$$
Q _ {A} = Q _ {0} e ^ {(r _ {f} - \delta_ {Q}) h + \sigma_ {Q} \sqrt {h} (\rho + \sqrt {1 - \rho^ {2}})} = Q _ {0} A \tag {35a}
$$

$$
Q _ {B} = Q _ {0} e ^ {(r _ {f} - \delta_ {Q}) h + \sigma_ {Q} \sqrt {h} (\rho - \sqrt {1 - \rho^ {2}})} = Q _ {0} B \tag {35b}
$$

$$
Q _ {C} = Q _ {0} e ^ {\left(r _ {f} - \delta_ {Q}\right) h + \sigma_ {Q} \sqrt {h} \left(- \rho + \sqrt {1 - \rho^ {2}}\right)} = Q _ {0} C \tag {35c}
$$

$$
Q _ {D} = Q _ {0} e ^ {\left(r _ {f} - \delta_ {Q}\right) h + \sigma_ {Q} \sqrt {h} \left(- \rho - \sqrt {1 - \rho^ {2}}\right)} = Q _ {0} D \tag {35d}
$$

Finally, we have to determine the risk-neutral probabilities associated with the nodes. The risk-neutral probability for an up move of the currency is

$$ p = \frac {e ^ {(r - r _ {f}) h} - d}{u - d} \tag {36}
$$ where  $u$  and  $d$  are implied by equation (34a) and (34b). The risk-neutral probability for an up move in the currency is 0.4750.


Recall that the risk-neutral probability arises from the requirement that an investment in the asset earn the risk-free rate. Specifically, for the currency, we consider an investment in the yen-denominated risk-free asset, hedged to remove currency risk when the investment is turned back into dollars. This investment earns the dollar-denominated risk-free return if the probability of an up move is given by equation (36).

We need a similar argument for the Nikkei. Since we cannot own the Nikkei index without bearing currency risk, we model an investment in the dollar-translated Nikkei. Let  $p^*$  denote the probability of an up move in the Nikkei, conditional on the move in the yen. We require that the dollar-translated Nikkei investment earn the dollar-denominated risk-free rate. This gives us

$$

\begin{array}{l} x _ {u} Q _ {A} p p ^ {*} + x _ {u} Q _ {B} p \left(1 - p ^ {*}\right) + x _ {d} Q _ {C} (1 - p) p ^ {*} + x _ {d} Q _ {D} (1 - p) \left(1 - p ^ {*}\right) \tag {37} \\ = x _ {0} Q _ {0} e ^ {(r - \delta_ {Q}) h} \\ \end{array}

$$

Solving for  $p^*$  gives

$$

\begin{array}{l} p ^ {*} = \frac {x _ {0} Q _ {0} e ^ {(r - \delta_ {Q}) h} - x _ {u} Q _ {B} p - x _ {d} Q _ {D} (1 - p)}{p x _ {u} \left(Q _ {A} - Q _ {B}\right) + (1 - p) x _ {d} \left(Q _ {C} - Q _ {D}\right)} \tag {38} \\ = \frac {e ^ {(r - \delta_ {Q}) h} - u B p - d D (1 - p)}{p u (A - B) + (1 - p) d (C - D)} \\ \end{array}

$$

This expression is a generalization of the one-variable formula for a risk-neutral probability, taking account of the two up and two down states for  $Q$ .

Figure 4 depicts the binomial tree constructed using equations (34a) and (35a), and probabilities of each node constructed using equations (36) and (38). The quanto forward price can be constructed as the expectation  $E(Y_{1} / x_{1})$ .

# FIGURE 4

The binomial process for the dollar/yen exchange rate  $(x)$  and the Nikkei  $(Q)$ . The last two columns contain the value of the currency-translated Nikkei and the risk-neutral probability of each node, computed using equations (36) and (38).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/10e8007b-6b0c-4ee4-a779-beb006a490c3/612354290c639f8d2a549f93a59f76063074cc29dae95bf8d294bbd606d93da1.jpg)

Example 9. Using Figure 4, we can compute forward prices for the yen, the dollar-translated Nikkei, and the quanto Nikkei. The risk-neutral probability of an up move in the yen is 0.4750. The yen forward price is

$$

F _ {0, 1} (x) = 0. 4 7 5 0 \times 0. 0 1 1 5 0 3 \mathrm {\$/ \yen} + (1 - 0. 4 7 5 0) \times 0. 0 0 9 4 1 8 \mathrm {\$/ \yen} = 0. 0 1 0 4 0 8 \mathrm {\$/ \yen}

$$

The forward price for the currency-translated Nikkei is

$$

\begin{array}{l} F _ {0, 1} (x Q) = 0. 2 1 9 4 \times \$ 2 7 2. 6 8 + 0. 2 5 5 6 \times \$ 2 1 4. 5 0 \\ + 0. 2 4 2 5 \times \$ 2 1 0. 2 5 + 0. 2 8 2 5 \times \$ 1 6 5. 3 9 = \$ 2 1 2. 3 6 7 \\ \end{array}

$$

Finally, the quanto forward price is

$$

\begin{array}{l} F _ {0, 1} (Q) = 0. 2 1 9 4 \times \frac {\mathbb {S} 2 7 2 . 6 8}{0 . 0 1 1 5 0 3 \mathbb {S} / \mathbb {Y}} + 0. 2 5 5 6 \times \frac {\mathbb {S} 2 1 4 . 5 0}{0 . 0 1 1 5 0 3 \mathbb {S} / \mathbb {Y}} \\ + 0. 2 4 2 5 \times \frac {\mathbb {S} 2 1 0 . 2 5}{0 . 0 0 9 4 1 8 \mathbb {S} / \mathbb {Y}} + 0. 2 8 2 5 \times \frac {\mathbb {S} 1 6 5 . 3 9}{0 . 0 0 9 4 1 8 \mathbb {S} / \mathbb {Y}} = \yen 2 0, 3 4 2. 9 1 \\ \end{array}

$$

All of the prices computed from the tree match those in Example 8.

The tree in Figure 4 can be extended to multiple periods. Rubinstein (1994) shows that in general, with  $n$  steps, there are  $(n + 1)^2$  nodes; for example, with two steps there are nine nodes. To see why, if we add another binomial period to the tree, there are  $4^2 = 16$  combinations of the up-down moves  $(AA, AB, \ldots, DD)$ . The order of the moves is irrelevant, so, for example,  $AB = BA$ . This equivalence eliminates  $n \times (n - 1) = 6$  nodes, leaving 10. Further, from equation (35a),  $AB = CD$ . Because  $n = 2$ , this leaves  $(n + 1)^2 = 9$  unique nodes.

# 5. CURRENCY-LINKED OPTIONS

There are several common ways to construct options on foreign assets, for which the return has an exchange rate component. The different variants permit investors to assume different amounts of currency and equity risk. In this section we examine four variants and their pricing formulas. We will continue to use the notation and numbers from Table 4.

An option can be priced using only the prepaid forward prices for the underlying asset and strike asset, and the relative volatility of the two. The intuition for this result is that a market-maker could hedge an option position using the two prepaid forwards, neither of

# Box 2: Nikkei Put Warrants

An example of quanto options is the Nikkei 225 put warrants that traded on the American Stock Exchange beginning in 1990. Ryan and Granovsky (2000) provide an interesting account of the history of these options, in which Nikkei risk was repackaged and transformed several times by various global financial players.

Japanese institutional investors in the late 1980s bought Nikkei bull notes. These were bonds that carried a high coupon and contained an embedded written put spread: The note principal was not paid in full if the Nikkei fell below ¥32,000. The issuer of the notes was a European bank that sold the embedded put spread to an investment bank and entered into a currency swap to achieve dollar-denominated financing without any Nikkei risk. Japanese buyers were willing to pay a price that made it profitable for the European bank to issue the notes and hedge the resulting exposure. The investment bank, having bought the put spread, had short exposure to the Nikkei. It sold dollar-denominated Nikkei puts to a European sovereign, which in turn sold dollar-denominated Nikkei puts to investors who wanted dollar-denominated Nikkei exposure in the form of SEC-registered securities without investment bank credit risk. (The sovereign issuer bore the investment bank credit risk and the notes carried sovereign risk.)


The net result of this chain of transactions was that Japanese institutional investors were betting—via the bull notes—that the Nikkei would rise. Buyers of the dollar-denominated Nikkei put warrants were betting that the Nikkei would fall. In the end, the Nikkei index suffered a long decline and the put warrant buyers won the bet.

which, by definition, makes any payouts. In the discussions to follow, we will use this result to simplify the valuation of seemingly complex options.

# Foreign Equity Call Struck in Foreign Currency

If we want to speculate on a foreign index, one possibility is to buy an option completely denominated in a foreign currency. The value of this option at expiration is

$$

V (Q _ {T}, T) = \max  (0, Q _ {T} - K _ {f})

$$ where  $K_{f}$  denotes the strike denominated in the foreign currency.

As an example, we might have a 1-year call option to buy the Nikkei index by paying ¥19,500. An investor based in the foreign currency would use this kind of option; thus, it can be priced using the Black-Scholes formula from the perspective of the foreign currency. Only yen inputs—the yen-denominated interest rate and the Nikkei volatility and dividend yield—enter the pricing formula. The dollar price can be obtained by converting the option price at the current exchange rate.

$$
C _ {\yen} = Q _ {0} e ^ {- \delta Q ^ {t}} N (d _ {1}) - K _ {f} e ^ {- r _ {f} t} N (d _ {2})
$$

$$ d _ {1} = \frac {\ln \left(Q _ {0} e ^ {- \delta_ {Q} t} / K _ {f} e ^ {- r _ {f} t}\right) + \frac {1}{2} \sigma_ {Q} ^ {2} t}{\sigma_ {Q} \sqrt {t}} \tag {39}
$$

$$ d _ {2} = d _ {1} - \sigma_ {Q} \sqrt {t}
$$

Thus, we price this option by using the Black-Scholes formula with inputs appropriate for the asset being denominated in a different currency.

Example 10. Using the parameters in Table 4 and assuming a strike price of ¥19,500, we price the call by setting S = ¥20,000e-0.02 (the current Nikkei prepaid forward price), K = ¥19,500e-0.04 (the prepaid forward price for the strike), σQ = 0.15 (the Nikkei volatility in yen), T = 1, and with zeros for the interest rate and dividend yield (they are already accounted for in the prepaid forward prices). We obtain BSCall(¥20,000e-0.02; ¥19,500e-0.04; 0.15; 0; 1; 0) = ¥1632.16.

We can also price the option by using the Black-Scholes formula in the conventional way: BSCall(¥20,000, ¥19,500; 0.15; 0.04; 1; 0.02) = ¥1632.16. The dollar price is 16.32.

# Foreign Equity Call Struck in Domestic Currency

Suppose we have a call option to buy the Nikkei but we denominate the strike,  $K$ , in dollars. If we exercise the option, we pay  $K$  dollars to acquire the Nikkei, which is worth  $x_{T}Q_{T}$ . Thus, at expiration, the option is worth

$$
V \left(x _ {T} Q _ {T}, T\right) = \max  \left(0, x _ {T} Q _ {T} - K\right)
$$

In order to price this option, recognize that  $Y(T) = x_{T}Q_{T}$ , the currency-translated index, is priced like any domestic asset. Equation 27 gives the forward price for the currency-translated index, so the prepaid forward price is  $x_0Q_0e^{-\delta_Q T}$ . The prepaid forward price for the strike is  $Ke^{-rT}$ . The value of the option will depend upon the distribution of  $x_{T}Q_{T}$ ; thus, the volatility that enters the option pricing formula is that of the currency-translated index. The volatility of  $x_{t}Q_{t}$  is

$$
\nu = \sqrt {\sigma_ {Q} ^ {2} + s ^ {2} + 2 \rho \sigma_ {Q} s} \tag {40}
$$

Using this volatility and the prepaid forward prices, we have

$$
C = x _ {0} Q _ {0} e ^ {- \delta T} N \left(d _ {1}\right) - e ^ {- r t} K N \left(d _ {2}\right) \tag {41}
$$

$$ d _ {1} = \frac {\ln (x _ {0} Q _ {0} e ^ {- \delta T} / e ^ {- r t} K) + \frac {1}{2} \nu^ {2} t}{\nu \sqrt {t}}
$$

$$ d _ {2} = d _ {1} - v \sqrt {t}
$$

You can interpret this formula in terms of prepaid forward prices or as the Black-Scholes formula with  $x_0Q_0$  as the stock price,  $\delta_Q$  as the dividend yield,  $\nu$  as the volatility, the domestic interest rate  $r$  as the risk-free rate, and  $K$  as the strike price.

Example I I. Using the parameters in Table 4, the volatility is

$$
\nu = \sqrt {0 . 1 5 ^ {2} + 0 . 1 ^ {2} + (2 \times 0 . 2 \times 0 . 1 5 \times 0 . 1)} = 0. 1 9 6 2
$$ and assuming a strike price of 195, we price the call using prepaid forwards as


$$

\begin{array}{l} \operatorname {B S C a l l} (x _ {0} Q _ {0} e ^ {- \delta T}, K e ^ {- r T}, \nu , 0, T, 0) \\ = \operatorname {B S C a l l} (0. 0 1 \mathbb {S} / \mathbb {Y} \times \mathbb {Y} 2 0, 0 0 0 e ^ {- 0. 0 2}, \\ \mathbb {S} 1 9 5 \times e ^ {- 0. 0 8}, 0. 1 9 6 2, 0, 1, 0) = \\ \mathbb {S} 2 4. 0 7 1 9 \\ \end{array}

$$

# Fixed Exchange Rate Foreign Equity Call

Suppose we have a foreign equity call denominated in the foreign currency, but with the option proceeds to be repatriated at a predetermined exchange rate. This is a quanto option, analogous to the quanto forward, with the value of the option translated into dollars at a fixed exchange rate. Let  $\bar{x}$  represent this rate. The payoff to this option with strike price  $K_{f}$  (denominated in the foreign currency) is

$$

\begin{array}{l} V (Q _ {T}, T) = \bar {x} \times \max (0, Q _ {T} - K _ {f}) \\ = \max  (0, \bar {x} Q _ {T} - \bar {x} K _ {f}) \\ \end{array}

$$

Once again we can construct the pricing formula by thinking in terms of forward prices for the underlying and strike assets. From a dollar perspective, the underlying asset,  $\bar{x} Q_{T}$ , is a quanto index investment. The strike asset is simply a fixed number of dollars, with  $K_{f}$  converted at the rate  $\bar{x}$ . Since  $\bar{x}$  is just a scale factor, we can set  $\bar{x} = 1$ .

Because the exchange rate is fixed, the volatility that affects the value of the option is that of the foreign-currency-denominated foreign index,  $\sigma_{Q}$ . We can obtain the pricing formula by using the prepaid forwards for the underlying and strike asset:

$$

\begin{array}{l} C = F _ {0, T} ^ {P} (Q) N \left(d _ {1}\right) - e ^ {- r T} K _ {f} N \left(d _ {2}\right) \tag {42} \\ d _ {1} = \frac {\ln [ F _ {0 , t} ^ {P} (Q) / e ^ {- r T} K _ {f} ] + \frac {1}{2} \sigma_ {Q} ^ {2} T}{\sigma_ {Q} \sqrt {T}} \\ d _ {2} = d _ {1} - \sigma_ {Q} \sqrt {t} \\ \end{array}

$$

The formula for  $F_{0,T}^{P}(Q)$  is given in equation (31). Note that all values are dollar-denominated since  $\bar{x}$  implicitly multiplies all prices. By substituting for  $F_{0,t}^{P}$ , equation (42) is the Black-Scholes formula with  $Q_{0}$  as the stock price,  $\delta_{Q} + \rho s\sigma_{Q} + r - r_{f}$  as the dividend yield, the domestic interest rate  $r$  as the risk-free rate,  $K_{f}$  as the strike, and  $\sigma_{Q}$  as the volatility.

Example 12. Using the parameters in Table 4 and assuming a strike price of ¥19,500 with a fixed exchange rate of x̅ = 0.01\$/¥, we price the call by using the Black-Scholes formula. We obtain

$$

\operatorname {B S C a l l} \left(F _ {0, T} ^ {P} (Q), K _ {f} e ^ {- r T}, \sigma_ {Q}, 0, T, 0\right) =

$$

$$

\begin{array}{l} \text {B S C a l l (0 . 0 1 $ / Y × ¥ 2 0 , 0 0 0 × e ^ {- (0 . 0 2 + 0 . 2 \times 0 . 1 \times 0 . 1 5 + 0 . 0 8 - 0 . 0 4)} , 0 . 0 1 $ / Y × Y 1 9 , 5 0 0 e ^ {- 0 . 0 8}} \\ \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \end{array}

$$

Problem 6 asks you to verify that you obtain the same answer with  $x_0 Q_0$  as the underlying asset and an appropriate choice of the dividend yield.

# Equity-Linked Foreign Exchange Call

If we invest in a foreign asset, we might like to insure against low exchange rates when we convert back to the domestic currency, while still having the ability to profit from favorable exchange rates. Buying an exchange rate put is insufficient because the quantity of currency to be exchanged is uncertain. What we want is an option that guarantees a minimum exchange rate when we convert the asset value back to the domestic currency.

Such an option must therefore protect a variable quantity of currency. This is an equity-linked foreign exchange option, which is another example of a quanto option.

Let  $K$  be the minimum exchange rate. Then the payoff to such an insured position would be

$$

\begin{array}{l} Q _ {T} x _ {T} + Q _ {T} \max  (0, K - x _ {T}) = Q _ {T} K + Q _ {T} \max  (0, x _ {T} - K) \\ = Q _ {T} K + \max  \left(0, x _ {T} Q _ {T} - Q _ {T} K\right) \tag {43} \\ \end{array}

$$

The expression to the left of the equals sign in equation (43) is the unprotected currency-translated Nikkei investment plus  $Q_{T}$  exchange rate puts with strike  $K$ . The equivalent expression on the right is a quanto investment with the fixed exchange rate equal to  $K$ , plus  $Q_{T}$  exchange rate calls. Either way, the protection entails receiving the payoff to a random number of options. All cash flows are denominated in the home currency.

We can value the option in equation (43) as follows.  $x_{T}Q_{T}$  is the currency translated index and  $Q_{T}K$  is a quanto. The prepaid forward price for  $Q_{T}x_{T}$  is  $Q_{0}x_{0}e^{-\delta_{Q}T}$ , with volatility given by equation 40. The prepaid forward price for the strike asset is  $K F_{0,T}^{P}(Q)$  (see equation (31)). The relevant variance is that of  $\ln(x_{T}Q_{T}/Q_{T})$ , which is just the variance of  $x_{T}$ , the exchange rate. (If you look at equation (43), you can see that exercise depends on whether  $x_{T} > K$ ; thus only the variance of  $x_{T}$  matters.)

The price of the call is therefore

$$

C = x _ {0} Q _ {0} e ^ {- \delta_ {Q} T} N (d _ {1}) - K Q _ {0} e ^ {\left(r _ {f} - \delta_ {Q} - \rho \sigma_ {Q} s - r\right) T} N (d _ {2}) \tag {44}

$$

$$ d _ {1} = \frac {\ln \left(x _ {0} Q _ {0} e ^ {- \delta_ {Q} T} / K Q _ {0} e ^ {(r _ {f} - \delta_ {Q} - \rho \sigma_ {Q} s - r) T}\right) + 0 . 5 s ^ {2} T}{s \sqrt {T}}
$$

$$ d _ {2} = d _ {1} - s \sqrt {T}
$$

This is the price of a call option with  $x_0Q_0$  as the stock price,  $KQ_{0}$  as the strike price,  $r + \delta_{Q} + \rho \sigma_{Q}s - r_{f}$  as the risk-free rate,  $\delta_{Q}$  as the dividend yield, and  $s$  as the volatility. It is perhaps surprising that only the volatility of the exchange rate matters. This occurs because the underlying option is a currency option and the change of numeraire does not affect the volatility.

Example 13. Using the parameters in Table 4 and assuming a strike price of ¥19,500 with a fixed exchange rate of x̅ = 0.01\$/¥, we price the call as

$$
\operatorname {B S C a l l} \left(F _ {0, T} ^ {P} (Q), K _ {f} e ^ {- r T}, \sigma_ {Q}, 0, T, 0\right) =
$$

$$
\operatorname {B S C a l l} (0. 0 1 \mathrm {\underline {{s}}} / \mathrm {Y} \times \mathrm {Y} 2 0, 0 0 0 \times e ^ {- (0. 0 2 + 0. 2 \times 0. 1 \times 0. 1 5 + 0. 0 8 - 0. 0 4)},
$$

$$
0. 0 1 \mathrm {s} / \mathrm {y} \times \mathrm {y} 1 9, 5 0 0 e ^ {- 0. 0 8}, 0. 1 5, 0, 1, 0) = \mathrm {s} 1 5. 3 1 8 7
$$

# 6. OTHER MULTIVARIATE OPTIONS

There are many options that have a payoff depending on the prices of two or more assets. In this section we examine two kinds of options that can be priced either by modifying the Black-Scholes formula or by using the bivariate normal distribution. Throughout this section, we assume that the assets  $S$  and  $Q$  follow the processes given by equations (1) and (2).

# Options on the Best of Two Assets

Suppose an investor allocates a portfolio to both the S&P index and the currency-translated Nikkei. Allocating the portfolio to the index that the investor believes will obtain the highest return is called market-timing. A perfect market-timer would invest in the S&P when it outperformed the Nikkei and the Nikkei when it outperformed the S&P. What is the value of being able to infallibly select the portfolio with the superior performance?

We can answer this question by valuing an option giving us the greater of the two returns. This option would have the payoff  $\max(S_T, Q_T)$ , where  $S$  is the S&P index and the  $Q$  the Nikkei index. Note that

$$
\max  \left(S _ {T}, Q _ {T}\right) = Q _ {T} + \max  \left(S _ {T} - Q _ {T}, 0\right)
$$

Thus, an option on the best of two assets is the same as owning one asset plus an option to exchange that asset for the other asset. The function  $\max(S_T - Q_T, 0)$  can be viewed either as a call on  $S$  with strike asset  $Q$ , or as a put on  $Q$  with strike asset  $S$ .

An investor allocating funds between the S&P index and the Nikkei index might also want to include cash in the comparison, so that there is a guaranteed minimum return. If  $K$  represents this minimum return, the payoff for a perfect market-timer is then

$$
\max  (K, S _ {T}, Q _ {T})
$$

This option, called a rainbow option, has no simple one-variable solution. Instead, valuing this option requires the use of the bivariate normal distribution. $^{11}$  The bivariate normal distribution is defined as

$$
\Pr \left(z _ {1} <   a, z _ {2} <   b; \rho\right) = \mathrm {N N} (a, b; \rho) \tag {45}
$$ where  $z_{1}$  and  $z_{2}$  are standard normal random variables with correlation coefficient  $\rho$ .


The formula for a rainbow option is

$$

\begin{array}{l} \operatorname {R a i n b o w C a l l} (S, Q, K, \sigma , \sigma_ {Q}, \rho , \delta , \delta_ {Q}, T - t) \\ = S e ^ {- \delta (T - t)} \left\{N \left(d _ {S Q}\right) - \mathrm {N N} \left[ - d _ {1} (S), d _ {S Q}, \left(\rho \sigma_ {Q} - \sigma\right) / \hat {\sigma} \right] \right\} \\ + Q e ^ {- \delta_ {Q} (T - t)} \left\{N \left(d _ {Q S}\right) - \mathrm {N N} \left[ - d _ {1} (Q), d _ {Q S}, \left(\rho \sigma - \sigma_ {Q}\right) / \hat {\sigma} \right] \right\} \tag {46} \\ + K e ^ {- r (T - t)} \mathrm {N N} [ - d _ {2} (S), - d _ {2} (Q), \rho ] \\ \end{array}

$$ where


$$ d _ {1} (S) = \frac {\ln (S / K) + (r - \delta + 0 . 5 \sigma^ {2}) (T - t)}{\sigma \sqrt {T - t}}
$$

$$ d _ {1} (Q) = \frac {\ln (Q / K) + (r - \delta_ {Q} + 0 . 5 \sigma_ {Q} ^ {2}) (T - t)}{\sigma_ {Q} \sqrt {T - t}}
$$

$$ d _ {2} (S) = d _ {1} (S) - \sigma \sqrt {T - t}
$$

$$
\begin{array}{l} d _ {2} (Q) = d _ {1} (Q) - \sigma_ {Q} \sqrt {T - t} \\ d _ {S Q} = \frac {\ln (S / Q) + (\delta_ {Q} - \delta + 0 . 5 \hat {\sigma} ^ {2}) (T - t)}{\hat {\sigma} \sqrt {T - t}} \\ d _ {Q S} = \frac {\ln (Q / S) + (\delta - \delta_ {Q} + 0 . 5 \hat {\sigma} ^ {2}) (T - t)}{\hat {\sigma} \sqrt {T - t}} \\ \hat {\sigma} = \sqrt {\sigma^ {2} + \sigma_ {Q} ^ {2} - 2 \rho \sigma \sigma_ {Q}} \\ \end{array}
$$

You can understand this daunting formula by recognizing that, at maturity, the option must be worth either  $S$ ,  $Q$ , or  $K$ . By setting  $t = T$ , you can verify that the formula satisfies this boundary condition. The formula for an option that pays  $\min(S, Q, K)$ —a rainbow put—is obtained by putting a minus sign in front of each "d" argument in the normal and bivariate normal functions.

Certain related options can be valued using the rainbow option formula. $^{12}$  For example, consider an option on the maximum of two assets with the payoff

$$
\max  [ 0, \max  (S, Q) - K ]
$$

This is equal to  $\max(S, Q, K) - K$ , which has the value

$$
\operatorname {R a i n b o w C a l l} (S, Q, K, \sigma , \sigma_ {Q}, \rho , \delta , \delta_ {Q}, r, T - t) - K e ^ {- r (T - t)}
$$

Some options that seem as if they might be valued using the rainbow option formula, however, cannot be. For example, consider the valuation of peak-load electricity plants and encountered spread options, which have the payoff

$$
\max  (0, S - Q - K)
$$

While there are approximations for valuing such an option (see Haug, 1998, pp. 59-61), more exact solutions require Monte Carlo or two-state binomial trees.

# Basket Options

Basket options have payoffs that depend upon the average of two or more asset prices. Basket options are frequently used in currency hedging. A multinational firm dealing in multiple currencies, for example, might care only about hedging the average exchange rate, rather than each exchange rate individually. As another example, an option on the S&P index might pay off only if the S&P outperforms an average of the currency-translated Nikkei and Dax (German stock) indices. With equal weights on the Nikkei and Dax, the payoff to such an option would be

$$
\max  \left[ 0, S _ {\mathrm {S} \& \mathrm {P}} - 0. 5 \times \left(S _ {\text {N i k k e i}} + S _ {\text {D a x}}\right) \right]
$$

You may be able to guess the problem with deriving a simple formula to value such a payoff. The arithmetic average of two indices does not follow geometric Brownian motion. (In fact, if an index is an arithmetic average of stocks, the index itself does not follow geometric Brownian motion. We have been making the common, yet inconsistent, assumption that both stocks and indices containing those stocks follow geometric Brownian motion.)

Because the payoff can depend on many random variables and there is no easy formula, Monte Carlo is a natural technique for valuing basket options. Moreover, basket options provide a natural application for the control variate method to speed up Monte Carlo. A basket option based on the geometric average can be valued using Black-Scholes with appropriate adjustments to the volatility and dividend yield. This price can then serve as a control variate for the more conventional basket option based on an arithmetic average.

# CHAPTER SUMMARY

It is possible to build new derivative claims by using simpler claims as building blocks. Important building blocks include all-or-nothing options, which pay either cash or an asset under certain conditions. Assuming that prices are lognormal with constant volatility, it is straightforward to value cash-or-nothing and asset-or-nothing options both with and without barriers. Cash-or-nothing claims can be priced as discounted risk-neutral probabilities, and a change of numeraire can then be used to price asset-or-nothing options. These claims can be used to create, among other things, ordinary options, gap options, and barrier options. While these options are straightforward to price, they may be quite difficult to hedge because of discontinuities in the payoff created by the all-or-nothing characteristic.

Quantos are claims for which the payoff depends on the product or quotient of two prices. Quantos can be used to remove the currency risk from an investment in a foreign stock index and thus are used in international investing. It is possible to construct bivariate binomial trees to price quantos. International investors can also use currency-linked options to tailor their exposure to currency. The standard currency options can be priced using prepaid forwards and change of numeraire.

Other options, such as rainbow and basket options, have payoffs depending on two or more asset prices. Some of these options have simple pricing formulas; others must be valued binomially, using Monte Carlo, or in some other way.

# FURTHER READING

Mark Rubinstein and Eric Reiner published a series of papers on exotic options in Risk magazine in the early 1990s. These provide a comprehensive discussion of pricing formulas on a wide variety of options. Some of the material in this chapter is based directly on those papers, which can be hard to obtain. Ingersoll (2000) also provides examples of the use of all-or-nothing options as building blocks. An alternative approach to two-state binomial pricing is detailed in Boyle et al. (1989).

If you are interested in more pricing formulas, Haug (1998) presents numerous formulas and discusses approximations when those simple formulas are not available. Wilmott (1998) also has a comprehensive discussion emphasizing the use of partial differential equations (which, as we have seen, underlie all derivatives pricing). Zhang (1998) and Briys and

Bellala (1998) discuss exotic options, including many not discussed in this chapter. In practice, the hitting of a barrier is often determined on a daily or other periodic basis. Broadie et al. (1997) provide a simple correction term that makes the barrier pricing formulas more accurate when monitoring of the barrier is not continuous. One class of options we have not discussed is lookback options, which pay out based on the highest (or lowest) price over the life of the option. These are discussed in Goldman et al. (1979a) and Goldman et al. (1979b) and are covered in Problems 13 and 14.

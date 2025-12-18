# Financial Mathematics 33000

# Lecture 1

Roger Lee

2022 September 28

# Introduction

General properties of arbitrage-free prices

General properties of forwards and options

# FINM 33000 and FINM 32000

I teach this course and its sequel.

Fall 2022: Option pricing theory  
Winter or Spring 2023: Computational option pricing  
- “Option pricing” is meant in a broad sense: the pricing and hedging of options and other financial derivative contracts  
A derivative security or derivative contract is a financial instrument whose payoff is defined in terms of an underlying (e.g.: A asset such as a stock or bond. An index. An interest rate.)

call option on GOOG

# The main idea

I quote from Björk's book:

A financial derivative is defined in terms of some underlying asset which already exists on the market  
A derivative cannot therefore be priced arbitrarily in relation to the underlying prices if we want to avoid mispricing between the derivative and the underlying price.  
We thus want to price the derivative in a way that is consistent with the underlying prices given by the market.  
We are not trying to compute the price of the derivative in some "absolute" sense. The idea instead is to determine the price of the derivative in terms of the market prices of the underlying assets.

# We assume frictionless markets

We will specify a set of basic tradeable assets and a set of times.

At any such time, each basic tradeable asset has a market price, and we can buy/sell/hold arbitrary quantities at that time, at that price.

In other words, assume frictionless markets. In particular,

No transaction costs: no commissions, no fees, no taxes  
No bid-ask spread. No slippage. No market impact  
No default risk. No counterparty risk  
No margin constraints  
Can hold fractional quantities of assets  
Can sell what you do not own (sell short or go short or short), and hold a negative quantity (a short position).

# Introduction

General properties of arbitrage-free prices

General properties of forwards and options

# Assets

The market has risks described by a probability measure  $\mathsf{P}$  
It includes  $N$  tradeable assets with nonrandom time-0 prices

$$
\mathbf {X} _ {0} := \left(X _ {0} ^ {1}, \ldots , X _ {0} ^ {N}\right)
$$

and random time-  $T$  prices ("payoffs")

$$
\mathbf {X} _ {T} := \left(X _ {T} ^ {1}, \dots , X _ {T} ^ {N}\right)
$$

No distinction between final payment  $X_{T}$  vs. final asset price  $X_{T}$ .

In this section, no assumptions about which times  $t \in (0,T)$  exist in our market. Our general analysis applies to a one-period model (which includes only 0 and  $T$ ), continuous-time model (which includes all of  $t \in [0,T]$ ), and any intermediate model.

# Examples of tradeable assets

A zero-coupon bond or discount bond with maturity  $T$ :

Each unit pays at time  $T$  a fixed payoff, let us say  $Z_{T} = 1$ .

A non-dividend-paying stock: Each unit has time- $t$  price  $S_{t} \geq 0$ .

Can think of stock as a claim on a time- $T$  random payoff  $S_T \geq 0$ .

A bank account or money market acct: Each unit has time-  $t$  price

$$
B _ {t} := \exp \left(\int_ {0} ^ {t} r _ {u} \mathrm {d} u\right). \mathrm {I f} r \mathrm {i s c o n s t a n t ,} B _ {t} = e ^ {r t}
$$

for some (possibly random)  $r_u$ , called the time- $u$  instantaneous

spot rate of interest or short rate. Note:  $B$  solves the diff eq

$$
\frac {\mathrm {d} B _ {t}}{\mathrm {d} t} = r _ {t} B _ {t} \qquad \text {w i t h} B _ {0} = 1.
$$

Can think of bank account as having time- $T$  payoff  $\exp (\int_0^T r_t\mathrm{d}t)$ .

# Static portfolios

A static portfolio is a vector of quantities

$$
\boldsymbol {\Theta} := (\theta^ {1}, \dots , \theta^ {N})
$$

where each  $\theta$  is nonrandom and constant in time.

Each  $\theta^n$  denotes the number of units of asset  $n$ , for  $n = 1, \ldots, N$ .

If  $\theta^n > 0$  we say the portfolio is long asset  $n$ .

If  $\theta^n < 0$  we say the portfolio is short asset  $n$ .

The time- $t$  value of portfolio  $\Theta$  is

$$
V _ {t} := \boldsymbol {\Theta} \cdot \mathbf {X} _ {t} = \theta^ {1} X _ {t} ^ {1} + \dots + \theta^ {N} X _ {t} ^ {N}
$$

If we are dealing with multiple portfolios, we may give  $V$  a superscript to indicate which portfolio.

# Arbitrage: common-language definition

Arbitrage is a combination of transactions that tries to profit from price inconsistencies. Examples:

A stock is being bid at venue A for a higher price than it is being offered at venue B. Buy it at site B, sell it at site A.  
$\triangleright$  Asset  $F$  is a combination of assets  $G$  and  $H$ , but is priced lower than the sum of the constituent prices. Buy  $F$ , sell  $G$ , sell  $H$ .  
A combination of assets is underpriced or overpriced relative to a "fair" or "predicted" value from a statistical model.

Buy or sell that combination.

In common language, "arbitrage" may involve risk of loss.

# Arbitrage: mathematical definition

A static portfolio  $\Theta$  is a "type 1" arbitrage if its value  $V$  satisfies

$$
\begin{array}{l} V _ {0} = 0 \quad \text {a n d b o t h :} \quad \mathsf {P} (V _ {T} \geq 0) = 1 \\ \mathsf {P} (V _ {T} > 0) > 0 \\ \end{array}
$$

(Zero initial investment, and no risk of loss, some chance of gain.) A static portfolio  $\Theta$  is a "type 2" arbitrage if its value  $V$  satisfies

$$
V _ {0} <   0 \quad \text {a n d} \quad P (V _ {T} \geq 0) = 1
$$

(Initially receive a credit ... which you will definitely not repay.) A static portfolio  $\Theta$  is an arbitrage if it's either a type 1 or type 2 arbitrage.

# Arbitrage

▶ Prices which admit arbitrage are, in some sense, incorrect.

Existence of arbitrage is a severe form of the inconsistency and mispricing that we want to avoid.

Assume no arbitrage, unless otherwise indicated.

Thus, when we try to price some asset, we are looking for an arbitrage-free price.

Some authors define arbitrage without "type 2".

The distinction between our definition (type 1 or type 2) and their definition (type 1 only) is essentially immaterial, because:

If there exists an asset whose price is always nonnegative and not always zero, then type 1 arb exists whenever type 2 arb exists.

# Examples

A portfolio is not an arbitrage if its value satisfies:

$V_{0} = 0$  , and  $\mathsf{P}(V_T = 50) = 0.99$ $\mathsf{P}(V_T = -5) = 0.01$

If there's any chance of loss, then it's not an arbitrage.

$V_{0} = 1$  , and  $V_{T} = 2$  with probability 1.

By definition,  $V_{0} = 1$  implies the portfolio is not an arbitrage.

Initial investment is required to buy this portfolio.

$V_{0} = -2$  , and  $V_{T} = -1$  with probability 1.

This is not an arb because  $V_{T} = -1$ . Receiving 2 initially, then later paying only 1, does not necessarily lock in a gain. Because, without assumptions about interest rates, we don't know whether the initial 2 can be parked in an asset worth at least 1 at time  $T$ .

# Example

Suppose that assets  $F,G,H$  satisfy

$F_{T}\geq G_{T} + H_{T}$  with probability 1.  
$F_{0} <   G_{0} + H_{0}$

Then 50 80

(1 unit of  $F, - 1$  unit of  $G, - 1$  unit of  $H$

is a type- 2 arbitrage.

Example:  $F_{T} = G_{T} + H_{T}$  where  $F =$  bicycle,  $G =$  wheels,  $H =$  frame

Type I: (1 unit of  $F, - 1$  unit  $+ C, - 1$  unit  $+ H$  , 10 units of  $B$  )

# Absent arbitrage, prices satisfy consistency conditions

Suppose portfolio  $\Theta^a$  superreplicates portfolio  $\Theta^b$ , which means that  $\mathsf{P}(V_T^a \geq V_T^b) = 1$ . Then  $V_0^a \geq V_0^b$ , otherwise arbitrage exists.

# Proof.

If instead  $V_0^a < V_0^b$ , then construct portfolio  $\Theta \coloneqq \Theta^a - \Theta^b$ .

(In other words, go long  $\Theta^a$  and short  $\Theta^b$ .)

Its time-0 value is  $V_{0} = \Theta \cdot \mathbf{X}_{0} = \Theta^{a}\cdot \mathbf{X}_{0} - \Theta^{b}\cdot \mathbf{X}_{0} = V_{0}^{a} - V_{0}^{b} < 0$

Its time- $T$  value is  $V_{T} = V_{T}^{a} - V_{T}^{b}\geq 0$  with probability 1.

Hence  $\Theta$  is an arbitrage.

In this proof, we used a general technique for constructing arbitrage:

- Go long what is cheap (undervalued), and short what is rich (overvalued). In other words: buy low, sell high.

# The law of one price

Likewise, if  $\Theta^a$  subreplicates  $\Theta^b$ , meaning  $\mathsf{P}(V_T^a \leq V_T^b) = 1$ , then  $V_0^a \leq V_0^b$ . By combining the two inequalities, therefore,

$$
\left| \text {I f} \mathsf {P} \left(V _ {T} ^ {a} = V _ {T} ^ {b}\right) = 1, \text {t h e n} V _ {0} ^ {a} = V _ {0} ^ {b}. \right.
$$

In other words, if  $\Theta^a$  replicates  $\Theta^b$ , then  $V_0^a = V_0^b$ .

This is the law of one price. Any two static portfolios with identical future payouts must have identical current prices.  
"You can summarize the essence of quantitative finance," according to Emanuel Derman, as follows:

"If you want to know the value of a security, use the price of another security [or portfolio of securities] that's as similar to it as possible."

# Price vs Value vs Payoff

- Time- $t$  price = how much it costs to buy/sell something at time  $t$ . (Exceptions: "forward price", "futures price")

- Time- $t$  value = how much it should cost to buy/sell something. Meaning of “should” depends on the context. In this course, the only notion of “should” is that arbitrage should not exist. So for us, “value” is what it costs to buy/sell something, in the absence of arbitrage. But since we have a standing assumption of no-arbitrage, we really have no distinction between price and value, unless we are in a situation where arbitrage exists (e.g. HW: “find an arbitrage”).

Payoff  $=$  Payout  $=$  how much a contract pays

$$
= \text {V a l u e o f t h e c o n t r a c t a t e x p i r a t i o n (a s s u m i n g s i n g l e p a y m e n t)}
$$

# Introduction

General properties of arbitrage-free prices

General properties of forwards and options

# Discount bond: valuation

Consider a discount bond  $Z$  maturing at  $T$ , and a bank account  $B$ .

If interest rate  $r_t$  is non-random, then

$$
B _ {1} = 1. 1 0
$$

$$
Z _ {0} = 1 / B _ {T}
$$

$$
z _ {0} = \frac {1}{1 . 1} \approx 0. 9 1
$$

Therefore  $Z_{0} = e^{-\int_{0}^{T}r_{t}\mathrm{d}t} = e^{-rT}$  if  $r$  is constant.

Proof.

$$
B _ {1} = e ^ {- T} \Rightarrow z _ {0} = \frac {1}{Q _ {1}} = e ^ {- T}
$$

A portfolio consisting of  $1 / B_{T}$  units of the bank account has time- $T$  value  $(1 / B_{T})\times B_{T} = 1$ , which is identical to  $Z_{T} = 1$ .

In particular, if  $r$  is constant, then 1 unit of bank is identical to  $e^{rT}$  bonds, and 1 bond is identical to  $e^{-rT}$  units of the bank acct.

So the portfolios must have equal time-0 values:  $Z_{0} = (1 / B_{T}) \times 1$ .

# Forward contract: definition

Consider a random variable  $S_{T}$  whose value is revealed at time  $T$ .

A forward contract on  $S_{T}$  with maturity / delivery date  $T$  and nonrandom delivery price  $K$  obligates the holder to, at time  $T$ , pay  $K$  and receive  $S_{T}$  (dollars if "cash" settled. If "physical" settlement, you get an asset, whose time- $T$  price we denote  $S_{T}$ .)  
So the forward contract has payoff  $S_{T} - K$ . Payoff diagram:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/df4501aa17b71f7cec7ac07d9b2eac67ae37bbe3ece3764beb9a88574f6bc8e4.jpg)

Forward contract is an example of a derivative - a security whose payout is contractually related to some underlying variable.

# Forward contract: valuation

Consider a forward contract on a non-dividend-paying stock  $S$ , with delivery date  $T$  and any delivery price  $K$ .

Then the time-0 value of the forward contract is  $S_0 - KZ_0$ .

# Proof.

The portfolio

$$
\Theta = (1 \text {s h a r e}, - K \text {b o n d s})
$$

has time- $T$  value  $V_{T} = \Theta_{T}\cdot \mathbf{X}_{T} = 1\times S_{T} - K\times 1 = S_{T} - K.$

The forward contract also has time- $T$  value  $S_{T} - K$ .

So the time-0 value of the forward contract must equal the time-0 value of the replicating portfolio, which is

# Forward price

The forward price  $F_{0}$  which sets at time 0 for delivery at time  $T$  is the delivery price such that the forward contract has zero value at time 0.

A forward price is not the same thing as the value of a forward contract.  
A forward contract on a no-dividend stock  $S$  has time-0 value

$$
S _ {0} - K Z _ {0}.
$$

Choice of  $K$  that makes value zero is  $S_0 / Z_0$ .

Thus  $F_0 = S_0 / Z_0$ . If  $r$  is constant, then  $F_0 = S_0 e^{rT}$ .

This does not depend on the dynamics of  $S$ .

# Forward price example

If  $r = 0.02$  and the share price today is  $S_0 = 600$ , and you and I want to enter costlessly today into a contract for time-1 delivery of  $S$  in exchange for a delivery price to be paid at time-1, the only arbitrage-free way to set that delivery price is  $600 \times e^{0.02} \approx 612$ . Even if bullish, it'd be wrong for me to agree to pay, say, 650.

- Your portfolio  $(-650$  bond, 1 share,  $-1$  forward contract) is an arbitrage because  $V_{0} = -650e^{-0.02} + 600 < 0$  and  $V_{T} = 0$ .  
Another arb:  $(-600\mathrm{bank},1$  share,  $-1$  forward contract) because  $V_{0} = 0$  and  $V_{1} = -600e^{0.02} + S_{1} - (S_{1} - 650) > 0.$

In other words, you sell me the contract, borrow 600 to buy the share today. At time 1, deliver the share, collect 650, repay 612.

# Affine payoff

More generally, consider the following "affine" (or "linear") contract on a non-dividend-paying stock  $S$ . The contract pays, by definition,

$$
a + b S _ {T}
$$

where  $a$  and  $b$  are constants. Then its time-0 value is

$$
a Z _ {0} + b S _ {0}
$$

because it is replicated by

$$
(a u n i t s o f b o n d, b u n i t s o f s t o c k)
$$

# Call option: definition

A (European-style) call option with strike  $K$  and expiry  $T$  on an underlying process  $S$ , gives the holder the right, but not obligation, at time  $T$ , to pay  $K$  and receive  $S_T$  (dollars, or asset worth  $S_T$  dollars). So call has payoff  $(S_T - K)^+$ , where  $x^+ := \max(x, 0)$ . Payoff diagram:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/b8fdcea840a8443d86dd4f8469f98b1313ed23296e62c28f6b84b423c1ded3db.jpg)

At time  $t \leq T$ , the call option is said to be in the money if  $S_{t} > K$  at the money if  $S_{t} = K$ , out of the money if  $S_{t} < K$ .

# Uses of call options

Why would you use a call option? Examples:

Suppose you are bullish on the underlying.

Buying the call costs  $x\%$  of the stock price, while, potentially, participating in  $y\%$  of the stock gains, where  $x < y$ .

So, compared to buying stock, buying a call can limit your downside, and/or increase your leverage.

Suppose you own the underlying. Selling a call ("call writing") trades away some upside, in exchange for current income.  
Suppose you think the options market is overpricing the call. Profit by selling the call for more than what it costs to replicate. Or profit by selling the call outright, if you have directional views.

# Call option: bounds wrt underlying

The time-0 price  $C_0$  of a call on a no-dividend stock  $S$  satisfies

$$
\left| \left(S _ {0} - K Z _ {0}\right) ^ {+} \leq C _ {0} \leq S _ {0} \right.
$$

# Proof.

See payoff diagram:

- Call payoff dominates payoff of forward with delivery price  $K$ .  
- Call payoff dominates a zero payoff.  
$\triangleright$  Call payoff is dominated by the stock.

Hence  $C_0 \geq S_0 - KZ_0$  and  $C_0 \geq 0$  and  $C_0 \leq S_0$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/e9a15e4a192aaa56953cb438e6c64930db9afdc33013410e144d29889b2b07c0.jpg)

# Call option: bounds wrt other calls

The time-0 call prices  $C_0(K_1)$  and  $C_0(K_2)$ , for strikes  $K_1 < K_2$  (with same expiry, on same underlying) satisfy

$$
\left| 0 \leq C _ {0} \left(K _ {1}\right) - C _ {0} \left(K _ {2}\right) \leq \left(K _ {2} - K _ {1}\right) Z _ {0} \right.
$$

# Proof.

Consider a bull call spread, long the  $K_{1}$  call, short the  $K_{2}$  call.

The call spread payoff dominates the zero payoff, but is dominated by the payoff of  $K_{2} - K_{1}$  discount bonds. Payoff diagram:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/4d1e0c2b83d2b159d99048e8a10e052bf51af47d24cbf25008d26a92b6a30e68.jpg)

So  $C_0(K_1) - C_0(K_2)$  is bounded below by the time-0 value of zero, above by the time-0 value of  $K_2 - K_1$  bonds.

# Put option: definition

A (European-style) put option with strike  $K$  and expiry  $T$  on an underlying process  $S$ , gives the holder the right, but not obligation, at time  $T$  to pay  $S_T$  (dollars, or asset worth  $S_T$  dollars) and receive  $K$ . So put has payoff  $(K - S_T)^+$ . Payoff diagram:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/17276653639477461735d07972550dcbdb1fd3c753bfde46d2e10a1f132bc4aa.jpg)

At time  $t \leq T$ , the put option is said to be in the money if  $S_{t} < K$  at the money if  $S_{t} = K$ , out of the money if  $S_{t} > K$ .

# Uses of put options

Why would you use a put option? Examples:

Suppose you are bearish on the underlying.

Buying a put limits your potential loss to the cost of the option.

(Shorting stock exposes you to unlimited loss.)

Suppose you own the underlying. Buying a put protects you against the underlying going below  $K$ . It's insurance.  
Suppose you think the options market is overpricing the put. Profit by selling the put for more than what it costs to replicate. Or sell the put outright, if you have a directional view.

# Put-call parity

Let  $P_0(K, T)$  and  $C_0(K, T)$  be time-0 prices of a European put and call, with identical  $(K, T)$ , on a no-dividend stock  $S$ . Let  $Z_0(T)$  be the time-0 price of a  $T$ -maturity discount bond. Then

$$
C _ {0} (K, T) = P _ {0} (K, T) + S _ {0} - K Z _ {0} (T)
$$

Proof.

Payoff diagram:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/03dc6cedbfa5a07431013faddf88f5378c5463d298d6ba6afc394a8233d7d7fb.jpg)

Payoffs are equal, hence prices at earlier date are equal.

# When was put-call parity discovered?

It's in Confusion de Confusiones (1688) by José de la Vega

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/f84606f3bd0826e20adafc4ee2c3b662cec1cc8274c14ecb37a146e0e679b991.jpg)  
JOSCE DE LA VEGA 100-100

Put-call parity is far older, and more fundamental, than any particular model e.g. Black-Scholes (1973)

# Put option: bounds wrt underlying, and wrt other puts

The time-0 price of a put on a non-dividend-paying stock  $S$  satisfies

$$
\left| \left(K Z _ {0} - S _ {0}\right) ^ {+} \leq P _ {0} \leq K Z _ {0}. \right.
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/7468fac7f91e4a547fdbefe786c43b6763728543664009c0cba0b2c6aff4258b.jpg)

The time-0 put prices  $P_{0}(K_{1})$  and  $P_{0}(K_{1})$ , for strikes  $K_{1} < K_{2}$  (with same expiry, on same underlying) satisfy

$$
0 \leq P _ {0} (K _ {2}) - P _ {0} (K _ {1}) \leq \left(K _ {2} - K _ {1}\right) Z _ {0}.
$$

Proof.

Compare payoffs. Or use put-call parity.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/a19759546dbd3f1d125f304e89e5659f400015bfaaa20602b663a463efe96164.jpg)

# Put option: bounds wrt other puts, revisited

If  $K_{1} < K_{2}$  then  $P_{0}(K_{1}) \leq P_{0}(K_{2})$ . Proof by comparing payoffs:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/54ab2d50a8cdb70ea643ca328d3da350ad1f2481225472ff62e4912ef62874fc.jpg)

Better yet,

$$
P _ {0} (K _ {1}) \leq \frac {K _ {1}}{K _ {2}} P _ {0} (K _ {2})
$$

# General payoffs

Using static positions in  $T$ -expiry bonds, forwards, calls, and puts on  $S$ , we can replicate or bound (superreplicate, subreplicate) general

functions of  $S_{T}$

$\triangleright$  Use bonds to adjust level.  
$\triangleright$  Use forwards (or perhaps  $S$  itself) to adjust slope.  
$\triangleright$  Use calls (or puts) to adjust convexity and concavity.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/06cd97fb3ddfeb4a012f6b38268dc8347e7ad015d3e6cb09ec4fdf89ecfc369a.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/ec9bf72880f09a14803bd6d3a4429bf234faec11560bda5904a9362d38187fd7.jpg)

3 units of bond,  
+0.5 units of stock 8  
-4.5 units of K1-strike call  
+3 units of K2-strike call  
+3.5 units of K3-strike call  
-2.5 units of K4-strike call

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/7e390a42293a71f541be339539c6fd39de3ee527884213107d73816117a7cca3.jpg)

# GOOG option quotes

2.7 units of bond  
-2.5 units of K4-strike put  
+3.5 units of K3-strike put  
+3 units of K2-strike put  
-4.5 units of K1-strike put

<table><tr><td colspan="8">Calls</td><td>Strike</td><td colspan="7">Puts</td><td></td></tr><tr><td>Ticker</td><td>Bid</td><td>Ask</td><td>Last</td><td>IVM</td><td>DM</td><td>Volm</td><td>OInt</td><td rowspan="2">19</td><td>Ticker</td><td>Bid</td><td>Ask</td><td>Last</td><td>IVM</td><td>DM</td><td>Volm</td><td>OInt</td></tr><tr><td>19 Apr 14 (10D): CSize 10D:</td><td>IDiv. 7/7; R:12;</td><td colspan="6">555.20 /555.370</td><td>19</td><td>Apr 14 (10D): CSize 10D:</td><td>IDiv. 7/7; R:12;</td><td colspan="5">555.20 /555.370</td></tr><tr><td>1) GOOGG 4 C510</td><td>48.20</td><td>50.80</td><td>50.00</td><td>58.97</td><td>.84</td><td>2</td><td>34</td><td>510.00</td><td>9) GOOGG 4 P510</td><td>3.20</td><td>3.60</td><td>3.08</td><td>55.30</td><td>-14</td><td>69</td><td>203</td></tr><tr><td>2) GOOGG 4 C515</td><td>43.70</td><td>46.80</td><td>43.00y</td><td>57.94</td><td>.82</td><td>37</td><td>515.00</td><td>9) GOOGG 4 P515</td><td>4.10</td><td>4.40</td><td>4.24</td><td>55.20</td><td>-17</td><td>28</td><td>304</td><td></td></tr><tr><td>3) GOOGG 4 C520</td><td>39.90</td><td>40.60</td><td>44.40</td><td>53.44</td><td>.81</td><td>11</td><td>35</td><td>520.00</td><td>9) GOOGG 4 P520</td><td>4.90</td><td>5.30</td><td>4.90</td><td>54.18</td><td>-20</td><td>13</td><td>485</td></tr><tr><td>4) GOOGG 4 C525</td><td>36.20</td><td>37.70</td><td>40.00</td><td>55.38</td><td>.76</td><td>1</td><td>58</td><td>525.00</td><td>9) GOOGG 4 P525</td><td>6.00</td><td>6.40</td><td>6.14</td><td>53.70</td><td>-23</td><td>27</td><td>163</td></tr><tr><td>5) GOOGG 4 C530</td><td>32.40</td><td>33.50</td><td>34.00</td><td>54.21</td><td>.73</td><td>1</td><td>76</td><td>530.00</td><td>9) GOOGG 4 P530</td><td>7.10</td><td>7.70</td><td>7.05</td><td>52.96</td><td>-27</td><td>14</td><td>183</td></tr><tr><td>6) GOOGG 4 C535</td><td>28.90</td><td>29.80</td><td>30.56</td><td>53.31</td><td>.69</td><td>45</td><td>73</td><td>535.00</td><td>9) GOOGG 4 P535</td><td>8.70</td><td>9.10</td><td>7.80</td><td>52.84</td><td>-30</td><td>45</td><td>348</td></tr><tr><td>7) GOOGG 4 C540</td><td>25.60</td><td>26.50</td><td>27.52</td><td>53.30</td><td>.65</td><td>12</td><td>214</td><td>540.00</td><td>9) GOOGG 4 P540</td><td>10.40</td><td>10.80</td><td>9.91</td><td>52.60</td><td>-35</td><td>26</td><td>249</td></tr><tr><td>8) GOOGG 4 C545</td><td>22.50</td><td>23.30</td><td>23.70</td><td>52.81</td><td>.61</td><td>18</td><td>168</td><td>545.00</td><td>9) GOOGG 4 P545</td><td>12.10</td><td>12.70</td><td>12.30</td><td>51.82</td><td>-39</td><td>17</td><td>148</td></tr><tr><td>9) GOOGG 4 C550</td><td>19.60</td><td>20.20</td><td>20.00</td><td>52.13</td><td>.56</td><td>168</td><td>358</td><td>550.00</td><td>9) GOOGG 4 P550</td><td>14.30</td><td>14.80</td><td>13.80</td><td>51.63</td><td>-44</td><td>84</td><td>155</td></tr><tr><td>10) GOOGG 4 C555</td><td>17.00</td><td>17.50</td><td>17.95</td><td>51.84</td><td>.52</td><td>192</td><td>256</td><td>555.00</td><td>9) GOOGG 4 P555</td><td>16.60</td><td>17.10</td><td>16.50</td><td>51.18</td><td>-48</td><td>41</td><td>159</td></tr><tr><td>11) GOOGG 4 C560</td><td>14.60</td><td>15.00</td><td>15.41</td><td>51.29</td><td>.47</td><td>472</td><td>694</td><td>560.00</td><td>9) GOOGG 4 P560</td><td>19.20</td><td>19.70</td><td>18.61</td><td>51.09</td><td>-53</td><td>101</td><td>113</td></tr><tr><td>12) GOOGG 4 C565</td><td>12.40</td><td>13.00</td><td>13.14</td><td>51.28</td><td>.43</td><td>115</td><td>321</td><td>565.00</td><td>9) GOOGG 4 P565</td><td>21.80</td><td>22.50</td><td>20.50</td><td>50.64</td><td>-58</td><td>1</td><td>29</td></tr><tr><td>13) GOOGG 4 C570</td><td>10.50</td><td>10.70</td><td>10.51</td><td>50.74</td><td>.38</td><td>154</td><td>652</td><td>570.00</td><td>9) GOOGG 4 P570</td><td>24.90</td><td>25.70</td><td>23.82</td><td>50.26</td><td>-62</td><td>1</td><td>51</td></tr><tr><td>14) GOOGG 4 C575</td><td>8.80</td><td>9.20</td><td>9.20</td><td>50.26</td><td>.34</td><td>244</td><td>317</td><td>575.00</td><td>9) GOOGG 4 P575</td><td>28.00</td><td>28.80</td><td>31.60</td><td>49.87</td><td>-67</td><td>8</td><td>8</td></tr><tr><td>15) GOOGG 4 C580</td><td>7.30</td><td>7.80</td><td>7.50</td><td>50.28</td><td>.30</td><td>124</td><td>431</td><td>580.00</td><td>9) GOOGG 4 P580</td><td>31.40</td><td>32.30</td><td>29.10</td><td>49.19</td><td>-71</td><td>11</td><td>47</td></tr><tr><td>16) GOOGG 4 C585</td><td>5.90</td><td>6.30</td><td>6.43</td><td>50.02</td><td>.25</td><td>28</td><td>211</td><td>585.00</td><td>9) GOOGG 4 P585</td><td>34.80</td><td>36.00</td><td>38.00</td><td>48.78</td><td>-75</td><td>11</td><td>11</td></tr><tr><td>17) GOOGG 4 C590</td><td>4.80</td><td>5.30</td><td>5.07</td><td>50.20</td><td>.22</td><td>71</td><td>333</td><td>590.00</td><td>9) GOOGG 4 P590</td><td>37.70</td><td>40.20</td><td>36.23</td><td>46.97</td><td>-80</td><td>8</td><td>21</td></tr><tr><td>18) GOOGG 4 C595</td><td>3.90</td><td>4.40</td><td>4.15</td><td>50.05</td><td>.19</td><td>91</td><td>136</td><td>595.00</td><td>9) GOOGG 4 P595</td><td>41.60</td><td>44.10</td><td>40.20</td><td>44.85</td><td>-84</td><td>8</td><td>13</td></tr><tr><td>19) GOOGG 4 C600</td><td>3.20</td><td>3.60</td><td>3.39</td><td>49.94</td><td>.16</td><td>80</td><td>837</td><td>600.00</td><td>9) GOOGG 4 P600</td><td>45.90</td><td>48.30</td><td>63.95y</td><td>44.80</td><td>-87</td><td>1</td><td>35</td></tr><tr><td colspan="8">17 May 14 (38d): CSize 10D: IDiv. 23; R:16; IfWd 556.62</td><td>19</td><td colspan="8">17 May 14 (38d): CSize 10D: IDiv. 23; R:16; IfWd 556.62</td></tr><tr><td>20) GOOGG 5 C520</td><td>52.10</td><td>54.80</td><td>51.30v</td><td>36.10</td><td>.79</td><td>15</td><td>510.00</td><td>7) GOOGG 5 P510</td><td>6.70</td><td>7.20</td><td>5.80</td><td>33.61</td><td>-20</td><td>6</td><td>323</td><td></td></tr></table>

# Financial Mathematics 33000

# Lecture 2

Roger Lee

2022 October 5

One period, two states

The Fundamental Theorem

One-period, more discrete states

Fundamental Theorem, again

# Binomial model specification

- Times 0 and  $T$ . No intermediate trading; all portfolios are static.  
$\triangleright$  Up and down state  $\{\omega_u,\omega_d\}$  at time  $T$  , each with probability  $>0$  
Bank account: Each unit has time- $t$  value  $B_{t} = e^{rt}$  for  $t = 0, T$ .  
Stock  $S$ : Let  $S_{T}$  take values  $S_{T}(\omega_{u}) = s_{u}$  and  $S_{T}(\omega_{d}) = s_{d}$  in the up and down state respectively, where  $s_u > s_d$  
"Option" contract  $C$ , paying  $C_T(\omega_u) = c_u$  and  $C_T(\omega_d) = c_d$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/aecaae58aff639350047e178a769e18362e9301e4d60aaaf120523fd80e8f760.jpg)

# Exercises: Find an arbitrage

Suppose that  $S_0 e^{rT} \leq s_d$ . Find an arbitrage.  
Suppose that  $S_0e^{rT}\geq s_u$  . Find an arbitrage.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/41db36297e02429a63f0670890cb5df77a413057efe7dfeeb67ceb10313f5faf.jpg)

$$
\begin{array}{r l} & {(+ 1 u n i t o f S,} \\ & {- S _ {0} u n i t s o f B)} \end{array}
$$

# Exercises: Find an arbitrage

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/93b8b6abcaba6d5a1767060c7fc9861eb0180b9872aad08a090e093ef7306f8b.jpg)

$\triangleright$  Brexit: In June 2016, voters in the UK voted to remain in or leave the European Union. In May 2016, bookmakers posted 4:1 odds against leaving. Thus an asset  $S$  that pays  $s_u = 1$  GBP if "leave", and  $s_d = 0$  GBP if "remain", costs  $S_0 = 0.2$  GBP in May. Bookmakers also accepted bets in EUR with the same odds - despite the fact that GBP was expected to weaken if "leave". GBP/EUR is 1.3 in May, and assume it goes to 1.1 if "leave". Model this as a second asset  $S^*$  that pays 1/1.1 GBP if "leave", and 0 if "remain", and costs  $S_0^* = 0.2 / 1.3$  GBP in May. Find an arbitrage.

http://theconversation.com/how-to-beat-the-bookies-with-a-brexit-bet-60009

# Option pricing via replication

Given  $S_0, s_u, s_d, c_u, c_d, r$ , find arbitrage-free time-0 option price  $C_0$ .

Solution: Construct portfolio  $(\alpha, \beta)$  of (bank act, stock) that

replicates the option. Want  $\mathsf{P}(\text{time}-T$  portfolio value  $= C_T) = 1$ .

$$
\alpha e ^ {r T} + \beta s _ {u} = c _ {u}
$$

$$
\alpha e ^ {r T} + \beta s _ {d} = c _ {d}
$$

Solve for  $\alpha$  and  $\beta$ :

$$
\beta = \frac {c _ {u} - c _ {d}}{s _ {u} - s _ {d}} \qquad \mathrm {a n d} \qquad \alpha = e ^ {- r T} (c _ {d} - \beta s _ {d})
$$

By no-arb, time-0 option value  $=$  time-0 portfolio value. Conclude:

$$
C _ {0} = \alpha + \beta S _ {0}.
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/7d42e62d2ba52e1107d39d7163477a7501990fa895f2bd25f91b7dbda6d8ff9d.jpg)

# Value of replicating portfolio

Rewrite, collecting  $c_{u}$  and  $c_{d}$  terms:

$$
C _ {0} = \alpha + \beta S _ {0} = e ^ {- r T} (c _ {d} - \beta s _ {d} + \beta S _ {0} e ^ {r T}) = e ^ {- r T} \Big [ c _ {d} + \frac {c _ {u} - c _ {d}}{s _ {u} - s _ {d}} (S _ {0} e ^ {r T} - s _ {d}) \Big ]
$$

Therefore  $C_0 = e^{-rT}(p_u c_u + p_d c_d)$

where

$$
p _ {u} := \frac {S _ {0} e ^ {r T} - s _ {d}}{s _ {u} - s _ {d}}, \qquad p _ {d} := \frac {s _ {u} - S _ {0} e ^ {r T}}{s _ {u} - s _ {d}} = 1 - p _ {u}
$$

Two special cases of  $(c_u, c_d)$  are  $(1,0)$  and  $(0,1)$ :

Let an "up-contract" pay  $U_{T}(\omega_{u}) = 1$  and  $U_{T}(\omega_{d}) = 0$ .

Then time-0 up-contract value  $= e^{-rT}p_{u}$ .

Let a "down-contract" pay  $D_{T}(\omega_{u}) = 0$  and  $D_{T}(\omega_{d}) = 1$ .

Then time-0 down-contract value  $= e^{-rT}p_d$ .

# Understanding the pricing formula as a decomposition

Result  $C_0 = e^{-rT}(p_u c_u + p_d c_d)$  can be understood as a decomposition.

Example: A contract that pays 5 in the up state and 3 in the down state decomposes into 5 up-contracts plus 3 down-contracts.

$$
\angle_ {3} ^ {5} = 5 \mathrm {m u t s o f} \angle_ {0} ^ {1} + 3 \mathrm {w u t s o f} \angle_ {1} ^ {0}
$$

$$
\text {S o} C _ {T} = 5 U _ {T} + 3 D _ {T} \text {h e n c e} C _ {0} = 5 U _ {0} + 3 D _ {0} = e ^ {- r T} \left(5 p _ {u} + 3 p _ {d}\right).
$$

More generally, payment  $C_T$  of  $(c_u, c_d)$  in (up, down) states decomposes as

$$
C _ {T} = c _ {u} U _ {T} + c _ {d} D _ {T}
$$

which has time-0 value

$$
C _ {0} = c _ {u} U _ {0} + c _ {d} D _ {0} = c _ {u} \times e ^ {- r T} p _ {u} + c _ {d} \times e ^ {- r T} p _ {d}
$$

# Interpreting the pricing formula as an expectation

Result  $C_0 = e^{-rT}(p_u c_u + p_d c_d)$  can be understood also as expectation:

$$
C _ {0} = e ^ {- r T} \mathbb {E} C _ {T}
$$

or equivalently:  $C_0 / B_0 = \mathbb{E}(C_T / B_T)$  where  $B_0 = 1$  and  $B_{T} = e^{rT}$

What is the meaning of  $\mathbb{E}$ ?

$\triangleright$ $\mathbb{E}$  is expectation wrt the measure  $\mathbb{P}$  that assigns probability  $p_u$  to up-move, and probability  $p_d$  to down-move.  
Note that  $p_d,p_u$  are  $>0$  and  $<  1$  , or else arbitrage exists. So  $\mathbb{P}$  is indeed a probability measure.  
But  $\mathbb{P}$  does not represent actual physical probabilities.

# Two probability measures

$\triangleright$ $\mathsf{P}$  is called the actual or physical probability measure.

It has no direct relevance here:

Given the specification of this model, we do not care about the value of  $\mathsf{P}(\mathrm{up})$  for the purpose of pricing.

$\triangleright$ $\mathbb{P}$  is called a risk-neutral measure or martingale measure. Some authors denote as “ $\mathbb{Q}$ ”. Important in derivatives pricing.  
$\triangleright$  Irrelevance of physical probabilities  $\text{?!}$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/80a8ddf1f780e79b973c99749af0b044b541036ad68972f520e4178d191106a6.jpg)

One period, two states

The Fundamental Theorem

One-period, more discrete states

Fundamental Theorem, again

# The [First] Fundamental Theorem of Asset Pricing

there exists a probability measure  $\mathbb{P}$  No arbitrage  $\iff$  equivalent to  $\mathsf{P}$  , such that the discounted prices of all tradeable assets are martingales wrt  $\mathbb{P}$

# Definitions:

$\triangleright \mathbb{P}$  equivalent to  $\mathsf{P}$  means: for any event  $A$ $\mathbb{P}(A) = 0$  iff  $\mathsf{P}(A) = 0$  
In this one-period model,  $M_{t}$  is a martingale means:  $M_0 = \mathbb{E}M_T$ . (Today's level equals today's expectation of tomorrow's level)  
- Discounted price means price  $X$  divided by bank act price:  $X / B$ . Thus, to say that the discounted price  $X / B$  is a martingale here means that  $X_0 / B_0 = \mathbb{E}(X_T / B_T)$ ; equivalently  $X_0 = e^{-rT}\mathbb{E}X_T$ .

# Proof of Fundamental Theorem

Let's prove it in the case of the one-period binomial model, with an arbitrary number of assets, including a stock and a bank account. (True much more generally, but need technical assumptions)

Proof that No  $\operatorname{arb} \Rightarrow$  existence of martingale measure  $\mathbb{P}$ :

We proved this L2.6-L2.9. The measure  $\mathbb{P}$  is, explicitly:

$$
\mathbb {P} (\text {u p}) = p _ {u} \text {a n d} \mathbb {P} (\text {d o w n}) = 1 - p _ {u}, \text {w i t h} p _ {u} \text {s p e c i f i e d i n L 2 . 7}.
$$

We need to check that  $\mathbb{P}$  is a probability measure  $(0\leq p_u\leq 1)$ , and indeed an equivalent probability measure  $(0 < p_{u} < 1)$ ,

which follows from no-arbitrage (how?). With respect to that  $\mathbb{P}$

$$
X _ {0} / B _ {0} = \mathbb {E} (X _ {T} / B _ {T})
$$

for all assets  $X$ , by L2.9.

# Proof of Fundamental Theorem

$\triangleright$  Proof that Existence of martingale measure  $\mathbb{P} \Rightarrow \text{No type-1 arb:}$  Consider any static portfolio  $\Theta$  of assets  $\mathbf{X}$ . Each asset price  $X_0^n = e^{-rT}\mathbb{E}X_T^n$ . Multiply by quantity  $\theta^n$ , then  $\sum$  across assets:

$$
\pmb {\Theta} \cdot \mathbf {X} _ {0} = e ^ {- r T} \mathbb {E} (\pmb {\Theta} \cdot \mathbf {X} _ {T}).
$$

So discounted portfolio value is also martingale:  $V_{0} = e^{-rT}\mathbb{E}V_{T}$ . If  $V_{0} \neq 0$ , then not arb; we're done. So take  $V_{0} = 0 \Rightarrow \mathbb{E}V_{T} = 0$ . If  $\mathbb{P}(V_T < 0) \neq 0$  then not arb; done. So take  $\mathbb{P}(V_T < 0) = 0$ .

Then  $\mathbb{P}(V_T > 0) = 0$ , because a nonnegative, zero-expectation, random variable must vanish with probability 1. (Reason: if

$\mathbb{P}(V_T > 0) > 0$  , then  $\mathbb{P}(V_T > \varepsilon) > 0$  for some  $\varepsilon >0$  , hence

$\mathbb{E}V_T \geq \varepsilon \mathbb{P}(V_T > \varepsilon) > 0$ . Conclusion:  $\Theta$  is not a (type-1) arb.  $\square$

# Option pricing via the Fundamental Theorem

An alternative to pricing via replication is to use Fundamental Thm:

Basic asset prices  $\Rightarrow$  risk-neutral probabilities  $\Rightarrow$  option price

(1) Apply Fundamental Thm to  $S$  to infer risk-neutral probabilities:

$$
S _ {0} = e ^ {- r T} \mathbb {E} S _ {T} = e ^ {- r T} [ p _ {u} s _ {u} + (1 - p _ {u}) s _ {d} ].
$$

Solve to obtain

$$
p _ {u} = \frac {S _ {0} e ^ {r T} - s _ {d}}{s _ {u} - s _ {d}}.
$$

(2) Now use  $p_u$  to price the option:

$$
C _ {0} = e ^ {- r T} \mathbb {E} C _ {T} = e ^ {- r T} [ p _ {u} c _ {u} + (1 - p _ {u}) c _ {d} ]
$$

Two techniques for derivatives pricing:

Build replicating portfolio, or Find  $\mathbb{E}$  (discounted payoff).

# Fundamental Theorem of Asset Pricing

Rigorous justifications in general settings are achieved by 1981, by Michael Harrison, Stanley Pliska, and David Kreps.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/a8a4a5b3cc48626bb0ad151b31336d10bcc30b29d689ed847e893f25fa315eea.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/a7bdd17ffad6a5cb4b462aecfb4b96a81720c960d483d7b3d5135a7dbb6c0b6a.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/df16f1f1883031e9aeaef4b61862663743606b35cef151afb5335f6f8779be6a.jpg)

One period, two states

The Fundamental Theorem

One-period, more discrete states

Fundamental Theorem, again

# Replication in two-state model

Recall: we replicated the option using  $\beta \coloneqq (c_u - c_d) / (s_u - s_d)$  shares.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/52da390157f94cb23c899cde6ba70ef5bb964592350cfc3cb637b6ae8f82b249.jpg)

Match the slope by choosing the appropriate number of shares.

Match the level using the appropriate number of bank acct units.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/d2328963d6350e5bed50091d17b4999849104a50a88232ea48a562319d2d26a8.jpg)

Another view: For each asset, write its payoff as a vector of up-state and down-state payoffs. Replication possible because

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/212f6c70b695ee5350df7f1345818de6b0d4ea8f1a42792935e089e17468f568.jpg)

$$
\left( \begin{array}{c} c _ {u} \\ c _ {d} \end{array} \right)
$$

$$
\in \operatorname {s p a n} \left\{\left( \begin{array}{c} e ^ {r T} \\ e ^ {r T} \end{array} \right), \left( \begin{array}{c} s _ {u} \\ s _ {d} \end{array} \right) \right\}
$$

# A three-state model

- Times 0 and  $T$ . No intermediate trading; all portfolios are static.  
$\triangleright$  Up, middle, down state at time  $T$ , each with positive probability  
Bank account: Each unit has time-  $t$  value  $B_{t} = e^{rt}$ , for  $t = 0, T$ .  
Stock  $S$ : Let  $S_{T}$  take values  $s_u > s_m > s_d$  in up, mid, down states respectively.  
$\triangleright$  Option  $C$ : Let  $C_T$  take values  $c_u, c_m, c_d$  in up, mid, down states.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/da05ddad7730c9b894abd3a3fc0ee891ad11fbc7e76770d26c54d16c25950cce.jpg)

# Replication in three-state model

Example: Let  $r = 0$ , let  $S_0 = 100$ ,  $s_u = 130$ ,  $s_m = 100$ ,  $s_d = 80$ .

Consider a 90-call:  $c_{u} = 40, c_{m} = 10, c_{d} = 0$ . Can we replicate it?

Answer:

Can replicate option on the upside by holding 1 share of  $S$

Can replicate option on the downside by holding 0.5 shares of  $S$

But can't simultaneously replicate both risks.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/80a43d77f2a3e92f6ad1ffaf0e97272a8456725b72cadfbf5492b070a6c7c22b.jpg)

# Replication and spanning

Another view: Write payoffs as vectors

Bank acct payoff  $\left( \begin{array}{l}\mathrm{up - payoff}\\ \mathrm{mid - payoff}\\ \mathrm{down - payoff} \end{array} \right) = \left( \begin{array}{l}1\\ 1\\ 1 \end{array} \right)$ . Stock payoff  $\left( \begin{array}{l}130\\ 100\\ 80 \end{array} \right)$

And the 90-call payoff is

$$
\left( \begin{array}{l} 4 0 \\ 1 0 \\ 0 \end{array} \right) \notin \operatorname {s p a n} \left\{\left( \begin{array}{l} 1 \\ 1 \\ 1 \end{array} \right), \left( \begin{array}{l} 1 3 0 \\ 1 0 0 \\ 8 0 \end{array} \right) \right\}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/f3c37dc8d48870a45d7168c4dbaa1bbe50a74c867dc8f103074e87c049602d14.jpg)

# Complete markets

Market is said to be complete if every random variable  $Y_{T}$  can be replicated, meaning there exists  $\Theta$  such that  $\mathsf{P}(\Theta \cdot \mathbf{X}_T = Y_T) = 1$ , where  $\Theta := (\theta^1, \ldots, \theta^N)$  and  $\mathbf{X}_T(\omega) := (X_T^1(\omega), \ldots, X_T^N(\omega))$ .

Examples:

The market of  $\{\mathrm{bank~acct,stock}\}$  in the two-state model is complete. We were able to solve for  $\Theta = (\alpha ,\beta)$  
The market of {bank acct, stock} in the three-state model is incomplete, because the 90-call payoff could not be replicated.

# The martingale measures in this example

Probability measures on this space can be specified by probabilities  $(p_u,p_m,p_d)$ . They form a martingale measure iff they are an equivalent probability measure such that  $A / B$  is MG for each asset  $A$ . The first condition is that  $p_u,p_m,p_d$  are positive ( $>0$ ), and

$$
p _ {u} + p _ {m} + p _ {d} = 1.
$$

The second condition is that  $\mathbb{E}(S_T / B_T) = S_0 / B_0$ . Equivalently,

$$
1 3 0 p _ {u} + 1 0 0 p _ {m} + 8 0 p _ {d} = 1 0 0.
$$

This system has infinitely many solutions. Two examples:

$$
(p _ {u}, p _ {m}, p _ {d}) = (0. 2 0, 0. 5 0, 0. 3 0) \quad \text {a n d} \quad (p _ {u}, p _ {m}, p _ {d}) = (0. 3 0, 0. 2 5, 0. 4 5)
$$

$$
(4 0, 1 0, 0) = B
$$

Martingale measure exists but is not unique.

$$
(4 0, 1 0, 0) = 1 4. 5
$$

# The [first] fundamental theorem

The first fundamental theorem still holds in the multiple-state setting with an arbitrary number of assets, regardless of completeness.

No arb  $\Longleftrightarrow$  3 equivalent martingale measure  $\mathbb{P}$

Proof of “ $\Leftarrow$ ” is like in binomial model, but “ $\Rightarrow$ ” is harder.

Let's just give some intuition ...

One period, two states

The Fundamental Theorem

One-period, more discrete states

Fundamental Theorem, again

# Why can't we price by taking the payoff's expectation using actual probabilities

Because people are not risk-neutral.

- Your \$10000 car has a actual 1% chance of being unrecoverably stolen this year. You may be willing to pay a lot more than \$100 to insure against this. Not because you are irrational, but because you are risk-averse.  
 Consider a physically 50/50 coin flip worth \$1 million or nothing. You might rationally refuse to pay more than \$400K for this coin flip. Because each dollar in the bad state may be more precious than a dollar in the good state.

# What is the risk-neutral probability of an event

It's the price of a one-unit payout contingent on the event.

Consider an event  $G$ . Consider an asset which pays:

1 bank act unit if  $G$  occurs, otherwise 0.

Let  $p_G$  denote the time-0 price of this "  $G$ " asset, in units of  $B$ .

What can we say about  $p_G$ ?

Answer: The following are consequences of no-arbitrage.

If  $\mathsf{P}(G) = 0$  then  $p_G = 0$ .  
If  $\mathsf{P}(G) > 0$  then  $p_G > 0$ .  
If  $\mathsf{P}(G) = 1$  then  $p_G = 1$ .

Likewise for an asset contingent on some event  $H$ .

# What is the risk-neutral probability of an event

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/7590ee5f96c51ff48753841d2d453c0e92e51812b3cf9bed9a304569c9025725.jpg)

Consider disjoint events  $G$  and  $H$ . Consider an asset which pays:

1 bank act unit if  $G \cup H$  occurs, 0 otherwise.

Let  $p_{G \cup H}$  denote the time-0 price of this asset, in units of  $B$ .

Then  $p_{G\cup H} = ?$

Answer: Replicate this  $G \cup H$  asset

by holding 1 unit of the  $G$  asset and 1 unit of the  $H$  asset.

By law of one price,  $p_{G \cup H} = p_G + p_H$ .

These prices  $p$  satisfy the definition of a probability measure.

So define the risk-neutral probability of an event to be the price of an asset which pays: 1 bank act unit if the event occurs, else 0.

# Why can we price by taking  $\mathbb{P}$ -expectations

Suppose we have  $J$  possible outcomes  $\{\omega_1, \ldots, \omega_J\}$ . Suppose an asset pays  $Y$  units of  $B$  at time  $T$ , where  $Y$  is a random variable.

Thus the payment is  $Y(\omega_{j})$  bank acct units, if  $j$ th outcome occurs.

What's the time-0 price of the asset which pays  $Y$ ?

Answer: Replicate it by holding, for  $j = 1,\dots ,J$

$Y(\omega_{j})$  units of a basic asset which pays: 1 if  $\omega_{j}$  occurs, 0 otherwise. Replicating portfolio's time-0 value, in units of the bank account, is

$$
\sum_ {j = 1} ^ {J} \text {Q u a n t i t y} \times \text {P r i c e} = \sum_ {j = 1} ^ {J} Y (\omega_ {j}) p _ {\omega_ {j}}
$$

This is the expectation of  $Y$  with respect to risk-neutral probabilities!

# Why can we price by taking  $\mathbb{P}$ -expectations

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/d88308faae996095e8c8193bb27b139813410738890675f64cd5df22cfae80e8.jpg)

Let  $X_{t}$  be the time- $t$  value in dollars of an asset which pays  $X_{T}$  dollars at time  $T$ .  
Then  $X_{t} / B_{t}$  is its time- $t$  value, and  $X_{T} / B_{T}$  is the payout, expressed in units of the bank account.  
So, according the the previous page,

$$
\frac {X _ {0}}{B _ {0}} = \mathbb {E} \frac {X _ {T}}{B _ {T}}
$$

where  $\mathbb{E}$  denotes risk neutral expectation.

(What's missing from this proof?

Need to show it works even if the "basic" assets don't exist.)

# Summary: why can we price by taking  $\mathbb{P}$ -expectations

Because the following actions result in identical calculations:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/7f40572ad7c8c08c3fe22539cad1b5a1c997946df28a891fe3340bd921be533f.jpg)

Pricing:

Take a payoff, decompose into a portfolio of  $0/1$  "Arrow-Debreu" assets, and sum the quantity times price of each asset.

Taking a  $\mathbb{P}$  -expectation:

Take a random variable, decompose into its possible realizations, and sum the level times  $\mathbb{P}$ -probability of each realization.

(All "prices" are relative to a designated asset, e.g. the bank account) To summarize: risk-neutral pricing works because risk-neutral probabilities are prices (L2.28). So taking a risk-neutral expectation does the same calculation as pricing by replication (L2.29).

# How are actual and risk-neutral probabilities related

$\triangleright$  Risk-neutral probabilities  $\mathbb{P}$  depend on actual probabilities P combined with the market's risk preferences  
The measures  $\mathbb{P}$  and  $\mathsf{P}$  are "equivalent" meaning that they agree on all events that have probability 0 (or probability 1).  
$\triangleright$  Again in the discrete setting with outcomes  $\{\omega_1,\dots ,\omega_n\}$  each of nonzero probability, the relationship between the risk-neutral measure  $\mathbb{P}$  and the actual measure  $\mathsf{P}$  can be expressed by the "likelihood ratio" or "Radon-Nikodym derivative"

$$
\frac {\mathbb {P} (\omega)}{\mathbb {P} (\omega)}
$$

It's typically bigger in "bad" states  $\omega$ , smaller in "good" states  $\omega$ .

# The second fundamental theorem of asset pricing

An arbitrage-free market is complete iff there exists a unique martingale measure (MM).

Complete  $\Rightarrow$  uniqueness: Assume one-period,  $J$ -states  $\{\omega_1,\ldots ,\omega_J\}$  with  $>0$  probabilities,  $N$  assets including a bank acct with value  $e^{rt}$ .

For each  $j = 1,\ldots ,J$  , define the Arrow-Debreu payoff

$$
A _ {T} ^ {j} (\omega) = \left\{ \begin{array}{l l} 1 & \mathrm {f o r} \omega = \omega_ {j} \\ 0 & \mathrm {f o r} \omega \neq \omega_ {j} \end{array} \right.
$$

${sk} : y$

By completeness,  $A_T^j$  has a replicating portfolio  $\Theta^j$  hence a unique arbitrage-free time-0 price  $\Theta^j \cdot \mathbf{X}_0$ . So for any martingale measure  $\mathbb{P}^*$ , we have  $e^{-rT}\mathbb{E}^* A_T^j = \Theta^j \cdot \mathbf{X}_0$ , where  $\mathbb{E}^*$  means expectation wrt  $\mathbb{P}^*$ . So  $\mathbb{P}^*(\{\omega_j\}) = \Theta^j \cdot \mathbf{X}_0 e^{rT}$  is unique MM probability of  $\{\omega_j\}$ .

# The second fundamental theorem of asset pricing: Proof

Uniqueness  $\Rightarrow$  complete: By no-arb, there exists a MM  $\mathbb{P}$ . Suppose market is incomplete. Let's construct a MM  $\mathbb{P}^*$  different from  $\mathbb{P}$ . Look for  $\varepsilon = (\varepsilon_1,\dots ,\varepsilon_J)$  such that an equivalent MM is formed by

$$
\mathbb {P} ^ {*} (\{\omega_ {j} \}) := \mathbb {P} (\{\omega_ {j} \}) + \varepsilon_ {j} \qquad j = 1, \dots , J.
$$

skip

Want  $\varepsilon$  such that  $\mathbb{E}^*$  still prices all assets correctly. Equivalently, want

$$
e ^ {- r T} \sum_ {j} \varepsilon_ {j} X _ {T} ^ {n} (\omega_ {j}) = 0 \qquad n = 1, \ldots , N.
$$

Equivalently, want  $\varepsilon$  orthogonal to each  $\mathbf{x}^n\in \mathbb{R}^J$  that represents  $X^n$ . By incompleteness span  $\{\mathbf{x}^1,\dots ,\mathbf{x}^N\} \neq \mathbb{R}^J$ , so by Gram-Schmidt, there exists a unit vector  $\mathbf{v}$  orthogonal to  $\mathbf{x}^1,\ldots ,\mathbf{x}^N$ .

So  $\mathbb{P}^*$  is another equivalent MM, where  $\varepsilon := \frac{\min_j |\mathbb{P}(\{\omega_j\})|}{2} \mathbf{v}$ .

# Financial Mathematics 33000

# Lecture 3

Roger Lee

2022 October 12

# Multi-period model

Stochastic processes

Multi-period models: Arbitrage and Fundamental Thm

# Now allow intermediate trading

Start with an example. Two periods, so three time points  $t = 0,1,2$ .

Four outcomes  $\Omega = \{UU,UD,DU,DD\}$ . Bank acct with  $r = 0$

Let  $S_0 = 100$

Let  $S_{1}(UD) = S_{1}(UU) = 115$  and  $S_{1}(DD) = S_{1}(DU) = 75$ .

Let  $S_{2}(UU) = 150$ ,  $S_{2}(UD) = S_{2}(DU) = 100$ ,  $S_{2}(DD) = 50$ .

Replicate a 90-call with expiry  $T = 2$ ? No way using a static portfolio of bank acct and stock. But suppose we allow trading at time  $t = 1$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/22c75d9a26e7c8d497512265d72874b6a58dac95e2ea17732f0d1fade2f90a15.jpg)

# Now allow intermediate trading

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/edd602249dd1cadfb2b55afa24b3be49cd9d62e7d5f0dad1482522e7ff93f587.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/33f861ecd566877585661ec2046605bda369353d02aac946e1d8c52ea44579c6.jpg)

At time 0, what's the option price?

Replication: Hold (25-5)Y(115-75)=0.5 shares of stock, and -32.5 units of bank account. Time-0 value is  $0.5^{*}100 - 32.5^{*}1 = 17.5$  
Risk-neutral pricing: omitted here.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/9b6c2b2073e3aeafdc16760a3d0f41bf71ebb4d976030eb2a76c58634f45d006.jpg)

Multi-period model

Stochastic process: 000000000000

At time 1, at (A), what's the option price?

Replication: Hold (60-10)/(150-100) = 1  
share of stock, and -90 units of bank account  
Time-1 value is  $1^{*}115 - 90^{*}1 = 25$

Risk-neutral pricing: from (A) the up probability  $p$  satisfies  $115 = p^{*}150 + (1 - p)^{*}100$   
Solve this to get  $p = 0.3$ .  
Option price  $0.3^{*}60 + 0.7^{*}10 = 25$

At time 1, at (B), what's the option price?

Replication: Hold (10-0)/(100-50)=0.2 shares and -10 units of the bank account. Time-1 value is  $0.2^{*}75 - 10^{*}1 = 5$

Risk-neutral pricing: from (B) the up probability q satisfies  $q^{*}100 + (1 - q)^{*}50 = 75$  thus  $q = 0.5$ . Option price  $0.5^{*}10 + 0.5^{*}0 = 5$

Multi-period models: Arbitrage and Fundamental Thm 00000000

Multi-period model

Stochastic processes

Multi-period models: Arbitrage and Fundamental Thm

# Stochastic process

A stochastic process is a set of random variables, indexed by time

$\triangleright$  Discrete time: the set of time points is countable, for example

$$
X _ {0}, X _ {1}, X _ {2}, X _ {3}, \ldots
$$

or

$$
X _ {t _ {0}}, X _ {t _ {1}}, X _ {t _ {2}}, X _ {t _ {3}}, \ldots
$$

where  $t_0 < t_1 < t_2 < \dots$

$\triangleright$  Continuous time: the set of time points is an interval, for example

$$
X _ {t}, t \geq 0 \quad \text {o r} \quad X _ {t}, t \in [ 0, T ]
$$

Some statements that we give below will literally be true for finite sample spaces but ignore technicalities (integrability, measurability) in infinite case.

# Random walk

A random walk (started at a nonrandom point  $S_0$ ) is a stochastic process  $S_0, S_1, S_2, \ldots$  such that

$$
S _ {n} = S _ {0} + X _ {1} + X _ {2} + \dots + X _ {n}
$$

where  $X_{1}, X_{2}, \ldots$ , are independent and identically distributed random variables.

A simple random walk:  $S_0 = 0$  and

$$
\mathbb {P} (X _ {n} = 1) = p \text {a n d} \mathbb {P} (X _ {n} = - 1) = 1 - p, \text {w h e r e} 0 <   p <   1.
$$

$\triangleright$  Symmetric random walk: simple random walk with  $p = 1 / 2$

# Interview question

$$
N v G e o m e t r i c (p)
$$

A stock price is currently 1.01. The stock can move only in steps of  $\pm 0.01$ , and is a symmetric random walk. We will always put a bid (a limit order to buy) 0.01 below the current price, thus 1.00 for now, if it goes down we get filled at 1.00, if it goes to 1.02 the new bid is 1.01. What is the expectation of the price at which we finally buy the stock?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/18df69bfbca3a2f7754470778073339a41dd0a2b4c77530ffa8ab9984d959e47.jpg)

All prices n couls. If you got filled at time N, you pay 99+N couls  $E\left( {{99} + N}\right)  = {99} + {E}^{2}{N}^{2}$ $\Rightarrow   + \; = {101}$

# Filtration

In multi-period models, we want to represent the revelation of information as time passes.

A filtration  $\{\mathcal{F}_t: t \geq 0\}$  represents, for each  $t$ , all information revealed at or before time  $t$ .

Example: in the previous model,

$\triangleright \mathcal{F}_1$  is the information about whether the first step was U or D.  
$\triangleright \mathcal{F}_2$  is the information about whether the first two steps were UU, UD, DU, or DD.

# Filtrations

We want to represent the revelation of information as time passes.

A filtration  $\{\mathcal{F}_t: t \geq 0\}$  represents, for each  $t$ , all information revealed at or before time  $t$ .

Example: Flip a coin at times 1, 2, 3.

Sample space {HHH, HHT, HTH, HTT, THH, THT, TTH, TTT}  
$\triangleright \mathcal{F}_1$  is the information available at time 1, namely whether the first flip was H or T.  
$\triangleright \mathcal{F}_2$  is the information available at time 2, namely whether the first two flips were HH, HT, TH, or TT.  
$\triangleright$ $\mathcal{F}_3$  is the time-3 information, namely whether the first three flips were HHH, HTH, THH, TTH, HHT, HTT, THT, TTT

# Filtrations

More precisely: at each time, the sample space is partitioned into "information sets". At that time, you know which info set you are in, but not which outcome will happen within the info set.

The time-1 information sets are

$$
\left\{\text {H H H , H T H , H H T , H T T} \right\}, \left\{\text {T H H , T T H , T H T , T T T} \right\}
$$

and  $\mathcal{F}_1$  is the set of those information sets (and their unions).

The time-2 information sets are

$$
\{\text {H H H , H H T} \}, \{\text {H T H , H T T} \}, \{\text {T H H , T H T} \}, \{\text {T T H , T T T} \}
$$

and  $\mathcal{F}_2$  is the set of those information sets (and their unions).

Time-3 info sets:  $\{\mathrm{HHH}\}$ ,  $\{\mathrm{HHT}\}$ ,  $\{\mathrm{HTH}\}$ ,  $\{\mathrm{HTT}\}$ ,  $\{\mathrm{THH}\}$ ,  $\{\mathrm{THT}\}$ ,  $\{\mathrm{TTH}\}$ ,  $\{\mathrm{TTT}\}$

# Conditional Expectations

- You can take expectations conditional on the information available at a given time.

$$
\mathbb {E} (X | \mathcal {F} _ {t}) \quad \text {a l s o w r i t t e n a s} \quad \mathbb {E} _ {t} (X)
$$

is defined to be the random variable whose value on each of the information sets  $A$  in  $\mathcal{F}_t$  is  $\mathbb{E}(X|A)$ .

For example, let  $X$  be the number of heads in the 3 flips. Then

$$
\mathbb {E} _ {1} (X) = \mathbb {E} (X | \mathcal {F} _ {1}) = \left\{ \begin{array}{l l} 2 & \text {o n \{H H H , H T H , H H T , H T T \}}, \\ 1 & \text {o n \{T H H , T T H , T H T , T T T \}} \end{array} \right.
$$

# Conditional expectations

Again the notation

$$
\mathbb {E} _ {t} X := \mathbb {E} (X | \mathcal {F} _ {t})
$$

means the conditional expectation of  $X$ , given the time- $t$  information.

Some properties of conditional expectation:

For [integrable] random variables  $X,Y$

"Taking out what's known":

If  $X$  is measurable wrt  $\mathcal{F}_t$  then  $\mathbb{E}_t(XY) = X\mathbb{E}_tY$ .

If  $X$  is independent of  $\mathcal{F}_t$ , then  $\mathbb{E}_t X = \mathbb{E} X$ .  
$\triangleright$  "Law of iterated expectations": If  $s < t$  then  $\mathbb{E}_s(\mathbb{E}_tX) = \mathbb{E}_sX$ .

Let's assume that  $\mathcal{F}_0$  is trivial. So  $\mathbb{E}_0$  is the same thing as  $\mathbb{E}$ .

# Adapted processes

A stochastic process  $Y$  is adapted to  $\{\mathcal{F}_t\}$ , if  $Y_{t}$  is  $\mathcal{F}_t$ -measurable for each  $t$ , meaning the value of  $Y_{t}$  is determined by the information in  $\mathcal{F}_t$ . This means that  $Y_{t}$  is constant on each information set of  $\mathcal{F}_t$ .

For instance, in option pricing theory, we:

$\triangleright$  Construct our models so that asset prices  $X_{t}$  are adapted to  $\mathcal{F}_t$ . Interpretation: At time  $t$  the market has revealed the price  $X_{t}$ .  
$\triangleright$  Define our trading strategies to require that the quantities  $\theta_{t}$  be adapted to  $\mathcal{F}_t$ .

Interpretation: Allow trading, but determined only by what has been revealed, not by future outcomes.

# Martingales

we say  $M_t$  is a martingale with respect to a filtration  $\{\mathcal{F}_t\}$  [if  $\mathcal{F}_t$  unspecified, then assume filtration consisting of history of  $M$ ] if:  $M_t$  is adapted to  $\{\mathcal{F}_t\}$ , and for all  $t$  and all  $T$  with  $0 \leq t < T$ ,

$$
\mathbb {E} _ {t} M _ {T} = M _ {t}
$$

with probability 1. Interpretations:

“Today’s expectation of tomorrow’s level is today’s level”  
No "drift". No "trend".

$$
\mathbb {E} _ {t} \left(M _ {T} - M _ {t}\right) = 0
$$

# Martingales

Let  $S$  be a simple random walk. Is  $S$  a martingale?  
Let  $X_{t}$  be the number of heads in flips 1 through  $t$

Is  $X$  a martingale? No.  ${E}_{t}\left( {{X}_{t} - {X}_{t}}\right)$

Let  $X_0 = 0$ . Let  $\mathsf{P}(X_1 = 1) = \mathsf{P}(X_1 = -1) = 0.5$ .

Let  $X_{t} = tX_{1}$  for  $t = 2,3,4,\ldots$

Is  $\mathbb{E}X_T = X_0$  for all  $T$ ? Is  $X$  a martingale?

$$
O n l y, f p = \frac {1}{2}
$$

[\text{令} \cdot  \left( {a + b}\right)  = {70}]

# Optional stopping theorem

If  $M$  is a martingale and  $S \leq T$  are bounded stopping times then

$$
\mathbb {E} _ {S} M _ {T} = M _ {S}
$$

- Still true if  $S, T$  are unbounded, provided that  $M$  is uniformly integrable (UI). Sufficient conditions for UI (either):

There exists  $Y$  such that  $\mathbb{E}|Y| < \infty$  and for all  $t$ ,  $|M_t| \leq Y$ .

There exists  $Z$  such that  $\mathbb{E}|Z| < \infty$  and for all  $t$ ,  $M_t = \mathbb{E}_t Z$ .

- Still true if  $M_{n}$  is discrete sum of IID and  $\mathbb{E}T < \infty$ .

In general  $\mathbb{E}M_T = M_0$  can fail: Let  $M_t = \exp (W_t - t / 2)$ .

Let  $S = 0$  and let  $T$  be the first time that  $M$  hits 0.1. (Such time exists with probability 1, because  $\log M_t$  is Normal with mean  $-t / 2$  and standard deviation  $\sqrt{t}$ .) Then  $\mathbb{E}M_T = 0.1 \neq M_0 = 1$ .

# Optional stopping theorem: Random walk

A drunken guy is trying to cross a 100ft bridge. He has crossed 23ft. The probabilities of going one step forward and one step backward are equal. The steps have equal length. Find the probability he ends up at the bridge's other side before returning to the bridge's starting point.

Solution:

Let  $T$  be his exit time from [either end of] the interval  $(0, 100)$ .

His time- $t$  position  $M_{t}$  is a bounded (hence UI) martingale.

Then ...

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/1e56bc283bb6e55bc06ff0734e9cf176f1cf3818e26452dea4b27dabf2380093.jpg)

Multi-period model

Stochastic processes

Multi-period models: Arbitrage and Fundamental Thm

# Trading strategy

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/9cc6b2094877e2d09c7c261f2b813a810b9b5e1e79671a65929df960f25a1755.jpg)

A trading strategy on  $t = 0,1,\ldots ,T$  is a sequence  $\Theta_t$  adapted to  $\mathcal{F}_t$ .

Let us agree to view  $\Theta_t$  as the vector of quantities of the tradeable

assets held after all time-  $t$  trading at prices  $\mathbf{X}_t$ .

Say that the trading strategy is self-financing if for all  $t > 0$

$$
\boldsymbol {\Theta} _ {t - 1} \cdot \mathbf {X} _ {t} = \boldsymbol {\Theta} _ {t} \cdot \mathbf {X} _ {t}
$$

with probability 1.

This implies that the change in portfolio value from time  $t$  to  $t + 1$  is

$$
V _ {t + 1} - V _ {t} = \boldsymbol {\Theta} _ {t + 1} \cdot \mathbf {X} _ {t + 1} - \boldsymbol {\Theta} _ {t} \cdot \mathbf {X} _ {t} = \boldsymbol {\Theta} _ {t} \cdot \mathbf {X} _ {t + 1} - \boldsymbol {\Theta} _ {t} \cdot \mathbf {X} _ {t} = \boldsymbol {\Theta} _ {t} \cdot (\mathbf {X} _ {t + 1} - \mathbf {X} _ {t})
$$

So the change in value is fully attributable to gains and losses in asset prices.

# Total P&L

Note that we can sum from  $t = 0$  to  $t = T - 1$

$$
V _ {T} - V _ {0} = \sum_ {t = 0} ^ {T - 1} \boldsymbol {\Theta} _ {t} \cdot \left(\mathbf {X} _ {t + 1} - \mathbf {X} _ {t}\right)
$$

This looks like a discrete version of the stochastic integral

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/fa14ed18e02029d351b37585c0b986f0d3193b733a6daaf877a5d65ded7ac6b6.jpg)

Idea: P&L from a self-financing trading strategy is a stochastic integral, namely the integral of quantity with respect to price.

# Arbitrage in a multi-period model

Arbitrage is a self-financing trading strategy  $\Theta_t$  whose value  $V_t \coloneqq \Theta_t \cdot \mathbf{X}_t$  satisfies

$$
\begin{array}{r l} {V _ {0} = 0 \quad \mathrm {a n d b o t h :}} & {\mathsf {P} (V _ {T} \geq 0) = 1} \\ & {\mathsf {P} (V _ {T} > 0) > 0} \end{array}
$$

or

$$
V _ {0} <   0 \quad \text {a n d} \quad \mathsf {P} (V _ {T} \geq 0) = 1
$$

Note that static portfolios are a special case of self-financing trading strategies, so the previous definition is consistent with this one.

This definition extends the notion of arbitrage beyond static strategies, to self-financing ones.

# Properties of arbitrage-free prices

In the absence of arbitrage, the following properties hold:

If  $\Theta_t^a$  and  $\Theta_t^b$  are self-financing, and if  $\mathsf{P}(V_T^a\geq V_T^b) = 1$  
then  $V_0^a \geq V_0^b$ , or else arbitrage would exist, namely  $\Theta_t^a - \Theta_t^b$ .  
"Law of one price": If  $\Theta_t^a$  and  $\Theta_t^b$  are self-financing, and if  
$\mathsf{P}(V_T^a = V_T^b) = 1$ , then  $V_0^a = V_0^b$ , or else arbitrage would exist.

# Martingales

The time-  $t$  conditional expectation of a random variable  $Y$ , written

$$
\mathbb {E} _ {t} Y \text {o r} \mathbb {E} (Y | \mathcal {F} _ {t})
$$

is another random variable: the expectation of  $Y$ , conditional on the information that has been revealed up to and including time  $t$ .

This means: if  $\mathcal{F}_t$  is generated by a finite partition, then on each information set  $R$ , define  $\mathbb{E}(Y|\mathcal{F}_t)$  on info set  $R$  to be  $\mathbb{E}(Y|R)$ .

(Ignoring integrability conditions) we say that  $M_t$  is a martingale with respect to filtration  $\mathcal{F}_t$ , if  $M_t$  is adapted to  $\mathcal{F}_t$  and for all  $t < T$ , with probability 1,

$$
\mathbb {E} _ {t} M _ {T} = M _ {t}
$$

"Today's expectation of tomorrow's level equals today's level."

# Fundamental Theorem of Asset Pricing

The fundamental theorem still holds in the multi-period case.

No  $\operatorname{arb} \Rightarrow \exists$  equivalent martingale measure  $\mathbb{P}$ :

Idea: In each one-period sub-tree,

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/44ecf6488dd21b75eb304e78e68eb4ce63419c1117b93e786adee4af8c2577e6.jpg)

apply the one-period version of the Fundamental Theorem, and get risk-neutral probabilities of each single step. Then multiply the probabilities of the individual steps to get a probability measure on all paths. Can verify that this is a martingale measure.

# Fundamental Theorem of Asset Pricing: multi-period

$\exists$  equivalent martingale measure  $\mathbb{P} \Rightarrow \mathrm{No}$  arb:

We are given that  $\tilde{\mathbf{X}}_t\coloneqq B_t^{-1}\mathbf{X}_t$  is a vector of martingales under  $\mathbb{P}$ . For self-financing  $\Theta$ , can show that  $\Theta_t\cdot \tilde{\mathbf{X}}_t$  is also a martingale.

(Idea: Can show that martingales have zero drift; here this means

$$
\mathbb {E} _ {t} (M _ {t + 1} - M _ {t}) = 0
$$

hence the intuition that a martingale is a wealth process generated by playing zero expectation games. Varying the amounts  $\theta_t^n$  bet, across games  $n$  and times  $t$ , still makes collectively a zero expectation game.) The martingale property implies  $V_0 / B_0 = \mathbb{E}(V_T / B_T)$ , so the reasoning we gave in the one-period case again shows that no arbitrage exists. (You can't risklessly make money by playing zero expectation games!)

# Incomplete market

In an incomplete market (example: the one-period "trinomial" model with 3 possible outcomes and two assets  $B, S$ ):

From a replication standpoint: Some payoffs can't be replicated. (In the trinomial example, the only replicable payoffs are linear combinations of 1 and  $S_T$ , or equivalently, affine functions of  $S_T$ ). For payoffs having no replicating portfolio, no-arbitrage alone may not be able to determine a unique price for the payoff.  
From the martingale / risk-neutral valuation standpoint: There are many martingale measures consistent with the prices of the basic assets. Different martingale measures can give different valuations for a derivative asset's payoff.

# Completing a market

If we change the assumptions of the model, then we may be able to complete the market, and thus price all payoffs using no-arbitrage.

- Could change the assumptions by adding more basic assets In the trinomial example, we could complete the market by adding a third asset outside the span of  $B$  and  $S$ .  
- Could change the assumptions by adding more trading opportunities.

In the trinomial example, we could complete the market by allowing trading of  $B$  and  $S$  at one intermediate time point.

Next we will build models with infinitely many outcomes. Hope to replicate general payoffs by trading  $B$  and  $S$  continuously in time.

# Financial Mathematics 33000

# Lecture 4

Roger Lee

2022 October 19

# Brownian motion and stochastic integration

Itô's rule/lemma/formula

# Filtrations in continuous time

$\triangleright$  Represent the arrival of information by a filtration  $\{\mathcal{F}_t\}_{t\geq 0}$  Each  $\mathcal{F}_t$  represents what has been determined at or before time  $t$  
If we want to specify a filtration in continuous time, we can't just list the infinitely many info sets. Instead we could designate some process(es) - such as Brownian motion - that drive the risk in the market, and use the filtration generated by these risk sources.  
$\triangleright$  Write  $\{\mathcal{F}_t^Z\}_{t\geq 0}$  for the filtration generated by process(es)  $Z$ . This means  $\mathcal{F}_t^Z$  contains all info about the history of  $Z$  through time  $t$ .  
$\triangleright$  Model asset prices as processes adapted to the filtration, so they are "functions of"  $Z$  and its history. Require trading strategies to be adapted to the filtration, so they don't "look into the future".

# Brownian motion: Motivation

Let  $\Delta t > 0$ . Consider random walk  $V$  started at  $V_{0} = 0$ ,

with time points  $0, \Delta t, 2\Delta t, \ldots$  and step sizes  $X_{n} \sim \mathrm{Normal}(0, \Delta t)$ .

Then for  $t = n\Delta t$

$$
V _ {t} = X _ {1} + \dots + X _ {n} \sim \operatorname {N o r m a l} (0, t)
$$

because the sum of independent normal random variables is also normal. Likewise, if  $s < t$  then

$$
V _ {t} - V _ {s} \sim \mathrm {N o r m a l} (0, t - s)
$$

Brownian motion is, in some sense, the limit of this random walk as  $\Delta t\to 0$

# Brownian motion: Definition

A Brownian motion or Wiener process is a stochastic process  $W$  with

$W_{0} = 0$  
$\triangleright W$  has independent increments:  $W_{t} - W_{s}$  is independent of  $\mathcal{F}_s^W$  for  $0\leq s < t$ . This implies  $\{\Delta W_{t_0},\dots ,\Delta W_{t_{N - 1}}\}$  are independent, where  $\Delta W_{t_n}\coloneqq W_{t_{n + 1}} - W_{t_n}$  and  $0\leq t_0 < t_1 < t_2 < \dots < t_N$ .  
$W$  has Gaussian (norm-) increments: if  $0 \leq s < t$  then

$$
W _ {t} - W _ {s} \sim \mathrm {N o r m a l} (0, t - s)
$$

So  $\Delta W_{t} := W_{t + \Delta t} - W_{t}$  is  $\sqrt{\Delta t}$  times a  $N(0, v)$  random variable.  $N(m, v)$  denotes Normal(mean  $m$ , variance  $v$ ) distribution.

$W$  has continuous sample paths (trajectories):

$W_{t}$  is continuous in  $t$ , with probability 1.

# Brownian motion: Properties

$\triangleright W$  exists and is, in some sense, the limit of a symmetric random walk, as step size and time interval approach zero.  
$W_{t}$  is a martingale (with respect to  $\mathcal{F}_t^W$ ).  
$W_{t}$  is nowhere differentiable in  $t$ , with probability 1.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/9afd283eef125a8b924d30be5c71c7e3e5877e0143276dbb939d169d5b0b3f8a.jpg)

# Itô processes: motivation via discrete sums

Use Brownian motion as source of risk to drive Itô processes, which can model asset prices, interest rates, etc.

Construct Ito process: Divide time interval  $[0,T]$  into  $N$  periods,

of length  $\Delta t\coloneqq T / N$  . For  $n = 0,\dots ,N$

let  $t_n \coloneqq n\Delta t$  be the  $n$ th time point.

Let  $X$  start at  $X_0$  and evolve via

$$
X _ {t _ {n + 1}} = X _ {t _ {n}} + \mu_ {t _ {n}} \Delta t + \sigma_ {t _ {n}} \dot {\Delta} W _ {t _ {n}}
$$

Interpretation: new price  $=$  old price,

plus a drift coefficient times  $\Delta t$

plus a diffusion coefficient times the random shock

$$
\Delta W _ {t _ {n}} := W _ {t _ {n + 1}} - W _ {t _ {n}} \sim N (0, \Delta t)
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/4b4b38591904eef84feac31daecc2b3f0add155b67ff418a34f2891bd2344251.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/79406ded67b21a41f287712441cf99adbcc8b0fc24e2957791b1c37b1c0d93e4.jpg)

# Itô processes: motivation via discrete sums

Summing all the increments,

$$
X _ {T} = X _ {0} + \sum_ {n = 0} ^ {N - 1} \mu_ {t _ {n}} \Delta t + \sum_ {n = 0} ^ {N - 1} \sigma_ {t _ {n}} \Delta W _ {t _ {n}}
$$

The continuous-time analogue of this sum is

$$
X _ {T} = X _ {0} + \int_ {0} ^ {T} \mu_ {t} \mathrm {d} t + \int_ {0} ^ {T} \sigma_ {t} \mathrm {d} W _ {t}.
$$

which we will define by taking  $N\to \infty$  limits of the discrete sums.

And then we will abbreviate this by writing

$$
\mathrm {d} X _ {t} = \mu_ {t} \mathrm {d} t + \sigma_ {t} \mathrm {d} W _ {t}
$$

Change in  $X =$  Drift  $\times$  time increment + diffusion  $\times$  change in  $W$

# Itô integrals: definition

Let  $\mu_t$  and  $\sigma_t$  satisfy integrability conditions (which this course will not require you to know), be adapted to  $\mathcal{F}_t^W$ , and be continuous in  $t$  (or, more generally, have one-sided continuity and two-sided limits). Then, for each path of  $\mu$ , we define the Riemann integral

$$
\int_ {0} ^ {T} \mu_ {t} \mathrm {d} t := \lim  _ {N \rightarrow \infty} \sum_ {n = 0} ^ {N - 1} \mu_ {t _ {n}} \Delta t
$$

and define the  $I t\hat{o}$  integral of  $\sigma$  with respect to  $W$  by:

$$
\int_ {0} ^ {T} \sigma_ {t} \mathrm {d} W _ {t} := \lim _ {N \to \infty} \sum_ {n = 0} ^ {N - 1} \sigma_ {t _ {n}} \Delta W _ {t _ {n}}
$$

Likewise define  $\int_{\tau}^{T}$  by taking  $\Delta t\coloneqq (T - \tau) / N$  and  $t_n\coloneqq \tau +n\Delta t$

Note: This limit does not necessarily exist in a pathwise sense. It does exist in  $L^2$  and in probability, which you are not expected to know.

# Itô integrals: properties

Some properties:

For  $\sigma$  constant,  $\int_0^T\sigma \mathrm{d}W = \lim \sum \sigma \Delta W_{t_n} = \sigma (W_T - W_0) = \sigma W_T.$  For constant  $\mu ,\sigma$  scaled BM  $^+$  drift can be written various ways:

$$
\boxed {X _ {t} = X _ {0} + \mu t + \sigma W _ {t}} = X _ {0} + \int_ {0} ^ {t} \mu \mathrm {d} s + \int_ {0} ^ {t} \sigma \mathrm {d} W _ {s} \Longleftrightarrow \boxed {\mathrm {d} X _ {t} = \mu \mathrm {d} t + \sigma \mathrm {d} W _ {t}}
$$

- Itô integrals are linear in the integrand: for constants  $a$  and  $b$  and processes  $\rho$  and  $\sigma$ ,

$$
\int_ {0} ^ {T} \left(a \rho_ {s} + b \sigma_ {s}\right) \mathrm {d} W _ {s} = a \int_ {0} ^ {T} \rho_ {s} \mathrm {d} W _ {s} + b \int_ {0} ^ {T} \sigma_ {s} \mathrm {d} W _ {s}
$$

Itô integrals are time-additive: for  $0 \leq \tau \leq T$ ,

$$
\int_ {0} ^ {T} \sigma_ {s} d W _ {s} = \int_ {0} ^ {\tau} \sigma_ {s} d W _ {s} + \int_ {\tau} ^ {T} \sigma_ {s} d W _ {s}
$$

# Itô integrals are martingales

$$
E (\Delta W) = 0
$$

Let  $\mathrm{d}X_{t} = \sigma_{t}\mathrm{d}W_{t}$  or equivalently

$$
X _ {t} := X _ {0} + \int_ {0} ^ {t} \sigma_ {s} \mathrm {d} W _ {s}.
$$

Then  $\boxed{X \text{ is a martingale}}$ :  $\mathbb{E}_t X_T = X_t$  or equivalently

$$
\mathbb {E} _ {t} \left(X _ {T} - X _ {t}\right) = 0 \quad \text {f o r a l l} t <   T
$$

Idea of proof: dividing  $[t,T]$  into  $N$  time intervals  $t_0 = t,\dots ,t_N = T$

$$
\begin{array}{l} \mathbb {E} _ {t} (X _ {T} - X _ {t}) = \mathbb {E} _ {t} \int_ {t} ^ {T} \sigma_ {s} \mathrm {d} W _ {s} = \mathbb {E} _ {t} \left[ \lim _ {N \to \infty} \sum_ {n = 0} ^ {N - 1} \sigma_ {t _ {n}} \Delta W _ {t _ {n}} \right] \\ = \lim  _ {N \rightarrow \infty} \mathbb {E} _ {t} \sum_ {n = 0} ^ {N - 1} \mathbb {E} _ {t _ {n}} \left(\sigma_ {t _ {n}} \Delta W _ {t _ {n}}\right) = \lim  _ {N \rightarrow \infty} \mathbb {E} _ {t} \sum_ {n = 0} ^ {N - 1} \sigma_ {t _ {n}} \mathbb {E} _ {t _ {n}} \Delta W _ {t _ {n}} = 0. \\ \end{array}
$$

A corollary:  $\mathbb{E}$  of any Itô integral is zero.

# Itô processes

Define an Itô process to be a stochastic process  $X$  of the form

$$
X _ {t} = X _ {0} + \int_ {0} ^ {t} \mu_ {s} \mathrm {d} s + \int_ {0} ^ {t} \sigma_ {s} \mathrm {d} W _ {s}
$$

which is the sum of an initial value, a Riemann integral (the drift term), and an Ito integral (the diffusion term). Shorthand notation:

$$
\mathrm {d} X _ {t} = \mu_ {t} \mathrm {d} t + \sigma_ {t} \mathrm {d} W _ {t}
$$

If  $X_{t}$  is an Itô process then

$X_{t}$  is continuous in  $t$  (because  $W$  is. Irrelevant whether  $\mu ,\sigma$  are).  
$X_{t}$  is adapted to  $\mathcal{F}_t^W$  
$\triangleright X_{t}$  is a martingale iff  $\mu_t = 0$  for all  $t > 0$ , with probability 1.

Not sufficient:  $\mathbb{E}\mu_t = 0$

# Stochastic differential equations

Recall that in an Itô process

$$
\mathrm {d} X _ {t} = \mu_ {t} \mathrm {d} t + \sigma_ {t} \mathrm {d} W _ {t}
$$

the  $\mu_t$  and  $\sigma_t$  can depend on the entire history of  $W$  up to time  $t$ . Solutions of Ito stochastic differential equations (SDE) are a subclass of Ito processes. In an SDE, the  $\mu$  and  $\sigma$  have the form  $\mu_t = \mu(X_t, t)$  and  $\sigma_t = \sigma(X_t, t)$  for some functions  $\mu(x, t)$  and  $\sigma(x, t)$ .

Usually, specify the  $\mu$  and  $\sigma$  functions, and define  $X$  to satisfy

$$
\mathrm {d} X _ {t} = \mu (X _ {t}, t) \mathrm {d} t + \sigma (X _ {t}, t) \mathrm {d} W _ {t}, \qquad X _ {0} = \text {c o n s t a n t}.
$$

Existence and uniqueness of a solution  $X$  can be guaranteed by Lipschitz-type technical conditions on  $\mu$  and  $\sigma$ .

$$
u (x, t) = u x \sigma (x, t) = \sigma x
$$

# Geometric Brownian motion:  $\mathrm{d}X_{t} = \mu X_{t}\mathrm{d}t + \sigma X_{t}\mathrm{d}W_{t}$

Let  $X_0 = 100$ . Trajectories for  $\mu = -0.15, +0.15$  and  $\sigma = 0.20, 0.40$ :

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/3c1e20b636cd83259295f5b51a7db7526f52bcfc2810df86ccfc754140fe7442.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/8545ce130d93bf6b30e4228f93d68e9710157e07d3360af91e12d5059c8f3540.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/ba511798996fe40709b88500df8fa66e379b223745614622d2b79e08f46b8ecf.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/ed7c2003c09e22c64303e6b1266aec51c9b285a061b3c487c463cf1c8c610fbd.jpg)

# Motivation for GBM to model a stock price

BM is a natural starting point for model-building

$\triangleright$  BM is the  $\Delta t \to 0$  limit, in distribution, of a random walk (with zero-mean IID steps, scaled to have variance  $\Delta t$ ).

But some problems with  $W_{t}$  or  $\mu \tilde{t} + \sigma \overline{W}_{t}$  as a model for a stock price:

$\triangleright$  BM can go negative, and so can scaled BM with drift.  
If  $\mathrm{d}S_{t} = \mu \mathrm{d}t + \sigma \mathrm{d}W_{t}$  then each  $S_{t + 1} - S_{t}$  is independent of  $\mathcal{F}_t$ . A  $10+$  dollar move is equally likely, whether  $S_{t}$  is at 20 or 100.

For a GBM  $S$ , the drift and diffusion are proportional to  $S$ .

$S$  stays positive.  
Each log return  $\log (S_{t + 1} / S_t)$  is independent of  $\mathcal{F}_t$  A  $10+$  percent move is equally likely, whether  $S_{t}$  is at 20 or 100.

# Integral with respect to an Itô process

Let  $\mathrm{d}X_{t} = \mu_{t}\mathrm{d}t + \sigma_{t}\mathrm{d}W_{t}$ . Define the integral of a  $(\mathcal{F}_t^W$ -adapted, sufficiently integrable) process  $\theta$  with respect to  $X$ , as follows:

$$
\int_ {0} ^ {t} \theta_ {s} \mathrm {d} X _ {s} := \int_ {0} ^ {t} \theta_ {s} \mu_ {s} \mathrm {d} s + \int_ {0} ^ {t} \theta_ {s} \sigma_ {s} \mathrm {d} W _ {s}
$$

Shorthand:

$$
\theta_ {t} \mathrm {d} X _ {t} = \theta_ {t} \mu_ {t} \mathrm {d} t + \theta_ {t} \sigma_ {t} \mathrm {d} W _ {t}
$$

For vectors  $\Theta_t = (\theta_t^1, \dots, \theta_t^J)$  and  $\mathbf{X}_t = (X_t^1, \dots, X_t^J)$ , define

$$
\int_ {0} ^ {t} \boldsymbol {\Theta} _ {s} \cdot \mathrm {d} \mathbf {X} _ {s} := \sum_ {j = 1} ^ {J} \int_ {0} ^ {t} \theta_ {s} ^ {j} \mathrm {d} X _ {s} ^ {j}
$$

Shorthand:

$$
\boldsymbol {\Theta} _ {t} \cdot \mathrm {d} \mathbf {X} _ {t} = \sum_ {j} \theta_ {t} ^ {j} \mathrm {d} X _ {t} ^ {j}
$$

# Example of application of stochastic integration

$\triangleright$  Model the source of risk using a Brownian motion  $W$ .  
$\triangleright$  Model a stock price process via, for example,

$$
\mathrm {d} X _ {t} = \mu X _ {t} \mathrm {d} t + \sigma X _ {t} \mathrm {d} W _ {t}
$$

for constants  $\mu, \sigma, X_0$ . Equivalently,

$$
X _ {t} = X _ {0} + \int_ {0} ^ {t} \mu X _ {s} d s + \int_ {0} ^ {t} \sigma X _ {s} d W _ {s}
$$

Then

$$
\int_ {0} ^ {t} \theta_ {s} \mathrm {d} X _ {s}
$$

can be viewed as the gain or loss due to trading  $X_{t}$  according to a self-financing strategy that holds  $\theta_{s}$  units at each time  $s \in [0, t]$ .

Brownian motion and stochastic integration

Itô's rule/lemma/formula

$$
d x _ {t} = u _ {t} d t + g d y _ {t}
$$

# Ito's rule/lemma/formula

Itô's rule expresses the change in  $f(X_{t})$  wrt  $t$  in terms of:  $f^{\prime}$  and  $f^{\prime \prime}$  and the change in  $X$  wrt  $t$ . Thus it is the chain rule of stochastic calculus.  
$\triangleright$  Ito's rule expresses  $f(X)$  in terms of integrals of  $f^{\prime}$  and  $f^{\prime \prime}$ . Thus it is the fundamental theorem of stochastic calculus.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/1ee5ee96b55cb079ba94fb60b0e42f0f544715e9c9ea6de6a49fed2be832f8e5.jpg)  
Kiyosi Ito (1915-2008)

$$
d f (x _ {t}) =
$$

$$
- \frac {d t}{+ d u}
$$

# Ito's rule/formula/lemma: Statement

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/9c275ce409d1ada51467edc75e96d8af026e0081f03c738d38e03f518128432b.jpg)

Given an Ito process  $X_{t}$  with dynamics  $\mathrm{d}X_{t} = \mu_{t}\mathrm{d}t + \sigma_{t}\mathrm{d}W_{t}$ , find dynamics of  $f(X_{t})$  or  $f(X_{t},t)$ , where  $f$  is a real-valued function.

Example:  $X_{t}$  is some underlying,  $f(X_{t}, t)$  is value of a derivative asset. Know dynamics of  $X_{t}$ . Want to learn dynamics of  $f(X_{t}, t)$ . To's rule: If  $f$  is sufficiently smooth, then  $f(X_{t})$  is an Itô process and

$$
\boxed {d f (X _ {t}) = \frac {\partial f}{\partial x} d X _ {t} + \frac {1}{2} \frac {\partial^ {2} f}{\partial x ^ {2}} (d X _ {t}) ^ {2}}
$$

where the partials of  $f$  are evaluated at  $X_{t}$ , and  $(\mathrm{d}X_{t})^{2}$  is given by the "multiplication" rules

$$
\left| \begin{array}{c} (\mathrm {d} t) ^ {2} = 0, \quad (\mathrm {d} W _ {t}) (\mathrm {d} t) = 0, \quad (\mathrm {d} W _ {t}) ^ {2} = \mathrm {d} t. \end{array} \right.
$$

which imply  $(\mathrm{d}X_{t})^{2} = (\mu_{t}\mathrm{d}t + \sigma_{t}\mathrm{d}W_{t})^{2} = \sigma_{t}^{2}(\mathrm{d}W_{t})^{2} = \sigma_{t}^{2}\mathrm{d}t$

# Itô's rule: Restatement

So Itô's rule

$$
\boxed {d f (X _ {t}) = \frac {\partial f}{\partial x} d X _ {t} + \frac {1}{2} \frac {\partial^ {2} f}{\partial x ^ {2}} (d X _ {t}) ^ {2}}
$$

can be more explicitly restated as

$$
\mathrm {d} f (X _ {t}) = \left(\mu_ {t} \frac {\partial f}{\partial x} (X _ {t}) + \frac {1}{2} \sigma_ {t} ^ {2} \frac {\partial^ {2} f}{\partial x ^ {2}} (X _ {t})\right) \mathrm {d} t + \sigma_ {t} \frac {\partial f}{\partial x} (X _ {t}) \mathrm {d} W _ {t}
$$

Or in integrated form,

$$
f (X _ {t}) = f (X _ {0}) + \int_ {0} ^ {t} \left(\mu_ {s} \frac {\partial f}{\partial x} (X _ {s}) + \frac {1}{2} \sigma_ {s} ^ {2} \frac {\partial^ {2} f}{\partial x ^ {2}} (X _ {s})\right) \mathrm {d} s + \int_ {0} ^ {t} \sigma_ {s} \frac {\partial f}{\partial x} (X _ {s}) \mathrm {d} W _ {s}
$$

# Ito's rule: Idea of proof

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/9db35f2099c29c197368dfe7d5f170ce7cd7a7eeee96127bf7cb1a676fff79fd.jpg)

It's just a second order Taylor expansion

$$
\mathrm {d} f (X _ {t}) = \frac {\partial f}{\partial x} \mathrm {d} X _ {t} + \frac {1}{2} \frac {\partial^ {2} f}{\partial x ^ {2}} (\mathrm {d} X _ {t}) ^ {2}
$$

If  $X$  were a differentiable function of  $t$  then  $\mathrm{d}X = X'(t)\mathrm{d}t$ , and  $(\mathrm{d}X)^2 = [X'(t)]^2(\mathrm{d}t)^2$ , negligible relative to  $\mathrm{d}t$ , so drop the  $(\mathrm{d}t)^2$ . (Thus we obtain the chain rule of ordinary calculus.)  
But if  $\mathrm{d}X_{t} = \mu_{t}\mathrm{d}t + \sigma_{t}\mathrm{d}W_{t}$  then  $(\mathrm{d}X_{t})^{2}$  has terms involving  $\mathrm{d}W_{t}$ , which acts like  $(\mathrm{d}t)^{1 / 2}$ .

$(\mathrm{dt})^2$ $\ll \mathrm{dt}$  so drop it

$\mathrm{(dt)(dW_t)} = \mathrm{(dt)^{3 / 2}}\ll \mathrm{dt}$  so drop it

$\left(\mathrm{d} W_{t}\right)^{2} = \mathrm{d} t$  cannot drop

# Why drop terms smaller than dt

Intuitively, does

$$
(\mathrm {d} t) ^ {p}
$$

vanish?

Answer: With  $\Delta t = T / N$

$$
\begin{array}{l} \int_ {0} ^ {T} (\mathrm {d} t) ^ {p} = \lim  _ {N \rightarrow \infty} \sum_ {n = 0} ^ {N - 1} (\Delta t) ^ {p} \\ = \lim  _ {N \rightarrow \infty} N (\Delta t) ^ {p} = T \lim  _ {N \rightarrow \infty} (\Delta t) ^ {p - 1} \\ \end{array}
$$

If  $p = 1$ , then this does not vanish. If  $p > 1$ , then this vanishes.

# Why is  $(\mathrm{d}W_{t})^{2} = \mathrm{d}t$

We know  $\mathbb{E}(\Delta W)^2 = \Delta t$ . Why can we delete  $\mathbb{E}$  from  $\mathbb{E}(\mathrm{d}W)^2 = \mathrm{d}t$ ? Intuitive idea:

$$
\int_ {0} ^ {T} (\mathrm {d} W _ {t}) ^ {2} = \lim  _ {N \rightarrow \infty} \sum_ {n = 0} ^ {N - 1} \left(\Delta W _ {t _ {n}}\right) ^ {2}
$$

Let's show that this limit is  $T$ ; then  $\int_0^T (\mathrm{d}W_t)^2 = \int_0^T \mathrm{d}t$ , as claimed.

$\triangleright$  Expectation of the  $\sum_{n = 0}^{N - 1}$  (which we'll write as  $\sum$ ) is

$$
\mathbb {E} \sum = \sum \mathbb {E} (\Delta W) ^ {2} = \sum \Delta t = T
$$

$\triangleright$  Variance of the  $\sum$  is

$$
\begin{array}{l} \operatorname {V a r} \sum = \sum \operatorname {V a r} (\Delta W) ^ {2} = \sum \left(\mathbb {E} (\Delta W) ^ {4} - [ \mathbb {E} (\Delta W) ^ {2} ] ^ {2}\right) \\ = \sum \left(3 (\Delta t) ^ {2} - (\Delta t) ^ {2}\right) \\ = 2 (\Delta t) ^ {2} N = 2 (\Delta t) T \rightarrow 0 \text {a s} N \rightarrow \infty . \\ \end{array}
$$

# Ito's rule for  $f:\mathbb{R}^2\rightarrow \mathbb{R}$

Let  $X_{t}$  and  $Y_{t}$  be Itô processes and  $f$  be sufficiently smooth.

Then  $f(X_{t},Y_{t})$  is an Itô process and

$$
\begin{array}{l} \mathrm {d} f (X _ {t}, Y _ {t}) = \frac {\partial f}{\partial x} \mathrm {d} X _ {t} + \frac {\partial f}{\partial y} \mathrm {d} Y _ {t} \\ + \frac {1}{2} \frac {\partial^ {2} f}{\partial x ^ {2}} (\mathrm {d} X _ {t}) ^ {2} + \frac {1}{2} \frac {\partial^ {2} f}{\partial y ^ {2}} (\mathrm {d} Y _ {t}) ^ {2} + \frac {\partial^ {2} f}{\partial x \partial y} (\mathrm {d} X _ {t}) (\mathrm {d} Y _ {t}) \\ \end{array}
$$

with the same "multiplication" rules as before. (For now,  $X$  and  $Y$  depend on the same  $W$ . Later, when we allow multiple Brownian motions, we will need one more multiplication rule.)

Important special case:  $Y_{t} = t$ . Then  $\mathrm{d}Y_{t} = 1\mathrm{d}t + 0\mathrm{d}W_{t} = \mathrm{d}t$ , so

$$
\mathrm {d} f (X _ {t}, t) = \frac {\partial f}{\partial t} \mathrm {d} t + \frac {\partial f}{\partial x} \mathrm {d} X _ {t} + \frac {1}{2} \frac {\partial^ {2} f}{\partial x ^ {2}} (\mathrm {d} X _ {t}) ^ {2}
$$

# Ito's rule: Example 1

$$
d z _ {t} = - d t + \dots d w _ {t}
$$

Let  $Z_{t} \coloneqq W_{t}^{2}$ . Use Itô to write  $Z$  as a sum of drift and diffusion terms.

Solution:  $Z_{t} = f(X_{t})$  where  $f(x) \coloneqq x^{2}$  (so  $f^{\prime}(x) = 2x$  and  $f^{\prime \prime}(x) = 2$ )

and  $X_{t}\coloneqq W_{t}$  (so  $\mathrm{d}X_{t} = 0\mathrm{d}t + 1\mathrm{d}W_{t} = \mathrm{d}W_{t}$ ). Hence

$$
\begin{array}{l} \mathrm {d} Z _ {t} = \mathrm {d} f (X _ {t}) = f ^ {\prime} (X _ {t}) \mathrm {d} X _ {t} + \frac {1}{2} f ^ {\prime \prime} (X _ {t}) (\mathrm {d} X _ {t}) ^ {2} = 2 W _ {t} \mathrm {d} W _ {t} + \frac {1}{2} 2 (\mathrm {d} W _ {t}) ^ {2} \\ = \mathrm {d} t + 2 W _ {t} \mathrm {d} W _ {t} \\ \end{array}
$$

Or could write in integrated form:

$$
Z _ {t} = Z _ {0} + \int_ {0} ^ {t} d s + \int_ {0} ^ {t} 2 W _ {s} d W _ {s}
$$

$$
W _ {t} ^ {2} = t + \int_ {0} ^ {t} 2 W _ {s} \mathrm {d} W _ {s}
$$

Compare: If  $w$  smooth, then  $[w(t)]^2 = \int_0^t 2w(s)w'(s)\mathrm{d}s$

# Ito's rule: Example 2

Let  $Z_{t} \coloneqq W_{t}^{3}$ . Use Itô to write  $Z$  as sum of drift and diffusion terms.

Solution:  $Z_{t} = f(X_{t})$  where  $f(x) \coloneqq x^{3}$  (so  $f'(x) = 3x^{2}$ ,  $f''(x) = 6x$ )

and  $X_{t}\coloneqq W_{t}$  (so  $\mathrm{d}X_{t} = 0\mathrm{d}t + 1\mathrm{d}W_{t} = \mathrm{d}W_{t}$ ). Hence

$$
\begin{array}{l} \mathrm {d} Z _ {t} = 3 W _ {t} ^ {2} \mathrm {d} W _ {t} + \frac {1}{2} 6 W _ {t} (\mathrm {d} W _ {t}) ^ {2} \\ = 3 W _ {t} \mathrm {d} t + 3 W _ {t} ^ {2} \mathrm {d} W _ {t} \\ \end{array}
$$

Or could write in integrated form:

$$
Z _ {t} = Z _ {0} + \int_ {0} ^ {t} 3 W _ {s} \mathrm {d} s + \int_ {0} ^ {t} 3 W _ {s} ^ {2} \mathrm {d} W _ {s}
$$

$$
W _ {t} ^ {3} = \int_ {0} ^ {t} 3 W _ {s} d s + \int_ {0} ^ {t} 3 W _ {s} ^ {2} d W _ {s}
$$

Sanity check:

$$
\mathrm {E} \mathrm {f o f e a c h s i d e i s 0 .}
$$

# Ito's rule: Example 3

Geometric Brownian motion  $S$  is defined by  $S_0 > 0$  and the dynamics

$$
\mathrm {d} S _ {t} = \mu S _ {t} \mathrm {d} t + \sigma S _ {t} \mathrm {d} W _ {t}
$$

where  $\mu$  and volatility  $\sigma$  are constant. (For now assume such  $S$  exists and is positive.) Black-Scholes assumed GBM for stock prices.

What are the dynamics of  $\log S_t$ ? Solution:

Apply Itô's rule with  $f(x) \coloneqq \log x$ ,  $f'(x) = 1 / x$ ,  $f''(x) = -1 / x^2$ :

$$
\begin{array}{l} \mathrm {d} \log S _ {t} = \mathrm {d} f (S _ {t}) = f ^ {\prime} (S _ {t}) \mathrm {d} S _ {t} + \frac {1}{2} f ^ {\prime \prime} (S _ {t}) (\mathrm {d} S _ {t}) ^ {2} = \frac {1}{S _ {t}} \mathrm {d} S _ {t} + \frac {1}{2} \frac {- 1}{S _ {t} ^ {2}} (\mathrm {d} S _ {t}) ^ {2} \\ = \frac {1}{S _ {t}} (\mu S _ {t} \mathrm {d} t + \sigma S _ {t} \mathrm {d} W _ {t}) - \frac {1}{2} \frac {1}{S _ {t} ^ {2}} \sigma^ {2} S _ {t} ^ {2} (\mathrm {d} W _ {t}) ^ {2} \\ = (\mu - \sigma^ {2} / 2) \mathrm {d} t + \sigma \mathrm {d} W _ {t} \\ \end{array}
$$

# Ito's rule: Example 3

$$
\text {E q u i v a l e n t l y ,} \log S _ {t} = \log S _ {0} + \int_ {0} ^ {t} (\mu - \sigma^ {2} / 2) \mathrm {d} u + \int_ {0} ^ {t} \sigma \mathrm {d} W _ {u}, \text {s o}
$$

$$
\log S _ {t} = \log S _ {0} + (\mu - \sigma^ {2} / 2) t + \sigma W _ {t}
$$

Distribution of  $S_{t}$  ? Solution:

$$
\log S _ {t} \sim N (\log S _ {0} + (\mu - \sigma^ {2} / 2) t, \sigma^ {2} t)
$$

so  $S_{t}$  has lognormal distribution. Its log (and  $\log(S_{t} / \bar{S}_{0})$ , the log return) are normal with variance  $\sigma^2 t$  and standard deviation  $\sigma \sqrt{t}$ .

Explicit expression for  $S_{t}$  in terms of  $W_{t}$ :

$$
S _ {t} = e ^ {\log S _ {t}} = S _ {0} e ^ {(\mu - \sigma^ {2} / 2) t + \sigma W _ {t}}
$$

# which helps us to understand volatility

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/159e42344358522c97da88908a5c63c7f6185e75d8f92175dbff1be8cf40342f.jpg)

What does volatility  $64\%$  mean:

It means standard deviation of  $\log (S_t / S_0) = 0.64$ , where  $t = 1$  y.  
If  $t = 3\mathrm{m}$ , then the standard deviation of  $\log (S_t / S_0) = 0.32$ .  
If  $t = 1\mathrm{\;d}$  ,then the standard deviation of  $\log \left( {{S}_{t}/{S}_{0}}\right)  = {0.04}$

Upper bound??

Can standard deviation be  $>100\%$  ?  
Can volatility be  $>100\%$  ? Yes

How to estimate volatility from daily price data?

Take sample standard deviation of daily log returns  $\log \frac{S_{t_n + 1}}{S_{t_n}}$ , and annualize, by multiplying by  $\sqrt{252}$  if using 252 trading days/year

# Ito's rule: Example 3

$\triangleright$  Compute  $\mathbb{E}S_t?$  Solution 1: If  $X\sim N(m,v)$  then  $\mathbb{E}e^{X} = e^{m + v / 2}$  so

$$
\boxed {\mathbb {E} S _ {t} = S _ {0} e ^ {\mu t}}
$$

Solution 2: Take expectations of both sides of

$$
\begin{array}{l} S _ {t} = S _ {0} + \int_ {0} ^ {t} \mu S _ {u} \mathrm {d} u + \int_ {0} ^ {t} \sigma S _ {u} \mathrm {d} W _ {u} \\ \Rightarrow \mathbb {E} S _ {t} = S _ {0} + \int_ {0} ^ {t} \mu \mathbb {E} S _ {u} \mathrm {d} u + 0 \\ m (t) = S _ {0} + \int_ {0} ^ {t} \mu m (u) \mathrm {d} u \\ \end{array}
$$

where  $m(t)\coloneqq \mathbb{E}S_{t}$ . Differentiate both sides wrt  $t$ , to get

$$
m ^ {\prime} (t) = \mu m (t) \qquad m (0) = S _ {0}
$$

Solution to this ODE:  $m(t) = S_0e^{\mu t}$

# Ito's rule: Example 4

Let  $X_{t}, Y_{t}$  be Itô processes. Find the dynamics of  $X_{t}Y_{t}$ .

Soln: Let  $f(x,y) = xy \Rightarrow \frac{\partial f}{\partial x} = y, \frac{\partial f}{\partial y} = x, \frac{\partial^2 f}{\partial x^2} = \frac{\partial^2 f}{\partial y^2} = 0, \frac{\partial^2 f}{\partial x \partial y} = 1.$

Then by Itô's rule,

$$
\begin{array}{l} \mathrm {d} (X _ {t} Y _ {t}) = \mathrm {d} f (X _ {t}, Y _ {t}) = \frac {\partial^ {f}}{\partial x} \mathrm {d} X _ {t} + \frac {\partial^ {f}}{\partial y} \mathrm {d} Y _ {t} + \frac {\partial^ {2} f}{\partial x \partial y} (\mathrm {d} X _ {t}) (\mathrm {d} Y _ {t}) + \frac {1}{2} \frac {\partial^ {2} f}{\partial x ^ {2}} (\mathrm {d} X _ {t}) ^ {2} \\ + \frac {1}{2} \frac {\partial^ {2}}{\partial t ^ {2}} (\mathrm {d} Y _ {t}) ^ {2} = \boxed {Y _ {t} \mathrm {d} X _ {t} + X _ {t} \mathrm {d} Y _ {t} + (\mathrm {d} X _ {t}) (\mathrm {d} Y _ {t})} \\ \end{array}
$$

Intuition:

$$
\mathrm {d} (X Y) = (X + \mathrm {d} X) (Y + \mathrm {d} Y) - X Y = X \mathrm {d} Y + Y \mathrm {d} X + (\mathrm {d} X) (\mathrm {d} Y)
$$

Ordinary calculus says drop third term if  $X, Y$  are differentiable in  $t$ .

Itô calculus says keep the third term if  $X, Y$  are Itô processes.

The distinction is that  $(\mathrm{dt})(\mathrm{dt}) \ll \mathrm{dt}$  but  $(\mathrm{dW})(\mathrm{dW}) = \mathrm{dt}$ .

# Physical or risk-neutral probabilities?

$\triangleright$  Question: Are the probabilities and expectations in L4 referring to physical measure or risk-neutral measure?  
Answer: Any probability measure. L4 is purely math.

If the assumptions are with respect to physical measure, then the conclusions will be with respect to physical measure.

If the assumptions are with respect to risk-neutral measure, then the conclusions will be with respect to risk-neutral measure.

$\triangleright$  Analogy:

If I say that  $\mathbf{2} + \mathbf{3} = \mathbf{5}$ , am I referring to 5 apples or 5 oranges?

# Financial Mathematics 33000

# Lecture 5

Roger Lee

2022 October 26

Arbitrage in continuous time

Black-Scholes model

B-S formula via replication

Delta, Gamma, Theta

# Arbitrage

Let prices be  $\mathcal{F}_t$ -adapted Itô processes  $(X_t^1, \ldots, X_t^N) =: \mathbf{X}_t$ .  
A portfolio/trading strategy is an  $\mathcal{F}_t$ -adapted vector process  $\Theta_t \coloneqq (\theta_t^1, \dots, \theta_t^N)$  of quantities held in each asset  $1, \dots, N$ .  
$\triangleright$  Say that the trading strategy is self-financing if its value  $V_{t} \coloneqq \Theta_{t} \cdot \mathbf{X}_{t}$  satisfies (with probability 1) for all  $t$

$$
\mathrm {d} V _ {t} = \boldsymbol {\Theta} _ {t} \cdot \mathrm {d} \mathbf {X} _ {t}, \quad \text {e q u i v a l e n t l y} V _ {t} = V _ {0} + \int_ {0} ^ {t} \boldsymbol {\Theta} _ {u} \cdot \mathrm {d} \mathbf {X} _ {u}
$$

$\triangleright$  Arbitrage is a [admissible] self-financing trading strategy  $\Theta_t$  with

$$
V _ {0} = 0 \quad \text {a n d b o t h :} \quad \mathsf {P} (V _ {T} \geq 0) = 1
$$

$$
\mathsf {P} (V _ {T} > 0) > 0
$$

or

$$
V _ {0} <   0 \quad \text {a n d} \quad P (V _ {T} \geq 0) = 1.
$$

# Replication and hedging

$\triangleright$  Definition: a trading strategy  $\Theta$  replicates a time- $T$  payoff  $Y_{T}$  if it is self-financing, and its value  $V_{T} = Y_{T}$  (with probability 1).  
$\triangleright$  Law of one price: At any time  $t < T$ , the no-arbitrage price of an asset paying  $Y_{T}$  must be the value of the replicating portfolio.  
To hedge a payoff usually means: to [try to] replicate the negative of the payoff (or the portion of the payoff attributable to some particular source of risk). For example, to hedge a position that is short one option usually means to [try to] replicate a position that is long the option. I say "try to" because "hedge" can mean an approximation to replication - such as superreplication, or broadly speaking, any strategy to reduce some notion of risk.

Arbitrage in continuous time

Black-Scholes model

B-S formula via replication

Delta, Gamma, Theta

# Motivation for GBM to model a stock price

BM is a natural starting point for model-building

$\triangleright$  BM is the  $\Delta t \to 0$  limit, in distribution, of a random walk (with zero-mean IID steps, scaled to have variance  $\Delta t$ ).

But some problems with  $W_{t}$  or  $\alpha t + \beta W_{t}$  as a model for a stock price:

$\triangleright$  BM can go negative, and so can scaled BM with drift.  
If  $\mathrm{d}S_{t} = \alpha \mathrm{d}t + \beta \mathrm{d}W_{t}$  then each  $S_{t + \Delta t} - S_t$  is independent of  $\mathcal{F}_t$ . A 10+ dollar move is equally likely, whether  $S_{t}$  is at 20 or 100.

For a GBM  $S$ , the drift and diffusion are proportional to  $S$ .

$S$  stays positive.  
Each log return  $\log \frac{S_{t + \Delta t}}{S_t}$  (or return  $\frac{S_{t + \Delta t}}{S_t} - 1$ ) is indep of  $\mathcal{F}_t$ . A  $10+$  percent move is equally likely, whether  $S_t$  is at 20 or 100.

# Black-Scholes model

In continuous time, consider two basic assets:

- Money-market or bank account: each unit has price  $B_{t} = e^{rt}$ . Equivalently, it has dynamics

$$
\mathrm {d} B _ {t} = r B _ {t} \mathrm {d} t \qquad B _ {0} = 1
$$

Non-dividend-paying stock: share price  $S$  has GBM dynamics

$$
\mathrm {d} S _ {t} = \mu S _ {t} \mathrm {d} t + \sigma S _ {t} \mathrm {d} W _ {t} \quad S _ {0} > 0
$$

where  $volatility\sigma >0$  and  $W$  is BM, under physical probabilities.

Think of volatility  $\sigma$  as  $\sqrt{\text{Variance of log-returns, per unit time}}$ . Find: time- $t$  price  $C_t$  of call which pays  $C_T = (S_T - K)^+$  at time  $T$ , where  $K > 0$ .

Arbitrage in continuous time

Black-Scholes model

B-S formula via replication

Delta, Gamma, Theta

# Replication

$\triangleright$  Lecture 6 will use the martingale/risk-neutral pricing approach: By Fundamental Thm, take risk-neutral  $\mathbb{E}$  of discounted payoff.  
$\triangleright$  Lecture 5 will price options using replication, two ways: First: an intuitive derivation, by replicating  $B$  using  $C$  and  $S$  Then: a careful proof, by replicating  $C$  using  $S$  and  $B$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/663675f2d0d1dc132d4ba5c204bf173a99f961f33b7f81de27b4cbea23afc42a.jpg)  
Fischer Black, Myron Scholes, Robert Merton

# Plan of intuitive derivation: Replicate  $B$  using  $C$  and  $S$

$\triangleright$  Construct risk-free  $(= \mathrm{zero~dW~term})$  portfolio of  $(C,S)$  
If self-financing, then the portfolio value's drift must be proportional, at rate  $r$ , or else there is arbitrage of portfolio vs  $B$ .  
On the other hand, if  $C_t = C(S_t, t)$  for some smooth function  $C$ , then Itô says that the portfolio value's drift can be expressed in terms of  $C$ 's partial derivatives.  
Therefore  $C(S,t)$  satisfies a PDE.  
$\triangleright$  Solve this PDE to obtain formula for  $C$ .

# Construct a risk-free portfolio

$\triangleright$  Use (1 option,  $-a_{t}$  share), choosing  $a_{t}$  to cancel the option risk. Portfolio value is

$$
V _ {t} = C _ {t} - a _ {t} S _ {t}.
$$

So some authors claim that

$$
\mathrm {d} V _ {t} = \mathrm {d} C _ {t} - a _ {t} \mathrm {d} S _ {t}.
$$

But the product rule says that

$$
\mathrm {d} \left(a _ {t} S _ {t}\right) = a _ {t} \mathrm {d} S _ {t} + S _ {t} \mathrm {d} a _ {t} + \left(\mathrm {d} a _ {t}\right) (\mathrm {d} S _ {t}),
$$

so it's not true that  $\mathrm{d}(a_t S_t) = a_t \mathrm{d}S_t$ . Ignoring this point...

# Construct a risk-free portfolio

Assume  $C_t = C(S_t, t)$  where  $C$  is some smooth function. By Ito,

$$
\mathrm {d} V _ {t} = \frac {\partial C}{\partial t} \mathrm {d} t + \frac {\partial C}{\partial S} \mathrm {d} S _ {t} + \frac {1}{2} \frac {\partial^ {2} C}{\partial S ^ {2}} (\mathrm {d} S _ {t}) ^ {2} - a _ {t} \mathrm {d} S _ {t}
$$

where  $C$  and its partials are evaluated at  $(S_t, t)$ .

Now make these cancel by choosing  $a_{t}\coloneqq \frac{\partial C}{\partial S} (S_{t},t)$  . Then

$$
\mathrm {d} V _ {t} = \frac {\partial C}{\partial t} \mathrm {d} t + \frac {1}{2} \frac {\partial^ {2} C}{\partial S ^ {2}} (\mathrm {d} S _ {t}) ^ {2} = \left(\frac {\partial C}{\partial t} + \frac {1}{2} \frac {\partial^ {2} C}{\partial S ^ {2}} \sigma^ {2} S _ {t} ^ {2}\right) \mathrm {d} t
$$

On the other hand,  $V_{t}$  is the value of a risk-free portfolio, so

$$
\mathrm {d} V _ {t} = r V _ {t} \mathrm {d} t = r \left(C _ {t} - S _ {t} \frac {\partial C}{\partial S}\right) \mathrm {d} t
$$

Comparing right-hand sides,

$$
\frac {\partial C}{\partial t} + r S _ {t} \frac {\partial C}{\partial S} + \frac {1}{2} \frac {\partial^ {2} C}{\partial S ^ {2}} \sigma^ {2} S _ {t} ^ {2} = r C
$$

# The Black-Scholes PDE and formula

So want  $C$  to solve a PDE for  $(S,t)\in [0,\infty)\times (0,T)$

$$
\frac {\partial C}{\partial t} + r S \frac {\partial C}{\partial S} + \frac {1}{2} \sigma^ {2} S ^ {2} \frac {\partial^ {2} C}{\partial S ^ {2}} = r C
$$

with terminal condition  $C(S, T) = (S - K)^{+}$  given by the payoff.

$\triangleright$  Solution: the Black-Scholes formula. For  $t <   T$

$$
C ^ {B S} (S, t) := e ^ {- r (T - t)} \left(F N \left(d _ {1}\right) - K N \left(d _ {2}\right)\right)
$$

where  $N$  is the standard normal CDF, and  $F\coloneqq Se^{r(T - t)}$  and

$$
\boxed {d _ {1, 2} := d _ {+, -} := \frac {\log (F / K)}{\sigma \sqrt {T - t}} \pm \frac {\sigma \sqrt {T - t}}{2}}
$$

and  $C^{BS}(S,T)\coloneqq (S - K)^{+} = \lim_{t\to T}C^{BS}(S,t)$

Can directly check:  $C^{BS}$  solves PDE. (How to find  $C^{BS}$ ? Later.)

# How not to do stochastic calculus

What about the claim that  $\mathrm{d}(C_t - a_t S_t) = \mathrm{d}C_t - a_t\mathrm{d}S_t?$

Bogus justifications:

The share holdings  $a_{t}$  are "instantaneously constant."

Nonsense. In fact  $a_{t}$  is changing (and, moreover, changing so fast that we needed to introduce Itô calculus).

$\triangleright$  Portfolio of (1 option,  $-a_{t}$  shares) is "self-financing"

It's not. In fact there's no way to vary this portfolio's share

holdings without outside funding. (The option position does not

provide any funding, because it is fixed at 1 unit).

The intuitive derivation is helpful (and can be improved), but is not a proof. Let's actually give a proof now.

# Black-Scholes formula: Careful proof

Plan: replicate 1 option using a portfolio of  $(S,B)$  
Let  $C^{BS}(S,t)$  be the B-S formula.

We are not assuming that  $C^{BS}(S_t, t)$  is the option price; that will be the conclusion.

Let's hold

$$
a _ {t} := \frac {\partial C ^ {B S}}{\partial S} (S _ {t}, t) \mathrm {s h a r e s}, b _ {t} := \frac {C ^ {B S} (S _ {t} , t) - a _ {t} S _ {t}}{B _ {t}} \mathrm {b a n k a c c t u n i t s}
$$

Portfolio value is then

$$
V _ {t} = a _ {t} S _ {t} + b _ {t} B _ {t} = a _ {t} S _ {t} + \left(C ^ {B S} \left(S _ {t}, t\right) - a _ {t} S _ {t}\right) = C ^ {B S} \left(S _ {t}, t\right)
$$

# Black-Scholes formula: Careful proof

In particular, the final portfolio value is  $C^{BS}(S_T,T) = (S_T - K)^+$  
And the portfolio self-finances, because

$$
\begin{array}{l} \mathrm {d} V _ {t} = \mathrm {d} C ^ {B S} \left(S _ {t}, t\right) = \left(\frac {\partial C ^ {B S}}{\partial t} + \frac {1}{2} \frac {\partial^ {2} C ^ {B S}}{\partial S ^ {2}} \sigma^ {2} S _ {t} ^ {2}\right) \mathrm {d} t + \frac {\partial C ^ {B S}}{\partial S} \mathrm {d} S _ {t} \\ = r \left(C ^ {B S} - S _ {t} \frac {\partial C ^ {B S}}{\partial S}\right) d t + \frac {\partial C ^ {B S}}{\partial S} d S _ {t} \\ = a _ {t} \mathrm {d} S _ {t} + r b _ {t} B _ {t} \mathrm {d} t = a _ {t} \mathrm {d} S _ {t} + b _ {t} \mathrm {d} B _ {t} \\ \end{array}
$$

because  $C^{BS}$  solves the PDE.

$$
\approx (a, b) \cdot d (s, B)
$$

So the portfolio replicates the option. Conclusion: at any time  $t < T$  ,the unique no-arb price of the option equals the portfolio value,which is  ${C}^{BS}\left( {{S}_{t},t}\right)$  .

# Call price vs  $S$

Let  $K = 100$ ,  $T - t = 1$ ,  $\sigma = 0.2$ ,  $r = 0.05$ .

Call price  $C^{BS}(S_t)$  and intrinsic value  $:= (S_t - K)^+$

plotted against  $S_{t}$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/9e310e23d70a05398878eb390958cae2bbc8871f81dd240d0a08460f5211a949.jpg)

# Call price vs  $S$

Let  $K = 100$ ,  $T - t = 1$ ,  $\sigma = 0.2$ ,  $r = 0.05$ .

Call price  ${C}^{BS}\left( {S}_{t}\right)$  and intrinsic value  $\mathrel{\text{:=}} {\left( {S}_{t} - K\right) }^{ + }$  and lower bound  ${\left( S, - {k}_{0} + g\left( t\right) \right) }^{ + }$  , plotted against  ${S}_{t}$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/f2eeeeed1df3086d4526944c1c2f327f6ea49e518d9460cb0f30eec0e0155b49.jpg)

# Replication and linearity

Recall: in one-period binomial model, we replicated by holding  $(c_{u} - c_{d}) / (s_{u} - s_{d})$  shares, matching the slope of the payoff function.

$$
\frac {C u}{C l} \rightarrow s l o p e = \frac {C u - C d}{S _ {u} - S _ {d}}
$$

In one-period three-state model, we could not replicate with a static portfolio of  $\{\mathrm{bond},\mathrm{stock}\}$ , unless the option payoff is linear in  $S$ .

$$
\rightarrow d i f f e r e n t s h o p e s!
$$

To achieve replication, we could introduce additional hedging assets, or we could go to a multi-period model.

# Replication and linearity in continuous time

With extra nodes, the option value becomes "locally" linear in  $S$ .

At time  $t$ , match the slope, wrt  $S_{t + \Delta t}$ , of the possible values of  $C_{t + \Delta t}$ .

Slope changes in time, but that's ok; just rebalance the portfolio.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/01f1855a7a813bfa4fb55d21aec1f6ba5f00b1fe3e43a6d2ac548bc65c8ab058.jpg)

Continuous time:

At time  $t$  match the slope, wrt  $S_{t + \mathrm{d}t}$ , of the possible values of  $C_{t + \mathrm{d}t}$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/291cb66a06a5933ca022339d76bd31e292bbbdfb0140d29c627aa745c43740c2.jpg)

Arbitrage in continuous time

Black-Scholes model

B-S formula via replication

Delta, Gamma, Theta

# Sensitivities or “Greeks”: Delta, Gamma, Theta

# Definition:

Suppose an asset or portfolio has time-  $t$  value  $C_t = C(S_t, t)$ .

Its delta, at time  $t$ , is  $\frac{\partial C}{\partial S}(S_t, t)$ .  
Its gamma, at time  $t$ , is  $\frac{\partial^2 C}{\partial S^2}(S_t, t)$ .  
Its theta, at time-  $t$  , is  $\frac{\partial C}{\partial t} (S_t,t)$  
These definitions do not assume that  $C$  is a call price, and do not assume the Black-Scholes model.

In the remaining L5 slides, to get specific formulas, we do assume Black Scholes (L5.7).

# Delta

For a call, in the B-S model, at time  $t$

$$
\text {D e l t a} := \frac {\partial C ^ {B S}}{\partial S} = N (d _ {1}) + S _ {t} N ^ {\prime} (d _ {1}) \frac {\partial d _ {1}}{\partial S} - K e ^ {- r (T - t)} N ^ {\prime} (d _ {2}) \frac {\partial d _ {2}}{\partial S} = \boxed {N (d _ {1})}
$$

recalling that  $N'(x) = \frac{1}{\sqrt{2\pi}} e^{-x^2 / 2}$ . Interpretations of delta:

slope of option price  $C^{BS}$ , plotted as a function of  $S$  
$\triangleright$  how much the option price moves, per unit move in  $S$  
number of shares of  $S$  needed to replicate one option

This allows us to view the B-S call price

$$
C ^ {B S} (S, t) = S N (d _ {1}) - K e ^ {- r (T - t)} N (d _ {2})
$$

as the value of the replicating portfolio, which consists of the value in the shares, and the value in the bank account.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/b46e38ce0446da5904fb25838e313ebdbfdcf0c760517b5f6d28c4a5d1343e78.jpg)

# Gamma

For a call, in the B-S model, at time  $t$

$$
\text {G a m m a} := \frac {\partial^ {2} C ^ {B S}}{\partial S ^ {2}} = \frac {\partial}{\partial S} N (d _ {1}) = N ^ {\prime} (d _ {1}) \frac {\partial d _ {1}}{\partial S} = \boxed {\frac {N ^ {\prime} (d _ {1})}{S _ {t} \sigma \sqrt {T - t}}}
$$

Interpretations:

convexity of  $C^{BS}$  wrt  $S$  
$\triangleright$  how much the Delta moves, per unit move in  $S$  
$\triangleright$  how much rebalancing of the replicating portfolio is needed, per unit move in  $S$

Delta and gamma are also defined for portfolios. For  $N$  assets having time- $t$  deltas  $\pmb{\Delta}_t \in \mathbb{R}^N$  and gammas  $\Gamma_t \in \mathbb{R}^N$ , the portfolio  $\mathbf{A}_t \in \mathbb{R}^N$  has time- $t$  delta  $\mathbf{A}_t \cdot \pmb{\Delta}_t$  and gamma  $\mathbf{A}_t \cdot \Gamma_t$ .

# Call price

Call price  $C^{BS}(S_t)$  and lower bound, plotted against  $S_t$ , for  $T - t = 1$ , and  $T - t = 0.25$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/4194e52766b788450c61233f801eb7ebeff2870ae9ef77782c3d4f3f85cb84a8.jpg)

# Call delta

Call delta  $= N(d_{1})$ , plotted against  $S_{t}$ , for  $T - t = 1$ ,  $T - t = 0.25$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/cc126d9e59fef67346e97576aee2f12f2c2e5c6b3fd0d0d73584e65a8da80b1f.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/32641f918f1cd36e8c40d2fa5b6bc1d13ba04d21935f24c23f2ce88b1ec44f86.jpg)

Delta of a call is strictly between 0 and 1.

# Call gamma

Call gamma plotted against  $S_{t}$ , for  $T - t = 1$ , and  $T - t = 0.25$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/aeecdde0194acb5ca2570de216f6fc96d66ddaf849011f3f5bbac50c1fe1044e.jpg)

Gamma of a call is positive.

# Discrete rebalancing

At time  $t$ , go long 1 call, short  $\partial C / \partial S$  shares. Allocate the proceeds into the bank. Don't immediately rebalance. Let  $r = 0$  and  $S_{t} = 100$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/25520de66fd6f539a7b4cc8b6f3c47a37cb526c7b4cce60e08bd388eb00a0259.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/da706c05229b76ddb1480fa1928751ff6636694af5b3514f0fb63628668a1645.jpg)

Black curve (call value) minus blue line (shares + bank) = profit due to move in  $S$ . Always net positive profit?

# Discrete rebalancing

wait until

[t + {3t}]

At time  $t$ , go long 1 call, short  $\partial C / \partial S$  shares. Allocate the proceeds into the bank. Don't immediately rebalance. Let  $r = 0$  and  $S_{t} = 100$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/68120d50f8a90c7594b4d02e1ec6db5c8b57f7ae363789701e1040fa7362fc56.jpg)

${S}_{t + {\Delta t}}$

Black curve (call value) minus blue line (shares + bank) = profit due to move in  $S$ . Always net positive profit? No, because of timed

# Call theta

For a call, in the B-S model, at time  $t$

$$
\mathrm {T h e t a} = \frac {\partial C ^ {B S}}{\partial t} = \frac {- S _ {t} N ^ {\prime} (d _ {1}) \sigma}{2 \sqrt {T - t}} - r K e ^ {- r (T - t)} N (d _ {2})
$$

Call's theta, plotted against  $S_{t}$ , for  $T - t = 1$  and  $T - t = 0.25$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/34e13f50b97fc9755999ae0aa15249fc44afba3a3991366ff60f75a223221f66.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/c4922617d4ad399a9caacbf82a0a24488d95d85d7371ce32740feae5f7f36839.jpg)

# Greeks related to each other

BS PDE links theta, gamma, delta, and option price

$$
\boxed {\Theta + r S \Delta + \frac {1}{2} \Gamma \sigma^ {2} S ^ {2} = r C}
$$

("Option" can have general time- $T$  payoff, not necessarily call/put.) In particular, if  $r = 0$  then

$$
\Theta = - \frac {1}{2} \Gamma \sigma^ {2} S ^ {2}
$$

# Discrete rebalancing and gamma

A discretely delta-hedged position that is long gamma

(meaning gamma  $>0$ . For example: long call, short shares):

has net profit if  $|\Delta S|$  is large enough to overcome time decay  
has net loss if  $|\Delta S|$  is too small, relative to time decay

A discretely delta-hedged position that is short gamma

(meaning gamma  $< 0$ . For example: short call, long shares):

has net loss if  $|\Delta S|$  is too large, relative to time decay  
has net profit if  $|\Delta S|$  is small enough, relative to time decay

So such positions are sensitive to "realized volatility".

# Dynamics of hedge

$$
\begin{array}{r l} {\mathrm {G a m m a o f s t o d k i s}} & {\frac {\partial^ {2}}{\partial S ^ {2}} S = 0} \\ {\mathrm {D e l t a o f s t o d k i s}} & {\frac {\partial S}{\partial S} = 1} \end{array}
$$

You have an option position, and want to trade shares to maintain delta-neutrality (delta=0).

$$
g a m m a > 0 g a m m a <   0
$$

For which kind of options position - long gamma or short gamma - do you buy  $S$  on dips, and sell  $S$  on rallies?

$$
\mathrm {L o n g g o m m a :} \Gamma > 0
$$

When  $S$  与  $\Delta$  个定义域不同,则存在某一区间值  $S$  ,使  $S$  为凹

When  ${S\Delta }\bot$  the  ${\Delta V}$  . To maintain  $S$  -neutrality,  ${buy}\;{stock}$

# Implied Volatility

Given a time- $t$  price  $C$  for a given call option  $(K, T)$  on an underlying  $S_{t}$  assuming interest rate  $r$ , the implied volatility is the  $\sigma$  such that

$$
C = C ^ {B S} (S _ {t}, t, K, T, r, \sigma)
$$

where  $C^{BS}$  is the Black-Scholes formula.

This exists and is unique (if  $C$  is within arbitrage bounds).  
The bigger the dollar price  $C$ , the bigger the implied vol  $\sigma_{I}$  
Gives us another way quoting an option price. Instead of saying the option is trading at $x.xx, can say it's trading at yy% vol.  
We will say much more about implied volatility next quarter

# Realized Volatility

Realized variance of  $S$ , sampled at interval  $\Delta t$ , from time 0 to time  $T$  can be defined, using log-returns by letting  $t_n = n\Delta t$  and  $T = t_N$  and

$$
R V a r = \frac {1}{T} \sum_ {n = 0} ^ {N - 1} \left(\log \frac {S _ {t _ {n + 1}}}{S _ {t _ {n}}}\right) ^ {2}
$$

Alternatively could use simple returns, letting  $\Delta S = S_{t_{n + 1}} - S_{t_n}$  and

$$
R V a r = \frac {1}{T} \sum_ {n = 0} ^ {N - 1} \left(\frac {\Delta S}{S _ {t _ {n}}}\right) ^ {2}
$$

Realizedvolatilityof  $S$  is

$$
R V o l = \sqrt {R V a r}
$$

If  $S$  follows GBM with instantaneous volatility  $\sigma$ , then  $RVol \to \sigma$  as  $\Delta t \to 0$ .

# PnL from Gamma Scalping

Let  $r = 0$ . You buy a call, paying  $C^{BS}(\sigma_I)$ , where  $\sigma_I$  is implied vol. Delta-hedge it at intervals  $\Delta t$ . In what cases would you profit/lose?

By Taylor,  $C\left( {S + {\Delta S}}\right)  \approx  C\left( S\right)  + {\left( \Delta S\right) }{C}^{\prime }\left( S\right)  + \frac{1}{2}{\left( \Delta S\right) }^{2}{C}^{\prime \prime }\left( S\right) , + \left( x\right) \frac{d}{dt}$

So your profit from  $t$  to  $t + \Delta t$  is approximately

$$
\begin{array}{l} \frac {1}{2} \Gamma \times (\Delta S) ^ {2} + \Theta \times \Delta t = \frac {1}{2} \Gamma S ^ {2} \left(\frac {\Delta S}{S}\right) ^ {2} - \frac {1}{2} \Gamma \sigma_ {I} ^ {2} S ^ {2} \Delta t \\ = \frac {1}{2} \Gamma S ^ {2} \left(\left(\frac {\Delta S}{S}\right) ^ {2} - \sigma_ {I} ^ {2} \Delta t\right) \\ \end{array}
$$

Total profit from time 0 to  $T$  is

$$
\sum_ {n = 0} ^ {N - 1} \frac {1}{2} \Gamma_ {t _ {n}} S _ {t _ {n}} ^ {2} \left(\left(\frac {\Delta S}{S _ {t _ {n}}}\right) ^ {2} - \sigma_ {I} ^ {2} \Delta t\right)
$$

Ignoring the  $\Gamma S^2$ , this would imply that you profit if  $RVol > \sigma_I$ .

# Conclusion

Working under Black-Scholes dynamics,

- Today we priced options using replication, and we examined the behavior of the replicating portfolio.  
$\triangleright$  Next time we will price options using martingale methods: Apply Fundamental Thm, and take expectation of discounted payoff.

# Financial Mathematics 33000

# Lecture 6

Roger Lee

2022 November 9

Fundamental theorem in continuous time

Black-Scholes

# Fundamental theorem for continuous time Itô processes

$\exists$  equivalent martingale measure  $\mathbb{P} \Rightarrow \mathrm{No}$  arb

# Proof:

Given: under  $\mathbb{P}$ , each member of the discounted asset prices

$$
\frac {1}{B _ {t}} \mathbf {X} _ {t} := \left(\frac {X _ {t} ^ {1}}{B _ {t}}, \frac {X _ {t} ^ {2}}{B _ {t}}, \dots , \frac {X _ {t} ^ {N}}{B _ {t}}\right)
$$

is a martingale Itô process. Need to prove: No arbitrage

For any self-financing trading strategy  $\Theta_t$  with value  $V_t$ , we'll show that  $V / B$  is a martingale, where  $V_t \coloneqq \Theta_t \cdot \mathbf{X}_t$ .

After we show this, we're done, by the familiar argument:

If  $V_{0} = 0$ , then  $V_{0} / B_{0} = 0$ , hence  $\mathbb{E}(V_T / B_T) = 0$ .

If also  $V_{T} \geq 0$ , then  $V_{T} / B_{T} \geq 0$ , so  $V_{T} / B_{T} = 0$ , hence  $V_{T} = 0$

Conclusion:  $\Theta$  is not an arbitrage.

# Fundamental theorem

To see that  $V / B$  is a martingale, let  $A_{t} \coloneqq 1 / B_{t}$ . Then

$$
\begin{array}{l} \mathrm {d} \left(V _ {t} / B _ {t}\right) = \mathrm {d} \left(A _ {t} V _ {t}\right) = V _ {t} \mathrm {d} A _ {t} + A _ {t} \mathrm {d} V _ {t} + \mathrm {d} A _ {t} \mathrm {d} V _ {t} \\ = \boldsymbol {\Theta} _ {t} \cdot \mathbf {X} _ {t} \mathrm {d} A _ {t} + A _ {t} (\boldsymbol {\Theta} \cdot \mathrm {d} \mathbf {X} _ {t}) + (\mathrm {d} A _ {t}) (\boldsymbol {\Theta} _ {t} \cdot \mathrm {d} \mathbf {X} _ {t}) \\ = \boldsymbol {\Theta} _ {t} \cdot \left(\mathbf {X} _ {t} \mathrm {d} A _ {t} + A _ {t} \mathrm {d} \mathbf {X} _ {t} + \mathrm {d} A _ {t} \mathrm {d} \mathbf {X} _ {t}\right) \\ = \boldsymbol {\Theta} _ {t} \cdot \mathrm {d} (A _ {t} \mathbf {X} _ {t}) = \sum_ {n = 1} ^ {N} \theta_ {t} ^ {n} \mathrm {d} (A _ {t} X _ {t} ^ {n}) \\ \end{array}
$$

Since each  $A_{t}X_{t}^{n}$  is a martingale,  $V / B$  is a martingale also.

$\triangleright$  Idea: A martingale is the cumulative PnL from betting on zero- $\mathbb{E}$  games. Varying your bet size across games and across time still produces, collectively, a zero expectation game. Can't risklessly make something from nothing by playing zero expectation games.

# Fundamental theorem

$$
p (A) =
$$

$$
P R I C E o f
$$

$$
\mathrm {c o n t r a d} + \mathrm {d}
$$

No  $\operatorname{arb} \Rightarrow \exists$  equivalent martingale measure  $\mathbb{P}$ :

$$
p a y s: \left\{ \begin{array}{l l} \$ 1 & F A \\ \$ 0 & i F, \end{array} \right.
$$

Intuition of proof: Same as in L2, L3.

$\triangleright$  Define  $\mathbb{P}$  by defining the  $\mathbb{P}_t$ -probability of an event to be the time- $t$  price, in units of  $B$ , of an ("Arrow-Debreu") asset that pays 1 unit of  $B$  at time  $T$  if the event occurs, else 0. (But what if the A-D asset does not exist and can't be replicated?)  
- Martingale property holds because any asset  $X$  can be replicated by portfolio of  $X_{T}(\omega_{j}) / B_{T}(\omega_{j})$  units of the A-D asset for each  $\omega_{j}$ . Value portfolio by summing quantity  $\times$  price.

$$
\frac {X _ {0}}{B _ {0}} = \sum_ {j = 1} ^ {J} \frac {X _ {T} (\omega_ {j})}{B _ {T} (\omega_ {j})} \cdot \mathbb {P} (\omega_ {j}) = \mathbb {E} \bigg (\frac {X _ {T}}{B _ {T}} \bigg)
$$

# Fundamental theorem: Comments

$\triangleright$  Idea: The  $\mathbb{P}$  probability of an event is simply the price (in units of  $B$ ) of a asset that pays 1 unit of  $B$  iff that event occurs.  
$\triangleright$  Note: In this entire proof, we never assumed that  $B$  is the bank account, and never assumed that it is riskless. It is enough to assume that  $B$  is some asset with positive price process.

In some applications, it may be easier to normalize using some such asset (some numeraire) that is not the bank account.

By default, if we say risk-neutral or martingale measure without specifying the numeraire, it is understood to be the bank account.

# Option pricing

In L5, we did this by replication.

In L6, let's do it by martingale methods: Option price equals the expected discounted payoff, under a martingale measure  $\mathbb{P}$ . Why?

By the Fundamental theorem.

How do we calculate  $\mathbb{P}$ -expectations (denoted by  $\mathbb{E}$ )?

In many cases, a model is already specified under risk-neutral measure. Then simply work directly under the given measure.

But what if the model is specified under physical measure?

We know how  $S$  behaves with respect to physical measure  $\mathsf{P}$ . How does  $S$  behave wrt  $\mathbb{P}$ ? All risk driven by  $W$ . So let's see what changing measure does to  $W$ , then find what it does to  $S$ .

# Girsanov's theorem

Theorem: If  $W$  is a Brownian motion under  $\mathsf{P}$

and if  $\mathbb{P}$  is a probability measure on  $\mathcal{F}_T^W$  that is equivalent to  $\mathsf{P}$ , then there exists an adapted process  $\lambda$  such that for all  $t\in [0,T]$

$$
\tilde {W} _ {t} := W _ {t} + \int_ {0} ^ {t} \lambda_ {s} \mathrm {d} s
$$

is Brownian motion under  $\mathbb{P}$ . Therefore:

$\triangleright \mathrm{d}\tilde{W}_t = \mathrm{d}W_t + \lambda_t\mathrm{d}t$  , and  $\tilde{W}$  is BM under  $\mathbb{P}$  but not under  $\mathsf{P}$  
$\triangleright \mathrm{d}W_{t} = \mathrm{d}\tilde{W}_{t} - \lambda_{t}\mathrm{d}t$  , and  $W$  is BM under  $\mathsf{P}$  but not under  $\mathbb{P}$

# Girsanov: an analogy

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/d01f168d8861145436c6a518c632ba424c885b118f2ee22a8b848e981e2ffc78.jpg)

No proof, but here is an analogy on a sample space  $\Omega = \{\omega_1,\dots ,\omega_6\}$  Let  $X(\omega_{1}) = X(\omega_{2}) = X(\omega_{3}) = 10$ $X(\omega_4) = X(\omega_5) = X(\omega_6) = 25$

Let  $\mathsf{P}(\omega) = 1 / 6$  for each  $\omega$ . Then  $X \sim \mathrm{Uniform}\{10,25\}$  under  $\mathsf{P}$ .  
But if  $\mathbb{P}$  assigns probability

1/12 to each of  $\omega_{1},\omega_{2},\omega_{3}$

and  $1 / 4$  to each of  $\omega_4,\omega_5,\omega_6$

then  $X$  is not Uniform{10,25} under  $\mathbb{P}$

However,  $\tilde{X} := X + \lambda$  is Uniform{10,25} under  $\mathbb{P}$

where  $\lambda (\omega_4)\coloneqq 15$  and  $\lambda (\omega)\coloneqq 0$  for  $\omega \neq \omega_{4}$

$X$  under  $\mathbb{P}$  does not have the same distribution as  $X$  under  $\mathsf{P}$ .

But  $X$  plus drift under  $\mathbb{P}$  has the same distribution as  $X$  under  $\mathsf{P}$ .

# Girsanov: some intuition

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/e0a477379fc1a8f432a934e3b747b6db51b04a34bd97f8b15155d0dffaec053c.jpg)

No proof, but here is some intuition:

$W$  is BM under  $\mathsf{P}$ . After changing measure to  $\mathbb{P}$ , the  $W$  may not still be BM, but it is plausible that it is a martingale plus drift:

$$
\mathrm {d} W _ {t} = \lambda_ {t} \mathrm {d} t + \sigma_ {t} \mathrm {d} B _ {t}
$$

where  $B$  is a BM under  $\mathbb{P}$ , and  $\sigma_t$  is some adapted process. So

$$
\left(\mathrm {d} W _ {t}\right) ^ {2} = \left(\lambda_ {t} \mathrm {d} t + \sigma_ {t} \mathrm {d} B _ {t}\right) ^ {2}
$$

hence  $\mathrm{dt} = \sigma_t^2\mathrm{dt}$ , so  $\sigma_{t} = \pm 1$ . Define  $\tilde{W}$  by  $\mathrm{d}\tilde{W}_t = \sigma_t\mathrm{d}B_t$

Then  $W$  can be shown to be  $\mathbb{P}$ -BM. And, as claimed,

$$
\mathrm {d} W _ {t} = \lambda_ {t} \mathrm {d} t + \mathrm {d} \tilde {W} _ {t}.
$$

Fundamental theorem in continuous time

Black-Scholes

# Black-Scholes via martingale approach

Black-Scholes dynamics

$$
\mathrm {d} B _ {t} = r B _ {t} \mathrm {d} t \quad B _ {0} = 1
$$

$$
\mathrm {d} S _ {t} = \mu S _ {t} \mathrm {d} t + \sigma S _ {t} \mathrm {d} W _ {t} \quad S _ {0} > 0
$$

where  $W$  is BM under physical measure  $\mathsf{P}$ , and  $\sigma > 0$ .

No arb implies that  $\exists \mathbb{P}$ , equivalent to  $\mathsf{P}$ , such that  $S / B$  is a  $\mathbb{P}$ -MG.

Hence by Girsanov,  $\exists \lambda$  such that  $\tilde{W}_t\coloneqq W_t + \int_0^t\lambda_s\mathrm{d}s$  is  $\mathbb{P}$ -BM.

Substitute  $\mathrm{d}\tilde{W}_t = \mathrm{d}W_t + \lambda_t\mathrm{d}t$  into the SDE of  $S$ :

$$
\begin{array}{l} \mathrm {d} S _ {t} = \mu S _ {t} \mathrm {d} t + \sigma S _ {t} (\mathrm {d} \tilde {W} _ {t} - \lambda_ {t} \mathrm {d} t) \\ = (\mu - \lambda_ {t} \sigma) S _ {t} d t + \sigma S _ {t} d \tilde {W} _ {t} \\ \end{array}
$$

But can we say anything about  $\mu -\lambda_t\sigma$

# Under  $\mathbb{P}$ , every tradeable asset  $X$  has drift  $rX$

This page does not assume that  $X$  is a GBM.

Assume only that  $X$  is an Itô process.

Under  $\mathbb{P}$ , the discounted price  $X / B$  is a MG, hence has zero drift.  
By Itô's rule,  $X / B$  has dynamics

$$
\begin{array}{l} \mathrm {d} \left(X _ {t} / B _ {t}\right) = \mathrm {d} \left(e ^ {- r t} X _ {t}\right) = e ^ {- r t} \mathrm {d} X _ {t} - r e ^ {- r t} X _ {t} \mathrm {d} t + \mathrm {d} \left(e ^ {- r t}\right) \mathrm {d} X _ {t} \\ = e ^ {- r t} \left(\mathrm {d} X _ {t} - r X _ {t} \mathrm {d} t\right), \\ \end{array}
$$

so  $\mathrm{d}X_{t} - rX_{t}\mathrm{d}t$  has no drift term.

$\triangleright$  Therefore the drift term of  $\mathrm{d}X_{t}$  must be  $rX_{t}\mathrm{d}t$

# Under  $\mathbb{P}$ , the GBM  $S$  is still GBM, but with drift  $r$

Applying this to  $S$ , we have  $(\mu - \lambda_t \sigma) S_t = r S_t$ , and

$$
\mathrm {d} S _ {t} = r S _ {t} \mathrm {d} t + \sigma S _ {t} \mathrm {d} \tilde {W} _ {t}
$$

where  $\tilde{W}$  is  $\mathbb{P}$ -BM.

Rate of growth changes from  $\mu$  to  $r$ . Volatility stays the same.

By L4, therefore, under  $\mathbb{P}$ , conditional on  $\mathcal{F}_t^W$

$$
\left| \log S _ {T} \sim \text {N o r m a l} \left(\log S _ {t} + (r - \sigma^ {2} / 2) (T - t), \sigma^ {2} (T - t)\right) \right.
$$

Compare: under  $\mathsf{P}$ , conditional on  $\mathcal{F}_t^W$ ,

$$
\log S _ {T} \sim \operatorname {N o r m a l} (\log S _ {t} + (\mu - \sigma^ {2} / 2) (T - t), \sigma^ {2} (T - t))
$$

# Lognormal distribution

Here's a more general calculation, allowing different rates for growth and discounting, on an underlying  $X$ , not necessarily a stock price.

Let  $t < T$ . Let  $R_{grow}$  and  $r$  be constants.  
$\triangleright$  Assume that (conditional on the time-  $t$  information  $\mathcal{F}_t$ ) the random variable  $X_{T}$  has lognormal  $\mathbb{P}$ -distribution

$$
\log X _ {T} \sim \operatorname {N o r m a l} (\log X _ {t} + (R _ {g r o w} - \sigma^ {2} / 2) (T - t), \sigma^ {2} (T - t))
$$

where  $X_{t} > 0$ , and  $\sigma > 0$  is a constant.

One way that this distribution could arise is from the dynamics

$$
\mathrm {d} X _ {t} = R _ {g r o w} X _ {t} \mathrm {d} t + \sigma X _ {t} \mathrm {d} W _ {t} \qquad X _ {0} > 0
$$

where  $W$  is  $\mathbb{P}$  -BM.

# Conclusion: the Black-Scholes call price formula

Then, letting  $\mathbb{E}$  denote expectation wrt  $\mathbb{P}$ ,

$$
\boxed {e ^ {- r (T - t)} \mathbb {E} _ {t} (X _ {T} - K) ^ {+} = C ^ {B S} (X _ {t}, t, K, T, R _ {g r o w}, r, \sigma)}
$$

where the function  $C^{BS}$  is defined for  $X > 0, K > 0, \sigma > 0, t < T$  by

$$
C ^ {B S} (X, t, K, T, R _ {g r o w}, r, \sigma) := e ^ {- r (T - t)} \big [ F N (d _ {1}) - K N (d _ {2}) \big ],
$$

and

$$
F := X e ^ {R _ {g r o w} (T - t)} = \mathbb {E} _ {t} X _ {T}
$$

and

$$
d _ {1, 2} := d _ {+, -} := \frac {\log (F / K)}{\sigma \sqrt {T - t}} \pm \frac {\sigma \sqrt {T - t}}{2}.
$$

# Proof of formula: decompose  $(X_T - K)^+$

$$
\| _ {A} = \left\{ \begin{array}{l l} 1 & \mathrm {i f} A \\ 0 & \mathrm {i f n o t} A \end{array} \right.
$$

Proof: Using the fact that  $x^{+} = x\mathbf{1}_{x > 0}$  for all  $x$

$$
\begin{array}{l} \mathbb {E} _ {t} (X _ {T} - K) ^ {+} = \mathbb {E} _ {t} (X _ {T} - K) \mathbf {1} _ {X _ {T} > K} \\ = \mathbb {E} _ {t} \left(X _ {T} \mathbf {1} _ {X _ {T} > K}\right) - K \mathbb {E} _ {t} \mathbf {1} _ {X _ {T} > K} \\ = F _ {t} \underbrace {\mathbb {E} _ {t} ((X _ {T} / F _ {t}) \mathbf {1} _ {X _ {T} > K})} _ {\text {w i l l s e t t h s i s N (d _ {1})}} - K \underbrace {\mathbb {P} _ {t} (X _ {T} > K)} _ {\text {w i l l s e t t h s i s N (d _ {2})}}, \\ \end{array}
$$

where

$$
F _ {t} := X _ {t} e ^ {R _ {g r o w} (T - t)} = \mathbb {E} _ {t} X _ {T}.
$$

To proceed, first note that the event  $X_{T} > K$  is equivalent to

$\log (X_T / F_t) > \log (K / F_t)$ , and that (conditional on time- $t$  information)

$$
\log (X _ {T} / F _ {t}) \sim \mathrm {N o r m a l} (- (\sigma^ {2} / 2) (T - t), \sigma^ {2} (T - t)).
$$

# Proof of formula: Second term of decomposition

Now consider separately each term in the decomposition.

For the second term,

$$
\begin{array}{l} \mathbb {P} _ {t} (X _ {T} > K) = \mathbb {P} _ {t} \left(\log (X _ {T} / F _ {t}) > \log (K / F _ {t})\right) \\ = \mathbb {P} _ {t} \left(\frac {\log \left(X _ {T} / F _ {t}\right) + \left(\sigma^ {2} / 2\right) (T - t)}{\sigma \sqrt {T - t}} \right. \\ \left. > \frac {\log (K / F _ {t}) + (\sigma^ {2} / 2) (T - t)}{\sigma \sqrt {T - t}}\right) \\ = N \left(- \frac {\log (K / F _ {t}) + (\sigma^ {2} / 2) (T - t)}{\sigma \sqrt {T - t}}\right) \\ = N (d _ {2}) \Big | _ {X = X _ {t}} \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/e114f9a9388c8c837dd33d0f57175e2fa6b9ca2f9935e4788a289332db589285.jpg)

# Proof of formula: First term of decomposition

In the first term, we have  $\mathbb{E}_t((X_T / F_t)\mathbf{1}_{X_T > K})$

$$
\begin{array}{l} = \mathbb {E} _ {t} \big [ e ^ {\log (X _ {T} / F _ {t})} \mathbf {1} _ {\log (X _ {T} / F _ {t}) > \log (K / F _ {t})} \big ] \\ = \int_ {\log (K / F _ {t})} ^ {\infty} e ^ {y} \frac {1}{\sqrt {2 \pi \sigma^ {2} (T - t)}} \exp \left(- \frac {(y + (\sigma^ {2} / 2) (T - t)) ^ {2}}{2 \sigma^ {2} (T - t)}\right) \mathrm {d} y \\ = \int_ {\log (K / F _ {t})} ^ {\infty} \frac {1}{\sqrt {2 \pi \sigma^ {2} (T - t)}} \exp \left(- \frac {(y - (\sigma^ {2} / 2) (T - t)) ^ {2}}{2 \sigma^ {2} (T - t)}\right) d y \\ = \int_{\substack{\log (K / F_{t}) - (\sigma^{2} / 2)(T - t)\\ \sigma \sqrt{T - t}}}\frac{1}{\sqrt{2\pi}}\exp \left(-\frac{z^{2}}{2}\right)\mathrm{d}z \\ = N \Bigg (- \frac {\log (K / F _ {t}) - (\sigma^ {2} / 2) (T - t)}{\sigma \sqrt {T - t}} \Bigg) = N (d _ {1}) \Big | _ {X = X _ {t}}, \\ \end{array}
$$

as claimed. The substitution was  $z = \frac{y - (\sigma^2 / 2)(T - t)}{\sigma\sqrt{T - t}}$  so  $\mathrm{d}z = \frac{1}{\sigma\sqrt{T - t}}\mathrm{d}y$

# Probabilistic interpretation of  $N(d_{1})$  and  $N(d_{2})$

In summary,

$$
\begin{array}{l} C _ {t} = e ^ {- r (T - t)} \bigg (F _ {t} \mathbb {E} _ {t} \bigg [ \frac {X _ {T}}{F _ {t}} {\bf 1} _ {S _ {T} > K} \bigg ] - K \mathbb {P} _ {t} (S _ {T} > K) \bigg) \\ = e ^ {- r (T - t)} \Bigl (F _ {t} N (d _ {1}) - K N (d _ {2}) \Bigr) \\ \end{array}
$$

The  $N(d_2)$  is the  $\mathbb{P}_t$  that the call option expires in the money.

(So  $e^{-r(T - t)}N(d_2) = \mathrm{time - }t$  price of  $K$ -strike  $T$ -expiry binary call.)

The  $N(d_{1})$  is the "share measure"  $\mathbb{P}_t^S$  that the call expires ITM.

And time- $t$  price of asset-or-nothing call paying  $X_{T}\mathbf{1}_{X_{T} > K}$  is

$e^{-r(T - t)}F_tN(d_1)$ . If  $X = S$  is a no-dividend stock, this is  $S_{t}N(d_{1})$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/2dfe8183edd27fb12eee534a60209100149baeb963e4e620d601b17ed4d43feb.jpg)

# Probabilistic analysis of effect of  $r$

Increasing  $r$ , while keeping everything else fixed, has what effect on time-0 call prices?

Martingale methods make the answer clear:

$$
\begin{array}{l} C _ {0} = e ^ {- r T} \mathbb {E} C _ {T} \\ = e ^ {- r T} \mathbb {E} (S _ {T} - K) ^ {+} \\ = e ^ {- r T} \mathbb {E} (S _ {0} e ^ {(r - \sigma^ {2} / 2) T + \sigma \tilde {W} _ {T}} - K) ^ {+} \\ = \mathbb {E} \left(S _ {0} e ^ {\left(- \sigma^ {2} / 2\right) T + \sigma \tilde {W} _ {T}} - K e ^ {- r T}\right) ^ {+} \\ \end{array}
$$

If  $r \uparrow$  then  $C_{0}r$

# Probabilistic intuition about impact of  $\sigma$

The vega, at time-  $t$ , of an asset or portfolio with value  $C_t = C(S_t, t; \sigma)$  is  $\frac{\partial C}{\partial \sigma}(S_t, t; \sigma)$ . For a call or put in the B-S model,

$$
\operatorname {v e g a} := \frac {\partial C ^ {B S}}{\partial \sigma} = S \sqrt {T - t} N ^ {\prime} (d _ {1}) > 0
$$

Why positive? Let's take  $r = 0$ .

For a linear payout  $a + bS_T$ , the time-0 value is  $a + bS_0$  regardless of  $\sigma$ . So vega for a linear payout is zero.  
For a complex payout  $f(S_T)$ , such as a call, the payout dominates the linear tangent to  $f$  at  $S_0$ . So the contract's time-0 value is bigger than  $f(S_0)$ . By how large the  $\sigma$ , the larger the contract's time-0 value chance that  $S$  goes to where  $f >$  linear. Large  $\sigma \Rightarrow$  more

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/971e63fa6b095c02c73914f9e6dde2e5398a68b58e5545e41c964bd26e12e9de.jpg)

# Vega of a call

Vega of a call, plotted against  $S_{t}$ , for  $T - t = 1$ , and  $T - t = 0.25$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/124786bf72d165545df4cde79fc892612eace378d4ef6d0ba5936826c8066687.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/3f75b0834dd588d9f0aa08ceedfc82b1d7ded701914fed72610275ed01fc492c.jpg)

Under B-S dynamics, vega of a call is positive.

# Probabilistic analysis of joint effect of  $\sigma$  and  $T$

Halving  $\sigma$  and quadrupling  $T$ , while keeping everything else fixed, has what effect on time-0 call prices?

$$
\log \frac {S _ {T}}{S _ {0}} \sim N o r m a l \left(\left(r - \frac {\sigma^ {2}}{2}\right) T, \sigma^ {2} T\right)
$$

$$
\sigma \rightarrow \frac {5}{2}
$$

$$
T \rightarrow 4 T
$$

$$
A B \cdot e ^ {- r T} \rightarrow e ^ {- 4 r T}
$$

$$
\downarrow \quad (\frac {5}{2}) ^ {2} (4 T) = 0 ^ {2} T
$$

$$
\begin{array}{l} (r - \frac {(0 + 2) ^ {2}}{2}) 4 \pi \\ = (4 r - \frac {r ^ {2}}{2}) T \\ \end{array}
$$

$$
\mathrm {E q u a n t e n t} \Rightarrow r \rightarrow 4 r. \quad\begin{array}{l}{\mathrm {C o T}}\\{\mathrm {i f r > 0}}\end{array}
$$

# Appendix

On an interval  $I$  a function  $f: I \to \mathbb{R}$  is said to be convex if its graph lies on or below all of its chords: for all  $x, y \in I$ , all  $\alpha \in [0,1]$ ,

$$
f (\alpha x + (1 - \alpha) y) \leq \alpha f (x) + (1 - \alpha) f (y)
$$

Properties:

A twice differentiable function  $f$  is convex iff  $f'' \geq 0$  everywhere.  
A convex function's graph lies on or above all of its tangents.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/589645e711ff0f815f3b49f7eb1838f23a4f7e0e5291116a53f729fd7db531f6.jpg)

# Jensen's inequality:

If  $f$  is convex on  $I$  and  $X$  is an integrable random variable taking values in  $I$  then  $\mathbb{E}f(X) \geq f(\mathbb{E}X)$ . Johan Jensen (1859-1925)

# Financial Mathematics 33000

# Lecture 7

Roger Lee

2022 November 30

# Pricing and hedging

The ingredients of a derivatives pricing/hedging problem/solution:

$\triangleright$  Contract to be priced/hedged  
$\triangleright$  Dynamics of underlying  
$\triangleright$  Solution approach

Replication or Expectation  
Analytical or Computational

# Replication or Expectation

Other Payoffs

Other Dynamics: Forward prices

Other Dynamics: Dividend-paying stocks

Analytical or Computational

# Replication and Expectation paths to solutions

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/faaaab8c2a89b3710b4a9411d5ebf21c9a5e4b98dba1962fa08ddbc7c5cf26ba.jpg)  
How many shares to hold in replicating portfolio at time 0

$$
C = e ^ {- r (T - t)} [ F N (d _ {1}) + k N (d _ {2}) ] = S N (d _ {1}) - k e ^ {- r (T - t)} N (d _ {2})
$$

# Same formula, multiple interpretations

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/c711115e66088cf155a84a67cc358157e5a5638ad7d53d6a44792ebdb6e915ed.jpg)

Black-Scholes  $\boxed{N(d_2)}$  at time  $t$ , where  $d_{2} = \frac{\log(S_{t}e^{r(T - t)} / K)}{\sigma\sqrt{T - t}} -\frac{\sigma\sqrt{T - t}}{2}$ :

$N(d_{2})$  is the risk-neutral probability of  $S_{T} > K$ .  
$e^{-r(T - t)}N(d_2)$  is the value of a binary call.  
$e^{-r(T - t)}N(d_2)$  is  $-\partial C / \partial K$  , where  $C$  is vanilla call value.  
-  $K e^{-r(T - t)} N(d_2)$  is value of vanilla-call replicator's  $B$  holdings.

Black-Scholes  $\boxed{N(d_1)}$  at time  $t$ , where  $d_{1} = \frac{\log(S_{t}e^{r(T - t)} / K)}{\sigma\sqrt{T - t}} +\frac{\sigma\sqrt{T - t}}{2}$ :

$N(d_{1})$  is the share-measure probability of  $S_{T} > K$ . It's the time- $t$  price, in shares, of an asset that pays 1 share if  $S_{T} > K$ .  
$S_{t}N(d_{1})$  is the value of an asset-or-nothing call.  
$N(d_{1})$  is  $\partial C / \partial S$ , the delta of a vanilla call.  
$S_{t}N(d_{1})$  is value of vanilla-call replicator's share holdings.

# PDE can come from probabilistic approach too

Recall: under  $\mathbb{P}$ , "every tradeable asset's proportional drift rate is  $r$ ".

Apply this to  $S$  (where  $\mathrm{d}S_{t} = \mu S_{t}\mathrm{d}t + \sigma S_{t}\mathrm{d}W_{t}$ ) to get

$$
\mathrm {d} S _ {t} = r S _ {t} \mathrm {d} t + \sigma S _ {t} \mathrm {d} \tilde {W} _ {t}
$$

where  $\tilde{W}$  is a  $\mathbb{P}$ -BM with  $\mathrm{d}\tilde{W}_t = \mathrm{d}W_t + \lambda_t\mathrm{d}t$

The drift changes (to  $rS_{t}$ ), but the volatility does not.

Apply this to the option price  $C$ , assuming  $C_t = C(S_t, t)$ . By Ito

$$
\mathrm {d} C _ {t} = \frac {\partial C}{\partial t} \mathrm {d} t + \frac {\partial C}{\partial S} \mathrm {d} S + \frac {1}{2} \frac {\partial^ {2} C}{\partial S ^ {2}} (\mathrm {d} S) ^ {2}.
$$

Equate the drift of  $C$  to  $rC$ :

$$
\frac {\partial C}{\partial t} + r S \frac {\partial C}{\partial S} + \frac {1}{2} \sigma^ {2} S ^ {2} \frac {\partial^ {2} C}{\partial S ^ {2}} = r C
$$

This is the B-S PDE. Terminal condition:  $C(S, T) = (S - K)^{+}$

Replication or Expectation

Other Payoffs

Other Dynamics: Forward prices

Other Dynamics: Dividend-paying stocks

Analytical or Computational

# Pricing general payoff functions of  $S_{T}$

To find time-  $t$  price:

PDE approach: To price instead an option paying  $f(S_T)$ , use the PDE that comes from the dynamics, changing only the terminal condition to  $C(S,T) = f(S)$ .  
$\triangleright$  Expectations approach: Calculate

$$
e ^ {- r (T - t)} \int_ {0} ^ {\infty} f (s) p (s) d s
$$

where  $p$  is the time-  $t$  conditional probability density of  $S_{T}$ . Or,

$$
e ^ {- r (T - t)} \int_ {- \infty} ^ {\infty} f (e ^ {x}) p _ {L} (x) d x
$$

where  $p_L$  is the time- $t$  conditional probability density of  $\log S_T$ .

# Hedging general payoff functions of  $S_{T}$

The replication argument showed: if  $C(S, t)$  is a function that satisfies the B-S PDE with terminal condition  $C(S, T) = f(S)$ , then a portfolio of  $\partial C / \partial S$  shares and  $(C - S_t \cdot \partial C / \partial S) / B_t$  units of the bank account replicates a  $f(S_T)$  payoff, and self-finances.  
So to hedge a contract on  $f(S_T)$ , we can use PDE or risk-neutral  $\mathbb{E}$ , to find the option pricing function  $C$  which satisfies the B-S PDE. We can then calculate  $\partial C / \partial S$  to find the delta hedge.

Replication or Expectation

Other Payoffs

Other Dynamics: Forward prices

Other Dynamics: Dividend-paying stocks

Analytical or Computational

# Forward prices

The time-  $t$  forward price for time-  $T$  delivery of some underlying  ${X}_{T}$  (not necessarily a tradeable asset) is defined to be the particular level of  ${K}^{ * }$  such that the forward contract on  ${X}_{T}$  with delivery price  ${K}^{ * }$  and delivery date  $T$  has time-  $t$  value 0. "fair strike"

Assuming only frictionless markets, no arbitrage, and non-random interest rates, the time- $t$  forward price  $F_{t}$

satisfies  $F_{t} = K^{*}$  where  $e^{-r(T - t)}\mathbb{E}_t(X_T - K^*) = 0$  , therefore

$$
\boxed {F _ {t} = \mathbb {E} _ {t} X _ {T}}
$$

and  $F$  is a martingale. In particular,  $F_{T} = X_{T}$ . Therefore, if  $F$  follows GBM, can price options on  $F_{T}$ , and therefore options on  $X_{T}$ , using  $C^{BS}$  formula with underlying  $= F_{t}$  and  $R_{grow} = 0\$ .

# Forward prices

-  $F_{t}$  also equals the time- $t$  futures price for time- $T$  delivery of  $X$ . (A futures contract is not the same thing as a forward contract. However, futures prices = forward prices, when interest rates are non-random. You are not required to learn about futures contracts/prices for this class.)  
$F_{t}$  satisfies a generalized put-call parity that does not assume the underlying  $X$  is tradeable:

$$
C _ {t} - P _ {t} = e ^ {- r (T - t)} (F _ {t} - K)
$$

if the call, put, and forward contract all have strike (delivery price)  $K$  and expiry  $T$ . Proof: replicate the  $K$ -strike forward contract with the  $F_{t}$ -strike forward plus  $F_{t} - K$  bonds.

Replication or Expectation

Other Payoffs

Other Dynamics: Forward prices

Other Dynamics: Dividend-paying stocks

Analytical or Computational

# What is a tradeable asset?

Common language standpoint: something you can buy/sell.

Mathematical standpoint: We have already defined tradeable assets.

A tradeable asset is just a member of the vector  $\mathbf{X}$  of adapted stochastic processes (representing the market's tradeable assets).  
Each trading/ portfolio strategy  $\Theta$  in the assets  $\mathbf{X}$  is allowed to change at any times in some designated set of trading times. At all  $t$ , the portfolio's time- $t$  value is defined to be  $V_{t} \coloneqq \Theta_{t} \cdot \mathbf{X}_{t}$ .  
The strategy  $\Theta$  in assets  $\mathbf{X}$  is defined to be self-financing if

$$
\mathrm {d} V _ {t} = \boldsymbol {\Theta} _ {t} \cdot \mathrm {d} \mathbf {X} _ {t}
$$

as you recall. These definitions already incorporate "tradeability".

# What is a tradeable asset?

Embedded within these mathematical definitions are requirements that can be labelled as [frictionless] "tradeability":

The ability to buy and hold arbitrary quantities at prices  $\mathbf{X}$  This includes negative quantities.  
The definition that declares "self-financing (no deposits / no withdrawals)" to be equivalent to "value changes are fully attributable to asset price changes" assumes that portfolio values

- Are not allowed to change due to transaction costs.  
- Are not allowed to change due to dividends or storage costs.

# What is a tradeable asset?

# Financial modeling standpoint:

A tradeable asset is an object which satisfies [to whatever extent the financial modeler demands] the "tradeability" requirements implicit in our mathematical definitions about trading strategies.

In particular, a tradeable asset  $X$  has the following properties (or at least can be modelled as having the following properties):

Is available to be bought or sold frictionlessly at all designated times  $t$ , at price  $X_{t}$  
- Can be held in arbitrary quantities (including negative), without receiving any dividends, nor incurring any costs.

# Examples

$X$  is not the price process of a tradeable asset for  $t \in [0, T]$  if: (ignoring trivial/exceptional circumstances)

$X_{t}$  is the time-  $t$  price of a dividend paying stock  
$X_{t}$  is the forward price of a stock (dividend-paying or not)  
$X_{t} = S_{t}^{2}$  where  $S_{t}$  is a stock that follows B-S dynamics  
$X_{t} = (S_{t} - K)^{+}$  where  $S_{t}$  is a stock that follows B-S dynamics  
$X_{t}$  is an interest rate  
$X_{t}$  is the S&P 500 index  
$X_{t}$  is the time-  $t$  temperature in this room

# Examples

$X$  is the price process of a tradeable asset for  $t \in [0, T]$  if

$X_{t}$  is the time-  $t$  price of a non-dividend paying stock  
$X_{t}$  is the time- $t$  price of a dividend-paying stock, together with all of its re-invested dividend payments since time 0.

$X$  could be the price process of a tradeable asset for  $t \in [0, T]$  if

$X_{t}$  is the time- $t$  value of contract which pays (only) at time  $T$  the quantity  $V_{T}$ , where  $V_{T}$  is any random variable (not necessarily an asset price) revealed at time  $T > t$ .

Ex:  $X_{t}$  is the time- $t$  value of an option on a time- $T$  interest rate.

Ex:  $X_{t}$  is the time- $t$  value of a contract paying  $S_{T}^{2}$  at time  $T$ .

# Examples

$X$  could be the price process of a tradeable asset for  $t \in [0, T]$  if

-  $X_{t}$  is the time- $t$  value of contract which pays (only) at time  $T$  the quantity  $V_{T}$ , where  $V_{T}$  is any random variable revealed at time  $T$ . Ex:  $X_{t}$  is the time- $t$  value of an option on a time- $T$  interest rate. Ex:  $X_{t}$  is the time- $t$  value of a contract paying  $S_{T}^{2}$  at time  $T$ .

Why "could be"?

- Maybe  $X$  is not available in the particular market, and cannot be synthesized from what is available. (But note that in derivatives pricing the typical question is: If the contract that pays  $V_{T}$  would be made available, what price would it have? So we typically treat as tradeable the derivative that we propose to introduce.)

# Contrast two examples

Let  $S$  the price process of a tradeable asset.

Can the process  $X_{t}$  be the price process of a tradeable asset ...

If  $X_{T} = S_{T}^{2}$  
Yes (if that contract is available, or if you make it available). But you cannot dictate that  $X_{t} = S_{t}^{2}$  at earlier times  $t$ .  
If  $X_{t} = S_{t}^{2}$  for all  $t\in [0,T]$ ?  
No. Because arbitrage would arise (except in trivial cases).

# Including dividend-paying stocks in our portfolios

# Two approaches:

Enlarge the mathematical theory to allow assets to have dividend/consumption streams. Need to (re)define concepts, such as "self-financing portfolio".  
- Keep the mathematical theory as it is. But to apply it to some object, you must bundle the object together with whatever dividend/consumption stream it generates. This bundle/package can be considered a tradeable asset.

We take the second approach.

# Stock paying continuous dividends

Let's price an option which pays  $f(S_{T})$  at time  $T$ , where  $S$  is the price of a stock that pays dividends to stockholders at a constant yield  $q$ .

This means that if  $Q_{t}$  denotes the total dollar amount of dividend paid during  $[0, t]$  by one share, then  $\mathrm{d}Q_{t} = qS_{t}\mathrm{d}t$ .

So  $S$  is not tradeable, but it makes sense to consider as tradeable:

A contract which pays  $S_{T}$  at time  $T$ .  
$\triangleright$  Equivalently, this is a zero-delivery-price forward contract on  $S_{T}$  
$\triangleright$  Equivalently, this is a bundle/package, starting at time 0 with  $A_0 \coloneqq e^{-qT}$  shares, pooled with all reinvested dividends. Thus

$$
\mathrm {d} A _ {t} = A _ {t} \mathrm {d} Q _ {t} / S _ {t} = A _ {t} \left(q S _ {t} \mathrm {d} t\right) / S _ {t} = q A _ {t} \mathrm {d} t
$$

So at time  $t$  the bundle has  $A_{t} = e^{-q(T - t)}$  shares. Note  $A_{T} = 1$ .

# Dynamics

Let  $X_{t}$  be the value of this bundle/package. We have

$$
X _ {t} = e ^ {- q (T - t)} S _ {t}.
$$

Note that  $X_{T} = S_{T}$ ; so the payoff  $f(S_{T})$  is identical to  $f(X_{T})$ .

Now assume Black-Scholes dynamics for  $S$ :

$$
\mathrm {d} S _ {t} = \mu S _ {t} \mathrm {d} t + \sigma S _ {t} \mathrm {d} W _ {t}
$$

where  $W$  is  $\mathsf{P}$  -BM. Then  $\log X_{t} = -q(T - t) + \log S_{t}$ , hence

$$
\mathrm {d} \log X _ {t} = q \mathrm {d} t + \mathrm {d} \log S _ {t} = (\mu + q - \sigma^ {2} / 2) \mathrm {d} t + \sigma \mathrm {d} W _ {t}
$$

hence

$$
\mathrm {d} X _ {t} = (\mu + q) X _ {t} \mathrm {d} t + \sigma X _ {t} \mathrm {d} W _ {t}.
$$

# The replication approach

$$
s k r
$$

By the same replication arguments that we have already seen (L5), the option price must be  $\tilde{C}(X_t, t)$  where  $\tilde{C}$  satisfies the B-S PDE

$$
\frac {\partial \tilde {C}}{\partial t} + r X \frac {\partial \tilde {C}}{\partial X} + \frac {1}{2} \sigma^ {2} X ^ {2} \frac {\partial^ {2} \tilde {C}}{\partial X ^ {2}} = r \tilde {C}
$$

with  $\tilde{C} (X,T) = f(X)$ . Let  $C(S,t)\coloneqq \tilde{C} (e^{-q(T - t)}S,t)$ . Then

$$
\frac {\partial C}{\partial S} = e ^ {- q (T - t)} \frac {\partial \tilde {C}}{\partial X}
$$

$$
\frac {\partial^ {2} C}{\partial S ^ {2}} = e ^ {- 2 q (T - t)} \frac {\partial^ {2} \tilde {C}}{\partial X ^ {2}}
$$

$$
\frac {\partial C}{\partial t} = \frac {\partial \tilde {C}}{\partial t} + q e ^ {- q (T - t)} S \frac {\partial \tilde {C}}{\partial X}
$$

so  $X \frac{\partial \tilde{C}}{\partial X} = S \frac{\partial C}{\partial S}$ , and  $X^2 \frac{\partial^2 \tilde{C}}{\partial X^2} = S^2 \frac{\partial^2 C}{\partial S^2}$ , and  $\frac{\partial \tilde{C}}{\partial t} = \frac{\partial C}{\partial t} - qS \frac{\partial C}{\partial S}$ , where the LHS of these three equations are evaluated at  $X = e^{-q(T - t)} S$ .

# Solution

Hence

$$
\frac {\partial C}{\partial t} + (r - q) S \frac {\partial C}{\partial S} + \frac {1}{2} \sigma^ {2} S ^ {2} \frac {\partial^ {2} C}{\partial S ^ {2}} = r C
$$

with terminal condition  $C(S, T) = f(S)$ .

Suppose we have a call,  $f(S) \coloneqq (S - K)^{+}$ .

The PDE solution is

$$
C (S, t) = C ^ {B S} (S, t, K, T, r - q, r, \sigma) = e ^ {- r (T - t)} [ F N (d _ {1}) - K N (d _ {2}) ],
$$

where  $F\coloneqq Se^{(r - q)(T - t)}$  and

$$
d _ {1, 2} := d _ {\pm} := \frac {\log (F / K)}{\sigma \sqrt {T - t}} \pm \frac {\sigma \sqrt {T - t}}{2}.
$$

# The risk-neutral pricing / martingale approach

# Now we can do either

$\triangleright$  Write the PDE by setting the risk-neutral drift of  $C(S_{t},t)$  equal to  $rC$ , and solve the PDE.  
- Or find the  $\mathbb{P}_t$ -distribution, and solve for  $\mathbb{E}_t$  of discounted payout. At time  $t$ ,

$$
\log S _ {T} \sim \operatorname {N o r m a l} (\log S _ {t} + (r - q - \sigma^ {2} / 2) (T - t), \sigma^ {2} (T - t)).
$$

Therefore, for a call option, by L6.4,

$$
C _ {t} = e ^ {- r (T - t)} \mathbb {E} _ {t} \left(S _ {T} - K\right) ^ {+} = C ^ {B N} \left(S _ {t}, t, K, T, r - q, r, \sigma\right)
$$

which agrees with the PDE solution.

# The risk-neutral pricing / expectations approach

Need to change to risk-neutral measure. X is tradeable.

And under physical measure, X is GBM with volatility sigma.

Now we can do either So, under risk-neutral measure,  $X$  is GBM but with drift rXdt. Volatility is still sigma.

Write the PDE by setting the risk-neutral drift of  $C(S_{t}, t)$  equal

to  $rC$ , recovering L6.21; and solve the PDE.

$\triangleright$  Or find the  $\mathbb{P}_t$ -distribution, and solve for  $\mathbb{E}_t$  of discounted payout.

At time  $t$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/4e7eb49117d09ab0bee5fa4ff1512634bb41f626293e7b118349598c4995313a.jpg)

$$
\log S _ {T} \sim \operatorname {N o r m a l} (\log S _ {t} + (r - q - \sigma^ {2} / 2) (T - t), \sigma^ {2} (T - t)).
$$

Therefore, for a call option, by L6.4,

$$
C _ {t} = e ^ {- r (T - t)} \mathbb {E} _ {t} \left(S _ {T} - K\right) ^ {+} = C ^ {B S} \left(S _ {t}, t, K, T, r - q, r, \sigma\right)
$$

which agrees with the PDE solution.

# Reasonable to assume continuously-paid div yields?

Depends on the underlying.

FX: Yes usually.

When the underlying is a foreign currency, the "dividend yield" is the interest rate paid by the foreign-currency-denominated bank account. Can model these interest payments as a continuous dividend.

Single stocks: No.

Dividend payments are discrete, not continuous. If a stock has ex-dividend dates on the 15th of Feb, May, Aug, Nov, with a dividend yield of  $4\%$  annual, then taking  $q = 0.04$  is wrong if the pricing date = Mar 1 and expiry = Apr 20. No dividends!

# Reasonable to assume continuously-paid div yields?

Single stocks: No.

Moreover, if we want to account for early exercise (single-stock options are usually "American-style"), then dividend timing matters (e.g., to determine whether to exercise an American call, necessary to check the day immediately before ex-div date).

Stock index: Maybe.

$\sim 400$  companies, each making up to 4 div payments annually, could be modeled as a continuous (but time-varying) yield. But rather than forecasting  $q$  to compute  $F_{t} = S_{t}e^{(r - q)(T - t)}$ , consider estimating  $F_{t} = \mathbb{E}_{t}S_{T}$  directly, using put-call parity, or futures.

skip

# How to model discrete dividends?

# A simple approach:

$\triangleright$  European option on  $S_{T}$  is a European option on forward price  $F_{T}$  because  $F_{T} = S_{T}$  
$\triangleright$  Model the forward price as GBM with drift 0.  
$\triangleright$  Solve for time-0 option price in terms of  $F_0$ . Can rewrite in terms of  $S_0$ .

Replication or Expectation

Other Payoffs

Other Dynamics: Forward prices

Other Dynamics: Dividend-paying stocks

Analytical or Computational

# A look ahead

This quarter has focused on analytic solutions. But we do not have simple exact formulas

when the dynamics of the risk factors are too complicated.

For example, simple exact formulas are less common:

...when working with higher-dimensional models,

...or when outside the class of Gaussian models (BM/GBM)

when the contract to be priced/hedged is too complicated.

For example, due to early-exercise or path dependency.

Then we use numerical methods (trees, finite differences, Monte Carlo, Fourier, and reinforcement learning) to evaluate  $\mathbb{E}$  or solve PDE.

Next quarter!

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/3befe370283adc86ace1aad04fd2e603f87171caf8fa465ea9b0d6724343736f.jpg)

# Financial Mathematics 33000

# Lecture 8

Roger Lee

2022 November 30

The implied volatility skew

# Realized Volatility

Realized variance of  $S$ , sampled at interval  $\Delta t$ , from time 0 to time  $T$  can be defined, using log-returns by letting  $t_n = n\Delta t$  and  $T = t_N$  and

$$
R V a r = \frac {1}{T} \sum_ {n = 0} ^ {N - 1} \left(\log \frac {S _ {t _ {n + 1}}}{S _ {t _ {n}}}\right) ^ {2}
$$

Alternatively could use simple returns, letting  $\Delta S = S_{t_{n + 1}} - S_{t_n}$  and

$$
R V a r = \frac {1}{T} \sum_ {n = 0} ^ {N - 1} \left(\frac {\Delta S}{S _ {t _ {n}}}\right) ^ {2}
$$

Realizedvolatilityof  $S$  is

$$
R V o l = \sqrt {R V a r}
$$

If  $\mathrm{d}S_{t} = \mu S_{t}\mathrm{d}t + \sigma S_{t}\mathrm{d}W_{t}$ , then  $RVol\rightarrow \sigma$  as  $\Delta t\to 0$

# Implied Volatility

Given a time- $t$  price  $C$  for a given call option  $(K, T)$  on an underlying  $S_{t}$  assuming interest rate  $r$ , the implied volatility is the  $\sigma$  such that

$$
C = C ^ {B S} (S _ {t}, t, K, T, r, \sigma)
$$

where  $C^{BS}$  is the Black-Scholes formula.

This exists and is unique, if  
The bigger the dollar price  $C$ , the bigger the implied vol  $\sigma_{imp}$  
Gives is another way quoting an option price. Instead of saying the option is trading at $x.xx, can say it's trading at yy% vol.

# Interpretations

Interpretations of time-  $t$  implied volatility

Intuitively, implied vol is in some sense the market's forward-looking expectation of "realized volatility" from time  $t$  until  $T$ , along paths that go near  $K$ .  
A language / a metric / a scale in which to quote option prices. Instead of quoting in dollars, can quote in vol points. (Use of this language does not mean we actually believe the Black-Scholes assumptions!)

# Volatility smile/skew

If the underlying truly has GBM dynamics with volatility  $\sigma$  then

$$
C (K, T) = C ^ {B S} (K, T, \sigma) \quad \text {f o r a l l} (K, T)
$$

Hence

$$
\sigma_ {i m p} (K, T) = \sigma \quad \text {f o r a l l} (K, T)
$$

However, empirically,

$\triangleright$  Plotting  $\sigma_{imp}$  against  $K$ , you typically see not a flat line, but rather a volatility smile or a volatility skew.  
Also,  $\sigma_{imp}$  varies wrt  $T$ ; implied volatility has a term structure.  
The function  $\sigma_{imp}(K,T)$  is called the implied vol surface or skew.

# Volatility surface: SPX, by strike

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/b81bcc795ad8317e16b5236a73307ed75797106e1f150c0741dadff2c526919e.jpg)  
SN 417340 EST GMT-5:00 G721-6557-166 12-Jan-2022 15:56:46

# Volatility surface: SPX, by moneyness

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/434732d4b87a52c869df45e75bab1342afa9994367ad931976cd82bd6cf990fe.jpg)  
SN 417340 EST GMT-5:00 G721-6557-166 12-Jan-2022 15:58:14

# Volatility skews: SPX, by moneyness, 4 expirations

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/e032bb2a93eb92b105c09dc8428663e1b05c4b2795e8f53f9992a836bdc40060.jpg)

# Volatility skews: SPX, by moneyness, 4 observations

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/620e9c2f5e93ddb44b5a0cce38297d842f16fef480944d4d04c74727d745f690.jpg)

# Volatility smile/skew: EBAY

<table><tr><td>BID</td><td>dASK</td><td>dIVBD</td><td>IVAS</td><td>IVMD</td><td>DPIN</td><td colspan="7">QXB JUL4 61074.620</td></tr><tr><td rowspan="2">Bid Price</td><td rowspan="2">Ask Price</td><td rowspan="2">Emp Volat Bid</td><td rowspan="2">Emp Volat Ask</td><td rowspan="2">Emp Volat Mid</td><td rowspan="2">Open Intrst</td><td colspan="2">EBAY &lt;-CALLS PUTS-&gt;</td><td>BID Price</td><td>dASK</td><td>dIVBD</td><td>IVAS</td><td>IVMD</td></tr><tr><td colspan="2">EBAY &lt;-CALLS PUTS-&gt;</td><td>BID Price</td><td>dASK</td><td>dIVBD</td><td>IVAS</td><td>IVMD</td></tr><tr><td colspan="13">74.61074.620</td></tr><tr><td>44.60</td><td>44.80</td><td>N.A.</td><td>69.07</td><td>N.A.</td><td>335</td><td>130</td><td>16</td><td>.05</td><td>N.A.</td><td>74.86</td><td>69.02</td><td>478</td></tr><tr><td>39.60</td><td>39.80</td><td>N.A.</td><td>70.07</td><td>54.16</td><td>305</td><td>235</td><td>17</td><td>.05</td><td>N.A.</td><td>62.87</td><td>57.97</td><td>453</td></tr><tr><td>34.70</td><td>34.80</td><td>N.A.</td><td>57.73</td><td>36.43</td><td>378</td><td>340</td><td>18</td><td>.05</td><td>N.A.</td><td>52.53</td><td>48.44</td><td>1,169</td></tr><tr><td>29.70</td><td>29.90</td><td>N.A.</td><td>52.91</td><td>46.90</td><td>355</td><td>445</td><td>19</td><td>.10</td><td>43.44</td><td>47.80</td><td>45.89</td><td>739</td></tr><tr><td>24.80</td><td>25.00</td><td>37.23</td><td>46.40</td><td>42.65</td><td>514</td><td>550</td><td>20</td><td>.15</td><td>41.55</td><td>43.68</td><td>42.61</td><td>1,559</td></tr><tr><td>20.00</td><td>20.20</td><td>36.56</td><td>41.46</td><td>39.18</td><td>889</td><td>655</td><td>21</td><td>.30</td><td>38.88</td><td>40.05</td><td>39.50</td><td>2,205</td></tr><tr><td>15.40</td><td>15.50</td><td>34.85</td><td>37.76</td><td>36.34</td><td>1,931</td><td>760</td><td>22</td><td>.65</td><td>35.56</td><td>37.06</td><td>36.31</td><td>4,757</td></tr><tr><td>11.10</td><td>11.30</td><td>33.40</td><td>34.36</td><td>33.88</td><td>3,851</td><td>065</td><td>23</td><td>1.40</td><td>33.46</td><td>34.45</td><td>33.95</td><td>9,285</td></tr><tr><td>7.40</td><td>7.60</td><td>31.33</td><td>32.79</td><td>32.06</td><td>3,313</td><td>970</td><td>24</td><td>2.75</td><td>31.84</td><td>32.56</td><td>32.20</td><td>4,905</td></tr><tr><td>4.50</td><td>4.60</td><td>29.70</td><td>31.03</td><td>30.37</td><td>7,000</td><td>1075</td><td>25</td><td>4.70</td><td>30.15</td><td>30.81</td><td>30.48</td><td>2,415</td></tr><tr><td>2.45</td><td>2.55</td><td>29.16</td><td>29.88</td><td>29.52</td><td>2,166</td><td>1100</td><td>26</td><td>7.60</td><td>28.98</td><td>30.39</td><td>29.68</td><td>619</td></tr><tr><td>1.20</td><td>1.30</td><td>28.78</td><td>29.25</td><td>29.02</td><td>1,429</td><td>1285</td><td>27</td><td>11.40</td><td>11.60</td><td>27.94</td><td>29.89</td><td>28.92</td></tr><tr><td>.55</td><td>.65</td><td>28.82</td><td>29.50</td><td>29.16</td><td>1,115</td><td>1390</td><td>28</td><td>15.70</td><td>15.90</td><td>27.27</td><td>30.24</td><td>28.80</td></tr><tr><td>.20</td><td>.30</td><td>27.69</td><td>30.02</td><td>28.92</td><td>16</td><td>1495</td><td>29</td><td>20.40</td><td>20.70</td><td>N.A.</td><td>32.77</td><td>29.60</td></tr><tr><td>.10</td><td>.15</td><td>28.66</td><td>30.60</td><td>29.69</td><td>305</td><td>15100</td><td>30</td><td>25.30</td><td>25.50</td><td>N.A.</td><td>32.83</td><td>30.88</td></tr></table>

# Volatility smile/skew: GOOG

<table><tr><td colspan="9">Calls</td><td>Strike</td><td colspan="7">Puts</td><td></td></tr><tr><td>Ticker</td><td>Bid</td><td>Ask</td><td>Last</td><td>IVM</td><td>DM</td><td>Voll</td><td>Oint</td><td></td><td></td><td>Ticker</td><td>Bid</td><td>Ask</td><td>Last</td><td>IVM</td><td>DM</td><td>Voll</td><td>Oint</td></tr><tr><td>19 Apr 14 (10D): CSize 10D:</td><td colspan="7">IDiv. 77; R. 12:</td><td>19</td><td>Apr 14 (10D): CSize 10D:</td><td colspan="7">IDiv. 77; R. 12:</td><td></td></tr><tr><td>1) GOOG 4 C510</td><td>48.20</td><td>50.80</td><td>50.00</td><td>58.97</td><td>.84</td><td>2</td><td>34</td><td>510.00</td><td>8) GOOG 4 P510</td><td>3.20</td><td>3.60</td><td>3.08</td><td>55.30</td><td>-14</td><td>69</td><td>203</td><td></td></tr><tr><td>2) GOOG 4 C515</td><td>43.70</td><td>46.80</td><td>43.00y</td><td>57.94</td><td>.82</td><td>37</td><td>515.00</td><td>8) GOOG 4 P515</td><td>4.10</td><td>4.40</td><td>4.24</td><td>55.20</td><td>-17</td><td>28</td><td>304</td><td></td><td></td></tr><tr><td>3) GOOG 4 C520</td><td>39.90</td><td>40.60</td><td>44.40</td><td>53.44</td><td>.81</td><td>11</td><td>35</td><td>520.00</td><td>8) GOOG 4 P520</td><td>4.90</td><td>5.30</td><td>4.90</td><td>54.18</td><td>-20</td><td>13</td><td>485</td><td></td></tr><tr><td>4) GOOG 4 C525</td><td>36.20</td><td>37.70</td><td>40.00</td><td>55.38</td><td>.76</td><td>1</td><td>58</td><td>525.00</td><td>8) GOOG 4 P525</td><td>6.00</td><td>6.40</td><td>6.14</td><td>53.70</td><td>-23</td><td>27</td><td>163</td><td></td></tr><tr><td>5) GOOG 4 C530</td><td>32.40</td><td>33.50</td><td>34.00</td><td>54.21</td><td>.73</td><td>1</td><td>76</td><td>530.00</td><td>8) GOOG 4 P530</td><td>7.10</td><td>7.70</td><td>7.05</td><td>52.96</td><td>-27</td><td>14</td><td>183</td><td></td></tr><tr><td>6) GOOG 4 C535</td><td>28.90</td><td>29.80</td><td>30.56</td><td>53.31</td><td>.69</td><td>45</td><td>73</td><td>535.00</td><td>8) GOOG 4 P535</td><td>8.70</td><td>9.10</td><td>7.80</td><td>52.84</td><td>-30</td><td>45</td><td>348</td><td></td></tr><tr><td>7) GOOG 4 C540</td><td>25.60</td><td>26.50</td><td>27.52</td><td>53.30</td><td>.65</td><td>12</td><td>214</td><td>540.00</td><td>8) GOOG 4 P540</td><td>10.40</td><td>10.80</td><td>9.91</td><td>52.60</td><td>-35</td><td>26</td><td>249</td><td></td></tr><tr><td>8) GOOG 4 C545</td><td>22.50</td><td>23.30</td><td>23.70</td><td>52.81</td><td>.61</td><td>18</td><td>168</td><td>545.00</td><td>8) GOOG 4 P545</td><td>12.10</td><td>12.70</td><td>12.30</td><td>51.82</td><td>-39</td><td>17</td><td>148</td><td></td></tr><tr><td>9) GOOG 4 C550</td><td>19.60</td><td>20.20</td><td>20.00</td><td>52.13</td><td>.56</td><td>168</td><td>358</td><td>550.00</td><td>8) GOOG 4 P550</td><td>14.30</td><td>14.80</td><td>13.80</td><td>51.63</td><td>-44</td><td>84</td><td>155</td><td></td></tr><tr><td>10) GOOG 4 C555</td><td>17.00</td><td>17.50</td><td>17.95</td><td>51.84</td><td>.52</td><td>192</td><td>256</td><td>555.00</td><td>8) GOOG 4 P555</td><td>16.60</td><td>17.10</td><td>16.50</td><td>51.18</td><td>-48</td><td>41</td><td>159</td><td></td></tr><tr><td>11) GOOG 4 C560</td><td>14.60</td><td>15.00</td><td>15.41</td><td>51.29</td><td>.47</td><td>472</td><td>694</td><td>560.00</td><td>8) GOOG 4 P560</td><td>19.20</td><td>19.70</td><td>18.61</td><td>51.09</td><td>-53</td><td>101</td><td>113</td><td></td></tr><tr><td>12) GOOG 4 C565</td><td>12.40</td><td>13.00</td><td>13.14</td><td>51.28</td><td>.43</td><td>115</td><td>321</td><td>565.00</td><td>8) GOOG 4 P565</td><td>21.80</td><td>22.50</td><td>20.50</td><td>50.64</td><td>-58</td><td>1</td><td>29</td><td></td></tr><tr><td>13) GOOG 4 C570</td><td>10.50</td><td>10.70</td><td>10.51</td><td>50.74</td><td>.38</td><td>154</td><td>652</td><td>570.00</td><td>8) GOOG 4 P570</td><td>24.90</td><td>25.70</td><td>23.82</td><td>50.26</td><td>-62</td><td>1</td><td>51</td><td></td></tr><tr><td>14) GOOG 4 C575</td><td>8.80</td><td>9.20</td><td>9.20</td><td>50.26</td><td>.34</td><td>244</td><td>317</td><td>575.00</td><td>8) GOOG 4 P575</td><td>28.00</td><td>28.80</td><td>31.60</td><td>49.87</td><td>-67</td><td>8</td><td>8</td><td></td></tr><tr><td>15) GOOG 4 C580</td><td>7.30</td><td>7.80</td><td>7.50</td><td>50.28</td><td>.30</td><td>124</td><td>431</td><td>580.00</td><td>8) GOOG 4 P580</td><td>31.40</td><td>32.30</td><td>29.10</td><td>49.19</td><td>-71</td><td>11</td><td>47</td><td></td></tr><tr><td>16) GOOG 4 C585</td><td>5.90</td><td>6.30</td><td>6.43</td><td>50.02</td><td>.25</td><td>28</td><td>211</td><td>585.00</td><td>8) GOOG 4 P585</td><td>34.80</td><td>36.00</td><td>38.00</td><td>48.78</td><td>-75</td><td>11</td><td>11</td><td></td></tr><tr><td>17) GOOG 4 C590</td><td>4.80</td><td>5.30</td><td>5.07</td><td>50.20</td><td>.22</td><td>71</td><td>333</td><td>590.00</td><td>8) GOOG 4 P590</td><td>37.70</td><td>40.20</td><td>36.23</td><td>46.97</td><td>-80</td><td>8</td><td>21</td><td></td></tr><tr><td>18) GOOG 4 C595</td><td>3.90</td><td>4.40</td><td>4.15</td><td>50.05</td><td>.19</td><td>91</td><td>136</td><td>595.00</td><td>8) GOOG 4 P595</td><td>41.60</td><td>44.10</td><td>40.20</td><td>44.85</td><td>-84</td><td>8</td><td>13</td><td></td></tr><tr><td>19) GOOG 4 C600</td><td>3.20</td><td>3.60</td><td>3.39</td><td>49.94</td><td>.16</td><td>80</td><td>837</td><td>600.00</td><td>8) GOOG 4 P600</td><td>45.90</td><td>48.30</td><td>63.95y</td><td>44.80</td><td>-87</td><td>1</td><td>35</td><td></td></tr><tr><td colspan="8">17 May 14 (38d): CSize 10D: IVF d56,62</td><td>19</td><td colspan="8">May 14 (38d): CSize 10D: IVF d56,62</td><td></td></tr><tr><td>20) GOOG 5 C510</td><td>52.10</td><td>54.80</td><td>51.30v</td><td>36.10</td><td>.79</td><td>15</td><td>510.00</td><td>7) GOOG 5 P510</td><td>6.70</td><td>7.20</td><td>5.80</td><td>33.61</td><td>-20</td><td>6</td><td>323</td><td></td><td></td></tr></table>

# Volatility surface: GOOG

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/110e663b29c29f8a350c9f9c7d6c1265e60d49c94261a721d7dfaad316d0a9eb.jpg)

<table><tr><td colspan="2">Expiry</td><td colspan="4">19 April 2014</td><td colspan="4">17 May 2014</td><td colspan="4">21 Jun 2014</td><td colspan="4">20 Sep 2014</td><td colspan="4">17 Jan 2015</td></tr><tr><td colspan="2">Calls/Puts</td><td colspan="2">Calls</td><td colspan="2">Puts</td><td colspan="2">Calls</td><td colspan="2">Puts</td><td colspan="2">Calls</td><td colspan="2">Puts</td><td colspan="2">Calls</td><td colspan="2">Puts</td><td colspan="2">Calls</td><td colspan="2">Puts</td></tr><tr><td>Strike</td><td>DM</td><td>IVM</td><td>IVM</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td></tr><tr><td>505.00</td><td>.91</td><td>51.46</td><td>-.11</td><td>56.24</td><td>.83</td><td>33.50</td><td>-.17</td><td>34.07</td><td>.80</td><td>28.63</td><td>-.20</td><td>28.79</td><td>.74</td><td>26.46</td><td>-.26</td><td>26.02</td><td>.71</td><td>25.49</td><td>-.29</td><td>25.08</td><td></td></tr><tr><td>510.00</td><td>.88</td><td>50.89</td><td>-.14</td><td>55.57</td><td>.81</td><td>33.13</td><td>-.20</td><td>34.25</td><td>.77</td><td>28.55</td><td>-.23</td><td>28.69</td><td>.72</td><td>26.38</td><td>-.28</td><td>26.03</td><td>.70</td><td>25.20</td><td>-.30</td><td>24.56</td><td></td></tr><tr><td>515.00</td><td>.85</td><td>51.33</td><td>-.16</td><td>55.34</td><td>.79</td><td>32.84</td><td>-.22</td><td>33.86</td><td>.75</td><td>28.26</td><td>-.25</td><td>28.51</td><td>.70</td><td>26.34</td><td>-.29</td><td>25.96</td><td>.68</td><td>25.16</td><td>-.32</td><td>24.68</td><td></td></tr><tr><td>520.00</td><td>.82</td><td>51.42</td><td>-.19</td><td>54.24</td><td>.76</td><td>33.23</td><td>-.24</td><td>33.63</td><td>.73</td><td>28.38</td><td>-.27</td><td>28.43</td><td>.68</td><td>26.45</td><td>-.31</td><td>25.86</td><td>.66</td><td>25.12</td><td>-.33</td><td>24.60</td><td></td></tr><tr><td>525.00</td><td>.79</td><td>51.53</td><td>-.22</td><td>54.26</td><td>.73</td><td>33.14</td><td>-.27</td><td>33.50</td><td>.70</td><td>28.74</td><td>-.30</td><td>28.37</td><td>.66</td><td>26.29</td><td>-.33</td><td>25.68</td><td>.65</td><td>25.21</td><td>-.35</td><td>24.43</td><td></td></tr><tr><td>530.00</td><td>.75</td><td>51.68</td><td>-.26</td><td>53.59</td><td>.70</td><td>33.56</td><td>-.30</td><td>33.37</td><td>.67</td><td>28.54</td><td>-.32</td><td>28.27</td><td>.64</td><td>26.18</td><td>-.35</td><td>25.61</td><td>.63</td><td>24.98</td><td>-.37</td><td>24.60</td><td></td></tr><tr><td>535.00</td><td>.71</td><td>52.68</td><td>-.29</td><td>53.02</td><td>.67</td><td>33.28</td><td>-.33</td><td>33.16</td><td>.65</td><td>28.54</td><td>-.35</td><td>28.08</td><td>.62</td><td>26.24</td><td>-.37</td><td>25.49</td><td>.62</td><td>25.14</td><td>-.38</td><td>24.31</td><td></td></tr><tr><td>540.00</td><td>.67</td><td>52.50</td><td>-.33</td><td>52.64</td><td>.63</td><td>33.20</td><td>-.37</td><td>32.79</td><td>.62</td><td>28.27</td><td>-.38</td><td>27.94</td><td>.60</td><td>26.08</td><td>-.39</td><td>25.46</td><td>.60</td><td>25.08</td><td>-.40</td><td>24.43</td><td></td></tr><tr><td>545.00</td><td>.62</td><td>52.27</td><td>-.38</td><td>52.45</td><td>.60</td><td>32.95</td><td>-.40</td><td>32.84</td><td>.59</td><td>28.20</td><td>-.41</td><td>27.78</td><td>.58</td><td>26.14</td><td>-.42</td><td>25.45</td><td>.58</td><td>25.15</td><td>-.42</td><td>24.24</td><td></td></tr><tr><td>550.00</td><td>.58</td><td>51.82</td><td>-.42</td><td>51.92</td><td>.57</td><td>32.76</td><td>-.43</td><td>32.58</td><td>.56</td><td>28.04</td><td>-.44</td><td>27.75</td><td>.56</td><td>25.98</td><td>-.44</td><td>25.37</td><td>.57</td><td>24.96</td><td>-.43</td><td>24.37</td><td></td></tr><tr><td>555.00</td><td>.53</td><td>51.92</td><td>-.47</td><td>51.67</td><td>.53</td><td>32.61</td><td>-.47</td><td>32.44</td><td>.53</td><td>27.99</td><td>-.46</td><td>27.64</td><td>.54</td><td>26.03</td><td>-.46</td><td>25.25</td><td>.55</td><td>25.07</td><td>-.45</td><td>24.23</td><td></td></tr><tr><td>560.00</td><td>.48</td><td>50.99</td><td>-.52</td><td>51.18</td><td>.50</td><td>32.35</td><td>-.50</td><td>32.40</td><td>.51</td><td>27.99</td><td>-.49</td><td>27.55</td><td>.52</td><td>25.97</td><td>-.48</td><td>25.30</td><td>.53</td><td>25.01</td><td>-.47</td><td>24.27</td><td></td></tr><tr><td>565.00</td><td>.44</td><td>50.88</td><td>-.56</td><td>50.90</td><td>.46</td><td>32.34</td><td>-.54</td><td>32.05</td><td>.48</td><td>27.74</td><td>-.52</td><td>27.41</td><td>.50</td><td>25.95</td><td>-.50</td><td>25.28</td><td>.52</td><td>25.00</td><td>-.48</td><td>24.20</td><td></td></tr><tr><td>570.00</td><td>.39</td><td>50.26</td><td>-.61</td><td>50.53</td><td>.43</td><td>32.02</td><td>-.57</td><td>32.02</td><td>.45</td><td>27.70</td><td>-.55</td><td>27.48</td><td>.48</td><td>25.86</td><td>-.52</td><td>25.22</td><td>.50</td><td>24.83</td><td>-.50</td><td>24.31</td><td></td></tr><tr><td>575.00</td><td>.35</td><td>49.95</td><td>-.65</td><td>50.23</td><td>.39</td><td>31.85</td><td>-.61</td><td>31.75</td><td>.42</td><td>27.58</td><td>-.58</td><td>27.31</td><td>.46</td><td>25.80</td><td>-.54</td><td>25.13</td><td>.49</td><td>24.90</td><td>-.52</td><td>24.28</td><td></td></tr><tr><td>580.00</td><td>.30</td><td>49.76</td><td>-.69</td><td>50.05</td><td>.36</td><td>31.95</td><td>-.64</td><td>31.76</td><td>.39</td><td>27.49</td><td>-.61</td><td>27.20</td><td>.44</td><td>25.71</td><td>-.56</td><td>25.17</td><td>.47</td><td>24.86</td><td>-.53</td><td>24.03</td><td></td></tr><tr><td>585.00</td><td>.26</td><td>49.38</td><td>-.73</td><td>50.06</td><td>.33</td><td>31.86</td><td>-.67</td><td>31.66</td><td>.36</td><td>27.40</td><td>-.64</td><td>27.10</td><td>.42</td><td>25.63</td><td>-.58</td><td>25.28</td><td>.45</td><td>24.83</td><td>-.55</td><td>24.02</td><td></td></tr><tr><td>590.00</td><td>.23</td><td>49.41</td><td>-.76</td><td>51.33</td><td>.30</td><td>31.71</td><td>-.70</td><td>31.47</td><td>.34</td><td>27.28</td><td>-.66</td><td>27.28</td><td>.40</td><td>25.76</td><td>-.60</td><td>25.23</td><td>.44</td><td>24.78</td><td>-.57</td><td>23.95</td><td></td></tr><tr><td>595.00</td><td>.19</td><td>49.62</td><td>-.79</td><td>51.70</td><td>.27</td><td>31.30</td><td>-.73</td><td>31.21</td><td>.31</td><td>27.35</td><td>-.69</td><td>27.23</td><td>.38</td><td>25.89</td><td>-.62</td><td>25.18</td><td>.42</td><td>24.39</td><td>-.58</td><td>23.86</td><td></td></tr><tr><td>600.00</td><td>.16</td><td>49.15</td><td>-.82</td><td>51.71</td><td>.24</td><td>31.34</td><td>-.76</td><td>31.59</td><td>.29</td><td>27.29</td><td>-.71</td><td>27.10</td><td>.37</td><td>25.86</td><td>-.64</td><td>25.20</td><td>.41</td><td>24.59</td><td>-.60</td><td>23.87</td><td></td></tr><tr><td>605.00</td><td>.14</td><td>49.64</td><td>-.85</td><td>51.82</td><td>.22</td><td>31.06</td><td>-.78</td><td>31.40</td><td>.27</td><td>27.28</td><td>-.74</td><td>26.76</td><td>.35</td><td>25.87</td><td>-.66</td><td>25.24</td><td>.39</td><td>24.74</td><td>-.61</td><td>23.91</td><td></td></tr><tr><td>610.00</td><td>.12</td><td>49.72</td><td>-.88</td><td>50.09</td><td>.19</td><td>31.02</td><td>-.80</td><td>31.89</td><td>.24</td><td>27.21</td><td>-.76</td><td>27.17</td><td>.33</td><td>25.94</td><td>-.68</td><td>25.11</td><td>.38</td><td>24.65</td><td>-.63</td><td>23.79</td><td></td></tr></table>

93) Default color legend  
Australia 61 2 9777 8600 Brazil 5511 3048 4500 Europe 44 20 7330 7500 Germany 49 69 9204 1210 Hong Kong 852 2977 6000  
Japan 81 3 3201 8900 Singapore 65 6212 1000 U.S. 1 212 318 2000 Copyright 2014 Bloomberg Finance L.P.  
SN 785509 EDT GMT-4:00 H177-3818-0 09-Apr-2014 12:47:46

# Volatility surface: AMZN

<table><tr><td>Expiry</td><td colspan="4">19 Apr 2014</td><td colspan="4">17 May 2014</td><td colspan="4">21 Jun 2014</td><td colspan="4">19 Jul 2014</td><td colspan="4">18 Oct 2014</td></tr><tr><td>Calls/Puts</td><td colspan="2">Calls</td><td colspan="2">Puts</td><td colspan="2">Calls</td><td colspan="2">Puts</td><td colspan="2">Calls</td><td colspan="2">Puts</td><td colspan="2">Calls</td><td colspan="2">Puts</td><td colspan="2">Calls</td><td colspan="2">Puts</td></tr><tr><td>Strike</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td></tr><tr><td>280.00</td><td>.98</td><td>55.66</td><td>-.02</td><td>53.40</td><td>.86</td><td>48.25</td><td>-.14</td><td>46.67</td><td>.83</td><td>40.35</td><td>-.16</td><td>38.61</td><td>.81</td><td>36.77</td><td>-.18</td><td>35.63</td><td>.77</td><td>34.48</td><td>-.22</td><td>33.08</td></tr><tr><td>285.00</td><td>.98</td><td>47.38</td><td>-.03</td><td>50.74</td><td>.83</td><td>48.31</td><td>-.16</td><td>45.71</td><td>.81</td><td>39.40</td><td>-.19</td><td>38.04</td><td>.79</td><td>36.61</td><td>-.20</td><td>35.10</td><td>.75</td><td>34.06</td><td>-.24</td><td>32.75</td></tr><tr><td>290.00</td><td>.94</td><td>53.36</td><td>-.05</td><td>48.05</td><td>.81</td><td>47.17</td><td>-.19</td><td>44.94</td><td>.78</td><td>39.05</td><td>-.21</td><td>37.48</td><td>.76</td><td>36.34</td><td>-.23</td><td>34.44</td><td>.73</td><td>33.43</td><td>-.27</td><td>32.50</td></tr><tr><td>295.00</td><td>.93</td><td>47.70</td><td>-.06</td><td>45.69</td><td>.78</td><td>45.17</td><td>-.22</td><td>44.18</td><td>.75</td><td>38.71</td><td>-.24</td><td>37.02</td><td>.74</td><td>35.31</td><td>-.26</td><td>34.08</td><td>.71</td><td>32.87</td><td>-.29</td><td>32.11</td></tr><tr><td>300.00</td><td>.89</td><td>47.88</td><td>-.09</td><td>43.23</td><td>.75</td><td>44.56</td><td>-.25</td><td>43.42</td><td>.72</td><td>38.21</td><td>-.27</td><td>36.51</td><td>.71</td><td>34.87</td><td>-.29</td><td>34.00</td><td>.68</td><td>32.81</td><td>-.31</td><td>31.80</td></tr><tr><td>305.00</td><td>.85</td><td>45.62</td><td>-.13</td><td>41.09</td><td>.71</td><td>43.74</td><td>-.29</td><td>42.74</td><td>.69</td><td>37.40</td><td>-.31</td><td>36.07</td><td>.68</td><td>34.48</td><td>-.32</td><td>33.54</td><td>.66</td><td>32.30</td><td>-.34</td><td>31.68</td></tr><tr><td>310.00</td><td>.82</td><td>39.98</td><td>-.18</td><td>39.65</td><td>.67</td><td>43.80</td><td>-.33</td><td>42.16</td><td>.65</td><td>37.05</td><td>-.34</td><td>35.56</td><td>.65</td><td>33.86</td><td>-.35</td><td>33.14</td><td>.63</td><td>32.05</td><td>-.37</td><td>31.33</td></tr><tr><td>315.00</td><td>.74</td><td>38.38</td><td>-.26</td><td>38.31</td><td>.63</td><td>42.99</td><td>-.37</td><td>41.56</td><td>.61</td><td>36.59</td><td>-.38</td><td>35.35</td><td>.62</td><td>33.54</td><td>-.38</td><td>32.92</td><td>.61</td><td>32.05</td><td>-.39</td><td>31.12</td></tr><tr><td>320.00</td><td>.65</td><td>37.84</td><td>-.35</td><td>37.21</td><td>.58</td><td>42.54</td><td>-.42</td><td>41.19</td><td>.58</td><td>36.16</td><td>-.42</td><td>34.67</td><td>.58</td><td>33.56</td><td>-.42</td><td>32.66</td><td>.58</td><td>31.64</td><td>-.42</td><td>30.93</td></tr><tr><td>325.00</td><td>.54</td><td>36.78</td><td>-.46</td><td>36.31</td><td>.54</td><td>41.87</td><td>-.46</td><td>40.53</td><td>.54</td><td>35.78</td><td>-.46</td><td>34.46</td><td>.54</td><td>33.18</td><td>-.46</td><td>32.43</td><td>.55</td><td>31.49</td><td>-.45</td><td>30.69</td></tr><tr><td>330.00</td><td>.43</td><td>35.57</td><td>-.57</td><td>34.99</td><td>.49</td><td>41.35</td><td>-.51</td><td>40.00</td><td>.50</td><td>35.45</td><td>-.50</td><td>33.89</td><td>.51</td><td>33.00</td><td>-.49</td><td>32.16</td><td>.53</td><td>31.53</td><td>-.47</td><td>30.65</td></tr><tr><td>335.00</td><td>.32</td><td>34.82</td><td>-.69</td><td>34.19</td><td>.44</td><td>40.81</td><td>-.56</td><td>39.45</td><td>.46</td><td>35.01</td><td>-.54</td><td>33.67</td><td>.47</td><td>32.67</td><td>-.53</td><td>31.98</td><td>.50</td><td>31.29</td><td>-.50</td><td>30.59</td></tr><tr><td>340.00</td><td>.22</td><td>34.59</td><td>-.78</td><td>33.80</td><td>.40</td><td>40.58</td><td>-.60</td><td>39.57</td><td>.42</td><td>34.77</td><td>-.58</td><td>33.26</td><td>.44</td><td>32.63</td><td>-.57</td><td>31.62</td><td>.47</td><td>31.21</td><td>-.53</td><td>30.29</td></tr><tr><td>345.00</td><td>.15</td><td>34.47</td><td>-.85</td><td>34.14</td><td>.35</td><td>40.18</td><td>-.65</td><td>38.82</td><td>.39</td><td>34.63</td><td>-.61</td><td>33.73</td><td>.40</td><td>32.40</td><td>-.60</td><td>31.50</td><td>.45</td><td>31.09</td><td>-.56</td><td>30.05</td></tr><tr><td>350.00</td><td>.09</td><td>34.92</td><td>-.91</td><td>33.55</td><td>.31</td><td>40.07</td><td>-.70</td><td>38.37</td><td>.35</td><td>34.56</td><td>-.65</td><td>33.51</td><td>.37</td><td>32.30</td><td>-.63</td><td>31.43</td><td>.42</td><td>30.80</td><td>-.58</td><td>30.03</td></tr><tr><td>355.00</td><td>.06</td><td>35.90</td><td>-.97</td><td>28.83</td><td>.27</td><td>39.71</td><td>-.73</td><td>38.86</td><td>.31</td><td>34.42</td><td>-.70</td><td>32.51</td><td>.34</td><td>32.17</td><td>-.67</td><td>31.27</td><td>.40</td><td>30.93</td><td>-.61</td><td>30.04</td></tr><tr><td>360.00</td><td>.04</td><td>37.29</td><td>-.99</td><td>29.45</td><td>.24</td><td>39.64</td><td>-.77</td><td>38.67</td><td>.28</td><td>34.01</td><td>-.72</td><td>33.19</td><td>.31</td><td>32.09</td><td>-.70</td><td>31.04</td><td>.37</td><td>30.75</td><td>-.63</td><td>29.83</td></tr><tr><td>365.00</td><td>.03</td><td>38.73</td><td></td><td></td><td>.20</td><td>39.53</td><td>-.80</td><td>38.60</td><td>.25</td><td>33.81</td><td>-.75</td><td>32.76</td><td>.28</td><td>31.82</td><td>-.73</td><td>30.85</td><td>.35</td><td>30.49</td><td>-.66</td><td>29.60</td></tr><tr><td>370.00</td><td>.02</td><td>40.89</td><td>-1.0</td><td></td><td>.17</td><td>39.55</td><td>-.84</td><td>37.03</td><td>.22</td><td>33.96</td><td>-.79</td><td>31.97</td><td>.25</td><td>31.75</td><td>-.76</td><td>30.72</td><td>.32</td><td>30.37</td><td>-.68</td><td>29.49</td></tr></table>

# Volatility smile: possible explanations

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/127a34a2-2f02-44be-b1c3-431aca2f1d7a/65dd3cd8c6b1c68f6bf2947e83182f0c92899dbc2eb53bbbdee868c8f1be0d2d.jpg)

Why does the smile exist?

The market prices options using a risk-neutral distribution of log-returns with fatter tails than the Normal (excess kurtosis).

What contributes to those fat tails?

$\triangleright$  Clustering of volatility.  
Jumps introduce extreme outcomes into return distributions, especially short-term.

# Volatility skew: possible explanations in equity markets

Why's the smile skewed? (Why fatter tails on left?) Physical causes:

Negative correlation between price and instantaneous volatility. Empirically, instantaneous volatility increases as price decreases. This fattens the left tail of the distribution (negative skewness).  
$\triangleright$  Possibility of big down-jumps (crashes) also fattens the left tail.  
"The bull walks up the stairs, the bear jumps out the window."

Combined with risk preferences:

- "Supply and demand": Fear of downside leads to demand for protection/insurance, driving up the prices (hence implied vols) of OTM puts. And willingness to sell part of the upside leads (covered-) call writers to supply OTM calls, driving prices down.

# Volatility skew: possible explanations in equity markets

Why is the smile skewed? Another way to think about it:

- Implied volatility at strike  $K$  depends on the option price, which depends on expected future volatility - specifically, on expected future volatility along paths near  $K$ . Why? Future volatility along paths away from  $K$  does not help the option holder, because linear payoffs (e.g. zero, forward) are insensitive to vol. Only the convex part of the payoff brings benefits from volatility.  
- Future volatility along paths near downside strikes is likely higher than future volatility along paths near upside strikes. So by the above logic, downside-strike options should trade higher above their intrinsic lower bound than upside-strike options do.
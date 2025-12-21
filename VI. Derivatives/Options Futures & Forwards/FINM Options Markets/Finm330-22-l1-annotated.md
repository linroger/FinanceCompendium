---
title: Financial Mathematics 33000
parent_directory: VI. Derivatives/Options Futures & Forwards/FINM Options Markets
formatted: 2025-12-21 05:15:00 PM
formatter_model: grok-code-fast-1
cli_tool: claude-code
primary_tags:
   - options pricing
   - arbitrage free pricing
   - forward contracts
   - put call parity
secondary_tags:
   - call options
   - put options
   - static portfolios
   - discount bonds
   - frictionless markets
   - option bounds
   - general payoffs
cssclasses: academia
---

# Financial Mathematics 33000

## Lecture 1

Roger Lee

2022 September 28

## Introduction

General properties of arbitrage-free prices

General properties of forwards and options

## FINM 33000 and FINM 32000

I teach this course and its sequel.

Fall 2022: Option pricing theory  
Winter or Spring 2023: Computational option pricing  

- "Option pricing" is meant in a broad sense: the pricing and hedging of options and other financial derivative contracts  
A derivative security or derivative contract is a financial instrument whose payoff is defined in terms of an underlying (e.g.: A asset such as a stock or bond. An index. An interest rate.)

call option on GOOG

## The main idea

I quote from Björk's book:

A financial derivative is defined in terms of some underlying asset which already exists on the market  
A derivative cannot therefore be priced arbitrarily in relation to the underlying prices if we want to avoid mispricing between the derivative and the underlying price.  
We thus want to price the derivative in a way that is consistent with the underlying prices given by the market.  
We are not trying to compute the price of the derivative in some "absolute" sense. The idea instead is to determine the price of the derivative in terms of the market prices of the underlying assets.

## We assume frictionless markets

We will specify a set of basic tradeable assets and a set of times.

At any such time, each basic tradeable asset has a market price, and we can buy/sell/hold arbitrary quantities at that time, at that price.

In other words, assume frictionless markets. In particular,

No transaction costs: no commissions, no fees, no taxes  
No bid-ask spread. No slippage. No market impact  
No default risk. No counterparty risk  
No margin constraints  
Can hold fractional quantities of assets  

- Can sell what you do not own (sell short or go short or short), and hold a negative quantity (a short position).

## Introduction

General properties of arbitrage-free prices

General properties of forwards and options

## Assets

The market has risks described by a probability measure  $\mathsf{P}$  
It includes  $N$  tradeable assets with nonrandom time-0 prices

$$
\mathbf{X}_{0} := \left(X_{0}^{1}, \ldots , X_{0}^{N}\right)
$$

and random time-  $T$  prices ("payoffs")

$$
\mathbf{X}_{T} := \left(X_{T}^{1}, \dots , X_{T}^{N}\right)
$$

No distinction between final payment  $X_{T}$  vs. final asset price  $X_{T}$ .

In this section, no assumptions about which times  $t \in (0,T)$  exist in our market. Our general analysis applies to a one-period model (which includes only 0 and  $T$ ), continuous-time model (which includes all of  $t \in [0,T]$ ), and any intermediate model.

## Examples of tradeable assets

A zero-coupon bond or discount bond with maturity  $T$ :

Each unit pays at time  $T$  a fixed payoff, let us say  $Z_{T} = 1$ .

A non-dividend-paying stock: Each unit has time- $t$  price  $S_{t} \geq 0$ .

Can think of stock as a claim on a time- $T$  random payoff  $S_T \geq 0$ .

A bank account or money market acct: Each unit has time-  $t$  price

$$
B_{t} := \exp\left(\int_{0}^{t} r_{u} \, \mathrm{d}u\right). \quad \text{If } r \text{ is constant,} \quad B_{t} = e^{r t}
$$

for some (possibly random)  $r_u$ , called the time- $u$  instantaneous

spot rate of interest or short rate. Note:  $B$  solves the diff eq

$$
\frac{\mathrm{d} B_{t}}{\mathrm{d} t} = r_{t} B_{t} \quad \text{with} \quad B_{0} = 1.
$$

Can think of bank account as having time- $T$  payoff  $\exp (\int_0^T r_t\mathrm{d}t)$ .

## Static portfolios

A static portfolio is a vector of quantities

$$
\boldsymbol{\Theta} := (\theta^{1}, \dots , \theta^{N})
$$

where each  $\theta$  is nonrandom and constant in time.

Each  $\theta^n$  denotes the number of units of asset  $n$ , for  $n = 1, \ldots, N$ .

If  $\theta^n > 0$  we say the portfolio is long asset  $n$ .

If  $\theta^n < 0$  we say the portfolio is short asset  $n$ .

The time- $t$  value of portfolio  $\Theta$  is

$$
V_{t} := \boldsymbol{\Theta} \cdot \mathbf{X}_{t} = \theta^{1} X_{t}^{1} + \dots + \theta^{N} X_{t}^{N}
$$

If we are dealing with multiple portfolios, we may give  $V$  a superscript to indicate which portfolio.

## Arbitrage: common-language definition

Arbitrage is a combination of transactions that tries to profit from price inconsistencies. Examples:

A stock is being bid at venue A for a higher price than it is being offered at venue B. Buy it at site B, sell it at site A.  
$\triangleright$  Asset  $F$  is a combination of assets  $G$  and  $H$ , but is priced lower than the sum of the constituent prices. Buy  $F$ , sell  $G$ , sell  $H$ .  
A combination of assets is underpriced or overpriced relative to a "fair" or "predicted" value from a statistical model.

Buy or sell that combination.

In common language, "arbitrage" may involve risk of loss.

## Arbitrage: mathematical definition

A static portfolio  $\Theta$  is a "type 1" arbitrage if its value  $V$  satisfies

$$
\begin{array}{l} V_{0} = 0 \quad \text{and both:} \quad \mathsf{P}(V_{T} \geq 0) = 1 \\ \mathrm{P}(V_{T} > 0) > 0 \\ \end{array}
$$

Zero initial investment, and no risk of loss, some chance of gain.

A static portfolio  $\Theta$  is a "type 2" arbitrage if its value  $V$  satisfies

$$
V _ {0} <   0 \quad \text {a n d} \quad P (V _ {T} \geq 0) = 1
$$

(Initially receive a credit … which you will definitely not repay.)

A static portfolio  $\Theta$  is an arbitrage if it's either a type 1 or type 2 arbitrage.

## Arbitrage

▶ Prices which admit arbitrage are, in some sense, incorrect.

Existence of arbitrage is a severe form of the inconsistency and mispricing that we want to avoid.

Assume no arbitrage, unless otherwise indicated.

Thus, when we try to price some asset, we are looking for an arbitrage-free price.

Some authors define arbitrage without "type 2".

The distinction between our definition (type 1 or type 2) and their definition (type 1 only) is essentially immaterial, because:

If there exists an asset whose price is always nonnegative and not always zero, then type 1 arb exists whenever type 2 arb exists.

## Examples

A portfolio is not an arbitrage if its value satisfies:

$V_{0} = 0$  , and  $\mathsf{P}(V_T = 50) = 0.99$ $\mathsf{P}(V_T = -5) = 0.01$

If there's any chance of loss, then it's not an arbitrage.

$V_{0} = 1$  , and  $V_{T} = 2$  with probability 1.

By definition,  $V_{0} = 1$  implies the portfolio is not an arbitrage.

Initial investment is required to buy this portfolio.

$V_{0} = -2$  , and  $V_{T} = -1$  with probability 1.

This is not an arb because  $V_{T} = -1$ . Receiving 2 initially, then later paying only 1, does not necessarily lock in a gain. Because, without assumptions about interest rates, we don't know whether the initial 2 can be parked in an asset worth at least 1 at time  $T$ .

## Example

Suppose that assets  $F,G,H$  satisfy

$F_{T}\geq G_{T} + H_{T}$  with probability 1.  
$F_{0} < G_{0} + H_{0}$

Then 50 80

(1 unit of  $F, - 1$  unit of  $G, - 1$  unit of  $H$

is a type2 arbitrage. Got  $\$ 10$ at beginning*** pay

Example:  $F_{T} = G_{T} + H_{T}$  where  $F =$  bicycle,  $G =$  wheels,  $H =$  frame

Type I: (1 unit of  $F, - 1$  unit  $+ G, - 1$  unit  $+ H$  , 10 units of  $B$  )

## Absent arbitrage, prices satisfy consistency conditions

Suppose portfolio  $\Theta^a$  superreplicates portfolio  $\Theta^b$ , which means that  $\mathsf{P}(V_T^a \geq V_T^b) = 1$ . Then  $V_0^a \geq V_0^b$ , otherwise arbitrage exists.

# Proof.

If instead  $V_0^a < V_0^b$ , then construct portfolio  $\Theta \coloneqq \Theta^a - \Theta^b$ .

(In other words, go long  $\Theta^a$  and short  $\Theta^b$ .)

Its time-0 value is  $V_{0} = \Theta \cdot \mathbf{X}_{0} = \Theta^{a}\cdot \mathbf{X}_{0} - \Theta^{b}\cdot \mathbf{X}_{0} = V_{0}^{a} - V_{0}^{b} < 0$

Its time- $T$  value is  $V_{T} = V_{T}^{a} - V_{T}^{b}\geq 0$  with probability 1.

Hence  $\Theta$  is an arbitrage.

In this proof, we used a general technique for constructing arbitrage:

- Go long what is cheap (undervalued), and short what is rich (overvalued). In other words: buy low, sell high.

## The law of one price

Likewise, if  $\Theta^a$  subreplicates  $\Theta^b$ , meaning  $\mathsf{P}(V_T^a \leq V_T^b) = 1$ ,

then  $V_0^a \leq V_0^b$ . By combining the two inequalities, therefore,

$$
\left| \text {I f} P \left(V _ {T} ^ {a} = V _ {T} ^ {b}\right) = 1, \text {t h e n} V _ {0} ^ {a} = V _ {0} ^ {b}. \right.
$$

In other words, if  $\Theta^a$  replicates  $\Theta^b$ , then  $V_0^a = V_0^b$ .

This is the law of one price. Any two static portfolios with identical future payouts must have identical current prices.  
"You can summarize the essence of quantitative finance," according to Emanuel Derman, as follows:

"If you want to know the value of a security, use the price of another security [or portfolio of securities] that's as similar to it as possible."

## Price vs Value vs Payoff

- Time- $t$  price = how much it costs to buy/sell something at time  $t$ . (Exceptions: "forward price", "futures price")
- Time- $t$  value = how much it should cost to buy/sell something. Meaning of "should" depends on the context. In this course, the only notion of "should" is that arbitrage should not exist. So for us, "value" is what it costs to buy/sell something, in the absence of arbitrage. But since we have a standing assumption of no-arbitrage, we really have no distinction between price and value, unless we are in a situation where arbitrage exists (e.g. HW: "find an arbitrage").

Payoff  $=$  Payout  $=$  how much a contract pays

$$
= \text{Value of the contract at expiration (assuming single payment)}
$$

## Introduction

General properties of arbitrage-free prices

General properties of forwards and options

## Discount bond: valuation

Consider a discount bond  $Z$  maturing at  $T$ , and a bank account  $B$ .

If interest rate  $r_t$  is non-random, then

$$
B_{1} = 1.10
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
B _ {1} = e ^ {- T} \Rightarrow z _ {0} = \frac {1}{B _ {1}} = e ^ {- T}
$$

A portfolio consisting of  $1 / B_{T}$  units of the bank account has time- $T$  value  $(1 / B_{T})\times B_{T} = 1$ , which is identical to  $Z_{T} = 1$ .

In particular, if  $r$  is constant, then 1 unit of bank is identical to  $e^{rT}$  bonds, and 1 bond is identical to  $e^{-rT}$  units of the bank acct.

So the portfolios must have equal time-0 values:  $Z_{0} = (1 / B_{T}) \times 1$ .

## Forward contract: definition

Consider a random variable  $S_{T}$  whose value is revealed at time  $T$ .

A forward contract on  $S_{T}$  with maturity / delivery date  $T$  and nonrandom delivery price  $K$  obligates the holder to, at time  $T$ , pay  $K$  and receive  $S_{T}$  (dollars if "cash" settled. If "physical" settlement, you get an asset, whose time- $T$  price we denote  $S_{T}$ .)  
So the forward contract has payoff  $S_{T} - K$ . Payoff diagram:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/038b4660-68f6-4963-b7d3-8bf4990c9ea7/d276a9a36a76988c1829252cda279b11726e6d4b52b377c29b7fbb0364152e55.jpg)

Forward contract is an example of a derivative - a security whose payout is contractually related to some underlying variable.

## Forward contract: valuation

Consider a forward contract on a non-dividend-paying stock  $S$  with delivery date  $T$  and any delivery price  $K$ .

Then the time-0 value of the forward contract is  $S_0 - KZ_0$ .

## Proof.

The portfolio

$$
\Theta = (1 \text {s h a r e}, - K \text {b o n d s})
$$

has time- $T$  value  $V_{T} = \Theta_{T}\cdot \mathbf{X}_{T} = 1\times S_{T} - K\times 1 = S_{T} - K.$

The forward contract also has time- $T$  value  $S_T - K$ .

So the time-0 value of the forward contract must equal the time-0 value of the replicating portfolio, which is

## Forward price

The forward price  $F_{0}$  which sets at time 0 for delivery at time  $T$  is the delivery price such that the forward contract has zero value at time 0.

A forward price is not the same thing as the value of a forward contract.  
A forward contract on a no-dividend stock  $S$  has time-0 value

$$
S_{0} - K Z_{0}.
$$

Choice of  $K$  that makes value zero is  $S_0 / Z_0$ .

Thus  $F_0 = S_0 / Z_0$ . If  $r$  is constant, then  $F_0 = S_0 e^{rT}$ .

This does not depend on the dynamics of  $S$ .

## Forward price example

If  $r = 0.02$  and the share price today is  $S_0 = 600$ , and you and I want to enter costlessly today into a contract for time-1 delivery of  $S$  in exchange for a delivery price to be paid at time-1, the only arbitrage-free way to set that delivery price is  $600 \times e^{0.02} \approx 612$ . Even if bullish, it'd be wrong for me to agree to pay, say, 650.

- Your portfolio  $(-650$  bond, 1 share,  $-1$  forward contract) is an arbitrage because  $V_{0} = -650e^{-0.02} + 600 < 0$  and  $V_{T} = 0$ .  
Another arb:  $(-600\mathrm{bank},1$  share,  $-1$  forward contract) because  $V_{0} = 0$  and  $V_{1} = -600e^{0.02} + S_{1} - (S_{1} - 650) > 0.$

In other words, you sell me the contract, borrow 600 to buy the share today. At time 1, deliver the share, collect 650, repay 612.

## Affine payoff

More generally, consider the following "affine" (or "linear") contract on a non-dividend-paying stock  $S$ . The contract pays, by definition,

$$
a + b S_{T}
$$

where  $a$  and  $b$  are constants. Then its time-0 value is

$$
a Z _ {0} + b S _ {0}
$$

because it is replicated by

$$
(a units of bond, b units of stock)
$$

## Call option: definition

A (European-style) call option with strike  $K$  and expiry  $T$  on an underlying process  $S$ , gives the holder the right, but not obligation, at time  $T$ , to pay  $K$  and receive  $S_T$  (dollars, or asset worth  $S_T$  dollars). So call has payoff  $(S_T - K)^+$ , where  $x^+ := \max(x, 0)$ . Payoff diagram:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/038b4660-68f6-4963-b7d3-8bf4990c9ea7/c16cc4cd5f5f71c85089977804c5663719c72c35f40c743662057c30176c5308.jpg)

At time  $t \leq T$ , the call option is said to be in the money if  $S_{t} > K$  at the money if  $S_{t} = K$ , out of the money if  $S_{t} < K$ .

## Uses of call options

Why would you use a call option? Examples:

Suppose you are bullish on the underlying.

Buying the call costs  $x\%$  of the stock price, while, potentially, participating in  $y\%$  of the stock gains, where  $x < y$ .

So, compared to buying stock, buying a call can limit your downside, and/or increase your leverage.

Suppose you own the underlying. Selling a call ("call writing") trades away some upside, in exchange for current income.  
Suppose you think the options market is overpricing the call. Profit by selling the call for more than what it costs to replicate. Or profit by selling the call outright, if you have directional views.

## Call option: bounds wrt underlying

The time-0 price  $C_0$  of a call on a no-dividend stock  $S$  satisfies

$$
\left( (S_{0} - K Z_{0})^{+} \leq C_{0} \leq S_{0} \right.
$$

## Proof.

See payoff diagram:

- Call payoff dominates payoff of forward with delivery price  $K$ .  
- Call payoff dominates a zero payoff.  
$\triangleright$  Call payoff is dominated by the stock.

Hence  $C_0 \geq S_0 - KZ_0$  and  $C_0 \geq 0$  and  $C_0 \leq S_0$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/038b4660-68f6-4963-b7d3-8bf4990c9ea7/4acc7bbded03ebc8e38f1d82380b540b58ac21ed002b70bcb72f4a7993817019.jpg)

## Call option: bounds wrt other calls

The time-0 call prices  $C_0(K_1)$  and  $C_0(K_2)$ , for strikes  $K_1 < K_2$  (with same expiry, on same underlying) satisfy

$$
0 \leq C_{0}(K_{1}) - C_{0}(K_{2}) \leq (K_{2} - K_{1}) Z_{0}
$$

# Proof.

Consider a bull call spread, long the  $K_{1}$  call, short the  $K_{2}$  call.

The call spread payoff dominates the zero payoff, but is dominated by the payoff of  $K_{2} - K_{1}$  discount bonds. Payoff diagram:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/038b4660-68f6-4963-b7d3-8bf4990c9ea7/32e5e78538d489afd53121cee64303f0fc7b9d80e9b2d5bdb67baffc243bdb4b.jpg)

So  $C_0(K_1) - C_0(K_2)$  is bounded below by the time-0 value of zero, above by the time-0 value of  $K_2 - K_1$  bonds.

## Put option: definition

A (European-style) put option with strike  $K$  and expiry  $T$  on an underlying process  $S$ , gives the holder the right, but not obligation, at time  $T$  to pay  $S_T$  (dollars, or asset worth  $S_T$  dollars) and receive  $K$ . So put has payoff  $(K - S_T)^+$ . Payoff diagram:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/038b4660-68f6-4963-b7d3-8bf4990c9ea7/4a1a63d26a0b74920e37de124cd93d33668769fe7d8fcc644b734a1ac3f16c26.jpg)

At time  $t \leq T$ , the put option is said to be in the money if  $S_{t} < K$  at the money if  $S_{t} = K$ , out of the money if  $S_{t} > K$ .

## Uses of put options

Why would you use a put option? Examples:

Suppose you are bearish on the underlying.

Buying a put limits your potential loss to the cost of the option.

(Shorting stock exposes you to unlimited loss.)

Suppose you own the underlying. Buying a put protects you against the underlying going below  $K$ . It's insurance.  
Suppose you think the options market is overpricing the put. Profit by selling the put for more than what it costs to replicate. Or sell the put outright, if you have a directional view.

## Put-call parity

Let  $P_0(K, T)$  and  $C_0(K, T)$  be time-0 prices of a European put and call, with identical  $(K, T)$ , on a no-dividend stock  $S$ . Let  $Z_0(T)$  be the time-0 price of a  $T$ -maturity discount bond. Then

$$
C_{0}(K, T) = P_{0}(K, T) + S_{0} - K Z_{0}(T)
$$

Proof.

Payoff diagram:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/038b4660-68f6-4963-b7d3-8bf4990c9ea7/4804bc2a4a1506686d0d54361da52b1649525331e751deef2e959af910b0093f.jpg)

Payoffs are equal, hence prices at earlier date are equal.

```d2
Put Call Parity: {
  shape: rectangle
  label: C - P = S - K Z_0

  Call: C
  Put: P
  Stock: S
  Bond: K Z_0

  Call -- Put: Difference
  Stock -- Bond: Difference
}
```

## When was put-call parity discovered?

It's in Confusion de Confusiones (1688) by José de la Vega

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/038b4660-68f6-4963-b7d3-8bf4990c9ea7/91d59c4ad04e093412dce579a0be08c6b381e113e487074379a5a8284e9eb057.jpg)  
JOSDELA VIGA 145-492

Put-call parity is far older, and more fundamental, than any particular model e.g. Black-Scholes (1973)

## Put option: bounds wrt underlying, and wrt other puts

The time-0 price of a put on a non-dividend-paying stock  $S$  satisfies

$$
\left( (K Z_{0} - S_{0})^{+} \leq P_{0} \leq K Z_{0} \right.
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/038b4660-68f6-4963-b7d3-8bf4990c9ea7/6346a140491ba63854416c956f745e8a2814985963c7968afd1452c3c5a1d336.jpg)

The time-0 put prices  $P_0(K_1)$  and  $P_0(K_2)$ , for strikes  $K_1 < K_2$  (with same expiry, on same underlying) satisfy

$$
0 \leq P_{0}(K_{2}) - P_{0}(K_{1}) \leq (K_{2} - K_{1}) Z_{0}.
$$

Proof.

Compare payoffs. Or use put-call parity.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/038b4660-68f6-4963-b7d3-8bf4990c9ea7/490580043c788e04dc82e96421ef7374d68004ec6e3be1105267b5c58382dd09.jpg)

## Put option: bounds wrt other puts, revisited

If  $K_{1} < K_{2}$  then  $P_{0}(K_{1}) \leq P_{0}(K_{2})$ . Proof by comparing payoffs:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/038b4660-68f6-4963-b7d3-8bf4990c9ea7/b108ad77ebe5a5d45fc209e887ce6df86a4faee0923a3f2d7c5362fdc7ee5f2c.jpg)

Better yet,

$$
P_{0}(K_{1}) \leq \frac{K_{1}}{K_{2}} P_{0}(K_{2})
$$

## General payoffs

Using static positions in  $T$ -expiry bonds, forwards, calls, and puts on  $S$ , we can replicate or bound (superreplicate, subreplicate) general functions of  $S_T$ .

$\triangleright$  Use bonds to adjust level.  
$\triangleright$  Use forwards (or perhaps  $S$  itself) to adjust slope.  
$\triangleright$  Use calls (or puts) to adjust convexity and concavity.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/038b4660-68f6-4963-b7d3-8bf4990c9ea7/02f28bfdc375a58e51ee36b364c133732ab76e0b643cfdec30638eb36577d578.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/038b4660-68f6-4963-b7d3-8bf4990c9ea7/26d85f4c075bb188a0d740795caf7ea04565bcf56e1559aaa0bd007d4075eef0.jpg)

3 units of bond,  
+0.5 units of stock 8  
-4.5 units of K1-strike call  
+3 units of K2-strike call  
+3.5 units of K3-strike call  
-2.5 units of K4-strike call

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/038b4660-68f6-4963-b7d3-8bf4990c9ea7/41a189fed009c7b1d1e14bee35237469a8d3065ef4c050bb2d52d6337ad89134.jpg)

## GOOG option quotes

2.7 units of bond  
-2.5 units of K4-strike put  
+3.5 units of K3-strike put  
+3 units of K2-strike put  
-4.5 units of K1-strike put

<table><tr><td colspan="9">Calls</td><td>Strike</td><td colspan="7">Puts</td><td></td></tr><tr><td>Ticker</td><td>Bid</td><td>Ask</td><td>Last</td><td>IVM</td><td>DM</td><td>Voll</td><td>Oint</td><td></td><td></td><td>Ticker</td><td>Bid</td><td>Ask</td><td>Last</td><td>IVM</td><td>DM</td><td>Voll</td><td>Oint</td></tr><tr><td>19 Apr 14 (10D): CSize 10D:</td><td colspan="7">IDiv.77; R.12:</td><td>19</td><td>Apr 14 (10D): CSize 10D:</td><td colspan="7">IDiv.77; R.12:</td><td></td></tr><tr><td>1)GOOG 4 C510</td><td>48.20</td><td>50.80</td><td>50.00</td><td>58.97</td><td>.84</td><td>2</td><td>34</td><td>510.00</td><td>8)GOOG 4 P510</td><td>3.20</td><td>3.60</td><td>3.08</td><td>55.30</td><td>-14</td><td>69</td><td>203</td><td></td></tr><tr><td>2)GOOG 4 C515</td><td>43.70</td><td>46.80</td><td>43.00y</td><td>57.94</td><td>.82</td><td>37</td><td>37</td><td>515.00</td><td>9)GOOG 4 P515</td><td>4.10</td><td>4.40</td><td>4.24</td><td>55.20</td><td>-17</td><td>28</td><td>304</td><td></td></tr><tr><td>3)GOOG 4 C520</td><td>39.00</td><td>46.40</td><td>44.40</td><td>53.44</td><td>.81</td><td>11</td><td>35</td><td>520.00</td><td>8)GOOG 4 P520</td><td>4.90</td><td>5.30</td><td>4.90</td><td>54.18</td><td>-20</td><td>13</td><td>485</td><td></td></tr><tr><td>4)GOOG 4 C525</td><td>36.20</td><td>37.70</td><td>40.00</td><td>55.38</td><td>.76</td><td>1</td><td>58</td><td>525.00</td><td>9)GOOG 4 P525</td><td>6.00</td><td>6.40</td><td>6.14</td><td>53.70</td><td>-23</td><td>27</td><td>163</td><td></td></tr><tr><td>5)GOOG 4 C530</td><td>32.40</td><td>33.50</td><td>34.00</td><td>54.21</td><td>.73</td><td>1</td><td>76</td><td>530.00</td><td>8)GOOG 4 P530</td><td>7.10</td><td>7.70</td><td>7.05</td><td>52.96</td><td>-27</td><td>14</td><td>183</td><td></td></tr><tr><td>6)GOOG 4 C535</td><td>28.90</td><td>29.80</td><td>30.56</td><td>53.31</td><td>.69</td><td>45</td><td>73</td><td>535.00</td><td>8)GOOG 4 P535</td><td>8.70</td><td>9.10</td><td>7.80</td><td>52.84</td><td>-30</td><td>45</td><td>348</td><td></td></tr><tr><td>7)GOOG 4 C540</td><td>25.60</td><td>26.50</td><td>27.52</td><td>53.30</td><td>.65</td><td>12</td><td>214</td><td>540.00</td><td>8)GOOG 4 P540</td><td>10.40</td><td>10.80</td><td>9.91</td><td>52.60</td><td>-35</td><td>26</td><td>249</td><td></td></tr><tr><td>8)GOOG 4 C545</td><td>22.50</td><td>23.30</td><td>23.70</td><td>52.81</td><td>.61</td><td>18</td><td>168</td><td>545.00</td><td>8)GOOG 4 P545</td><td>12.10</td><td>12.70</td><td>12.30</td><td>51.82</td><td>-39</td><td>17</td><td>148</td><td></td></tr><tr><td>9)GOOG 4 C550</td><td>19.60</td><td>20.20</td><td>20.00</td><td>52.13</td><td>.56</td><td>168</td><td>358</td><td>550.00</td><td>8)GOOG 4 P550</td><td>14.30</td><td>14.80</td><td>13.80</td><td>51.63</td><td>-44</td><td>84</td><td>155</td><td></td></tr><tr><td>10)GOOG 4 C555</td><td>17.00</td><td>17.50</td><td>17.95</td><td>51.84</td><td>.52</td><td>192</td><td>256</td><td>555.00</td><td>8)GOOG 4 P555</td><td>16.60</td><td>17.10</td><td>16.50</td><td>51.18</td><td>-48</td><td>41</td><td>159</td><td></td></tr><tr><td>11)GOOG 4 C560</td><td>14.60</td><td>15.00</td><td>15.41</td><td>51.29</td><td>.47</td><td>472</td><td>694</td><td>560.00</td><td>8)GOOG 4 P560</td><td>19.20</td><td>19.70</td><td>18.61</td><td>51.09</td><td>-53</td><td>101</td><td>113</td><td></td></tr><tr><td>12)GOOG 4 C565</td><td>12.40</td><td>13.00</td><td>13.14</td><td>51.28</td><td>.43</td><td>115</td><td>321</td><td>565.00</td><td>8)GOOG 4 P565</td><td>21.80</td><td>22.50</td><td>20.50</td><td>50.64</td><td>-58</td><td>1</td><td>29</td><td></td></tr><tr><td>13)GOOG 4 C570</td><td>10.50</td><td>10.70</td><td>10.51</td><td>50.74</td><td>.38</td><td>154</td><td>652</td><td>570.00</td><td>8)GOOG 4 P570</td><td>24.90</td><td>25.70</td><td>23.82</td><td>50.26</td><td>-62</td><td>1</td><td>51</td><td></td></tr><tr><td>14)GOOG 4 C575</td><td>8.80</td><td>9.20</td><td>9.20</td><td>50.26</td><td>.34</td><td>244</td><td>317</td><td>575.00</td><td>8)GOOG 4 P575</td><td>28.00</td><td>28.80</td><td>31.60</td><td>49.87</td><td>-67</td><td>8</td><td>8</td><td></td></tr><tr><td>15)GOOG 4 C580</td><td>7.30</td><td>7.80</td><td>7.50</td><td>50.28</td><td>.30</td><td>124</td><td>431</td><td>580.00</td><td>8)GOOG 4 P580</td><td>31.40</td><td>32.30</td><td>29.10</td><td>49.19</td><td>-71</td><td>11</td><td>47</td><td></td></tr><tr><td>16)GOOG 4 C585</td><td>5.90</td><td>6.30</td><td>6.43</td><td>50.02</td><td>.25</td><td>28</td><td>211</td><td>585.00</td><td>8)GOOG 4 P585</td><td>34.80</td><td>36.00</td><td>38.00</td><td>48.78</td><td>-75</td><td>11</td><td>11</td><td></td></tr><tr><td>17)GOOG 4 C590</td><td>4.80</td><td>5.30</td><td>5.07</td><td>50.20</td><td>.22</td><td>71</td><td>333</td><td>590.00</td><td>8)GOOG 4 P590</td><td>37.70</td><td>40.20</td><td>36.23</td><td>46.97</td><td>-80</td><td>8</td><td>21</td><td></td></tr><tr><td>18)GOOG 4 C595</td><td>3.90</td><td>4.40</td><td>4.15</td><td>50.05</td><td>.19</td><td>91</td><td>136</td><td>595.00</td><td>8)GOOG 4 P595</td><td>41.60</td><td>44.10</td><td>40.20</td><td>44.85</td><td>-84</td><td>8</td><td>13</td><td></td></tr><tr><td>19)GOOG 4 C600</td><td>3.20</td><td>3.60</td><td>3.39</td><td>49.94</td><td>.16</td><td>80</td><td>837</td><td>600.00</td><td>8)GOOG 4 P600</td><td>45.90</td><td>48.30</td><td>63.95y</td><td>44.80</td><td>-87</td><td>1</td><td>35</td><td></td></tr><tr><td colspan="8">17 May 14 (38d): CSize 10D: IVF d556.62</td><td>19</td><td colspan="8">May 14 (38d): CSize 10D: IVF d556.22</td><td></td></tr><tr><td colspan="8">20) GOOG 5 C510 52.10 54.80 51.30 36.10 .79</td><td>15</td><td colspan="8">May 14 (38d): CSize 10D: IVF d556.20</td><td></td></tr></table>
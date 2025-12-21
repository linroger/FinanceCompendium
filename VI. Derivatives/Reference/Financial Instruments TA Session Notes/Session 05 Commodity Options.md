---
title: Commodity Options
parent_directory: Financial Instruments TA Session Notes
formatted: 2025-12-20 6:15:00 PM
formatter_model: claude-sonnet-4
cli-tool: opencode
primary_tags:
  - commodity options
  - hedging strategies
  - option pricing
secondary_tags:
  - jet fuel hedging
  - collar strategy
  - insurance strategy
  - risk management
  - energy derivatives
cssclasses: academia
---

# Commodity Options

## 1. Commodity Price Hedging Using Options

**1.1. Assumptions**

1. Date at which option can be exercised versus date at which commodity is needed.
2. Pass through of change in oil price to a change in jet fuel price.
3. Rate of conversion between 1 barrel of oil and 1 barrel of jet fuel.

**1.2. Options Under a Straight Insurance Strategy**

1. Parameters.

a. Annual jet fuel consumption in gallons: $C>0$.

b. Hedge percentage: $x\in[0,1]$.

c. Strike price on call option for oil: $P>0$.

2. Implicit short position: Since Southwest consumes jet fuel in the future, it has an implicit short position on jet fuel. Thus, if jet fuel prices rise in the future, then Southwest makes a loss. Conversely, if jet fuel prices fall, then Southwest makes a profit.

**1.2.1. Determining Number of Options**

3. Compute hedge jet fuel quantity in barrels for Q1 in 2008.

$$
H (C, x) = C \cdot \frac {1}{4} \cdot x \cdot \frac {1}{4 2}
$$

4. Takeaway: If the oil price per barrel increases by $Δ between December 31, 2007, and March 31, 2008, then Southwest makes a loss of $Δ on each barrel that is hedged. Given a hedge position comprising H(C,x) barrels, Southwest makes a loss of $H(C,x)·Δ.
5. The role of options: Options provide a hedge against changes in the oil price per barrel.
6. Payoff from option: Given a call option on oil with a strike price P, if the oil price per barrel rises to (P + Δ), then each option yields a profit of \$1,000·Δ since each option trades on one lot of 1,000 oil barrels. What is the profit from the call option if the oil price per barrel falls to $(P-Δ)$?

7. Optimal number of options: The optimal number of options is that which, if the oil price per barrel rises by 1 USD between December 31, 2007, and March 31, 2008, then Southwest will make a profit of 1 USD on each barrel that is hedged.

$$
\underbrace{N\cdot1000\cdot\Delta}_{\text{Profit on Portion}} = \underbrace{H(C,x)\cdot\Delta}_{\text{Loss from Implicit Short Position}}
$$

Does the optimal number of options N depend on the USD change in the oil price per barrel given by $Δ$?

8. Relaxing pass-through price assumption: Suppose a $Δ change in the oil price per barrel induces a $y · Δ change in the jet fuel price per barrel, where y > 1. The optimal number of options satisfies the following equation.

$$
N\cdot1000\cdot\Delta = H\cdot y\cdot\Delta
$$

**1.2.2. Evaluating Performance of Options**

1. Suppose a $Δ$ change in the oil price per barrel induces a $y·Δ$ change in the jet fuel price per barrel, where $y>1$. Suppose one purchases options assuming the pass-through is one-for-one. What is the expected profit or loss from this strategy?
2. Number options assuming one-for-one pass-through.

$$
N^{(1)} = \frac{H(C,x)}{1000}
$$

3. Number of options assuming actual pass-through. Note that $N^{(2)}>N^{(1)}$ since $y>1$.

$$
N ^ {(2)} = \frac {H (C , x) \cdot y}{1 0 0 0}
$$

4. Given the implicit short position, the expected loss on each barrel that is hedged from a $Δ change in the oil price per barrel is $H(C, x) · y · Δ. Are the number of options N(1) sufficient to offset this loss?

# 1.3. Options Under a Collar Strategy

# 1.3.1. Determining Zero Cost Collar Strategy (Part I)

1. **Positions:** A collar strategy requires selling a put option (short) to finance buying a call option (long).
2. Zero-cost: Let  $c(P) > 0$  denote option price as a function of the strike price. Given a target strike price  $P_{c} > 0$  for the call option, the optimal choice of the strike price  $P_{p} > 0$  is that which yields a zero net payoff.

$$
c (P _ {p}) - c (P _ {c}) = 0
$$

# 1.3.2. Determining Zero Cost Collar Strategy (Part II)

1. Suppose instead one chooses a strike price for the put option. To satisfy the zero-cost at inception, one must determine the number of put options that satisfies zero-cost.
2. Recall the number of call options that exactly offsets the loss from the implicit short position.

$$
\underbrace {N _ {c} \cdot 1 0 0 0 \cdot \Delta} _ {\text {P r o f i t o n C a l l O p t i o n}} = \underbrace {H (C , x) \cdot \Delta} _ {\text {L o s s f r o m I m p l i c i t S h o r t P o s i t i o n}}
$$

3. Given a strike price  $P_{c}$  for the call option and a strike price  $P_{p}$  for the put option, determine the number of put options  $N_{p}$ .

$$
N _ {c} \cdot P _ {c} = N _ {p} \cdot P _ {p}
$$

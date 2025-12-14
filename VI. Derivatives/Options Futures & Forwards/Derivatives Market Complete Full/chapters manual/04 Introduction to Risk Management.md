---
title: "Chapter 4 - Introduction to Risk Management"
aliases:
  - Introduction to Risk Management
parent_directory: Derivatives Market Complete Full/chapters manual
cssclasses: academia
---

# Introduction to Risk Management

Business, like life, is inherently risky. Firms convert inputs such as labor, raw materials, and machines into goods and services. A firm is profitable if the cost of what it produces exceeds the cost of the inputs. Prices can change, however, and what appears to be a profitable activity today may not be profitable tomorrow. Many instruments are available that permit firms to hedge various risks, ranging from commodity prices to weather. A firm that actively uses derivatives and other techniques to alter its risk and protect its profitability is engaging in risk management. In this chapter we take a look at how derivatives—such as forwards, calls, and puts—are used in practice to manage risk.

We begin by examining two hypothetical firms—Golddiggers, a gold-mining firm, and Auric Enterprises, a manufacturer using gold as an input—to see what risks they face and to demonstrate the use of derivatives strategies to manage those risks. After looking at these examples, we will explore some reasons firms seek to manage risk in the first place.

# I. BASIC RISK MANAGEMENT: THE PRODUCER'S PERSPECTIVE

Golddiggers is a gold-mining firm planning to mine and sell 100,000 ounces of gold over the next year. For simplicity, we will assume that they sell all of the next year's production precisely 1 year from today, receiving whatever the gold price is that day. The price of gold today is  $405/oz$ . We will ignore production beyond the next year.

Obviously Golddiggers—like any producer—hopes that the gold price will rise over the next year. However, Golddiggers's management computes estimated net income for a range of possible prices of gold in 1 year (Table 1). The net income calculation shows that Golddiggers's profit is affected by gold prices.

Should Golddiggers simply shut the mine if gold prices fall enough to make net income negative? The answer depends on the extent to which costs are fixed. The firm incurs the fixed cost whether or not it produces gold. Variable costs are incurred only if the mine operates. Thus, for any gold price above the variable cost of  $50/oz$ , it will make sense to produce gold.

Golddiggers's estimated net income 1 year from today, unhedged.

TABLEI

<table><tr><td>Gold Price in One Year</td><td>Fixed Cost</td><td>Variable Cost</td><td>Net Income</td></tr><tr><td>$350</td><td>–$330</td><td>–$50</td><td>–$30</td></tr><tr><td>$400</td><td>–$330</td><td>–$50</td><td>$20</td></tr><tr><td>$450</td><td>–$330</td><td>–$50</td><td>$70</td></tr><tr><td>$500</td><td>–$330</td><td>–$50</td><td>$120</td></tr></table>

Golddiggers's net income 1 year from today, hedged with a forward sale of gold.

TABLE 2

<table><tr><td>Gold Price in One Year</td><td>Fixed Cost</td><td>Variable Cost</td><td>Profit on Short Forward</td><td>Net Income on Hedged Position</td></tr><tr><td>$350</td><td>–$330</td><td>–$50</td><td>$70</td><td>$40</td></tr><tr><td>$400</td><td>–$330</td><td>–$50</td><td>$20</td><td>$40</td></tr><tr><td>$450</td><td>–$330</td><td>–$50</td><td>–$30</td><td>$40</td></tr><tr><td>$500</td><td>–$330</td><td>–$50</td><td>–$80</td><td>$40</td></tr></table>

# Hedging with a Forward Contract

Golddiggers can lock in a price for gold in 1 year by entering into a short forward contract, agreeing today to sell its gold for delivery in 1 year. Suppose that gold to be delivered in 1 year can be sold today for 420/oz and that Golddiggers agrees to sell forward all of its gold production. We will assume in all examples that the forward contract settles financially. As noted earlier, the payoff to a forward is the same with physical or financial settlement.

Profit calculations when Golddiggers is hedged are summarized in Table 2. This table adds the profit on the forward contract to net income from Table 1. Figure 1 contains three curves showing the following:

- Unhedged profit: Since cost is  $380/oz, the line labeled "unhedged seller" shows zero profit at$ 380, a loss at lower prices, and profit at higher prices. For example, at

# FIGURE I

Producer profit in 1 year, assuming hedging with a short forward contract at a forward price of 420/oz.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/7c5cef856db81aea6e1f9e48994d1aa6ddbf3ddc407c682a2c8b67519d521231.jpg)

$420, profit is$ 40/oz. Since it has gold in the ground, Golddiggers has a long position in gold.

- Profit on the short forward position: The "short gold forward" line represents the profit from going short the gold forward contract at a forward price of  $420/oz. We profit from locking in the price if prices are lower than$ 420, and we lose if prices are higher.
- Hedged profit: The line labeled "hedged seller" is the sum of the other two lines, adding them vertically at every gold price. It is flat at 40/oz, as we would expect from Table 2. A quick way to add the lines together is to notice that the "unhedged seller" graph has a positive slope of 1, and the "short gold forward" graph has a slope of -1. Added together vertically, the two graphs will have a slope of 0, so the only question is the height of the line. A profit calculation at a single point tells us that it must be at 40/oz.

# Insurance: Guaranteeing a Minimum Price with a Put Option

A possible objection to hedging with a forward contract is that if gold prices do rise, Golddiggers will still receive only $420/oz; there is no prospect for greater profit. Gold insurance—i.e., a put option—provides a way to have higher profits at high gold prices while still being protected against low prices. Suppose that the market price for a 420-strike put is $8.77/oz. This put provides a floor on the price.

TABLE 3

Golddiggers's net income 1 year from today, hedged with a 420-strike put option.

<table><tr><td>Gold Price in One Year</td><td>Fixed Cost</td><td>Variable Cost</td><td>Profit on Put Option</td><td>Net Income</td></tr><tr><td>$350</td><td>–$330</td><td>–$50</td><td>$60.79</td><td>$30.79</td></tr><tr><td>$400</td><td>–$330</td><td>–$50</td><td>$10.79</td><td>$30.79</td></tr><tr><td>$450</td><td>–$330</td><td>–$50</td><td>–$9.21</td><td>$60.79</td></tr><tr><td>$500</td><td>–$330</td><td>–$50</td><td>–$9.21</td><td>$110.79</td></tr></table>

# FIGURE 2

Comparison of unhedged position, 420-strike put option, and unhedged position plus 420-strike put.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/c72ae589d6e177680afff9bc3fdd824e66df4f056c8eb3829e81e8d589012ab4.jpg)

Profit ($)

Since the put premium is paid 1 year prior to the option payoff, we must take into account interest cost when we compute profit in 1 year. The future value of the premium is 8.77 \times 1.05 = \9.21. As with the forward contract, we assume financial settlement, although physical settlement would yield the same net income.

Table 3 shows the result of buying this put. If the price is less than  $420, the put is exercised and Golddiggers sells gold for$ 420/oz. less the cost of the put. This gives net income of $30.79. If the price is greater than $420, Golddiggers sells gold at the market price.

The insurance strategy—buying the put—performs better than shorting the forward if the price of gold in 1 year is more than 429.21. Otherwise the short forward outperforms insurance. Figure 2 shows the unhedged position, profit from the put by itself, and the result of hedging with the put.

# FIGURE 3

Comparison of payoffs for Golddiggers hedged with a forward contract and hedged with a put option.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/f18ebeeef32dbcc03e967a0e67c1916b367ebede40abd360fbdfdc10c838de74.jpg)

What this analysis does not address is the probability that the gold price in 1 year will be in different regions; that is, how likely is it that the gold price will exceed  $429.21? The price of the put option implicitly contains information about the likelihood that the gold price will exceed$ 420, and by how much. The probability distribution of the gold price is a key factor determining the pricing of the put.

Figure 3 compares the profit from the two protective strategies we have examined: Selling a forward contract and buying a put. As you would expect, neither strategy is clearly preferable; rather, there are trade-offs, with each contract outperforming the other for some range of prices.

The fact that no hedging strategy always outperforms the other will be true of all fairly priced strategies. In practice, considerations such as transaction costs and market views are likely to govern the choice of a strategy. Box 1 discusses oil hedging by Mexico, and the attendant political risks of such a strategy.

# Insuring by Selling a Call

With the sale of a call, Golddiggers receives a premium, which reduces losses, but the written call limits possible profits. One can debate whether this really constitutes insurance, but our goal is to see how the sale of a call affects the potential profit and loss for Golddiggers.

Suppose that instead of buying a put, Golddiggers sells a 420-strike call and receives an 8.77 premium. Golddiggers in this case would be said to have sold a cap.

Figure 4 shows the profit to this strategy. If we compute the actual profit 1 year from today, we see that if the gold price in 1 year exceeds 420, Golddiggers will show profits of

$$
\$ 420 + \$ 9.21 - \$ 380 = \$ 49.21
$$

That is, Golddiggers sells gold for $420 (since the written call is exercised by the holder), receives the future value of the premium, and has a cost of $380. If the price of

# BOX I: Mexico's Oil Hedge

Mexico is one of the world's largest oil producers and its economic well-being is affected by the price of oil. Mexico has been unusual among governments in hedging commodity prices (Blas and Thomson, 2008):

Mexico is taking steps to protect itself from the oil price remaining below 70 a barrel in the clearest sign yet of the concerns of producer countries at the impact of the global economic slowdown on their revenues.

The world's sixth biggest oil producer hedged almost all of next year's oil exports at prices ranging from  $70 to$ 100 at a cost of about 1.5bn through derivatives contracts, according to bankers familiar with the deal.

The cover is far higher than the country—which relies on oil for up to 40 per cent of government revenue—usually seeks. Last year, Mexico hedged 20-30 per cent of its exports.

Mexico's finance ministry declined to comment but said in its latest quarterly report that its oil income stabilisation fund spent about 1.5bn on "financial investments, as part of the measures taken for risk management."

Oil prices hit an all-time high of  $147.27 a barrel in July but have since fallen to less than$ 65 as the global economy cools.

Global investment banks were counterparties for Mexico's trades, which earned it 5 billion. In 2009 Mexico also hedged its 2010 net exposure of 230 million barrels at an average price of 57/barrel (Williams, 2009).

Governments that hedge commodity price exposure face political risk (Blas, 2009):

"Very few government officials of commodity-exporting countries are secure enough in their jobs to place a bet on the future level of commodity prices," wrote the oil economist Philip K. Verleger …

Such political fears were plainly exposed when the state of Alaska discussed whether to hedge its oil income in 2002. The state's department of revenues warned that policymakers would "be reluctant to take the political risks" of a hedging programme.

"If a programme succeeded, it is unlikely the policymakers who took the initiative to create the programme would be rewarded with public congratulations," the report said. "On the other hand, if the state lost significant sums … the conventional wisdom is that public criticism would be harsh," it concluded.

The political risk also explains why the few countries or states that have launched sovereign oil hedging including Mexico and, in the past, Ecuador, Colombia, Algeria, Texas and Louisiana, have made use of put options—an insurance policy that sets a price floor without giving away any potential upside—rather than futures that fix a price.

Based on Blas & Thomas 2008, Williams 2009 gold is less than 420, Golddiggers will make

$$
P _ {g} + \$ 9. 2 1 - \$ 3 8 0
$$

On the downside, Golddiggers has exposure to gold but keeps the option premium.

By writing the call, Golddiggers keeps the $8.77 call premium and 1 year later makes $9.21 more than an unhedged gold seller. On the other hand, if the gold price exceeds $420, the call is exercised and the price Golddiggers receives is capped at $420. Thus, for gold prices above 429.21, an unhedged strategy has a higher payoff than that of writing a 420-

# FIGURE 4

Comparison of Golddiggers hedging with sale of 420-strike call versus unhedged.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/bf3d332f4e9b25877d41ce8cd5f263c3ec4c19aadf89ab0e42f884f6a4ab0c8c.jpg)

Profit ($) strike call. Also, for prices below 410.79, being fully hedged is preferable to having sold the call.

# Adjusting the Amount of Insurance

Consider again Golddiggers's strategy of obtaining insurance against a price decline by purchasing a put option. A common objection to the purchase of insurance is that it is expensive. Insurance has a premium because it eliminates the risk of a large loss, while allowing a profit if prices increase. The cost of insurance reflects this asymmetry.

There are at least two ways to reduce the cost of insurance:

- Reduce the insured amount by lowering the strike price of the put option.
- Sell some of the gain.

Both of these strategies reduce the asymmetry between gains and losses, and hence lower the cost of insurance. The first strategy, lowering the strike price, permits some additional loss, while the second, selling some of the gain, puts a cap on the potential gain.

Reducing the strike price lowers the amount of insurance; therefore, the put option will have a lower premium. Figure 5 compares profit diagrams for Golddiggers's hedging using put options with strikes of  $400 (premium =$ 2.21), $420 (premium = $8.77), and $440 (premium = $21.54). The 400-strike, low-premium option yields the highest profit if insurance is not needed (the price is high) and the lowest profit if insurance is needed (the price is low). The 440-strike, high-premium option yields the lowest profit if insurance is not needed, and the highest profit if insurance is needed.

The manager's view of the market and willingness to absorb risk will undoubtedly influence the choice among these alternatives. Managers optimistic about the price of gold will opt for low-strike-price puts, whereas pessimistic managers will more likely choose high-strike puts. While corporations per se may not be risk-averse, managers may be. Also,

# FIGURE 5

Comparison of profit for Golddiggers using three different put strikes.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/6f7afe9eb8e5a6f68ccb0ed219750359b204f45a3d96b5d78f17ddc92500b5d6.jpg) some managers may perceive losses to be costly in terms of the public's perception of the firm or the boss's perception of them.

This problem of choosing the appropriate strike price is not unique to corporate risk management. Safe drivers and more careful homeowners often reduce premiums by purchasing auto and homeowner's insurance with larger deductibles. This reflects their proprietary view of the likelihood that the insurance will be used. One important difference between gold insurance and property insurance, however, is that poor drivers would like smaller deductibles for their auto insurance; this differential demand by the quality of the insured is called adverse selection and is reflected in the premiums for different deductibles. A driver known to be good would face a lower premium for any deductible than a driver known to be bad. With gold, however, the price of the put is independent of who is doing the buying.

# 2. BASIC RISK MANAGEMENT: THE BUYER'S PERSPECTIVE

Auric Enterprises is a manufacturer of widgets, a product that uses gold as an input. We will suppose for simplicity that the price of gold is the only uncertainty Auric faces. In particular, we assume that

- Auric sells each widget for a fixed price of 800, a price known in advance.
- The fixed cost per widget is 340.

TABLE 4

Auric estimated net income, unhedged, 1 year from today.

<table><tr><td>Revenue per Widget</td><td>Gold Price in 1 Year</td><td>Fixed Cost</td><td>Variable Cost</td><td>Net Income</td></tr><tr><td>$800</td><td>$350</td><td>$340</td><td>$0</td><td>$110</td></tr><tr><td>$800</td><td>$400</td><td>$340</td><td>$0</td><td>$60</td></tr><tr><td>$800</td><td>$450</td><td>$340</td><td>$0</td><td>$10</td></tr><tr><td>$800</td><td>$500</td><td>$340</td><td>$0</td><td>—$40</td></tr></table>

- The manufacture of each widget requires 1 oz of gold as an input.
- The nongold variable cost per widget is zero.
- The quantity of widgets to be sold is known in advance.

Because Auric makes a greater profit if the price of gold falls, Auric's gold position is implicitly short. As with Golddiggers, we will examine various risk-management strategies for Auric. The pro forma net income calculation for Auric is shown in Table 4.

# Hedging with a Forward Contract

The forward price is 420 as before. Auric can lock in a profit by entering into a long forward contract. Auric thereby guarantees a profit of

$$
\text {P r o f i t} = \$ 8 0 0 - \$ 3 4 0 - \$ 4 2 0 = \$ 4 0
$$

Note that whereas Golddiggers was selling in the forward market, Auric is buying in the forward market. Thus, Golddiggers and Auric are natural counterparties in an economic sense. In practice, they need not be direct counterparties since they can enter into forward contracts through dealers or on exchanges. But in an economic sense, one firm's desire to sell forward has a counterpart in the other's desire to buy forward.

Figure 6 compares the profit diagrams for the unhedged buyer and a long forward position in gold. It also shows the profit for the hedged buyer, which is generated by summing up the forward position and the unhedged payoff. We see graphically that the buyer can lock in a profit of 40/oz.

# Insurance: Guaranteeing a Maximum Price with a Call Option

Rather than lock in a price unconditionally, Auric might like to pay $420/oz if the gold price is greater than $420/oz but pay the market price if it is less. Auric can accomplish this by buying a call option. As a future buyer, Auric is naturally short; hence, a call is insurance. Suppose the call has a premium of $8.77/oz (recall that this is the same as the premium on the put with the same strike price). The future value of the premium is $8.77 × 1.05 = 9.21.

If Auric buys the insurance contract, net income on the hedged position will be as shown in Table 5. If the price is less than 420, the call is worthless at expiration and Auric

# FIGURE 6

Profit diagrams for unhedged buyer, long forward, and buyer hedged with long forward.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/e47d21728a01da7d0cd36958b98ea94195b5b5aae169ad3ecf61cc5d4ea8e7f5.jpg)

TABLE 5

Auric net income 1 year from today, hedged with 420-strike call option.

<table><tr><td>Gold Price in 1 Year</td><td>Unhedged Net Income from Table 4</td><td>Profit on Call Option</td><td>Net Income</td></tr><tr><td>$350</td><td>$110</td><td>–$9.21</td><td>$100.79</td></tr><tr><td>$400</td><td>$60</td><td>–$9.21</td><td>$50.79</td></tr><tr><td>$450</td><td>$10</td><td>$20.79</td><td>$30.79</td></tr><tr><td>$500</td><td>–$40</td><td>$70.79</td><td>$30.79</td></tr></table> buys gold at the market price. If the price is greater than $420, the call is exercised and Auric buys gold for $420/oz, less the cost of the call. This gives a profit of 30.79.

If the price of gold in 1 year is less than $410.79, insuring the price by buying the call performs better than locking in a price of $420. At low prices, the option permits us to take advantage of lower gold prices. If the price of gold in 1 year is greater than $410.79, insuring the price by buying the call performs worse than locking in a price of $420 since we have paid the call premium.

Figure 7 shows the profit from the call by itself, along with the results of hedging with the call. As before, the graph does not show the probability that the gold price in 1 year will be in different regions; hence, we cannot evaluate the likelihood of different outcomes.

# FIGURE 7

Comparison of profit for unhedged gold buyer, gold buyer hedged with call, and stand-alone call.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/af8023bf436785633f112f617617807614b763509ff2b5cd1370e4e7127b236e.jpg)

# 3. WHY DO FIRMS MANAGE RISK?

The Golddiggers and Auric examples illustrate how the two companies can use forwards, calls, and puts to reduce losses in case of an adverse gold price move, essentially insuring their future cash flows. Why would a firm use these strategies?

There are four reasons that firms might use derivatives: to hedge, to speculate, to reduce transaction costs, and to effect regulatory arbitrage. In practice, more than one of these considerations may be important. We have already discussed the fact that market views—for example, opinions about the future price of gold—can affect the choice of a hedging strategy. Thus, the choice of a hedging strategy can have a speculative component. Managers often cite the accounting treatment of a transaction as important, and transaction costs are obviously a consideration.

In this section we discuss why firms might hedge, ignoring speculation, transaction costs, and regulation (but we do consider taxes). It seems obvious that managers would want to reduce risk. However, in a world with fairly priced derivatives, no transaction costs, and no other market imperfections such as taxes, derivatives change the distribution of cash flows but do not increase the value of cash flows. Moreover, large publicly held firms are owned by diverse shareholders. These shareholders can, in theory, configure their own portfolios to bear risk optimally, suits their own taste. In order to hedge, the firm must pay commissions and bid-ask spreads, and bear counterparty credit risk. Why incur these costs?

There are several reasons that firms might seek to manage risk. Before discussing them, let's think about what derivatives accomplish. To be concrete, suppose that Golddiggers sells gold forward at  $420/oz. As we saw, this guarantees a net income of$ 40/oz.

When hedged with the forward, Golddiggers will have a profit of 40 whatever the price in 1 year. In effect, the value of the reduced profits, should the gold price rise, subsidizes

TABLE 6

Calculation of after-tax net income in states where the output price is  $9.00 and$ 11.20. Expected after-tax income is (0.5 × -$1) + (0.5 × $0.72) = -0.14.

<table><tr><td></td><td></td><td>Price = $9</td><td>Price = $11.20</td></tr><tr><td>(1)</td><td>Pre-tax operating income</td><td>-$1</td><td>$1.20</td></tr><tr><td>(2)</td><td>Taxable income</td><td>$0</td><td>$1.20</td></tr><tr><td>(3)</td><td>Tax @ 40\% [0.4 × (2)]</td><td>0</td><td>$0.48</td></tr><tr><td></td><td>After-tax income [(2) – (3)]</td><td>-$1</td><td>0.72</td></tr></table> the payment to Golddiggers should the gold price fall. If we use the term "state" to denote a particular gold price in 1 year, we can describe the hedging strategy as shifting dollars from more profitable states (when gold prices are high) to less profitable states (when gold prices are low).

This shifting of dollars from high gold price states to low gold price states will have value for the firm if the firm values the dollar more in a low gold price state than in a high gold price state. Why might a firm value a dollar differently in different states?

# An Example Where Hedging Adds Value

Consider a firm that produces one unit per year of a good costing  $10. Immediately after production, the firm receives a payment of either$ 11.20 or $9, with 50\% probability. Thus, the firm has either a $1.20 profit or a 1 loss. On a pre-tax basis, the firm has an expected profit of

$$
[ 0. 5 \times (\$ 9 - \$ 1 0) ] + [ 0. 5 \times (\$ 1 1. 2 0 - \$ 1 0) ] = \$ 0. 1 0
$$

However, on an after-tax basis, the firm could have an expected loss.

For example, suppose that when the firm reports a profit, 40\% of the profit is taxed, but when the firm reports a loss, it pays no taxes and receives no tax refund. Table 6 computes expected after-tax profit under these circumstances. The taxation of profits converts an expected \$0.10 pre-tax gain into an after-tax \$0.14 loss.^{4} Because of taxes, the firm values a dollar of profit at \$0.60 (0.40 goes to the government), but values a dollar of loss at \$1. In this situation, it is desirable for the firm to trade pre-tax profits for pre-tax losses.

Suppose that there is a forward market for the firm's output, and that the forward price is  $10.10. If the firm sells forward, profit is computed as in Table 7. Instead of an expected loss of$ 0.14, we obtain a certain profit of 0.06. Hedging with a forward transfers net income from a less-valued to a more highly valued state, raising the expected value of cash flows.

Figure 8 depicts how the nondeductibility of losses affects after-tax cash flows. First, observe that after-tax profit (line ACB) is a concave function of the output price. (A concave

Calculation of hedged after-tax net income in states where the output price is  $9.00 and$ 11.20. Expected after-tax income is 0.06.

TABLE 7

<table><tr><td></td><td></td><td>Price = $9</td><td>Price = $11.20</td></tr><tr><td>(1)</td><td>Pre-tax operating income</td><td>-$1.00</td><td>$1.20</td></tr><tr><td>(2)</td><td>Income from short forward</td><td>$1.10</td><td>-$1.10</td></tr><tr><td>(3)</td><td>Taxable income [(1) + (2)]</td><td>$0.10</td><td>$0.10</td></tr><tr><td>(4)</td><td>Tax @ 40\% [0.4 × (3)]</td><td>$0.04</td><td>$0.04</td></tr><tr><td></td><td>After-tax income [(3) - (4)]</td><td>$0.06</td><td>$0.06</td></tr></table>

# FIGURE 8

After-tax profit as a function of pre-tax profit. Point A is profit at a price of  $9$  (-1.00), point B is profit at  $11.20$  ( $0.72), point C is profit at$ 10.10 ( $0.06), and point D is expected profit if price is$ 9 or $11.20 with one-half probability, -$0.14.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/5a22cb8197dc8eb304a70f8f1b334ad89486e45e83b746caa5356ae87a7de4aa.jpg) function is one shaped like the cross section of an upside-down bowl.) When profits are concave, the expected value of profits is increased by reducing uncertainty. We can see this in the graph. If the price is certain to be  $10.10, then profit will be given by point C. However, if price can be either$ 9 or $11.20, expected profit is at point D, on the line ADB at the expected price of $10.10. Because ACB is concave, point D lies below point C, and hedging increases expected profits.

Some of the hedging rationales we discuss hinge on there being concave profits, so that value is increased by reducing uncertainty.

# Reasons to Hedge

There are in fact a number of reasons why losses might be more harmful than profits are beneficial. We now discuss some of those reasons.

Taxes. The previous example illustrating the effect of taxes was oversimplified in assuming that losses are completely untaxed, but it is typically the case that governments tax profits but do not give full credits for losses. Tax systems usually permit a loss to be offset against a profit from a different year. However, in present value terms, the loss will have a lower effective tax rate than that applied to profits, which still generates a motive to hedge.

There are other aspects of the tax code that can encourage firms to shift income using derivatives; such uses may or may not appear to be hedging and may or may not be approved of by tax authorities. Tax rules that may entice firms to use derivatives include the separate taxation of capital and ordinary income (derivatives can be used to convert one form of income to another), capital gains taxation (derivatives can be used to defer taxation of capital gains income, as with collars), and differential taxation across countries (derivatives can be used to shift income from one country to another).

Bankruptcy and Distress Costs. An unusually large loss can threaten the survival of a firm, which may then be unable to meet fixed obligations, such as debt payments and wages. If a firm appears to be in distress, customers may be less willing to purchase its goods. This can be a problem for companies that promise future goods or services, such as airline seats or warranties.

Actual or threatened bankruptcy can be costly; a dollar of loss can cost the company more than a dollar. As with taxes, this is a reason for firms to enter derivatives contracts that transfer income from profit states to loss states, thereby reducing the probability of bankruptcy or distress.

Costly External Financing. Even if a loss is not large enough to threaten the survival of a firm, the firm must pay for the loss, either by using cash reserves or by raising funds externally (for example, by borrowing or issuing new securities).

Raising funds externally can be costly. There are explicit costs, such as bank and underwriting fees. There can also be implicit costs. If you borrow money, the lender may worry that you need to borrow because you are in decline, which increases the probability that you will not repay the loan. The lender will therefore raise the interest rate on the loan. For the same reason, you may be able to issue equity only at a reduced price.

At the same time, cash reserves are valuable because they reduce a firm's need to raise funds externally in the future. So if the firm uses cash to pay for a loss, the reduction in cash increases the probability that the firm will need costly external financing in the future.

The fact that external financing is costly can even lead the firm to forgo investment projects it would have taken had cash been available to use for financing.

Thus, however the firm pays for the loss, a dollar of loss may actually cost the firm more than a dollar. Hedging can safeguard cash reserves and reduce the probability of costly external financing.

Increase Debt Capacity. Because of the deductibility of interest expense for tax purposes, firms may find debt to be a tax-advantaged way to raise funds. However, lenders, fearful of bankruptcy, may be unwilling to lend to firms with risky cash flows. The amount that a firm can borrow is its debt capacity.

A firm that credibly reduces the riskiness of its cash flows should be able to borrow more, since for any given level of debt, bankruptcy is less likely. Such a firm is said to have raised its debt capacity. To the extent debt has a tax advantage, such a firm will also be more valuable.

Managerial Risk Aversion. While large, public firms are owned by well-diversified investors, firm managers are typically not well-diversified. Salary, bonus, and compensation options are all tied to the performance of the firm.

An individual who is unwilling to take a fair bet (i.e., one with an expected payoff equal to the money at stake) is said to be risk-averse. Risk-averse persons are harmed by a dollar of loss more than they are helped by a dollar of gain. Thus, they benefit from reducing uncertainty. The effect is analogous to that shown in Figure 8.

If managers are risk-averse and have wealth that is tied to the company, we might expect that they will try to reduce uncertainty. However, matters are not this simple: Managers are often compensated in ways that encourage them to take more risk. For example, options given to managers as compensation are more valuable, other things equal, when the firm's stock price is riskier. Thus, a manager's risk aversion may be offset by compensation that is more valuable if the firm is riskier.

Nonfinancial Risk Management. Firms make risk-management decisions when they organize and design a business. For example, suppose you plan to sell widgets in Europe. You can construct a plant in the United States and export to Europe, or you can construct the plant in Europe, in which case costs of construction, labor, interest rates, and other inputs will be denominated in the same currency as the widgets you sell. Exchange rate hedging, to take one example, would be unnecessary.

Of course, if you build in a foreign country, you will encounter the costs of doing business abroad, including dealing with different tax codes and regulatory regimes.

Risk can also be affected by such decisions as leasing versus buying equipment, which determines the extent to which costs are fixed. Firms can choose flexible production technologies that may be more expensive at the outset but which can be reconfigured at low cost. Risk is also affected by the decision to enter a particular line of business in the first place. Firms making computer mice and keyboards, for example, have to consider the possibility of lawsuits for repetitive stress injuries.

The point is that risk management is not a simple matter of hedging or not hedging using financial derivatives, but rather a series of decisions that start when the business is first conceived.

# Reasons Not to Hedge

There are also reasons why firms might elect not to hedge:

- Transacting in derivatives entails paying transaction costs, such as commissions and the bid-ask spread.
- The firm must assess costs and benefits of a given strategy; this can require costly expertise.
- The firm must monitor transactions and have managerial controls in place to prevent unauthorized trading.
- The firm must be prepared for tax and accounting consequences of their transactions. In particular, this may complicate reporting.

Thus, while there are reasons to hedge, there are also costs. When thinking about costs and benefits, keep in mind that some of what firms do could be called risk management but may not obviously involve derivatives. For example, suppose Auric enters into a 2-year agreement with a supplier to buy gold at a fixed price. Will management think of this as a derivative? In fact this is a derivative under current accounting standards (it is a swap), but it is exempt from derivatives accounting. Finally, firms can face collateral requirements (the need to post extra cash with their counterparty) if their derivatives position loses money.

Periodically, firms appear in the news for their hedging successes or, more commonly, failures. Boxes 2 and 3 illustrate the challenges of managing corporate hedging programs.

# Empirical Evidence on Hedging

We know surprisingly little about the risk-management practice and derivatives use of firms in real life. It is difficult to tell, from publicly available information, the extent to which firms use derivatives. Beginning in 2000, Statement of Financial Accounting Standards (SFAS) 133 required firms to recognize derivatives as assets or liabilities on the balance sheet, to measure them at fair value, and to report changes in their market value. This reporting does not necessarily reveal a firm's hedging position (forward contracts have zero value, for example). Prior to 2000, firms had to report notional exposure; hence, much existing evidence relies on data from the 1990s.

Research tries to address two questions: How much do firms use derivatives and why? Financial firms—commercial banks, investment banks, broker-dealers, and other financial institutions—transact in derivatives frequently. Risks are identifiable, and regulators encourage risk management. The more open question is the extent to which nonfinancial firms use derivatives. We can summarize research findings as follows:

- Roughly half of nonfinancial firms report using derivatives, with usage greater among large firms (Bodnar et al., 1998; Bartram et al., 2004).

# BOX 2: Ford: A Hedge Too Far

Ford Motor Co. stunned investors in January 2002 when it announced a 1 billion write-off on stockpiles of palladium, a precious metal Ford used in catalytic converters (devices that reduce polluting emissions from cars and trucks). Ironically, Ford sustained the loss while attempting to actively manage palladium risk.

According to the Wall Street Journal (see Gregory L. White, "A Mismanaged Palladium Stockpile Was Catalyst for Ford's Write-Off," February 6, 2002, p. A1), Ford in the late 1980s had begun to use palladium as a replacement for platinum. Palladium prices were steady until 1997, when Russia, a major supplier with a large stockpile of palladium, withheld supply from the market. Prices more than doubled to  $350/oz at a time when Ford was planning to increase its use of the metal. By early 2000, prices had doubled again, to$ 700. While GM had begun work several years earlier to reduce reliance on palladium, Ford continued to rely heavily on the metal.

In 2000, Ford management agreed to allow the purchasing staff to stockpile palladium. The purchasing staff evidently did not communicate with Ford's treasury department, which had hedging experience. Thus, for example, Ford did not buy puts to protect against a drop in palladium prices. The purchasing staff also did not communicate with Ford's research department, which was working to reduce reliance on palladium. Ford continued to buy palladium in 2001 as prices exceeded $1000. However, by the middle of the year, palladium prices had fallen to $350.

By the end of 2001, Ford had developed technology that would eventually reduce the need for palladium by  $50\%$ . The year-end price of palladium was 440/oz.

As a result of this experience, "Ford has instituted new procedures to ensure that treasury department staffers with experience in hedging are involved in any major commodities purchases in the future, [Ford Chief Financial Officer Martin] Inglis says."

- Among firms that do use derivatives, less than  $25\%$  of perceived risk is hedged, with firms likelier to hedge short-term risks (Bodnar et al., 1998).
- Firms with more investment opportunities are likelier to hedge (Géczy et al., 1997).
- Firms that use derivatives may have a higher market value (Allayannis and Weston, 2001; Allayannis et al., 2004; Bartram et al., 2004; Carter et al., 2006; MacKay and Moeller, 2007), more leverage (Graham and Rogers, 2002; Haushalter, 2000), and lower interest costs (Campello et al., 2010). Jin and Jorion (2006), however, find that hedging firms do not have a higher market value.

Guay and Kothari (2003) obtain many similar results but conclude that for most firms, derivatives use is of minor economic significance. In their sample of large firms, slightly more than half report derivatives usage. Among derivatives users, the authors estimate that the median firm hedges only about  $3\%$  to  $6\%$  of exposure to interest rates and exchange rates. Bartram et al. (2009) examine annual reports from over 7000 international companies to link

# BOX 3: Hedging Jet Fuel: Southwest Airlines

Southwest Airlines is well known for systematically hedging the cost of jet fuel. In the 1990s, fuel on average accounted for  $10 - 15\%$  of Southwest's operating costs (Carter et al., 2004). In recent years, fuel costs have been as much as a quarter of operating expenses. Since fuel costs have risen over the last decade, Southwest has benefited from hedging. In its 2005 quarterly financial reports, for example, Southwest reported savings from its hedge program of  $155,$ 196, $295, and $258 million, against net income of  $75,$ 159, $227, and $86 million. Clearly, fuel hedging was important for Southwest's profitability.

Southwest uses cross-hedges to hedge jet fuel, and hedges a significant portion of its future projected fuel needs. Here is what Southwest said about its hedging program in its 3rd quarter 2006 financial statement:

The Company endeavors to acquire jet fuel at the lowest possible cost. Because jet fuel is not traded on an organized futures exchange, liquidity for hedging is limited. However, the Company has found commodities for hedging of jet fuel costs, primarily crude oil, and refined products such as heating oil and unleaded gasoline… . The Company currently has a mixture of purchased call options, collar structures, and fixed price swap agreements in place to protect against over 85 percent of its remaining 2006 total anticipated jet fuel requirements …

Southwest also stated that it had hedged  $85\%$  of expected fuel purchases for 2007, over  $43\%$  for 2008, with smaller positions as far out as 2012.

A company that hedges the price of inputs can lose if prices fall. From the New York Times, October 17, 2008:

Southwest Airlines said Thursday that it lost 120 million in the third quarter, its first quarterly loss in more than 17 years, because of a noncash charge to write down the declining value of its hedging contracts.

The airline took a one-time charge of 247 million, reflecting the decline in oil prices, which hit record high levels in July. The last time Southwest lost money was in the first quarter of 1991.

Without the charge, Southwest said it would have earned 69 million…

"It's like you can't win," said Betsy J. Snyder, an industry analyst with Standard & Poor's Ratings Services. "People bother you when you don't hedge, and when you do, and prices go down, you get hit."

Excerpts from New York Times Oct 17, 2008 and Southwest's 2006 Financial Statement.

firm characteristics and derivatives usage. They argue that it is hard to test specific hedging theories because derivatives use is only one of many firm decisions that affect financial risk.

Because data are hard to obtain, some studies have focused on particular industries and even firms. Tufano (1996), Petersen and Thiagarajan (2000), and Brown et al. (2003) have examined hedging behavior by gold-mining firms. Using a uniquely detailed data set, Tufano found that most gold firms use some derivatives, with the median firm in his sample (North American firms) selling forward about  $25\%$  of 3-year production. Fifteen percent of firms used no derivatives. Brown et al. found substantial variation over time in the amount of hedging by gold firms. Firms tended to increase hedging as the price rose, and managers reported that they adjusted hedges based on their views about gold prices.

TABLE 8

Call and put premiums for gold options.

<table><tr><td>Strike Price</td><td>Put Premium</td><td>Call Premium</td></tr><tr><td>440</td><td>21.54</td><td>2.49</td></tr><tr><td>420</td><td>8.77</td><td>8.77</td></tr><tr><td>400</td><td>2.21</td><td>21.26</td></tr></table>

Note: These prices are computed using the Black formula for options on futures, with a futures price of 420, effective annual interest rate of 5\%, volatility of 5.5\%, and 1 year to expiration.

The currency-hedging operations of a U.S.-based manufacturing firm are examined in detail by Brown (2001), who finds that foreign exchange hedging is an integral part of firm operations, but the company has no clear rationale for hedging. For example, Brown reports one manager saying, "We do not take speculative positions, but the extent we are hedged depends on our views." Bartram (2008) investigates in depth one large German firm and also finds that hedging reduces currency exposure. Faulkender (2005) finds consistent evidence for interest-rate hedging in the chemical industry. These firms increase exposure to short-term interest rates as the yield curve becomes more upward-sloping,[11] but correlations between cash flows and interest rates do not affect behavior.

The varied evidence suggests that some use of derivatives is common, especially at large firms, but the evidence is weak that economic theories explain hedging.

# 4. GOLDDIGGERS REVISITED

We have looked at simple hedging and insurance strategies for buyers and sellers. We now examine some additional strategies that permit tailoring the amount and cost of insurance. For simplicity we will focus primarily on Golddiggers; however, in every case there are analogous strategies for Auric.

Table 8 lists premiums for three calls and puts on gold with 1 year to expiration and three different strikes. The examples use these values.

# Selling the Gain: Collars

As discussed earlier, we can reduce the cost of insurance by reducing potential profit, i.e., by selling our right to profit from high gold prices. We can do this by selling a call. If the gold price is above the strike on the call, we are contractually obligated to sell at the strike. This caps our profits, in exchange for an initial premium payment.

A 420-440 Collar. Suppose that Golddiggers buys a 420-strike put option for $8.77 and sells a 440-strike call option for a premium of $2.49. If the price of gold in 1 year is 450/oz,

# FIGURE 9

Net profit at expiration resulting from buying a 420-strike put with premium of  $8.77 and selling a 440-strike call with premium of$ 2.49. The profit for gold prices between  $420 and$ 440 is ( $2.49 -$ 8.77) × 1.05 = -6.60.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/7df7f2541ad29f75808a980e112bf87ba6bdb444924d204b48c6b0246a0cab24.jpg) the call owner will exercise and Golddiggers is obligated to sell gold at the strike price of  $440, rather than the market price of$ 450. The 2.49 premium Golddiggers received initially compensates them for the possibility that this will happen.

Figure 9 depicts the combination of the purchased put and written call, while Figure 10 shows the two profit diagrams for Golddiggers hedged with a 420-strike put, as opposed to hedged with a 420-strike put plus writing a 440-strike call.

Note that the 420-440 collar still entails paying a premium. The 420 put costs $8.77, and the 440 call yields a premium of only $2.49. Thus, there is a net expenditure of 6.28. It is probably apparent, though, that we can tinker with the strike prices and pay a still lower net premium, including zero premium, if we wish. The trade-off is that the payoff on the collar becomes less attractive as we lower the required premium.

A Zero-Cost Collar. To construct a zero-cost collar, we could argue as follows: A 400-strike put and a 440-strike call are equally distant from the forward price of $420. This equivalence suggests that the options should have approximately the same premium. As we can see from the table of premiums for different strike options, the 400-strike put has a premium of $2.21, while the 440-strike call has a premium of $2.49. The net premium we would receive from buying this collar is thus $0.28. We can construct a true zero-cost collar by slightly changing the strike prices, making the put more expensive (raising the strike) and the call less expensive (also raising the strike). With strikes of $400.78 for the put and $440.78 for the call, we obtain a premium of 2.355 for both options.

In reality this zero-cost collar of width 40 would be sold at lower strike prices than  $400.78 and$ 440.78. The reason is that there is a bid-ask spread: Dealers are willing to buy a given option at a low price and sell it at a high price.

The purchased put will be bought at the dealer's offer price and the call will be sold at the bid. The dealer can earn this spread in either of two ways: selling the 400.78-440.78 collar and charging an explicit transaction fee, or lowering the strike prices appropriately

# FIGURE 10

Comparison of Golddiggers hedged with 420-strike put versus hedged with 420-strike put and written 440-strike call (420-440 collar).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/84b29f35ab74227a37f85ca46a0d2dae2b1e04cd2a3d4d312db603149f7c5b75.jpg) and charging a zero transaction fee. Either way, the dealer earns the fee. One of the tricky aspects of the more complicated derivatives is that it is relatively easy for dealers to embed fees that are invisible to the buyer. Of course a buyer can mitigate this problem by always seeking quotes from different dealers.

We can examine the payoffs by considering separately the three interesting regions of gold prices:

Price of gold < $400.78: In this region, Golddiggers can sell gold for $400.78 by exercising the put option.

Price of gold between  $400.78 and$ 440.78: In this region, Golddiggers can sell gold at the market price.

Price of gold > $440.78: In this region, Golddiggers sells gold at $440.78. It has sold a call, so the owner of the call will exercise. This forces Golddiggers to sell gold to the call owner for the strike price of 440.78.

Figure 11 graphs the zero-cost collar against the unhedged position. Notice that between  $400.78 and$ 440.78, the zero-cost collar graph is coincident with the unhedged profit. Above the 440.78-strike the collar provides profit of $60.78, and below the 400.78-strike, the collar provides profit of $20.78.

The Forward Contract as a Zero-Cost Collar. Because the put and call with strike prices of  $420 have the same premiums, we could also construct a zero-cost collar by buying the$ 420-strike put and selling the 420-strike call. If we do this, here is what happens:

Price of gold < $420: Golddiggers will exercise the put option, selling gold at the price of $420.

Price of gold > $420: Golddiggers has sold a 420-strike call. The owner of that call will exercise, obligating Golddiggers to sell gold for $420.

# FIGURE 11

Comparison of unhedged profit for Golddiggers versus zero-cost collar obtained by buying 400.78-strike put and selling 440.78-strike call.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/c6666764961f48ebe75470d6ee584fd940e921386e9a8ba1b8c9cbead512325e.jpg)

In either case, Golddiggers sells gold at 420. Thus, the "420-420 collar" is exactly like a forward contract. By buying the put and selling the call at the same strike price, Golddiggers has synthetically created a short position in a forward contract. Since a short forward and 420-420 collar have the same payoff, they must cost the same. This is why the premiums on the 420-strike options are the same.

Synthetic Forwards at Prices Other Than $420. We can easily extend this example to understand the relationship between option premiums at other strike prices. In the previous example, Golddiggers created a synthetic forward sale at $420. You might think that you could benefit by creating a synthetic forward contract at a higher price such as $440. Other things being equal, you would rather sell at $440 than 420. To accomplish this you buy the 440 put and sell the 440 call. However, there is a catch: The 440-strike put is in-the-money and the 440-strike call is out-of-the-money. Since we would be buying the expensive option and selling the inexpensive option, we have to pay a premium.

How much is it worth to Golddiggers to be able to lock in a selling price of $440 instead of $420? Obviously, it is worth $20 1 year from today, or $20 ÷ (1.05) = $19.05 in present value terms. Since locking in a $420 price is free, it should therefore be the case that we pay $19.05 in net premium in order to lock in a $440 price. In fact, looking at the prices of the 440-strike put and call in Table 8, we have premiums of $21.54 for the put and $2.49 for the call. This gives us

$$
\text {N e t} = \ 2 1. 5 4 - \ 2. 4 9 = \$ 1 9. 0 5
$$

Similarly, suppose Golddiggers explored the possibility of locking in a $400 price for gold in 1 year. Obviously, Golddiggers would require compensation to accept a lower price. In fact, they would need to be paid $19.05—the present value of 20—today.

Again we compute the option premiums and see that the 400-strike call sells for $21.26 while the 400-strike put sells for $2.21. Again we have

$$
\text {N e t} = \$ 2. 2 1 - \$ 2 1. 2 6 = - \$ 1 9. 0 5
$$

Golddiggers in this case receives the net premium for accepting a lower price.

# Other Collar Strategies

Collar-type strategies are quite flexible. We have focused on the case where the firm buys one put and sells one call. However, it is also possible to deal with fractional options. For example, consider the 400.78-440.78 collar above. We could buy one put to obtain full downside protection, and we could vary the strike price of the call by selling fractional calls at strike prices other than  $440.78. For example, we could lower the call strike price below$ 440.78, in which case we would obtain a higher premium per call. To offset the higher premium, we could sell less than one call. The trade-off is that we cap the gold price on part of production at a lower level, but we maintain some participation at any price above the strike.

Alternatively, we could raise the cap level (the strike price on the call) and sell more than one call. This would increase participation in gold price increases up to the cap level, but also have the effect of generating a net short position in gold if prices rose above the cap.

# Paylater Strategies

A disadvantage to buying a put option is that Golddiggers pays the premium even when the gold price is high and insurance was, after the fact, unnecessary. One strategy to avoid this problem is a paylater strategy, where the premium is paid only when the insurance is needed. While it is possible to construct exotic options in which the premium is paid only at expiration and only if the option is in the money, the strategy we discuss here is a ratio spread using ordinary put options. The goal is to find a strategy where if the gold price is high, there is no net option premium. If the gold price is low, there is insurance, but the effective premium is greater than with an ordinary insurance strategy.

If there is no premium when the gold price is high, we must have no initial premium. This means that we must sell at least one option. Consider the following strategy for Golddiggers: Sell a 434.6-strike put and buy two 420-strike puts. Using our assumptions, the premium on the 434.6-strike put is $17.55, while the premium on the 420-strike put is $8.77. Thus, the net option premium from this strategy is $17.55 - (2 × $8.775) = 0.

Figure 12 depicts the result of Golddiggers's hedging with a paylater strategy. When the price of gold is greater than  $434.60, neither put is exercised, and Golddiggers's profit is the same as if it were unhedged. When the price of gold is between$ 420 and $434.60, because of the written $434.60 put, the firm loses $2 of profit for every $1 decline in the price of gold. Below 420 the purchased 420-strike puts are exercised, and profit becomes constant. The net result is an insurance policy that is not paid for unless it is needed.

Also depicted in Figure 12 is the familiar result from a conventional insurance strategy of hedging by purchasing a single 420-strike put. When the gold price is high, the paylater strategy with a zero premium outperforms the single put. When the gold price is low, the paylater strategy does worse because it offers less insurance. Thus, the premium is paid later, if insurance is needed.

# FIGURE 12

Depiction of "paylater" strategy, in which Gold-diggers sells a 434.6-strike put and buys two 420-strike puts, compared to the conventional insurance strategy of buying a 420-strike put.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/edee3fe3b7e849535e15cb6c290af5ce6315bcffc12c3f8ff5fb4929158972c0.jpg)

# 5. SELECTING THE HEDGE RATIO

In the Golddiggers and Auric examples, we performed all calculations in terms of one unit of gold and made two important assumptions. First, we assumed perfect correlation between the price of gold and the price of what each company wants to hedge. Second, we assumed that the companies knew for certain the quantity of gold they would sell and buy. As a result of these assumptions, we effectively assumed that the hedge ratio is 1, where the hedge ratio is defined as the ratio of the forward position to the underlying asset.

In practice, neither assumption may be valid. We first examine the effect of widget price uncertainty on hedging, and discuss cross-hedging. We then examine quantity uncertainty using an agricultural example.

# Cross-Hedging

In the Auric example we assumed that widget prices are fixed. However, since gold is used to produce widgets, widget prices might vary with gold prices. If widget and gold prices vary one-for-one, Auric's profits would be independent of the price of gold and Auric would have no need to hedge.[12]

More realistically, the price of widgets could change with the price of gold, but not one-for-one; other factors could affect widget prices as well. In this case, Auric might find it helpful to use gold derivatives to hedge the price of the widgets it sells as well as the price of the gold it buys. Using gold to hedge widgets would be an example of cross-hedging: the use of a derivative on one asset to hedge another asset. Cross-hedging arises in many different contexts.

The hedging problem for Auric is to hedge the difference in the price of widgets and gold. Conceptually, we can think of hedging widgets and gold separately, and then combining those separate hedges into one net hedge.

We now generalize the Auric example. Suppose that we can produce one widget with  $\lambda$  ounces of gold. If we produce  $N_{w}$  widgets at a price of  $P_{w}$  and do not hedge, profit is

$$
\text {P r o f i t} = N _ {w} P _ {w} - \lambda N _ {w} P _ {g} \tag {1}
$$ where  $P_{\varrho}$  is the future spot price of gold.


Now suppose that we hedge by going long  $H$  gold futures contracts, with each contract covering  $q$  oz of gold. If  $F$  is the gold forward price, the profit on the hedged position is

$$

\begin{array}{l} \text {H e d g e d p r o f i t} = N _ {w} P _ {w} - \lambda N _ {w} P _ {g} + H q (P _ {g} - F) \\ = N _ {w} P _ {w} + \left(H q - \lambda N _ {w}\right) P _ {g} - H q F \\ \end{array}

$$

The variance of hedged profit is

$$

\sigma_ {\text {h e d g e d}} ^ {2} = N _ {w} ^ {2} \sigma_ {w} ^ {2} + \left(H q - \lambda N _ {w}\right) ^ {2} \sigma_ {g} ^ {2} + 2 N _ {w} \left(H q - \lambda N _ {w}\right) \rho \sigma_ {w} \sigma_ {g} \tag {2}

$$ where  $\sigma_w$  is the standard deviation of the widget price,  $\sigma_g$  is the standard deviation of the gold price, and  $\rho$  is the price correlation between widgets and gold. The covariance between widget and gold prices is  $\rho \sigma_w\sigma_g$ .

We can select  $H$  in equation (2) so as to minimize the variance of hedged profit. The variance-minimizing hedge position,  $H^{*}$ , satisfies

$$ q H ^ {*} = \lambda N _ {w} - N _ {w} \frac {\rho \sigma_ {w}}{\sigma_ {g}} \tag {3}
$$

Equation (3) has a straightforward interpretation. The first term on the right-hand side hedges the cost of buying gold: To produce  $N_{w}$  widgets, we must purchase  $\lambda N_{w}$  ounces of gold. We go long this amount. However, if the price of widgets varies with the price of gold we need to take this into account. The second term on the right-hand side,  $N_{w}\rho \sigma_{w} / \sigma_{g}$ , measures the comovement between widget revenue and gold. The term  $\rho \sigma_w / \sigma_g$  would typically be referred to as the hedge ratio for hedging widgets with gold.[14] The hedge ratio times the number of widgets,  $N_{w}$ , gives us the number of gold contracts to short for the purpose of hedging widget price risk. The net number of gold futures,  $H^{*}$ , is the difference in the number of contracts needed to hedge gold inputs and widget outputs.

where the subscript  $t$  denotes the value at time  $t$ . Other specifications, including the use of percentage changes, or regressing levels on levels, are possible. The correct regression to use depends on context. In general, regressions using changes are more likely to give a correct hedge coefficient since the goal of the hedge is to have changes in the price of the asset matched by changes in futures price. Regressions of level on level are problematic in many contexts. For example, in the case of stocks, asset pricing models tell us that stock returns are related, but we would not expect a stable relationship between two prices. The appropriate regression is returns on returns. A comprehensive discussion is Siegel and Siegel (1990, pp. 114-135).

Example 1. Suppose that a firm produces  $N_{w} = 350$  widgets; that each widget requires as an input  $\lambda = 0.5$  oz of gold; and that  $\sigma_{w} = 0.15$ ,  $\sigma_{g} = 0.25$ , and  $\rho = 0.8$ . Suppose further that a gold futures contract calls for delivery of  $q = 5$  oz of gold. Applying equation (3), we have

$$
5 H ^ {*} = 0. 5 \times 3 5 0 - 3 5 0 \frac {0 . 8 \times 0 . 1 5}{0 . 2 5} = 7
$$

We go long 7 oz of gold, or  $H = 1.4$  contracts.

We can parse Example 1 to understand the hedge calculation. Producing 350 widgets requires  $175 (= 0.5 \times 350)$  oz of gold. If widget prices were uncorrelated with gold  $(\rho = 0)$ , we would go long 175 oz, which is a long position in 35 contracts (each contract covering 5 oz). However, with  $\rho = 0.8$ , if the price of gold rises, we pay more for gold but we also receive a higher price for widgets. The second term on the right-hand side of equation (3) tells us that this offsetting effect of higher widget prices reduces the required position by 168 oz. The net result is that we go long 7 oz of gold to hedge profit.

When we hedge with  $H^{*}$  futures,  $\sigma_{\mathrm{hedged}}^{2}$  is obtained by substituting  $H^{*}$  into equation (2):

$$
\sigma_ {\text {h e d g e d}} ^ {2} = N _ {w} ^ {2} \sigma_ {w} ^ {2} \left(1 - \rho^ {2}\right) \tag {4}
$$

The uncertainty remaining in the hedged position is due to basis risk, which is risk due to the hedging instrument (gold) and the hedged price ( widgets) not moving as predicted. The variance of profits ultimately depends upon the ability to hedge the price of widgets, which, since we are using gold to hedge, depends on the correlation,  $\rho$ , between widgets and gold. The larger that  $\rho$  is, the less is basis risk.

You can see in equation (4) that if  $|\rho| = 1$ ,  $\sigma_{\mathrm{hedged}}^2 = 0$ . However, if  $|\rho| \neq 1$ , variance will be positive. The optimal hedge strategy will then depend upon how the hedger evaluates the residual risk and return from the imperfectly hedged position. In this case a common benchmark is the hedge that minimizes  $\sigma_{\mathrm{hedged}}^2$ . Many other hedging strategies are possible, however. For a discussion of the different strategies and a review of the literature, see (Chen et al., 2003).

In this section we have shown that the ability to cross-hedge depends upon the correlation between the hedging instrument and the asset being hedged, and that we can determine the hedging amount as a regression coefficient. The same analysis obtains when we use stock index futures contracts to cross-hedge a stock portfolio.

# Quantity Uncertainty

The quantity a firm produces and sells may vary with the prices of inputs or outputs. When this happens, using the "obvious" hedge ratio (for example, by hedging the expected quantity of an input) can increase rather than decrease risk. In this section we examine quantity uncertainty.

Agricultural producers commonly face quantity uncertainty because crop size is affected by factors such as weather and disease. Moreover, we expect there to be a correlation between quantity and price, because good weather gives rise to bountiful harvests. What

Three scenarios illustrating different correlations between price and quantity for an agricultural producer. Each row is equally likely. In scenario A, there is no quantity uncertainty. In scenario B, quantity is negatively correlated with price, and in scenario C, quantity is positively correlated with price.

TABLE 9

<table><tr><td rowspan="2">Corn Price ($)</td><td colspan="3">Production Scenario</td></tr><tr><td>A (Uncorrelated)</td><td>B (Negative correlation)</td><td>C (Positive correlation)</td></tr><tr><td>3</td><td>1.0m</td><td>1.0m</td><td>1.5m</td></tr><tr><td>3</td><td>1.0m</td><td>0.6m</td><td>0.8m</td></tr><tr><td>2</td><td>1.0m</td><td>1.5m</td><td>1.0m</td></tr><tr><td>2</td><td>1.0m</td><td>0.8m</td><td>0.6m</td></tr></table> quantity of forward contracts should a corn producer enter into to minimize the variability of revenue?

We will look at three examples of different relationships between price and quantity: the benchmark case where quantity is certain, an example where quantity and price are negatively correlated, and an example where quantity and price are positively correlated.[15]

In all the examples, we suppose that the corn forward price is  $2.50/bu and that there is a 50\%$  probability that in 1 year the corn price will be 2/bu or 3/bu. In addition, for each possible price of corn there are two equally likely quantities, for a total of four possible price-quantity pairs. Table 9 illustrates the three scenarios. Note that in scenario B, average quantity is low when price is high (negative correlation), whereas in scenario C, average quantity is high when price is high (positive correlation).

First, consider scenario A, where quantity is certain: The producer always produces 1m bushels. Let S and Q denote the price and quantity in 1 year. Revenue is SQ. Without hedging, revenue will be either $3m (if the corn price is $3) or $2m (if the corn price is $2).

On the other hand, if the producer sells forward  $1\mathrm{m}$  bushels at the forward price  $F = 2.50$ , revenue is

$$
\text {R e v e n u e} = (S \times 1 \mathrm {m}) - [ 1 \mathrm {m} \times (S - 2. 5 0) ] = 2. 5 \mathrm {m}
$$

We have guaranteed revenue in this case. The calculation is illustrated explicitly in Table 10.

In general, if the producer enters into forward contracts on  $H$  units, hedged revenue,  $R(H)$ , will be

$$
\text {H e d g e d} = R (H) = (S \times Q) + [ H \times (S - F) ] \tag {5}
$$

<table><tr><td>TABLE 10</td><td colspan="3">When the producer is sure to produce 1m bushels (Scenario A), revenue of 2.5m is assured by selling forward 1m bushels.</td></tr><tr><td></td><td rowspan="3">Corn Price</td><td rowspan="3">Quantity</td><td>Revenue</td></tr><tr><td></td><td>Unhedged</td></tr><tr><td></td><td>Sell Forward 1m bu</td></tr><tr><td></td><td>3</td><td>1.0m</td><td>3.0m</td></tr><tr><td></td><td>2</td><td>1.0m</td><td>2.0m</td></tr><tr><td></td><td></td><td></td><td>2.5m</td></tr></table>

<table><tr><td colspan="2">TABLE II</td><td colspan="5">Results in Scenario B (negative correlation between the price of corn and the quantity of production) from shorting 975,000 corn forwards (columns 4 and 5) and from selling forward 100,000 bushels (columns 6 and 7). Each price-quantity combination is equally likely, with a probability of 0.25. Standard deviations are computed using the population estimate of standard deviation.</td></tr><tr><td rowspan="2">Price</td><td rowspan="2">Quantity</td><td rowspan="2">Unhedged Revenue</td><td colspan="2">Sell Forward 0.975m bu</td><td colspan="2">Sell Forward 0.100m bu</td></tr><tr><td>Futures Gain</td><td>Total</td><td>Futures Gain</td><td>Total</td></tr><tr><td>$3</td><td>1.0m</td><td>$3.0m</td><td>-$0.488m</td><td>$2.512m</td><td>-$0.050m</td><td>$2.95m</td></tr><tr><td>$3</td><td>0.6m</td><td>$1.8m</td><td>-$0.488m</td><td>$1.312m</td><td>-$0.050m</td><td>$1.75m</td></tr><tr><td>$2</td><td>1.5m</td><td>$3.0m</td><td>$0.488m</td><td>$3.488m</td><td>$0.050m</td><td>$3.05m</td></tr><tr><td>$2</td><td>0.8m</td><td>$1.6m</td><td>$0.488m</td><td>$2.088m</td><td>$0.050m</td><td>$1.65m</td></tr><tr><td></td><td>σtotal revenue</td><td>$0.654m</td><td></td><td>$0.814m</td><td></td><td>0.652m</td></tr></table>

Using equation (5), when there is uncertainty, the variability of hedged revenue,  $\sigma_{R(H)}^2$ , is

$$
\sigma_ {R (H)} ^ {2} = \sigma_ {S Q} ^ {2} + H ^ {2} \sigma_ {S} ^ {2} + 2 H \rho_ {S Q, S} \sigma_ {S Q} \sigma_ {S} \tag {6}
$$

The standard deviation of total revenue,  $SQ$ , is  $\sigma_{SQ}$ , and the correlation of total revenue with price is  $\rho_{SQ,S}$ . As in the preceding discussion of cross-hedging, the  $H$  that minimizes the variance of hedged revenue will be

$$
H = - \frac {\rho_ {S Q , S} \sigma_ {S Q}}{\sigma_ {S}} \tag {7}
$$

This is the same as the second term in equation (3). The formula for the variance-minimizing hedge ratio in equation (7) is the negative of the coefficient from a regression of unhedged revenue on price. We can therefore determine the variance-minimizing hedge ratios for the negativeand positive-correlation scenarios (scenarios B and C) in Table 9 either by using equation (7) directly or by running a regression of revenue on price.

First, consider what happens in Scenario B if we hedge by shorting the expected quantity of production. As a benchmark, column 3 of Table 11 shows that unhedged revenue has variability of  $0.654\mathrm{m}$ . From Table 9, expected production in the negative correlation scenario, B, is

$$
0. 2 5 \times (1 + 0. 6 + 1. 5 + 0. 8) = 0. 9 7 5
$$

If we short this quantity of corn, column 5 of Table 11 shows that there is still variability in hedged revenue. Perhaps more surprising, the variability of total revenue actually increases. The reason is that price decreases when quantity increases, so nature already provides a degree of hedging: The increase in quantity partially offsets the decrease in price. Hedging by shorting the full expected quantity leaves us overhedged, with a commensurate increase in variability.

The variance-minimizing hedge can be obtained using equation (7). By direct calculation, we have  $\rho_{SQ,S} = 0.07647$ ,  $\sigma_S = \0.5$ , and  $\sigma_{SQ} = \$ 0.654\mathrm{m} . Thus, we have

$$
H = - \frac {0 . 0 7 6 4 7 \times \$ 0 . 6 5 4 \mathrm {m}}{\$ 0 . 5} = - 0. 1 0 0 \mathrm {m}
$$

Column (7) of Table 11 shows that variability is reduced to  $0.652\mathrm{m}$  when hedging this amount. The optimal hedge quantity is closer to no hedging than to full hedging. In fact, we gain little by hedging optimally, but we increase the standard deviation of revenue by  $25\%$  if we adopt the plausible but incorrect hedging strategy of shorting 975,000 bushels. Problem 21 asks you to verify that you obtain the same answer by running a regression of revenue on price.

You might guess by now that when correlation is positive (Scenario C), the optimal hedge quantity exceeds expected quantity. The fact that quantity goes up when price goes up makes revenue that much more variable than when price alone varies, and a correspondingly larger hedge position is required. Problem 23 asks you to compute the optimal hedge in scenario C. The answer is to short almost 2 million bushels even though production is never that large.

# CHAPTER SUMMARY

A producer selling a risky commodity, such as gold, has an inherent long position in the commodity. Assuming costs are fixed, the firm's profit increases when the price of the commodity increases. Such a firm can hedge profit with a variety of strategies, including selling forward, buying puts, and buying collars. A firm that faces price risk on inputs has an inherent short position in the commodity, with profit that decreases when the price of the input increases. Hedging strategies for such a firm include buying forward, buying calls, and selling collars. All of the strategies involving options can be customized by changing the option strike prices. Strategies such as a paylater can provide insurance with no initial premium but on which the company has greater losses should the insurance be needed.

Hedging can be optimal for a company when an extra dollar of income received in times of high profits is worth less than an extra dollar of income received in times of low profits. Profits for such a firm are concave, in which case hedging can increase expected cash flow. Concave profits can arise from taxes, bankruptcy costs, costly external finance, preservation of debt capacity, and managerial risk aversion. Such a firm can increase expected cash flow by hedging. Nevertheless, firms may elect not to hedge for reasons including transaction costs of dealing in derivatives, the requirement for expertise, the need to monitor and control the hedging process, and complications from tax and accounting considerations.

# FURTHER READING

In this chapter we have examined uses of forwards and options, taking for granted the pricing of those contracts. Two big unanswered questions are: How are those prices determined? How does the market for them work?

Wharton and CIBC regularly survey nonfinancial firms to assess their hedging. A recent survey is summarized in Bodnar et al. (1998). Bartram et al. (2004) examine hedging behavior in an international sample of over 7000 firms. Tufano (1996, 1998), Petersen and Thiagarajan (2000), and Brown et al. (2003) have studied hedging practices in the gold-mining industry. Other papers examining hedging include Geczy et al. (1997), Allayannis and Weston (2001), Allayannis et al. (2003), and Allayannis et al. (2004). Guay and Kothari (2003) attempt to quantify derivatives usage using information in firm annual reports from 1997. Brown (2001) provides an interesting and detailed description of the hedging decisions by one (anonymous) firm, and Faulkender (2005) examines interest rate hedging in the chemical industry.

Gastineau et al. (2001) discuss Statement of Financial Accounting Standards 133, which currently governs accounting for derivatives.

Finally, Fleming (1997) relates some of the history of (the fictitious) Auric Enterprises.

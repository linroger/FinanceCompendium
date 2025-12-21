---
title: "Chapter 7 - Financial Forwards and Futures"
parent_directory: Derivatives Market Complete Full/chapters manual
formatted: 2025-12-21 02:10:00 PM
formatter_model: kimi-k2-turbo
cli-tool: claude-code
primary_tags:
   - financial forwards
   - futures contracts
   - derivative pricing
   - arbitrage relationships
   - risk management
   - interest rate futures
secondary_tags:
   - prepaid forward contracts
   - forward pricing formulas
   - synthetic equivalents
   - index futures
   - currency forwards
   - eurodollar futures
   - cost of carry
   - hedging strategies
   - market making
   - cross hedging
   - quanto contracts
   - carry trades
   - libor rates
cssclasses: academia
---

# Financial Forwards and Futures

Forward contracts—which permit firms and investors to guarantee a price for a future purchase or sale—are a basic financial risk management tool. In this chapter we explore these contracts and study in detail forward and futures contracts on financial instruments, such as stocks, indexes, currencies, and interest rates. Our objectives are to understand more about the use of these contracts, how they are priced, and how market-makers hedge them.

Questions to keep in mind throughout the chapter include: Who might buy or sell specific contracts? What kinds of firms might use the contract for risk management? Why is the contract designed as it is?

# I. ALTERNATIVE WAYS TO BUY A STOCK

The purchase of a share of XYZ stock has three components: (1) fixing the price, (2) the buyer making payment to the seller, and (3) the seller transferring share ownership to the buyer. If we allow for the possibility that payment and physical receipt can occur at different times—say, time 0 and time  $T$ —then once the price is fixed there are four logically possible purchasing arrangements: Payment can occur at time 0 or  $T$ , and physical receipt can occur at time 0 or  $T$ . Table 1 depicts these four possibilities, along with their customary names. Let's discuss these different arrangements.

Outright purchase. The typical way to think about buying stock. You simultaneously pay the stock price in cash and receive ownership of the stock.

Fully leveraged purchase. A purchase in which you borrow the entire purchase price of the security. Suppose you borrow the share price,  $S_0$ , and agree to repay the borrowed amount at time  $T$ . If the continuously compounded interest rate is  $r$ , at time  $T$  you would owe  $e^{rT}$  per dollar borrowed, or  $S_0e^{rT}$ .

TABLE 1

Four different ways to buy a share of stock that has price  $S_0$  at time 0. At time 0 you agree to a price, which is paid either today or at time  $T$ . The shares are received either at 0 or  $T$ . The interest rate is  $r$ .

<table><tr><td>Description</td><td>Pay at Time</td><td>Receive Security at Time</td><td>Payment</td></tr><tr><td>Outright purchase</td><td>0</td><td>0</td><td>S0 at time 0</td></tr><tr><td>Fully leveraged purchase</td><td>T</td><td>0</td><td>S0e rT at time T</td></tr><tr><td>Prepaid forward contract</td><td>0</td><td>T</td><td>?</td></tr><tr><td>Forward contract</td><td>T</td><td>T</td><td>? × e rT</td></tr></table>

Prepaid forward contract. An arrangement in which you pay for the stock today and receive the stock at an agreed-upon future date. The difference between a prepaid forward contract and an outright purchase is that with the former, you receive the stock at time  $T$ . We will see that the price you pay is not necessarily the stock price.

Forward contract. An arrangement in which you both pay for the stock and receive it at time  $T$ , with the time  $T$  price specified at time 0.

From Table 1 it is clear that you pay interest when you defer payment. The interesting question is how deferring the physical receipt of the stock affects the price; this deferral occurs with both the forward and prepaid forward contracts. What should you pay for the stock in those cases?

# 2. PREPAID FORWARD CONTRACTS ON STOCK

A prepaid forward contract entails paying today to receive something—stocks, a foreign currency, bonds—in the future. The sale of a prepaid forward contract permits the owner to sell an asset while retaining physical possession for a period of time.

We will derive the prepaid forward price using three different methods: pricing by analogy, pricing by present value, and pricing by arbitrage.

# Pricing the Prepaid Forward by Analogy

Suppose you buy a prepaid forward contract on XYZ. By delaying physical possession of the stock, you do not receive dividends and have no voting or control rights. (We ignore here the value of voting and control.)

In the absence of dividends, whether you receive physical possession today or at time  $T$  is irrelevant: In either case you own the stock, and at time  $T$  it will be exactly as if you had owned the stock the whole time. Therefore, when there are no dividends, the price of the prepaid forward contract is the stock price today. Denoting the prepaid forward price for an asset bought at time 0 and delivered at time  $T$  as  $F_{0,T}^{P}$ , the prepaid forward price for delivery at time  $T$  is

$$
F _ {0, T} ^ {P} = S _ {0} \tag {1}
$$

# Pricing the Prepaid Forward by Discounted Present Value

We can also derive the price of the prepaid forward using present value: We calculate the expected value of the stock at time  $T$  and then discount that value at an appropriate rate of return. The stock price at time  $T$ ,  $S_T$ , is uncertain. Thus in computing the present value of the stock price, we need to use an appropriate risk-adjusted rate.

If the expected stock price at time  $T$  based on information we have at time 0 is  $E_0(S_T)$ , then the prepaid forward price is given by

$$
F _ {0, T} ^ {P} = E _ {0} \left(S _ {T}\right) e ^ {- \alpha T} \tag {2}
$$ where  $\alpha$ , the expected return on the stock, is determined using the CAPM or some other model of expected returns.


How do we compute the expected stock price? By definition of the expected return, we expect that in  $T$  years the stock will be worth

$$

E _ {0} (S _ {T}) = S _ {0} e ^ {\alpha T}

$$

Thus, equation (2) gives

$$

F _ {0, T} ^ {P} = E _ {0} (S _ {T}) e ^ {- \alpha T} = S _ {0} e ^ {\alpha T} e ^ {- \alpha T} = S _ {0}

$$

For a non-dividend-paying stock, the prepaid forward price is the stock price.

# Pricing the Prepaid Forward by Arbitrage

Classical arbitrage describes a situation in which we can generate a positive cash flow either today or in the future by simultaneously buying and selling related assets, with no net investment of funds and with no risk. Arbitrage, in other words, is free money. An extremely

TABLE 2
Cash flows and transactions to undertake arbitrage when the prepaid forward price,  $F_{0,T}^{P}$ , exceeds the stock price,  $S_{0}$ .

<table><tr><td rowspan="2">Transaction</td><td colspan="2">Cash Flows</td></tr><tr><td>Time 0</td><td>Time T (expiration)</td></tr><tr><td>Buy stock @ S0</td><td>-S0</td><td>+ST</td></tr><tr><td>Sell prepaid forward @ F0,T</td><td>+F0,T</td><td>-ST</td></tr><tr><td>Total</td><td>F0,T-P-S0</td><td>0</td></tr></table> important pricing principle, which we will use often, is that the price of a derivative should be such that no arbitrage is possible.


Here is an example of arbitrage. Suppose that the prepaid forward price exceeds the stock price—i.e.,  $F_{0,T}^{P} > S_{0}$ . The arbitrageur will buy low and sell high by buying the stock for  $S_{0}$  and selling the prepaid forward for  $F_{0,T}^{P}$ . This transaction makes money and it is also risk-free: Selling the prepaid forward requires that we deliver the stock at time  $T$ , and buying the stock today ensures that we have the stock to deliver. Thus, we earn  $F_{0,T}^{P} - S_{0}$  today and at expiration we supply the stock to the buyer of the prepaid forward. We have earned positive profits today and offset all future risk. Table 2 summarizes this situation.

Now suppose on the other hand that  $F_{0,T}^{P} < S_{0}$ . Then we can engage in arbitrage by buying the prepaid forward and shorting the stock, earning  $S_{0} - F_{0,T}^{P}$ . One year from now we acquire the stock via the prepaid forward and we use that stock to close the short position. The cash flows in the above table are simply reversed.

We assume that prices are at levels that preclude arbitrage. This raises a question: If prices are such that arbitrage is not profitable, who can afford to become an arbitrageur, watching out for arbitrage opportunities? We can resolve this paradox with the insight that in order for arbitrageurs to earn a living, arbitrage opportunities must occur from time to time; there must be "an equilibrium degree of disequilibrium." However, you would not expect arbitrage to be obvious or easy to undertake.

The transactions in Table 2 are the same as those of a market-maker who is hedging a position. A market-maker would sell a prepaid forward if a customer wished to buy it. The market-maker then has an obligation to deliver the stock at a fixed price and, in order to offset this risk, can buy the stock. The market-maker thus engages in the same transactions as an arbitrageur, except the purpose is risk management, not arbitrage. Thus, the transaction described in Table 2—selling the prepaid forward and buying the stock—also describes the actions of a market-maker.

The no-arbitrage arguments we will make thus serve two functions: They tell us how to take advantage of mispricings, and they describe the behavior of market-makers managing risk.

# Pricing Prepaid Forwards with Dividends

When a stock pays a dividend, the prepaid forward price is less than the stock price. The owner of stock receives dividends, but the owner of a prepaid forward contract does not. It is necessary to adjust the prepaid forward price to reflect dividends that are received by the shareholder but not by the holder of the prepaid forward contract.

Discrete Dividends. To understand the effect of dividends, consider Stock A, which pays no dividend, and otherwise identical stock B, which pays a 5 dividend 364 days from today. We know that the 1-year prepaid forward price for stock A is the current stock price. What is the one-year prepaid forward price for stock B?

The  \$5 dividend is paid just before the prepaid forward expiration date 1 year from today. Thus, on the delivery date stock B will be priced\$ 5 less than stock A. The prepaid forward price for stock B should therefore be lower than that for stock A by the present value of 5.

In general, the price for a prepaid forward contract will be the stock price less the present value of dividends to be paid over the life of the contract. Suppose there are multiple dividend payments made throughout the life of the forward contract: A stock is expected to make dividend payments of  $D_{t_i}$  at times  $t_i$ ,  $i = 1, \dots, n$ . A prepaid forward contract will entitle you to receive the stock at time  $T$  but without receiving the interim dividends. Thus, the prepaid forward price is

$$

\boxed {F _ {0, T} ^ {P} = S _ {0} - \sum_ {i = 1} ^ {n} \mathrm {P V} _ {0, t _ {i}} \left(D _ {t _ {i}}\right)} \tag {3}

$$ where  $\mathrm{PV}_{0,t_i}$  denotes the time 0 present value of a time  $t_i$  payment.

Example 1. Suppose XYZ stock costs  \$100 today and is expected to pay a\$ 1.25 quarterly dividend, with the first coming 3 months from today and the last just prior to the delivery of the stock. Suppose the annual continuously compounded risk-free rate is  $10\%$ . The quarterly continuously compounded rate is therefore  $2.5\%$ . A 1-year prepaid forward contract for the stock would cost

$$
F _ {0, 1} ^ {P} = \ 1 0 0 - \sum_ {i = 1} ^ {4} \ 1. 2 5 e ^ {- 0. 0 2 5 i} = \ 9 5. 3 0
$$

The calculation in this example implicitly assumes that the dividends are certain. Over a short horizon this might be reasonable. Over a long horizon we would expect dividend risk to be greater, and we would need to adjust the discount rate in computing the present value of expected dividends.

Continuous Dividends. For stock indexes containing many stocks, it is common to model the dividend as being paid continuously at a rate that is proportional to the level of the index; i.e., the dividend yield (the annualized dividend payment divided by the stock price) is constant. This is an approximation, but in a large stock index there can be dividend payments on a large proportion of days. $^{7}$  The dividend yield is not likely to be fixed in the short run: When stock prices rise, the dividend yield falls, at least temporarily. Nevertheless, we will assume a constant proportional dividend yield for purposes of this discussion.

To model a continuous dividend, suppose that the index price is  $S_0$  and the annualized daily compounded dividend yield is  $\delta$ . Then the dollar dividend over 1 day is

$$
\text {D a i l y d i v i d e n d} = \frac {\delta}{3 6 5} \times S _ {0}
$$

Now suppose that we reinvest dividends in the index. Because of reinvestment, after  $T$  years we will have more shares than we started with. Using continuous compounding to approximate daily compounding, we get

$$
\text {N u m b e r o f s h a r e s} = \left(1 + \frac {\delta}{3 6 5}\right) ^ {3 6 5 \times T} \approx e ^ {\delta T}
$$

At the end of  $T$  years we have approximately  $e^{\delta T}$  times the shares we had initially.

Now suppose we wish to invest today in order to have one share at time  $T$ . We can buy  $e^{-\delta T}$  shares today. Because of dividend reinvestment, at time  $T$ , we will have  $e^{\delta T}$  more shares than we started with, so we end up with exactly one share. Adjusting the initial quantity in this way in order to offset the effect of income from the asset is called tailing the position. Tailing enables us to offset the effect of continuous dividends. We will encounter the concept of tailing frequently.

Since an investment of  $e^{-\delta T} S_0$  gives us one share at time  $T$ , this is the time 0 prepaid forward price for delivery at time  $T$ :

$$
\boxed {F _ {0, T} ^ {P} = S _ {0} e ^ {- \delta T}} \tag {4}
$$ where  $\delta$  is the dividend yield and  $T$  the time to maturity of the prepaid forward contract.


Example 2. Suppose that the index is 125 and the annualized daily compounded dividend yield is 3\%. The daily dollar dividend is

$$

\text {D i v i d e n d} = (0. 0 3 \div 3 6 5) \times \$ 1 2 5 = \$ 0. 0 1 0 2 7

$$ or a little more than one penny per unit of the index. If we start by holding one unit of the index, at the end of 1 year we will have


$$ e ^ {0. 0 3} = 1. 0 3 0 4 5 5
$$ shares. Thus, if we wish to end the year holding one share, we must invest in


$$ e ^ {- 0. 0 3} = 0. 9 7 0 4 4 6
$$ shares. The prepaid forward price is


$$

\$ 125 e ^ {- 0. 0 3} = \$ 12 1. 3 0 6

$$

# BOX I: Low Exercise Price Options

In some countries, including Australia and Switzerland, it is possible to buy stock options with very low strike prices—so low that it is virtually certain the option will expire in-the-money. For example, in Australia, the strike price is a penny. Such an option is called a low exercise price option (LEPO). These often exist in order to avoid taxes or transaction fees associated with directly trading the stock. LEPOs do not pay dividends and do not carry voting rights. As with any call option, a LEPO is purchased outright, and it entitles the option holder to acquire the stock at expiration by paying the (low) strike price. The payoff of a LEPO expiring at time  $T$  is

$$

\max  (0, S _ {T} - K)

$$

However, if the strike price,  $K$ , is so low that the option is certain to be exercised, this is just

$$

S _ {T} - K

$$

This option has a value at time 0 of

$$

F _ {0, T} ^ {P} - \operatorname {P V} (K)

$$

Since the strike price of the option is close to zero, a LEPO is essentially a prepaid forward contract.

# 3. FORWARD CONTRACTS ON STOCK

If we know the prepaid forward price, we can compute the forward price. The difference between a prepaid forward contract and a forward contract is the timing of the payment for the stock, which is immediate with a prepaid forward but deferred with a forward. Because there is deferral of payment, the forward contract is initially costless for both the buyer and seller; the premium is zero. Also, because payment is deferred, the forward price is just the future value of the prepaid forward price:

$$

F _ {0, T} = \operatorname {F V} \left(F _ {0, T} ^ {P}\right) \tag {5}

$$

This formula holds for any kind of dividend payment.

An important special case is that of a continuous dividend. In that case, equation (5) becomes

$$

F _ {0, T} = e ^ {r T} S _ {0} e ^ {- \delta T}

$$ or


$$

\boxed {F _ {0, T} = S _ {0} e ^ {(r - \delta) T}} \tag {6}

$$

The  $r$  in equation (6) is the yield to maturity for a default-free zero coupon bond with the same time to maturity as the forward contract. For each maturity, there is an interest rate,  $r$ , such that  $e^{-r(T - t)} = P(t,T)$ , where  $P(t,T)$  is the time  $t$  price of a zero-coupon bond maturing at time  $T$ . We can therefore also write equation (6) as the price of the prepaid forward contract divided by the price of a zero-coupon bond:

$$

F _ {0, T} = S _ {0} e ^ {- \delta T} / P (0, T)

$$

For forward contracts with different maturities, different values of  $r$  (and for that matter,  $\delta$ ) will generally be appropriate. For simplicity we will write formulas as if there is a single interest rate for all maturities, but in practice this is unlikely to be true.

As is apparent from equation (6), the forward price is generally different from the spot price. The forward premium is the ratio of the forward price to the spot price, defined as

$$

\text {F o r w a r d} = \frac {F _ {0 , T}}{S _ {0}} \tag {7}

$$

We can annualize the forward premium and express it as a percentage, in which case we have

$$

\mathrm {A n n u a l i z e d f o r w a r d p r e m i u m} = \frac {1}{T} \ln \left(\frac {F _ {0 , T}}{S _ {0}}\right)

$$

For the case of continuous dividends, equation (6), the annualized forward premium is simply the difference between the risk-free rate and the dividend yield,  $r - \delta$ .

Occasionally it is possible to observe the forward price but not the price of the underlying stock or index. For example, the futures contract for the S&P 500 index trades at times when the NYSE is not open, so it is possible to observe the futures price but not the stock price. The asset price implied by the forward pricing formulas above is said to define fair value for the underlying stock or index. Equation (6) is used in this case to infer the value of the index.

# Does the Forward Price Predict the Future Spot Price?

It is common to think that the forward price predicts the future spot price. Equation (9) tells us that the forward price equals the expected future spot price, but with a discount for the risk premium of the asset. Thus, the forward price systematically errs in predicting the future stock price. If the asset has a positive risk premium, the future spot price will on average be greater than the forward price.

The reason is straightforward. When you buy a stock, you invest money that has an opportunity cost (it could otherwise have been invested in an interest-earning asset), and you are acquiring the risk of the stock. On average you expect to earn interest as compensation for the time value of money. You also expect an additional return as compensation for the risk of the stock—this is the risk premium. Algebraically, the expected return on a stock is

$$

\alpha = \underbrace {r} _ {\text {C o m p e n s a t i o n f o r t i m e}} + \underbrace {\alpha - r} _ {\text {C o m p e n s a t i o n f o r r i s k}} \tag {8}

$$

When you enter into a forward contract, there is no investment; hence, you are not compensated for the time value of money. However, the forward contract retains the risk of the stock, so you must be compensated for risk. This means that the forward contract must earn the risk premium. If the risk premium is positive, then on average you must expect a positive return from the forward contract. The only way this can happen is if the forward price predicts too low a stock price. In other words the forward contract is a biased predictor of the future stock price. This explains the discount by the risk premium in equation (9).

As an example, suppose that a stock index has an expected return of  $15\%$ , while the risk-free rate is  $5\%$ . If the current index price is 100, then on average we expect that the index will be 115 in 1 year. The forward price for delivery in 1 year will be only 105, however.

This means that a holder of the forward contract will on average earn positive profits, albeit at the cost of bearing the risk of the index.

We can see the bias in another way by using equation (2). The prepaid forward price is the present value of the expected future spot price. The forward price is the future value of the prepaid forward price. Thus, we have

$$

F _ {0, T} = e ^ {r T} F _ {0, T} ^ {P} = E _ {0} \left(S _ {T}\right) e ^ {- (\alpha - r) T} \tag {9}

$$

The forward price is the expected future spot price, discounted at the risk premium.

This bias does not imply that a forward contract is a good investment. Rather, it tells us that the risk premium on an asset can be created at zero cost and hence has a zero value. Though this seems surprising, it is a result from elementary finance that if we buy any asset and borrow the full amount of its cost—a transaction that requires no investment—then we earn the risk premium on the asset. Since a forward contract has the risk of a fully leveraged investment in the asset, it earns the risk premium. This proposition is true in general, not just for the example of a forward on a non-dividend-paying stock.

# Creating a Synthetic Forward Contract

A market-maker or arbitrageur must be able to offset the risk of a forward contract. It is possible to do this by creating a synthetic forward contract to offset a position in the actual forward contract.

In this discussion we will assume that dividends are continuous and paid at the rate  $\delta$ , and hence that equation (6) is the appropriate forward price. We can then create a synthetic long forward contract by buying the stock and borrowing to fund the position. To see how the synthetic position works, recall that the payoff at expiration for a long forward position on the index is

$$

\text {P a y o f f} = S _ {T} - F _ {0, T}

$$

In order to obtain this same payoff, we buy a tailed position in the stock, investing  $S_0e^{-\delta T}$ . This gives us one share at time  $T$ . We borrow this amount so that we are not required to pay anything additional at time 0. At time  $T$  we must repay  $S_0e^{(r - \delta)T}$  and we sell the stock for  $S_T$ . Table 3 demonstrates that borrowing to buy the stock replicates the expiration payoff to a forward contract.

Just as we can use the stock and borrowing to synthetically create a forward, we can also use the forward to create synthetic stocks and bonds. Table 4 demonstrates that we can go long a forward contract and lend the present value of the forward price to synthetically create the stock. The expiration payoff in this table assumes that equation (6) holds. Table 5 demonstrates that if we buy the stock and short the forward, we create cash flows like those of a risk-free bond. The rate of return on this synthetic bond—the construction of which is summarized in Table 5—is called the implied repo rate.

To summarize, we have shown that

$$

F o r w a r d = \text {S t o c k} - \text {z e r o - c o u p o n b o n d} \tag {10}

$$

Demonstration that borrowing  $S_0e^{-\delta T}$  to buy  $e^{-\delta T}$  shares of the index replicates the payoff to a forward contract,  $S_{T} - F_{0,T}$ .

TABLE 3

<table><tr><td rowspan="2">Transaction</td><td colspan="2">Cash Flows</td></tr><tr><td>Time 0</td><td>Time T (expiration)</td></tr><tr><td>Buy e-δT units of the index</td><td>-S0e-δT</td><td>+ST</td></tr><tr><td>Borrow S0e-δT</td><td>+S0e-δT</td><td>-S0e(r-δ)T</td></tr><tr><td>Total</td><td>0</td><td>ST-S0e(r-δ)T</td></tr></table>

Demonstration that going long a forward contract at the price  $F_{0,T} = S_0e^{(r - \delta)T}$  and lending the present value of the forward price creates a synthetic share of the index at time  $T$ .

TABLE 4

<table><tr><td rowspan="2">Transaction</td><td colspan="2">Cash Flows</td></tr><tr><td>Time 0</td><td>Time T (expiration)</td></tr><tr><td>Long one forward</td><td>0</td><td>ST - FO,T</td></tr><tr><td>Lend S0e-δT</td><td>-S0e-δT</td><td>+S0e(r-δ)T</td></tr><tr><td>Total</td><td>-S0e-δT</td><td>ST</td></tr></table>

Demonstration that buying  $e^{-\delta T}$  shares of the index and shorting a forward creates a synthetic bond.

TABLE 5

<table><tr><td rowspan="2">Transaction</td><td colspan="2">Cash Flows</td></tr><tr><td>Time 0</td><td>Time T (expiration)</td></tr><tr><td>Buy e-δT units of the index</td><td>-S0e-δT</td><td>+ST</td></tr><tr><td>Short one forward</td><td>0</td><td>F0,T-ST</td></tr><tr><td>Total</td><td>-S0e-δT</td><td>F0,T</td></tr></table>

We can rearrange this equation to derive other synthetic equivalents.

Stock = Forward + zero-coupon bond

Zero-coupon bond  $=$  Stock - forward

All of these synthetic positions can be reversed to create synthetic short positions.

Transactions and cash flows for a cash-and-carry: A market-maker is short a forward contract and long a synthetic forward contract.

TABLE 6

<table><tr><td rowspan="2">Transaction</td><td colspan="2">Cash Flows</td></tr><tr><td>Time 0</td><td>Time T (expiration)</td></tr><tr><td>Buy tailed position in stock, paying S0e-δT</td><td>-S0e-δT</td><td>+ST</td></tr><tr><td>Borrow S0e-δT</td><td>+S0e-δT</td><td>-S0e(r-δ)T</td></tr><tr><td>Short forward</td><td>0</td><td>F0,T - ST</td></tr><tr><td>Total</td><td>0</td><td>F0,T - S0e(r-δ)T</td></tr></table>

Transactions and cash flows for a reverse cash-and-carry: A market-maker is long a forward contract and short a synthetic forward contract.

TABLE 7

<table><tr><td rowspan="2">Transaction</td><td colspan="2">Cash Flows</td></tr><tr><td>Time 0</td><td>Time T (expiration)</td></tr><tr><td>Short tailed position in stock, receiving S0e-δT</td><td>+S0e-δT</td><td>-ST</td></tr><tr><td>Lend S0e-δT</td><td>-S0e-δT</td><td>+S0e(r-δ)T</td></tr><tr><td>Long forward</td><td>0</td><td>ST-F0,T</td></tr><tr><td>Total</td><td>0</td><td>S0e(r-δ)T-F0,T</td></tr></table>

# Synthetic Forwards in Market-Making and Arbitrage

Now we will see how market-makers and arbitrageurs use these strategies. Suppose a customer wishes to enter into a long forward position. The market-maker, as the counterparty, is left holding a short forward position. He can offset this risk by creating a synthetic long forward position.

Specifically, consider the transactions and cash flows in Table 6. The market-maker is short a forward contract and long a synthetic forward contract, constructed as in Table 3. There is no risk because the total cash flow at time  $T$  is  $F_{0,T} - S_0e^{(r - \delta)T}$ . All of the components of this cash flow—the forward price, the stock price, the interest rate, and the dividend yield—are known at time 0. The result is a risk-free position.

Similarly, suppose the market-maker wishes to hedge a long forward position. Then it is possible to reverse the positions in Table 6. The result is in Table 7.

A transaction in which you buy the underlying asset and short the offsetting forward contract is called a cash-and-carry. A cash-and-carry has no risk: You have an obligation to deliver the asset but also own the asset. The market-maker offsets the short forward position with a cash-and-carry. An arbitrage that involves buying the underlying asset and selling it forward is called a cash-and-carry arbitrage. As you might guess, a reverse cash-and-carry entails short-selling the index and entering into a long forward position.


If the forward contract is priced according to equation (6), then profits on a cash-and-carry are zero. We motivated the cash-and-carry in Table 6 as risk management by a market-maker. However, an arbitrageur might also engage in a cash-and-carry. If the forward price is too high relative to the stock price—i.e., if  $F_{0,T} > S_0e^{(r - \delta)T}$ —then an arbitrageur or market-maker can use the strategy in Table 6 to make a risk-free profit.

An arbitrageur would make the transactions in Table 7 if the forward were underpriced relative to the stock—i.e., if  $S_0e^{(r - \delta)T} > F_{0,T}$ .

As a final point, you may be wondering about the role of borrowing and lending in Tables 6 and 7. When you explicitly account for borrowing, you account for the opportunity cost of investing funds. For example, if we omitted borrowing from Table 6, we would invest  $S_0 e^{-\delta T}$  today and receive  $F_{0,T}$  at time  $T$ . In order to know if there is an arbitrage opportunity, we would need to perform a present value calculation to compare the time 0 cash flow with the time  $T$  cash flow. By explicitly including borrowing in the calculations, this time-value-of-money comparison is automatic. $^9$

Similarly, by comparing the implied repo rate with our borrowing rate, we have a simple measure of whether there is an arbitrage opportunity. For example, if we could borrow at  $7\%$ , then there is an arbitrage opportunity if the implied repo rate exceeds  $7\%$ . On the other hand, if our borrowing rate exceeds the implied repo rate, there is no arbitrage opportunity.

# No-Arbitrage Bounds with Transaction Costs

Tables 6 and 7 demonstrate that an arbitrageur can make a costless profit if  $F_{0,T} \neq S_0 e^{(r - \delta)T}$ . This analysis ignores trading fees, bid-ask spreads, different interest rates for borrowing and lending, and the possibility that buying or selling in large quantities will cause prices to change. The effect of such costs will be that, rather than there being a single no-arbitrage price, there will be a no-arbitrage bound: a lower price  $F^{-}$  and an upper price  $F^{+}$  such that arbitrage will not be profitable when the forward price is between these bounds.

Suppose that the stock and forward have bid and ask prices of  $S^b < S^a$  and  $F^b < F^a$ , a trader faces a cost  $k$  of transacting in the stock or forward, and the interest rates for borrowing and lending are  $r^b > r^l$ . In this example we suppose that there are no transaction costs at time  $T$ , with the forward settled by delivery of the stock.

We will first derive  $F^{+}$ . An arbitrageur believing the observed bid forward price,  $F^{b}$ , is too high will undertake the transactions in Table 6: Sell the forward and borrow to buy the stock. For simplicity we will assume the stock pays no dividends. The arbitrageur will pay the transaction cost  $k$  to short the forward and pay  $(S_0^a + k)$  to acquire one share of stock. The required borrowing to finance the position is therefore  $S_0^a + 2k$ . At time  $T$ , the payoff is

$$

\underbrace {- (S _ {0} ^ {a} + 2 k) e ^ {r ^ {b} T}} _ {\text {R e p a y m e n t o f b o r r o w i n g}} + \underbrace {F _ {0 , T} - S _ {T}} _ {\text {V a l u e o f f o r w a r d}} + \underbrace {S _ {T}} _ {\text {V a l u e o f s t o c k}}

$$

Arbitrage is profitable if this expression is positive, or

$$

F ^ {b} > F ^ {+} = \left(S _ {0} ^ {a} + 2 k\right) e ^ {r ^ {b} T} \tag {11}

$$

Thus, the upper bound reflects the fact that we pay a high price for the stock (the ask price), pay transaction costs on both the stock and forward, and borrow at a high rate.

We can derive  $F^{-}$  analogously. Problem 14 asks you to verify that the bound below which arbitrage is feasible is

$$

F ^ {a} <   F ^ {-} = \left(S _ {0} ^ {b} - 2 k\right) e ^ {r ^ {l} T} \tag {12}

$$

This expression assumes that short-selling the stock does not entail costs other than bid-ask transaction costs when the short position is initiated.

Notice that in equations (11) and (12), the costs all enter in such a way as to make the no-arbitrage region as large as possible (for example, the low lending rate enters  $F^{-}$  and the high borrowing rate enters  $F^{+}$ ). This makes economic sense: Trading costs cannot help an arbitrageur make a profit.

There are additional costs not reflected in equations (11) and (12). One is that significant amounts of trading can move prices, so that what appears to be an arbitrage may vanish if prices change when the arbitrageur enters a large order. Another challenge can be execution risk. If trades do not occur instantaneously, the arbitrage can vanish before the trades are completed.

It is likely that the no-arbitrage region will be different for different arbitrageurs at a point in time, and different across time for a given arbitrageur. For example, consider the trading transaction cost,  $k$ . A large investment bank sees stock order flow from a variety of sources and may have inventory of either long or short positions in stocks. The bank may be able to buy or sell shares at low cost by serving as market-maker for a customer order. It may be inexpensive for a bank to short if it already owns the stocks, or it may be inexpensive to buy if the bank already has a short position.

Borrowing and lending rates can also vary. For a transaction that is explicitly financed by borrowing, the relevant interest rates are the arbitrageur's marginal borrowing rate (if that is the source of funds to buy stocks) or lending rate (if stocks are to be shorted). However, at other times, it may be possible to borrow at a lower rate or lend at a higher rate. For example, it may be possible to sell T-bills being held for some other purpose as a source of short-term funds. This may effectively permit borrowing at a low rate. Finally, in order to borrow money or securities arbitrageurs must have available capital. Undertaking one arbitrage may prevent undertaking another.

The overall conclusion is not surprising: Arbitrage may be difficult, risky, and costly. Large deviations from the theoretical price may be arbitraged, but small deviations may or may not represent genuine arbitrage opportunities.

# Quasi-Arbitrage

The previous section focused on explicit arbitrage. However, it can also be possible to undertake implicit arbitrage by substituting a low yield position for one with a higher return. We call this quasi-arbitrage.

Consider, for example, a corporation that can borrow at  $8.5\%$  and lend at  $7.5\%$ . Suppose there is a cash-and-carry transaction with an implied repo rate of  $8\%$ . There is no pure arbitrage opportunity for the corporation, but it would make sense to divert lending from the  $7.5\%$  assets to the  $8\%$  cash-and-carry. If we attempt explicit arbitrage by borrowing at  $8.5\%$  in order to earn  $8\%$  on the cash-and-carry, the transaction becomes unprofitable. We can arbitrage only to the extent that we are already lending; this is why it is "quasi"-arbitrage.


# An Interpretation of the Forward Pricing Formula

The forward pricing formula for a stock index, equation (6), depends on  $r - \delta$ , the difference between the risk-free rate and the dividend yield. This difference is called the cost of carry.

Suppose you buy a unit of the index that costs  $S$  and fund the position by borrowing at the risk-free rate. You will pay  $rS$  on the borrowed amount, but the dividend yield will provide offsetting income of  $\delta S$ . You will have to pay the difference,  $(r - \delta)S$ , on an ongoing basis. This difference is the net cash flow if you carry a long position in the asset; hence, it is called the "cost of carry."

Now suppose you were to short the index and invest the proceeds at the risk-free rate. You would receive  $S$  for shorting the asset and earn  $rS$  on the invested proceeds, but you would have to pay  $\delta S$  to the index lender. We will call  $\delta$  the lease rate of the index; it is what you would have to pay to a lender of the asset. The lease rate of an asset is the annualized cash payment that the borrower must make to the lender. For a non-dividend-paying stock, the lease rate is zero, while for a dividend-paying stock, the lease rate is the dividend.

Here is an interpretation of the forward pricing formula:

$$

\begin{array}{l} F o r w a r d p r i c e = \text {S p o t p r i c e} + \text {I n t e r s t t o c a r r y t h e a s s e t} - \text {A s s e t l e a s e r a t e} \tag {13} \\ \text {C o s t} \\ \end{array}

$$

The forward contract, unlike the stock, requires no investment and makes no payouts and therefore has a zero cost of carry. One way to interpret the forward pricing formula is that, to the extent the forward contract saves our having to pay the cost of carry, we are willing to pay a higher price. This is what equation (13) says.

# 4. FUTURES CONTRACTS

Futures contracts are essentially exchange-traded forward contracts. As with forwards, futures contracts represent a commitment to buy or sell an underlying asset at some future date. Because futures are exchange-traded, they are standardized and have specified delivery dates, locations, and procedures. Futures may be traded either electronically or in trading pits, with buyers and sellers shouting orders to one another (this is called open outcry). Each exchange has an associated clearinghouse.

Although forwards and futures are similar in many respects, there are differences.

- Whereas forward contracts are settled at expiration, futures contracts are settled daily. The determination of who owes what to whom is called marking-to-market. Frequent marking-to-market and settlement of a futures contract can lead to pricing differences between the futures and an otherwise identical forward.
- As a result of daily settlement, futures contracts are liquid—it is possible to offset an obligation on a given date by entering into the opposite position. For example, if you are long the September S&P 500 futures contract, you can cancel your obligation to buy by entering into an offsetting obligation to sell the September S&P 500 contract. If you use the same broker to buy and to sell, your obligation is officially cancelled.
- Over-the-counter forward contracts can be customized to suit the buyer or seller, whereas futures contracts are standardized. For example, available futures contracts may permit delivery of 250 units of a particular index in only March or June. A forward contract, by contrast, could specify April delivery of 300 units of the index.
- Because of daily settlement, the nature of credit risk is different with the futures contract. In fact, futures contracts are structured so as to minimize the effects of credit risk.
- There are typically daily price limits in futures markets (and on some stock exchanges as well). A price limit is a move in the futures price that triggers a temporary halt in trading. For example, there is an initial  $5\%$  limit on down moves in the S&P 500 futures contract. An offer to sell exceeding this limit can trigger a temporary trading halt, after which time a  $10\%$  price limit is in effect. If that is exceeded, there are subsequent  $15\%$  and  $20\%$  limits. The rules can be complicated, but it is important to be aware that such rules exist.

We will illustrate futures contracts with the S&P 500 index futures contract as a specific example.

# The S&P 500 Futures Contract

The S&P 500 futures contract has the S&P 500 stock index as the underlying asset. Futures on individual stocks have recently begun trading in the United States. (See Box 2.) Figure 1 shows the specifications of a newspaper quotation for the S&P 500 index futures contract along with other stock index futures contracts. The notional value, or size, of the contract is the dollar value of the assets underlying one contract. In this case it is by definition  \ {250} \times  {1300} = \$ {325},{000}  .  {}^{12}

The S&P 500 is an example of a cash-settled contract: Instead of settling by actual delivery of the underlying stocks, the contract calls for a cash payment that equals the profit or loss as if the contract were settled by delivery of the underlying asset. On the expiration day, the S&P 500 futures contract is marked-to-market against the actual cash index. This final settlement against the cash index guarantees that the futures price equals the index value at contract expiration.

It is easy to see why the S&P 500 is cash-settled. A physical settlement process would call for delivery of 500 shares (or some large subset thereof) in the precise percentage they make up the S&P 500 index. This basket of stocks would be expensive to buy and sell. Cash settlement is an inexpensive alternative.

# BOX 2: Single Stock Futures

Futures contracts on individual stocks trade in various countries. In the United States, single stock futures began trading in November 2002 on OneChicago, an electronic exchange owned jointly by the Chicago Board Options Exchange, the Chicago Board of Trade, and the Chicago Mercantile Exchange. Earlier, the trading of single stock futures had been stalled by disagreements among exchanges and by a regulatory turf battle between the Securities and Exchange Commission, which regulates stocks and stock options, and the Commodity Futures Trading Commission, which regulates commodity and equity index futures.

Single stock futures were controversial even before trading began, with disagreement about how successful the product would be. What need would single stock futures serve? There was already a well-established market for buying and short-selling stocks, and investors could create synthetic stock forwards using options. Would differences in margin requirements, transaction costs, or contract characteristics make the new product successful?


Since 2002, one competitor to OneChicago (NQLX) has entered and then exited the market for single stock futures in the United States. Trading volume has proved disappointing for some advocates (see Zwick and Collins, 2004).

In 2010, OneChicago ("OCX") introduced OCX.NoDiv, a dividend-protected single-stock futures contract. The new product reduces the futures settlement price by the dividend amount on each ex-dividend day. The new contract should have a price equal to the stock price plus interest, while the standard contract will subtract the present value of dividends. The two contracts trading side-by-side permit investors to speculate on and hedge dividends.

# FIGURE I

Specifications for the S&P 500 index futures contract.

# Underlying

Where traded Size

Months

Trading ends

Settlement

# S&P 500 index

Chicago Mercantile Exchange 250 × S&P 500 index

March, June, September, December

Business day prior to determination of settlement price

Cash-settled, based upon opening price of S&P 500 on third Friday of expiration month

# Margins and Marking to Market

Let's explore the logistics of holding a futures position. Suppose the futures price is 1100 and you wish to acquire a \$2.2 million position in the S&P 500 index. The notional value of one contract is $250 × 1100 = $275,000; this represents the amount you are agreeing to pay at expiration per futures contract. To go long \$2.2 million of the index, you would enter into \$2.2 million/\$0.275 million = 8 long futures contracts. The notional value of eight contracts is 8 × $250 × 1100 = $2,000 × 1100 = 2.2 million.

A broker executes your buy order. For every buyer there is a seller, which means that one or more investors must be found who simultaneously agree to sell forward the same number of units of the index. The total number of open positions (buy/sell pairs) is called the open interest of the contract.

Both buyers and sellers are required to post a performance bond with the broker to ensure that they can cover a specified loss on the position. This deposit, which can earn interest, is called margin and is intended to protect the counterparty against your failure to meet your obligations. The margin is a performance bond, not a premium. Hence, futures contracts are costless (not counting, of course, commissions and the bid-ask spread).

To understand the role of margin, suppose that there is  $10\%$  margin and weekly settlement (in practice, settlement is daily). The margin on futures contracts with a notional value of \$2.2 million is \$220,000.

If the S&P 500 futures price drops by 1, to 1099, we lose  \$2000 on our futures position. The reason is that eight long contracts obligate us to pay\$ 2000 × 1100 to buy 2000 units of the index which we could now sell for only \$2000 × 1099. Thus, we lose (1099 - 1100) × \$2000 = -2000. Suppose that over the first week, the futures price drops 72.01 points to 1027.99, a decline of about 6.5\%. On a mark-to-market basis, we have lost

$$

\$ 2000 \times -72.01 = -\$ 144,020

$$

We have a choice of either paying this loss directly, or allowing it to be taken out of the margin balance. It doesn't matter which we do, since we can recover the unused margin balance plus interest at any time by offsetting our position.

If the loss is subtracted from the margin balance, we have earned 1 week's interest and have lost  \ {144},{020}  . Thus, if the continuously compounded interest rate is 6\%, our margin balance after 1 week is

$$

\$ 220,000e ^ {0.06 \times 1 / 52} - \$ 144,020 = \$ 76,233.99

$$

Because we have a 10\% margin, a 6.5\% decline in the futures price results in a 65\% decline in margin. Were we to close out our position by entering into eight short index futures contracts, we would receive the remaining margin balance of $76,233.99.

The decline in the margin balance means the broker has significantly less protection should we default. For this reason, participants are required to maintain the margin at a minimum level, called the maintenance margin. This is often set at  $70\%$  to  $80\%$  of the initial margin level. In this example, where the margin balance declines  $65\%$ , we would have to post additional margin. The broker would make a margin call, requesting additional margin. If we failed to post additional margin, the broker would close the position by selling 2000 units of the index and return to us the remaining margin. In practice, marking-to-market and settling up are performed at least daily.

Since margin you post is the broker's protection against your default, a major determinant of margin levels is the volatility of the underlying asset. The margin on the S&P 500 contract has generally been less than the  $10\%$  we assume in this example. In December

Mark-to-market proceeds and margin balance over 10 weeks from long position in 8 S&P 500 futures contracts. The last column does not include additional margin payments. The final row represents expiration of the contract.

TABLE 8

<table><tr><td>Week</td><td>Multiplier ($)</td><td>Futures Price</td><td>Price Change</td><td>Margin Balance($)</td></tr><tr><td>0</td><td>2000.00</td><td>1100.00</td><td>—</td><td>220,000.00</td></tr><tr><td>1</td><td>2000.00</td><td>1027.99</td><td>-72.01</td><td>76,233.99</td></tr><tr><td>2</td><td>2000.00</td><td>1037.88</td><td>9.89</td><td>96,102.01</td></tr><tr><td>3</td><td>2000.00</td><td>1073.23</td><td>35.35</td><td>166,912.96</td></tr><tr><td>4</td><td>2000.00</td><td>1048.78</td><td>-24.45</td><td>118,205.66</td></tr><tr><td>5</td><td>2000.00</td><td>1090.32</td><td>41.54</td><td>201,422.13</td></tr><tr><td>6</td><td>2000.00</td><td>1106.94</td><td>16.62</td><td>234,894.67</td></tr><tr><td>7</td><td>2000.00</td><td>1110.98</td><td>4.04</td><td>243,245.86</td></tr><tr><td>8</td><td>2000.00</td><td>1024.74</td><td>-86.24</td><td>71,046.69</td></tr><tr><td>9</td><td>2000.00</td><td>1007.30</td><td>-17.44</td><td>36,248.72</td></tr><tr><td>10</td><td>2000.00</td><td>1011.65</td><td>4.35</td><td>44,990.57</td></tr></table>

2010, for example, the initial margin on the S&P 500 futures contract was about  $9\%$  of the notional value of the contract. The maintenance margin was  $80\%$  of the initial margin.

To illustrate the effect of periodic settlement, Table 8 reports hypothetical futures price moves and tracks the margin position over a period of 10 weeks, assuming weekly marking-to-market and a continuously compounded risk-free rate of  $6\%$ . As the party agreeing to buy at a fixed price, we make money when the price goes up and lose when the price goes down. The opposite would occur for the seller.

The 10-week profit on the position is obtained by subtracting from the final margin balance the future value of the original margin investment. Week-10 profit on the position in Table 8 is therefore

$$

\$ 44,990.57 - \$ 220,000e ^ {0.06 \times 10 / 52} = -\$ 177,562.60

$$

What if the position had been a forward rather than a futures position, but with prices the same? In that case, after 10 weeks our profit would have been

$$

(1 0 1 1. 6 5 - 1 1 0 0) \times \$ 2 0 0 0 = - \$ 1 7 6, 7 0 0

$$

Why do the futures and forward profits differ? The reason is that with the futures contract, interest is earned on the mark-to-market proceeds. Given the prices in Table 8, the loss is larger for futures than forwards because prices on average are below the initial price and we have to fund losses as they occur. With a forward, by contrast, losses are not funded until expiration. Earning interest on the daily settlement magnifies the gain or loss compared to that on a forward contract. Had there been consistent gains on the position in this example, the futures profit would have exceeded the forward profit. Appendix B demonstrates that the ultimate payoff to a forward and futures contract can be equated in this example by adjusting the number of futures contracts so as to undo the magnifying effect of interest.


# Comparing Futures and Forward Prices

An implication of Appendix B is that if the interest rate were not random, then forward and futures prices would be the same. However, what if the interest rate varies randomly? Suppose, for example, that on average the interest rate increases when the futures price increases; i.e., the two are positively correlated. Then the margin balance would grow (due to an increased futures price) just as the interest rate was higher. The margin balance would shrink as the interest rate was lower. On average in this case, a long futures position would outperform a long forward contract.

Conversely, suppose that on average the interest rate declined as the futures price rose. Then as the margin balance on a long position grew, the proceeds would be invested at a lower rate. Similarly, as the balance declined and required additional financing, this financing would occur at a higher rate. Here a long futures contract would on average perform worse than a long forward contract.

This comparison of the forward and futures payoffs suggests that when the interest rate is positively correlated with the futures price, the futures price will exceed the price on an otherwise identical forward contract: The investor who is long futures buys at a higher price to offset the advantage of marking-to-market. Similarly, when the interest rate is negatively correlated with the forward price, the futures price will be less than an otherwise identical forward price: The investor who is long futures buys at a lower price to offset the disadvantage of marking-to-market.

As an empirical matter, forward and futures prices are very similar. The theoretical difference arises from uncertainty about the interest on mark-to-market proceeds. For short-lived contracts, the effect is generally small. However, for long-lived contracts, the difference can be significant, especially for long-lived interest rate futures, for which there is sure to be a correlation between the interest rate and the price of the underlying asset. For the rest of this chapter we will ignore the difference between forwards and futures.

# Arbitrage in Practice: S&P 500 Index Arbitrage

We now illustrate the use of equation (6) to determine the theoretical price of an S&P 500 futures contract on a specific day. In order to compute equation (6), we need three inputs: (1) the value of the cash index  $(S_0)$ , (2) the value of dividends to be paid on the index over the life of the contract  $(\delta)$ , and (3) the interest rate  $(r)$ . The pricing exercise is summarized in Table 9.

On December 16, 2010, the closing S&P 500 index price was 1242.87. S&P 500 futures contracts expiring in March 2011 and June 2011 had closing prices of 1238.50 and 1233.60. The dividend yield on the S&P 500 in mid-December was about  $1.89\%$ . The remaining input is the risk-free interest rate. What interest rate is appropriate?

TABLE 9
Actual and theoretical S&P 500 futures prices, December 16, 2010. The S&P 500 index closed at 1242.87 on December 16, and the dividend yield was  $1.89\%$ . Theoretical prices are computed using equation (6).

<table><tr><td>Maturity</td><td>Closing Price</td><td>T-bill Yield</td><td>Theoretical Price</td><td>LIBOR</td><td>Theoretical Price</td></tr><tr><td>Spot</td><td>1242.87</td><td></td><td></td><td></td><td></td></tr><tr><td>March 2011</td><td>1238.50</td><td>0.13\%</td><td>1237.41</td><td>0.30\%</td><td>1237.94</td></tr><tr><td>June 2011</td><td>1233.60</td><td>0.19\%</td><td>1232.35</td><td>0.46\%</td><td>1234.02</td></tr></table>

Rates and dividend yield from Bloomberg.

Two interest rates that we can easily observe are the yield on U.S. Treasury bills and the London Interbank Offer Rate (LIBOR), which is a borrowing rate for large financial institutions. (We will discuss LIBOR further in Section 7.) Table 9 reports 3-month and 6-month T-bill and LIBOR rates from December 16. LIBOR yields are greater than Treasury yields for two reasons. First, banks have greater default risk than the government and thus the interest rate on their deposits is greater. Second, Treasury securities are more liquid—they are easier to buy and sell—and consequently their price is greater (their yield is lower).

To think about what interest rate is appropriate, consider the economic characteristics of a futures contract. A long futures contract is like a leveraged position in the underlying asset, where the loan that provides leverage is collateralized with margin that is refreshed daily. The lender will perceive a costly default as unlikely; thus the rate can be close to risk-free. The T-bill rate includes a liquidity premium, however, while the rate implicit in a futures contract would not. The appropriate rate is therefore greater than the T-bill rate and likely lower than LIBOR.

Table 9 shows that for the 3-month contract, equation (6) yields lower prices than the observed price when using both the T-bill rate and LIBOR. For the 6-month contract, the two rates bracket the observed futures price. The percentage difference between the observed futures price and that computed using LIBOR is small for both contracts, about  $0.04\%$ .

There are a number of considerations in interpreting these differences in prices:

- Future dividends on the S&P 500 stocks are uncertain. For pricing a 3-month futures contract, one could use equation (5), with actual recent cash dividends on the underlying stocks for  $D_{t_i}$  as proxies for forthcoming dividends. There is still a risk that dividends will change over the next 3 months. The risk is greater for longer-dated futures contracts.

<table><tr><td>FIGURE 2</td><td>Underlying</td><td>Nikkei 225 Stock Index</td></tr><tr><td rowspan="5">Specifications for the Nikkei 225 index futures contract.</td><td>Where traded</td><td>Chicago Mercantile Exchange</td></tr><tr><td>Size</td><td>5 × Nikkei 225 Index</td></tr><tr><td>Months</td><td>March, June, September, December</td></tr><tr><td>Trading ends</td><td>Business day prior to determination of settlement price</td></tr><tr><td>Settlement</td><td>Cash-settled, based upon opening Osaka quotation of the Nikkei 225 index on the second Friday of expiration month</td></tr></table>

- There are transaction costs of arbitrage. As illustrated by equations (11) and (12), transaction costs create no-arbitrage regions, rather than no-arbitrage prices. In practice, a representative bid-ask spread on the index futures contract might be 20 to 30 basis points (a basis point on the S&P futures contract is 0.01—this is roughly  $0.02\%$  of the price) and  $0.25\%$  to  $0.5\%$  on the stocks in the index when traded in significant quantities. These costs are likely larger than the observed pricing difference.
- Because of transaction costs, an arbitrageur will usually not buy the entire 500-stock index, but instead either a subset of stocks or an index alternative such as Standard and Poor's Depository Receipts (SPDRs). The futures contract and the offsetting position may not move exactly together. Also, when buying a large number of stocks, there is execution risk—the possibility that prices move during the time between the order being placed and the stock being actually purchased.

Arbitrageurs will need to take into account these considerations and small differences may not be worth arbitrating. Ultimately, the only way to know if arbitrage is profitable is to assess specific prices, trading costs, and borrowing and lending rates.

# Quanto Index Contracts

At first glance the Chicago Mercantile Exchange's Nikkei 225 futures contract—see the details summarized in Figure 2—is a stock index contract like the S&P 500 contract. However, there is one very important difference: Settlement of the contract is in a different currency (dollars) than the currency of denomination for the index (yen).

To see why this is important, consider a dollar-based investor wishing to invest in the Nikkei 225 cash index. This investor must undertake two transactions: changing dollars to yen and using yen to buy the index. When the position is sold, the investor reverses these transactions, selling the index and converting yen back to dollars. There are two sources of risk in this transaction: the risk of the index, denominated in yen, and the risk that the yen/dollar exchange rate will change. From Figure 2, the Nikkei 225 futures contract is denominated in dollars rather than yen. Consequently, the contract insulates investors from currency risk, permitting them to speculate solely on whether the index rises or falls. This kind of contract is called a quanto. Quanto contracts allow investors in one country to invest in a different country without exchange rate risk.


The dollar-denominated Nikkei contract provides an interesting variation on the construction of a futures contract. Because of the quanto feature, the pricing formulas we have developed do not work for the Nikkei 225 contract.

# 5. USES OF INDEX FUTURES

An index futures contract resembles borrowing to buy the index. Why use an index futures contract if you can synthesize one? One answer is that index futures can permit trading the index at a lower transaction cost than actually trading a basket of the stocks that make up the index. If you are taking a temporary position in the index, either for investing or hedging, the transaction cost saving could be significant.

In this section we provide two examples of the use of index futures: asset allocation and cross-hedging a related portfolio.

# Asset Allocation

Asset allocation strategies involve switching investments among asset classes, such as stocks, money market instruments, and bonds. Trading the individual securities, such as the stocks in an index, can be expensive. Our earlier discussion of arbitrage demonstrated that we can use forwards to create synthetic stocks and bonds. The practical implication is that a portfolio manager can invest in a stock index without holding stocks, commodities without holding physical commodities, and so on.

Switching from Stocks to T-bills. As an example of asset allocation, suppose that we have an investment in the S&P 500 index and we wish to temporarily invest in T-bills instead of the index. Instead of selling all 500 stocks and investing in T-bills, we can simply keep our stock portfolio and take a short forward position in the S&P 500 index. This converts our investment in the index into a cash-and-carry, creating a synthetic T-bill. When we wish to revert to investing in stocks, we simply offset the forward position, undoing the cash-and-carry.

To illustrate this, suppose that the current index price,  S_0 , is 100, and the effective 1-year risk-free rate is 10\%. The forward price is therefore 110. Suppose that in 1 year, the index price could be either 80 or \$130. If we sell the index and invest in T-bills, we will have \$110 in 1 year.

Table 10 shows that if, instead of selling, we keep the stock and short the forward contract, we earn a  $10\%$  return no matter what happens to the value of the stock. In this example  $10\%$  is the rate of return implied by the forward premium. If there is no arbitrage, this return will be equal to the risk-free rate.

General Asset Allocation. We can use forwards and futures to perform even more sophisticated asset allocation. Suppose we wish to invest our portfolio in Treasury bonds (long-term Treasury obligations) instead of stocks. We can accomplish this reallocation

TABLE 10
Effect of owning the stock and selling forward, assuming that  $S_0 = \100$  and  $F_{0,1} = \$ 110 .

<table><tr><td rowspan="2">Transaction</td><td colspan="3">Cash Flows</td></tr><tr><td>Today</td><td>1 year, S1 = \$80</td><td>1 year, S1 = \$130</td></tr><tr><td>Own stock @ $100</td><td>-$100</td><td>$80</td><td>$130</td></tr><tr><td>Short forward @ $110</td><td>0</td><td>$110 – $80</td><td>$110 – $130</td></tr><tr><td>Total</td><td>-$100</td><td>$110</td><td>$110</td></tr></table> with two forward positions: Shorting the forward S&P 500 index and going long the forward T-bond. The first transaction converts our portfolio from an index investment to a T-bill investment. The second transaction converts the portfolio from a T-bill investment to a T-bond investment. This use of futures to convert a position from one asset category (stocks) to another (bonds) is called a futures overlay.


Futures overlays can have benefits beyond reducing transaction costs. Suppose an investment management company has portfolio managers who successfully invest in stocks they believe to be mispriced. The managers are judged on their performance relative to the S&P 500 stock index and consistently outperform the index by  $2\%$  per year (in the language of portfolio theory, their "alpha" is  $2\%$ ). Now suppose that new clients of the company like the performance record, but want to invest in bonds rather than stocks. The investment management company could fire its stock managers and hire bond managers, but its existing investment managers are the reason for the company's success. The company can use a futures overlay to continue to invest in stocks, but to provide a bond return instead of a stock return to investors. By investing in stocks, shorting index futures, and going long bond futures, the managers continue to invest in stocks, but the client receives a bond return plus  $2\%$  rather than a stock return plus  $2\%$ . This use of futures to transform an outperforming portfolio on one asset class into an outperforming portfolio on a different asset class is called alpha-porting.

# Cross-hedging with Index Futures

Index futures are often used to hedge portfolios that are not exactly the index. This is called cross-hedging.

Cross-hedging with Perfect Correlation. Suppose that we have a portfolio that is not the S&P 500, and we wish to shift the portfolio into T-bills. Can we use the S&P 500 futures contract to do this? The answer depends on the correlation of the portfolio with the S&P 500. To the extent the two are not perfectly correlated, there will be residual risk.

Suppose that we own 100 million of stocks with a beta relative to the S&P 500 of 1.4. Assume for the moment that the two indexes are perfectly correlated. Perfect correlation means that there is a perfectly predictable relationship between the two indexes, not necessarily that they move one-for-one. Using the Capital Asset Pricing Model (CAPM), the return on our portfolio,  $r_p$ , is related to its beta,  $\beta_p$ , by


$$ r _ {p} = r + \beta_ {p} (r _ {\mathrm {S} \& \mathrm {P}} - r)
$$

Assume also that the S&P 500 is 1100 with a 0 dividend yield and the effective annual risk-free rate is  $6\%$ . Hence the futures price is  $1100 \times 1.06 = 1166$ .

If we wish to allocate from the index into Treasury bills using futures, we need to short some quantity of the S&P 500. There are two steps to calculating the short futures quantity:

1. Adjust for the difference in the dollar amounts of our portfolio and the S&P 500 contract. In this case, one futures contract has a notional value of $250 × 1166 = $291,500. This is denominated in future dollars; the value of one contract in current dollars is $291,500/1.06 = $275,000 (this is also the prepaid forward price). Thus, the number of contracts needed to cover 100 million of stock is

$$
\frac {\mathrm {s 1 0 0 m i l l o n}}{\mathrm {s 0 . 2 7 5 m i l l o n}} = 3 6 3. 6 3 6
$$

Note that both the numerator and denominator are expressed in current dollars.

2. Adjust for the difference in beta. Since the beta of our portfolio exceeds 1, it moves more than the S&P 500 in either direction. Thus we need to further increase our S&P 500 position to account for the greater magnitude moves in our portfolio relative to the S&P 500. This gives us

$$
\text {F i n a l h e d g e q u a t i n t y} = 3 6 3. 6 3 6 \times 1. 4 = 5 0 9. 0 9
$$

Table 11 shows the performance of the hedged position. The result, as you would expect, is that the hedged position earns the risk-free rate,  $6\%$ .

Cross-Hedging with Imperfect Correlation. The preceding example assumes that the portfolio and the S&P 500 index are perfectly correlated. In practice, correlations between

TABLE 11 Results from shorting 509.09 S&P 500 index futures against a 100m portfolio with a beta of 1.4.

<table><tr><td>S&amp;P 500 Index</td><td>Gain on 509 Futures</td><td>Portfolio Value</td><td>Total</td></tr><tr><td>900</td><td>33.855</td><td>72.145</td><td>106.000</td></tr><tr><td>950</td><td>27.491</td><td>78.509</td><td>106.000</td></tr><tr><td>1000</td><td>21.127</td><td>84.873</td><td>106.000</td></tr><tr><td>1050</td><td>14.764</td><td>91.236</td><td>106.000</td></tr><tr><td>1100</td><td>8.400</td><td>97.600</td><td>106.000</td></tr><tr><td>1150</td><td>2.036</td><td>103.964</td><td>106.000</td></tr><tr><td>1200</td><td>-4.327</td><td>110.327</td><td>106.000</td></tr></table> two portfolios can be substantially less than one. Using the S&P 500 to hedge such a portfolio would introduce basis risk, creating a hedge with residual risk.

Denote the return and invested dollars on the portfolio as  $r_p$  and  $I_p$ . Assume that we short  $H$  futures contracts, each with a notional value  $N$ . The futures position earns the risk premium,  $r_{\mathrm{S&P}} - r$ . Thus, the return on the hedged position is

$$
\text {H e d g e d} = r _ {p} I _ {p} + H \times N \times (r _ {\mathrm {S} \& \mathrm {P}} - r)
$$

Repeating the analysis in the context of selecting the hedge ratio, the variance-minimizing hedge position,  $H^{*}$ , is

$$
\begin{array}{l} H ^ {*} = - \frac {I _ {p}}{N} \frac {\operatorname {C o v} \left(r _ {p} , r _ {\mathrm {S} \& \mathrm {P}}\right)}{\sigma_ {\mathrm {S} \& \mathrm {P}} ^ {2}} \tag {14} \\ = - \frac {I _ {p}}{N} \beta_ {p} \\ \end{array}
$$

The hedge quantity is denominated in terms of a quantity of futures contracts. The second equality follows because  $\mathrm{Cov}(r_p, r_{\mathrm{S&P}}) / \sigma_{\mathrm{S&P}}^2$  is the slope coefficient when we regress the portfolio return on the S&P 500 return; i.e., it is the portfolio beta with respect to the S&P 500 index. Equation (14) is also the formula we used in concluding that, with perfect correlation, we should short 509.09 contracts.

Notice that the hedge ratio in equation (14) depends on the ratio of the market value of the portfolio,  $I_{p}$ , to the notional value of the S&P 500 contract,  $N$ . Thus, as the portfolio changes value relative to the S&P 500 index, it is necessary to change the hedge ratio. This rebalancing is necessary when we calculate hedge ratios using a relationship based on returns, which are percentage changes.

When we add  $H^{*}$  futures to the portfolio, the variance of the hedged portfolio,  $\sigma_{\mathrm{hedged}}^2$ , is

$$
\sigma_ {\text {h e d g e d}} ^ {2} = \sigma_ {p} ^ {2} I _ {p} ^ {2} \left(1 - \rho^ {2}\right) \tag {15}
$$ where  $\rho$  is the correlation coefficient between the portfolio and the S&P 500 index. This is the same as the following equation. The correlation coefficient,  $\rho$ , can be computed directly from  $r_p$  and  $r_{\mathrm{S\&P}}$ , but it is also the square root of the regression  $r$ -squared ( $R^2$ ) when we regress  $r_P$  on  $r_{\mathrm{S\&P}}$  in order to estimate  $\beta$ .


$$

\sigma_ {\text {h e d g e d}} ^ {2} = N _ {w} ^ {2} \sigma_ {w} ^ {2} \left(1 - \rho^ {2}\right)

$$

Example 3. Suppose we are optimistic about the performance of the NASDAQ index relative to the S&P 500 index. We can go long the NASDAQ index and short the S&P 500 futures. We obtain the variance-minimizing position in the S&P 500 by using equation (14). A 5-year regression (from June 1999 to June 2004) of the daily NASDAQ return on the S&P 500 return gives

$$ r _ {\mathrm {N A S D}} = - \underset {(0. 0 0 0 3)} {0. 0 0 0 1} + \underset {(0. 0 2 6 2)} {1. 4 7 8 4} \times (r _ {\mathrm {S} \& \mathrm {P}} - r) \qquad R ^ {2} = 0. 7 1 8 8
$$

The regression beta tells us to short a dollar value of the S&P that is 1.4784 times greater than the NASDAQ position we hold. The correlation coefficient between the two returns,  $\rho$ , is  $\sqrt{0.7188} = 0.8478$ . The daily standard deviation of the return on the NASDAQ over this period is  $2.24\%$ . Hence, using equation (15), for a 1 million investment the variance of the hedged position is

$$
\sigma_ {\mathrm {N A S D}} ^ {2} I _ {p} ^ {2} \left(1 - \rho^ {2}\right) = 0. 0 2 2 4 ^ {2} \times (\$ 1 m) ^ {2} \times (1 - 0. 7 1 8 8) = (\$ 1 1, 8 7 8) ^ {2}
$$

Thus, the daily standard deviation of the hedged return is 11,878.

Risk Management for Stock-Pickers. An asset manager who picks stocks is often making a bet about the relative, but not the absolute, performance of a stock. For example, XYZ might be expected to outperform a broad range of stocks on a risk-adjusted basis. If the economy suffers a recession, however, XYZ will decline in value even if it outperforms other stocks. Index futures can be used in this case to help isolate the relative performance of XYZ.

Suppose the return of XYZ is given by the CAPM:

$$ r _ {\mathrm {X Y Z}} = \alpha_ {\mathrm {X Y Z}} + r + \beta_ {\mathrm {X Y Z}} \left(r _ {m} - r\right) \tag {16}
$$

The term  $\alpha_{\mathrm{XYZ}}$  in this context represents the expected abnormal return on XYZ. If we use the S&P 500 as a proxy for the market, then we can select  $H$  according to equation (14). The result for the hedged position will be that, on average, we earn  $\alpha_{\mathrm{XYZ}} + r$ . The risk of the position will be given by equation (15). Since the correlation of an individual stock and the index will not be close to 1, there will be considerable remaining risk. However, the portfolio will not have market risk.

# 6. CURRENCY CONTRACTS

Currency futures and forwards are widely used to hedge against changes in exchange rates. The pricing of currency contracts is a straightforward application of the principles we have already discussed. Figure 3 reports the specifications for the US dollar/euro futures contract at the CME, and Table 12 reports futures price quotes for two dates.

Many corporations use currency futures and forwards for short-term hedging. An importer of consumer electronics, for example, may have an obligation to pay the manufacturer ¥150 million 90 days in the future. The dollar revenues from selling these products are likely known in the short run, so the importer bears pure exchange risk due to the payable being fixed in yen. By buying ¥150 million forward 90 days, the importer locks in a dollar price to pay for the yen, which will then be delivered to the manufacturer.

# Currency Prepaid Forward

Suppose that 1 year from today you want to have ¥1. A prepaid forward allows you to pay dollars today to acquire ¥1 in 1 year. What is the prepaid forward price? Suppose the yen-denominated interest rate is ry and the exchange rate today ($/¥) is x0. We can work backward. If we want ¥1 in 1 year, we must have e-ry in yen today. To obtain that many yen today, we must exchange x0e-ry dollars into yen.

<table><tr><td>FIGURE 3</td><td>Underlying</td><td>Euro currency</td></tr><tr><td rowspan="5">Specifications for EUR/USD futures contract.</td><td>Where traded</td><td>Chicago Mercantile Exchange</td></tr><tr><td>Size</td><td>125,000 euro</td></tr><tr><td>Months</td><td>March, June, September, December (six consecutive contracts)</td></tr><tr><td>Trading ends</td><td>9:16A.M. on the second business day prior to the third Wednesday of the month</td></tr><tr><td>Delivery</td><td>Cash-settlement</td></tr></table>

<table><tr><td colspan="2">TABLE 12</td><td colspan="6">Dollar cost of foreign currencies.</td></tr><tr><td>Date</td><td>Currency</td><td>June</td><td>Sept.</td><td>Dec.</td><td>Mar.</td><td>June</td><td>Sept.</td></tr><tr><td rowspan="3">June 6, 2007</td><td>Euro</td><td>1.351</td><td>1.355</td><td>1.358</td><td>1.361</td><td>1.363</td><td>1.365</td></tr><tr><td>100 Yen</td><td>0.828</td><td>0.837</td><td>0.847</td><td>0.856</td><td>0.865</td><td>0.873</td></tr><tr><td>Sterling</td><td>1.992</td><td>1.99</td><td>1.987</td><td>1.984</td><td>1.98</td><td>1.975</td></tr><tr><td rowspan="3">June 2, 2010</td><td>Euro</td><td>1.224</td><td>1.225</td><td>1.226</td><td>1.228</td><td>1.229</td><td>1.231</td></tr><tr><td>100 Yen</td><td>1.085</td><td>1.087</td><td>1.089</td><td>1.092</td><td>1.095</td><td>1.098</td></tr><tr><td>Sterling</td><td>1.464</td><td>1.465</td><td>1.465</td><td>1.466</td><td>1.466</td><td>1.467</td></tr></table>

Source: CMEGroup via Datastream.

Thus, the prepaid forward price for a yen is

$$
F _ {0, T} ^ {P} = x _ {0} e ^ {- r _ {\mathrm {y}} T} \tag {17}
$$ where  $T$  is time to maturity of the forward.


The economic principle governing the pricing of a prepaid forward on currency is the same as that for a prepaid forward on stock. By deferring delivery of the underlying asset, you lose income. In the case of currency, if you received the currency immediately, you could buy a bond denominated in that currency and earn interest. The prepaid forward price reflects the loss of interest from deferring delivery, just as the prepaid forward price for stock reflects the loss of dividend income. This is why equation (17) is the same as that for a stock paying a continuous dividend, equation (4).

Example 4. Suppose that the yen-denominated interest rate is  $2\%$  and that the current exchange rate is 0.009 dollars per yen. Then in order to have 1 yen in 1 year, we would invest today

$$
0. 0 0 9 \mathrm {~$} / \yen \times \yen 1 \times e ^ {- 0. 0 2} = \mathrm {~$}. 0 0 8 8 2 2
$$

# Currency Forward

The prepaid forward price is the dollar cost of obtaining 1 yen in the future. Thus, to obtain the forward price, compute the future value using the dollar-denominated interest rate,  $r$ :

$$

F _ {0, T} = x _ {0} e ^ {(r - r _ {y}) T} \tag {18}

$$

The forward currency rate will exceed the current exchange rate when the domestic risk-free rate is higher than the foreign risk-free rate.

Example 5. Suppose that the yen-denominated interest rate is  $2\%$  and the dollar-denominated rate is  $6\%$ . The current exchange rate is 0.009 dollars per yen. The 1-year forward rate is

$$
0. 0 0 9 e ^ {0. 0 6 - 0. 0 2} = 0. 0 0 9 3 6 7
$$

Notice that equation (18) is just like equation (6), for stock index futures, with the foreign interest rate equal to the dividend yield. The interest rate difference  $r - r_y$  is the cost of carry for a foreign currency (we borrow at the domestic rate  $r$  and invest the proceeds in a foreign money-market instrument, earning the foreign rate  $r_y$  as an offset to our cost). If we wish to borrow foreign currency,  $r_y$  is the lease rate.

# Covered Interest Arbitrage

We can synthetically create a forward contract by borrowing in one currency and lending in the other. If we want to have 1 yen in the future, with the dollar price fixed today, we can pay today for the yen, and borrow in dollars to do so. To have 1 yen in 1 year, we need to invest

$$ x _ {0} e ^ {- r _ {\mathrm {y}} T}
$$ in dollars, and we obtain this amount by borrowing. The required dollar repayment is


$$ x _ {0} e ^ {(r - r _ {y}) T}
$$ which is the forward exchange rate.


Example 6. Suppose that  $x_0 = 0.009$ ,  $r_y = 2\%$ , and  $r = 6\%$ . The dollar cost of buying 1 yen today is  $0.009 \times e^{-0.02} = 0.008822$ . We defer the dollar payment by borrowing at  $6\%$  for a cost 1 year from today of  $0.008822e^{0.06} = 0.009367$ . This transaction is summarized in Table 13.

The example shows that borrowing in one currency and lending in another creates the same cash flow as a forward contract. If we offset this borrowing and lending position with an actual forward contract, the resulting transaction is called covered interest arbitrage.

Synthetically creating a yen forward contract by borrowing in dollars and lending in yen. The payoff at time 1 is ¥1 - 0.009367.

TABLE 13

<table><tr><td rowspan="3">Transaction</td><td colspan="4">Cash Flows</td></tr><tr><td colspan="2">Year 0</td><td colspan="2">Year 1</td></tr><tr><td>$</td><td>¥</td><td>$</td><td>¥</td></tr><tr><td>Borrow x0e-rydollar at 6\% ($)</td><td>+0.008822</td><td>—</td><td>-0.009367</td><td>—</td></tr><tr><td>Convert to yen @ 0.009 \$/¥</td><td>-0.008822</td><td>+0.9802</td><td>—</td><td>—</td></tr><tr><td>Invest in yen-denominated bill (¥)</td><td>—</td><td>-0.9802</td><td>—</td><td>1</td></tr><tr><td>Total</td><td>0</td><td>0</td><td>-0.009367</td><td>1</td></tr></table>

A carry trade entails borrowing in the currency with low interest rates and lending in the currency with high interest rates, without hedging. Box 3 explains carry trades.

To summarize, a forward exchange rate reflects the difference in interest rates denominated in different currencies. Imagine that you want to invest 1 for 1 year. You can do so by buying a dollar-denominated bond, or you can exchange the dollar into another currency and buy a bond denominated in that other currency. You can then use currency forwards to guarantee the exchange rate at which you will convert the foreign currency back into dollars. The principle behind the pricing of currency forwards is that a position in foreign risk-free bonds, with the currency risk hedged, pays the same return as domestic risk-free bonds.

# 7. EURODOLLAR FUTURES

Businesses and individuals face uncertainty about future interest rates. A manager planning to borrow money 3 months from today doesn't know today what the interest rate will be at that time. Forward and futures contracts permit hedging interest rate risk by allowing the manager to lock in now a borrowing rate for 3 months in the future.

The principles underlying interest rate contracts are exactly those we have been discussing, but interest rates seem more complicated because there are so many of them, depending upon whether you invest for 1 day, 1 month, 1 year, or 30 years. There are also implied forward interest rates between any two points in the future. The Eurodollar contract is so important that we discuss it briefly here.

The Eurodollar contract, described in Figure 4, is based on a  \$1 million 3-month deposit earning LIBOR (the London Interbank Offer Rate), which is the average borrowing rate faced by large international London banks. The 1-month LIBOR contract is similar. Suppose that current LIBOR is 1.5\%$  over 3 months. By convention, this is annualized by multiplying by 4, so the quoted LIBOR rate is  $6\%$ . Assuming a bank borrows 1 million for

# BOX 3: Carry Trades

Suppose that the yen interest rate is  $2\%$  and the dollar interest rate is  $6\%$ . On the surface, it might seem to you that it would be profitable to borrow at  $2\%$  in yen, and lend at  $6\%$  in dollars. This strategy of borrowing at a low rate and lending at a high rate is often undertaken in practice and is called a carry trade.

If you borrow yen and invest in dollars, you face the risk that the dollars will become less valuable (the dollar will depreciate), or to say the same thing differently, that the yen will appreciate (the dollar price of a yen will increase). Thus, while a carry trade may superficially sound like a money machine, the trade has risk.

To illustrate the risk in a currency carry trade, we use the assumptions of Example 5. The yen/dollar exchange rate today is 0.009, and we suppose that in 1 year the rate can be 0.0091, 0.009367, or 0.0096. If we plan to invest ¥100,000, the trade entails borrowing \$900/0.009 = ¥100,000 at 2\% and lending \$900 at 6\%. Dollar profit at the three exchange rates is

-  $x_{1} = 0.0091$ . The yen depreciates relative to the forward price, so the trade is profitable:

$$

\begin{array}{l} \text {P r o f i t} = \$ 9 0 0 \times e ^ {0. 0 6} - \yen 1 0 0, 0 0 0 \\ \times e ^ {0. 0 2} \times 0. 0 0 9 1 = \$ 2 7. 2 6 9 7 \\ \end{array}

$$

-  $x_{1} = 0.009367$ . The yen equals the forward price, so the trade breaks even:

$$

\begin{array}{l} \text {P r o f i t} = \$ 9 0 0 \times e ^ {0. 0 6} - \yen 1 0 0, 0 0 0 \times e ^ {0. 0 2} \\ \times 0. 0 0 9 3 6 7 = 0 \\ \end{array}

$$

-  $x_{1} = 0.0096$ . The yen appreciates relative to the forward price, so the trade loses money:

$$

\begin{array}{l} \text {P r o f i t} = \$ 9 0 0 \times e ^ {0. 0 6} - \yen 1 0 0, 0 0 0 \times e ^ {0. 0 2} \\ \times 0. 0 0 9 6 = - \mathbb {S} 2 3. 7 4 0 4 \\ \end{array}

$$

This example illustrates what we already knew from studying covered interest arbitrage: The carry trade breaks even when the future exchange rate equals the forward rate. (Covered interest arbitrage adds currency futures to the carry trade, ensuring that we can buy yen at the forward price.) The behavior of the exchange rate determines the profitability of the investment.

Carry trades can be undertaken with different asset classes, e.g., by borrowing short term and lending long term in the same currency. Currency carry trades are popular because historically they have been profitable. Burnside et al. (2008) show that this profitability (relative to risk) persists even when the investor buys options to protect against large losses. The persistent profitability of currency carry trades is surprising.

3 months, a change in annualized LIBOR of  $0.01\%$  (1 basis point) would raise its borrowing cost by  $0.0001 / 4 \times \1$  million = $25.

The Eurodollar futures price at expiration of the contract is

# 100 - Annualized 3-month LIBOR

Thus, if LIBOR is  $6\%$  at maturity of the Eurodollar futures contract, the final futures price will be  $100 - 6 = 94$ . It is important to understand that the Eurodollar contract settles based on current LIBOR, which is the interest rate quoted for the next 3 months. Thus, for example, the price of the contract that expires in June reflects the 3-month interest rate between June and September. With the futures contract, as with a \$1 million LIBOR deposit, a change of  $0.01\%$  in the rate is worth \$25.

<table><tr><td>FIGURE 4</td><td>Where traded</td><td>Chicago Mercantile Exchange</td></tr><tr><td>Specifications for the Euro-dollar futures contract.</td><td>Size</td><td>3-month Eurodollar time deposit, 1 million principal</td></tr><tr><td></td><td>Months</td><td>March, June, September, December, out 10 years, plus 2 serial months and spot month</td></tr><tr><td></td><td>Trading ends</td><td>5 A.M. (11 A.M. London) on the second London bank business day immediately preceding the third Wednesday of the contract month.</td></tr><tr><td></td><td>Delivery</td><td>Cash settlement based on 100 – British Banker&#x27;s Association Futures Interest Settlement Rate for 3-Month Eurodollar Interbank Time Deposits. (This is a 3-month rate annualized by multiplying by 360/90.)</td></tr></table>

Like most money-market interest rates, LIBOR is quoted assuming a 360-day year. Thus, the annualized 91-day rate,  $r_{91}$ , can be extracted from the futures price,  $F$ , by computing the 90-day rate and multiplying by 91/90. The quarterly effective rate is then computed by dividing the result by 4:

$$ r _ {9 1} = (1 0 0 - F) \times \frac {1}{1 0 0} \times \frac {1}{4} \times \frac {9 1}{9 0} \tag {19}
$$

Three-month Eurodollar contracts have maturities out to 10 years, which means that it is possible to use the contract to lock in a 3-month rate as far as 10 years in the future. If the Eurodollar futures contract maturing 60 months from today has a price of 95.25, this means that the contract can be used to lock in an annualized rate of  $4.75\%$  for a period beginning 60 months from today and terminating 63 months from today.

The Eurodollar futures strip (the set of futures prices with different maturities at one point in time) provides basic interest rate information that is commonly used to price other futures contracts and to price swaps. Figure 5 depicts the Eurodollar strip for four dates. Each point on the graph is the annualized 3-month interest rate implied by the Eurodollar futures price maturing that many months in the future.

Let's see how the Eurodollar contract can be used to hedge interest rate risk. For a borrower, for example, a short position in the contract is a hedge because it pays when the interest rate rises and requires payment when the interest rate falls. To see this, suppose that 7 months from today we plan to borrow  $1 million for 90 days, and that our borrowing rate is the same as LIBOR. The Eurodollar futures price for 7 months from today is 94; this implies a 90-day rate of (100 - 94) \times 90 / 360 \times 1 / 100 = 1.5\%$ . Now suppose that 7 months hence, 3-month LIBOR is  $8\%$ , which implies a Eurodollar futures price of 92. The implied 90-day rate is  $2\%$ . Our extra borrowing expense over 90 days on 1 million will therefore be  $(0.02 - 0.015) \times \$1\mathrm{m} = \$5000$ .

This extra borrowing expense is offset by gains on the short Eurodollar contract. The Eurodollar futures price has gone down, giving us a gain of 25 per basis point, or

# FIGURE 5

Eurodollar futures price strip for four dates.

100 - Futures Price (\%)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/02abefd4-2dfe-4fd1-a4bc-6204fb633ac1/826dcf55c29baf290733ddebcbc881eca9625892e8f0102886881f64b3d172e8.jpg)

Source: Datastream.

25 \times 100 \times (94 - 92) = $5000. The short position in the futures contract compensates us for the increase in our borrowing cost. In the same way, a long position can be used to lock in a lending rate.

The Eurodollar futures price is a construct, not the price of an asset. In this sense Eurodollar futures are different from the futures contracts we have already discussed. Although Eurodollar LIBOR is closely related to a number of other interest rates, there is no one specific identifiable asset that underlies the Eurodollar futures contract.

LIBOR is quoted in currencies other than dollars, and comparable rates are quoted in different locations. In addition to LIBOR, there are PIBOR (Paris), TIBOR (Tokyo), and Euribor (the European Banking Federation).

Finally, you might be wondering why we are discussing LIBOR rather than rates on Treasury bills. Business and bank borrowing rates move more in tandem with LIBOR than with the government's borrowing rate. Thus, these borrowers use the Eurodollar futures contract to hedge. LIBOR is also a better measure of the cost of funds for a market-maker, so LIBOR is typically used to price forward contracts.

# CHAPTER SUMMARY

The purchase of a stock or other asset entails agreeing to a price, making payment, and taking delivery of the asset. A forward contract fixes the price today, but payment and delivery are deferred. The pricing of forward contracts reflects the costs and benefits of this deferred payment and delivery. The seller receives payment later, so the price is higher to reflect interest owed the seller, and the buyer receives possession later, so the price is lower to reflect dividends not received by the buyer. A prepaid forward contract requires payment today; hence, it separates these two effects. The price of a prepaid forward is

$$
\text {P r e p a i d} = S _ {0} e ^ {- \delta T}
$$

The prepaid forward price is below the asset spot price,  $S_0$ , due to dividends forgone by deferring delivery. The forward price also reflects deferral of payment, so it is the future value of the prepaid forward price:

$$
\text {F o r w a r d p r i c e} = S _ {0} e ^ {(r - \delta) T}
$$

In the case of a currency forward, the dividend yield forgone by holding the forward contract instead of the underlying asset,  $\delta$ , is the interest rate you could earn by investing in foreign-currency denominated assets. Thus, for currencies,  $\delta = r_f$ , where  $r_f$  is the foreign interest rate.

A forward contract is equivalent to a leveraged position in an asset—borrowing to buy the asset. By combining the forward contract with other assets it is possible to create synthetic stocks and bonds. These equivalents are summarized in Table 14. Since a forward contract is risky but requires no investment, it earns the risk premium. The forward price is therefore a biased predictor of the future spot price of the asset, with the bias equal to the risk premium.

The fact that it is possible to create a synthetic forward has two important implications. First, if the forward contract is mispriced, arbitrageurs can take offsetting positions in the forward contract and the synthetic forward contract—in effect buying low and selling high—and make a risk-free profit. Second, dealers who make markets in the forward or in the underlying asset can hedge the risk of their position with a synthetic offsetting position. With transaction costs there is a no-arbitrage region rather than a single no-arbitrage price.

Futures contracts are similar to forward contracts, except that with futures there are margin requirements and daily settlement of the gain or loss on the position. The contractual

# TABLE 14

Synthetic equivalents assuming the asset pays continuous dividends at the rate  $\delta$ .

<table><tr><td>Position</td><td>Synthetic Equivalent</td></tr><tr><td>Long forward</td><td>= Buy e-δT shares of stock + Borrow S0e-δT</td></tr><tr><td>Bond paying F0,T</td><td>= Buy e-δT shares of stock + Short forward</td></tr><tr><td>Synthetic stock</td><td>= Long forward + Lend e-rT F0,T</td></tr></table> differences between forwards and futures can lead to pricing differences, but in most cases forward prices and futures prices are very close.

In addition to hedging, forward and futures contracts can be used to synthetically switch a portfolio invested in stocks into bonds. A portfolio invested in Asset A can remain invested in Asset A but earn the returns associated with Asset B, as long as there are forward or futures contracts on A and B. This is called a futures overlay.

The Eurodollar futures contract, based on LIBOR (London Interbank Offer Rate) is widely used for hedging interest rate risk. Because the Eurodollar futures contract does not represent the price of an asset (at settlement it is 100 - LIBOR), it cannot be priced using the formulas in this chapter.

# FURTHER READING

To get a sense of the range of traded contracts, explore the websites of futures exchanges: the CME Group (www.cmegroup.com) and the London International Financial Futures Exchange (www.euronext.com), among others. These sites typically provide current prices, along with information about the contracts: the definition of the underlying asset, how the contracts are settled, and so forth. The site for One Chicago (www.onechicago.com) provides information about single stock futures in the United States.

It is well accepted that forward prices are determined by the models and considerations in this chapter. Early papers that examined futures pricing include Modest and Sundaresan (1983), Cornell and French (1983), which emphasizes tax effects in futures pricing (see Appendix A), and French (1983), which compares forwards and futures when both exist on the same underlying asset. Brennan and Schwartz (1990) explore optimal arbitrage when there are transaction costs, and Reinganum (1986) explores the arbitrage possibilities inherent in time travel. There is a more technical academic literature focusing on the difference between forward and futures contracts, including Black (1976a), Cox et al. (1981), Richard and Sundaresan (1981), and Jarrow and Oldfield (1981).

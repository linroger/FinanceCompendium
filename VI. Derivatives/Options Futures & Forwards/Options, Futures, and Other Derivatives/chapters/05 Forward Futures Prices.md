---
title: Chapter 05 - Forward And Futures Prices
tags:
  - forward-pricing
  - futures-contracts
  - investment-assets
  - arbitrage-strategies
  - cost-of-carry
  - commodity-futures
parent_directory: VI. Derivatives
key_concepts:
  - forward and futures pricing
  - investment vs consumption assets
  - arbitrage arguments
  - cost of carry
  - convenience yield
cssclasses: academia
---

# 5.1 INVESTMENT ASSETS VS. CONSUMPTION ASSETS

When considering forward and futures contracts, it is important to distinguish between investment assets and consumption assets. An investment asset is an asset that is held solely for investment purposes by at least some traders. Stocks and bonds are clearly investment assets. Gold and silver are also examples of investment assets. Note that investment assets do not have to be held exclusively for investment. (Silver, for example, has a number of industrial uses.) However, they do have to satisfy the requirement that they are held by some traders solely for investment. A consumption asset is an asset that is held primarily for consumption. It is not normally held for investment. Examples of consumption assets are commodities such as copper, crude oil, corn, and pork bellies.

As we shall see later in this chapter, we can use arbitrage arguments to determine the forward and futures prices of an investment asset from its spot price and other observable market variables. We cannot do this for consumption assets.

# 5.2 SHORT SELLING

Some of the arbitrage strategies presented in this chapter involve short selling. This trade, usually simply referred to as "shorting", involves selling an asset that is not owned. It is something that is possible for some—but not all—investment assets. We will illustrate how it works by considering a short sale of shares of a stock.

Suppose an investor instructs a broker to short 500 shares of company X. The broker will carry out the instructions by borrowing the shares from someone who owns them and selling them in the market in the usual way. At some later stage, the investor will close out the position by purchasing 500 shares of company X in the market. These shares are then used to replace the borrowed shares so that the short position is closed out. The investor takes a profit if the stock price has declined and a loss if it has risen. If at any time while the contract is open the broker has to return the borrowed shares and there are no other shares that can be borrowed, the investor is forced to close out the position, even if not ready to do so. Often a fee is charged for lending the shares to the party doing the shorting.

An investor with a short position must pay to the broker any income, such as dividends or interest, that would normally be received on the securities that have been shorted. The broker will transfer this income to the account of the client from whom the securities have been borrowed. Consider the position of an investor who shorts 500 shares in April when the price per share is \$120 and closes out the position by buying them back in July when the price per share is \$100. Suppose that a dividend of \$1 per share is paid in May. The investor receives 500 × $120 = $60,000 in April when the short position is initiated. The dividend leads to a payment by the investor of 500 × $1 = $500 in May. The investor also pays 500 × \$100 = 50,000 for shares when the position is closed out in July. The net gain, therefore, is

$$
\$ 60,000 - \$ 500 - \$ 50,000 = \$ 9,500
$$ when any fee for borrowing the shares is ignored. Table 5.1 illustrates this example and shows that the cash flows from the short sale are the mirror image of the cash flows from purchasing the shares in April and selling them in July. (Again, the fee for borrowing the shares is not considered.)


Table 5.1 Cash flows from short sale and purchase of shares.

<table><tr><td colspan="3">Purchase of shares</td></tr><tr><td>April:</td><td>Purchase 500 shares for $120</td><td>- $60,000</td></tr><tr><td>May:</td><td>Receive dividend</td><td>+ \$500</td></tr><tr><td>July:</td><td>Sell 500 shares for \$100 per share</td><td>+ \$50,000</td></tr><tr><td></td><td></td><td>Net profit = - \$9,500</td></tr><tr><td colspan="3">Short sale of shares</td></tr><tr><td>April:</td><td>Borrow 500 shares and sell them for $120</td><td>+ $60,000</td></tr><tr><td>May:</td><td>Pay dividend</td><td>- \$500</td></tr><tr><td>July:</td><td>Buy 500 shares for \$100 per share</td><td>- \$50,000</td></tr><tr><td></td><td>Replace borrowed shares to close short position</td><td></td></tr><tr><td></td><td></td><td>Net profit = +\$9,500</td></tr></table>

The investor is required to maintain a margin account with the broker. The margin account consists of cash or marketable securities deposited by the investor with the broker to guarantee that the investor will not walk away from the short position if the share price increases. It is similar to the margin account discussed in Chapter 2 for futures contracts. An initial margin is required and if there are adverse movements (i.e., increases) in the price of the asset that is being shorted, additional margin may be required. If the additional margin is not provided, the short position is closed out. The margin account does not represent a cost to the investor. This is because interest is usually paid on the balance in margin accounts and, if the interest rate offered is unacceptable, marketable securities such as Treasury bills can be used to meet margin requirements. The proceeds of the sale of the asset belong to the investor and normally form part of the initial margin.

From time to time regulations are changed on short selling. In 1938, the uptick rule was introduced. This allowed shares to be shorted only on an "uptick"—that is, when the most recent movement in the share price was an increase. The SEC abolished the uptick rule in July 2007, but introduced an "alternative uptick" rule in February 2010. Under this rule, when the price of a stock has decreased by more than  $10\%$  in one day, there are restrictions on short selling for that day and the next. These restrictions are that the stock can be shorted only at a price that is higher than the best current bid price. Occasionally there are temporary bans on short selling. This happened in a number of countries in 2008 because it was considered that short selling contributed to the high market volatility that was being experienced.

# 5.3 ASSUMPTIONS AND NOTATION

In this chapter we will assume that the following are all true for some market participants:

1. The market participants are subject to no transaction costs when they trade.
2. The market participants are subject to the same tax rate on all net trading profits.
3. The market participants can borrow money at the same risk-free rate of interest as they can lend money.
4. The market participants take advantage of arbitrage opportunities as they occur.

Note that we do not require these assumptions to be true for all market participants. All that we require is that they be true—or at least approximately true—for a few key market participants such as large derivatives dealers. It is the trading activities of these key market participants and their eagerness to take advantage of arbitrage opportunities as they occur that determine the relationship between forward and spot prices.

The following notation will be used throughout this chapter:

$T$ : Time until delivery date in a forward or futures contract (in years)

$S_0$ : Price of the asset underlying the forward or futures contract today

$F_0$ : Forward or futures price today

$r$ : Zero-coupon risk-free rate of interest per annum, expressed with continuous compounding, for an investment maturing at the delivery date (i.e., in  $T$  years).

The risk-free rate,  $r$ , is the interest rate at which money is borrowed or lent when there is no credit risk, so that the borrowed money is certain to be repaid. As discussed in Chapter 4, participants in derivatives markets use overnight rates and rates derived from overnight rates as risk-free rates.

# 5.4 FORWARD PRICE FOR AN INVESTMENT ASSET

The easiest forward contract to value is one written on an investment asset that provides the holder with no income and for which there are no storage costs. Non-dividend-paying stocks and zero-coupon bonds are examples of such investment assets.

Consider a long forward contract to purchase a non-dividend-paying stock in 3 months. Assume the current stock price is 40 and the 3-month risk-free interest rate is 5\% per annum.

Suppose first that the forward price is relatively high at \$43. An arbitrageur can borrow \$40 at the risk-free interest rate of 5\% per annum, buy one share, and short a forward contract to sell one share in 3 months. At the end of the 3 months, the arbitrageur delivers the share and receives 43. The sum of money required to pay off the loan is

$$

4 0 e ^ {0. 0 5 \times 3 / 1 2} = \$ 4 0. 5 0

$$

By following this strategy, the arbitrageur locks in a profit of $43.00 - $40.50 = 2.50 at the end of the 3-month period.

Suppose next that the forward price is relatively low at \$39. An arbitrageur can short one share, invest the proceeds of the short sale at 5\% per annum for 3 months, and take a long position in a 3-month forward contract. The proceeds of the short sale grow to 40e^0.05×3/12 or \$40.50 in 3 months. At the end of the 3 months, the arbitrageur pays 39, takes delivery of the share under the terms of the forward contract, and uses it to close out the short position. A net gain of

$$

\$ 40.50 - \$ 39.00 = \$ 1.50

$$ is therefore made at the end of the 3 months. The two trading strategies we have considered are summarized in Table 5.2.


Under what circumstances do arbitrage opportunities such as those in Table 5.2 not exist? The first arbitrage works when the forward price is greater than  \$40.50. The second arbitrage works when the forward price is less than\$ 40.50. We deduce that for there to be no arbitrage the forward price must be exactly 40.50.

# A Generalization

To generalize this example, we consider a forward contract on an investment asset with price  $S_0$  that provides no income. Using our notation,  $T$  is the time to maturity,  $r$  is the risk-free rate, and  $F_0$  is the forward price. The relationship between  $F_0$  and  $S_0$  is

$$

F _ {0} = S _ {0} e ^ {r T} \tag {5.1}

$$

Table 5.2 Arbitrage opportunities when forward price is out of line with spot price for asset providing no income. (Asset price = 40; interest rate = 5\%; maturity of forward contract = 3 months.)

<table><tr><td>Forward Price = \$43</td><td>Forward Price = \$39</td></tr><tr><td>Action now:</td><td>Action now:</td></tr><tr><td>Borrow \$40 at 5\% for 3 months</td><td>Short 1 unit of asset to realize \$40</td></tr><tr><td>Buy one unit of asset</td><td>Invest \$40 at 5\% for 3 months</td></tr><tr><td>Enter into forward contract to sell asset in 3 months for \$43</td><td>Enter into a forward contract to buy asset in 3 months for \$39</td></tr><tr><td>Action in 3 months:</td><td>Action in 3 months:</td></tr><tr><td>Sell asset for \$43</td><td>Buy asset for $39</td></tr><tr><td>Use $40.50 to repay loan with interest</td><td>Close short position</td></tr><tr><td></td><td>Receive \$40.50 from investment</td></tr><tr><td>Profit realized = \$2.50</td><td>Profit realized = 1.50</td></tr></table>

If  $F_0 > S_0 e^{rT}$ , arbitrageurs can buy the asset and short forward contracts on the asset. If  $F_0 < S_0 e^{rT}$ , they can short the asset and enter into long forward contracts on it. In our example,  $S_0 = 40$ ,  $r = 0.05$ , and  $T = 0.25$ , so that equation (5.1) gives

$$

F _ {0} = 4 0 e ^ {0. 0 5 \times 0. 2 5} = \$ 4 0. 5 0

$$ which is in agreement with our earlier calculations.


A long forward contract and a spot purchase both lead to the asset being owned at time  $T$ . The forward price is higher than the spot price because of the cost of financing the spot purchase of the asset during the life of the forward contract. This point was overlooked by Kidder Peabody in 1994, much to its cost (see Business Snapshot 5.1).

# Example 5.1

Consider a 4-month forward contract to buy a zero-coupon bond that will mature 1 year from today. (This means that the bond will have 8 months to go when the forward contract matures.) The current price of the bond is 930. We assume that the 4-month risk-free rate of interest (continuously compounded) is 6\% per annum. Because zero-coupon bonds provide no income, we can use equation (5.1) with T = 4 / 12, r = 0.06, and S_0 = 930. The forward price, F_0, is given by

$$

F _ {0} = 9 3 0 e ^ {0. 0 6 \times 4 / 1 2} = \$ 9 4 8. 7 9

$$

This would be the delivery price in a contract negotiated today.

# Business Snapshot 5.1 Kidder Peabody's Embarrassing Mistake

Investment banks have developed a way of creating a zero-coupon bond, called a strip, from a coupon-bearing Treasury bond by selling each of the cash flows underlying the coupon-bearing bond as a separate security. Joseph Jett, a trader working for Kidder Peabody, had a relatively simple trading strategy. He would buy strips and sell them in the forward market. As equation (5.1) shows, the forward price of a security providing no income is always higher than the spot price. Suppose, for example, that the 3-month interest rate is 4\% per annum and the spot price of a strip is \$70. The 3-month forward price of the strip is 70e^{0.04 \times 3/12} = \$70.70.

Kidder Peabody's computer system reported a profit on each of Jett's trades equal to the excess of the forward price over the spot price (0.70 in our example). In fact, this profit was nothing more than the cost of financing the purchase of the strip. But, by rolling his contracts forward, Jett was able to prevent this cost from accruing to him.

The result was that the system reported a profit of  \$100 million on Jett's trading (and Jett received a big bonus) when in fact there was a loss in the region of\$ 350 million. This shows that even large financial institutions can get relatively simple things wrong!

# What If Short Sales Are Not Possible?

Short sales are not possible for all investment assets and sometimes a fee is charged for borrowing assets. As it happens, this does not matter. To derive equation (5.1), we do not need to be able to short the asset. All that we require is that there be market participants who hold the asset purely for investment (and by definition this is always true of an investment asset). If the forward price is too low, they will find it attractive to sell the asset and take a long position in a forward contract.

We continue to consider the case where the underlying investment asset gives rise to no storage costs or income. If  $F_0 > S_0 e^{rT}$ , an investor can adopt the following strategy:

1. Borrow  $S_0$  dollars at an interest rate  $r$  for  $T$  years.
2. Buy 1 unit of the asset.
3. Enter into a forward contract to sell 1 unit of the asset.

At time  $T$ , the asset is sold for  $F_0$ . An amount  $S_0e^{rT}$  is required to repay the loan at this time and the investor makes a profit of  $F_0 - S_0e^{rT}$ .

Suppose next that  $F_0 < S_0 e^{rT}$ . In this case, an investor who owns the asset can:

1. Sell the asset for  $S_0$ .
2. Invest the proceeds at interest rate  $r$  for time  $T$ .
3. Enter into a forward contract to buy 1 unit of the asset.

At time  $T$ , the cash invested has grown to  $S_0e^{rT}$ . The asset is repurchased for  $F_0$  and the investor makes a profit of  $S_0e^{rT} - F_0$  relative to the position the investor would have been in if the asset had been kept.

As in the non-dividend-paying stock example considered earlier, we can expect the forward price to adjust so that neither of the two arbitrage opportunities we have considered exists. This means that the relationship in equation (5.1) must hold.

# 5.5 KNOWN INCOME

In this section we consider a forward contract on an investment asset that will provide a perfectly predictable cash income to the holder. Examples are stocks paying known dividends and coupon-bearing bonds. We adopt the same approach as in the previous section. We first look at a numerical example and then review the formal arguments.

Consider a forward contract to purchase a coupon-bearing bond whose current price is  \$900. We will suppose that the forward contract matures in 9 months. We will also suppose that a coupon payment of\$ 40 is expected on the bond after 4 months. We assume that the 4-month and 9-month risk-free interest rates (continuously compounded) are, respectively, 3\% and 4\% per annum.

Suppose first that the forward price is relatively high at \$910. An arbitrageur can borrow \$900 to buy the bond and enter into the forward contract to sell the bond for \$910. The coupon payment has a present value of 40e-0.03×4/12 = \$39.60. Of the $900, $39.60 is therefore borrowed at 3\% per annum for 4 months so that it can be repaid with the coupon payment. The remaining \$860.40 is borrowed at 4\% per annum for 9 months. The amount owing at the end of the 9-month period is 860.40e^0.04×0.75 = \$886.60. A sum of 910 is received for the bond under the terms of the forward contract. The arbitrageur therefore makes a net profit of

$$

9 1 0. 0 0 - 8 8 6. 6 0 = \$ 2 3. 4 0

$$

Suppose next that the forward price is relatively low at \$870. An investor can short the bond and enter into the forward contract to buy the bond for \$870. Of the \$900 realized from shorting the bond, \$39.60 is invested for 4 months at 3\% per annum so that it grows into an amount sufficient to pay the coupon on the bond. The remaining \$860.40 is invested for 9 months at 4\% per annum and grows to \$886.60. Under the terms of the forward contract, 870 is paid to buy the bond and the short position is closed out. The investor therefore gains

$$

8 8 6. 6 0 - 8 7 0 = \$ 1 6. 6 0

$$

The two strategies we have considered are summarized in Table 5.3. $^{3}$  The first strategy in Table 5.3 produces a profit when the forward price is greater than  \$886.60, whereas the second strategy produces a profit when the forward price is less than\$ 886.60. It follows that if there are no arbitrage opportunities then the forward price must be 886.60.

# A Generalization

We can generalize from this example to argue that, when an investment asset will provide income with a present value of  $I$  during the life of a forward contract, we have

$$

F _ {0} = \left(S _ {0} - I\right) e ^ {r T} \tag {5.2}

$$

Table 5.3 Arbitrage opportunities when 9-month forward price is out of line with spot price for asset providing known cash income. (Asset price = \$900; income of \$40 occurs at 4 months; 4-month and 9-month rates are, respectively, 3\% and 4\% per annum.)

<table><tr><td>Forward price = \$910</td><td>Forward price = \$870</td></tr><tr><td>Action now:</td><td>Action now:</td></tr><tr><td>Borrow $900: $39.60 for 4 months and \$860.40 for 9 months</td><td>Short 1 unit of asset to realize \$900</td></tr><tr><td>Buy 1 unit of asset</td><td>Invest \$39.60 for 4 months and \$860.40 for 9 months</td></tr><tr><td>Enter into forward contract to sell asset in 9 months for \$910</td><td>Enter into a forward contract to buy asset in 9 months for \$870</td></tr><tr><td>Action in 4 months:</td><td>Action in 4 months:</td></tr><tr><td>Receive \$40 of income on asset</td><td>Receive \$40 from 4-month investment</td></tr><tr><td>Use \$40 to repay first loan with interest</td><td>Pay income of \$40 on asset</td></tr><tr><td>Action in 9 months:</td><td>Action in 9 months:</td></tr><tr><td>Sell asset for \$910</td><td>Receive \$886.60 from 9-month investment</td></tr><tr><td>Use \$886.60 to repay second loan with interest</td><td>Buy asset for \$870</td></tr><tr><td></td><td>Close out short position</td></tr><tr><td>Profit realized = \$23.40</td><td>Profit realized = \$16.60</td></tr></table>

In our example,  $S_0 = 900.00$ ,  $I = 40e^{-0.03\times 4 / 12} = 39.60$ ,  $r = 0.04$ , and  $T = 0.75$ , so that

$$

F _ {0} = (9 0 0. 0 0 - 3 9. 6 0) e ^ {0. 0 4 \times 0. 7 5} = \$ 8 8 6. 6 0

$$

This is in agreement with our earlier calculation. Equation (5.2) applies to any investment asset that provides a known cash income.

If  $F_0 > (S_0 - I)e^{rT}$ , an arbitrageur can lock in a profit by buying the asset and shorting a forward contract on the asset; if  $F_0 < (S_0 - I)e^{rT}$ , an arbitrageur can lock in a profit by shorting the asset and taking a long position in a forward contract. If short sales are not possible, investors who own the asset will find it profitable to sell the asset and enter into long forward contracts.

# Example 5.2

Consider a 10-month forward contract on a stock when the stock price is  \$50. We assume that the risk-free rate of interest (continuously compounded) is 8\%$  per annum for all maturities and also that dividends of 0.75 per share are expected after 3 months, 6 months, and 9 months. The present value of the dividends,  $I$ , is

$$

I = 0. 7 5 e ^ {- 0. 0 8 \times 3 / 1 2} + 0. 7 5 e ^ {- 0. 0 8 \times 6 / 1 2} + 0. 7 5 e ^ {- 0. 0 8 \times 9 / 1 2} = 2. 1 6 2

$$

The variable  $T$  is 10 months, so that the forward price,  $F_0$ , from equation (5.2), is given by


$$

F _ {0} = (5 0 - 2. 1 6 2) e ^ {0. 0 8 \times 1 0 / 1 2} = \$ 5 1. 1 4

$$

If the forward price were less than this, an arbitrageur would short the stock and buy forward contracts. If the forward price were greater than this, an arbitrageur would short forward contracts and buy the stock in the spot market.

# 5.6 KNOWNYIELD

We now consider the situation where the asset underlying a forward contract provides a known yield rather than a known cash income. This means that the income is known when expressed as a percentage of the asset's price at the time the income is paid. Suppose that an asset is expected to provide a yield of  $5\%$  per annum. This could mean that income is paid once a year and is equal to  $5\%$  of the asset price at the time it is paid, in which case the yield would be  $5\%$  with annual compounding. Alternatively, it could mean that income is paid twice a year and is equal to  $2.5\%$  of the asset price at the time it is paid, in which case the yield would be  $5\%$  per annum with semiannual compounding. In Section 4.4 we explained that we will normally measure interest rates with continuous compounding. Similarly, we will normally measure yields with continuous compounding. Formulas for translating a yield measured with one compounding frequency to a yield measured with another compounding frequency are the same as those given for interest rates in Section 4.4.

Define  $q$  as the average yield on the asset during time  $T$ . If the income is reinvested in the asset, the number of units held grows at rate  $q$ . One unit of the asset at time zero then grows to  $e^{qT}$  units of the asset at time  $T$ . The strategy
- Borrow  $S_{0}$  to buy one unit of the asset at time zero
- Enter into a forward contract to sell  $e^{qT}$  units of the asset at time  $T$  for  $F_0$
- Close out the forward contract by selling  $e^{qT}$  units of the asset at time  $T$ must therefore generate zero profit. Hence,


$$

S _ {0} e ^ {r T} = e ^ {q T} F _ {0}

$$ or


$$

F _ {0} = S _ {0} e ^ {(r - q) T} \tag {5.3}

$$

# Example 5.3

Consider a 6-month forward contract on an asset that is expected to provide income equal to  $2\%$  of the asset price once during a 6-month period. The risk-free rate of interest (with continuous compounding) is  $10\%$  per annum. The asset price is \$25. In this case,  $S_0 = 25$ ,  $r = 0.10$ , and  $T = 0.5$ . The yield is  $4\%$  per annum with semiannual compounding. From equation (4.3), this is  $3.96\%$  per annum with continuous compounding. It follows that  $q = 0.0396$ , so that from equation (5.3) the forward price,  $F_0$ , is given by

$$

F _ {0} = 2 5 e ^ {(0. 1 0 - 0. 0 3 9 6) \times 0. 5} = \$ 2 5. 7 7

$$

# 5.7 VALUING FORWARD CONTRACTS

The value of a forward contract at the time it is first entered into is close to zero. At a later stage, it may prove to have a positive or negative value. It is important for banks and other financial institutions to value the contract each day. (This is referred to as marking to market the contract.) Using the notation introduced earlier, we suppose  $K$  is the delivery price for a contract that was negotiated some time ago, the delivery date is  $T$  years from today, and  $r$  is the  $T$ -year risk-free interest rate. The variable  $F_0$  is the forward price that would be applicable if we negotiated the contract today. In addition, we define  $f$  to be the value of forward contract today.

It is important to be clear about the meaning of the variables  $F_0, K$ , and  $f$ . At the beginning of the life of the forward contract, the delivery price,  $K$ , is set equal to the forward price at that time and the value of the contract,  $f$ , is 0. As time passes,  $K$  stays the same (because it is part of the definition of the contract), but the forward price changes and the value of the contract becomes either positive or negative.

A general result, applicable to all long forward contracts (both those on investment assets and those on consumption assets), is

$$ f = \left(F _ {0} - K\right) e ^ {- r T} \tag {5.4}
$$

To see why equation (5.4) is correct, we form a portfolio today consisting of (a) a forward contract to buy the underlying asset for  $K$  at time  $T$  and (b) a forward contract to sell the asset for  $F_0$  at time  $T$ . The payoff from the portfolio at time  $T$  is  $S_T - K$  from the first contract and  $F_0 - S_T$  from the second contract. The total payoff is  $F_0 - K$  and is known for certain today. The portfolio is therefore a risk-free investment and its value today is the payoff at time  $T$  discounted at the risk-free rate or  $(F_0 - K)e^{-rT}$ . The value of the forward contract to sell the asset for  $F_0$  is worth zero because  $F_0$  is the forward price that applies to a forward contract entered into today. It follows that the value of a (long) forward contract to buy an asset for  $K$  at time  $T$  must be  $(F_0 - K)e^{-rT}$ . Similarly, the value of a (short) forward contract to sell the asset for  $K$  at time  $T$  is  $(K - F_0)e^{-rT}$ .

# Example 5.4

A long forward contract on a non-dividend-paying stock was entered into some time ago. It currently has 6 months to maturity. The risk-free rate of interest (with continuous compounding) is  $10\%$  per annum, the stock price is  $\$25$ , and the delivery price is  $\$24$ . In this case,  $S_0 = 25$ ,  $r = 0.10$ ,  $T = 0.5$ , and  $K = 24$ . From equation (5.1), the 6-month forward price,  $F_0$ , is given by

$$
F _ {0} = 2 5 e ^ {0. 1 \times 0. 5} = \$ 2 6. 2 8
$$

From equation (5.4), the value of the forward contract is

$$ f = (2 6. 2 8 - 2 4) e ^ {- 0. 1 \times 0. 5} = \$ 2. 1 7

$$

Equation (5.4) shows that we can value a long forward contract on an asset by making the assumption that the price of the asset at the maturity of the forward contract equals the forward price  $F_0$ . To see this, note that when we make that assumption, a long forward contract provides a payoff at time  $T$  of  $F_0 - K$ . This has a present value of  $(F_0 - K)e^{-rT}$ , which is the value of  $f$  in equation (5.4). Similarly, we can value a short forward contract on the asset by assuming that the current forward price of the asset is

# Business Snapshot 5.2 A Systems Error?

A foreign exchange trader working for a bank enters into a long forward contract to buy 1 million pounds sterling at an exchange rate of 1.5000 in 3 months. At the same time, another trader on the next desk takes a long position in 16 contracts for 3-month futures on sterling. The futures price is 1.5000 and each contract is on 62,500 pounds. The positions taken by the forward and futures traders are therefore the same. Within minutes of the positions being taken, the forward and the futures prices both increase to 1.5040. The bank's systems show that the futures trader has made a profit of  \$4,000, while the forward trader has made a profit of only\$ 3,900. The forward trader immediately calls the bank's systems department to complain. Does the forward trader have a valid complaint?

The answer is no! The daily settlement of futures contracts ensures that the futures trader realizes an almost immediate profit corresponding to the increase in the futures price. If the forward trader closed out the position by entering into a short contract at 1.5040, the forward trader would have contracted to buy 1 million pounds at 1.5000 in 3 months and sell 1 million pounds at 1.5040 in 3 months. This would lead to a  \$4,000 profit—but in 3 months, not today. The forward trader's profit is the present value of\$ 4,000. This is consistent with equation (5.4).

The forward trader can gain some consolation from the fact that gains and losses are treated symmetrically. If the forward/futures prices dropped to 1.4960 instead of rising to 1.5040, then the futures trader would take a loss of  \$4,000 while the forward trader would take a loss of only\$ 3,900.

realized. These results are analogous to the result in Section 4.9 that we can value a forward rate agreement on the assumption that forward rates are realized.

Using equation (5.4) in conjunction with equation (5.1) gives the following expression for the value of a forward contract on an investment asset that provides no income

$$ f = S _ {0} - K e ^ {- r T} \tag {5.5}
$$

Similarly, using equation (5.4) in conjunction with equation (5.2) gives the following expression for the value of a long forward contract on an investment asset that provides a known income with present value  $I$ :

$$ f = S _ {0} - I - K e ^ {- r T} \tag {5.6}
$$

Finally, using equation (5.4) in conjunction with equation (5.3) gives the following expression for the value of a long forward contract on an investment asset that provides a known yield at rate  $q$ :

$$ f = S _ {0} e ^ {- q T} - K e ^ {- r T} \tag {5.7}
$$

When a futures price changes, the gain or loss on a futures contract is calculated as the change in the futures price multiplied by the size of the position. This gain is realized almost immediately because futures contracts are settled daily. Equation (5.4) shows that, when a forward price changes, the gain or loss is the present value of the change in the forward price multiplied by the size of the position. The difference between the gain/loss on forward and futures contracts can cause confusion on a foreign exchange trading desk (see Business Snapshot 5.2).

# 5.8 ARE FORWARD PRICES AND FUTURES PRICES EQUAL?

Technical Note 24 at www-2.rotman.utoronto.ca/~hull/TechnicalNotes provides an arbitrage argument to show that, when the short-term risk-free interest rate is constant, the forward price for a contract with a certain delivery date is in theory the same as the futures price for a contract with that delivery date. The argument can be extended to cover situations where the interest rate is a known function of time.

When interest rates vary unpredictably (as they do in the real world), forward and futures prices are in theory no longer the same. We can get a sense of the nature of the relationship by considering the situation where the price of the underlying asset,  $S$ , is strongly positively correlated with interest rates. When  $S$  increases, an investor who holds a long futures position makes an immediate gain because of the daily settlement procedure. The positive correlation indicates that it is likely that interest rates have also increased, thereby increasing the rate at which the gain can be invested. Similarly, when  $S$  decreases, the investor will incur an immediate loss and it is likely that interest rates have just decreased, thereby reducing the rate at which the loss has to be financed. The positive correlation therefore works in the investor's favor. An investor holding a forward contract rather than a futures contract is not affected in this way by interest rate movements. It follows that a long futures contract will be slightly more attractive than a similar long forward contract. Hence, when  $S$  is strongly positively correlated with interest rates, futures prices will tend to be slightly higher than forward prices. When  $S$  is strongly negatively correlated with interest rates, a similar argument shows that forward prices will tend to be slightly higher than futures prices.

The theoretical differences between forward and futures prices for contracts that last only a few months are in most circumstances sufficiently small to be ignored. In practice, there are a number of factors not reflected in theoretical models that may cause forward and futures prices to be different. These include taxes, transactions costs, and margin requirements. The risk that the counterparty will default may be less in the case of a futures contract because of the role of the exchange clearing house. Also, in some instances, futures contracts are more liquid and easier to trade than forward contracts. Despite all these points, for most purposes it is reasonable to assume that forward and futures prices are the same. This is the assumption we will usually make in this book. We will use the symbol  $F_{0}$  to represent both the futures price and the forward price of an asset today.

One exception to the rule that futures and forward contracts can be assumed to be the same concerns interest rate futures. This will be discussed in Section 6.3.

# 5.9 FUTURES PRICES OF STOCK INDICES

We introduced futures on stock indices in Section 3.5 and showed how a stock index futures contract is a useful tool in managing equity portfolios. Table 3.3 shows futures prices for a number of different indices. We are now in a position to consider how index futures prices are determined.

A stock index can usually be regarded as the price of an investment asset that pays dividends. The investment asset is the portfolio of stocks underlying the index, and the

# Business Snapshot 5.3 The CME Nikkei 225 Futures Contract

The arguments in this chapter on how index futures prices are determined require that the index be the value of an investment asset. This means that it must be the value of a portfolio of assets that can be traded. The asset underlying the Chicago Mercantile Exchange's futures contract on the Nikkei 225 Index does not qualify, and the reason why is quite subtle. Suppose  $S$  is the value of the Nikkei 225 Index. This is the value of a portfolio of 225 Japanese stocks measured in yen. The variable underlying the CME futures contract on the Nikkei 225 has a dollar value of 5S. In other words, the futures contract takes a variable that is measured in yen and treats it as though it is dollars.

We cannot invest in a portfolio whose value will always be 5S dollars. The best we can do is to invest in one that is always worth 5S yen or in one that is always worth 5QS dollars, where  $Q$  is the dollar value of 1 yen. The variable 5S dollars is not, therefore, the price of an investment asset and equation (5.8) does not apply.

CME's Nikkei 225 futures contract is an example of a quanto. A quanto is a derivative where the underlying asset is measured in one currency and the payoff is in another currency. Quantos will be discussed further in Chapter 30.

dividends paid by the investment asset are the dividends that would be received by the holder of this portfolio. It is usually assumed that the dividends provide a known yield rather than a known cash income. If  $q$  is the dividend yield rate (expressed with continuous compounding), equation (5.3) gives the futures price,  $F_{0}$ , as

$$
F _ {0} = S _ {0} e ^ {(r - q) T} \tag {5.8}
$$

This shows that the futures price increases at rate  $r - q$  with the maturity of the futures contract. In Table 3.3, the S&P 500 settlements are declining at roughly  $0.5\%$  per six months, or  $1\%$  per year. This indicates that the dividend yield anticipated by the market on the S&P 500 during the first year was about  $1\%$  per annum greater than the risk-free rate.

# Example 5.5

Consider a 3-month futures contract on an index. Suppose that the stocks underlying the index provide a dividend yield of  $1\%$  per annum (continuously compounded), that the current value of the index is 1,300, and that the continuously compounded risk-free interest rate is  $5\%$  per annum. In this case,  $r = 0.05$ ,  $S_0 = 1,300$ ,  $T = 0.25$ , and  $q = 0.01$ . Hence, the futures price,  $F_0$ , is given by

$$
F _ {0} = 1, 3 0 0 e ^ {(0. 0 5 - 0. 0 1) \times 0. 2 5} = \$ 1, 3 1 3. 0 7
$$

In practice, the dividend yield on the portfolio underlying an index varies week by week throughout the year. For example, a large proportion of the dividends on the NYSE stocks are paid in the first week of February, May, August, and November each year. The chosen value of  $q$  should represent the average annualized dividend yield during the life of the contract. The dividends used for estimating  $q$  should be those for which the ex-dividend date is during the life of the futures contract.

# Business Snapshot 5.4 Index Arbitrage in October 1987

To do index arbitrage, a trader must be able to trade both the index futures contract and the portfolio of stocks underlying the index very quickly at the prices quoted in the market. In normal market conditions this is possible using program trading, and the relationship in equation (5.8) holds well. Examples of days when the market was anything but normal are October 19 and 20 of 1987. On what is termed "Black Monday," October 19, 1987, the market fell by more than  $20\%$ , and the 604 million shares traded on the New York Stock Exchange easily exceeded all previous records. The exchange's systems were overloaded, and orders placed to buy or sell shares on that day could be delayed by up to two hours before being executed.

For most of October 19, 1987, futures prices were at a significant discount to the underlying index. For example, at the close of trading the S&P 500 Index was at 225.06 (down 57.88 on the day), whereas the futures price for December delivery on the S&P 500 was 201.50 (down 80.75 on the day). This was largely because the delays in processing orders made index arbitrage impossible. On the next day, Tuesday, October 20, 1987, the New York Stock Exchange placed temporary restrictions on the way in which program trading could be done. This also made index arbitrage very difficult and the breakdown of the traditional linkage between stock indices and stock index futures continued. At one point the futures price for the December contract was  $18\%$  less than the S&P 500 Index. However, after a few days the market returned to normal, and the activities of arbitrageurs ensured that equation (5.8) governed the relationship between futures and spot prices of indices.

# Index Arbitrage

If  $F_0 > S_0 e^{(r - q)T}$ , profits can be made by buying the stocks underlying the index at the spot price (i.e., for immediate delivery) and shorting futures contracts. If  $F_0 < S_0 e^{(r - q)T}$ , profits can be made by doing the reverse—that is, shorting or selling the stocks underlying the index and taking a long position in futures contracts. These strategies are known as index arbitrage. When  $F_0 < S_0 e^{(r - q)T}$ , index arbitrage is often done by a pension fund that owns an indexed portfolio of stocks. When  $F_0 > S_0 e^{(r - q)T}$ , it might be done by a bank or a corporation holding short-term money market investments. For indices involving many stocks, index arbitrage is sometimes accomplished by trading a relatively small representative sample of stocks whose movements closely mirror those of the index. Usually index arbitrage is implemented through program trading. This involves using a computer system to generate the trades.

Most of the time the activities of arbitrageurs ensure that equation (5.8) holds, but occasionally arbitrage is impossible and the futures price does get out of line with the spot price (see Business Snapshot 5.4).

# 5.10 FORWARD AND FUTURES CONTRACTS ON CURRENCYCS

We now move on to consider forward and futures foreign currency contracts. For the sake of definiteness we will assume that the domestic currency is the U.S. dollar (i.e., we take the perspective of a U.S. investor). The underlying asset is one unit of the foreign currency. We will therefore define the variable  $S_{0}$  as the current spot price in U.S. dollars of one unit of the foreign currency and  $F_{0}$  as the forward or futures price in U.S. dollars of one unit of the foreign currency. This is consistent with the way we have defined  $S_{0}$  and  $F_{0}$  for other assets underlying forward and futures contracts. However, as mentioned in Section 2.11, it does not necessarily correspond to the way spot and forward exchange rates are quoted. For major exchange rates other than the British pound, euro, Australian dollar, and New Zealand dollar, a spot or forward exchange rate is normally quoted as the number of units of the currency that are equivalent to one U.S. dollar.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/1c26ae8033e53a64dd136d9afcb2706542a427e8aa901cad7ba42fc4befd97e5.jpg)

Figure 5.1 Two ways of converting 1,000 units of a foreign currency to dollars at time  $T$ . Here,  $S_{0}$  is spot exchange rate,  $F_{0}$  is forward exchange rate, and  $r$  and  $r_{f}$  are the dollar and foreign risk-free rates.

A foreign currency has the property that the holder of the currency can earn interest at the risk-free interest rate prevailing in the foreign country. For example, the holder can invest the currency in a foreign-denominated bond. We define  $r_f$  as the value of the foreign risk-free interest rate when money is invested for time  $T$ . The variable  $r$  is the domestic risk-free rate when money is invested for this period of time.

The relationship between  $F_{0}$  and  $S_{0}$  is

$$
F _ {0} = S _ {0} e ^ {(r - r _ {f}) T} \tag {5.9}
$$

This is the well-known interest rate parity relationship from international finance. The reason it is true is illustrated in Figure 5.1. Suppose that an individual starts with 1,000 units of the foreign currency. There are two ways it can be converted to dollars at time  $T$ . One is by investing it for  $T$  years at  $r_f$  and entering into a forward contract to sell the proceeds for dollars at time  $T$ . This generates  $1,000e^{r_fT}F_0$  dollars. The other is by exchanging the foreign currency for dollars in the spot market and investing the proceeds for  $T$  years at rate  $r$ . This generates  $1,000S_0e^{rT}$  dollars. In the absence of arbitrage opportunities, the two strategies must give the same result. Hence,

$$
1, 0 0 0 e ^ {r _ {f} T} F _ {0} = 1, 0 0 0 S _ {0} e ^ {r T}
$$ so that


$$

F _ {0} = S _ {0} e ^ {(r - r _ {f}) T}

$$

# Example 5.6

Suppose that the 2-year interest rates in Australia and the United States are  $3\%$  and  $1\%$ , respectively, and the spot exchange rate is 0.7500 USD per AUD. From equation (5.9), the 2-year forward exchange rate should be

$$
0. 7 5 0 0 e ^ {(0. 0 1 - 0. 0 3) \times 2} = 0. 7 2 0 6
$$

Suppose first that the 2-year forward exchange rate is less than this, say 0.7000. An arbitrageur can:

1. Borrow 1,000 AUD at  $3\%$  per annum for 2 years, convert to 750 USD and invest the USD at  $1\%$  (both rates are continuously compounded).
2. Enter into a forward contract to buy 1,061.84 AUD for 1,061.84 × 0.7000 = 743.29 USD in 2 years.

The 750 USD that are invested at  $1\%$  grow to  $750e^{0.01 \times 2} = 765.15$  USD in 2 years. Of this, 743.29 USD are used to purchase 1,061.84 AUD under the terms of the forward contract. This is exactly enough to repay principal and interest on the 1,000 AUD that are borrowed ( $1,000e^{0.03 \times 2} = 1,061.84$ ). The strategy therefore gives rise to a riskless profit of  $765.15 - 743.29 = 21.87$  USD. (If this does not sound very exciting, consider following a similar strategy where you borrow 100 million AUD!)

Suppose next that the 2-year forward rate is 0.7600 (greater than the 0.7206 value given by equation (5.9)). An arbitrageur can:

1. Borrow 1,000 USD at  $1\%$  per annum for 2 years, convert to 1,000/0.7500 = 1,333.33 AUD, and invest the AUD at  $3\%$ .
2. Enter into a forward contract to sell 1,415.79 AUD for  $1,415.79 \times 0.76 = 1,075.99$  USD in 2 years.

The 1,333.33 AUD that are invested at  $3\%$  grow to  $1,333.33e^{0.03 \times 2} = 1,415.79$  AUD in 2 years. The forward contract has the effect of converting this to 1,075.99 USD. The amount needed to payoff the USD borrowings is  $1,000e^{0.01 \times 2} = 1,020.20$  USD. The strategy therefore gives rise to a riskless profit of  $1,075.99 - 1,020.20 = 55.79$  USD.

Table 5.4 shows currency futures quotes on May 21, 2020. The quotes are U.S. dollars per unit of the foreign currency. (In the case of the Japanese yen, the quote is U.S. dollars per 100 yen.) This is the usual quotation convention for futures contracts. Equation (5.9) applies with  $r$  equal to the U.S. risk-free rate and  $r_f$  equal to the foreign risk-free rate. The size of one contract is indicated at the top of each segment of the table.

For all the currencies considered in the table, short-term interest rates were lower than on the U.S. dollar. This corresponds to the  $r > r_f$  situation and explains why the settlement futures prices of these currencies increase with maturity. The CME launched futures on the cryptocurrency bitcoin in December 2017. The table shows

Table 5.4 Futures quotes for a selection of CME Group contracts on foreign currencies on May 21, 2020.

<table><tr><td></td><td>Open</td><td>High</td><td>Low</td><td>Prior settlement</td><td>Last trade</td><td>Change</td><td>Volume</td></tr><tr><td colspan="8">Australian Dollar, USD per AUD, 100,000 AUD</td></tr><tr><td>June 2020</td><td>0.6597</td><td>0.6599</td><td>0.6549</td><td>0.6601</td><td>0.6567</td><td>-0.0034</td><td>92,674</td></tr><tr><td>Sept. 2020</td><td>0.6598</td><td>0.6598</td><td>0.6549</td><td>0.6602</td><td>0.6563</td><td>-0.0039</td><td>316</td></tr><tr><td colspan="8">British Pound, USD per GBP, 62,500 GBP</td></tr><tr><td>June 2020</td><td>1.2235</td><td>1.2250</td><td>1.2186</td><td>1.2231</td><td>1.2219</td><td>-0.0012</td><td>69,106</td></tr><tr><td>Sept. 2020</td><td>1.2217</td><td>1.2253</td><td>1.2191</td><td>1.2236</td><td>1.2246</td><td>+0.0010</td><td>388</td></tr><tr><td colspan="8">Canadian Dollar, USD per CAD, 100,000 CAD</td></tr><tr><td>June 2020</td><td>0.71930</td><td>0.71985</td><td>0.71575</td><td>0.71990</td><td>0.71705</td><td>-0.00285</td><td>51,980</td></tr><tr><td>Sept. 2020</td><td>0.71915</td><td>0.71910</td><td>0.71665</td><td>0.72000</td><td>0.71720</td><td>-0.00280</td><td>562</td></tr><tr><td>Dec. 2020</td><td>0.71790</td><td>0.71905</td><td>0.71680</td><td>0.72015</td><td>0.71680</td><td>-0.00335</td><td>164</td></tr><tr><td colspan="8">Euro, USD per EUR, 125,000 EUR</td></tr><tr><td>June 2020</td><td>1.09840</td><td>1.10140</td><td>1.09415</td><td>1.09915</td><td>1.09510</td><td>-0.00405</td><td>136,609</td></tr><tr><td>Sept. 2020</td><td>1.10050</td><td>1.10320</td><td>1.09650</td><td>1.10120</td><td>1.09750</td><td>-0.00370</td><td>1,013</td></tr><tr><td>Dec. 2020</td><td>1.10190</td><td>1.10550</td><td>1.09850</td><td>1.10350</td><td>1.10100</td><td>-0.00250</td><td>277</td></tr><tr><td colspan="8">Japanese Yen, USD per 100 yen, 12.5 million yen</td></tr><tr><td>June 2020</td><td>0.93015</td><td>0.93035</td><td>0.92745</td><td>0.93070</td><td>0.92970</td><td>-0.00100</td><td>61,018</td></tr><tr><td>Sept. 2020</td><td>0.93040</td><td>0.93125</td><td>0.92895</td><td>0.93200</td><td>0.93125</td><td>-0.00075</td><td>453</td></tr><tr><td colspan="8">Swiss Franc, USD per CHF, 125,000 CHF</td></tr><tr><td>June 2020</td><td>1.0371</td><td>1.0374</td><td>1.0303</td><td>1.0374</td><td>1.0304</td><td>-0.0070</td><td>18,155</td></tr><tr><td>Sept. 2020</td><td>1.0397</td><td>1.0397</td><td>1.0336</td><td>1.0402</td><td>1.0342</td><td>-0.0060</td><td>55</td></tr><tr><td colspan="8">Bitcoin, USD per BTC, 5 BTC</td></tr><tr><td>May 2020</td><td>9585</td><td>9610</td><td>8815</td><td>9570</td><td>9050</td><td>-520</td><td>8,738</td></tr><tr><td>June 2020</td><td>9655</td><td>9680</td><td>8900</td><td>9640</td><td>9165</td><td>-475</td><td>1,504</td></tr><tr><td>July 2020</td><td>9710</td><td>9710</td><td>8930</td><td>9685</td><td>9105</td><td>-580</td><td>130</td></tr></table> that, on May 21, 2020, one bitcoin was worth about 9000. Settlement of the contract is in cash on the last Friday of the month.


# Example 5.7

In Table 5.4, the September settlement price for the euro is about  $0.2\%$  higher than the June settlement price, and the December settlement price is about  $0.2\%$  higher than the September settlement price. This indicates that the futures prices are increasing at about  $4 \times 0.2 = 0.8\%$  per year with maturity. From equation (5.9) this is a rough estimate of the amount by which short-term euro interest rates were less than short-term U.S. interest rates in May 2020.

# A Foreign Currency as an Asset Providing a Known Yield

Equation (5.9) is identical to equation (5.3) with  $q$  replaced by  $r_f$ . This is not a coincidence. A foreign currency can be regarded as an investment asset paying a known yield. The yield is the risk-free rate of interest in the foreign currency.

To understand this, we note that the value of interest paid in a foreign currency depends on the value of the foreign currency. Suppose that the interest rate on British pounds is  $5\%$  per annum. To a U.S. investor the British pound provides an income equal to  $5\%$  of the value of the British pound per annum. In other words it is an asset that provides a yield of  $5\%$  per annum.

# 5.11 FUTURES ON COMMODITIES

We now move on to consider futures contracts on commodities. First we look at the futures prices of commodities that are investment assets such as gold and silver. We then go on to examine the futures prices of consumption assets.

# Income and Storage Costs

As explained in Business Snapshot 3.1, the hedging strategies of gold producers leads to a requirement on the part of investment banks to borrow gold. Gold owners such as central banks charge interest in the form of what is known as the gold lease rate when they lend gold. The same is true of silver. Gold and silver can therefore provide income to the holder. Like other commodities they also have storage costs.

Equation (5.1) shows that, in the absence of storage costs and income, the forward price of a commodity that is an investment asset is given by

$$

F _ {0} = S _ {0} e ^ {r T} \tag {5.10}

$$

Storage costs can be treated as negative income. If  $U$  is the present value of all the storage costs, net of income, during the life of a forward contract, it follows from equation (5.2) that

$$

F _ {0} = \left(S _ {0} + U\right) e ^ {r T} \tag {5.11}

$$

# Example 5.8

Consider a 1-year futures contract on an investment asset that provides no income. It costs  \$2 per unit to store the asset, with the payment being made at the end of the year. Assume that the spot price is\$ 450 per unit and the risk-free rate is 7\% per annum for all maturities. This corresponds to  $r = 0.07$ ,  $S_0 = 450$ ,  $T = 1$ , and

$$

U = 2 e ^ {- 0. 0 7 \times 1} = 1. 8 6 5

$$

From equation (5.11), the theoretical futures price,  $F_{0}$ , is given by

$$

F _ {0} = (4 5 0 + 1. 8 6 5) e ^ {0. 0 7 \times 1} = \$ 4 8 4. 6 3

$$

If the actual futures price is greater than 484.63, an arbitrageur can buy the asset and short 1-year futures contracts to lock in a profit. If the actual futures price is less than 484.63, an investor who already owns the asset can improve the return by selling the asset and buying futures contracts.

If the storage costs (net of income) incurred at any time are proportional to the price of the commodity, they can be treated as negative yield. In this case, from equation (5.3),

$$

F _ {0} = S _ {0} e ^ {(r + u) T} \tag {5.12}

$$ where  $u$  denotes the storage costs per annum as a proportion of the spot price net of any yield earned on the asset.

# Consumption Commodities

Commodities that are consumption assets rather than investment assets usually provide no income, but can be subject to significant storage costs. We now review the arbitrage strategies used to determine futures prices from spot prices carefully. Suppose that, instead of equation (5.11), we have

$$
F _ {0} > \left(S _ {0} + U\right) e ^ {r T} \tag {5.13}
$$

To take advantage of this opportunity, an arbitrageur can implement the following strategy:

1. Borrow an amount  $S_0 + U$  at the risk-free rate and use it to purchase one unit of the commodity and to pay storage costs.
2. Short a futures contract on one unit of the commodity.

If we regard the futures contract as a forward contract, so that there is no daily settlement, this strategy leads to a profit of  $F_0 - (S_0 + U)e^{rT}$  at time  $T$ . There is no problem in implementing the strategy for any commodity. However, as arbitrageurs do so, there will be a tendency for  $S_0$  to increase and  $F_0$  to decrease until equation (5.13) is no longer true. We conclude that equation (5.13) cannot hold for any significant length of time.

Suppose next that

$$
F _ {0} <   \left(S _ {0} + U\right) e ^ {r T} \tag {5.14}
$$

When the commodity is an investment asset, we can argue that many investors hold the commodity solely for investment. When they observe the inequality in equation (5.14), they will find it profitable to do the following:

1. Sell the commodity, save the storage costs, and invest the proceeds at the risk-free interest rate.
2. Take a long position in a futures contract.

The result is a riskless profit at maturity of  $(S_0 + U)e^{rT} - F_0$  relative to the position the investors would have been in if they had held the commodity. It follows that equation (5.14) cannot hold for long. Because neither equation (5.13) nor (5.14) can hold for long, we must have  $F_0 = (S_0 + U)e^{rT}$ .

This argument cannot be used for a commodity that is a consumption asset rather than an investment asset. Individuals and companies who own a consumption commodity usually plan to use it in some way. They are reluctant to sell the commodity in the spot market and buy forward or futures contracts, because forward and futures contracts cannot be used in a manufacturing process or consumed in some other way. There is therefore nothing to stop equation (5.14) from holding, and all we can assert for a consumption commodity is

$$
F _ {0} \leq \left(S _ {0} + U\right) e ^ {r T} \tag {5.15}
$$

If storage costs are expressed as a proportion  $u$  of the spot price, the equivalent result is

$$
F _ {0} \leq S _ {0} e ^ {(r + u) T} \tag {5.16}
$$

# Convenience Yields

We do not necessarily have equality in equations (5.15) and (5.16) because users of a consumption commodity may feel that ownership of the physical commodity provides benefits that are not obtained by holders of futures contracts. For example, an oil refiner is unlikely to regard a futures contract on crude oil in the same way as crude oil held in inventory. The crude oil in inventory can be an input to the refining process, whereas a futures contract cannot be used for this purpose. In general, ownership of the physical asset enables a manufacturer to keep a production process running and perhaps profit from temporary local shortages. A futures contract does not do the same. The benefits from holding the physical asset are sometimes referred to as the convenience yield provided by the commodity. If the dollar amount of storage costs is known and has a present value  $U$ , then the convenience yield  $y$  is defined such that

$$
F _ {0} e ^ {y T} = (S _ {0} + U) e ^ {r T}
$$

If the storage costs per unit are a constant proportion,  $u$ , of the spot price, then  $y$  is defined so that

$$
F _ {0} e ^ {y T} = S _ {0} e ^ {(r + u) T}
$$ or


$$

F _ {0} = S _ {0} e ^ {(r + u - y) T} \tag {5.17}

$$

The convenience yield simply measures the extent to which the left-hand side is less than the right-hand side in equation (5.15) or (5.16). For investment assets the convenience yield must be zero; otherwise, there are arbitrage opportunities. Table 2.2 in Chapter 2 shows that, on May 21, 2020, the futures price of soybeans decreased as the maturity of the contract increased from January 2021 to May 2021. This pattern suggests that the convenience yield,  $y$ , is greater than  $r + u$  during this period.

The convenience yield reflects the market's expectations concerning the future availability of the commodity. The greater the possibility that shortages will occur, the higher the convenience yield. If users of the commodity have high inventories, there is very little chance of shortages in the near future and the convenience yield tends to be low. If inventories are low, shortages are more likely and the convenience yield is usually higher.

# 5.12 THE COST OF CARRY

The relationship between futures prices and spot prices can be summarized in terms of the cost of carry. This measures the storage cost plus the interest that is paid to finance the asset less the income earned on the asset. For a non-dividend-paying stock, the cost of carry is  $r$ , because there are no storage costs and no income is earned; for a stock index, it is  $r - q$ , because income is earned at rate  $q$  on the asset. For a currency, it is  $r - r_f$ ; for a commodity that provides income at rate  $q$  and requires storage costs at rate  $u$ , it is  $r - q + u$ ; and so on.


Define the cost of carry as  $c$ . For an investment asset, the futures price is

$$

F _ {0} = S _ {0} e ^ {c T} \tag {5.18}

$$

For a consumption asset, it is

$$

F _ {0} = S _ {0} e ^ {(c - y) T} \tag {5.19}

$$ where  $y$  is the convenience yield.

# 5.13 DELIVERY OPTIONS

Whereas a forward contract normally specifies that delivery is to take place on a particular day, a futures contract often allows the party with the short position to choose to deliver at any time during a certain period. (Typically the party has to give a few days' notice of its intention to deliver.) The choice introduces a complication into the determination of futures prices. Should the maturity of the futures contract be assumed to be the beginning, middle, or end of the delivery period? Even though most futures contracts are closed out prior to maturity, it is important to know when delivery would have taken place in order to calculate the theoretical futures price.

If the futures price is an increasing function of the time to maturity, it can be seen from equation (5.19) that  $c > y$ , so that the benefits from holding the asset (including convenience yield and net of storage costs) are less than the risk-free rate. It is usually optimal in such a case for the party with the short position to deliver as early as possible, because the interest earned on the cash received outweighs the benefits of holding the asset. As a rule, futures prices in these circumstances should be calculated on the basis that delivery will take place at the beginning of the delivery period. If futures prices are decreasing as time to maturity increases ( $c < y$ ), the reverse is true. It is then usually optimal for the party with the short position to deliver as late as possible, and futures prices should, as a rule, be calculated on this assumption.

# 5.14 FUTURES PRICES AND EXPECTED FUTURE SPOT PRICES

We refer to the market's average opinion about what the spot price of an asset will be at a certain future time as the expected spot price of the asset at that time. Suppose that it is now June and the September futures price of corn is 450 cents. It is interesting to ask what the expected spot price of corn in September is. Is it less than 450 cents, greater than 450 cents, or exactly equal to 450 cents? As illustrated in Figure 2.1, the futures price converges to the spot price at maturity. If the expected spot price is less than 450 cents, the market must be expecting the September futures price to decline, so that traders with short positions gain and traders with long positions lose. If the expected spot price is greater than 450 cents, the reverse must be true. The market must be expecting the September futures price to increase, so that traders with long positions gain while those with short positions lose.

# Keynes and Hicks

Economists John Maynard Keynes and John Hicks argued that, if hedgers tend to hold short positions and speculators tend to hold long positions, the futures price of an asset will be below the expected spot price.[8] This is because speculators require compensation for the risks they are bearing. They will trade only if they can expect to make money on average. Hedgers will lose money on average, but they are likely to be prepared to accept this because the futures contract reduces their risks. If hedgers tend to hold long positions while speculators hold short positions, Keynes and Hicks argued that the futures price will be above the expected spot price for a similar reason.

# Risk and Return

The modern approach to explaining the relationship between futures prices and expected spot prices is based on the relationship between risk and expected return in the economy. In general, the higher the risk of an investment, the higher the expected return demanded by an investor. The capital asset pricing model, which is explained in the appendix to Chapter 3, shows that there are two types of risk in the economy: systematic and nonsystematic. Nonsystematic risk should not be important to an investor. It can be almost completely eliminated by holding a well-diversified portfolio. An investor should not therefore require a higher expected return for bearing nonsystematic risk. Systematic risk, in contrast, cannot be diversified away. It arises from a correlation between returns from the investment and returns from the whole stock market. An investor generally requires a higher expected return than the risk-free interest rate for bearing positive amounts of systematic risk. Also, an investor is prepared to accept a lower expected return than the risk-free interest rate when the systematic risk in an investment is negative.

# The Risk in a Futures Position

Let us consider a speculator who takes a long position in a futures contract that lasts for  $T$  years in the hope that the spot price of the asset will be above the futures price at the end of the life of the futures contract. We ignore daily settlement and assume that the futures contract can be treated as a forward contract. We suppose that the speculator puts the present value of the futures price into a risk-free investment while simultaneously taking a long futures position. The proceeds of the risk-free investment are used to buy the asset on the delivery date. The asset is then immediately sold for its market price. The cash flows to the speculator are as follows:

Today:  $-F_{0}e^{-rT}$

End of futures contract:  $+S_{T}$ where  $F_{0}$  is the futures price today,  $S_{T}$  is the price of the asset at time  $T$  at the end of the futures contract, and  $r$  is the risk-free return on funds invested for time  $T$ .

How do we value this investment? The discount rate we should use for the expected cash flow at time  $T$  equals an investor's required return on the investment. Suppose that  $k$  is an investor's required return for this investment. The present value of this investment is

$$
- F _ {0} e ^ {- r T} + E (S _ {T}) e ^ {- k T}
$$ where  $E$  denotes expected value. We can assume that all investments in securities markets are priced so that they have zero net present value. This means that


$$
- F _ {0} e ^ {- r T} + E (S _ {T}) e ^ {- k T} = 0
$$ or


$$

F _ {0} = E \left(S _ {T}\right) e ^ {(r - k) T} \tag {5.20}

$$

As we have just discussed, the returns investors require on an investment depend on its systematic risk. The investment we have been considering is in essence an investment in the asset underlying the futures contract. If the returns from this asset are uncorrelated with the stock market, the correct discount rate to use is the risk-free rate  $r$ , so we should set  $k = r$ . Equation (5.20) then gives

$$

F _ {0} = E (S _ {T})

$$

This shows that the futures price is an unbiased estimate of the expected future spot price when the return from the underlying asset is uncorrelated with the stock market.

If the return from the asset is positively correlated with the stock market,  $k > r$  and equation (5.20) leads to  $F_0 < E(S_T)$ . This shows that, when the asset underlying the futures contract has positive systematic risk, we should expect the futures price to understate the expected future spot price. An example of an asset that has positive systematic risk is a stock index. The expected return of investors on the stocks underlying an index is generally more than the risk-free rate,  $r$ . The dividends provide a return of  $q$ . The expected increase in the index must therefore be more than  $r - q$ . Equation (5.8) is therefore consistent with the prediction that the futures price understates the expected future stock price for a stock index.

If the return from the asset is negatively correlated with the stock market,  $k < r$  and equation (5.20) gives  $F_0 > E(S_T)$ . This shows that, when the asset underlying the futures contract has negative systematic risk, we should expect the futures price to overstate the expected future spot price.

These results are summarized in Table 5.5.

Table 5.5 Relationship between futures price and expected future spot price.

<table><tr><td>Underlying asset</td><td>Relationship of expected return k from asset to risk-free rate r</td><td>Relationship of futures price F to expected future spot price E(ST)</td></tr><tr><td>No systematic risk</td><td>k = r</td><td>F0 = E(ST)</td></tr><tr><td>Positive systematic risk</td><td>k &gt; r</td><td>F0 &lt; E(ST)</td></tr><tr><td>Negative systematic risk</td><td>k &lt; r</td><td>F0 &gt; E(ST)</td></tr></table>

# Normal Backwardation and Contango

When the futures price is below the expected future spot price, the situation is known as normal backwardation; and when the futures price is above the expected future spot price, the situation is known as contango. However, it should be noted that sometimes these terms are used to refer to whether the futures price is below or above the current spot price, rather than the expected future spot price.

# SUMMARY

For most purposes, the futures price of a contract with a certain delivery date can be considered to be the same as the forward price for a contract with the same delivery date. It can be shown that in theory the two should be exactly the same when interest rates are perfectly predictable.

For the purposes of understanding futures (or forward) prices, it is convenient to divide futures contracts into two categories: those in which the underlying asset is held for investment by at least some traders and those in which the underlying asset is held primarily for consumption purposes.

In the case of investment assets, we have considered three different situations:

1. The asset provides no income.
2. The asset provides a known dollar income.
3. The asset provides a known yield.

The results are summarized in Table 5.6. They enable futures prices to be obtained for contracts on stock indices, currencies, gold, and silver. Storage costs can be treated as negative income.

In the case of consumption assets, it is not possible to obtain the futures price as a function of the spot price and other observable variables. Here the parameter known as the asset's convenience yield becomes important. It measures the extent to which users of the commodity feel that ownership of the physical asset provides benefits that are not obtained by the holders of the futures contract. These benefits may include the ability to profit from temporary local shortages or the ability to keep a production process running. We can obtain an upper bound for the futures price of consumption assets using arbitrage arguments, but we cannot nail down an equality relationship between futures and spot prices.

Table 5.6 Summary of results for a contract with time to maturity  $T$  on an investment asset with price  $S_0$  when the risk-free interest rate for a  $T$ -year period is  $r$ .

<table><tr><td>Asset</td><td>Forward/futures price</td><td>Value of long forward contract with delivery price K</td></tr><tr><td>Provides no income:</td><td>S0erT</td><td>S0 - Ke-rT</td></tr><tr><td>Provides known income with present value I:</td><td>(S0 - I)e rT</td><td>S0 - I - Ke-rT</td></tr><tr><td>Provides known yield q:</td><td>S0e(r-q)T</td><td>S0e-qT - Ke-rT</td></tr></table>

The concept of cost of carry is sometimes useful. The cost of carry is the storage cost of the underlying asset plus the cost of financing it minus the income received from it. In the case of investment assets, the futures price is greater than the spot price by an amount reflecting the cost of carry. In the case of consumption assets, the futures price is greater than the spot price by an amount reflecting the cost of carry net of the convenience yield.

If we assume the capital asset pricing model is true, the relationship between the futures price and the expected future spot price depends on whether the return on the asset is positively or negatively correlated with the return on the stock market. Positive correlation will tend to lead to a futures price lower than the expected future spot price, whereas negative correlation will tend to lead to a futures price higher than the expected future spot price. Only when the correlation is zero will the theoretical futures price be equal to the expected future spot price.

# FURTHER READING

Cox, J. C., J. E. Ingersoll, and S. A. Ross. "The Relation between Forward Prices and Futures Prices," Journal of Financial Economics, 9 (December 1981): 321-46.
Jarrow, R. A., and G. S. Oldfield. "Forward Contracts and Futures Contracts," Journal of Financial Economics, 9 (December 1981): 373-82.
Richard, S., and S. Sundaresan. "A Continuous-Time Model of Forward and Futures Prices in a Multigood Economy," Journal of Financial Economics, 9 (December 1981): 347-72.
Routledge, B. R., D. J. Seppi, and C. S. Spatt. "Equilibrium Forward Curves for Commodities," Journal of Finance, 55, 3 (2000) 1297-1338.

# Short Concept Questions

5.1. What is the difference between an investment asset and a consumption asset?
5.2. Explain what happens when an investor shorts a certain stock.
5.3. What is the formula for the forward price of an investment asset that provides no income?
5.4. What is the formula for the forward price of an investment asset that provides a known dollar income?
5.5. What is the difference between a known yield and a known dollar income?
5.6. What is meant by index arbitrage?
5.7. What is the formula for the value of a forward contract in terms of the forward price?
5.8. What is the formula for a forward exchange rate in terms of the spot exchange rate?
5.9. Explain the meaning of cost of carry and convenience yield. What is the relationship between futures price, spot price, convenience yield, and cost of carry?
5.10. Under what circumstances is the futures price greater than the expected future spot price according to (a) Keynes and Hicks and (b) systematic risk considerations?

# Practice Questions

5.11. What is the difference between the forward price and the value of a forward contract?

5.12. Suppose that you enter into a 6-month forward contract on a non-dividend-paying stock when the stock price is 30 and the risk-free interest rate (with continuous compounding) is 5\% per annum. What is the forward price?

5.13. A stock index currently stands at 350. The risk-free interest rate is  $4\%$  per annum (with continuous compounding) and the dividend yield on the index is  $3\%$  per annum. What should the futures price for a 4-month contract be?

5.14. Explain carefully why the futures price of gold can be calculated from its spot price and other observable variables whereas the futures price of copper cannot.

5.15. Explain why a foreign currency can be treated as an asset providing a known yield.

5.16. Is the futures price of a stock index greater than or less than the expected future value of the index? Explain your answer.

5.17. A 1-year long forward contract on a non-dividend-paying stock is entered into when the stock price is 40 and the risk-free rate of interest is 5\% per annum with continuous compounding.

(a) What are the forward price and the initial value of the forward contract?
 (b) Six months later, the price of the stock is 45 and the risk-free interest rate is still 5\%. What are the forward price and the value of the forward contract?

5.18. The risk-free rate of interest is  $7\%$  per annum with continuous compounding, and the dividend yield on a stock index is  $3.2\%$  per annum. The current value of the index is 150. What is the 6-month futures price?
5.19. Assume that the risk-free interest rate is  $4\%$  per annum with continuous compounding and that the dividend yield on a stock index varies throughout the year. In February, May, August, and November, dividends are paid at a rate of  $5\%$  per annum. In other months, dividends are paid at a rate of  $2\%$  per annum. Suppose that the value of the index on July 31 is 1,300. What is the futures price for a contract deliverable in December 31 of the same year?
5.20. Suppose that the risk-free interest rate is  $6\%$  per annum with continuous compounding and that the dividend yield on a stock index is  $4\%$  per annum. The index is standing at 400, and the futures price for a contract deliverable in four months is 405. What arbitrage opportunities does this create?
5.21. Estimate the difference between short-term interest rates in Japan and the United States on May 21, 2020, from the information in Table 5.4.
 5.22. The 2-month interest rates in Switzerland and the United States are, respectively, 1\% and 2\% per annum with continuous compounding. The spot price of the Swiss franc is \$1.0500. The futures price for a contract deliverable in 2 months is \$1.0500. What arbitrage opportunities does this create?
 5.23. The spot price of silver is \$25 per ounce. The storage costs are \$0.24 per ounce per year payable quarterly in advance. Assuming that interest rates are 5\% per annum for all maturities, calculate the futures price of silver for delivery in 9 months.
5.24. Suppose that  $F_{1}$  and  $F_{2}$  are two futures contracts on the same commodity with times to maturity,  $t_{1}$  and  $t_{2}$ , where  $t_{2} > t_{1}$ . Prove that  $F_{2} \leq F_{1} e^{r(t_{2} - t_{1})}$ , where  $r$  is the interest rate

(assumed constant) and there are no storage costs. For the purposes of this problem, assume that a futures contract is the same as a forward contract.

5.25. When a known future cash outflow in a foreign currency is hedged by a company using a forward contract, there is no foreign exchange risk. When it is hedged using futures contracts, the daily settlement process does leave the company exposed to some risk. Explain the nature of this risk. In particular, consider whether the company is better off using a futures contract or a forward contract when:

(a) The value of the foreign currency falls rapidly during the life of the contract.
(b) The value of the foreign currency rises rapidly during the life of the contract.
(c) The value of the foreign currency first rises and then falls back to its initial value.
(d) The value of the foreign currency first falls and then rises back to its initial value. Assume that the forward price equals the futures price.

5.26. It is sometimes argued that a forward exchange rate is an unbiased predictor of future exchange rates. Under what circumstances is this so?

5.27. Show that the growth rate in an index futures price equals the excess return on the portfolio underlying the index over the risk-free rate. Assume that the risk-free interest rate and the dividend yield are constant.

5.28. Explain carefully what is meant by the expected price of a commodity on a particular future date. Suppose that the futures price for crude oil declines with the maturity of the contract at the rate of  $2\%$  per year. Assume that speculators tend to be short crude oil futures and hedgers tend to be long. What does the Keynes and Hicks argument imply about the expected future price of oil?

5.29. The Value Line Index is designed to reflect changes in the value of a portfolio of over 1,600 equally weighted stocks. Prior to March 9, 1988, the change in the index from one day to the next was calculated as the geometric average of the changes in the prices of the stocks underlying the index. In these circumstances, does equation (5.8) correctly relate the futures price of the index to its cash price? If not, does the equation overstate or understate the futures price?

5.30. A U.S. company is interested in using the futures contracts traded by the CME Group to hedge its Australian dollar exposure. Define  $r$  as the interest rate (all maturities) on the U.S. dollar and  $r_f$  as the interest rate (all maturities) on the Australian dollar. Assume that  $r$  and  $r_f$  are constant and that the company uses a contract expiring at time  $T$  to hedge an exposure at time  $t$  ( $T > t$ ).

(a) Show that the optimal hedge ratio is  $e^{(r_f - r)(T - t)}$ , ignoring daily settlement.
(b) Show that, when  $t$  is 1 day, the optimal hedge ratio is almost exactly  $S_0 / F_0$ , where  $S_0$  is the current spot price of the currency and  $F_0$  is the current futures price of the currency for the contract maturing at time  $T$ .
(c) Show that the company can take account of the daily settlement of futures contracts for a hedge that lasts longer than 1 day by adjusting the hedge ratio so that it always equals the spot price of the currency divided by the futures price of the currency.

5.31. What is the cost of carry for:

(a) a non-dividend-paying stock
(b) a stock index
(c) a commodity with storage costs
(d) a foreign currency.

5.32. The spot exchange rate between the Swiss franc and U.S. dollar is 1.0404 ($ per franc). Interest rates in the United States and Switzerland are 0.25\% and 0\% per annum, respectively, with continuous compounding. The 3-month forward exchange rate was 1.0300 ($ per franc). What arbitrage strategy was possible? How does your answer change if the forward exchange rate is 1.0500 ($ per franc).
5.33. An index is 1,200. The three-month risk-free rate is  $3\%$  per annum and the dividend yield over the next three months is  $1.2\%$  per annum. The six-month risk-free rate is  $3.5\%$  per annum and the dividend yield over the next six months is  $1\%$  per annum. Estimate the futures price of the index for three-month and six-month contracts. All interest rates and dividend yields are continuously compounded.
5.34. Suppose the current USD/euro exchange rate is 1.2000 dollar per euro. The six-month forward exchange rate is 1.1950. The six-month USD interest rate is  $1\%$  per annum continuously compounded. Estimate the six-month euro interest rate.
 5.35. The spot price of oil is \$50 per barrel and the cost of storing a barrel of oil for one year is \$3, payable at the end of the year. The risk-free interest rate is 5\% per annum continuously compounded. What is an upper bound for the one-year futures price of oil?
5.36. A company that is uncertain about the exact date when it will pay or receive a foreign currency may try to negotiate with its bank a forward contract that specifies a period during which delivery can be made. The company wants to reserve the right to choose the exact delivery date to fit in with its own cash flows. Put yourself in the position of the bank. How would you price the product that the company wants?
5.37. A company enters into a forward contract with a bank to sell a foreign currency for  $K_{1}$  at time  $T_{1}$ . The exchange rate at time  $T_{1}$  proves to be  $S_{1} (> K_{1})$ . The company asks the bank if it can roll the contract forward until time  $T_{2} (> T_{1})$  rather than settle at time  $T_{1}$ . The bank agrees to a new delivery price,  $K_{2}$ . Explain how  $K_{2}$  should be calculated.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/fef9415f941ea29745914c2a1c37ce732cb006baee2a304071b9048a782c5f47.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/be27b44a1ca136a204004b26559051648bd78c72658b9a3da3b2487d527f5718.jpg)

# Interest Rate Futures

So far we have covered futures contracts on commodities, stock indices, and foreign currencies. We have seen how they work, how they are used for hedging, and how futures prices are determined. We now move on to consider interest rate futures.

This chapter explains the contracts that trade in the United States. Many of the other interest rate futures contracts throughout the world have been modeled on these contracts. The chapter also shows how interest rate futures contracts, when used in conjunction with the duration measure introduced in Chapter 4, can be used to hedge a company's exposure to interest rate movements.


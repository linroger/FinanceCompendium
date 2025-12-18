---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Chapter 15
linter-yaml-title-alias: Chapter 15
---

# Chapter 15

# Derivatives Risk

So far most of our discussion has involved products where the price is linearly dependent on market variables. We now move on to consider derivatives, which are products where the linearity assumption does not hold. We explain what are termed the "Greek letters," often referred to simply as the "Greeks," which are used to manage the risk in derivatives positions. Each of the Greeks measures a different aspect of risk. Traders calculate their Greeks at the end of each day and are required to take action if the internal risk limits of the financial institution they work for are exceeded. Failure to take this action is liable to lead to immediate dismissal. Using historical simulation to calculate value at risk or expected shortfall for derivatives portfolios is straightforward. Using the model-building approach is more complicated. We will discuss some approximations that can be used.

# 15.1 Delta

Imagine that you are a trader working for a U.S. bank and are responsible for all trades involving gold. The current price of gold is 1,300 per ounce. Table 15.1 shows a summary of your portfolio (known as your "book"). How can you manage your risks?

The value of your portfolio is currently -\$5,683,000. (This could be partly because you have been a net seller of options and partly because the market has moved against you.) One way of investigating the risks you face is to revalue the portfolio on the assumption that there is a small increase in the price of gold from \$1,300 per ounce to \$1,300.10 per ounce. Suppose that this \$0.10 increase in the price of gold decreases

Table 15.1 Summary of Gold Portfolio

<table><tr><td>Position</td><td>Value ($)</td></tr><tr><td>Spot gold</td><td>3,180,000</td></tr><tr><td>Forward contracts</td><td>-3,060,000</td></tr><tr><td>Futures contracts</td><td>2,000</td></tr><tr><td>Swaps</td><td>180,000</td></tr><tr><td>Options</td><td>-6,110,000</td></tr><tr><td>Exotics</td><td>125,000</td></tr><tr><td>Total</td><td>-5,683,000</td></tr></table> the value of your portfolio by \$100 from -$5,683,000 to -$5,683,100. This means that the sensitivity of the portfolio to the price of gold is

$$
\frac {- 1 0 0}{0 . 1} = - 1, 0 0 0
$$

This is referred to as the delta of the portfolio (It is a Greek letter we have used in earlier chapters.). The portfolio loses value at a rate of about $1,000 per $1 increase in the price of gold. Similarly, it gains value at a rate of about $1,000 per $1 decrease in the price of gold.

In general, the delta of a portfolio with respect to a market variable is

$$
\frac {\Delta P}{\Delta S}
$$ where  $\Delta S$  is a small increase in the value of the variable and  $\Delta P$  is the resulting change in the value of the portfolio. Using calculus terminology, delta is the partial derivative of the portfolio value with respect to the value of the variable:


$$

\mathrm {D e l t a} = \frac {\partial P}{\partial S}

$$

In our example, the trader can eliminate the delta exposure by buying 1,000 ounces of gold. This is because the delta of a long position in 1,000 ounces of gold is 1,000. (The position gains value at the rate of  $1,000 per$ 1 increase in the price of gold.) This is known as delta hedging. When the hedging trade is combined with the existing portfolio the resultant portfolio has a delta of zero. Such a portfolio is referred to as delta neutral.

# 15.1.1 Linear Products

A linear product is one whose value at any given time is linearly dependent on the value of an underlying market variable (see Figure 15.1). If the underlying variable is the price of an asset such as gold, a spot position in the asset is clearly a linear product. The value of the position varies linearly with the price of the asset. A forward contract is also a linear product. However, options and other more complex derivative products are not linear products.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/a06977d46cd165c45d2bc4043738f0b6a142e9ea6287fa7aee2c4a6e9aa2ad09.jpg)
Figure 15.1 A Linear Product

A linear product can be hedged relatively easily. As a simple example, consider a U.S. bank that has entered into a forward contract with a corporate client where it agreed to sell the client 1 million euros for 1.3 million in one year. Assume that the euro and dollar interest rates are 4\% and 3\% with annual compounding. This means that the present value of a 1 million euro cash flow in one year is 1,000,000 / 1.04 = 961,538 euros. The present value of 1.3 million dollars in one year is 1,300,000 / 1.03 = 1,262,136 dollars. Suppose that S is the value of one euro in dollars today. The value of the contract today in dollars is

$$

1, 2 6 2, 1 3 6 - 9 6 1, 5 3 8 S

$$

This shows that the value of the contract is linearly related to the exchange rate,  $S$ . The delta of the contract is  $-961,538$ . It can be hedged by buying 961,538 euros. Because of the linearity, the hedge provides protection against both small and large movements in  $S$ .

When the bank enters into the opposite transaction and agrees to buy one million euros in one year, the value of the contract is also linear in  $S$

$$

9 6 1, 5 3 8 S - 1, 2 6 2, 1 3 6

$$

The bank has a delta of  $+961,538$ . It must hedge by shorting 961,538 euros. It does this by borrowing the euros today at  $4\%$  and immediately converting them to U.S. dollars. The one million euros received in one year are used to repay the loan.

# BUSINESS SNAPSHOT 15.1

# Hedging by Gold Mining Companies

It is natural for a gold mining company to consider hedging against changes in the price of gold. Typically it takes several years to extract all the gold from a mine. Once a gold mining company decides to go ahead with production at a particular mine, it has a big exposure to the price of gold. Indeed a mine that looks profitable at the outset could become unprofitable if the price of gold plunges.

Gold mining companies are careful to explain their hedging strategies to potential shareholders. Some gold mining companies do not hedge. They tend to attract shareholders who buy gold stocks because they want to benefit when the price of gold increases and are prepared to accept the risk of a loss from a decrease in the price of gold. Other companies choose to hedge. They estimate the number of ounces they will produce each month for the next few years and enter into futures or forward contracts to lock in the price that will be received.

Suppose you are Goldman Sachs and have just entered into a forward contract with a gold mining company where you agree to buy at a future time a large amount of gold at a fixed price. How do you hedge your risk? The answer is that you borrow gold from a central bank and sell it at the current market price. (The central banks of some of the countries that hold large amounts of gold are prepared to lend gold for a fee known as the gold lease rate.) At the end of the life of the forward contract, you buy gold from the gold mining company under the terms of the forward contract and use it to repay the central bank.

Shorting assets to hedge forward contracts is sometimes tricky. Gold is an interesting case in point. Financial institutions often find that they enter into very large forward contracts to buy gold from gold producers. This means that they need to borrow large quantities of gold to create a short position for hedging. As outlined in Business Snapshot 15.1, central banks are the source of the borrowed gold. A fee known as the gold lease rate is charged by central banks for lending the gold.

Linear products have the attractive property that hedges protect against large changes as well as small ones in the value of the underlying asset. They also have another related attractive property: the hedge, once it has been set up, never needs to be changed. (This is sometimes referred to as the "hedge and forget" property.) For an illustration of this, consider again the first forward contract we considered where a bank agrees to sell a client 1 million euros for 1.3 million dollars. A total of 961,538 euros are purchased to hedge the position. These can be invested at  $4\%$  for one year so that they grow to exactly 1 million euros in one year. This is exactly what the bank needs to complete the forward transaction in one year so that there is no need to adjust the hedge during the year.

# 15.1.2 Nonlinear Products

Options and other more complex derivatives dependent on the price of an underlying asset are nonlinear products. The relationship between the value of the product and the underlying asset price at any given time is nonlinear. This nonlinearity makes them more difficult to hedge for two reasons. First, making a nonlinear portfolio delta neutral only protects against small movements in the price of the underlying asset. Second, we are not in a hedge-and-forget situation. The hedge needs to be changed frequently. This is known as dynamic hedging.

Consider as an example a trader who sells 100,000 European call options on a non-dividend-paying stock when

1. Stock price is 49
2. Strike price is 50
3. Risk-free interest rate is  $5\%$
4. Stock price volatility is  $20\%$  per annum
5. Time to option maturity is 20 weeks

We suppose that the amount received for the options is 300,000 and that the trader has no other positions dependent on the stock.

The value of one option as a function of the underlying stock price is shown in Figure 15.2. (The risk-neutral valuation principle discussed in Chapter 10 shows that we do not need the expected return on the stock to value the option.) Because the function is nonlinear (i.e., curved), the delta of a position in one option depends on the stock price. When the stock price is low, the value of the option is almost zero and the dollar increase in the value of the option as a result of a small change in the stock price is also close to zero. This means that the delta of the option is close to zero. When the stock price is high, say 70, the option is almost certain to be exercised and the delta of a position in one option is close to 1.0. This is because an increase (decrease) of \Delta S in the stock price increases (decreases) the value of the option by almost \Delta S.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/f3e052e255452e05e65822b65b4fb5785e0282f69273493665f8f6d0efdd86d0.jpg)
Figure 15.2 Value of Call Option as a Function of Stock Price (strike price = 50, risk-free rate = 5\%, volatility = 20\%, time to maturity = 20 weeks)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/3f96f93ff52e6a8a63816d06d2bb5b757185f99baf7fec9889db0d4eaa808444.jpg)
Figure 15.3 Delta of Call Option as a Function of Stock Price (strike price = 50, risk-free rate = 5\%, volatility = 20\%, time to maturity = 20 weeks)


In our example, the stock price is  \$49. The delta of the option is the gradient of the curve at this point. This is 0.522, as indicated in Figure 15.2. (See Appendix E for the calculation of the Greeks for European options.) The delta of one option changes with the stock price in the way shown in Figure 15.3. At the time of the trade, the value of an option to buy one share of the stock is\$ 2.40 and the delta of the option is 0.522. Because the trader is short 100,000 options, the value of the trader's portfolio is -240,000 and the delta of the portfolio is -52,200. The trader can feel pleased that the options have been sold for 60,000 more than their theoretical value, but is faced with the problem of hedging the risk in the portfolio.

Immediately after the trade, the trader's portfolio can be made delta neutral by buying 52,200 shares of the underlying stock. If there is a small decrease (increase) in the stock price, the gain (loss) to the trader of the short option position should be offset by the loss (gain) on the shares. For example, if the stock price increases from  $49 to$ 49.10, the value of the option position will decrease by about  $52,200 \times 0.10 =$ 5,220, while the value of the shares will increase by this amount.

As mentioned, in the case of linear products, once the hedge has been set up it does not need to be changed. This is not the case for nonlinear products. To preserve delta neutrality, the hedge has to be adjusted periodically. This is known as rebalancing.

Tables 15.2 and 15.3 provide two examples of how rebalancing might work in our example. Rebalancing is assumed to be done weekly. As mentioned, the initial value of

Table 15.2 Simulation of Delta Hedging (option closes in-the-money and cost of hedging is 263,300)

<table><tr><td>Week</td><td>Stock Price</td><td>Delta</td><td>Shares Purchased</td><td>Cost of Shares Purchased (\$000)</td><td>Cumulative Cash Outflow (\$000)</td><td>Interest Cost (\$000)</td></tr><tr><td>0</td><td>49.00</td><td>0.522</td><td>52,200</td><td>2,557.8</td><td>2,557.8</td><td>2.5</td></tr><tr><td>1</td><td>48.12</td><td>0.458</td><td>(6,400)</td><td>(308.0)</td><td>2,252.3</td><td>2.2</td></tr><tr><td>2</td><td>47.37</td><td>0.400</td><td>(5,800)</td><td>(274.7)</td><td>1,979.8</td><td>1.9</td></tr><tr><td>3</td><td>50.25</td><td>0.596</td><td>19,600</td><td>984.9</td><td>2,966.6</td><td>2.9</td></tr><tr><td>4</td><td>51.75</td><td>0.693</td><td>9,700</td><td>502.0</td><td>3,471.5</td><td>3.3</td></tr><tr><td>5</td><td>53.12</td><td>0.774</td><td>8,100</td><td>430.3</td><td>3,905.1</td><td>3.8</td></tr><tr><td>6</td><td>53.00</td><td>0.771</td><td>(300)</td><td>(15.9)</td><td>3,893.0</td><td>3.7</td></tr><tr><td>7</td><td>51.87</td><td>0.706</td><td>(6,500)</td><td>(337.2)</td><td>3,559.5</td><td>3.4</td></tr><tr><td>8</td><td>51.38</td><td>0.674</td><td>(3,200)</td><td>(164.4)</td><td>3,398.5</td><td>3.3</td></tr><tr><td>9</td><td>53.00</td><td>0.787</td><td>11,300</td><td>598.9</td><td>4,000.7</td><td>3.8</td></tr><tr><td>10</td><td>49.88</td><td>0.550</td><td>(23,700)</td><td>(1,182.2)</td><td>2,822.3</td><td>2.7</td></tr><tr><td>11</td><td>48.50</td><td>0.413</td><td>(13,700)</td><td>(664.4)</td><td>2,160.6</td><td>2.1</td></tr><tr><td>12</td><td>49.88</td><td>0.542</td><td>12,900</td><td>643.5</td><td>2,806.2</td><td>2.7</td></tr><tr><td>13</td><td>50.37</td><td>0.591</td><td>4,900</td><td>246.8</td><td>3,055.7</td><td>2.9</td></tr><tr><td>14</td><td>52.13</td><td>0.768</td><td>17,700</td><td>922.7</td><td>3,981.3</td><td>3.8</td></tr><tr><td>15</td><td>51.88</td><td>0.759</td><td>(900)</td><td>(46.7)</td><td>3,938.4</td><td>3.8</td></tr><tr><td>16</td><td>52.87</td><td>0.865</td><td>10,600</td><td>560.4</td><td>4,502.6</td><td>4.3</td></tr><tr><td>17</td><td>54.87</td><td>0.978</td><td>11,300</td><td>620.0</td><td>5,126.9</td><td>4.9</td></tr><tr><td>18</td><td>54.62</td><td>0.990</td><td>1,200</td><td>65.5</td><td>5,197.3</td><td>5.0</td></tr><tr><td>19</td><td>55.87</td><td>1.000</td><td>1,000</td><td>55.9</td><td>5,258.2</td><td>5.1</td></tr><tr><td>20</td><td>57.25</td><td>1.000</td><td>0</td><td>0.0</td><td>5,263.3</td><td></td></tr></table> delta for a single option is 0.522 and the delta of the portfolio is -52,200. This means that, as soon as the option is written, \$2,557,800 must be borrowed to buy 52,200 shares at a price of \$49. The rate of interest is 5\%. An interest cost of approximately \$2,500 is therefore incurred in the first week.


In Table 15.2, the stock price falls by the end of the first week to \$48.12. The delta declines to 0.458. A long position in 45,800 shares is now required to hedge the option position. A total of 6,400 (= 52,200 - 45,800) shares are therefore sold to maintain the delta neutrality of the hedge. The strategy realizes \$308,000 in cash, and the cumulative borrowings at the end of week 1 are reduced to \$2,252,300. During the second week the stock price reduces to \$47.37 and delta declines again. This leads to 5,800 shares being sold at the end of the second week. During the third week, the stock price increases to over \$50 and delta increases. This leads to 19,600 shares being purchased at the end of the third week. Toward the end of the life of the option, it becomes apparent that the option will be exercised and delta approaches 1.0. By week 20, therefore, the hedger owns 100,000 shares. The hedger receives \$5 million (= 100,000 × \$50) for these shares when the option is exercised so that the total cost of writing the option and hedging it is \$263,300.

Table 15.3 Simulation of Delta Hedging (option closes out-of-the-money and cost of hedging = 256,600)

<table><tr><td>Week</td><td>Stock Price</td><td>Delta</td><td>Shares Purchased</td><td>Cost of Shares Purchased (\$000)</td><td>Cumulative Cash Outflow (\$000)</td><td>Interest Cost (000)</td></tr><tr><td>0</td><td>49.00</td><td>0.522</td><td>52,200</td><td>2,557.8</td><td>2,557.8</td><td>2.5</td></tr><tr><td>1</td><td>49.75</td><td>0.568</td><td>4,600</td><td>228.9</td><td>2,789.2</td><td>2.7</td></tr><tr><td>2</td><td>52.00</td><td>0.705</td><td>13,700</td><td>712.4</td><td>3,504.3</td><td>3.4</td></tr><tr><td>3</td><td>50.00</td><td>0.579</td><td>(12,600)</td><td>(630.0)</td><td>2,877.7</td><td>2.8</td></tr><tr><td>4</td><td>48.38</td><td>0.459</td><td>(12,000)</td><td>(580.6)</td><td>2,299.9</td><td>2.2</td></tr><tr><td>5</td><td>48.25</td><td>0.443</td><td>(1,600)</td><td>(77.2)</td><td>2,224.9</td><td>2.1</td></tr><tr><td>6</td><td>48.75</td><td>0.475</td><td>3,200</td><td>156.0</td><td>2,383.0</td><td>2.3</td></tr><tr><td>7</td><td>49.63</td><td>0.540</td><td>6,500</td><td>322.6</td><td>2,707.9</td><td>2.6</td></tr><tr><td>8</td><td>48.25</td><td>0.420</td><td>(12,000)</td><td>(579.0)</td><td>2,131.5</td><td>2.1</td></tr><tr><td>9</td><td>48.25</td><td>0.410</td><td>(1,000)</td><td>(48.2)</td><td>2,085.4</td><td>2.0</td></tr><tr><td>10</td><td>51.12</td><td>0.658</td><td>24,800</td><td>1,267.8</td><td>3,355.2</td><td>3.2</td></tr><tr><td>11</td><td>51.50</td><td>0.692</td><td>3,400</td><td>175.1</td><td>3,533.5</td><td>3.4</td></tr><tr><td>12</td><td>49.88</td><td>0.542</td><td>(15,000)</td><td>(748.2)</td><td>2,788.7</td><td>2.7</td></tr><tr><td>13</td><td>49.88</td><td>0.538</td><td>(400)</td><td>(20.0)</td><td>2,771.4</td><td>2.7</td></tr><tr><td>14</td><td>48.75</td><td>0.400</td><td>(13,800)</td><td>(672.7)</td><td>2,101.4</td><td>2.0</td></tr><tr><td>15</td><td>47.50</td><td>0.236</td><td>(16,400)</td><td>(779.0)</td><td>1,324.4</td><td>1.3</td></tr><tr><td>16</td><td>48.00</td><td>0.261</td><td>2,500</td><td>120.0</td><td>1,445.7</td><td>1.4</td></tr><tr><td>17</td><td>46.25</td><td>0.062</td><td>(19,900)</td><td>(920.4)</td><td>526.7</td><td>0.5</td></tr><tr><td>18</td><td>48.13</td><td>0.183</td><td>12,100</td><td>582.4</td><td>1,109.6</td><td>1.1</td></tr><tr><td>19</td><td>46.63</td><td>0.007</td><td>(17,600)</td><td>(820.7)</td><td>290.0</td><td>0.3</td></tr><tr><td>20</td><td>48.12</td><td>0.000</td><td>(700)</td><td>(33.7)</td><td>256.6</td><td></td></tr></table>

Table 15.3 illustrates an alternative sequence of events where the option closes out-of-the-money. As it becomes clear that the option will not be exercised, delta approaches zero. By week 20, the hedger therefore has no position in the underlying stock. The total costs incurred are 256,600.

In Tables 15.2 and 15.3, the costs of hedging the option, when discounted to the beginning of the period, are close to, but not exactly, the same as the theoretical (Black-Scholes-Merton) price of 240,000. If the hedging scheme worked perfectly, the cost of hedging would, after discounting, be exactly equal to the Black-Scholes-Merton price for every simulated stock price path. The reason for the variation in the cost of delta hedging is that the hedge is rebalanced only once a week. As rebalancing takes place more frequently, the variation in the cost of hedging is reduced. Of course, the examples in Tables 15.2 and 15.3 are idealized in that they assume the model underlying the Black-Scholes-Merton formula is exactly correct and there are no transactions costs.

Delta hedging aims to keep the value of the financial institution's position as close to unchanged as possible. Initially, the value of the written option is  \$240,000. In the situation depicted in Table 15.2, the value of the option can be calculated as\$ 414,500 in week 9. Thus, the financial institution has lost 414,500 - 240,000 = \$174,500 on its short option position. Its cash position, as measured by the cumulative cost, is \$1,442,900 worse in week 9 than in week 0. The value of the shares held has increased from $2,557,800 to $4,171,100 for a gain of \$1,613,300. The net effect is that the value of the financial institution's position has changed by only \$4,100 during the nine-week period.


# 15.1.3 Where the Cost Comes From

The delta-hedging procedure in Tables 15.2 and 15.3 in effect creates a long position in the option synthetically to neutralize the trader's short option position. As the tables illustrate, the procedure tends to involve selling stock just after the price has gone down and buying stock just after the price has gone up. It might be termed a buy-high, sell-low trading strategy! The cost of 240,000 comes from the average difference between the price paid for the stock and the price realized for it.

# 15.1.4 Economies of Scale

Maintaining a delta-neutral position in a single option and the underlying asset, in the way that has just been described, is liable to be prohibitively expensive because of the transactions costs incurred on trades. Maintaining delta neutrality is more feasible for a large portfolio of derivatives dependent on a single asset because only one trade in the underlying asset is necessary to zero out delta for the whole portfolio. The hedging transactions costs are absorbed by the profits on many different trades. This shows that there are economies of scale in trading derivatives. It is not surprising that the derivatives market is dominated by a small number of large dealers.

# 15.2 Gamma

As mentioned, for a nonlinear portfolio, delta neutrality only provides protection against small changes in the price of the underlying asset.

The gamma,  $\Gamma$ , of a portfolio measures the extent to which large changes cause problems. Gamma is the rate of change of the portfolio's delta with respect to the price of the underlying asset. It is the second partial derivative of the portfolio with respect to asset price:

$$

\mathrm {G a m m a} = \frac {\partial^ {2} P}{\partial S ^ {2}}

$$

If gamma is small, delta changes slowly, and adjustments to keep a portfolio delta neutral need to be made only relatively infrequently. However, if gamma is large in absolute terms, delta is highly sensitive to the price of the underlying asset. It is then quite risky to leave a delta-neutral portfolio unchanged for any length of time. Figure 15.4 illustrates this point for an option on a stock. When the stock price moves from  $S$  to  $S'$ , delta hedging assumes that the option price moves from  $C$  to  $C'$ , when in fact it moves from  $C$  to  $C''$ . The difference between  $C'$  and  $C''$  leads to a hedging error. This error depends on the curvature of the relationship between the option price and the stock price. Gamma measures this curvature.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/2ee8c0fb7503d3c4e1e5a814a93f60eab1355ad43e23f3931732cb79cd7b2f42.jpg)
Figure 15.4 Hedging Error Introduced by Nonlinearity

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/723a44114c760444afae7d867d8ac223980de9af48bca5c2ce19974af6807a55.jpg)
Figure 15.5 Relationship between Gamma of an Option and Price of Underlying Stock Where  $K$  Is the Option's Strike Price


Gamma is positive for a long position in an option. The general way in which gamma varies with the price of the underlying stock is shown in Figure 15.5. Gamma is greatest for options where the stock price is close to the strike price  $K$ .

# 15.2.1 Making a Portfolio Gamma Neutral

A linear product has zero gamma and cannot be used to change the gamma of a portfolio. What is required is a position in an instrument, such as an option, that is not linearly dependent on the underlying asset price.

Suppose that a delta-neutral portfolio has a gamma equal to  $\Gamma$ , and a traded option has a gamma equal to  $\Gamma_T$ . If the number of traded options added to the portfolio is  $w_T$ , the gamma of the portfolio is

$$

\upsilon_ {T} \Gamma_ {T} + \Gamma

$$

Hence, the position in the traded option necessary to make the portfolio gamma neutral is  $w_{T} = -\Gamma / \Gamma_{T}$ . Including the traded option is likely to change the delta of the portfolio, so the position in the underlying asset then has to be changed to maintain delta neutrality. Note that the portfolio is gamma neutral only for a short period of time. As time passes, gamma neutrality can be maintained only if the position in the traded option is adjusted so that it is always equal to  $-\Gamma / \Gamma_{T}$ .

Making a delta-neutral portfolio gamma neutral can be regarded as a first correction for the fact that the position in the underlying asset cannot be changed continuously when delta hedging is used. Delta neutrality provides protection against relatively small asset price moves between rebalancing. Gamma neutrality provides protection against larger movements in the asset price between hedge rebalancing. Suppose that a portfolio is delta neutral and has a gamma of  $-3,000$ . The delta and gamma of a particular traded call option are 0.62 and 1.50, respectively. The portfolio can be made gamma neutral by including in the portfolio a long position of

$$

\frac {3 , 0 0 0}{1 . 5} = 2, 0 0 0

$$ in the call option. (The gamma of the portfolio is then  $-3,000 + 1.5 \times 2,000 = 0$ .) However, the delta of the portfolio will then change from zero to  $2,000 \times 0.62 = 1,240$ . A quantity, 1,240, of the underlying asset must therefore be sold to keep it delta neutral.

# 15.3 Vega

Another source of risk in derivatives trading is the possibility that the volatility of the price of the underlying asset will change. In option valuation models, volatilities are often assumed to be constant, but in practice they do change through time. Spot positions and forwards do not depend on the volatility of underlying asset prices, but the prices of options and more complex derivatives change because of movements in volatility as well as because of changes in the asset price and the passage of time.

The vega of a portfolio,  $V$ , is the rate of change of the value of the portfolio with respect to the volatility,  $\sigma$ , of the underlying asset price.

$$
V = \frac {\partial P}{\partial \sigma}
$$

If vega is high in absolute terms, the portfolio's value is very sensitive to small changes in volatility. If vega is low in absolute terms, volatility changes have relatively little impact on the value of the portfolio.

The vega of a portfolio can be changed by adding a position in a traded option. If  $V$  is the vega of the portfolio and  $V_{T}$  is the vega of a traded option, a position of  $-V / V_{T}$ in the traded option makes the portfolio instantaneously vega neutral. Unfortunately, a portfolio that is gamma neutral will not, in general, be vega neutral, and vice versa. If a hedger requires a portfolio to be both gamma and vega neutral, at least two traded derivatives dependent on the underlying asset must usually be used.

# Example 15.1

Consider a portfolio dependent on the price of a single asset that is delta neutral, with a gamma of  $-5,000$  and a vega of  $-8,000$ . The options shown in the table below can be traded. The portfolio could be made vega neutral by including a long position in 4,000 of Option 1. This would increase delta to 2,400 and require that 2,400 units of the asset be sold to maintain delta neutrality. The gamma of the portfolio would change from  $-5,000$  to  $-3,000$ .

<table><tr><td></td><td>Delta</td><td>Gamma</td><td>Vega</td></tr><tr><td>Portfolio</td><td>0</td><td>-5,000</td><td>-8,000</td></tr><tr><td>Option 1</td><td>0.6</td><td>0.5</td><td>2.0</td></tr><tr><td>Option 2</td><td>0.5</td><td>0.8</td><td>1.2</td></tr></table>

To make the portfolio gamma and vega neutral, both Option 1 and Option 2 can be used. If  $w_{1}$  and  $w_{2}$  are the quantities of Option 1 and Option 2 that are added to the portfolio, we require that

$$
\begin{array}{l} - 5, 0 0 0 + 0. 5 w _ {1} + 0. 8 w _ {2} = 0 \\ - 8, 0 0 0 + 2. 0 w _ {1} + 1. 2 w _ {2} = 0 \\ \end{array}
$$

The solution to these equations is  $w_{1} = 400$ ,  $w_{2} = 6,000$ . The portfolio can therefore be made gamma and vega neutral by including 400 of Option 1 and 6,000 of Option 2. The delta of the portfolio after the addition of the positions in the two traded options is  $400 \times 0.6 + 6,000 \times 0.5 = 3,240$ . Hence, 3,240 units of the underlying asset would have to be sold to maintain delta neutrality.

The vega of a long position in an option is positive. The variation of vega with the price of the underlying asset is similar to that of gamma and is shown in Figure 15.6. Gamma neutrality protects against large changes in the price of the underlying asset between hedge rebalancing. Vega neutrality protects against variations in volatility.

The implied volatilities of short-dated options tend to be more variable than the implied volatilities of long-dated options. The vega of a portfolio is therefore often calculated by changing the volatilities of short-dated options by more than that of long-dated options. One way of doing this is discussed in Section 8.10.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/82816445e01d504de929cc012c37404c94fb81c8c3e587cbba72fce99e35dcc9.jpg)

Figure 15.6 Variation of Vega of an Option with Price of Underlying Asset Where  $K$  Is Option's Strike Price

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/b92ce4af0365da1e0018122d27ba713258edbebf249218940050c1063bbf9122.jpg)

Figure 15.7 Variation of Theta of a European Call Option with Stock Price Where  $K$  Is Option's Strike Price

# 15.4 Theta

The theta of a portfolio,  $\Theta$ , is the rate of change of the value of the portfolio with respect to the passage of time, with all else remaining the same. Theta is sometimes referred to as the time decay of the portfolio.

Theta is usually negative for an option. This is because as the time to maturity decreases with all else remaining the same, the option tends to become less valuable. The general way in which  $\Theta$  varies with stock price for a call option on a stock is shown in Figure 15.7. When the stock price is very low, theta is close to zero. For an at-the-money call option, theta is large and negative. Figure 15.8 shows typical patterns for the variation of  $\Theta$  with the time to maturity for in-the-money, at-the-money, and out-of-the-money call options.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/ff27747f9c120aa511f12cf9fa2fccdf577e92afe7c93bd356be341f9d6fd3d8.jpg)

Figure 15.8 Typical Patterns for Variation of Theta of a European Call Option with Time to Maturity

Theta is not the same type of Greek letter as delta. There is uncertainty about the future price of the underlying asset, but there is no uncertainty about the passage of time. It makes sense to hedge against changes in the price of an underlying asset, but it does not make any sense to hedge against the effect of the passage of time on an option portfolio. In spite of this, many traders regard theta as a useful descriptive statistic for a portfolio. In a delta-neutral portfolio, when theta is large and positive, gamma tends to be large and negative, and vice versa.

# 15.5 Rho

Yet another Greek letter is rho. Rho is the rate of change of a portfolio with respect to the level of interest rates. Currency options have two rhos, one for the domestic interest rate and one for the foreign interest rate. When bonds and interest rate derivatives are part of the portfolio, traders usually consider carefully the ways in which the whole term structure of interest rates can change. We discussed this in chapter 14.

# 15.6 Calculating Greek Letters

Appendices E and F explain how Greek letters can be calculated for options. The RMFI software, which can be downloaded from the author's website, can be used for European and American options and some exotic options. Consider again the European call option in Section 15.1. The stock price is  \$49, the strike price is\$ 50, the risk-free rate is 5\%, the stock price volatility is 20\%, and the time to exercise is 20 weeks or 20/52 year. Table 15.4

Table 15.4 Greek Letters Calculated Using RMFI Software

<table><tr><td></td><td>Single Option</td><td>Short Position in 100,000 Options</td></tr><tr><td>Value ($)</td><td>2.40</td><td>-240,000</td></tr><tr><td>Delta</td><td>0.522</td><td>-52,200</td></tr><tr><td>Gamma</td><td>0.066</td><td>-6,600</td></tr><tr><td>Vega (per \%)</td><td>0.121</td><td>-12,100</td></tr><tr><td>Theta (per day)</td><td>-0.012</td><td>1,200</td></tr><tr><td>Rho (per \%)</td><td>0.089</td><td>-8,900</td></tr></table> shows delta, gamma, vega, theta, and rho for the option (i.e., for a long position in one option) and for a short position in 100,000 options, which was the position considered in Tables 15.2 and 15.3.

Here are some examples of how these numbers can be interpreted:

1. When there is an increase of \$0.1 in the stock price with no other changes, the option price increases by about 0.522 × 0.1 or \$0.0522. The value of a short position in 100,000 options decreases by 5,220.
 2. When there is an increase of 0.1 in the stock price with no other changes, the delta of the option increases by about 0.066 × 0.1 or 0.0066. The delta of a short position in 100,000 options decreases by 660.
 3. When there is an increase in volatility of 0.5\% from 20\% to 20.5\% with no other changes, the option price increases by about 0.121 × 0.5 or \$0.0605. The value of a short position in 100,000 options decreases by \$6,050.
 4. When one day goes by with no changes to the stock price or its volatility, the option price decreases by about \$0.012. The value of a short position in 100,000 options increases by \$1,200.
 5. When interest rates increase by 1\% (or 100 basis points) with no other changes, the option price increases by \$0.089. The value of a short position in 100,000 options decreases by \$8,900.

# 15.7 Taylor Series Expansions

Taylor series expansions are explained in Appendix G. They can be used to show how the change in the portfolio value in a short period of time depends on the Greek letters. Consider a portfolio dependent on a single asset price,  $S$ . If the volatility of the underlying asset and interest rates are assumed to be constant, the value of the portfolio,  $P$ , is a function of  $S$ , and time  $t$ . The Taylor series expansion gives

$$
\Delta P = \frac {\partial P}{\partial S} \Delta S + \frac {\partial P}{\partial t} \Delta t + \frac {1}{2} \frac {\partial^ {2} P}{\partial S ^ {2}} \Delta S ^ {2} + \frac {1}{2} \frac {\partial^ {2} P}{\partial t ^ {2}} \Delta t ^ {2} + \frac {\partial^ {2} P}{\partial S \partial t} \Delta S \Delta t + \dots \tag {15.1}
$$ where  $\Delta P$  and  $\Delta S$  are the change in  $P$  and  $S$  in a small time interval  $\Delta t$ . The first term on the right-hand side is delta times  $\Delta S$  and is eliminated by delta hedging. The second


![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/8318f3fa6447e2fd33e2794f7b9049787d58c33fe2d0f99f9bb5122f5386aec1.jpg)
(a)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/d26be2b3b7b6463b6caa325c78cc8e7b9867339c439a6b978694801645b812ce.jpg)
(b)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/d962bc8591cefac87451bc3d0749183b855b8aa2ba4bb4fee7ed4905b8c9667b.jpg)
(c)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/6ba79c8f858ed4b5c9d72dd9e89d16e748c19c34651bf9dfd79c592f3afbcdbb.jpg)
(d) term, which is theta times  $\Delta t$ , is non-stochastic. The third term can be made zero by ensuring that the portfolio is gamma neutral as well as delta neutral. Arguments from stochastic calculus show that  $\Delta S$  is of order  $\sqrt{\Delta t}$ . This means that the third term on the right-hand side is of order  $\Delta t$ . Later terms in the Taylor series expansion are of higher order than  $\Delta t$ .
Figure 15.9 Alternative Relationships between  $\Delta P$  and  $\Delta S$  for a Delta-Neutral Portfolio (a) Slightly positive gamma, (b) large positive gamma, (c) slightly negative gamma, and (d) large negative gamma


For a delta-neutral portfolio, the first term on the right-hand side of equation (15.1) is zero, so that

$$

\Delta P = \Theta \Delta t + \frac {1}{2} \Gamma \Delta S ^ {2} \tag {15.2}

$$ when terms of higher order than  $\Delta t$  are ignored. The relationship between the change in the portfolio value and the change in the stock price is quadratic, as shown in Figure 15.9. When gamma is positive, the holder of the portfolio gains from large movements in the asset price and loses when there is little or no movement. When gamma is negative, the reverse is true so that a large positive or negative movement in the asset price leads to severe losses.

# Example 15.2

Suppose that the gamma of a delta-neutral portfolio of options on an asset is -10,000. Suppose that a change of +2 in the price of the asset occurs over a short period of time (for which \Delta t can be assumed to be zero). Equation (15.2) shows that there is an unexpected decrease in the value of the portfolio of approximately 0.5 \times 10,000 \times 2^2 = \20,000. Note that the same unexpected decrease would occur if there were a change of -2.

When the volatility,  $\sigma$ , of the underlying asset is uncertain,  $P$  is a function of  $\sigma$ ,  $S$ , and  $t$ . Equation (15.1) then becomes

$$
\Delta P = \frac {\partial P}{\partial S} \Delta S + \frac {\partial P}{\partial \sigma} \Delta \sigma + \frac {\partial P}{\partial t} \Delta t + \frac {1}{2} \frac {\partial^ {2} P}{\partial S ^ {2}} \Delta S ^ {2} + \frac {1}{2} \frac {\partial^ {2} P}{\partial \sigma^ {2}} \Delta \sigma^ {2} + \dots
$$ where  $\Delta \sigma$  is the change in  $\sigma$  in time  $\Delta t$ . In this case, delta hedging eliminates the first term on the right-hand side. The second term is eliminated by making the portfolio vega neutral. The third term is non-stochastic. The fourth term is eliminated by making the portfolio gamma neutral.


Traders often define other "Greek letters" to correspond to higher-order terms in the Taylor series expansion. For example,  $\partial^2 P / \partial S\partial \sigma$  is known as vanna,  $\partial^2 P / \partial \sigma^2$  is known as vomma, and  $\partial^2 P / \partial S\partial t$  is known as charm.

# 15.8 The Realities of Hedging Derivatives

In an ideal world, traders working for financial institutions would be able to rebalance their portfolios very frequently in order to maintain a zero delta, a zero gamma, a zero vega, and so on. In practice, this is not possible. When managing a large portfolio dependent on a single underlying asset, traders usually make delta zero, or close to zero at least once a day by trading the underlying asset. Unfortunately a zero gamma and a zero vega are less easy to achieve because it is difficult to find options or other nonlinear derivatives that can be traded in the volume required at competitive prices (see discussion of dynamic hedging in Business Snapshot 15.2).

As noted earlier, there are big economies of scale in trading derivatives. Maintaining delta neutrality for an individual option on an asset by trading the asset daily would be prohibitively expensive. But it is realistic to do this for a portfolio of several hundred options on the asset. This is because the cost of daily rebalancing is covered by the profit on many different trades.

It is also worth noting that traders tend to work with implied volatilities (see Section 8.2) when calculating vega. When vega is calculated for a portfolio of options, a change in implied volatility is applied to each option. As already mentioned this change may be a decreasing function of option maturity.

# BUSINESS SNAPSHOT 15.2

# Dynamic Hedging in Practice

In a typical arrangement at a financial institution, the responsibility for a portfolio of derivatives dependent on a particular underlying asset is assigned to one trader or to a group of traders working together. For example, one trader at Goldman Sachs might be assigned responsibility for all derivatives dependent on the value of the Australian dollar. A computer system calculates the value of the portfolio and Greek letters for the portfolio. Limits are defined for each Greek letter and special permission is required if a trader wants to exceed a limit at the end of a trading day.

The delta limit is often expressed as the equivalent maximum position in the underlying asset. For example, the delta limit of Goldman Sachs on a stock might be specified as  \$10 million. If the stock price is\$ 50, this means that the absolute value of delta as we have calculated it can be no more than 200,000. The vega limit is usually expressed as a maximum dollar exposure per 1\% change in the volatility.

As a matter of course, options traders make themselves delta neutral—or close to delta neutral—at the end of each day. Gamma and vega are monitored, but are not usually managed on a daily basis. Financial institutions often find that their business with clients involves writing options and that as a result they accumulate negative gamma and vega. They are then always looking out for opportunities to manage their gamma and vega risks by buying options at competitive prices.

There is one aspect of an options portfolio that mitigates problems of managing gamma and vega somewhat. Options are often close to the money when they are first sold so that they have relatively high gammas and vegas. But after some time has elapsed, the underlying asset price has often changed enough for them to become deep-out-of-the-money or deep-in-the-money. Their gammas and vegas are then very small and of little consequence. The nightmare scenario for an options trader is where written options remain very close to the money as the maturity date is approached.

# 15.9 Hedging Exotic Options

Exotic options (see Section 5.5) can often be hedged using the approach we have outlined. As explained in Business Snapshot 15.3, delta hedging is sometimes easier for exotics and sometimes more difficult. When delta hedging is not feasible for a portfolio of exotic options an alternative approach known as static options replication is sometimes used. This is illustrated in Figure 15.10. Suppose that  $S$  denotes the asset price and  $t$  denotes time with the current  $(t = 0)$  value of  $S$  being  $S_0$ . Static options

# BUSINESS SNAPSHOT 15.3

# Is Delta Hedging Easier or More Difficult for Exotics?

We can approach the hedging of exotic options by creating a delta-neutral position and rebalancing frequently to maintain delta neutrality. When we do this, we find that some exotic options are easier to hedge than plain vanilla options and some are more difficult.

An example of an exotic option that is relatively easy to hedge is an average price call option (see Asian options in Section 5.7). As time passes, we observe more of the asset prices that will be used in calculating the final average. This means that our uncertainty about the payoff decreases with the passage of time. As a result, the option becomes progressively easier to hedge. In the final few days, the delta of the option always approaches zero because price movements during this time have very little impact on the payoff.

By contrast, barrier options (see Section 5.7) are relatively difficult to hedge. Consider a knock-out call option on a currency when the exchange rate is 0.0005 above the barrier. If the barrier is hit, the option is worth nothing. If the barrier is not hit, the option may prove to be quite valuable. The delta of the option is discontinuous at the barrier, making conventional hedging quite difficult.

Figure 15.10 Static Options Replication
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/fcfc3bcbd226ecb78a75c5fc431ea515b763cbf42c0ce51c001248cc6ec0824a.jpg)
In a replicating portfolio,  $P$  is chosen so that it has the same value as the exotic option portfolio at a number of points on a boundary.

replication involves choosing a boundary in  $\{S, t\}$  space that will eventually be reached and then finding a portfolio of regular options that is worth the same as the portfolio of exotic options at a number of points on the boundary. The portfolio of exotic options is hedged by shorting this portfolio of regular options. Once the boundary is reached, the hedge is unwound. A new hedge can then be created with static options replication if desired.

The theory underlying static options replication is that, if two portfolios are worth the same at all  $\{S,t\}$  points on the boundary, they must be worth the same at all the  $\{S,t\}$  points that can be reached prior to the boundary. In practice, values of the original portfolio of exotic options and the replicating portfolio of regular options are matched at some, but not all, points on the boundary. The procedure therefore relies on the idea that, if two portfolios have the same value at a reasonably large number of points on the boundary, their values are likely to be close at other points on the boundary.

# 15.10 Scenario Analysis

In addition to monitoring risks such as delta, gamma, and vega, option traders often also carry out a scenario analysis. The analysis involves calculating the gain or loss on their portfolio over a specified period under a variety of different scenarios. The time period chosen is likely to depend on the liquidity of the instruments. The scenarios can be either chosen by management or generated by a model.

Consider a trader with a portfolio of options on a particular foreign currency. There are two main variables on which the value of the portfolio depends. These are the exchange rate and the exchange rate volatility. Suppose that the exchange rate is currently 1.0000 and its volatility is  $10\%$  per annum. The bank could calculate a table such as Table 15.5 showing the profit or loss experienced during a two-week period under different scenarios. This table considers seven different exchange rates and three different volatilities.

In Table 15.5, the greatest loss is in the lower-right corner of the table. The loss corresponds to the volatility increasing to  $12\%$  and the exchange rate moving up to 1.06. Usually the greatest loss in a table such as 15.5 occurs at one of the corners, but

Table 15.5 Profit or Loss Realized in Two Weeks under Different Scenarios (\$ millions)
Exchange Rate

<table><tr><td>Volatility</td><td>0.94</td><td>0.96</td><td>0.98</td><td>1.00</td><td>1.02</td><td>1.04</td><td>1.06</td></tr><tr><td>8\%</td><td>+102</td><td>+55</td><td>+25</td><td>+6</td><td>-10</td><td>-34</td><td>-80</td></tr><tr><td>10\%</td><td>+80</td><td>+40</td><td>+17</td><td>+2</td><td>-14</td><td>-38</td><td>-85</td></tr><tr><td>12\%</td><td>+60</td><td>+25</td><td>+9</td><td>-2</td><td>-18</td><td>-42</td><td>-90</td></tr></table> this is not always so. For example, as we saw in Figure 15.9, when gamma is positive, the greatest loss is experienced when the underlying asset price stays where it is.


# 15.11 Approximate Analytical Results

The calculation of VaR and ES using the historical simulation approach when there are derivatives in a portfolio is straightforward. The main issue is that the valuation of derivatives for the various scenarios that are considered can be quite time consuming. As explained in Section 12.4, to speed up computations it is sometimes necessary to use a Taylor series expansion to approximate the change in the value of a derivative. (The Greek letters in such an expansion are generally known because analysts have calculated them for other risk management purposes.)

The model-building approach is difficult to use when there are derivatives in a portfolio. Consider a portfolio consisting of a single option on an asset with price  $S$ . A Taylor series expansion shows that it is approximately true that

$$

\Delta P = \frac {\partial P}{\partial S} \Delta S + \frac {\partial P}{\partial \sigma} \Delta \sigma + \frac {1}{2} \frac {\partial^ {2} P}{\partial S ^ {2}} (\Delta S) ^ {2} \tag {15.3}

$$

(The theta term and terms corresponding to higher order derivatives are usually quite small.) Figure 15.11 shows the impact of the last term for a long call position. We suppose that the probability distribution for the price of the underlying asset at the end of one day is normal. The figure shows that probability distribution for the option price is positively skewed. Figure 15.12 shows the relationship between the value of a short call position and the price of the underlying asset. A short call position has a negative gamma. In this case, we see that a normal distribution for the price of the underlying asset at the end of one day gets mapped into a negatively skewed distribution for the value of the option position.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/368e86cf27814c6ea8d239ce677483840b145416d0cb3b7bfddd9e76883e3fd9.jpg)
Figure 15.11 Translation of a Normal Probability Distribution for an Asset into a Probability Distribution for Value of a Long Call on the Asset

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/31187e85adca13e49547bbd3465d2d250f1f1ee39e08975f533de1e0021da72a.jpg)
Figure 15.12 Translation of a Normal Probability Distribution for an Asset into a Probability Distribution for Value of a Short Call on the Asset


The VaR for a portfolio is critically dependent on the left tail of the probability distribution of the portfolio value. For example, when the confidence level used is  $99\%$ , the VaR is the value in the left tail below which only  $1\%$  of the distribution resides. As indicated in Figure 15.11, a positive gamma portfolio tends to have a less heavy left tail than the normal distribution. If the distribution is assumed to be normal, the calculated VaR will tend to be too high. Similarly, as indicated in Figure 15.12, a negative gamma portfolio tends to have a heavier left tail than the normal distribution. If the distribution is assumed to be normal, the calculated VaR will tend to be too low.

# 15.11.1 Cornish-Fisher Expansions

A result in statistics known as the Cornish-Fisher expansion can be used to estimate percentiles of a probability distribution from its moments. As we will see, it can be useful for the determination of percentiles in non-linear models. Define  $\mu_{P}$  and  $\sigma_{P}$  as the mean and standard deviation of  $\Delta P$  so that

$$

\mu_ {P} = E (\Delta P)

$$

$$

\sigma_ {P} ^ {2} = E [ (\Delta P) ^ {2} ] - [ E (\Delta P) ] ^ {2}

$$

The skewness of a probability distribution is related to the third moment. Positive skewness indicates that the right tail of the distribution is heavier than the left tail. Negative skewness indicates the reverse. The skewness of the probability distribution of  $\Delta P$ ,  $\xi_{P}$ , is usually defined as

$$

\xi_ {P} = \frac {1}{\sigma_ {P} ^ {3}} E [ (\Delta P - \mu_ {P}) ^ {3} ]

$$

The skewness of a normal distribution is zero.

The kurtosis of a probability distribution is related to the fourth moment. It measures the heaviness of the tails of the distribution. Similarly to skewness, the kurtosis of the probability distribution of  $\Delta P$ ,  $\kappa_{P}$ , is usually defined as

$$

\kappa_ {P} = \frac {1}{\sigma_ {P} ^ {4}} E [ (\Delta P - \mu_ {P}) ^ {4} ]

$$

The kurtosis of a normal distribution is 3. The excess kurtosis measures the kurtosis relative to the normal distribution and is defined as the kurtosis minus 3.

Using the first three moments of  $\Delta P$ , the Cornish-Fisher expansion estimates the  $q$ -percentile of the distribution of  $\Delta P$  as

$$

\mu_ {P} + w _ {q} \sigma_ {p}

$$ where


$$ w _ {q} = z _ {q} + \frac {1}{6} (z _ {q} ^ {2} - 1) \xi_ {P}
$$ and  $z_{q}$  is  $q$ -percentile of the standard normal distribution. Accuracy is improved when higher moments are used. For example, when kurtosis is considered, the expression for  $w_{q}$  becomes:


$$ w _ {q} = z _ {q} + \frac {1}{6} (z _ {q} ^ {2} - 1) \xi_ {p} + \frac {1}{2 4} (z _ {q} ^ {3} - 3 z _ {q}) (\kappa_ {P} - 3)
$$

# Example 15.3

Suppose that for a certain portfolio we calculate  $\mu_{P} = -0.2$ ,  $\sigma_{P} = 2.2$ , and  $\xi_{P} = -0.4$  and we are interested in the one percentile ( $q = 0.01$ ). In this case,  $z_{q} = -2.326$ . If we assume that the probability distribution of  $\Delta P$  is normal, then the one percentile is

$$
- 0. 2 - 2. 3 2 6 \times 2. 2 = - 5. 3 1 8
$$

In other words, we are  $99\%$  certain that

$$
\Delta P > - 5. 3 1 8
$$

When we use the Cornish-Fisher expansion to adjust for skewness and set  $q = 0.01$ , we obtain

$$ w _ {q} = - 2. 3 2 6 - \frac {1}{6} (2. 3 2 6 ^ {2} - 1) \times 0. 4 = - 2. 6 2 0
$$ so that the one percentile of the distribution is


$$
- 0. 2 - 2. 6 2 0 \times 2. 2 = - 5. 9 6 5
$$

Taking account of skewness, therefore, changes the VaR from 5.318 to 5.965. Suppose now that we also know that the kurtosis,  $\kappa_{p}$ , is 3.3. This changes our estimate of  $w_{q}$  to

$$ w _ {q} = - 2. 6 2 0 + \frac {1}{2 4} (- 2. 3 2 6 ^ {3} + 2. 3 2 6) \times (3. 3 - 3) = - 2. 6 9 1
$$ so that the estimate of the one percentile becomes


$$
- 0. 2 - 2. 6 9 1 \times 2. 2 = - 6. 1 1 9
$$

# 15.11.2 Isserlis' Theorem

To apply the Cornish-Fisher result, we need to calculate moments of  $\Delta P$ . When the changes are normal, Isserlis' theorem can in principle be used for this. The theorem states that if the  $X_{i}$  are zero-mean normal distributions

$$

E (X _ {1} X _ {2} \dots X _ {n}) = 0

$$ when  $n$  is odd and

$$
E (X _ {1} X _ {2} \dots X _ {n}) = \sum \Pi E (X _ {i} X _ {j})
$$ when  $n$  is even. The notation  $\sum \Pi E(X_i X_j)$  describes the result of (a) listing the distinct ways in which  $X_1, X_2, \ldots, X_n$  can be partitioned into  $n/2$  pairs; (b) within each partition, calculating  $E(X_i X_j)$  for each pair  $(X_i, X_j)$  and multiplying these expectations together; and (c) summing the results across partitions.


For example,

$$

E \left(X _ {1} X _ {2} X _ {3} X _ {4}\right) = E \left(X _ {1} X _ {2}\right) E \left(X _ {3} X _ {4}\right) + E \left(X _ {1} X _ {3}\right) E \left(X _ {2} X _ {4}\right) + E \left(X _ {1} X _ {4}\right) E \left(X _ {2} X _ {3}\right)

$$

The expression for  $E(X_{1}X_{2}X_{3}X_{4}X_{5}X_{6})$  has 15 terms, one of which is

$$

E \left(X _ {1} X _ {2}\right) E \left(X _ {3} X _ {4}\right) E \left(X _ {5} X _ {6}\right)

$$

Isserlis' theorem is a potentially attractive result because we know the expectation of the product of a pair of zero-mean normally distributed variables, with standard deviations  $\sigma_{X}$  and  $\sigma_{Y}$ , is their covariance:  $E(XY) = \rho \sigma_{X} \sigma_{Y}$  where  $\rho$  is the correlation between them.

Define  $\Delta x_{i}$  as the proportional change in the  $i$ th variable in time  $\Delta t$ . Define  $\delta_{i}$  as the partial derivative of the portfolio value,  $P$ , with respect to the proportional change in the  $i$ th variable. (This corresponds to the definition in Equation (13.1) of Section 13.2.) Define  $\gamma_{ij}$  as the cross gamma calculated by first differentiating with respect to the proportional change in the  $i$ th variable and then differentiating with respect to the proportional change in the  $j$ th variable. If  $\sigma_{i}$  is the standard deviation of  $\Delta x_{i}$  and  $\rho_{ij}$  is the correlation between  $\Delta x_{i}$  and  $\Delta x_{j}$  a Taylor Series expansion can be used to show that


$$

E (\Delta P) = \frac {1}{2} \sum_ {i j} \gamma_ {i j} \rho_ {i j} \sigma_ {i} \sigma_ {j}

$$

$$

E (\Delta P ^ {2}) = \sum_ {i j} \delta_ {i} \delta_ {j} \sigma_ {i} \sigma_ {j} \rho_ {i j} + \frac {1}{4} \sum_ {i j k l} \gamma_ {i j} \gamma_ {k l} E (\Delta x _ {i} \Delta x _ {j} \Delta x _ {k} \Delta x _ {l})

$$

$$

E (\Delta P ^ {3}) = \frac {3}{2} \sum_ {i j k l} \delta_ {i} \delta_ {j} \gamma_ {k l} E (\Delta x _ {i} \Delta x _ {j} \Delta x _ {k} \Delta x _ {l}) + \frac {1}{8} \sum_ {i j k l m n} \gamma_ {i j} \gamma_ {k l} \gamma_ {m n} E (\Delta x _ {i} \Delta x _ {j} \Delta x _ {k} \Delta x _ {l} \Delta x _ {m} \Delta x _ {n})

$$

When there is only one risk factor so that we can dispense with the subscripts to  $\sigma$ ,  $\rho$ ,  $\delta$ , and  $\gamma$ , using Isserlis' theorem these equations reduce to:

$$

E (\Delta P) = \frac {1}{2} \gamma \sigma^ {2}

$$

$$

E (\Delta P ^ {2}) = \delta^ {2} \sigma^ {2} + \frac {3}{4} \gamma^ {2} \sigma^ {4}

$$

$$

E (\Delta P ^ {3}) = 4. 5 \delta^ {2} \gamma \sigma^ {4} + 1. 8 7 5 \gamma^ {3} \sigma^ {6}

$$

Unfortunately, the number of terms increases quickly as the number of risk factors increases, so that the calculation of the third moment becomes very time-consuming for even modest numbers of risk factors. However, some simplifications are achieved if cross gammas are set equal to zero so that  $\gamma_{ij} = 0$  when  $i \neq j$ . The SIMM model, described in Appendix M, for determining initial margins in the bilaterally cleared OTC market makes use of these results.

# Summary

A trader working for a bank, who is responsible for all the trades involving a particular asset, monitors a number of Greek letters and ensures that they are kept within the limits specified by the bank.

The delta,  $\Delta$ , of a portfolio is the rate of change of its value with respect to the price of the underlying asset. Delta hedging involves creating a position with zero delta (sometimes referred to as a delta-neutral position). Because the delta of the underlying asset is 1.0, one way of hedging the portfolio is to take a position of  $-\Delta$  in the underlying asset. For portfolios involving options and more complex derivatives, the position taken in the underlying asset has to be changed periodically. This is known as rebalancing.

Once a portfolio has been made delta neutral, the next stage is often to look at its gamma. The gamma of a portfolio is the rate of change of its delta with respect to the price of the underlying asset. It is a measure of the curvature of the relationship between the portfolio and the asset price. Another important hedge statistic is vega. This measures the rate of change of the value of the portfolio with respect to changes in the volatility of the underlying asset. Gamma and vega can be changed by trading options on the underlying asset.

In practice, derivatives traders usually rebalance their portfolios at least once a day to maintain delta neutrality. It is usually not feasible to maintain gamma and vega neutrality on a regular basis. Typically a trader monitors these measures. If they get too large, either corrective action is taken or trading is curtailed.

# Further Reading

Derman, E., D. Ergener, and I. Kani. "Static Options Replication." Journal of Derivatives 2, no. 4 (Summer 1995): 78-95.
Passarelli, D. Trading Option Greeks: How Time Volatility and Other Factors Drive Profits. 2nd ed. Hoboken, NJ: John Wiley & Sons, 2012.
Taleb, N. N. Dynamic Hedging: Managing Vanilla and Exotic Options. New York: John Wiley & Sons, 1997.

# Practice Questions and Problems (Answers at End of Book)

15.1 The delta of a derivatives portfolio dependent on an index is  $-2,100$ . The index is currently 1,000. Estimate what happens to the value of the portfolio when the index increases to 1,005.
15.2 The vega of a derivatives portfolio dependent on the dollar-sterling exchange rate is 200 (per\%). Estimate the effect on the portfolio of an increase in the volatility of the exchange rate from  $12\%$  to  $14\%$ .
 15.3 The gamma of a delta-neutral portfolio is 30. Estimate what happens to the value of the portfolio when the price of the underlying asset (a) suddenly increases by \$2 and (b) suddenly decreases by \$2.
15.4 What does it mean to assert that the delta of a call option is 0.7? How can a short position in 1,000 options be made delta neutral when the delta of a long position in each option is 0.7?
15.5 What does it mean to assert that the theta of an option position is  $-100$  per day? If a trader feels that neither a stock price nor its implied volatility will change, what type of option position is appropriate?
15.6 What is meant by the gamma of an option position? What are the risks in the situation where the gamma of a position is large and negative and the delta is zero?

15.7 "The procedure for creating an option position synthetically is the reverse of the procedure for hedging the option position." Explain this statement.

15.8 A company uses delta hedging to hedge a portfolio of long positions in put and call options on a currency. Which of the following would lead to the most favorable result?

(a) A virtually constant spot rate
(b) Wild movements in the spot rate

How does your answer change if the portfolio contains short option positions?

15.9 A bank's position in options on the dollar-euro exchange rate has a delta of 30,000 and a gamma of  $-80,000$ . Explain how these numbers can be interpreted. The exchange rate (dollars per euro) is 0.90. What position would you take to make the position delta neutral? After a short period of time, the exchange rate moves to 0.93. Estimate the new delta. What additional trade is necessary to keep the position delta neutral? Assuming the bank did set up a delta-neutral position originally, has it gained or lost money from the exchange-rate movement?
15.10 "Static options replication assumes that the volatility of the underlying asset will be constant." Explain this statement.
15.11 Suppose that a trader using the static options replication technique wants to match the value of a portfolio of exotic derivatives with the value of a portfolio of regular options at 10 points on a boundary. How many regular options are likely to be needed? Explain your answer.
15.12 Why is an Asian option easier to hedge than a regular option?
15.13 Explain why there are economies of scale in hedging options.
15.14 Consider a six-month American put option on a foreign currency when the exchange rate (domestic currency per foreign currency) is 0.75, the strike price is 0.74, the domestic risk-free rate is  $5\%$ , the foreign risk-free rate is  $3\%$ , and the exchange-rate volatility is  $14\%$  per annum. Use the RMFI software (binomial tree with 100 steps) to calculate the price, delta, gamma, vega, theta, and rho of the option. Verify that delta is correct by changing the exchange rate to 0.751 and recomputing the option price.

# Further Questions

15.15 The gamma and vega of a delta-neutral portfolio are 50 and 25, respectively, where the vega is "per \%. Estimate what happens to the value of the portfolio when there is a shock to the market causing the underlying asset price to decrease by 3 and its volatility to increase by 4\%.
15.16 Consider a one-year European call option on a stock when the stock price is \$30, the strike price is \$30, the risk-free rate is 5\%, and the volatility is 25\% per annum. Use the RMFI software to calculate the price, delta, gamma, vega, theta, and rho of the option. Verify that delta is correct by changing the stock price to 30.1 and recomputing the option price. Verify that gamma is correct by recomputing the delta for the situation where the stock price is 30.1. Carry out similar calculations to verify that vega, theta, and rho are correct.


15.17 A financial institution has the following portfolio of over-the-counter options on pounds sterling:

<table><tr><td>Type</td><td>Position</td><td>Delta of Option</td><td>Gamma of Option</td><td>Vega of Option</td></tr><tr><td>Call</td><td>-1,000</td><td>0.50</td><td>2.2</td><td>1.8</td></tr><tr><td>Call</td><td>-500</td><td>0.80</td><td>0.6</td><td>0.2</td></tr><tr><td>Put</td><td>-2,000</td><td>-0.40</td><td>1.3</td><td>0.7</td></tr><tr><td>Call</td><td>-500</td><td>0.70</td><td>1.8</td><td>1.4</td></tr></table>

A traded option is available with a delta of 0.6, a gamma of 1.5, and a vega of 0.8.

(a) What position in the traded option and in pounds sterling would make the portfolio both gamma neutral and delta neutral?
(b) What position in the traded option and in pounds sterling would make the portfolio both vega neutral and delta neutral?

15.18 Consider again the situation in Problem 15.17. Suppose that a second traded option, with a delta of 0.1, a gamma of 0.5, and a vega of 0.6, is available. How could the portfolio be made delta, gamma, and vega neutral?
15.19 Check the first three rows of Table 15.2 using the RMFI software. Calculate the gamma and theta of the position during the first three weeks, and the change in the value of the position (before the end-of-week rebalancing) during each of these weeks. Check whether equation (15.2) is approximately satisfied. (Note: The software produces a value of theta per calendar day. The theta in equation (15.2) is per year.)
15.20 A bank has a portfolio of options on an asset. The delta and gamma of the options (with respect to actual changes in the asset price) are  $-30$  and  $-5$ , respectively. Explain how these numbers can be interpreted. What are the delta and gamma with respect to proportional changes in the asset price? The asset price is 20 and its volatility is  $1\%$  per day. Using Isserlis' theorem, calculate the first three moments of the change in the daily portfolio value. Calculate a one-day  $99\%$  VaR (a) using the first two moments and (b) using the first three moments in conjunction with the Cornish-Fisher expansion.
15.21 Suppose that in Problem 15.20 the vega of the portfolio is  $-2$  per  $1\%$  change in the annual volatility. Derive a model relating the change in the portfolio value in one day to delta, gamma, and vega.


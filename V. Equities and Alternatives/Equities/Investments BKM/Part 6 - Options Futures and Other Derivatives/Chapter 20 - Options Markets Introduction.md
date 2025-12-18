# Options Markets: Introduction

# 20

DERIVATIVE SECURITIES, OR more simply derivatives, play an important role in financial markets. These are securities whose payoffs are determined by, or “derive from,” the prices of other securities.

Options, futures, and swap contracts, which we will discuss in Chapter 23, are all derivatives. Because their values depend on the values of other securities, they can be powerful tools for both hedging and speculation. We will investigate these applications in the next four chapters, starting in this chapter with options.

Trading of standardized options contracts on a national exchange started in 1973 when the Chicago Board Options Exchange (CBOE) began listing call options. These contracts were almost immediately a great success. Option contracts are now traded on several exchanges. They are written on common stock, stock indexes, foreign exchange, agricultural commodities, precious metals, and interest rates. Popular and potent tools in modifying portfolio characteristics, options have become essential tools a portfolio manager must understand.


This chapter is an introduction to options markets. It explains how puts and calls work and examines their investment characteristics. Popular option strategies are considered next. We then examine a range of securities with embedded options such as callable or convertible bonds. We will see that embedded options are nearly everywhere if you know where to look for them. Finally, we take a quick look at some so-called exotic options.

# 20.1 The Option Contract

A call option gives its holder the right to purchase an asset for a specified price, called the exercise or strike price, on or before some specified expiration date. For example, an October expiration call option on shares of Microsoft with exercise price \$300 entitles its owner to purchase Microsoft for a price of \$300 at any time up to and including the expiration date. The call holder is not required to exercise it. The holder will choose to exercise only if Microsoft's share price exceeds the exercise price. If the share price remains below the exercise price, the option to buy will be left unexercised and becomes valueless.

<table><tr><td colspan="2">Microsoft (MSFT)</td><td colspan="2">Underlying Price: 295.71</td></tr><tr><td>Expiration</td><td>Strike</td><td>Call</td><td>Put</td></tr><tr><td>1-Oct-2021</td><td>290</td><td>9.43</td><td>3.63</td></tr><tr><td>1-Oct-2021</td><td>300</td><td>3.60</td><td>7.82</td></tr><tr><td>1-Oct-2021</td><td>310</td><td>1.08</td><td>15.28</td></tr><tr><td></td><td></td><td></td><td></td></tr><tr><td>17-Dec-2021</td><td>290</td><td>17.25</td><td>11.72</td></tr><tr><td>17-Dec-2021</td><td>300</td><td>11.75</td><td>16.25</td></tr><tr><td>17-Dec-2021</td><td>310</td><td>7.62</td><td>22.05</td></tr></table>

Figure 20.1 Stock options on Microsoft, September 10, 2021

Source: Yahoo! Finance.

Therefore, if the stock price is greater than the exercise price on the expiration date, the call value equals the difference between the stock price and the exercise price; but if the stock price is less than the exercise price, the call expires worthless. The net profit on the call is the value of the option minus the price originally paid to purchase it.

The purchase price of the option is called the premium. It represents the compensation call buyers pay for the right to exercise only when it is in their interest to do so.

Sellers of call options, who are said to write calls, receive premium income now as payment against the possibility they will be required at some later date to deliver the asset in return for an exercise price less than its market value. If the option is left to expire worthless, the call writer's profit is the premium collected when the option was initially sold. But if the call is exercised, the profit is the premium income minus the difference between the value of the stock that must be delivered and the exercise price paid for those shares. If that difference is larger than the initial premium, the writer incurs a loss.


Figure 20.1 is a small sample of listed stock option quotations for Microsoft on September 10, 2021. The most recent price for the company's stock is  \$295.71. The figure shows prices of options with exercise prices of$ 290, $300, and \$310 and with expiration dates in October and December. We can use the information in this figure to work out the gains or losses on various option positions as a function of the stock price on the expiration date.

# Example 20.1 Profits and Losses on a Call Option

Figure 20.1 shows that the October 1, 2021, expiration call on a share of Microsoft with an exercise price of  \$300 sells on September 10 for\$ 3.60. Until the expiration date, the call holder can exercise the option to buy shares of Microsoft for \$300. Because the stock price on September 10 is only  \$295.71, however, it clearly would not make sense at the moment to exercise the option to buy at\$ 300. Indeed, if Microsoft remains below  \$300 by the expiration date, the call will be left to expire worthless. However, if Microsoft sells above\$ 300 at expiration, the call holder will benefit by exercising. For example, if Microsoft sells for \$302 on October 1, the option holder will exercise the right to pay \$300 for a stock worth \$302. The value of each option on the expiration date would then be

$$
\text {V a l u e} = \text {S t o c k p r i c e - E x e r c i s e p r i c e} = \$ 3 0 2 - \$ 3 0 0 = \$ 2
$$

Despite the  \$2 payoff at expiration, the call holder still realizes a loss of\$ 1.60 on the investment because the initial purchase price was 3.60:

$$
\text {P r o f i t} = \text {F i n a l v a l u e - O r i g i n a l i n v e s t m e n t} = \\ 2. 0 0 - \\ 3. 6 0 = - \\ 1. 6 0
$$

Nevertheless, exercise of the call is optimal at expiration if the stock price exceeds the exercise price because the exercise proceeds will offset at least part of the purchase price. The call buyer will clear a profit if Microsoft is selling above 303.60 at the expiration date. At that stock price, the net proceeds from exercise will just cover the original cost of the call.

A put option gives its holder the right to sell an asset for a specified exercise or strike price on or before some expiration date. An October expiration put on Microsoft with an exercise price of  \$300 entitles its owner to sell Microsoft stock to the put writer for\$ 300 even if the market price of Microsoft is less than that amount. The cost of that put option on September 10 was 7.82. Whereas profits on call options increase when the asset price rises, profits on put options increase when the asset price falls. A put will be exercised only if the price of the underlying asset is less than the exercise price, that is, only if its holder can deliver for the exercise price an asset with a lesser market value. (One doesn't need to own the shares of Microsoft to exercise the put option. Upon exercise, the investor's broker purchases the necessary shares of Microsoft at the market price and immediately delivers, or "puts them," to an option writer for the exercise price.) The owner of the put profits by the difference between the exercise price and market price.

# Example 20.2 Profits and Losses on a Put Option

Now consider the October 1, 2021, expiration put option on Microsoft with an exercise price of \$300, selling on September 10 for \$7.82. It entitles its owner to sell a share of Microsoft for \$300 at any time until October 1. If the put holder buys a share of Microsoft and immediately exercises the right to sell it at \$300, the exercise proceeds will be $300 - $295.71 = \$4.29. Obviously, an investor who pays \$7.82 for the put has no intention of exercising it immediately. If, on the other hand, Microsoft is selling for only 291 at expiration, the put will turn out to be a profitable investment. Its value at expiration will be

Put value at expiration = Exercise price - Stock price =  $300 -$ 291 = \$9 and the investor's profit will be $9 - $7.82 = \$1.18. This is a holding period return of $1.18/$7.82 = .151, or 15.1\%—over only 22 days! Obviously, put sellers on October 1 (who are on the other side of the transaction) do not consider this outcome very likely.


An option is said to be in the money when its exercise would produce a positive cash flow. Therefore, a call option is in the money when the asset price is greater than the exercise price, and a put option is in the money when the asset price is less than the exercise price. Conversely, a call is out of the money when the asset price is less than the exercise price; no one would exercise the right to pay the strike price for a stock when its market value is less than that amount. A put option is out of the money when the exercise price is less than the asset price. Options are at the money when the exercise price and asset price are equal.

# Options Trading

Options contracts traded on exchanges are standardized by allowable expiration dates and exercise prices. Each stock option contract provides for the right to buy or sell 100 shares of stock. Standardization of the terms of listed option contracts means all market participants trade in a limited and uniform set of securities. This increases the depth of trading in any particular option, which lowers trading costs and increases market liquidity.

Most options trading in the United States initially took place on the Chicago Board Options Exchange (CBOE). However, by 2003 the electronic International Securities Exchange had displaced the CBOE as the largest options market, and virtually all trading today is electronic.

In Figure 20.1, the most recent price for Microsoft, 295.71 per share, is bracketed by available exercise (or strike) prices. If the stock price moves outside the range of exercise prices of listed options, new options with appropriate exercise prices may be offered. Therefore, at any time, both in-the-money and out-of-the-money options will be listed, as in the figure.

When we compare prices of call options with the same expiration date but different exercise prices in Figure 20.1, we see that the value of a call is lower when the exercise price is higher. This makes sense because the right to purchase a share at a lower exercise price is more valuable than the right to purchase at a higher price. Thus, the October 1 expiration call with exercise price \$300 sells for \$3.60, whereas the \$310 exercise price call sells for only \$1.08.

Conversely, put options are worth more when the exercise price is higher: You would rather have the right to sell shares for \$310 than for \$300, and this is reflected in the prices of the puts. The October 1 expiration put with exercise price \$310 sells for \$15.28, whereas the \$300 exercise price put sells for only \$7.82.

Because trading in any particular option can be sporadic, it is not unusual to find option prices that appear out of line with other prices. You might see, for example, two calls with different exercise prices that seem to sell for the same price. This discrepancy arises because the last trades for these options may have occurred at different times during the day. At any moment, the call with the lower exercise price must be worth more than an otherwise-identical call with a higher exercise price.

Expirations of most exchange-traded options tend to be fairly short, ranging up to only several months. For larger firms and several stock indexes, however, longer-term options are traded with expirations ranging up to several years. These options are called LEAPS (for Long-Term Equity AnticiPation Securities).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/3c59595fdf83cda75698cb6464098a718f8628793f02b8908069e92769a586b4.jpg)

# Concept Check 20.1 a. What will be the proceeds and net profits to an investor who purchases the December expiration Microsoft calls with exercise price \$300 if the stock price at expiration is \$315? What if the stock price is 285?

b. Now answer part (a) for an investor who purchases the December expiration put option with exercise price 300.

# American versus European Options

An American option allows its holder to exercise the right to purchase (if a call) or sell (if a put) the underlying asset on or before the expiration date. European options allow for exercise only on the expiration date. American-style options, because they allow more leeway than their European counterparts, generally will be more valuable. Most traded options in the United States are American style. Foreign currency options and stock index options are notable exceptions to this rule, however.

# Adjustments in Option Contract Terms

Because options convey the right to buy or sell shares at a stated price, stock splits would radically alter their value if the terms of the options contract were not adjusted to account for the split. For example, suppose AppX stock is currently selling at \$150. If the firm announces a 2-for-1 split, its share price will fall to about \$75. A call option with exercise price \$150 would be just about worthless, with virtually no possibility that the stock would sell at more than \$150 before the options expired.


To account for a stock split, the exercise price is reduced by a multiple of the split, and the number of options held is increased by that factor. For example, each original call option with exercise price of  \$150 would be altered after a 2-for-1 split to two new options, with each new option carrying an exercise price of\$ 75. A similar adjustment is made for stock dividends of more than 10\%; the number of shares covered by each option is increased in proportion to the stock dividend, and the exercise price is reduced by that proportion.

In contrast to stock dividends, cash dividends do not affect the terms of an option contract. Because payment of a cash dividend reduces the selling price of the stock without inducing offsetting adjustments in the option contract, the value of the option is affected by dividend policy. Other things being equal, call option values are lower for high-dividend payout policies because such policies slow the rate of increase of stock prices; conversely, put values are higher for high-dividend payouts. (Of course, the option values do not necessarily rise or fall on the dividend payment or ex-dividend dates. Dividend payments are anticipated, so the effect of the payment already is built into the original option price.)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/48833bb61c8c355d1f7a8dc0538b6aff3a34878cb7194d89ecc14d2846fcb6dc.jpg)

# Concept Check 20.2

Suppose that AppX's stock price at the exercise date is  \$160, and the exercise price of the call is\$ 150. What is the payoff on one option contract? After a 2-for-1 split, the stock price is  \$80, the exercise price is\$ 75, and the option holder now can purchase 200 shares. Show that the split leaves the option investor's payoff unaffected.

# The Options Clearing Corporation

The Options Clearing Corporation (OCC), the clearinghouse for options trading, is jointly owned by the exchanges on which stock options are traded. Buyers and sellers of options who agree on a price will strike a deal. At this point, the OCC steps in. The OCC places itself between the two traders, becoming the effective buyer of the option from the writer and the effective writer of the option to the buyer. All individuals, therefore, deal only with the OCC, which effectively guarantees contract performance.

When an option holder exercises an option, the OCC arranges for a member firm with clients who have written that option to make good on the option obligation. The member firm selects from its clients who have written that option to fulfill the contract. The selected client must deliver 100 shares of stock in return for the exercise price for each call option contract written or must purchase 100 shares at the exercise price for each put contract written.

Because the OCC guarantees contract performance, it requires option writers to post margin to guarantee that they in turn can fulfill their obligations. The margin required is determined in part by the amount by which the option is in the money because "mon-eyness" indicates the potential obligation of the option writer. Out-of-the-money options require less margin from the writer, for expected payouts are lower. When the required margin exceeds the posted margin, the writer will receive a margin call. In contrast, the holder of the option need not post margin because the holder will exercise only if it is advantageous to do so. Once the option is purchased, no further money is at risk.


Margin requirements are determined in part by the other securities held in the investor's portfolio. For example, a call writer owning the stock against which the option is written can satisfy the margin requirement simply by allowing a broker to hold that stock in the brokerage account. The stock is then guaranteed to be available for delivery should the call be exercised.

# Other Listed Options

Options on assets other than stocks are also widely traded. These include options on market indexes and industry indexes, on foreign currency, and even on the futures prices of agricultural products, gold, silver, fixed-income securities, and stock indexes.

Index Options An index option is a call or put on a stock market index such as the S&P 500 or the NASDAQ 100. Index options are traded on several broad-based indexes as well as on several industry-specific indexes and even commodity price indexes. We discussed many of these indexes in Chapter 2.

Option contracts on many foreign stock indexes also trade. For example, options on the (Japanese) Nikkei Stock Index trade on the Singapore as well as the Chicago Mercantile Exchange. Options on European indexes such as the Financial Times Share Exchange (FTSE 100) trade on the NYSE-Euronext Exchange. The Chicago Board Options Exchange also lists options on industry indexes such as the oil or high-tech industries.

In contrast to stock options, index options do not require that the call writer actually "deliver the index" upon exercise or that the put writer "purchase the index." Instead, a cash settlement procedure is used. The payoff that would accrue upon exercise of the option is calculated, and the option writer simply pays that amount to the option holder. The payoff is equal to the difference between the exercise price and the value of the index. For example, if the S&P index is at 4,000 when a call option on the index with exercise price 3,990 is exercised, the holder of the call receives a cash payment of the difference, 4,000 - 3,990, times the contract multiplier of \$100, or \$1,000 per contract.

Options on the S&P 100 (often called the OEX after its ticker symbol), the S&P 500 (the SPX), the NASDAQ 100 (the NDX), and the Dow Jones Industrials (the DJX) are the most actively traded contracts on the CBOE. Together, these contracts dominate CBOE volume.

Futures Options Futures options give their holders the right to buy or sell a specified futures contract, using as a futures price the exercise price of the option. Although the delivery process is slightly complicated, the terms of futures options contracts are designed in effect to allow the option to be written on the futures price itself. The option holder receives upon exercise the difference between the current futures price and the exercise price of the option. Thus, if the futures price is, say,  \$37, and the call has an exercise price of\$ 35, the holder who exercises the call option on the futures gets a payoff of 2 times the contract multiplier.

Foreign Currency Options A currency option offers the right to buy or sell a specified quantity of foreign currency for a specified number of U.S. dollars. Currency option contracts call for purchase or sale of the currency in exchange for a specified number of U.S. dollars. Contracts are quoted in cents or fractions of a cent per unit of foreign currency.

There is an important difference between currency options and currency futures options. The former provide payoffs that depend on the difference between the exercise price and the exchange rate at expiration. The latter provide payoffs that depend on the difference between the exercise price and the exchange rate futures price. Because exchange rates and exchange rate futures prices generally are not equal, the options and futures-options contracts will have different values, even with identical expiration dates and exercise prices. Trading volume in currency futures options dominates trading in currency options.

Interest Rate Options Options are traded on Treasury notes and bonds of various maturities, Treasury bills, and government bonds of other major economies such as the U.K. or Japan. Options on several interest rates also trade. Among these are contracts on Eurodollar, federal funds, and SOFR futures.

# 20.2 Values of Options at Expiration

# Call Options

Recall that a call option gives the right to purchase a security at the exercise price. Suppose you hold a call option on FinCorp stock with an exercise price of  \$100, and FinCorp is selling at\$ 110 on the option's expiration date. You can exercise your option to purchase the stock at \$100 and simultaneously sell the shares at the market price of \$110, clearing \$10 per share. Yet if the shares are selling below \$100, you can let the call expire, realizing no further gain or loss. The value of the call at expiration therefore equals

$$
\text {P a y o f t} = \left\{ \begin{array}{l l} S _ {T} - X & \text {i f} S _ {T} > X \\ 0 & \text {i f} S _ {T} \leq X \end{array} \right.
$$ where  $S_{T}$  is the value of the stock at expiration and  $X$  is the exercise price. This formula emphasizes the option property because the payoff cannot be negative. The call is exercised only if  $S_{T}$  exceeds  $X$ . If  $S_{T}$  is less than  $X$ , the option expires with zero value. The loss to the option holder in this case equals the price originally paid to acquire the option. More generally, the profit to the option holder is the option payoff at expiration minus the original purchase price.


The value at expiration of the call with exercise price  $\$ 100$  is given by the schedule:

<table><tr><td>Stock price</td><td>$90</td><td>$100</td><td>$110</td><td>$120</td><td>130</td></tr><tr><td>Option value</td><td>0</td><td>0</td><td>10</td><td>20</td><td>30</td></tr></table>

For stock prices at or below  \$100, the option is worthless. Above\$ 100, the option is worth the excess of the stock price over \$100. The option's value increases by \$1 for each dollar increase in the stock price. This relationship is depicted in Figure 20.2.

The solid line is the value of the call at expiration. The net profit equals the expiration value of the call less its initial price. Suppose the call cost  \$14. Then the profit to the call holder would be given by the dashed (bottom) line of Figure 20.2. At option expiration, if the stock price is less than or equal to\$ 100, the investor's loss is 14.

Profits do not become positive until the stock price at expiration exceeds \$114. At that price, the payoff to the call, $T - X = $114 - \$100 = 14, equals the initial cost of the call.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/5809a2a926234bf32ac57dfed149076ddad855ce929bb562e6a9d23b0b60b57c.jpg)
Figure 20.2 Payoff and profit to call option at expiration

Conversely, the call writer loses if the stock price is sufficiently high. In that scenario, the writer will be obligated to deliver a stock worth  $S_{T}$  for only  $X$  dollars:

$$
\text {P a y o f f t o c a l l w r i t e r} = \left\{ \begin{array}{l l} - (S _ {T} - X) & \text {i f} S _ {T} > X \\ 0 & \text {i f} S _ {T} \leq X \end{array} \right.
$$

The call writer is willing to bear this risk in return for the option premium.

Figure 20.3 shows the payoff and profit diagrams for the call writer. These are the mirror images of the corresponding diagrams for the call holder. The break-even point for the option writer also is 114. The (negative) payoff at that point just offsets the premium originally received when the option was written.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/378812d262b73bdb9ffc6a6377611e9275fa1d08240bf04f912e8cb12ff49cd8.jpg)
Figure 20.3 Payoff and profit to call writer at expiration

# Put Options

A put option is the right to sell an asset at the exercise price. The put holder will not exercise unless the asset is worth less than the exercise price. For example, if FinCorp shares fall to \$90, a put option with exercise price \$100 can be exercised to clear \$10 for its holder. The holder would purchase a share for \$90 and simultaneously deliver it to the put writer for the exercise price of 100.

The value of a put option at expiration is

$$
\text {P a y o f f t o p u t h o l d e r} = \left\{ \begin{array}{l l} 0 & \text {i f} S _ {T} \geq X \\ X - S _ {T} & \text {i f} S _ {T} <   X \end{array} \right.
$$

The solid line in Figure 20.4 plots the payoff at expiration on a FinCorp put with an exercise price of  \$100. If the stock price at expiration is above\$ 100, the put has no value, as the right to sell the shares at \$100 would not be exercised. Below a price of \$100, the put value at expiration increases by 1 for each dollar the stock price falls. The dashed line plots the put option owner's profit at expiration, net of the initial cost of the put.


Writing puts naked (i.e., writing a put without an offsetting short position in the stock) exposes the writer to losses if the market falls. Writing naked, deep-out-of-the-money puts was once considered an attractive way to generate income: As long as the market did not fall sharply before option expiration, the option premium could be collected without the put holder ever exercising the option against the writer. Because the put would remain out of the money unless the market fell sharply, the strategy was not viewed as overly risky. However, in the market crash of October 1987 when the S&P 500 fell by  $20\%$  in one day, such put writers suffered huge losses. Participants now perceive much greater risk to this strategy.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/ca37e73b36aa02b63330324ebb6d91f183d98750f259298817b85e503c0daf36.jpg)
Figure 20.4 Payoff and profit to put option at expiration


![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/5a21d41d2df2c7497728b03fe45b639194a508ced41f0db8b6a748a782252488.jpg)

# Concept Check 20.3

Consider these four option strategies: (i) buy a call; (ii) write a call; (iii) buy a put; (iv) write a put.

a. For each strategy, plot both the payoff and profit diagrams as a function of the final stock price.
b. Why might one characterize both buying calls and writing puts as “bullish” strategies? What is the difference between them?
c. Why might one characterize both buying puts and writing calls as “bearish” strategies? What is the difference between them?

# Option versus Stock Investments

Purchasing call options is a bullish strategy; that is, the calls provide profits when stock prices increase. Purchasing puts, in contrast, is a bearish strategy. Symmetrically, writing calls is bearish, whereas writing puts is bullish. Because option values depend on the price of the underlying stock, purchase of options may be viewed as a substitute for direct purchase or sale of a stock. Why might an option strategy be preferable to direct stock transactions?

For example, why would you purchase a call option rather than buy shares of stock directly? Maybe you believe the stock will increase in value from its current level, which in our examples we will take to be \$100. You know you could be incorrect, however, and the share price could fall. Suppose a 1-year maturity call option with exercise price \$100 currently sells for \$10, and the interest rate is 3\%. Consider these three strategies for investing a sum of money, say, \$10,000. For simplicity, suppose the firm will not pay any dividends during the year.

Strategy A: Invest entirely in stock. Buy 100 shares, each selling for 100.

Strategy B: Invest entirely in at-the-money call options. Buy 1,000 calls, each selling for 10. (This would require 10 contracts, each for 100 shares.)

Strategy C: Purchase 100 call options for  \$1,000. Invest your remaining\$ 9,000 in 1-year T-bills, to earn 3\% interest. The bills will grow in value from  $9,000 to$ 9,000 × 1.03 = 9,270.

Let's trace the possible values of these three portfolios as a function of the stock price when the options expire at the end of the year.

<table><tr><td rowspan="2">Portfolio</td><td colspan="6">Stock Price</td></tr><tr><td>$95</td><td>$100</td><td>$105</td><td>$110</td><td>$115</td><td>$120</td></tr><tr><td>Portfolio A: All stock</td><td>$9,500</td><td>$10,000</td><td>$10,500</td><td>$11,000</td><td>$11,500</td><td>$12,000</td></tr><tr><td>Portfolio B: All options</td><td>0</td><td>0</td><td>5,000</td><td>10,000</td><td>15,000</td><td>20,000</td></tr><tr><td>Portfolio C: Call plus T-bills</td><td>9,270</td><td>9,270</td><td>9,770</td><td>10,270</td><td>10,770</td><td>11,270</td></tr></table>

Portfolio  $A$  is worth 100 times the share price. Portfolio  $B$  is worthless unless shares sell for more than the exercise price of the call. Beyond that point, the portfolio is worth 1,000 times the excess of the stock price over the exercise price. Finally, portfolio  $C$  is worth \$9,270 from the investment in T-bills plus the value of the 100 call options. Remember that each of these portfolios involves the same \$ 10,000 initial investment. The rates of return on these three portfolios are as follows:

<table><tr><td rowspan="2">Portfolio</td><td colspan="6">Stock Price</td></tr><tr><td>$95</td><td>$100</td><td>$105</td><td>$110</td><td>$115</td><td>$120</td></tr><tr><td>Portfolio A: All stock</td><td>-5.0\%</td><td>0.0\%</td><td>5.0\%</td><td>10.0\%</td><td>15.0\%</td><td>20.0\%</td></tr><tr><td>Portfolio B: All options</td><td>-100.0</td><td>-100.0</td><td>-50.0</td><td>0.0</td><td>50.0</td><td>100.0</td></tr><tr><td>Portfolio C: Call plus T-bills</td><td>-7.3</td><td>-7.3</td><td>-2.3</td><td>2.7</td><td>7.7</td><td>12.7</td></tr></table>

These rates of return are graphed in Figure 20.5.

Comparing the returns of portfolios  $B$  and  $C$  to those of the stock investment represented by portfolio  $A$ , we see that options offer two interesting features. First, an option offers leverage. Compare portfolios  $B$  and  $A$ . Unless the stock increases from its initial value of \$100, the value of portfolio  $B$  falls precipitously to zero—a rate of return of negative  $100\%$ . Conversely, modest increases in the rate of return on the stock result in disproportionate increases in the option rate of return. For example, a  $4.3\%$  increase in the stock price from $115 to $120 would increase the rate of return on the call from  $50\%$  to  $100\%$ . In this sense, calls are a levered investment on the stock. Their values respond more than proportionately to changes in the stock price.

Figure 20.5 vividly illustrates this point. The slope of the all-option portfolio is far steeper than that of the all-stock portfolio, reflecting its greater proportional sensitivity to the value of the underlying security. This is the reason investors (illegally) exploiting inside information commonly choose options as their investment vehicle.

The potential insurance value of options is the second interesting feature, as portfolio  C  shows. The T-bill-plus-option portfolio cannot be worth less than  \9,270  at the end of the year, as the option can always be left to expire worthless. The worst possible rate of return on portfolio  C  is  -7.3\% , compared to a (theoretically) worst possible rate of return on the stock of  $-100\%$ . Of course, this insurance comes at a price: When the share price rises, portfolio  $C$  underperforms portfolio  $A$ , the all-stock portfolio, by about 9.33 percentage points.


This simple example makes an important point. Although options can be used by speculators as effectively leveraged stock positions, as in portfolio  $B$ , they also can be used by investors who desire to tailor their risk exposures in creative ways, as in portfolio  $C$ . For example, the call-plus-bills strategy of portfolio  $C$  provides a rate of return profile quite unlike that of the stock alone. The limitation on downside risk is a novel and attractive feature of this strategy. We next discuss several option strategies that provide other risk profiles that might be attractive to hedgers and other investors.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/fc9b794ff5a69a287b5e7fd95f52d967bbf3b277477a4ce24792e5a7e7524213.jpg)
Figure 20.5 Rate of return to three strategies

# 20.3 Option Strategies

An unlimited variety of payoff patterns can be achieved by combining puts and calls with various exercise prices. We explain in this section the motivation and structure of some of the more popular strategies.

# Protective Put

Imagine you would like to invest in a stock, but you are unwilling to bear potential losses beyond some given level. Investing in the stock alone seems risky to you because in principle you could lose all the money you invest. You might consider adding a "protective" put option on the stock to your portfolio. Table 20.1 shows the total value of your portfolio at option expiration: Whatever happens to the stock price, you are guaranteed a payoff at least equal to the put option's exercise price because the put gives you the right to sell your shares for that amount.

# Example 20.3 Protective Put

Suppose the strike price is  $X = \$ 100 $and the stock is selling at$ \ $97\$  at option expiration. Then the value of your total portfolio is \$100. The stock is worth  $\$97$  and the value of the expiring put option is

$$
X - S _ {T} = \$ 100 - \$ 97 = \$ 3
$$

Another way to look at it is that you are holding the stock and a put option giving you the right to sell your share for  \$100. The right to sell locks in a minimum portfolio value of\$ 100. On the other hand, if the stock price is above  $100, say,$ 104, then the right to sell a share at \$100 is worthless. You allow the put to expire unexercised, ending up with a share of stock worth S_T = \$104.

# Table 20.1

Value of a protective put portfolio at option expiration

<table><tr><td></td><td>ST≤X</td><td>ST&gt; X</td></tr><tr><td>Stock</td><td>ST</td><td>ST</td></tr><tr><td>+Put</td><td>X - ST</td><td>0</td></tr><tr><td>Total</td><td>X</td><td>ST</td></tr></table>

Figure 20.6 illustrates the payoff and profit to this protective put strategy. The solid line in Figure 20.6, Panel C, is the total payoff. The dashed line is displaced downward by the cost of establishing the position,  $S_0 + P$ . Notice that potential losses are limited.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/919eed52a048440cf37b6166104b381f855c9ec7b570a4d26a5d0549b0901fcb.jpg)
Figure 20.6 Value of a protective put position at option expiration

It is instructive to compare the profit on the protective put strategy with that of the stock investment. For simplicity, consider an at-the-money put, so that  $X = S_{0}$ . Figure 20.7 compares the profits for the two strategies. The profit on the stock is zero if the stock price remains unchanged and  $S_{T} = S_{0}$ . It rises or falls by \$1 for every dollar swing in the ultimate stock price. The profit on the protective put strategy is negative and equal to the cost of the put if  $S_{T}$  is below  $S_{0}$ . But its profit increases one for one with increases in the stock price once  $S_{T}$  exceeds  $S_{0}$ .

Figure 20.7 makes it clear that the protective put offers insurance against stock price declines in that it limits losses. Therefore, protective put strategies provide a form of portfolio insurance. The cost of the protection is that if the stock price increases, your profit is reduced by the amount you expended on the put, which turned out to be unneeded.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/10f43f4eeb983c5b9a18f86c6ffaf7064794c2919b00e2c714fa162a791e2287.jpg)
Figure 20.7 Protective put versus stock investment (at-the-money option)

This example also shows that despite the common perception that derivatives mean risk, derivative securities can be used effectively for risk management. In fact, such risk management is widely viewed as part of the fiduciary responsibility of financial managers. In one often-cited court case, *Brane v. Roth*, a company's board of directors was successfully sued for failing to use derivatives to hedge the price risk of grain held in storage. Such hedging might have been accomplished using protective puts.


The claim that derivatives are best viewed as risk management tools may seem surprising in light of the financial crisis of 2007-2009. The crisis was immediately precipitated when the positions that many financial institutions had established in credit derivatives blew up, resulting in large losses and government bailouts. Still, the same characteristics that make derivatives potent tools to increase risk also make them highly effective in managing risk, at least when used properly. Derivatives have aptly been compared to power tools: very useful in skilled hands, but also dangerous when not handled with care.

# Covered Calls

A covered call position is the purchase of a share of stock coupled with a sale of a call option on that stock. The written call is "covered" because the potential obligation to deliver the stock can be satisfied using the stock held in the portfolio. Writing an option without an offsetting stock position is called by contrast naked option writing. The payoff to a covered call, presented in Table 20.2, equals the stock value minus the value of the written call.

The solid line in Figure 20.8, Panel C, is the payoff. You see that the position is worth  $S_{T}$  when the stock price at time  $T$  is below  $X$  and rises to a maximum of  $X$  when  $S_{T}$  exceeds  $X$ . In essence, the sale of the call options means the call writer has

# Table 20.2

Value of a covered call position at option expiration

<table><tr><td></td><td>ST≤X</td><td>ST&gt; X</td></tr><tr><td>Payoff of stock</td><td>ST</td><td>ST</td></tr><tr><td>+ Payoff of written call</td><td>-0</td><td>-(ST-X)</td></tr><tr><td>Total</td><td>ST</td><td>X</td></tr></table> sold the claim to any stock value above  $X$  in return for the initial premium (the call price). Therefore, at expiration, the position is worth at most  $X$ . The dashed line is the net profit.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/d745ed54d0330c12511713bf23be2dfedaf1d9f12fd359ae9f4dc03f2627e7d0.jpg)
Figure 20.8 Value of a covered call position at expiration


Writing covered call options has been a popular investment strategy among institutional investors. Consider the managers of a fund invested largely in stocks. They might find it appealing to write calls on some or all of the stock in order to boost income by the premiums collected. Although they thereby forfeit potential capital gains should the stock price rise above the exercise price, if they view  $X$  as the price at which they plan to sell the stock anyway, then they may rationalize the call as providing a kind of "sell discipline." The written call guarantees the stock sale will occur as planned.

# Example 20.4 Covered Call

Assume a pension fund holds 1,000 shares of stock, with a current price of \$100 per share. Suppose the portfolio manager intends to sell all 1,000 shares if the share price hits \$110, and a call expiring in 60 days with an exercise price of \$110 currently sells for \$5. By writing 10 call contracts (for 100 shares each), the fund can pick up \$5,000 in extra income. The fund would lose its share of profits from any movement of the stock price above \$110 per share, but if it would have sold its shares at 110, it would not have realized those profits anyway.

# Straddle

A long straddle is established by buying both a call and a put, each with the same exercise price,  $X$ , and the same expiration date,  $T$ . Straddles are useful strategies for investors who believe a stock price will move a lot but are uncertain about the direction of the move. For example, suppose you believe an important court case that will make or break a company is about to be settled, and the market is not yet aware of the situation. The stock price will either double in value if the case is settled favorably or drop by half if the settlement goes against the company. The straddle will do well regardless of the outcome because its value rises when the stock price makes either extreme upward or downward moves from  $X$ .

The worst-case scenario for a straddle is no movement in the stock price. If  $S_{T}$  equals  $X$ , both the call and the put expire worthless, and the investor's outlay for the purchase of both options is lost. Straddles, therefore, are bets on volatility. The straddle investor must view the stock as more volatile than the market does.

The payoff to a straddle is presented in Table 20.3. The solid line in Figure 20.9, Panel C, illustrates this payoff. Notice the portfolio payoff is always positive, except at the one point where the portfolio has zero value,  $S_{T} = X$ . You might wonder why all investors don't pursue such a seemingly "no-lose" strategy. The reason is that the straddle requires that both the put and call be purchased. The value of the portfolio at expiration, while never negative, still must exceed the initial outlay for a straddle to clear a profit.

The dashed line in Figure 20.9, Panel C, is the profit diagram, which lies below the payoff line by the initial cost of the straddle,  $P + C$ . The final stock price must depart from  $X$  by this amount for the straddle to provide a profit.

Value of a straddle position at option expiration

Table 20.3

<table><tr><td></td><td>ST&lt;X</td><td>ST≥X</td></tr><tr><td>Payoff of call</td><td>0</td><td>ST-X</td></tr><tr><td>+ Payoff of put</td><td>X-ST</td><td>0</td></tr><tr><td>Total</td><td>X-ST</td><td>ST-X</td></tr></table>

A:Call

+ B:Put

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/84f8cefe60d5a8df74e927e1443e9d0a20f98222bb8c9d54ad08ee539064e89f.jpg)
Payoff of Call

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/a34ab964417711d1363aa909828bfa980a4713ebe7295f66561c2207cfeea7ef.jpg)
Payoff of Put

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/9f1d9988efd593e59df678d6868eec35870101b1a6c55c705e6f811421c2ce7e.jpg)
Payoff of Straddle
Figure 20.9 Value of a straddle at expiration

Strips and straps are variations of straddles. A strip is two puts and one call on a security with the same exercise price and expiration date. A strap is two calls and one put.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/7ff349069aa0b59372d53933b7e81bfbd9343f3fc412231f34365924af0b04c4.jpg)

# Concept Check 20.4

Graph the profit and payoff diagrams for strips and straps.

# Spreads

A spread is a combination of two or more call options (or two or more puts) on the same stock with differing exercise prices or times to maturity. Some options are bought, whereas others are sold, or written. A money spread involves the purchase of one option and the simultaneous sale of another with a different exercise price. A time spread refers to the sale and purchase of options with differing expiration dates.

Consider a money spread in which one call option is bought at an exercise price  $X_{1}$ , whereas another call with an identical expiration date, but higher exercise price,  $X_{2}$ , is written. The payoff will be the difference in the value of the call held and the value of the call written, as in Table 20.4.

There are now three instead of two outcomes to distinguish: the lowest-price region where  $S_{T}$  is below both exercise prices, a middle region where  $S_{T}$  is between the two exercise prices, and a high-price region where  $S_{T}$  exceeds both exercise prices. Figure 20.10 illustrates the payoff and profit to this strategy, which is called a bullish spread because the payoff either increases or is unaffected by stock price increases.

One motivation for a bullish spread might be that the investor thinks one option is overpriced relative to another. For example, an investor who believes an X = \100 call is cheap compared to an X = \$110 call might establish the spread, even without a strong desire to take a bullish position in the stock.

# Collars

A collar is an options strategy that brackets the value of a portfolio between two bounds. Suppose that an investor currently is holding a large position in FinCorp stock, which is currently selling at \$100 per share. A lower bound of \$90 can be placed on the value of the portfolio by buying a protective put with exercise price \$90. This protection, however, requires that the investor pay the put premium. To raise the money to pay for the put, the investor might write a call option, say, with exercise price \$110. The call might sell for roughly the same price as the put, meaning that the net outlay for the two options positions is approximately zero. Writing the call limits the portfolio's upside potential. Even if the stock price moves above \$110, the investor will do no better than \$110 because at a higher price the stock will be called away. Thus, the investor obtains the downside protection represented by the exercise price of the put by selling a claim to any upside potential beyond the exercise price of the call.

Value of a bullish spread position at expiration

Table 20.4

<table><tr><td></td><td>ST≤X1</td><td>X1&lt;ST≤X2</td><td>ST≥X2</td></tr><tr><td>Payoff of purchased call, exercise price = X1</td><td>0</td><td>ST-X1</td><td>ST-X1</td></tr><tr><td>+ Payoff of written call, exercise price = X2</td><td>-0</td><td>-0</td><td>-(ST-X2)</td></tr><tr><td>Total</td><td>0</td><td>ST-X1</td><td>X2-X1</td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/d524cc575f02d59caa2e86c04818dfbb07a9325e99397aca021f4edeb5c44366.jpg)
Figure 20.10 Value of a bullish spread position at expiration

Using spreadsheets to analyze combinations of options is very helpful. Once the basic models are built, it is easy to extend the analysis to different bundles of options. The Excel model "Spreads and Straddles" shown below can be used to evaluate the profitability of different strategies. You can access this spreadsheet in Connect or through your course instructor.

# Excel Question

1. Use the data in this spreadsheet to plot the profit on a bullish spread (see Figure 20.10) with  $X_{1} = 120$  and  $X_{2} = 130$ .

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td><td>H</td><td>I</td><td>J</td><td>K</td><td>L</td></tr><tr><td>1</td><td colspan="11">Spreads and Straddles</td><td></td></tr><tr><td>2</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>3</td><td>Stock Prices</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>4</td><td>Beginning Market Price</td><td>116.5</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>5</td><td>Ending Market Price</td><td>130</td><td></td><td></td><td></td><td></td><td></td><td colspan="3">X 110 Straddle</td><td colspan="2">X 120 Straddle</td></tr><tr><td>6</td><td></td><td></td><td></td><td></td><td></td><td></td><td>Ending</td><td colspan="2">Profit</td><td>Ending</td><td colspan="2">Profit</td></tr><tr><td>7</td><td>Buying Options:</td><td></td><td></td><td></td><td></td><td></td><td>Stock Price</td><td colspan="2">-15.40</td><td>Stock Price</td><td colspan="2">-24.00</td></tr><tr><td>8</td><td>Call Options Strike</td><td>Price</td><td>Payoff</td><td>Profit</td><td>Return \%</td><td></td><td>50</td><td colspan="2">24.60</td><td>50</td><td colspan="2">36.00</td></tr><tr><td>9</td><td>110</td><td>22.80</td><td>20.00</td><td>-2.80</td><td>-12.28\%</td><td></td><td>60</td><td colspan="2">14.60</td><td>60</td><td colspan="2">26.00</td></tr><tr><td>10</td><td>120</td><td>16.80</td><td>10.00</td><td>-6.80</td><td>-40.48\%</td><td></td><td>70</td><td colspan="2">4.60</td><td>70</td><td colspan="2">16.00</td></tr><tr><td>11</td><td>130</td><td>13.60</td><td>0.00</td><td>-13.60</td><td>-100.00\%</td><td></td><td>80</td><td colspan="2">-5.40</td><td>80</td><td colspan="2">6.00</td></tr><tr><td>12</td><td>140</td><td>10.30</td><td>0.00</td><td>-10.30</td><td>-100.00\%</td><td></td><td>90</td><td colspan="2">-15.40</td><td>90</td><td colspan="2">-4.00</td></tr><tr><td>13</td><td></td><td></td><td></td><td></td><td></td><td></td><td>100</td><td colspan="2">-25.40</td><td>100</td><td colspan="2">-14.00</td></tr><tr><td>14</td><td>Put Options Strike</td><td>Price</td><td>Payoff</td><td>Profit</td><td>Return \%</td><td></td><td>110</td><td colspan="2">-35.40</td><td>110</td><td colspan="2">-24.00</td></tr><tr><td>15</td><td>110</td><td>12.60</td><td>0.00</td><td>-12.60</td><td>-100.00\%</td><td></td><td>120</td><td colspan="2">-25.40</td><td>120</td><td colspan="2">-34.00</td></tr><tr><td>16</td><td>120</td><td>17.20</td><td>0.00</td><td>-17.20</td><td>-100.00\%</td><td></td><td>130</td><td colspan="2">-15.40</td><td>130</td><td colspan="2">-24.00</td></tr><tr><td>17</td><td>130</td><td>23.60</td><td>0.00</td><td>-23.60</td><td>-100.00\%</td><td></td><td>140</td><td colspan="2">-5.40</td><td>140</td><td colspan="2">-14.00</td></tr><tr><td>18</td><td>140</td><td>30.50</td><td>10.00</td><td>-20.50</td><td>-67.21\%</td><td></td><td>150</td><td colspan="2">4.60</td><td>150</td><td colspan="2">-4.00</td></tr><tr><td>19</td><td></td><td></td><td></td><td></td><td></td><td></td><td>160</td><td colspan="2">14.60</td><td>160</td><td colspan="2">6.00</td></tr><tr><td>20</td><td>Straddle</td><td>Price</td><td>Payoff</td><td>Profit</td><td>Return \%</td><td></td><td>170</td><td colspan="2">24.60</td><td>170</td><td colspan="2">16.00</td></tr><tr><td>21</td><td>110</td><td>35.40</td><td>20.00</td><td>-15.40</td><td>-43.50\%</td><td></td><td>180</td><td colspan="2">34.60</td><td>180</td><td colspan="2">26.00</td></tr><tr><td>22</td><td>120</td><td>34.00</td><td>10.00</td><td>-24.00</td><td>-70.59\%</td><td></td><td>190</td><td colspan="2">44.60</td><td>190</td><td colspan="2">36.00</td></tr><tr><td>23</td><td>130</td><td>37.20</td><td>0.00</td><td>-37.20</td><td>-100.00\%</td><td></td><td>200</td><td colspan="2">54.60</td><td>200</td><td colspan="2">46.00</td></tr><tr><td>24</td><td>140</td><td>40.80</td><td>10.00</td><td>-30.80</td><td>-75.49\%</td><td></td><td>210</td><td colspan="2">64.60</td><td>210</td><td colspan="2">56.00</td></tr><tr><td>25</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>

# Example 20.5 Collars

A collar would be appropriate for an investor who has a target wealth goal in mind but is unwilling to risk losses beyond a certain level. If you are contemplating buying a house for \$220,000, for example, you might set this figure as your goal. Your current wealth may be \$200,000, and you are unwilling to risk losing more than \$20,000. A collar established by (1) purchasing 2,000 shares of stock currently selling at \$100 per share, (2) purchasing 2,000 put options (20 options contracts) with exercise price \$90, and (3) writing 2,000 calls with exercise price \$110 would give you a chance to realize the \$20,000 capital gain without risking a loss of more than \$20,000.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/23330cbd268d91fb69f792ada6b74b36269a878db1e9c2c1fe42d50bab2eb46b.jpg)

# Concept Check 20.5

Graph the payoff diagram for the collar described in Example 20.5.

# 20.4 The Put-Call Parity Relationship

We saw in the previous section that a protective put portfolio, comprising a stock position and a put option on that position, provides a payoff with a guaranteed minimum value, but with unlimited upside potential. This is not the only way to achieve such protection, however. A call-plus-bills portfolio also can limit downside risk while offering the same upside potential.

Consider buying a call option and, in addition, buying Treasury bills with face value equal to the exercise price of the call, and maturity date equal to the expiration date of the option. For example, if the exercise price of the call is  \$100, then each option contract (which is written on 100 shares) would require payment of\$ 10,000 upon exercise. Therefore, you would purchase a T-bill with a maturity value of 10,000. More generally, for each option that you hold with exercise price X, you would purchase a risk-free zero-coupon bond with face value X.

Examine the value of this position at time  $T$ , when the options expire and the zero-coupon bond matures:

<table><tr><td></td><td>ST≤X</td><td>ST&gt; X</td></tr><tr><td>Value of call option</td><td>0</td><td>ST-X</td></tr><tr><td>Value of zero-coupon bond</td><td>X</td><td>X</td></tr><tr><td>Total</td><td>X</td><td>ST</td></tr></table>

If the stock price is below the exercise price, the call is worthless, but the bond matures to its face value,  $X$ . It therefore provides a floor value to the portfolio. If the stock price exceeds  $X$ , then the payoff to the call,  $S_{T} - X$ , is added to the face value of the bond to provide a total payoff of  $S_{T}$ . The payoff to this portfolio is precisely identical to the payoff of the protective put that we derived in Table 20.1.

If two portfolios always provide equal values, then they must cost the same amount to establish. Therefore, the call-plus-bond portfolio must cost the same as the stock-plus-put portfolio. Each call currently (at time 0) costs  $C_0$ . The riskless zero-coupon bond costs  $X / (1 + r_f)^T$ . Therefore, the call-plus-bond portfolio costs  $C_0 + X / (1 + r_f)^T$ . The stock costs  $S_0$  to purchase now (at time zero), while the put costs  $P_0$ . Therefore, we conclude that

$$
C _ {0} + \frac {X}{\left(1 + r _ {f}\right) ^ {T}} = S _ {0} + P _ {0} \tag {20.1}
$$

Equation 20.1 is called the put-call parity theorem because it represents the proper relationship between put and call prices. If the parity relation is ever violated, an arbitrage opportunity arises. For example, suppose you collect these data for a certain stock:

<table><tr><td>Stock price</td><td>\$110</td></tr><tr><td>Call price (1-year expiration, X = $105)</td><td>$ 17</td></tr><tr><td>Put price (1-year expiration, X = \$105)</td><td>5</td></tr><tr><td>Risk-free interest rate</td><td>5\% per year</td></tr></table>

We can use these data in Equation 20.1 to see if parity is violated:

$$
\begin{array}{l} C _ {0} + \frac {X}{\left(1 + r _ {f}\right) ^ {T}} \stackrel {?} {=} S _ {0} + P _ {0} \\ 1 7 + \frac {1 0 5}{1 . 0 5} \stackrel {?} {=} 1 1 0 + 5 \\ 1 1 7 \neq 1 1 5 \\ \end{array}
$$

This result, a violation of parity—117 does not equal 115—indicates mispricing. To exploit the mispricing, you buy the relatively cheap portfolio (the stock-plus-put position represented on the right-hand side of the equation) and sell the relatively expensive portfolio (the call-plus-bond position corresponding to the left-hand side). Therefore, if you buy the stock, buy the put, write the call, and borrow 100 for one year (because borrowing money is the opposite of buying a bond), you should earn arbitrage profits.

<table><tr><td rowspan="2">Position</td><td rowspan="2">Immediate Cash Flow</td><td colspan="2">Cash Flow in 1 Year</td></tr><tr><td>ST&lt; 105</td><td>ST≥ 105</td></tr><tr><td>Buy stock</td><td>-110</td><td>ST</td><td>ST</td></tr><tr><td>Borrow $105/1.05 = $100</td><td>+100</td><td>-105</td><td>-105</td></tr><tr><td>Write call</td><td>+17</td><td>0</td><td>-(ST-105)</td></tr><tr><td>Buy put</td><td>-5</td><td>105 - ST</td><td>0</td></tr><tr><td>Total</td><td>2</td><td>0</td><td>0</td></tr></table>

# Table 20.5

Arbitrage strategy

Let's examine the payoff to this strategy. In one year, the stock will be worth $T. The \$100 borrowed will be paid back with interest, resulting in a cash outflow of \$105. The written call will result in a cash outflow of $T - $105 if $T exceeds \$105. The purchased put pays off $105 - $T if the stock price is below \$105.

Table 20.5 summarizes the outcome. The immediate cash inflow is  \$2, exactly the amount by which parity is violated. In one year, the various positions provide exactly offsetting cash flows: The\$ 2 inflow is realized without any offsetting outflows. This is an arbitrage opportunity that investors will pursue on a large scale until buying and selling pressure restores the parity condition expressed in Equation 20.1.

Equation 20.1 actually applies only to options on stocks that pay no dividends before the expiration date of the option. The extension of the parity condition for European call options on dividend-paying stocks is, however, straightforward. Problem 12 at the end of the chapter leads you through the demonstration. The more general formulation of the put-call parity condition is

$$
P _ {0} = C _ {0} - S _ {0} + \operatorname {P V} (X) + \operatorname {P V} (\text {d i v i d e n d s}) \tag {20.2}
$$ where PV(dividends) is the present value of the dividends that will be paid by the stock during the life of the option. If the stock does not pay dividends, Equation 20.2 becomes identical to Equation 20.1.


Notice that this generalization would apply as well to European options on assets other than stocks. Instead of using dividend income in Equation 20.2, we would let any income paid out by the underlying asset play the role of the stock dividends. For example, European put and call options on bonds would satisfy the same parity relationship, except that the bond's coupon income would replace the stock's dividend payments in the parity formula.

Even this generalization, however, applies only to European options, as the cash flow streams from the two portfolios represented by the two sides of Equation 20.2 will match only if each position is held until expiration. If a call and a put may be optimally exercised at different times before their common expiration date, then the equality of payoffs cannot be assured, or even expected, and the portfolios will have different values.

# Example 20.6 Put-Call Parity

Let's see how well parity works using the data in Figure 20.1 on the Microsoft options. The December 17 expiration call with exercise price \$300 and time to expiration of 98 days cost \$11.75 while the corresponding put option cost \$16.25. Microsoft was selling for \$295.71, and the annualized short-term interest rate on this date was about 0.3\%. Microsoft was expected to pay its next dividend of $.62 on December 9, 90 days from the date of these listings. According to parity, we should find that

$$
\begin{array}{l} P _ {0} = C _ {0} + \mathrm {P V} (X) - S _ {0} + \mathrm {P V} (\text {d i v i d e n d s}) \\ 1 6. 2 5 = 1 1. 7 5 + \frac {3 0 0}{(1 . 0 0 3) ^ {9 8 / 3 6 5}} - 2 9 5. 7 1 + \frac {. 6 2}{(1 . 0 0 3) ^ {9 0 / 3 6 5}} \\ 1 6. 2 5 = 1 1. 7 5 + 2 9 9. 7 5 8 8 - 2 9 5. 7 1 +. 6 1 9 5 \\ 1 6. 2 5 = 1 6. 4 1 8 \\ \end{array}
$$

So parity appears to be violated by $.168 per share.

Is this a big enough difference to exploit? Almost certainly not. You have to weigh the potential profit against the trading costs of the call, put, and stock. For example, the bid-ask spreads on both the call and put options were reported at 40. This spread would more than wipe out the apparent arbitrage opportunity.^2 In addition, given the fact that options trade relatively infrequently, this deviation from parity might not be "real," but may instead be attributable to "stale" (i.e., out-of-date) price quotes at which you cannot actually trade.

# 20.5 Option-like Securities

Even if you never intend to trade an option directly, you would still need to appreciate their properties. This is because many financial instruments and agreements have features that convey implicit or explicit options to one or more parties. To value and use these securities, you must understand their embedded option attributes.

# Callable Bonds

You know from Chapter 14 that many corporate bonds are issued with call provisions entitling the issuer to buy bonds back from bondholders at a specified call price. The bond issuer thus holds an implicit call option with exercise price equal to the price at which the bond can be repurchased. A callable bond therefore is essentially a straight bond (a bond with no option features such as callability or convertibility) bundled with a call option retained by the bond-issuing firm.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/5597b38638b6531856c0a5da92bcfd94d49a3fa46ce68f97d3e14fd3d44a4b92.jpg)
Figure 20.11 Values of callable bonds compared with straight bonds


There must be some compensation for the firm's implicit call option. If the callable bond were issued with the same coupon rate as a straight bond, it would sell at a lower price: The price difference would equal the value of the call. To sell callable bonds at par, firms must offer coupon rates higher than the coupons on straight debt.

Figure 20.11 illustrates this optionlike property. The horizontal axis is the value of a straight bond with otherwise identical terms to the callable bond. The dashed 45-degree line represents the value of straight debt. The solid line is the value of the callable bond, and the dotted line is the value of the call option retained by the firm. A callable bond's potential for capital gains is limited by the firm's option to repurchase at the call price.


![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/d1a843241713e8dacc521df2abe40b50693e1099f024e19e6e1df7b8ef2427f7.jpg)

# Concept Check 20.6

How is a callable bond similar to a covered call position on a straight bond?

The option inherent in callable bonds typically is more complex than an ordinary call option. First, it usually may be exercised only after some initial period of call protection. In addition, the price at which the bond is callable may change over time. Unlike exchange-listed options, these features are defined in the initial bond covenant and will depend on the needs of the issuing firm and its perception of the market's tastes.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/2a81618f85349ac15848e058513ba3135649c5d30fa4ffca7c77600d3db64142.jpg)

# Concept Check 20.7

Suppose the period of call protection is extended. How will the coupon rate the company needs to offer on its bonds change to enable the issuer to still sell the bonds at par value?

# Convertible Securities

Convertible bonds and convertible preferred stock convey options to the holder of the security rather than to the issuing firm. A convertible security typically gives its holder the right to exchange each bond or share of preferred stock for a fixed number of shares of common stock, regardless of the market prices of the securities at the time.

For example, a bond with a conversion ratio of 10 allows its holder to convert one bond of par value  \$1,000 into 10 shares of common stock. Alternatively, we say the conversion price in this case is\$ 100: To receive 10 shares of stock, the investor hands over bonds with face value \$1,000 or, put another way, \$100 of face value per share. If the present value of the bond's scheduled payments is less than 10 times the stock price, it may pay to convert; that is, the conversion option is in the money. A bond worth \$950 with a conversion ratio of 10 could be converted profitably if the stock were selling above \$95, as the value of the 10 shares received for each bond surrendered would exceed 950. Most convertible bonds are issued "deep out of the money." That is, the issuer sets the conversion ratio so that conversion will not be profitable unless there is a substantial increase in stock prices and/or decrease in bond prices from the time of issue.

A bond's conversion value equals the value it would have if you converted it into stock immediately. Clearly, a bond must sell for at least its conversion value. If it did not, you could purchase the bond, convert it, and clear an immediate profit. This arbitrage opportunity could never persist, for all investors would pursue such a strategy and quickly bid up the price of the bond.

The straight bond value, or "bond floor," is the value the bond would have if it were not convertible into stock. The bond must sell for more than its straight bond value because a convertible bond has more value; it is in fact a straight bond plus a valuable call option. Therefore, the convertible bond has two lower bounds on its market price: the conversion value and the straight bond value.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/b6cdc5b3671f7178a527c1a05ab253f90e56e16aca6966b765fe414cd7300d00.jpg)

# Concept Check 20.8

Should a convertible bond issued at par value have a higher or lower coupon rate than a nonconvertible bond issued at par?

Figure 20.12 illustrates the optionlike properties of the convertible bond. Figure 20.12, Panel A, shows the value of the straight debt as a function of the stock price of the issuing firm. For healthy firms, the straight debt value is almost independent of the value of

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/8a83ae3ca85c50756e12181899f2541778b8a2ce734d4ddef77f0f0d56a53d23.jpg)
Straight Debt Value

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/b452d0ad0e8b7cb8970ae7260e3aa0e69f4ce9c71a62643d7c1238377a2a4ba6.jpg)
Conversion Value

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/13b1f18a08041590cb57f564a5273b531ad63a0015098af8fff3effe7601147b.jpg)
Convertible Bond Value the stock because default risk is small. However, if the firm is close to bankruptcy (stock prices are very low), default risk increases, and the straight bond value falls. The vertical intercept in the figure shows the value of the bond when the stock price equals zero. You can interpret this as the value the bondholders would receive if the firm were to enter bankruptcy and the shares become worthless. Panel B shows the conversion value of the bond. Panel C compares the value of the convertible bond to these two lower bounds.
Figure 20.12 Value of a convertible bond as a function of stock price. Panel A, Straight debt value, or bond floor. Panel B, Conversion value of the bond. Panel C, Total value of convertible bond.


When stock prices are low, the straight bond value is the effective lower bound, and the conversion option is nearly irrelevant. The convertible will trade like straight debt. When stock prices are high, the bond's price is determined by its conversion value. With conversion all but guaranteed, the bond is essentially equity in disguise. We can illustrate with two examples, as shown in Table 20.6.

Bond  $A$  has a conversion value of only  $\$600$ . Its value as straight debt, in contrast, is  $\$967$ . This is the present value of the coupon and principal payments at a market rate for straight debt of  $8.5\%$ . The bond's price is  $\$972$ , so the premium over the straight bond value is only  $\$5$ , reflecting the low probability of conversion. Its reported yield to maturity based on scheduled coupon payments and the market price of  $\$972$  is  $8.42\%$ , close to that of straight debt.

The conversion option on bond  $B$  is in the money. Conversion value is  \$1,250, and the bond's price,\$ 1,255, reflects its value as equity (plus 5 for the protection the bond offers against stock price declines). The bond's reported yield is 4.76\%, far below the comparable yield on straight debt. The big yield sacrifice is attributable to the far greater value of the conversion option.

In theory, we could value convertible bonds by treating them as straight debt plus call options. In practice, however, this approach is often impractical for several reasons:

1. The conversion price frequently increases over time, which means the exercise price of the option changes.
2. Stocks may pay several dividends over the life of the bond, further complicating the option-valuation analysis.
3. Most convertibles also are callable at the discretion of the firm. In essence, both the investor and the issuer hold options on each other. If the issuer exercises its call option to repurchase the bond, the bondholders typically have a month during which they still can convert. When issuers use a call option, knowing bondholders will choose to convert, the issuer is said to have forced a conversion. These conditions together mean the actual maturity of the bond is indeterminate.

<table><tr><td></td><td>Bond A</td><td>Bond B</td></tr><tr><td>Annual coupon</td><td>$80</td><td>$80</td></tr><tr><td>Maturity date</td><td>10 years</td><td>10 years</td></tr><tr><td>Quality rating</td><td>Baa</td><td>Baa</td></tr><tr><td>Conversion ratio</td><td>20</td><td>25</td></tr><tr><td>Stock price</td><td>$30</td><td>$50</td></tr><tr><td>Conversion value</td><td>$600</td><td>$1,250</td></tr><tr><td>Market yield on 10-year Baa-rated bonds</td><td>8.5\%</td><td>8.5\%</td></tr><tr><td>Value as straight debt</td><td>$967</td><td>$967</td></tr><tr><td>Actual bond price</td><td>$972</td><td>$1,255</td></tr><tr><td>Reported yield to maturity</td><td>8.42\%</td><td>4.76\%</td></tr></table>

# Table 20.6

Two convertible bonds

# Warrants

Warrants are essentially call options issued by a firm. The important difference between calls and warrants is that exercise of a warrant requires the firm to issue a new share of stock—the total number of shares outstanding increases. Exercise of a call option requires only that the writer of the call deliver an already-issued share of stock, so the number of shares outstanding remains fixed. Also unlike call options, warrants provide a cash flow to the firm when the warrant holder pays the exercise price. These differences mean that warrant values will differ somewhat from the values of call options with identical terms.

Like convertible debt, warrant terms may be tailored to meet the needs of the firm. Also like convertible debt, warrants generally are protected against stock splits and dividends in that the exercise price and the number of warrants held are adjusted to offset the effects of the split.

Warrants are often issued in conjunction with another security. Bonds, for example, may be packaged together with a warrant "sweetener," frequently a warrant that may be sold separately. This is called a detachable warrant.

Warrants and convertible securities create the potential for an increase in outstanding shares of stock if exercise occurs. Exercise obviously would affect financial statistics that are computed on a per-share basis, so annual reports must include earnings per share figures under the assumption that all convertible securities and warrants are exercised. These figures are called fully diluted earnings per share.

# Collateralized Loans

Many loan arrangements require that the borrower put up collateral to guarantee the loan will be paid back. In the event of default, the lender takes possession of the collateral. A nonrecourse loan gives the lender no recourse beyond the right to the collateral. That is, the lender may not sue the borrower for further payment if the collateral turns out not to be valuable enough to repay the loan.

Assume the borrower is obligated to pay back  $L$  dollars at the maturity of the loan. The collateral will be worth  $S_{T}$  dollars at maturity. (Its value today is  $S_{0}$ .) The borrower has the option to wait until the loan is due and repay it only if the collateral is worth more than  $L$  dollars. If the collateral is worth less than  $L$ , the borrower can default on the loan and discharge the obligation by forfeiting the collateral, which is worth only  $S_{T}$ .

Another way of describing such a loan is to view the borrower as turning over the collateral to the lender but retaining the right to reclaim it by paying off the loan. In effect, the borrower turns over collateral but keeps an option to "repurchase" it for  $L$  dollars at the maturity of the loan if  $L$  turns out to be less than  $S_{T}$ . This is a call option.

A third way to look at a collateralized loan is to assume that the borrower will repay the  $L$  dollars with certainty but also retain the option to sell the collateral to the lender for  $L$  dollars, even if  $S_{T}$  is less than  $L$ . In this case, the sale of the collateral would generate the cash necessary to satisfy the loan. The ability to "sell" the collateral for  $L$  dollars represents a put option, which guarantees the borrower can raise enough money to satisfy the loan simply by turning over the collateral.

It is perhaps surprising that we can describe the same loan as involving either a put option or a call option, as their payoffs are so different. Yet the equivalence of the two approaches is nothing more than a reflection of put-call parity. In our call-option description of the loan, the value of the borrower's liability is  $S_0 - C_0$ : The borrower turns over the asset, which is a transfer of  $S_0$  dollars, but retains a call worth  $C_0$  dollars. In the put-option description, the borrower is obligated to pay  $L$  dollars but retains the put, which is currently worth  $P_0$ : The present value of this net obligation is  $L / (1 + r_f)^T - P_0$ . Because these alternative descriptions are equivalent ways of viewing the same loan, the value of the obligations must be equal:

$$
S _ {0} - C _ {0} = \frac {L}{\left(1 + r _ {f}\right) ^ {T}} - P _ {0} \tag {20.3}
$$

Treating  $L$  as the exercise price of the option, Equation 20.3 is simply the put-call parity relationship.

Figure 20.13 illustrates these different ways to view the loan. Figure 20.13, Panel A, is the value of the payment to be received by the lender, which equals the minimum of  $S_{T}$  or  $L$ . Panel B shows that this amount can be expressed as  $S_{T}$  minus the payoff of the call implicitly written by the lender and held by the borrower. Panel C shows it also can be viewed as a receipt of  $L$  dollars minus the proceeds of a put option.

# Levered Equity and Risky Debt

Investors holding stock in incorporated firms are protected by limited liability, which means that if the firm cannot pay its debts, its creditors may attach its assets but cannot not sue the equityholders for further payment. In effect, any time the corporation borrows money, the maximum possible collateral is the total of its assets. If the firm declares bankruptcy, we can interpret this as an admission that the firm's assets are insufficient to satisfy the claims against it. The corporation may discharge its obligations by transferring ownership its assets to the creditors.

Just as is true for nonrecourse collateralized loans, the required payment to the creditors represents the exercise price of the implicit option, while the value of the firm is the underlying asset. The equityholders have a put option to transfer their ownership claims on the firm to the creditors in return for the face value of the firm's debt.

Alternatively, we may view the equityholders as retaining a call option. They have, in effect, already transferred their ownership claim to the firm to the creditors but have retained the right to reacquire that claim by paying off the loan. Hence, the equityholders have an implicit call option to "buy back" the firm for a specified price.

The significance of this observation is that analysts can value corporate bonds using option-pricing techniques. The default premium required of risky debt in principle can be estimated by using option-valuation models. We consider some of these models in Chapter 21.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/457b972e7c1dcfdeb1b2cbcef14985f0a52eee1afa5adea4fbbba42f9ce2f1ea.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/bb079a5da1e903e421b04d928d1e61daddac508f13e8d1cc6efaf8cf12e9ec9f.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/cc8f4fef6e34f4f471e6ecc6daaa0d748cf23c72f62e1fafee20600904c0350d.jpg)
Figure 20.13 Collateralized loan. Panel A, Payoff to collateralized loan. Panel B, Lender can be viewed as collecting the collateral from the borrower but issuing an option to the borrower to call back the collateral for the face value of the loan. Panel C, Lender can be viewed as collecting a risk-free loan from the borrower but issuing a put to the borrower to sell the collateral for the face value of the loan.

# 20.6 Financial Engineering

One of the attractions of options is their ability to create investment positions with payoffs that depend in a variety of ways on the values of other securities. This capability was the key to the various options strategies examined in Section 20.4.

Options also can be used to custom-design new securities or portfolios with desired patterns of exposure to the price of an underlying security. In this sense, options (and futures contracts, to be discussed in Chapters 22 and 23) provide the ability to engage in financial engineering, the creation of portfolios with specified payoff patterns.

A good example of financial engineering is the index-linked certificate of deposit. Index-linked CDs enable retail investors to take small positions in index options. Unlike conventional CDs, which pay a fixed rate of interest, these CDs pay depositors a specified fraction of the rate of return on a market index such as the

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/ef2e34158b6808bb53ad42c1eac47337def37de7c4242274698291514914b679.jpg)
Figure 20.14 Return on index-linked CD

S&P 500, while guaranteeing a minimum rate of return should the market fall. For example, the index-linked CD may offer  $70\%$  of any market increase but protect its holder from any market decrease by guaranteeing at least no loss.

The index-linked CD is clearly a type of call option. If the market rises, the depositor profits according to the participation rate or multiplier, in this case  $70\%$ ; if the market falls, the investor is insured against loss. Just as clearly, the bank offering these CDs is in effect writing call options and can hedge its position by buying index calls in the options market. Figure 20.14 shows the nature of the bank's obligation to its depositors.

How might the bank set the appropriate multiplier? To answer this, note various features of the option:

1. The price the depositor is paying for the options is the forgone interest on the conventional CD that could be purchased. Because interest is received at the end of the period, the present value of the interest payment on each dollar invested is  $r_f / (1 + r_f)$ . Therefore, the depositor trades a sure payment with present value per dollar invested of  $r_f / (1 + r_f)$  for a return that depends on the market's performance. Conversely, the bank can fund its obligation using the interest that it would have paid on a conventional CD.
2. The option we have described is an at-the-money option, meaning that the exercise price equals the current value of the stock index. The option goes into the money if the market index increases from its level at the inception of the contract.
3. We can analyze the option on a per-dollar-invested basis. For example, the option costs the depositor  $r_f / (1 + r_f)$  dollars per dollar placed in the index-linked CD. The market price of the option per dollar invested is  $C_0 / S_0$ : The at-the-money option costs  $C_0$  dollars and is written on one unit of the market index, currently at  $S_0$ .

Now it is easy to determine the multiplier that the bank can offer on the CDs. It receives from its depositors an implicit "payment" of  $r_f / (1 + r_f)$  per dollar invested. It costs the bank  $C_0 / S_0$  to purchase the call option on a 1 investment in the market index.

Therefore, if  r_f / (1 + r_f)  is, for example,  70\%  of  C_0 / S_0 , the bank can purchase at most .7 call option on the 1 investment and the multiplier will be .7. More generally, the break-even multiplier on an index-linked CD is  r_f / (1 + r_f)  divided by  C_0 / S_0 .

# Example 20.7 Indexed-Linked CDs

Suppose that  $r_f = 6\%$  per year, that 6-month maturity at-the-money calls on the market index currently cost \$50, and that the index is at 1,000. Then the option costs  $50 / 1,000 = $.05\$  per dollar of market value. The CD rate is  $3\%$  per 6 months, meaning that  $r_f / (1 + r_f) = .03 / 1.03 = .0291$ . Therefore, the multiplier would be  $.0291 / .05 = .5825$ .

The index-linked CD has several variants. Investors can purchase similar CDs that guarantee a positive minimum return if they are willing to settle for a smaller multiplier. In this case, the option is "purchased" by the depositor for  $(r_f - r_{\mathrm{min}}) / (1 + r_f)$  dollars per dollar invested, where  $r_{\mathrm{min}}$  is the guaranteed minimum return. Because the purchase price is lower, fewer options can be purchased, which results in a lower multiplier. Another variant of the "bullish" CD we have described is the bear CD, which pays depositors a fraction of any fall in the market index. For example, a bear CD might offer a rate of return of .6 times any percentage decline in the S&P 500. This arrangement implicitly conveys put options to the investor.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/ce7b165912332d0cd13fb34e363b73e6108a5e7bdc29cb12778cf192eeebfdb5.jpg)

# Concept Check 20.9

Continue to assume that  r_f = 3\%  per half-year, that at-the-money calls sell for 50, and that the market index is at 1,000. What would be the multiplier for 6-month bullish equity-linked CDs offering a guaranteed minimum return of .5\% over the term of the CD?

# 20.7 Exotic Options

Options markets have been tremendously successful. Investors clearly value the strategies that options make possible; this is reflected in the heavy trading volume in these markets. Success breeds imitation, and there has been tremendous innovation in the range of option instruments available to investors. Part of this innovation has occurred in the market for customized options, which now trade in active over-the-counter markets. Many of these options have terms that would have been highly unusual even 25 years ago; they are therefore called exotic options. In this section, we survey a few of the more interesting variants of these new instruments.

# Asian Options

You already have been introduced to American- and European-style options. Asian-style options are options with payoffs that depend on the average price of the underlying asset during at least some portion of the life of the option. For example, an Asian call option may have a payoff equal to the average stock price over the last three months minus the strike price if that difference is positive, and zero otherwise. These options may be of interest, for example, to firms that wish to hedge a profit stream that depends on the average price of a commodity over some period of time.

# Barrier Options

Barrier options have payoffs that depend not only on some asset price at option expiration, but also on whether the underlying asset price has crossed through some "barrier." For example, a down-and-out option is one type of barrier option that automatically expires worthless if and when the stock price falls below some barrier price. Similarly, down-and-in options will not provide a payoff unless the stock price does fall below some barrier at least once during the life of the option. These options also are referred to as knock-out and knock-in options.

# Lookback Options

Lookback options have payoffs that depend in part on the minimum or maximum price of the underlying asset during the life of the option. For example, a lookback call option might provide a payoff equal to the maximum stock price during the life of the option minus the exercise price, instead of the final stock price minus the exercise price. Such an option provides (for a price, of course) a form of perfect market timing, providing the call holder with a payoff equal to the one that would accrue if the asset were purchased for  $X$  dollars and later sold at what turns out to be its high price.

# Currency-Translated Options

Currency-translated options have either asset or exercise prices denominated in a foreign currency. For example, the quanto allows an investor to fix in advance the exchange rate at which an investment in a foreign currency can be converted back into dollars. The right to translate a fixed amount of foreign currency into dollars at a given exchange rate is a simple foreign exchange option. Quantos are more interesting because the amount of currency that will be translated into dollars depends on the performance of the foreign investment. Therefore, a quanto in effect provides a random number of options.

# Digital Options

Digital options, also called binary or "bet" options, have fixed payoffs that depend on whether a condition is satisfied by the price of the underlying asset. For example, a digital call option might pay off a fixed amount of 100 if the stock price at maturity exceeds the exercise price.

1. A call option is the right to buy an asset at an agreed-upon exercise price. A put option is the right to sell an asset at a given exercise price.
2. American-style options allow exercise on or before the expiration date. European options allow exercise only on the expiration date. Most traded options are American style.
3. Options are traded on stocks, stock indexes, foreign currencies, fixed-income securities, and several futures contracts.
4. Options can be used either to lever up an investor's exposure to an asset price or to provide insurance against volatility of asset prices. Popular option strategies include covered calls, protective puts, straddles, spreads, and collars.
5. The put-call parity theorem relates the prices of put and call options. If the relationship is violated, arbitrage opportunities will result. Specifically, the parity relationship states that

$$
P _ {0} = C _ {0} - S _ {0} + \mathrm {P V} (X) + \mathrm {P V} (\text {d i v i d e n d s})
$$

SUMMARY where  $X$  is the exercise price of both the call and the put options,  $\mathrm{PV}(X)$  is the present value of a claim to  $X$  dollars to be paid at the expiration date of the options, and  $\mathrm{PV}(\mathrm{dividends})$  is the present value of dividends to be paid before option expiration.


6. Many commonly traded securities embody option characteristics. Examples of these securities are callable bonds, convertible bonds, and warrants. Other arrangements such as collateralized loans and limited-liability borrowing can be analyzed as conveying implicit options to one or more parties.
7. Trading in so-called exotic options now takes place in an active over-the-counter market.

# KEY TERMS call option


exercise (or strike) price premium


put option in the money


out of the money at the money


American option

European option protective put


covered call straddle


spread collar


put-call parity theorem warrant


# KEY EQUATIONS

Payoff to call investor  $= \left\{ \begin{array}{ll} S_T - X & \text{if } S_T > X \\ 0 & \text{if } S_T \leq X \end{array} \right.$

Payoff to put investor  $= \left\{ \begin{array}{ll}0 & \text{if} S_T > X\\ X - S_T & \text{if} S_T\leq X \end{array} \right.$

Put-call parity:  $P_{0} = C_{0} - S_{0} + \mathrm{PV}(X) + \mathrm{PV}(\mathrm{dividends})$

# PROBLEM SETS

1. We said that options can be used either to scale up or reduce overall portfolio risk. What are some examples of risk-increasing and risk-reducing options strategies? Explain each.
2. What are the trade-offs facing an investor who is considering buying a put option on an existing portfolio?
3. What are the trade-offs facing an investor who is considering writing a call option on an existing portfolio?
4. Why do you think the most actively traded options tend to be the ones that are near the money?
5. Turn back to Figure 20.1, which lists prices of various Microsoft options. Use the data in the figure to calculate the payoff and the profits for investments in each of the following December 17 expiration options, assuming that the stock price on the expiration date is 300.

a. Call option,  $X = \$  290$ b. Put option,  $X = \$  290$
c. Call option,  $X = \$ 300$ d. Put option,  $X = \$ 300$
e. Call option,  $X = \$ 310$ f. Put option,  $X = \$ 310$

6. Suppose you think AppX stock is going to appreciate substantially in value in the next year. Say the stock's current price, S0, is \$100, and a call option expiring in one year has an exercise price, X, of \$100 and is selling at a price, C0, of \$10. With \$10,000 to invest, you are considering three alternatives.

a. Invest all 10,000 in the stock, buying 100 shares.
b. Invest all 10,000 in 1,000 options (10 contracts).
 c. Buy 100 options (one contract) for \$1,000, and invest the remaining \$9,000 in a money market fund paying 4\% annual interest.

What is your rate of return for each alternative for the following four stock prices in one year? Summarize your results in the table and diagram below.

Price of Stock One Year from Now

<table><tr><td></td><td>$80</td><td>$100</td><td>$110</td><td>$120</td></tr></table> a. All stocks (100 shares)

b. All options (1,000 shares) c. Bills + 100 options

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/afee7f571f6e9915d35507cc204ffb3b1be718782b8ed2618a3ffa26c0b99bca.jpg)

7. The common stock of the P.U.T.T. Corporation has been trading in a narrow price range for the past month, but you are convinced it is going to break far out of that range in the next six months. You do not know whether it will go up or down, however. The current price of the stock is \$100 per share, and the price of a six-month call option at an exercise price of \$100 is 10.

a. If the semiannual risk-free interest rate is  $3\%$ , what must be the price of a six-month put option on P.U.T.T. stock at an exercise price of 100? (The stock pays no dividends.) b. What would be a simple options strategy to exploit your conviction about the stock price's future movements? How far would it have to move in either direction for you to make a profit on your initial investment?

8. The common stock of the C.A.L.L. Corporation has been trading in a narrow range around \$50 per share for months, and you believe it is going to stay in that range for the next six months. The price of a 6-month put option with an exercise price of \$50 is 4.

a. If the semiannual risk-free interest rate is  $3\%$ , what must be the price of a 6-month call option on C.A.L.L. stock at an exercise price of 50 if it is at the money? (The stock pays no dividends.) b. What would be a simple options strategy using a put and a call to exploit your conviction about the stock price's future movement? What is the most money you can make on this position? How far can the stock price move in either direction before you lose money?
c. How can you create a position involving a put, a call, and riskless lending that would have the same payoff structure as the stock at expiration? What is the net cost of establishing that position now?

9. You are a portfolio manager who uses options positions to customize the risk profile of your clients. In each case, what strategy is best given your client's objective?

a. Performance to date: Up  $16\%$ .

- Client objective: Earn at least  $15\%$ .
- Your forecast: Good chance of major market movements, either up or down, between now and end of the year.

i. Long straddle ii. Long bullish spread
iii. Short straddle

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/bdd824f282f971b1520b51a279400839207653e45636bb32e9cc039e4d68450b.jpg)
SCHWESER

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/7fd0c4ce348e85c71a5ef77b1cee57c0aa536158ddc85ae6ac44e6e7794aee86.jpg)

SCHWESER b. Performance to date: Up  $16\%$ .

- Client objective: Earn at least  $15\%$ .
- Your forecast: Good chance of a major market decline between now and end of year.

i. Long put options ii. Short call options
iii. Long call options

10. An investor purchases a stock for \$38 and a put for $.50 with a strike price of \$35. The investor also sells a call for $.50 with a strike price of 40. What are the maximum possible profit and loss for this position? Draw the profit and loss diagram for this strategy as a function of the stock price at expiration.
 11. Imagine that you are holding 5,000 shares of stock, currently selling at \$40 per share. You are ready to sell the shares but would prefer to put off the sale until next year for tax reasons. If you continue to hold the shares until January, however, you face the risk that the stock will drop in value before year-end. You decide to use a collar to limit downside risk without laying out a good deal of additional funds. January call options with a strike price of \$45 are selling at \$2, and January puts with a strike price of \$35 are selling at \$3. What will be the value of your portfolio in January (net of the proceeds from the options) if the stock price ends up at: (a) $30, (b) $40, or (c) \$50? Compare these proceeds to what you would realize if you simply continued to hold the shares.
 12. In this problem, we derive the put-call parity relationship for European options on stocks that pay dividends before option expiration. For simplicity, assume that the stock makes one dividend payment of $D per share at the expiration date of the option.

$a$ . What is the value of a stock-plus-put position on the expiration date of the option?
b. Now consider a portfolio comprising a call option and a zero-coupon bond with the same maturity date as the option and with face value  $(X + D)$ . What is the value of this portfolio on the option expiration date? You should find that its value equals that of the stock-plus-put portfolio regardless of the stock price.
c. What is the cost of establishing the two portfolios in parts  $(a)$  and  $(b)$ ? Equate the costs of these portfolios, and you will derive the put-call parity relationship, Equation 20.2.

13. a. A butterfly spread is the purchase of one call at exercise price  $X_{1}$ , the sale of two calls at exercise price  $X_{2}$ , and the purchase of one call at exercise price  $X_{3}$ .  $X_{1}$  is less than  $X_{2}$ , and  $X_{2}$  is less than  $X_{3}$  by equal amounts, and all calls have the same expiration date. Graph the payoff diagram to this strategy.

b. A vertical combination is the purchase of a call with exercise price  $X_{2}$  and a put with exercise price  $X_{1}$ , with  $X_{2}$  greater than  $X_{1}$ . Graph the payoff to this strategy.

14. A bearish spread is the purchase of a call with exercise price  $X_{2}$  and the sale of a call with exercise price  $X_{1}$ , with  $X_{2}$  greater than  $X_{1}$ . Graph the payoff to this strategy and compare it to Figure 20.10.

15. Jane Joseph, a manager at Computer Science, Inc. (CSI), received 10,000 shares of company stock as part of her compensation package. The stock currently sells at \$40 a share. She would like to defer selling the stock until the next tax year. In January, however, she will need to sell all of her holdings to provide for a down payment on a new house. Joseph is worried about the price risk involved in holding on to the shares. At current prices, she would receive \$400,000 for the stock. If the value of her stock holdings falls below \$350,000, her ability to come up with the necessary down payment would be jeopardized. On the other hand, if the stock value rises to \$450,000, she would be able to maintain a small cash reserve even after making the down payment. Joseph considers three investment strategies: a. Strategy A is to write January call options on the CSI shares with strike price \$45. These calls are currently selling for \$3 each.

b. Strategy B is to buy January put options on CSI with strike price  \$35. These options also sell for\$ 3 each.
c. Strategy C is to establish a zero-cost collar by writing the January calls and buying the January puts.

Evaluate each of these strategies with respect to Joseph's investment goals. What are the advantages and disadvantages of each? Which would you recommend?

16. Use the spreadsheet from the Excel Application box on spreads and straddles (available in Connect or through your course instructor; link to Chapter 20 material) to answer these questions.

eXceI

Please visit us at www.mhhe.com/Bodie13e


a. Plot the payoff and profit diagrams to a straddle position with an exercise (strike) price of 130. Assume the options are priced as they are in the Excel Application.
b. Plot the payoff and profit diagrams to a bullish spread position with exercise (strike) prices of  \$120 and\$ 130. Assume the options are priced as they are in the Excel Application.

17. Some agricultural price support systems have guaranteed farmers a minimum price for their output. Describe the program provisions as an option. What is the asset? The exercise price?
18. In what ways is owning a corporate bond similar to writing a put option? A call option?
 19. An executive compensation scheme might provide a manager a bonus of 1,000 for every dollar by which the company's stock price exceeds some cutoff level. In what way is this arrangement equivalent to issuing the manager call options on the firm's stock?
 20. Consider the following options portfolio. You write an October 1 expiration call option on Microsoft with exercise price \$300. You write an October 1 put option with exercise price \$290.

a. Graph the payoff of this portfolio at option expiration as a function of the stock price at that time.
b. What will be the profit/loss on this position if Microsoft is selling at  \$296 on the option expiration date? What if it is selling at\$ 304? Use the data in Figure 20.1 to answer this question.
c. At what two stock prices will you just break even on your investment?
d. What kind of "bet" is this investor making; that is, what must this investor believe about the stock price to justify this position?

21. Consider the following portfolio. You write a put option with exercise price 90 and buy a put option on the same stock with the same expiration date with exercise price 95.

$a$ . Plot the value of the portfolio at the expiration date of the options.
$b$ . On the same graph, plot the profit of the portfolio. (Hint: Which option must cost more?)

22. A FinCorp put option with strike price 60 trading on the Acme options exchange sells for \$2. To your amazement, a FinCorp put with the same expiration selling on the Apex options exchange but with strike price 62 also sells for \$2. If you plan to hold the options positions to expiration, devise a zero-net-investment arbitrage strategy to exploit the pricing anomaly. Draw the profit diagram at expiration for your position.
 23. Assume a stock has a value of \$100. The stock is expected to pay a dividend of \$2 per share at year-end. An at-the-money European-style put option with one-year expiration sells for 7. If the annual interest rate is 5\%, what must be the price of a 1-year at-the-money European call option on the stock?
 24. You buy a share of stock, write a 1-year call option with X = \$10, and buy a 1-year put option with X = \$10. Your net outlay to establish the entire portfolio is 9.50.

a. What is the payoff of your portfolio?
$b$ . What must be the risk-free interest rate? The stock pays no dividends.

25. You write a put option with  $X = 100$  and buy a put with  $X = 110$ . The puts are on the same stock and have the same expiration date.

$a$  .Draw the payoff graph for this strategy.
$b$ . Draw the profit graph for this strategy.
c. If the underlying stock has positive beta, does this portfolio have positive or negative beta?

26. Joe Finance has just purchased a stock index exchange-traded fund, currently selling at \$2,400 per share. To protect against losses, Joe also purchased an at-the-money European put option on the fund for \$120, with exercise price \$2,400, and 3-month time to expiration. Sally Calm, Joe's financial adviser, points out that Joe is spending a lot of money on the put. She notes that 3-month puts with strike prices of \$2,340 cost only 90, and suggests that Joe use the cheaper put.

a. Analyze Joe's and Sally's strategies by drawing the profit diagrams for the stock-plus-put positions for various values of the fund in three months.

$b$ . When does Sally's strategy do better? When does it do worse?
c. Which strategy entails greater systematic risk?

27. You write a call option with X = 50 and buy a call with X = 60. The options are on the same stock and have the same expiration date. One of the calls sells for \$3; the other sells for \$9.

$a$ . Draw the payoff graph for this strategy at the option expiration date.
$b$ . Draw the profit graph for this strategy.
c. What is the break-even point for this strategy? Is the investor bullish or bearish on the stock?

28. Devise a portfolio using only call options and shares of stock with the following value (payoff) at the option expiration date. If the stock price is currently 55, what kind of bet is the investor making?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/7c7b0c28d7570ac7f5ec35a3df4e1e122650003f947b10078a6d750213a5aa3b.jpg)

29. You think there is great upward potential in the stock market and would like to participate in the upward move if it materializes. However, you cannot afford substantial investment losses and so cannot run the risk of a stock market collapse, which you think is also a possibility. Your investment adviser therefore suggests a protective put position: Buy both shares in a market index stock fund and put options on those shares with 3-month expiration and exercise price of \$2,340. The stock index fund is currently selling for \$2,700. However, your uncle suggests you instead buy a 3-month call option on the index fund with exercise price \$2,520 and buy 3-month T-bills with face value \$2,520.

a. On the same graph, draw the payoffs to each of these strategies as a function of the stock fund value in three months. (Hint: Think of the options as being on one "share" of the stock index fund, with the current price of each share of the fund equal to 2,700.) b. Which portfolio must require a greater initial outlay to establish? (Hint: Does either portfolio provide a final payout that is always at least as great as the payoff of the other portfolio?)
$c$ . Suppose the market prices of the securities are as follows:

Stock fund 2,700

T-bill (face value  $2,520)$ 2,430

Call (exercise price $2,520) $360

Put (exercise price 2,340)

Make a table of the profits realized for each portfolio for the following values of the stock price in three months:  $S_{T} = \2,000$ ,  $\$ 2,520 ,  $\2,700$ ,  $\$ 2,880 . Graph the profits to each portfolio as a function of  $S_{T}$  on a single graph.

$d$ . Which strategy is riskier? Which should have a higher beta?
e. Explain why the data for the securities given in part (c) do not violate the put-call parity relationship.

30. Netflix is selling for \$100 a share. A Netflix call option with one month until expiration and an exercise price of \$105 sells for \$2 while a put with the same strike and expiration sells for \$6.94. What must be the market price of a zero-coupon bond with face value 105 and 1-month maturity? What is the risk-free interest rate expressed as an effective annual yield?

31. Demonstrate that an at-the-money call option on a given stock must cost more than an at-the-money put option on that stock with the same expiration. The stock will pay no dividends until after the expiration date. (Hint: Use put-call parity to show that  $C_0 - P_0$  must be positive.)

1. Donna Donie, CFA, has a client who believes the common stock price of TRT Materials (currently 58 per share) could move substantially in either direction in reaction to an expected court decision involving the company. The client currently owns no TRT shares but asks Donie for advice about implementing a strangle strategy to capitalize on the possible stock price movement. A strangle is a portfolio of a put and a call with a higher exercise price but the same expiration date. Donie gathers the TRT option-pricing data:

<table><tr><td>Characteristic</td><td>Call Option</td><td>Put Option</td></tr><tr><td>Price</td><td>$ 5</td><td>$ 4</td></tr><tr><td>Strike price</td><td>$60</td><td>$55</td></tr><tr><td>Time to expiration</td><td>90 days from now</td><td>90 days from now</td></tr></table> a. Recommend whether Donie should choose a long strangle strategy or a short strangle strategy to achieve the client's objective.

$b$ . Calculate, at expiration for the appropriate strangle strategy in part  $(a)$ , the: i. Maximum possible loss per share.

ii. Maximum possible gain per share.
iii. Break-even stock price(s).

2. Martin Bowman is preparing a report distinguishing traditional debt securities from structured note securities. Discuss how the following structured note securities differ from a traditional debt security with respect to coupon and principal payments:

$a$  .Equity index-linked notes.
b. Commodity-linked bear bond.

3. Suresh Singh, CFA, is analyzing a convertible bond. The characteristics of the bond and the underlying common stock are given in the following exhibit:

<table><tr><td colspan="2">Convertible Bond Characteristics</td></tr><tr><td>Par value</td><td>\$1,000</td></tr><tr><td>Annual coupon rate (annual pay)</td><td>6.5\%</td></tr><tr><td>Conversion ratio</td><td>22</td></tr><tr><td>Market price</td><td>105\% of par value</td></tr><tr><td>Straight value</td><td>99\% of par value</td></tr><tr><td colspan="2">Underlying Stock Characteristics</td></tr><tr><td>Current market price</td><td>\$40 per share</td></tr><tr><td>Annual cash dividend</td><td>1.20 per share</td></tr></table>

Compute the bond's: a. Conversion value.

$b$  .Market conversion price.

4. Rich McDonald, CFA, is evaluating his investment alternatives in Ytel Incorporated by analyzing a Ytel convertible bond and Ytel common equity. Characteristics of the two securities are given in the following exhibit:

<table><tr><td>Characteristics</td><td>Convertible Bond</td><td>Common Equity</td></tr><tr><td>Par value</td><td>\$1,000</td><td>—</td></tr><tr><td>Coupon (annual payment)</td><td>4\%</td><td>—</td></tr><tr><td>Current market price</td><td>$980</td><td>$35 per share</td></tr><tr><td>Straight bond value</td><td>\$925</td><td>—</td></tr><tr><td>Conversion ratio</td><td>25</td><td>—</td></tr><tr><td>Conversion option</td><td>At any time</td><td>—</td></tr><tr><td>Dividend</td><td>—</td><td>\$0</td></tr><tr><td>Expected market price in 1 year</td><td>\$1,125</td><td>45 per share</td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/b9fa8151956095f2ad0b21874a6b0b5bd6e65f4eb8a06e193ed7aec9e380431a.jpg)

$a$  .Calculate,based on the exhibit, the: i. Current market conversion price for the Ytel convertible bond.

ii. Expected 1-year rate of return for the Ytel convertible bond.
iii. Expected 1-year rate of return for the Ytel common equity.

One year has passed and Ytel's common equity price has increased to 51 per share. Also, over the year, the interest rate on Ytel's nonconvertible bonds of the same maturity increased, while credit spreads remained unchanged.

b. Name the two components of the convertible bond's value. Indicate whether the value of each component should decrease, stay the same, or increase in response to the: i. Increase in Ytel's common equity price.

ii. Increase in interest rates.

5. a. Consider a bullish spread option strategy using a call option with a \$25 exercise price priced at \$4 and a call option with a \$40 exercise price priced at \$2.50. If the price of the stock increases to \$50 at expiration and each option is exercised on the expiration date, the net profit per share at expiration (ignoring transaction costs) is: i. \$8.50

ii. $13.50 iii. $16.50
iv. \$23.50 b. A put on XYZ stock with a strike price of  \$40 is priced at\$ 2.00 per share, while a call with a strike price of \$40 is priced at 3.50. What is the maximum per-share loss to the writer of the uncovered put and the maximum per-share gain to the writer of the uncovered call?


<table><tr><td></td><td>Maximum Loss to Put Writer</td><td>Maximum Gain to Call Writer</td></tr><tr><td>i.</td><td>$38.00</td><td>$3.50</td></tr><tr><td>ii.</td><td>$38.00</td><td>$36.50</td></tr><tr><td>ii.</td><td>$40.00</td><td>$3.50</td></tr><tr><td>v.</td><td>$40.00</td><td>$40.00</td></tr></table>

# E-INVESTMENTS EXERCISES

1. Go to www.nasdaq.com and select IBM in the quote section. Request the information on options (look for the Tab for the Option Chain). Access prices for calls and puts that are closest to the money. For example, if the price of IBM is \$139, use options with an exercise price of \$140. Use options with time to expiration of about 10 days and 20 days.

a. What are the prices for the put and call with 10 days time to expiration?
b. What would be the cost of a straddle using these options?
c. At expiration, what would be the break-even stock prices for the straddle?
d. What would be the percentage increase or decrease in the stock price required to break even?
e. What are the prices of the put and call with 20 days time until expiration?

f. What would be the cost of a straddle using the 20 days expiration? At expiration, what would be the break-even stock prices for the straddle?

g. What would be the percentage increase or decrease in the stock price required to break even?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/3383da62ff4f9525e4587c59b83cca4c141dbbc3607a32dc245c5e1a5aecb34d.jpg)

# SOLUTIONS TO CONCEPT CHECKS

1. a. Denote the stock price at call option expiration by S_T, and the exercise price by X. Value at expiration = S_T - X = S_T - 300 if this value is positive; otherwise the call expires worthless.

Profit = Final value - Price of call option = Proceeds - 11.75

<table><tr><td></td><td>S_T = $280</td><td>S_T = $320</td></tr><tr><td>Proceeds</td><td>$ 0</td><td>$20</td></tr><tr><td>Profits</td><td>-$11.75</td><td>$ 8.25</td></tr></table> b. Value at expiration = X - S_{T} = \300 - S_{T} if this value is positive; otherwise the put expires worthless.


Profit = Final value - Price of put option = Proceeds - 16.25

<table><tr><td></td><td>S_T = $280</td><td>S_T = $320</td></tr><tr><td>Proceeds</td><td>$20</td><td>$0</td></tr><tr><td>Profits</td><td>+$3.75</td><td>-$16.25</td></tr></table>

2. Before the split, the final payoff would have been 100 × ($160 - $150) = \$1,000. After the split, the payoff is 200 × ($80 - $75) = \$1,000. The payoff is unaffected.
3.  $a$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/848c7d7734cf34f5cd8b68a4bdbb889f8c4d2e1582b78adbf977b441a8a4d90b.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/eb54e42abc89744dfb42bdb738c57ff6751f3066d798c653da89193ff9bd2072.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/283da52d1171ea24e3557c37868791cb65ce2ae8a7ab3ce0090d68b3b1bff01e.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/cff0b85da4f9e0fddd6724de64b881ce6a75e8a9287bb04b8eb59782b1eb419f.jpg)

$b$ . The payoffs and profits to both buying calls and writing puts generally are higher when the stock price is higher. In this sense, both positions are bullish. Both involve potentially taking delivery of the stock. However, the call holder will choose to take delivery when the stock price is high, while the put writer is obligated to take delivery when the stock price is low.

c. The payoffs and profits to both writing calls and buying puts generally are higher when the stock price is lower. In this sense, both positions are bearish. Both involve potentially making delivery of the stock. However, the put holder will choose to make delivery when the stock price is low, while the call writer is obligated to make delivery when the stock price is high.

4. Payoff to a Strip

<table><tr><td></td><td>ST≤X</td><td>ST&gt; X</td></tr><tr><td>2 Puts</td><td>2(X - ST)</td><td>0</td></tr><tr><td>1 Call</td><td>0</td><td>ST-X</td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/217ef4f31a29f69ed6d11233eabfae6df26c235c77b7b765cd924983fb993db5.jpg)
Payoff and

Payoff to a Strap

<table><tr><td></td><td>ST≤X</td><td>ST&gt; X</td></tr><tr><td>1 Put</td><td>X - ST</td><td>0</td></tr><tr><td>2 Calls</td><td>0</td><td>2(ST-X)</td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/8b2e4aa23d8d28472b834a3b702385ff58d5d59c840ba50db1a23d7877d35f6d.jpg)

5. The payoff table on a per-share basis is as follows:

<table><tr><td></td><td>ST≤90</td><td>90≤ST≤110</td><td>ST&gt;110</td></tr><tr><td>Buy put (X=90)</td><td>90-ST</td><td>0</td><td>0</td></tr><tr><td>Share</td><td>ST</td><td>ST</td><td>ST</td></tr><tr><td>Write call (X=110)</td><td>0</td><td>0</td><td>-(ST-110)</td></tr><tr><td>TOTAL</td><td>90</td><td>ST</td><td>110</td></tr></table>

The graph of the payoff (on a per-share basis) is as follows. If you multiply the per-share values by 2,000, you will see that the collar provides a minimum payoff of  \$180,000 (representing a maximum loss of\$ 20,000) and a maximum payoff of 220,000 (which is the cost of the house).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/f25e5f238d80e82bc13c077213b551fc03db926514e023c0da98e3ffc69eb641.jpg)
6. The covered call strategy would consist of a straight bond with a call written on the bond. The value of the strategy at option expiration as a function of the value of the straight bond is given by the solid-colored payoff line in the following figure, which is virtually identical to Figure 20.11.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6361c75c-7c74-4d6c-888c-4b31d441c5ca/6569c637ad66739c20937893bed8fe27dac0b07f8080a4959ab1e181525e21a6.jpg)

7. The call option is worth less as call protection is expanded. Therefore, the coupon rate need not be as high.
8. Lower. Investors will accept a lower coupon rate in return for the conversion option.
 9. The depositor's implicit cost per dollar invested is now only ($.03 - $.005)/1.03 = $.02427 per 6-month period. Calls cost 50/1,000 = $.05 per dollar invested in the index. The multiplier falls to .02427/.05 = .4854.


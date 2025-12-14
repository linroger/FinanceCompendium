---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: 10.1 TYPES OF OPTIONS
linter-yaml-title-alias: 10.1 TYPES OF OPTIONS
---

# 10.1 TYPES OF OPTIONS

As mentioned in Chapter 1, there are two types of options. A call option gives the holder of the option the right to buy an asset by a certain date for a certain price. A put option gives the holder the right to sell an asset by a certain date for a certain price. The date specified in the contract is known as the expiration date or the maturity date. The price specified in the contract is known as the exercise price or the strike price.

Options can be either American or European, a distinction that has nothing to do with geographical location. American options can be exercised at any time up to the expiration date, whereas European options can be exercised only on the expiration date itself. Most of the options that are traded on exchanges are American. However, European options are generally easier to analyze than American options, and some of the properties of an American option are frequently deduced from those of its European counterpart.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/6229a9691201d63ae2efac2150692393607253668d7433dc86f6dc11fc90cba5.jpg)

Figure 10.1 Profit from buying a European call option on one share of a stock. Option price = $5; strike price = $100.

# Call Options

Consider the situation of an investor who buys a European call option with a strike price of $100 to purchase 100 shares of a certain stock. Suppose that the current stock price is $98, the expiration date of the option is in 4 months, and the price of an option to purchase one share is $5. The initial investment is $500. Because the option is European, the investor can exercise only on the expiration date. If the stock price on this date is less than $100, the investor will clearly choose not to exercise. (There is no point in buying for $100 a share that has a market value of less than $100.) In these circumstances, the investor loses the whole of the initial investment of $500. If the stock price is above $100 on the expiration date, the option will be exercised. Suppose, for example, that the stock price is $115. By exercising the option, the investor is able to buy 100 shares for $100 per share. If the shares are sold immediately, the investor makes a gain of $15 per share, or $1,500, ignoring transaction costs. When the initial cost of the option is taken into account, the net profit to the investor is $1,000.

Figure 10.1 shows how the investor's net profit or loss on an option to purchase one share varies with the final stock price in this example. For instance, when the final stock price is  $120 the profit from an option to purchase one share is$ 15. It is important to realize that an investor sometimes exercises an option and makes a loss overall. Suppose that, in the example, the stock price is $102 at the expiration of the option. The investor would exercise for a gain of  $102 -$ 100 = $2 per option and realize a loss overall of $3 when the initial cost of the option is taken into account. It is tempting to argue that the investor should not exercise the option in these circumstances. However, not exercising would lead to a loss of $5, which is worse than the 3 loss when the investor exercises. In general, call options should always be exercised at the expiration date if the stock price is above the strike price.

# Put Options

Whereas the purchaser of a call option is hoping that the stock price will increase, the purchaser of a put option is hoping that it will decrease. Consider an investor who buys a European put option with a strike price of  $70 to sell 100 shares of a certain stock. Suppose that the current stock price is$ 65, the expiration date of the option is in 3 months, and the price of an option to sell one share is $7. The initial investment is $700. Because the option is European, it will be exercised only if the stock price is below $70 on the expiration date. Suppose that the stock price is $55 on this date. The investor can buy 100 shares for $55 per share and, under the terms of the put option, sell the same shares for $70 to realize a gain of $15 per share, or $1,500. (Again, transaction costs are ignored.) When the $700 initial cost of the option is taken into account, the investor's net profit is $800. There is no guarantee that the investor will make a gain. If the final stock price is above $70, the put option expires worthless, and the investor loses $700. Figure 10.2 shows the way in which the investor's profit or loss on an option to sell one share varies with the terminal stock price in this example.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/1f5d7c8c3167d0efa3ecb30c662fb8a1fb87fc33ffc5816ba22b399daaea2acc.jpg)

Figure 10.2 Profit from buying a European put option on one share of a stock. Option price = $7; strike price = $70.

# Early Exercise

As mentioned earlier, exchange-traded stock options are usually American rather than European. This means that the investor in the foregoing examples would not have to wait until the expiration date before exercising the option. We will see later that there are some circumstances when it is optimal to exercise American options before the expiration date.

# 10.2 OPTION POSITIONS

There are two sides to every option contract. On one side is the investor who has taken the long position (i.e., has bought the option). On the other side is the investor who has taken a short position (i.e., has sold or written the option). The writer of an option receives cash up front, but has potential liabilities later. The writer's profit or loss is the reverse of that for the purchaser of the option. Figures 10.3 and 10.4 show the variation of the profit or loss with the final stock price for writers of the options considered in Figures 10.1 and 10.2.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/73a554729bbe6231290302e4c2869a78d7fee04716e85c3fa7f98ccf994c0942.jpg)

Figure 10.3 Profit from writing a European call option on one share of a stock. Option price = $5; strike price = $100.

There are four types of option positions:

1. A long position in a call option
2. A long position in a put option
3. A short position in a call option
4. A short position in a put option.

It is often useful to characterize a European option in terms of its payoff to the purchaser of the option. The initial cost of the option is then not included in the calculation. If  $K$  is the strike price and  $S_{T}$  is the final price of the underlying asset, the payoff from a long position in a European call option is

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/7692542b4c3d19d82ac3f33af8dde62b15f33f0baf6a59231810a71c510cdb7c.jpg)

Figure 10.4 Profit from writing a European put option on one share of a stock. Option price = $7; strike price = $70.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/e1be38a36de89d05014dbe0658a987233f89d20ea5c8a4bb1c9ac41fee852756.jpg)

Figure 10.5 Payoffs from positions in European options: (a) long call; (b) short call; (c) long put; (d) short put. Strike price  $= K$ ; price of asset at maturity  $= S_{T}$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/c6565b7ff54e8d70173f8a61620c2a7453011a717cbec38a9d3959051b1b771a.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/e8211a6dbf92d16f70cdf7bc0485da969891f5cba68f454bfd60c40a62f715ec.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/d5036c0fa5472e943d197e3ead0352a1063b5e73f2b227f710c697e1f0fa5b48.jpg)

$$
\max  (S _ {T} - K, 0)
$$

This reflects the fact that the option will be exercised if  $S_T > K$  and will not be exercised if  $S_T \leq K$ . The payoff to the holder of a short position in the European call option is

$$
- \max  (S _ {T} - K, 0) = \min  (K - S _ {T}, 0)
$$

The payoff to the holder of a long position in a European put option is

$$
\max  (K - S _ {T}, 0)
$$ and the payoff from a short position in a European put option is


$$
- \max  (K - S _ {T}, 0) = \min  (S _ {T} - K, 0)
$$

Figure 10.5 illustrates these payoffs.

# 10.3 UNDERLYING ASSETS

This section provides a first look at how options on stocks, currencies, stock indices, and futures are traded on exchanges.

# Stock Options

Most trading in stock options is on exchanges. In the United States, the exchanges include the Chicago Board Options Exchange (www.cboe.com), NYSE Euronext (www.euronext.com), which acquired the American Stock Exchange in 2008, the International Securities Exchange (www.ise.com), and the Boston Options Exchange (www.bostonoptions.com). Options trade on several thousand different stocks. One contract gives the holder the right to buy or sell 100 shares at the specified strike price. This contract size is convenient because the shares themselves are usually traded in lots of 100.

# ETP Options

The CBOE trades options on many exchange-traded products (ETPs). ETPs are listed on an exchange and traded like a share of a company's stock. They are designed to replicate the performance of a particular market, often by tracking an underlying benchmark index. ETPs are sometimes also referred to as exchange-traded vehicles (ETVs). The most common ETP is an exchange-traded fund (ETF). This is usually designed to track an equity index or a bond index. For example, the SPDR S&P 500 ETF trust is designed to provide investors with the return they would earn if they invested in the 500 stocks that constitute the S&P 500 index. Other ETPs are designed to track the performance of commodities or currencies.

# Foreign Currency Options

Most currency options trading is now in the over-the-counter market, but there is some exchange trading. Exchanges trading foreign currency options in the United States include NASDAQ OMX (www.nasdaqtrader.com), which acquired the Philadelphia Stock Exchange in 2008. This exchange offers European-style contracts on a variety of different currencies. One contract is to buy or sell 10,000 units of a foreign currency (1,000,000 units in the case of the Japanese yen) for U.S. dollars. Foreign currency options contracts are discussed further in Chapter 17.

# Index Options

Many different index options currently trade throughout the world in both the over-the-counter market and the exchange-traded market. The most popular exchange-traded contracts in the United States are those on the S&P 500 Index (SPX), the S&P 100 Index (OEX), the Nasdaq-100 Index (NDX), and the Dow Jones Industrial Index (DJX). All of these trade on the Chicago Board Options Exchange. Most of the contracts are European. An exception is the OEX contract on the S&P 100, which is American. One contract is usually to buy or sell 100 times the index at the specified strike price. Settlement is always in cash, rather than by delivering the portfolio underlying the index. Consider, for example, one call contract on an index with a strike price of 980. If it is exercised when the value of the index is 992, the writer of the contract pays the holder (992 - 980) \times 100 = \1,200. Index options are discussed further in Chapter 17.

# Futures Options

When an exchange trades a particular futures contract, it often also trades American options on that contract. The life of a futures option normally ends a short period of time before the expiration of trading in the underlying futures contract. When a call option is exercised, the holder's gain equals the excess of the futures price over the strike price. When a put option is exercised, the holder's gain equals the excess of the strike price over the futures price. Futures options contracts are discussed further in Chapter 18.


# 10.4 SPECIFICATION OF STOCK OPTIONS

In the rest of this chapter, we will focus on stock options. As already mentioned, a standard exchange-traded stock option in the United States is an American-style option contract to buy or sell 100 shares of the stock. Details of the contract (the expiration date, the strike price, what happens when dividends are declared, how large a position investors can hold, and so on) are specified by the exchange.

# Expiration Dates

One of the items used to describe a stock option is the month in which the expiration date occurs. Thus, a January call trading on IBM is a call option on IBM with an expiration date in January. The precise expiration date is the third Friday of the expiration month and trading takes place every business day (8:30 a.m. to 3:00 p.m., Chicago time) until the expiration date.

Stock options in the United States are on a January, February, or March cycle. The January cycle consists of the months of January, April, July, and October. The February cycle consists of the months of February, May, August, and November. The March cycle consists of the months of March, June, September, and December. If the expiration date for the current month has not yet been reached, options trade with expiration dates in the current month, the following month, and the next two months in the cycle. If the expiration date of the current month has passed, options trade with expiration dates in the next month, the next-but-one month, and the next two months of the expiration cycle. Consider, for example, an option on a January cycle. At the beginning of January, options are traded with expiration dates in January, February, April, and July; at the end of January, they are traded with expiration dates in February, March, April, and July; at the beginning of May, they are traded with expiration dates in May, June, July, and October; and so on. When one option reaches expiration, trading in another is started. When there is a great deal of interest in a company, options expiring in other months may trade. Also, options expiring on Fridays other than the third Friday of a month sometimes trade. The latter are known as weekly's.

Longer-term options, known as LEAPS (long-term equity anticipation securities), also trade on many stocks in the United States. These have expiration dates up to 39 months into the future. The expiration dates for LEAPS on stocks are always the third Friday of a January.

# Strike Prices

The exchange normally chooses the strike prices at which options can be written so that they are spaced $2.50, $5, or $10 apart. Typically the spacing is $2.50 when the stock price is between $5 and $25, $5 when the stock price is between $25 and 200, and

$10 for stock prices above$ 200. As will be explained shortly, stock splits and stock dividends can lead to nonstandard strike prices.

# Terminology

For any given asset at any given time, many different option contracts may be trading. Suppose there are four expiration dates and five strike prices for options on a particular stock. If call and put options trade with every expiration date and every strike price, there are a total of 40 different contracts. All options of the same type (calls or puts) on a stock are referred to as an option class. For example, IBM calls are one class, whereas IBM puts are another class. An option series consists of all the options of a given class with the same expiration date and strike price. In other words, it refers to a particular contract that is traded. For example, IBM 160 October 2021 calls would constitute an option series.

Options are referred to as in the money, at the money, or out of the money. If  $S$  is the stock price and  $K$  is the strike price, a call option is in the money when  $S > K$ , at the money when  $S = K$ , and out of the money when  $S < K$ . A put option is in the money when  $S < K$ , at the money when  $S = K$ , and out of the money when  $S > K$ . Clearly, an option will be exercised only when it is in the money. In the absence of transaction costs, an in-the-money option will always be exercised on the expiration date if it has not been exercised previously. $^{1}$

The intrinsic value of an option is defined as the value it would have if there were no time to maturity, so that the exercise decision had to be made immediately. For a call option, the intrinsic value is therefore  $\max(S - K, 0)$ . For a put option, it is  $\max(K - S, 0)$ . An in-the-money American option must be worth at least as much as its intrinsic value because the holder has the right to exercise it immediately. Often it is optimal for the holder of an in-the-money American option to wait rather than exercise immediately. The excess of an option's value over its intrinsic value is the option's time value. The total value of an option is therefore the sum of its intrinsic value and its time value.

# FLEX Options

The Chicago Board Options Exchange offers FLEX (short for flexible) options on equities and equity indices. These are options where the traders agree to nonstandard terms. These nonstandard terms can involve a strike price or an expiration date that is different from what is usually offered by the exchange. They can also involve the option being European when it is normally American or vice versa. FLEX options are an attempt by option exchanges to regain business from the over-the-counter markets. The exchange specifies a minimum size (e.g., 100 contracts) for FLEX option trades.

# Dividends and Stock Splits

The early over-the-counter options were dividend protected. If a company declared a cash dividend, the strike price for options on the company's stock was reduced on the ex-dividend day by the amount of the dividend. Exchange-traded options are not usually adjusted for cash dividends. In other words, when a cash dividend occurs, there are no adjustments to the terms of the option contract. An exception is sometimes made for large cash dividends. When a dividend greater than  $10\%$  of the stock price is declared, a committee of the Options Clearing Corporation at the CBOE can decide to adjust the terms of call and put options on the stock. Typically the effect of the adjustment is to reduce the strike price by the amount of the dividend.


Exchange-traded options are adjusted for stock splits. A stock split occurs when the existing shares are "split" into more shares. For example, in a 3-for-1 stock split, three new shares are issued to replace each existing share. Because a stock split does not change the assets or the earning ability of a company, we should not expect it to have any effect on the wealth of the company's shareholders. All else being equal, the 3-for-1 stock split should cause the stock price to go down to one-third of its previous value. In general, an  $n$ -for- $m$  stock split should cause the stock price to go down to  $m / n$  of its previous value. The terms of option contracts are adjusted to reflect expected changes in a stock price arising from a stock split. After an  $n$ -for- $m$  stock split, the strike price is reduced to  $m / n$  of its previous value, and the number of shares covered by one contract is increased to  $n / m$  of its previous value. If the stock price declines in the way expected, the positions of both the writer and the purchaser of a contract remain unchanged.

# Example 10.1

Consider a call option to buy 100 shares of a company for  $30 per share. Suppose the company makes a 2-for-1 stock split. The terms of the option contract are then changed so that it gives the holder the right to purchase 200 shares for$ 15 per share.

Stock options are adjusted for stock dividends. A stock dividend involves a company issuing more shares to its existing shareholders. For example, a  $20\%$  stock dividend means that investors receive one new share for each five already owned. A stock dividend, like a stock split, has no effect on either the assets or the earning power of a company. The stock price can be expected to go down as a result of a stock dividend. The  $20\%$  stock dividend referred to is essentially the same as a 6-for-5 stock split. All else being equal, it should cause the stock price to decline to  $5/6$  of its previous value. The terms of an option are adjusted to reflect the expected price decline arising from a stock dividend in the same way as they are for that arising from a stock split.

# Example 10.2

Consider a put option to sell 100 shares of a company for  $15 per share. Suppose the company declares a 25\%$  stock dividend. This is equivalent to a 5-for-4 stock split. The terms of the option contract are changed so that it gives the holder the right to sell 125 shares for 12.

Adjustments are also made for rights issues. The basic procedure is to calculate the theoretical price of the rights and then to reduce the strike price by this amount.

# Position Limits and Exercise Limits

The Chicago Board Options Exchange often specifies a position limit for option contracts. This defines the maximum number of option contracts that an investor can hold on one side of the market. For this purpose, long calls and short puts are considered to be on the same side of the market. Also considered to be on the same side are short calls and long puts. The exercise limit usually equals the position limit. It defines the maximum number of contracts that can be exercised by any individual (or group of individuals acting together) in any period of five consecutive business days. Options on the largest and most frequently traded stocks have positions limits of 250,000 contracts. Smaller capitalization stocks have position limits of 200,000, 75,000, 50,000, or 25,000 contracts.


Position limits and exercise limits are designed to prevent the market from being unduly influenced by the activities of an individual investor or group of investors. However, whether the limits are really necessary is a controversial issue.

# 10.5 TRADING

Traditionally, exchanges have had to provide a large open area for individuals to meet and trade options. This has changed. Most derivatives exchanges are fully electronic, so traders do not have to physically meet. The International Securities Exchange (www.ise.com) launched the first all-electronic options market for equities in the United States in May 2000. Over  $95\%$  of the orders at the Chicago Board Options Exchange are handled electronically. The remainder are mostly large or complex institutional orders that require the skills of traders.

# Market Makers

Most options exchanges use market makers to facilitate trading. A market maker for a certain option is an individual who, when asked to do so, will quote both a bid and an ask price on the option. The bid is the price at which the market maker is prepared to buy, and the ask (or offer) is the price at which the market maker is prepared to sell. At the time the bid and ask prices are quoted, the market maker does not know whether the trader who asked for the quotes wants to buy or sell the option. The ask is always higher than the bid, and the amount by which the ask exceeds the bid is referred to as the bid-ask spread. The exchange sets upper limits for the bid-ask spread. For example, it might specify that the spread be no more than $0.25 for options priced at less than $0.50, $0.50 for options priced between $0.50 and $10, $0.75 for options priced between $10 and $20, and $1 for options priced over $20.

The existence of the market maker ensures that buy and sell orders can always be executed at some price without any delays. Market makers therefore add liquidity to the market. The market makers themselves make their profits from the bid-ask spread. They use methods such as those that will be discussed in Chapter 19 to hedge their risks.

# Offsetting Orders

An investor who has purchased options can close out the position by issuing an offsetting order to sell the same number of options. Similarly, an investor who has written options can close out the position by issuing an offsetting order to buy the same number of options. (In this respect options markets are similar to futures markets.) If, when an option contract is traded, neither investor is closing an existing position, the open interest increases by one contract. If one investor is closing an existing position and the other is not, the open interest stays the same. If both investors are closing existing positions, the open interest goes down by one contract.

# 10.6 TRADING COSTS

The types of orders that can be placed with a broker for options trading are similar to those for futures trading (see Section 2.8). A market order is executed immediately, a limit order specifies the least favorable price at which the order can be executed, and so on.

When options are traded online, the broker will typically charge a fixed fee plus a per-contract fee. For example, the base fee might be $2.50 and the per-contract fee $0.50. There is also typically a fee charged for exercising an option, and an assignment fee when a trader is short an option and is the subject of an exercise. Sometimes it is cheaper to sell an option than pay the fee for exercising it. (See www.stockbrokers.com/guides/features-fees to compare the fees charged by 16 U.S. brokers.)

A hidden cost in option trading (and in many other financial transactions) is the market maker's bid-ask spread. Suppose that, in the example just considered, the bid price was $4.00 and the ask price was $4.50 at the time the option was purchased. We can reasonably assume that a "fair" price for the option is halfway between the bid and the ask price, or $4.25. The cost to the buyer and to the seller of the market maker system is the difference between the fair price and the price paid. This is $0.25 per option, or 25 per contract.

# 10.7 MARGIN REQUIREMENTS

We discussed margin requirements for futures contracts in Chapter 2. The purpose of margin is to provide a guarantee that the entity providing margin will live up to its obligations. If a trader buys an asset such as a stock or an option for cash there is no margin requirement. This is because the trade does not give rise to future obligations. As discussed in Section 5.2, if the trader shorts a stock, margin is required because the trader then has the obligation to close out the position by buying the stock at some future time. Similarly, when the trader sells (i.e., writes) an option, margin is required because the trader has obligations in the event that the option is exercised.

Assets are not always purchased for cash. For example, when shares are purchased in the United States, an investor can borrow up to  $50\%$  of the price from the broker. This is known as buying on margin. If the share price declines so that the loan is substantially more than  $50\%$  of the stock's current value, there is a "margin call", where the broker requests that cash be deposited by the investor. If the margin call is not met, the broker sells the stock.

When call and put options with maturities less than 9 months are purchased, the option price must be paid in full. Investors are not allowed to buy these options on margin because options already contain substantial leverage and buying on margin would raise this leverage to an unacceptable level. For options with maturities greater than 9 months investors can buy on margin, borrowing up to  $25\%$  of the option value.

# Writing Naked Options

As mentioned, a trader who writes options is required to maintain funds in a margin account. Both the trader's broker and the exchange want to be satisfied that the trader will not default if the option is exercised. The amount of margin required depends on the trader's position.

A naked option is an option that is not combined with an offsetting position in the underlying stock. The initial and maintenance margin required by the CBOE for a written naked call option is the greater of the following two calculations:

1. A total of  $100\%$  of the proceeds of the sale plus  $20\%$  of the underlying share price less the amount, if any, by which the option is out of the money
2. A total of  $100\%$  of the option proceeds plus  $10\%$  of the underlying share price.

For a written naked put option, it is the greater of

1. A total of  $100\%$  of the proceeds of the sale plus  $20\%$  of the underlying share price less the amount, if any, by which the option is out of the money
2. A total of  $100\%$  of the option proceeds plus  $10\%$  of the exercise price.

The  $20\%$  in the preceding calculations is replaced by  $15\%$  for options on a broadly based stock index because a stock index is usually less volatile than the price of an individual stock.

# Example 10.3

An investor writes four naked call option contracts on a stock. The option price is $5, the strike price is $40, and the stock price is $38. Because the option is $2 out of the money, the first calculation gives

$$

4 0 0 \times (5 + 0. 2 \times 3 8 - 2) = \$ 4, 2 4 0

$$

The second calculation gives

$$

4 0 0 \times (5 + 0. 1 \times 3 8) = \$ 3, 5 2 0

$$

The initial margin requirement is therefore  $4,240. Note that, if the option had been a put, it would be$ 2 in the money and the margin requirement would be

$$

4 0 0 \times (5 + 0. 2 \times 3 8) = \$ 5, 0 4 0

$$

In both cases, the proceeds of the sale can be used to form part of the margin account.

A calculation similar to the initial margin calculation (but with the current market price of the contract replacing the proceeds of sale) is repeated every day. Funds can be withdrawn from the margin account when the calculation indicates that the margin required is less than the current balance in the margin account. When the calculation indicates that a greater margin is required, a margin call will be made.

# Other Rules

In Chapter 12, we will examine option trading strategies such as covered calls, protective puts, spreads, combinations, straddles, and strangles. The CBOE has special rules for determining the margin requirements when these trading strategies are used. These are described in the CBOE Margin Manual, which is available on the CBOE website (www.cboe.com).

As an example of the rules, consider an investor who writes a covered call. This is a written call option when the shares that might have to be delivered are already owned.

Covered calls are far less risky than naked calls, because the worst that can happen is that the investor is required to sell shares already owned at below their market value. No margin is required on the written option. However, the investor can borrow an amount equal to  $0.5\min(S,K)$ , rather than the usual  $0.5S$ , on the stock position.

# 10.8 THE OPTIONS CLEARING CORPORATION

The Options Clearing Corporation (OCC) performs much the same function for options markets as the clearing house does for futures markets (see Chapter 2). It guarantees that options writers will fulfill their obligations under the terms of options contracts and keeps a record of all long and short positions. The OCC has a number of members, and all option trades must be cleared through a member. If a broker is not itself a member of an exchange's OCC, it must arrange to clear its trades with a member. Members are required to have a certain minimum amount of capital and to contribute to a special fund that can be used if any member defaults on an option obligation.

The funds used to purchase an option must be deposited with the OCC by the morning of the business day following the trade. The writer of the option maintains a margin account with a broker, as described earlier.2 The broker maintains a margin account with the OCC member that clears its trades. The OCC member in turn maintains a margin account with the OCC.

# Exercising an Option

When an investor instructs a broker to exercise an option, the broker notifies the OCC member that clears its trades. This member then places an exercise order with the OCC. The OCC randomly selects a member with an outstanding short position in the same option. The member, using a procedure established in advance, selects a particular investor who has written the option. If the option is a call, this investor is required to sell stock at the strike price. If it is a put, the investor is required to buy stock at the strike price. The investor is said to be assigned. The buy/sell transaction takes place on the third business day following the exercise order. When an option is exercised, the open interest goes down by one.

At the expiration of the option, all in-the-money options should be exercised unless the transaction costs are so high as to wipe out the payoff from the option. Some brokers will automatically exercise options for a client at expiration when it is in their client's interest to do so. Many exchanges also have rules for exercising options that are in the money at expiration.

# 10.9 REGULATION

Exchange-traded options markets are regulated in a number of different ways. Both the exchange and Options Clearing Corporations have rules governing the behavior of traders. In addition, there are both federal and state regulatory authorities. In general, options markets have demonstrated a willingness to regulate themselves. There have been no major scandals or defaults by OCC members. Investors can have a high level of confidence in the way the market is run.


The Securities and Exchange Commission is responsible for regulating options markets in stocks, stock indices, currencies, and bonds at the federal level. The Commodity Futures Trading Commission is responsible for regulating markets for options on futures. The major options markets are in the states of Illinois and New York. These states actively enforce their own laws on unacceptable trading practices.

# 10.10 TAXATION

Determining the tax implications of option trading strategies can be tricky, and an investor who is in doubt about this should consult a tax specialist. In the United States, the general rule is that (unless the taxpayer is a professional trader) gains and losses from the trading of stock options are taxed as capital gains or losses. The way that capital gains and losses are taxed in the United States was discussed in Section 2.10. For both the holder and the writer of a stock option, a gain or loss is recognized when (a) the option expires unexercised or (b) the option position is closed out. If the option is exercised, the gain or loss from the option is rolled into the position taken in the stock and recognized when the stock position is closed out. For example, when a call option is exercised, the party with a long position is deemed to have purchased the stock at the strike price plus the call price. This is then used as a basis for calculating this party's gain or loss when the stock is eventually sold. Similarly, the party with the short call position is deemed to have sold the stock at the strike price plus the call price. When a put option is exercised, the seller of the option is deemed to have bought the stock for the strike price less the original put price and the purchaser of the option is deemed to have sold the stock for the strike price less the original put price.

# Wash Sale Rule

One tax consideration in option trading in the United States is the wash sale rule. To understand this rule, imagine an investor who buys a stock when the price is $60 and plans to keep it for the long term. If the stock price drops to $40, the investor might be tempted to sell the stock and then immediately repurchase it, so that the 20 loss is realized for tax purposes. To prevent this practice, the tax authorities have ruled that when the repurchase is within 30 days of the sale (i.e., between 30 days before the sale and 30 days after the sale), any loss on the sale is not deductible. The disallowance also applies where, within the 61-day period, the taxpayer enters into an option or similar contract to acquire the stock. Thus, selling a stock at a loss and buying a call option within a 30-day period will lead to the loss being disallowed.

# Constructive Sales

Prior to 1997, if a United States taxpayer shorted a security while holding a long position in a substantially identical security, no gain or loss was recognized until the

# Business Snapshot 10.1 Tax Planning Using Options

As a simple example of a possible tax planning strategy using options, suppose that Country A has a tax regime where the tax is low on interest and dividends and high on capital gains, while Country B has a tax regime where tax is high on interest and dividends and low on capital gains. It is advantageous for a company to receive the income from a security in Country A and the capital gain, if there is one, in Country B. The company would like to keep capital losses in Country A, where they can be used to offset capital gains on other items. All of this can be accomplished by arranging for a subsidiary company in Country A to have legal ownership of the security and for a subsidiary company in Country B to buy a call option on the security from the company in Country A, with the strike price of the option equal to the current value of the security. During the life of the option, income from the security is earned in Country A. If the security price rises sharply, the option will be exercised and the capital gain will be realized in Country B. If it falls sharply, the option will not be exercised and the capital loss will be realized in Country A.

short position was closed out. This means that short positions could be used to defer recognition of a gain for tax purposes. The situation was changed by the Tax Relief Act of 1997. An appreciated property is now treated as "constructively sold" when the owner does one of the following:

1. Enters into a short sale of the same or substantially identical property
2. Enters into a futures or forward contract to deliver the same or substantially identical property
3. Enters into one or more positions that eliminate substantially all of the loss and opportunity for gain.

It should be noted that transactions reducing only the risk of loss or only the opportunity for gain should not result in constructive sales. Therefore an investor holding a long position in a stock can buy in-the-money put options on the stock without triggering a constructive sale.

Tax practitioners sometimes use options to minimize tax costs or maximize tax benefits (see Business Snapshot 10.1). Tax authorities in many jurisdictions have proposed legislation designed to combat the use of derivatives for tax purposes. Before entering into any tax-motivated transaction, a corporate treasurer or private individual should explore in detail how the structure could be unwound in the event of legislative change and how costly this process could be.

# 10.11 WARRANTS, EMPLOYEE STOCK OPTIONS, AND CONVERTIBLES

Warrants are options issued by a financial institution or nonfinancial corporation. For example, a financial institution might issue 1 million put warrants on gold, each warrant giving the holder the right to sell 10 ounces of gold for 1,000 per ounce. It could then proceed to create a market for the warrants. To exercise the warrant, the holder would contact the financial institution. A common use of warrants by a non-financial corporation is at the time of a bond issue. The corporation issues call warrants giving the holder the right to buy its own stock for a certain price at a certain future time and then attaches them to the bonds to make the bonds more attractive to investors.


Employee stock options are call options issued to employees by their company to motivate them to act in the best interests of the company's shareholders (see Chapter 16). They are usually at the money at the time of issue. Accounting standards now require them to be expensed at fair market value on the income statement of the company.

Convertible bonds, often referred to as convertibles, are bonds issued by a company that can be converted into equity at certain times using a predetermined exchange ratio. They are therefore bonds with an embedded call option on the company's stock.

One feature of warrants, employee stock options, and convertibles is that a predetermined number of options are issued. By contrast, the number of options on a particular stock that trade on the CBOE or another exchange is not predetermined. (As people take positions in a particular option series, the number of options outstanding increases; as people close out positions, it declines.) Warrants issued by a company on its own stock, employee stock options, and convertibles are different from exchange-traded options in another important way. When these instruments are exercised, the company issues more shares of its own stock and sells them to the option holder for the strike price. The exercise of the instruments therefore leads to an increase in the number of shares of the company's stock that are outstanding. By contrast, when an exchange-traded call option is exercised, the party with the short position buys in the market shares that have already been issued and sells them to the party with the long position for the strike price. The company whose stock underlies the option is not involved in any way.

# 10.12 OVER-THE-COUNTER OPTIONS MARKETS

Most of this chapter has focused on exchange-traded options markets. The over-the-counter market for options has become increasingly important since the early 1980s and is now larger than the exchange-traded market. As explained in Chapter 1, the main participants in over-the-counter markets are financial institutions, corporate treasurers, and fund managers. There is a wide range of assets underlying the options. Over-the-counter options on foreign exchange and interest rates are particularly popular. The chief potential disadvantage of the over-the-counter market is that the option writer may default. This means that the purchaser is subject to some credit risk. In an attempt to overcome this disadvantage, market participants (and regulators) often require counterparties to post collateral. This was discussed in Section 2.5.

The instruments traded in the over-the-counter market are often structured by financial institutions to meet the precise needs of their clients. Sometimes this involves choosing exercise dates, strike prices, and contract sizes that are different from those offered by an exchange. In other cases the structure of the option is different from standard calls and puts. The option is then referred to as an exotic option. Chapter 26 describes a number of different types of exotic options.

# SUMMARY

There are two types of options: calls and puts. A call option gives the holder the right to buy the underlying asset for a certain price by a certain date. A put option gives the holder the right to sell the underlying asset by a certain date for a certain price. There are four possible positions in options markets: a long position in a call, a short position in a call, a long position in a put, and a short position in a put. Taking a short position in an option is known as writing it. Options are currently traded on stocks, stock indices, foreign currencies, futures contracts, and other assets.

An exchange must specify the terms of the option contracts it trades. In particular, it must specify the size of the contract, the precise expiration time, and the strike price. In the United States one stock option contract gives the holder the right to buy or sell 100 shares. The standard expiration of a stock option contract is the third Friday of the expiration month. Options with several different expiration months trade at any given time. Strike prices are at $2½, $5, or 10 intervals, depending on the stock price.

The terms of a stock option are not normally adjusted for cash dividends. However, they are adjusted for stock dividends, stock splits, and rights issues. The aim of the adjustment is to keep the positions of both the writer and the buyer of a contract unchanged.

Most option exchanges use market makers. A market maker is an individual who is prepared to quote both a bid price (at which he or she is prepared to buy) and an ask price (at which he or she is prepared to sell). Market makers improve the liquidity of the market and ensure that there is never any delay in executing market orders. They themselves make a profit from the difference between their bid and ask prices (known as their bid-ask spread). The exchange has rules specifying upper limits for the bid-ask spread.

Writers of options have potential liabilities and are required to maintain a margin account with their brokers. If it is not a member of the Options Clearing Corporation, the broker will maintain a margin account with a firm that is a member. This firm will in turn maintain a margin account with the Options Clearing Corporation. The Options Clearing Corporation is responsible for keeping a record of all outstanding contracts, handling exercise orders, and so on.

Not all options are traded on exchanges. Many options are traded in the over-the-counter (OTC) market. An advantage of over-the-counter options is that they can be tailored by a financial institution to meet the particular needs of a corporate treasurer or fund manager.

# FURTHER READING

Chicago Board Options Exchange. Margin Manual. Available online at the CBOE website: www.cboe.com.

# Short Concept Questions

10.1. What is the difference between an American and a European option?
10.2. What are the four types of option positions?
10.3. Give examples of three index options that trade on the CBOE?

10.4. What is a flex option?
10.5. Which of the following lead to adjustments to the terms of an exchange-traded option: (a) stock splits, (b) stock dividends, (c) cash dividends?
10.6. What is a position limit? What is its purpose?
10.7. What is the potential advantage to a corporation of trading an over-the-counter option rather than an exchange-traded option?
10.8. Explain why margin accounts are required when clients write options but not when they buy options.
10.9. A stock option is on a February, May, August, and November cycle. What options trade on (a) April 1 and (b) May 30?
10.10. Explain carefully the difference between writing a put option and buying a call option.

# Practice Questions

10.11. An investor buys a European put on a share for $3. The stock price is $42 and the strike price is 40. Under what circumstances does the investor make a profit? Under what circumstances will the option be exercised? Draw a diagram showing the variation of the investor's profit with the stock price at the maturity of the option.
 10.12. An investor sells a European call on a share for $4. The stock price is $47 and the strike price is 50. Under what circumstances does the investor make a profit? Under what circumstances will the option be exercised? Draw a diagram showing the variation of the investor's profit with the stock price at the maturity of the option.
10.13. An investor sells a European call option with strike price of  $K$  and maturity  $T$  and buys a put with the same strike price and maturity. Describe the investor's position.
 10.14. A company declares a 2-for-1 stock split. Explain how the terms change for a call option with a strike price of 60.
10.15. "Employee stock options issued by a company are different from regular exchange-traded call options on the company's stock because they can affect the capital structure of the company." Explain this statement.
 10.16. Suppose that a European call option to buy a share for $100.00 costs $5.00 and is held until maturity. Under what circumstances will the holder of the option make a profit? Under what circumstances will the option be exercised? Draw a diagram illustrating how the profit from a long position in the option depends on the stock price at maturity of the option.
 10.17. Suppose that a European put option to sell a share for $60 costs $8 and is held until maturity. Under what circumstances will the seller of the option (the party with the short position) make a profit? Under what circumstances will the option be exercised? Draw a diagram illustrating how the profit from a short position in the option depends on the stock price at maturity of the option.
10.18. Consider the following portfolio: a newly entered-into long forward contract on an asset and a long position in a European put option on the asset with the same maturity as the forward contract and a strike price that is equal to the forward price of the asset at the time the portfolio is set up. Show that it has the same value as a European call option with the same strike price and maturity as the European put option. Deduce that a European put option has the same value as a European call option with the same strike price and maturity when the strike price for both options is the forward price.


10.19. A trader buys a call option with a strike price of $45 and a put option with a strike price of $40. Both options have the same maturity. The call costs $3 and the put costs $4. Draw a diagram showing the variation of the trader's profit with the asset price.

10.20. Explain why an American option is always worth at least as much as a European option on the same asset with the same strike price and exercise date.

10.21. Explain why an American option is always worth at least as much as its intrinsic value.

10.22. The treasurer of a corporation is trying to choose between options and forward contracts to hedge the corporation's foreign exchange risk. Discuss the advantages and disadvantages of each.

10.23. Consider an exchange-traded call option contract to buy 500 shares with a strike price of 40 and maturity in 4 months. Explain how the terms of the option contract change when there is: (a) a 10\% stock dividend; (b) a 10\% cash dividend; and (c) a 4-for-1 stock split.

10.24. "If most of the call options on a stock are in the money, it is likely that the stock price has risen rapidly in the last few months." Discuss this statement.

10.25. What is the effect of an unexpected cash dividend on (a) a call option price and (b) a put option price?

10.26. Options on a stock are on a March, June, September, and December cycle. What options trade on (a) March 1, (b) June 30, and (c) August 5?

10.27. Explain why the market maker's bid-ask spread represents a real cost to options investors.

10.28. A U.S. investor writes five naked call option contracts. The option price is $3.50, the strike price is $60.00, and the stock price is 57.00. What is the initial margin requirement?

10.29. Calculate the intrinsic value and time value from the mid market (average of bid and ask) prices for the September call options in Table 1.2. Do the same for the September put options in Table 1.3. Assume in each case that the current mid market stock price is 316.00.

10.30. A trader writes 5 naked put option contracts with each contract being on 100 shares. The option price is $10, the time to maturity is 6 months, and the strike price is $64.

(a) What is the margin requirement if the stock price is 58?

(b) How would the answer to (a) change if the rules for index options applied?

(c) How would the answer to (a) change if the stock price were 70?

(d) How would the answer to (a) change if the trader is buying instead of selling the options?

10.31. "If a company does not do better than its competitors but the stock market goes up, executives do very well from their stock options. This makes no sense." Discuss this viewpoint. Can you think of alternatives to the usual employee stock option plan that take the viewpoint into account.

10.32. On July 20, 2004, Microsoft surprised the market by announcing a 3 dividend. The ex-dividend date was November 17, 2004, and the payment date was December 2, 2004. Its stock price at the time was about 28. It also changed the terms of its employee stock options so that each exercise price was adjusted downward to


$$

\text {P r e d i v i d e n d} \times \frac {\text {C l o s i n g p r i c e} - \$ 3 . 0 0}{\text {C l o s i n g p r i c e}}

$$

The number of shares covered by each stock option outstanding was adjusted upward to

$$

\text {N u m b e r o f s h a r e s p r e d i v i d e n d} \times \frac {\text {C l o s i n g p r i c e}}{\text {C l o s i n g p r i c e} - \$ 3 . 0 0}

$$

"Closing Price" means the official NASDAQ closing price of a share of Microsoft common stock on the last trading day before the ex-dividend date. Evaluate this adjustment.

# 11

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/021d7402c916d4e22da4d834947a014c8d8d6bc2999d6e88441a0e9751150780.jpg)

# Properties of Stock Options

In this chapter, we look at the factors affecting stock option prices. We use a number of different arbitrage arguments to explore the relationships between European option prices, American option prices, and the underlying stock price. The most important of these relationships is put-call parity, which is a relationship between the price of a European call option, the price of a European put option, and the underlying stock price.

The chapter examines whether American options should be exercised early. It shows that it is never optimal to exercise an American call option on a non-dividend-paying stock prior to the option's expiration, but that under some circumstances the early exercise of an American put option on such a stock is optimal. When there are dividends, it can be optimal to exercise either calls or puts early.


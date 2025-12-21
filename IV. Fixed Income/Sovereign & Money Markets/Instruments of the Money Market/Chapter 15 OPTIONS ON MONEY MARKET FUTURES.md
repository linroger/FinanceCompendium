---
title: "Chapter 15: Options on Money Market Futures"
aliases:
   - Options on Money Market Futures
   - Money Market Futures Options
tags:
key_concepts:
parent_directory: Instruments of the Money Market
formatted: 2025-12-21 02:32:38 PM
formatter_model: claude-3-7-sonnet-20250219
cli_tool: claude-code
primary_tags:
   - money market futures options
   - interest rate options
   - futures options
   - option pricing
   - hedging strategies
secondary_tags:
   - eurodollar futures options
   - treasury bill options
   - put-call parity
   - option payoffs
   - delta hedging
cssclasses: academia
---

# Chapter 15: Options on Money Market Futures

**Author: Anatoli Kuprianov**

## Introduction

Options are contracts that give their buyers the right, but not the obligation, to buy or sell a specified item at a set price within some predetermined time period. Options on futures contracts, known as futures options, are standardized option contracts traded on futures exchanges. Although an active over-the-counter market in stock options has existed in the United States for almost a century, the advent of exchange-traded options is a more recent development. Standardized options began trading on organized exchanges in 1973, when the Chicago Board Options Exchange (CBOE) was organized. The American and Philadelphia Stock Exchanges soon followed suit by listing stock options in 1975, followed one year later by the Pacific Stock Exchange. Today a wide variety of options trade on virtually all major stock and futures exchanges, including stock options, foreign currency options, and futures options.

Options on three different short-term interest rate futures are traded actively at present. The International Monetary Market (IMM) division of the Chicago Mercantile Exchange (CME) began listing options on three-month Eurodollar time deposit futures in March of 1985, and on 13-week Treasury bill futures a year later. Trading in options on IMM One-Month LIBOR futures began in 1991. The London International Financial Futures Exchange also lists options on its Eurodollar futures contract, but the IMM contract is the more actively traded of the two by a substantial margin.

## Definitions and Basic Concepts

Call Options A call option gives a buyer the right, but not the obligation, to buy a specified item at a stipulated "exercise" or "strike" price. The underlying item can be a security such as a common stock or a Treasury bond, a specified amount of a commodity, or a futures contract. Call options are bought and sold for a market-determined premium termed the call price. The buyer, or "holder," of an option is said to take on a long position while the seller, or "writer,"

assumes a short position in the option. In exchange for the premium, the writer of a call option assumes a contractual obligation to sell the underlying instrument for the amount specified by the strike price at the buyer's option. When the holder of a call option acts to purchase the underlying item he is said to exercise the option. An American-style option can be exercised at any time up to the contract expiration date, while a European option can be exercised only on its expiration date. The futures options described in this chapter are all examples of American options, as are virtually all exchange-traded options.

Put Options The buyer of a put option receives the right to sell a specified item at the strike or exercise price specified by the contract. In exchange for a cash premium (put price), the seller of a put option agrees to buy the underlying security for the amount stipulated by the strike price at the buyer's option.

Standardized Options A standardized, or exchange-traded, option always specifies a uniform underlying instrument, one of a limited number of strike prices, and one of a limited number of expiration dates. Contract specifications are determined by the exchange listing the contract. As with futures contracts, contract performance for exchange-traded options is guaranteed by a clearing corporation that interposes itself as a third party to each option contract. The clearing corporation becomes the seller to each buyer and the buyer to each seller, thereby removing the risk to option buyers that a seller might fail to meet contract obligations. Option buyers are not required to post margins because their risk of loss is limited to the premium paid for the option.<sup>1</sup> A change in the market price of an underlying item can expose an option writer to a substantial risk of loss, however, and expose the clearing corporation to default risk. Hence, the exchange clearinghouses require option writers to maintain margin accounts similar to those required of traders in futures contracts and mark the value of all outstanding contracts to market at the end of each trading session.

Contract standardization, together with the clearing corporation guarantee, facilitates trading in standardized options. As a result, a holder or writer of an exchange-traded option can always liquidate an open position before expiration through an offsetting transaction. The holder of a call option, for example, can offset an open position by selling a call option with the same strike price and expiration date. In this case, the difference between the premium originally paid for the option and the premium received from the sale determines the total profit or loss from holding the option. Similarly, the holder of a put option can liquidate his position by selling a put with the same strike price and expiration date.

As with futures contracts most positions in standardized options are liquidated through offsetting transactions before they expire; occasionally, futures options are exercised before expiration.

Futures Options Trading in futures options takes place in trading areas, or pits, situated next to the trading pits for the underlying futures contracts. A buyer who exercises a futures call option assumes a long futures position by buying the underlying futures contract at the strike price. The writer, in turn, must take on a corresponding short futures position by selling the underlying futures contract at the same price. The reverse holds true with futures put options. Exercising a futures put option creates a short futures position for the holder and a corresponding long position in the underlying contract for the writer. The resulting futures position can be liquidated through an offsetting futures transaction.

When an option on a futures contract expires on the same day the underlying futures contract matures, exercising a futures option at expiration is equivalent to exercising an option on an actual cash item. The IMM's options on Eurodollar and LIBOR futures are examples of futures options that expire on the underlying futures contract maturity date. In these two cases, however, the underlying futures contracts are both cash settled. Therefore, options on these two futures contracts employ the same cash settlement procedure as the underlying futures contracts.

The principal advantage of futures options over options on physicals stems from the fact that most traders find delivery requirements less burdensome for futures options than options on actual physical items. Futures markets tend to be more liquid and have lower transactions costs than underlying cash markets. Thus, while the exercise of an option on an actual cash item requires the writer to buy or deliver that item, the exercise of a futures option results only in a long or short futures position, which is easy to offset. Such considerations are especially important to put and call writers, most of whom sell options in order to earn premium income rather than to buy or sell the underlying item (Chance 1989, Chap. 12).

## Contract Specifications for IMM Options on Money Market Interest Rate Futures

Options on Treasury Bill Futures Options on three-month Treasury bill futures began trading in April of 1986. The IMM currently lists options for the first four contract delivery months, making the furthest expiration date of a traded option one year in the future. Expiration dates for traded contracts fall approximately three to four weeks before the underlying futures contract matures.[2]

Price Quotation Premiums for Treasury bill futures options are quoted in terms of basis points of the IMM index for the underlying futures contract. As with the underlying futures contract the minimum price fluctuation is 1 basis point, valued at  \$25. Thus, a quote of 0.35 represents an options premium of\$ 875 (35 basis points x \$25 per basis point).

Strike Price Intervals Strike price intervals are 25 basis points. Thus, listed strike prices might be 95.00 or 95.25, but not 95.05.

Options on Eurodollar Futures Options on three-month Eurodollar futures began trading on the IMM in March 1985. The exchange lists options for the first six underlying futures contract expiration months, making the furthest expiration date for Eurodollar futures options 18 months in the future. Since 1992 the exchange has also listed two "serial expiration month" contracts for the nearby futures contract, which means that the exchange lists options with expiration dates falling during the two months immediately preceding the nearby contract month. To take an example, when the March Eurodollar futures contract matures the IMM begins listing two additional options—with expiration dates in April and May—on the June futures contract. Listed options for more distant futures maturity dates are limited to contracts expiring on the futures contract maturity date, however. Thus, serial expiration month options for the September futures contract are not listed until the June contract expires. Altogether, options for as many as eight separate expiration months may trade at any one time.

Since serial month options expire before the underlying futures contract matures, exercising such an option always results in a long or short futures position. For options expiring on the same day the underlying futures contract matures, final settlement follows the same cash settlement procedure used for the underlying futures contract. To illustrate, consider the payoff to a long position in a Eurodollar futures call option with a strike price of 95.00 held to expiration. If the final settlement price for the underlying futures contract is 95.50, a call holder exercising the option upon expiration receives  $1,250 (50 \times$ 25).

Price Quotation Put and call premiums are quoted in terms of basis points of the underlying futures price index. As with the underlying futures contracts the minimum price fluctuation is 1 basis point, with each basis point valued at \$25.

Strike Price Intervals Strike price intervals for Eurodollar futures options are 25 basis points.

Options on One-Month LIBOR Futures Options on one-month LIBOR futures began trading on the IMM in June 1991. Like Eurodollar futures options, one-month LIBOR futures options are cash-settled contracts that expire on the day the underlying futures contract matures. The IMM lists options on all six listed one-month LIBOR futures contract months.

Price Quotation Premiums are quoted in terms of basis points of the underlying futures price index. The minimum price fluctuation is 1 basis point, valued at \$25.

Strike Price Intervals Strike price intervals are 25 basis points.

Trading Activity in Money Market Futures Options Figures 1 and 2 display a history of trading activity for options on money market futures. Figure 1 shows total annual trading volume. As with measures of futures trading volume, measured trading volume in futures options reflects the total number of contracts traded for all contract expiration dates, with each transaction between a buyer and seller counting as a single trade. Figure 2 plots average month-end open interest for all contract expiration dates. Month-end open interest counts the number of unsettled contracts as of the end of the last trading day of each month. Each contract included in the open interest count reflects an outstanding options position on the part of both a buyer and a seller.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/0dd82cc9-82bb-421a-abee-63a93e8273b0/2912811b492a6da55204710f735d570ee914c49ae067c1c811a8f6d00c44b071.jpg)  
FIGURE 1  
Total Annual Trading Volume  
U.S. Money Market Options

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/0dd82cc9-82bb-421a-abee-63a93e8273b0/43afb5633440b2d7599f09ea0b9b53c5c549744b8d4bed2beb361f2f70ec112c.jpg)  
FIGURE 2  
Average Month-End Open Interest  
U.S. Money Market Options

As the two figures show, trading activity in Eurodollar futures options dwarfs that of the other two contracts. The popularity of Eurodollar futures options reflects the trading volume in the underlying futures contract, which is correspondingly higher than that of any other futures contract on money market instruments.

## Option Payoffs and the Behavior of Option Prices

This section reviews some basic principles of option pricing. The review begins by describing the payoff patterns resulting from different unhedged positions in futures contracts and futures options and concludes with a brief discussion of the theory of option pricing

Payoff Diagrams The payoff diagrams depicted in Figures 3-5 illustrate the cash flows resulting from positions in futures contracts and futures options as a

function of the futures price on the contract expiration date. An analysis of payoff diagrams for futures contracts provides a useful starting point for the subsequent study of put and call option payoffs.

Futures Contracts Figure 3a shows the payoff at maturity to an unhedged long position in a futures contract. The horizontal axis measures the futures price  $F$  while the vertical axis measures the profit or loss resulting from a change in the futures price. A long futures position earns or loses  \$1 with each corresponding\$ 1 increase or decrease in the futures price. Thus, if  $F_{0}$  is the initial futures price and  $F$  is the final settlement price, the payoff to a long futures position held to maturity is just  $F - F_{0}$ , which is depicted by a 45 degree line intersecting the horizontal axis at  $F_{0}$  in Figure 3a.

The payoff to an unhedged short futures position is  $F_0 - F$ , which, as Figure 3b illustrates, is just the opposite of the payoff to a long futures position. From Figure 3 it should be clear that selling a futures contract exactly offsets or cancels the exposure resulting from a long futures position maturing on the same date.

Long Call Option A call option is said to be in-the-money when the market price of the underlying instrument is above the strike price, out-of-the-money when the market price is below the strike price, and at-the-money when the market price just equals the strike price. The amount an option holder could earn by exercising the option is termed the intrinsic value of the option. An out-of-the-money option has no intrinsic value and will not be exercised. The

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/0dd82cc9-82bb-421a-abee-63a93e8273b0/6007ac67e020025fc76e2f5847cd96c29c36568cd0bf31c65daf05be8c22fb13.jpg)  
Payoffs for Unhedged Futures Contracts

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/0dd82cc9-82bb-421a-abee-63a93e8273b0/ff657509bac21b84b1668097b0b8cd1b0b8aa3c244ff46756743f59527f7df97.jpg)  
FIGURE 3

intrinsic value of an in-the-money American call option is determined by the difference between the current market price of the underlying instrument and the option strike price. Let  $F$  denote the underlying futures price and  $K$  the option strike price. Then, the intrinsic value of a futures call option is  $F - K$  if  $F > K$  and zero if  $F \leq K$ , which can be written as

$$
\max  (0, F - K).
$$

Figure 4a illustrates the payoff to a long call option held to expiration. Let  $C_0$  denote the call premium paid at the time the option was first purchased. If  $F < K$ , the option will expire out-of-the-money and the buyer will lose the call premium. But the call premium is the most the option holder can lose, so that the payoff diagram has a floor at  $-C_0$  on the vertical axis. When the underlying futures price is above the option strike price, the call holder can earn a marginal profit of  $F - K$  by exercising the option, so the payoff line is kinked at  $F = K$ , the point where the option goes in-the-money. The total net profit accruing to a long call option position when the option expires in-the-money is  $F - K - C_0$ . The payoff line intersects the horizontal axis at the break-even price  $F = K + C_0$ .

To illustrate, consider the payoff to a call option on September Treasury bill futures with a strike price of 96.00 bought at a premium of 30 basis points (\$750). If the underlying futures contract is priced below 96.00 when the option expires, the option expires out-of-the-money and the buyer loses the entire \$750 premium. At any futures price above 96.00 the option is in-the-money, so a holder can exercise the option and liquidate the resulting futures position to

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/0dd82cc9-82bb-421a-abee-63a93e8273b0/679949005aa2820a0c8647482fabc45bc6036b4e253f83900c0a8cf979efb8ad.jpg)  
Payoffs for Unhedged Call Options

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/0dd82cc9-82bb-421a-abee-63a93e8273b0/89b682b6dc3c2f06e0e663b8eb521c853c75dc5f509d1f76d839f7490286250d.jpg)  
FIGURE 4

earn a marginal profit. For example, if Treasury bill futures are priced at 96.25 the option's intrinsic value is 25 basis points (\$625). By exercising the option and immediately selling the underlying futures contract, an option holder can earn a total net profit of 96.25 - 96.00 - 0.30 = -0.05, or - \$125. The break-even price is 96.30.

Short Call Option Figure 4b depicts the payoff at expiration for an unhedged short position in a call option. If  $F < K$  the option expires out-of-the-money and the seller earns the premium  $C_0$ . The payoff line is kinked at  $F = K$ , the point where the option is just at-the-money. When  $F > K$  the option will be exercised and the net payoff to the seller will be  $K + C_0 - F$ . The net profit is negative if the loss on the sale of the underlying item exceeds the premium earned when the call was sold; that is, if  $F - K > C_0$ .

Long Put Option A put option is in-the-money when the market price of the underlying instrument is below the strike price and out-of-the-money when it is above the strike price. If  $F > K$  the option expires out-of-the-money and the buyer loses the put premium. When  $F < K$  the option is in-the-money and the buyer earns a marginal positive profit of  $K - F$  by exercising the option. Thus, the intrinsic value of a put option can be written as

$$
\max  (0, K - F).
$$

Figure 5a depicts the net payoff at expiration to a long position in a futures put option. Suppose a buyer pays a put premium  $P_0$  in exchange for the right to sell the underlying futures contract at the strike price  $K$ . Then, the net profit from exercising an in-the-money put option is  $K - F - P_0$ , which is positive when  $F$  is less than the break-even price  $K - P_0$ .

To illustrate, consider the payoff at expiration to a June Eurodollar futures put option. Suppose a put option with a strike price of 96.00 sells for a premium of 7 basis points, or \$175. If the final settlement price is 95.80, the option is in-the-money and exercising it yields a payoff of \$500 (20 basis points x \$25 per basis point). The net profit is 13 basis points (96.00 - 95.80 - 0.07), or \$325. The break-even price is 96.00 - 0.07 = 95.93.

Short Put Option Finally, Figure 5b depicts the payoff at expiration to a short position in a put option. When the option expires out-of-the-money, the writer earns the put premium  $P_0$ . If the option is in-the-money, the net profit (or loss) is  $P_0 + F - K$ , the put premium less the difference between the strike price and the cash market price of the underlying item on that date.

As a final observation, note that buying a put does not offset the exposure to a long call position. Instead, a long position in a call option is offset by selling a call with the same strike price and expiration date. Similarly, a long put position is offset by selling a put with the same contract specifications.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/0dd82cc9-82bb-421a-abee-63a93e8273b0/dfcc3b40c3a1b65397ce0c53ab286a7f4ea86ad57b6cf763141721ed18aa1fb3.jpg)  
Payoffs for Unhedged Put Options

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/0dd82cc9-82bb-421a-abee-63a93e8273b0/0de2d476b636b72c88afd956f01f8a1d8624b3ce573ff5b5223adffb364d5b74.jpg)  
FIGURE 5

## Principles of Option Pricing

The Time Value of an Option An out-of-the-money option typically will sell for a positive premium before the contract expiration date because there is always some chance that the option will go in-the-money before it expires. The excess of an option premium over its intrinsic value is termed its time value, or speculative value. All other things equal, the time value of an option tends to increase with the time to expiration because a longer-lived option has a greater chance of going deeper in-the-money before it expires. At expiration time value is zero and the only value the option has is its intrinsic value. The rate at which an option premium changes over time, with all other things held equal, is known as the "theta" of the option. Option pricing theory predicts that theta should be negative, reflecting the fact that time value is expected to fall as the expiration date draws nearer.

Table 1 lists call prices, underlying futures prices, and time values for IMM Eurodollar futures call options with different expiration dates as of the close of trading on October 21, 1992. Looking at the first row, a December Eurodollar futures call option with a strike price of 96.00 sold for a premium of 51 basis points, while the price of the underlying futures contract at the end of the same trading session was 96.44. Thus, the intrinsic value of the December option was 44 basis points. The difference between the call premium and its intrinsic value was 7 basis points, or \$175. Notice that the time values listed in Table 1 are larger for options with more distant expiration dates.

## Table 1: Eurodollar Futures Call Option Premiums, Intrinsic Values, and Time Values

<table><tr><td>Expiration Month</td><td>Strike Price</td><td>Premium</td><td>Futures Price</td><td>Intrinsic Value</td><td>Time Value</td></tr><tr><td>December 1992</td><td>96.00</td><td>0.51</td><td>96.44</td><td>0.44</td><td>0.07</td></tr><tr><td>March 1993</td><td>96.00</td><td>0.55</td><td>96.36</td><td>0.36</td><td>0.19</td></tr><tr><td>June 1993</td><td>96.00</td><td>0.39</td><td>95.91</td><td>0.00</td><td>0.39</td></tr></table>

Strike Prices and Option Premiums All other things equal, a call option should be more valuable the lower its strike price. With the price of the underlying item held fixed, a lower strike price increases the intrinsic value of an in-the-money call option and makes it more likely that an out-of-the-money call will go inthemoney before expiring. The opposite is true for put options, which become more valuable the higher the strike price. These predicted price patterns are evident in Table 2, which lists call and put premiums for December Eurodollar futures as of the close of trading on October 21, 1992.

Responsiveness of Option Premiums to Changes in Underlying Futures Prices A similar line of reasoning leads to the prediction that a futures call should become more valuable the higher the underlying futures price, all other things equal, while a futures put should become more valuable when the underlying futures price falls. The responsiveness of an option's premium to a change in the price of the underlying item is known as the option "delta." The relationship between the strike price and the price of the underlying item influences the value of delta. The value of an option that is deep in-the-money is determined largely by its intrinsic value. In this case, a change in the price of the underlying item can affect the value of the option by an almost equal amount, so delta is close

## Table 2: Selected Call and Put Premiums for Options on Eurodollar Futures

Strike Price  

<table><tr><td></td><td>96.00</td><td>96.25</td><td>96.50</td><td>96.75</td><td>97.00</td><td>97.</td></tr><tr><td>Calls</td><td>0.51</td><td>0.33</td><td>0.19</td><td>0.09</td><td>0.04</td><td>0.0</td></tr><tr><td>Puts</td><td>0.07</td><td>0.14</td><td>0.25</td><td>0.40</td><td>0.60</td><td>0.8</td></tr></table>

to one. When an option is far out-of-the-money, a change in the price of the underlying item may have little effect on the option premium—delta is close to zero in this latter case. Option deltas also vary with time to expiration.

Price Volatility and Option Premiums Option pricing theory predicts that an option should be more valuable the higher the price volatility of the underlying item. To understand why this should be so, consider the payoff to holding a long position in a call option. A call option becomes more valuable when the price of the underlying item increases, so the greater the price volatility of the underlying item the more likely that the payoff to a call option will increase some time before it expires. Of course, increased volatility also makes it more likely that the price of the underlying item will fall, but the losses faced by the buyer of a call option are limited to the amount of the call premium whereas potential gains are virtually unlimited. Thus, increased price volatility should make a call option more valuable. A similar line of reasoning applies to put option premiums. The responsiveness of an option premium to changes in expected volatility is termed the "lambda" of the option.<sup>3</sup>

> Br? Put-Call Parity As the foregoing discussion has illustrated, the same underlying factors determine put and call premiums: the option strike price and expiration date, market interest rates, the price of the underlying instrument, and expected price volatility. Accordingly, it should not be surprising to find that certain predictable relationships exist between put and call premiums. A fundamental relationship between put and call premiums for European-style options is known as put-call parity.

The put-call parity formula for European-style futures options is

$$
C - P = (F - K) / [ 1 + r (T / 3 6 0) ],
$$

where  $r$  is the risk-free interest rate expressed as an annualized money market rate and  $T$  is the time to expiration for the call and put options on a given futures contract. Put-call parity equates the difference between the call and put premiums with the present value of the difference between the current underlying futures price and the exercise price. Given the call premium for a European option, its strike price, time to maturity, and underlying futures price, the put-call parity formula determines the premium for a corresponding European put option with the same strike price and expiration date. Conversely, the put premium, strike price, underlying futures price, and expiration date determine the call premium on a European option with the same strike price and expiration date.

The put-call parity relation derives from the fact that the simultaneous purchase of a call and sale of a put with the same strike price and expiration date produces the same payoff at expiration as a long position in the underlying futures contract purchased at the strike price  $K$ . To see this, recall that the value of an option at expiration is just its intrinsic value, so at expiration

$$
C = \max  (0, F - K),
$$

and

$$
P = \max  (0, K - F).
$$

If  $F > K$  the call option expires in-the-money and the option holder earns  $F - K$ , while if  $F < K$  the put option expires in-the-money and the option writer earns a negative profit equal to  $F - K$ . Thus, upon expiration the payoff to a combined long position in a call option and a short position in a put option is always  $F - K$ , meaning that  $C - P = F - K$ , which is just the put-call parity formula given above evaluated at  $T = 0$ . But  $F - K$  is the payoff to a long position in the underlying futures contract bought at a price  $K$ . Thus, buying a call while selling a put with the same strike price and expiration date just replicates the return to a long position in the underlying futures contract. This result is illustrated in Figure 6.4

In theory, put-call parity applies only to European options. The relationship need not be exact with American options because there are circumstances under which an option holder has an incentive to exercise a futures option before expiration. As a practical matter, however, the approximation can be quite close. (See Kawaller [1988].) Put-call parity can be used to help characterize payoffs to combined positions in options and the underlying item. For example, a common options hedging strategy involves buying a put option to protect against the risk of a drop in the price of the underlying item. Rearranging terms in the put-call parity formula shows that the payoff at expiration for such a position will be  $C = P + (F - K)$ ; that is, a long position in both a futures put option and the underlying futures contract creates a "synthetic" long call option. Thus, buying a call option can substitute for buying the underlying instrument and hedging the resulting risk of loss by buying a put option. Conversely, a short position in a futures put combined with a short position in the underlying futures contract creates a synthetic short position in the corresponding futures call option. The put-call parity formula can be used to determine the value of the resulting synthetic call.

## Figure 6: Put-Call Parity

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/0dd82cc9-82bb-421a-abee-63a93e8273b0/e1b74a3b55f8a5afe535a5304ccef57e42eb793edcb7d8427c1eb8dbb73a5f5b.jpg)

As another example, consider the payoff associated with a short position in a futures contract together with a long position in a call option on that contract. According to the put-call parity formula, the payoff at expiration for such a position would be  $P = C - (F - K)$ , which says that such a hedging strategy creates a synthetic long put option on the futures contract. The ensuing discussion of option hedging strategies makes use of these results.

## Hedging with Interest Rate Futures Options

An option hedge combines a position in an option with a position in the underlying item in such a way that either the option protects the underlying item against loss or the position in the underlying item helps to offset losses resulting from the option. This section presents examples of two basic hedging strategies for options on money market futures.

# Hedging Investment Returns—Creating an Interest Rate Floor

Buying a call option on an interest rate futures contract establishes a maximum purchase price for the futures contract, thereby establishing a maximum purchase price for the underlying interest-bearing security. Since the price of an interest-bearing security varies inversely with market interest rates, establishing a maximum purchase price amounts to fixing a minimum yield on the anticipated investment. The following example illustrates the mechanics of a hedge undertaken to fix a minimum yield, or interest rate "floor," on a planned investment.

Suppose that on April 1 an investment fund manager learns that the fund will receive a \$1 million cash inflow in June. The manager plans to invest these funds

in a three-month Treasury bill but is concerned that market interest rates might fall in the intervening period, resulting in a lower future return on the planned investment. He can fix a minimum interest rate on the planned investment either by (1) buying a Treasury bill futures contract or (2) buying a futures call option.

Result of a Futures Hedge Suppose the fund manager buys a June Treasury bill futures contract at 95.89 to lock in a discount yield of 4.11 percent when the contract matures on June 24. Fixing the future return in this manner carries two potential disadvantages. First, the fund forgoes the opportunity to earn a higher return if interest rates rise. Second, the futures hedge exposes the fund to the risk of margin calls before it receives the expected inflow of funds.

An Option Hedge Alternatively, the fund manager could buy a call option on June Treasury bill futures. Suppose a call option on June Treasury bill futures with a 95.50 strike price can be bought for a premium of 40 basis points. The effective maximum purchase price established by the strategy of buying a futures call in this case is 95.90, the total of the strike price and the call premium, resulting in an investment floor of 4.10 percent.

The mechanics of the option hedge in this example are complicated by the fact that Treasury bill futures options expire approximately one month before the underlying futures contract matures. Options on June 1992 Treasury bill futures, for example, expire on May 15. If the option expires in-the-money, the fund manager would need to exercise the option and hold the resulting long futures position to maturity in June to assure the 4.10 percent investment floor. If interest rates rise and the option expires out-of-the-money, however, the manager would again face the risk that rates might decline during the month-long period between the May 15 option expiration date and the date the bill is to be purchased in June.

There are at least three ways the hedger in this example can minimize the risk exposure resulting from an option expiring out-of-the-money. First, he can reduce the probability of such an event by buying an option that is deep in-the-money. Such a strategy reduces the opportunity to earn a higher return in the event of a rise in market interest rates, however, and so may not offer a hedger any significant advantages over a simple futures hedge. Second, if the option does expire out-of-the-money, the fund can buy a Treasury bill futures contract to lock in the higher interest rate prevailing on the option expiration date. Finally, the hedger could buy an option on September Treasury bill futures and sell the option on the transaction date. A hedger pursuing this latter strategy would be exposed to "basis risk," however, because the option would need to be sold before expiration, and changes in the value of the option do not always correlate perfectly with changes in spot Treasury bill rates. As a result, such a hedge could not assure a minimum future investment rate with certainty. Basis risk can arise

whenever the expiration date on an option used to hedge some underlying risk differs from the planned transaction date.

Figure 7 depicts the payoff at expiration to the option hedge described above under the assumption that the hedger always takes on a long position in June Treasury bill futures once the option expires and holds it to maturity. Since the investment fund could fix the future investment rate at 4.11 percent by buying a futures contract on April 1, it can be viewed as having an inherent, or unhedged, exposure equivalent to being short a June Treasury bill futures contract. Accordingly, the fund's inherent exposure can be expressed as

$-(F - 95.89)$

Figure 7a illustrates the fund's inherent exposure as a function of June Treasury bill futures prices. If the fund remains unhedged its profitability will vary directly with market interest rates, falling when market interest rates fall (thereby driving up Treasury bill prices) and rising when interest rates rise.

Taking on a long position in a 95.50 strike price call option on Treasury bill futures that sells for a premium of 0.40 produces a net profit at expiration of

$\max (0,F - 95.50) - 0.40$

Figure 7b depicts this net profit as a function of underlying futures prices. The buyer loses the entire 40 basis point call premium if Treasury bill futures prices fall below the 95.50 strike price—that is, if the Treasury bill futures discount rate rises above 4.50 percent. When futures prices are above the strike price the

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/0dd82cc9-82bb-421a-abee-63a93e8273b0/46555b32ddb4e718304c03bade3b52aa4d2da276a84ff4f4f7260122731d247f.jpg)  
FIGURE 7  
Using an Interest Rate Futures Call Option to Hedge a Planned Investment

option offers a payoff similar to the payoff to a futures contract, except that the returns earned by the option holder are reduced by the 40 basis point option premium. The break-even price is 95.90.

Combining the purchase of a call option with the short inherent exposure in the underlying futures contract effectively creates a synthetic put option, illustrated in Figure 7c. To understand why, consider the effect that buying a call option has on the fund's profits. The fund's hedged profits are determined by the sum of the last two expressions:

$$
- (F - 9 5. 8 9) + \max  (0, F - 9 5. 5 0) - 0. 4 0.
$$

When  $F < 95.50$  the call option expires out-of-the money. In this case the intrinsic value of the option is zero so that the hedged return is

$$
- (F - 9 5. 4 9),
$$

which is just the same as the unhedged payoff less the 40 basis point option premium. When  $F \geq 95.50$  the option expires in-the-money and the return earned by the fund is

$$
- (F - 9 5. 8 9) + (F - 9 5. 5 0) - 0. 4 0 = - 0. 0 1.
$$

These last two results can be combined and the resulting payoff to the hedged position can be compactly written as

$$
\max  (0, 9 5. 5 0 - F) - 0. 0 1,
$$

which is the net payoff at expiration to buying a Treasury bill futures put option with a strike price of 95.50 at a premium of 1 basis point.

Thus, combining the purchase of a call option with an inherent short position in the underlying futures contract effectively creates a synthetic put option. The implicit premium on the synthetic put is determined by the difference between the 4.11 percent rate that could have been locked in by buying a futures contract and the 4.10 percent floor rate established by buying a Treasury bill futures call option. Notice that the implicit premium on the synthetic put, which is out-of-the money at the time the hedge is created, is just equal to the time value of the explicit call option premium. The implicit premium is quite small in this example, costing only one basis point, or \$25. In most cases, however, one would expect the implicit premium to be greater.

Hedging Borrowing Rates—Creating an Interest Rate Cap Buying a put option on an interest rate futures contract establishes a minimum sales price for the underlying futures contract, thereby fixing a minimum sales price for the underlying interest-bearing security. Since fixing a minimum sales price on an interest-bearing security amounts to fixing a maximum interest rate on that security, buying a put option on an interest rate futures contract can effectively establish a maximum borrowing rate on a variable-rate loan indexed to market

interest rates. If interest rates fall before the loan is taken out the hedger loses all or part of the put premium, but can borrow at the new, lower market rate. If interest rates rise, the option payoff offsets the added interest rate expense.

As an example, suppose that on March 16 a firm takes out a floating-rate loan priced at 2.0 percentage points over three-month LIBOR, and assume that the interest rate on the loan is scheduled to be reset on June 15, the same date that June Eurodollar futures and futures options expire. The firm's treasurer, concerned that market rates might rise, decides to hedge future borrowing costs.

A Futures Hedge Suppose a June Eurodollar futures contract can be sold at a price of 95.14, corresponding to a futures LIBOR of 4.86 percent. The total hedged borrowing cost in this case would be 6.86 (4.86 LIBOR + 2.00 margin) percent.

An Option Hedge Now consider the strategy of buying a Eurodollar futures put option. Suppose the firm purchases an out-of-the-money put option with a strike price of 95.00 at a premium of 17 basis points. Buying a Eurodollar futures put with a strike price of 95.00 fixes a maximum LIBOR of 5.00 percent, thereby fixing an effective maximum borrowing rate of 7.00 percent. The option premium adds 17 basis points to the cost of hedge, so the ultimate effective "cap" rate obtained through this strategy is 7.17 percent.

Figure 8 illustrates the effect of the option hedge on the firm's profits. Without hedging, the firm implicitly is long a Eurodollar futures contract because, as noted above, it could hedge its exposure to changes in market interest rates by selling a contract. Thus, the firm's inherent, or unhedged, exposure can be characterized by the expression

F-95.14.

Figure 8a illustrates the firm's inherent, or unhedged, exposure as a function of Eurodollar futures prices.

The net profit at expiration to a long position in a 95.00 strike price Eurodollar futures put option bought at a premium of 17 basis points is

$\max (0,95.00 - F) - 0.17$

Figure 8b illustrates this payoff as a function of the underlying Eurodollar futures price index. The put premium subtracts 17 basis points from any payoff earned by exercising the option so the break-even price is  $F = 94.83$ .

Figure 8c depicts the firm's hedged profits as a function of Eurodollar futures prices. This illustration shows how combining a long position in a put option with the inherent short position in the underlying futures contract creates a

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/0dd82cc9-82bb-421a-abee-63a93e8273b0/49daaf6d342cee07eaa2250ddf570ac2cedc27e7f9bdc68f4c4ffcc48a7246b2.jpg)  
FIGURE 8  
Using an Interest Rate Futures Put Option  
to Hedge Borrowing Rates

synthetic Eurodollar futures call option. As before, the hedged payoff is obtained by summing the option payoff and the inherent exposure:

$$
(F - 9 5. 1 4) + \max (0, 9 5. 0 0 - F) - 0. 1 7.
$$

When  $F \leq 95.00$  the option expires in-the-money and the return to the hedged position is

$$
(F - 9 5. 1 4) + (9 5. 0 0 - F) - 0. 1 7 = - 0. 3 1.
$$

If  $F > 95.00$  the option expires out-of-the-money and the return to the hedged position is characterized by

$$
(F - 9 5. 1 4) - 0. 1 7 = F - 9 5. 3 1.
$$

Combining these two results yields the expression

$$
\max  (0, F - 9 5. 0 0) - 0. 3 1,
$$

which is the net payoff to a Eurodollar futures call option with a strike price of 95.00 bought for an implicit premium of 31 basis points.

The implicit premium is determined by the difference between the 5.17 percent cap rate established by buying the put option and the 4.86 percent interest rate that could have been locked in by selling a futures contract. This implicit premium reflects the sum of the cost of the purchased put option (0.17) and difference between the prevailing futures price and the strike price (95.14 - 95.00 = 0.14), the latter term being the intrinsic value of the synthetic

call. The return earned using the option hedge is greater than the return to the futures hedge when LIBOR falls below 4.69 percent, which is just the 4.86 percent futures rate less the 17 basis point put premium.

## Concluding Comments

Options can be viewed as basic building blocks that can be combined to replicate an almost endless variety of payoff patterns. This chapter has focused on futures options. However, the use of option-like derivatives in the money market is not limited to options on interest rate futures. In addition to exchange-traded options, custom-tailored over-the-counter interest rate options—known as caps, collars, and floors—have become increasingly popular in recent years. The basic concepts examined in this chapter provide the background necessary to understand the uses of these new instruments, which are discussed in the next chapter.

## References

Chance, Don M. An Introduction to Options and Futures. Chicago, III.: The Dryden Press, 1989.  
Grabbe, J. Orlin. International Financial Markets, 2d ed. New York: Elsevier Science Publishing, 1991.  
Hull, John. Options, Futures, and Other Derivative Securities. Englewood Cliffs, N.J.: Prentice Hall, 1989.  
Kawaller, Ira. "Put-Call Parity: The Foundation of Option Pricing," Chicago Mercantile Exchange Market Perspectives, vol. 6 (September 1988), pp. 1 and 4-5.

The information in this chapter was last updated in 1993. Since the money market evolves very rapidly, recent developments may have superseded some of the content of this chapter.

Federal Reserve Bank of Richmond

Richmond, Virginia

1998

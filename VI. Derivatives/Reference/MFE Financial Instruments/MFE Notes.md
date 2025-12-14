---
title: "MFE Notes: Options"
aliases:
  - Options
parent_directory: MFE Financial Instruments
tags: []
key_concepts: []
cssclasses:
  - academia
linter-yaml-title-alias: Options
---

# Options

These notes describe the payoffs to European and American put and call options—the so-called plain vanilla options. We consider the payoffs to these options for holders and writers and describe both the time vale and intrinsic value of an option. We explain why options are traded and examine some of the properties of put and call option prices. We shall show that longer dated options typically have higher prices and that call prices are higher when the strike price is lower and that put prices are higher when the strike price is higher.

Keywords: Put, call, strike price, maturity date, in-the-money, time value, intrinsic value, parity value, American option, European option, early exercise, bull spread, bear spread, butterfly spread.

# 1 Options

Options are derivative assets. That is their payoffs are derived from the payoff on some other underlying asset. The underlying asset may be an equity, an index, a bond or indeed any other type of asset. Options themselves are classified by their type, class and their series. The most important distinction of types is between put options and call options. A put option gives the owner the right to sell the underlying asset at specified dates at a specified price. A call option gives the owner the right to buy at specified dates at a specified price. Options are different from forward/futures contracts as a put (call) option gives the owner right to sell (buy) the underlying asset but not an obligation. The right to buy or sell need not be exercised. There is also a last date on which the right may be exercised and this is known as

the expiration date or maturity date. The specified price is called the strike price or exercise price.

The most commonly traded option is the American type which may be exercised at any trading date prior to or at the expiration date. There are also options of the European type which may only be exercised at the expiration date. Thus an American put and a European put are different types of option. Another type is the Bermudan option which is half way between the European and American option as it can only be exercised on a limited number of pre-specified days prior to maturity. We shall focus mainly on European options as there is an important parity condition between the prices of European put and call options and we shall explain how the prices of American options differ from their European counterparts.

The owner or buyer of an option is often called the holder and the seller of an option is termed the writer. Thus at date of sale the holder pays the writer the price of the option. For a call option there may be a subsequent transaction at the expiration date where the writer provides the underlying asset to the holder in exchange for the agreed strike price. This subsequent transaction is made at the instigation of the holder and will only be undertaken if it is in the holder's interest. The holder's right to buy the stock at or prior to the expiration date need not be exercised. For a put option, the subsequent transaction is that the holder provides the underlying asset in return for the agreed strike price from the writer.

The difference between American and European options is simply what choices the holder has prior to the expiration date. The holder of the European option has, at any point prior to the expiration date, the choice either to sell the option for the prevailing market price or to retain it. The holder of an American option has, at any point prior to the expiration date, three choices: either to sell the option for the prevailing market price, to retain it or to exercise it. The later case is said to involve early exercise. This terminology is not meant to imply that there is anything sub-optimal about

exercising before the expiration date. Indeed we will give below examples where the American option will be exercised early.

A class of option is all options of a particular type on the same underlying asset. Thus all American put options on IBM stock form one class. European call options on the FTSE 100 index form another class. A class will involve a variety of different strike prices and maturity dates. Most options are exchange traded and the exchange will specify a range of maturity dates, usually every two months, and a range of strike prices, usually centered around the prevailing market price. An option series is simply the options of a given class with the same strike price and maturity date.

# Payoff at Maturity

Let  $X$  be the exercise price and  $S_{T}$  the price of the underlying stock at the maturity date. Then the payoff to a put option is

$$
p _ {T} = \left\{ \begin{array}{l l} X - S _ {T} & \text {i f} S _ {T} \leq X \\ 0 & \text {i f} S _ {T} > X. \end{array} \right.
$$

or more simply  $p_T = \max [X - S_T, 0]$ . If  $S_T < X$ , then the put is said to finish in-the-money and the option will be exercised. The holder of this option will buy the underlying stock at a price of  $S_T$  and exercise their right to sell it to the writer at the strike price of  $X$ , to make a profit of  $X - S_T$ . If  $S_T > X$ , the option is said to finish out-of-the-money and exercising the right to sell the underlying asset would result in a loss. So the right to sell won't be exercised. The payoff will be zero in this case. Hence with an option the payoff is never negative. Assets with non-negative payoffs are known as limited liability assets.

Suppose that you hold a put option on a stock  $PDQ$ . The exercise price is 1000 and the expiration date is in four weeks. The current stock price of  $PDQ$  is 1109. If the stock is still at 1109 in four weeks time, you we

let the option expire without exercising your right to sell at 1000. If you exercised your right to sell you would have to deliver the stock, which would cost you 1109, and you would receive only 1000 in return. Clearly exercising the option to sell would result in a loss. You will not exercise and your payoff is  $\max [X - S_T, 0] = \max [1000 - 1109, 0] = 0$ . However, if  $PDQ$  does badly and the stock price falls to 900 after four weeks, you as holder of the put option will do well. In that case you can exercise your right to sell, buying the stock at the reduced price of 900 and selling it to the holder at 1000. The payoff at maturity is  $\max [X - S_T, 0] = \max [1000 - 900, 0] = 100$  per unit.

Equally the payoff to the holder of a call option is

$$
c _ {T} = \left\{ \begin{array}{l l} 0 & \text {i f} S _ {T} \leq X \\ S _ {T} - X & \text {i f} S _ {T} > X. \end{array} \right.
$$

or more simply  $c_{T} = \max [0, S_{T} - X]$ . In this case the call finishes in the money if  $S_{T} > X$  as the option holder can exercise the right to buy the underlying asset at a price of  $X$  when it is worth the greater amount  $S_{T}$ . If  $S_{T} \leq X$ , the call option finishes out of the money and the right to buy will go unexercised.

The writer of the call option has exactly the reverse of the payoff to the holder. The writer of the call has a payoff of  $-c_{T} = -\max[0, S_{T} - X] = \min[0, X - S_{T}]$ . When the option is exercised the writer will have to deliver a stock worth  $S_{T}$  and receives a payment of  $X$  from the holder. Since  $S_{T} > X$ , the writer makes a loss of  $X - S_{T}$ . Likewise the payoff at maturity to the writer of a put option is  $-p_{T} = -\max[X - S_{T}, 0] = \min[S_{T} - X, 0]$ .

The intrinsic value or parity value of an option at time  $t$  is the payoff to the option if the current date were the maturity date. Thus the intrinsic value of the call option at time  $t$  is  $\max[0, S_t - X]$  where  $S_t$  is the current price of the underlying asset and the intrinsic value of a put option is  $\max[X - S_t, 0]$ .

An American option will always trade at a price at or above its intrinsic value, since with an American option it is always possible to exercise the

option now and realise the intrinsic value. The difference between the price of an option and its intrinsic value is known as the premium or time value of the option. Thus the price of an option is the sum of its intrinsic value plus its premium

$$
\mathrm {p r i c e o f o p t i o n} = \mathrm {i n t r i n s i c v a l u e} + \mathrm {t i m e v a l u e}.
$$

If an option is initially set up at date 0 when the stock price is  $S_0$  and with the strike price set such that  $X = S_0$  then the intrinsic value of the option is 0 and the premium and price are equivalent. Many options were historically set up with the strike price equal to the prevailing price of the underlying asset (or at-the-money as it is called) and this accounts for why the option price is sometimes referred to as the option premium. We will use the term time value rather than premium to avoid confusion.

# Why trade options?

It is easy to see why it might be desirable to trade options. Suppose you buy a call option with an exercise price equal to the current stock price. If the stock goes up in value, you can still buy at the low current price and sell at the new higher price. And if you are unlucky and the price falls, then you simply don't exercise the option. All you lose is the price you paid for the option in the first place. You only buy the stock when the price has gone up. You get all the upside benefits and eliminate the downside risk. You don't have to risk buying the stock in that hope that the price will rise. You simply buy the option which costs a fraction of the price of the stock itself.

Because you only pay for the stock at maturity, buying a call option is equivalent to borrowing most of the money to buy the stock and repaying only if the bet goes well. Thus a call option is a highly levered or geared position in the stock and thus with a return that is higher but also highly risky.

To see this consider the following simple example. The current price of the stock is 100 and a call option on the stock with a strike price of 100 costs 30. Suppose that the stock price at maturity has risen to 175. The rate of return on the stock is a handsome  $75\%$ . However the return on the call option is greater still. If the stock price rises to 175 the call option can be exercised to make a profit of  $175 - 10 = 75$ . Since the call costs 30 the rate of return is  $\frac{75}{30} - 1 = 1.5$  or  $150\%$ . The high leverage makes possible a high rate of return on the relatively small investment. On the other hand suppose the stock finishes out of the money at 75. Owning the stock results in a rate of return of  $-25\%$ . The call option however, expires valueless, so the rate of return on the investment in the call option is  $-100\%$ . Not such a good prospect.

Suppose these are the only two possible values for the stock at maturity and suppose that  $\pi$  is the probability the stock price rises and  $(1 - \pi)$  is the probability it falls. Suppose that the interest rate over the period is  $25\%$ . The risk premium on the stock is

$$
r p _ {S} = 7 5 \pi + (- 2 5) (1 - \pi) - 2 5 = 1 0 0 \pi - 5 0
$$

and the risk premium on the call option is

$$
r p _ {C} = 1 5 0 \pi + (- 1 0 0) (1 - \pi) - 2 5 = 2 5 0 \pi - 1 0 0.
$$

It is clear that the risk premium on the call is 2.5 times the risk premium for the stock irrespective of the value of  $\pi$ . This ratio is known as the option elasticity and it can be shown that for a call option it is always greater than one. Thus the call option is always riskier than the underlying stock. The high risk means that options are good and cheap ways to hedge risk as we shall see later on.

<table><tr><td>Option</td><td></td><td>… May</td><td>Calls Aug</td><td>… Nov</td><td>… May</td><td>Puts Aug</td><td>… Nov</td></tr><tr><td>Tesco</td><td>160</td><td>22½</td><td>27</td><td>31</td><td>7</td><td>10½</td><td>14½</td></tr><tr><td>(*176)</td><td>180</td><td>11</td><td>17</td><td>23</td><td>16</td><td>19½</td><td>25</td></tr><tr><td>Rolls Royce</td><td>180</td><td>22</td><td>27</td><td>30½</td><td>8</td><td>12½</td><td>16</td></tr><tr><td>(*194½)</td><td>200</td><td>11</td><td>17½</td><td>21½</td><td>18</td><td>23</td><td>26½</td></tr></table>

Table 1: Call and Put Prices

# 2 Properties of Puts and Calls

Table 1 gives the prices of options on two stocks, Tesco and Rolls Royce given in the *Financial Times* on Tuesday March 6th 2000. The starred number in the left column gives the closing stock price on the previous day and the paper reports the prices for puts and calls of three maturities, May, August and November, for strike prices on either side of the closing price.

Three things are immediately obvious from this table. First the option prices increase with the maturity date for any given strike price. Second the price of calls falls with the strike price for any given maturity date and third the price of puts rises with the strike price with any given maturity date.

For a given strike price, the table shows that the price of calls increases with the date to maturity. That is  $C_t(T_2) \geq C_t(T_1)$  for  $T_2 > T_1$  where  $C_t(T_1)$  is the price of an American call option at date  $t$  that matures at date  $T_1$  and  $C_t(T_2)$  is the an option of the same type and class and with the same strike price but with a longer maturity.<sup>1</sup> From the table we can see that August calls on Tesco stock with a strike price of 160 trade at 27 but the longer maturity November calls trade at 31. There would be a simple arbitrage opportunity if  $C_t(T_1) > C_t(T_2)$  for  $T_2 > T_1$ . Suppose that the prices were reversed and the

November call on Tesco trades at 27 and the August call trades at 31. Then buying the lower priced November call and writing the August call yields a net inflow of 4 today. Either the August call expires or is exercised prior to maturity. In either case its value is  $\max[0, S_{t'} - X]$  where  $t'$  is the maturity date in August or some time prior to the maturity date when the call is exercised. The value of the position is  $C_{t'}(Nov) - \max[0, S_{t'} - X]$ . If this is positive then sell the November call at date  $t'$  to make a profit. Otherwise exercise the November call. Exercising the call yields the same value of  $\max[0, S_{t'} - X]$  no matter what the maturity date. So there is a completely offsetting gain from the bought November call and the written August call. In either case an arbitrage profit has been made. Note that this does not say anything about how the call value changes over time until maturity. It only compares prices at a particular date of options with different expiration dates. Neither does the argument work for European options which cannot be exercised early. However as a empirical matter European options do demonstrate the same pattern of prices rising with date to maturity.

Equally clear is that a call with a lower strike price must command a higher price. Thus  $C_t(X_1) \geq C_t(X_2)$  if  $X_2 > X_1$ . This can be seen from Table 1. For example, May calls on Rolls-Royce with a strike price of 200 are worth 11 but the May calls with the lower strike price of 180 are worth 22. This is simply because the call gives the holder the option to buy and the lower the exercise price at which the stock can be bought the more valuable is the option. If this were not true and  $C_t(X_1) < C_t(X_2)$  for  $X_2 > X_1$ , then there is an arbitrage opportunity and the appropriate response is a bull spread. The payoffs can be seen in Table 2. This strategy buys the call with the lower strike price of  $X_1$  and writes the call with the higher strike price of  $X_2$  leading to cash inflow now of  $C_t(X_2) - C_t(X_1) > 0$ . In each case the payoff at maturity is non-negative. Thus for European options  $c_t(X_1) \geq c_t(X_2)$  for  $X_2 > X_1$ . Equally suppose the options are of the American type, then if the written option is exercised early, the holder of that option will pay us  $X_2$  for the stock. If we exercise the bought option immediately, the stock can be

<table><tr><td>Position</td><td>ST&lt;X1&lt;X2</td><td>X1&lt;ST&lt;X2</td><td>X1&lt;X2&lt;ST</td></tr><tr><td>Long Call</td><td>0</td><td>ST-X1</td><td>ST-X1</td></tr><tr><td>Short Call</td><td>0</td><td>0</td><td>X2-ST</td></tr><tr><td>Overall</td><td>0</td><td>ST-X1&gt;0</td><td>X2-X1&gt;0</td></tr></table>

Table 2: Bull Spread

bought for  $X_{1}$  and then sold for  $X_{2}$  leading to a profit of  $X_{2} - X_{1}$ . Hence we have for American options  $C_t(X_1) \geq C_t(X_2)$  for  $X_{2} > X_{1}$ .

Another property that we can see from the table is that the differences in the call or put option prices for a given stock and maturity date is less than the difference between the strike prices. For example the difference in the option prices for November calls on Tesco stock is  $31 - 23 = 8$  which is less than the difference in strike prices, which is  $180 - 160 = 20$ . Thus for call options we have  $C_t(X_1) - C_t(X_2) \leq X_2 - X_1$  for  $X_2 > X_1$ . Indeed if this were not the case and  $C_t(X_1) - C_t(X_2) > X_2 - X_1$  there would again be an arbitrage opportunity. The strategy to exploit the arbitrage opportunity would be a bear spread where the option with the higher strike price is purchased and the lower strike price option sold, together saving the difference in the strike prices, that is buying  $(X_2 - X_1)$  risk free bonds with maturity at date  $T$  and an interest rate of  $r$  between the current date  $t$  and the maturity date. The payoffs from this strategy are given in Table 3 and the payoff is always positive at maturity and so the value of the portfolio  $V_t$  must itself be positive. Thus for European options  $V_t = c_t(X_2) - c_t(X_1) + (X_2 - X_1) > 0$ . If the options are American the value of the portfolio is  $V_t = C_t(X_2) - C_t(X_1) + (X_2 - X_1) > 0$  but we need to decide what to do if the written call is exercised prior to maturity. Suppose it is exercised at time  $t'$  when the stock price is  $S_{t'}$ . To meet our obligations on the written call we must buy the stock at  $S_{t'}$  and sell it at  $X_1$ . The purchased call is worth  $C_{t'}(X_2)$  at time  $t'$ . If  $C_{t'}(X_2) > S_{t'} - X_2$ , then we simply sell our call to cover our obligation and make a net profit and in addition have our risk-free bonds. If

<table><tr><td>Position</td><td>Value</td><td>ST&lt;X1&lt;X2</td><td>X1&lt;ST&lt;X2</td><td>X1&lt;X2&lt;ST</td></tr><tr><td>Long Call</td><td>Ct(X2)</td><td>0</td><td>0</td><td>ST-X2</td></tr><tr><td>Short Call</td><td>-Ct(X1)</td><td>0</td><td>X1-ST</td><td>X1-ST</td></tr><tr><td>Buy Bonds</td><td>(X2-X1)</td><td>(X2-X1)(1+r)</td><td>(X2-X1)(1+r)</td><td>(X2-X1)(1+r)</td></tr><tr><td>Overall</td><td>Vt</td><td>(X2-X1)(1+r)</td><td>(X2-ST)+r(X2-X1)&gt;0</td><td>r(X2-X1)&gt;0</td></tr></table>

Table 3: Bear Spread plus Savings

$C_{t'}(X_2) < S_{t'} - X_2$ , then we exercise the call, buying the stock at  $X_2$  and selling it at  $X_1 < X_2$ . The loss on this transaction is covered by closing out our bond position, so we retain the accumulated interest  $r'(X_2 - X_1)$  where  $r'$  is the interest rate from  $t$  to  $t'$ .

One property not apparent from the table is the relationship between options with more than two strike prices. Suppose that May puts on Rolls-Royce with a strike price of 190 are traded. It is to be expected that they trade at a price somewhere between the 8 and 18. Suppose that all the puts are European, then it is simple to show that the May European put with a strike of 190 cannot trade at a price above 13 which is the mid-way point between 8 and 18. To establish this claim consider another popular trading strategy the butterfly spread. This spread consists of a portfolio of buying one put with a strike price of 180, buying another put with a strike price of 200 and selling two puts with a strike price of 190. The payoffs at maturity to this strategy are given in Table 4. In each case the payoffs at maturity are positive so we can be assured that the value of the portfolio is non-negative. Hence  $26 - 2p_{t}(190) \geq 0$  or  $p_{t}(190) \leq 13$ . This argument again applies to American as well as European options. If the written puts are exercised early, then either exercise both puts immediately to cash-out the position or one or both of the puts can be sold if this yields a higher profit.

Using butterfly spreads in this way establishes that for puts with strike prices  $X_{1}$  and  $X_{3}$ , the price of the put with the mid-way strike price of

<table><tr><td>Position</td><td>Value</td><td>ST&lt;180</td><td>180 &lt; ST&lt;190</td><td>190 &lt; ST&lt;200</td><td>200 &lt; ST</td></tr><tr><td>1st Long Put</td><td>8</td><td>180 - ST</td><td>0</td><td>0</td><td>0</td></tr><tr><td>Short Puts</td><td>-2pt(190)</td><td>2(ST-190)</td><td>2(ST-190)</td><td>0</td><td>0</td></tr><tr><td>2nd Long Put</td><td>18</td><td>200 - ST</td><td>200 - ST</td><td>200 - ST</td><td>0</td></tr><tr><td>Overall</td><td>26 - 2pt(190)</td><td>0</td><td>ST-180</td><td>200 - ST</td><td>0</td></tr></table>

Table 4: Butterfly Spread with Puts

$\frac{1}{2} X_{1} + \frac{1}{2} X_{3}$  satisfies

$$
P _ {t} \big (\frac {1}{2} X _ {1} + \frac {1}{2} X _ {3} \big) \leq \frac {1}{2} P _ {t} (X _ {1}) + \frac {1}{2} P _ {t} (X _ {3}).
$$

A slightly more general interpretation would be to buy a fraction  $\lambda$  units of the put with strike price of  $X_{1}$  and buy a fraction  $(1 - \lambda)$  units of the put with strike price  $X_{3} > X_{1}$  and write one put with a strike price of  $X_{2} = \lambda X_{1} + (1 - \lambda)X_{3}$ . With this portfolio it can be found that

$$
P _ {t} (\lambda X _ {1} + (1 - \lambda) X _ {2}) \leq \lambda P _ {t} (X _ {1}) + (1 - \lambda) P _ {t} (X _ {2}).
$$

It therefore follows from arbitrage principles that the put price is a convex function of the strike price. Equally constructing a butterfly spread for calls also shows that the call price is a convex function of the strike price.

# 3 Summary

We have seen how the payoffs to put and call options depend on the underlying assets and how the prices of puts and calls depend on the length of time to maturity and strike price. We shall explore other properties of option prices and ultimately derive an expression for how option prices depend on the strike price, time to maturity, interest rate, volatility and current price of the underlying asset. Indeed we shall see how any derivative asset can be priced.

# Options

These notes consider the way put and call options and the underlying can be combined to create hedges, spreads and combinations. We will consider the parity condition that applies for put and call option and consider arbitrage bounds that apply to the prices of puts and calls.

Keywords: American option, European option, early exercise, put-call parity, hedge, spread, combination, bull spread, bear spread, strap, arbitrage bounds, covered call, protective put.

Reading: Chapters 9 and 10 from Hull.

# 1 Option Trading Strategies

There are basically three varieties of trading strategies. A hedge combines an option with an underlying stock to protect either the option or the stock against loss. A spread combines options of the same class but different series, where some are bought and others written. A combination combines options of different types, both bought or both written, on the same underlying stock.

# A hedge

Suppose that you write a call option. The payoff to a call option at maturity is  $\max[0, S_T - X]$  where  $X$  is the strike price and  $S_T$  is the price of the underlying at maturity. Your payoff at maturity having written the call is therefore  $\min[0, X - S_T]$ . If the price of the underlying rises above the strike price you will make a loss. Moreover, these losses are potentially unlimited.

If the price rises far above the strike price you are in a very exposed position. You may want to hedge or cover this risk. The obvious way to do so is to buy the stock which you will be obliged to deliver if the call is exercised. Taking a long position in the stock to hedge a written call is known as writing a covered call.

The payoff at maturity to writing a covered call is  $\min[S_T, X]$ . This is far less risky than the naked short position in the call itself as now the worst that can happen is that you sell the underlying at a price below its market value. Of course the hedged position is costly, it costs  $S_t - c_t$ , whereas the naked position has a positive initial inflow of cash of  $c_t$  the price of the call option.

Likewise if you buy a put option there will loss if the price of the underlying rises equal to the cost of the put option  $p_t$ . The payoff at maturity will be  $\max[0, X - S_T]$ . However, you will have to buy the stock if you wish to exercise the right to sell at the strike price  $X$ . Thus you may wish to buy the stock in advance at the cost of  $S_t$ . In this case the payoff at maturity is  $\max[S_T, X]$  and the initial cost is  $S_t + p_t$ . Going long in the put and the stock is known as a protective put strategy.

# A spread

There are many examples of spreads. Vertical spreads use options of the same maturity but different strike prices; horizontal spreads use options with the same strike prices but different maturities and diagonal spreads use option with both different strike prices and maturities.<sup>1</sup>

One popular type of vertical spread is the bull spread which is a position taken by an investor who thinks that the price of the underlying will rise.

<table><tr><td>Position</td><td>ST&lt;X1&lt;X2</td><td>X1&lt;ST&lt;X2</td><td>X1&lt;X2&lt;ST</td></tr><tr><td>Long Call</td><td>0</td><td>ST-X1</td><td>ST-X1</td></tr><tr><td>Short Call</td><td>0</td><td>0</td><td>X2-ST</td></tr><tr><td>Overall</td><td>0</td><td>ST-X1&gt;0</td><td>X2-X1&gt;0</td></tr></table>

Table 1: Bull Spread

A bull spread can be created by buying a call with a low strike price and writing a call with a higher strike price. Suppose that the written call has a strike price of  $X_{2}$  and the long call has a strike price of  $X_{1} < X_{2}$ . The payoffs at maturity are given in the Table 1. The value of the spread is  $c^{1} - c^{2}$ , where  $c^{1}$  is the price of the call option with a strike price of  $X_{1}$  and  $c^{2}$  is the price of the call option with a strike price of  $X_{2}$ . Since the bull spread always yields a non-negative payoff at maturity (it is a limited liability asset) it follows that  $c^{1} > c^{2}$ .

Another type of spread is a bear spread. A bear spread can be created by holding a put with a higher strike price and writing a put with a lower strike price. In this case the investor benefits if the markets is falling. This is in contrast to a bull spread where the investor gains when the market rises.

Exercise: An investor buys a March put on Reed Elsevier with a strike price of 649 for a price of 55.5 and writes a March put on Reed Elsevier with a strike price of 609 for a price of 34. Calculate the payoff now and the possible payoffs in March when the puts expire. Draw a table and a diagram to illustrate the payoffs.

# A combination

A combination involves taking a position in both puts and calls on the same underlying asset. One particular combination is a strap. A strap consists of a long position in two calls and one put with the same strike price and

<table><tr><td>Position</td><td>Value</td><td>ST&lt;X</td><td>X&lt;ST</td></tr><tr><td>Long Call</td><td>ct</td><td>0</td><td>ST-X</td></tr><tr><td>Short Forward</td><td>-vt</td><td>X-ST</td><td>X-ST</td></tr><tr><td>Overall</td><td>ct-vt</td><td>X-ST</td><td>0</td></tr></table>

Table 2: Put-Call Parity

expiration date. This position is appropriate if it is thought that there is likely to be a large change in the price of the underlying but the direction of change is unknown. However it is thought that an increase is more probable than a decrease. The payoff at maturity from the strap is  $X - S_{T}$  if  $S_{T} < X$  and  $2(S_{T} - X)$  if  $S_{T} > X$ .

# 2 Put-Call Parity Condition (European)

Consider buying a call option with a strike price of  $X$  and a maturity date of  $T$  and at the same time going short in a forward contract on the same underlying and with a delivery price of  $X$ .

The overall position from this portfolio is the same as a long position in an equivalent put option on the same underlying with the same strike price and maturity date. Thus the two portfolios must have equal values,  $c_{t} - v_{t} = p_{t}$  where  $v_{t}$  is the value of the forward contract. From our previous knowledge of forward contracts we know that  $v_{t} = S_{t} - (X / (1 + r))$ . Therefore

$$
c _ {t} + \frac {X}{(1 + r)} = p _ {t} + S _ {t} \tag {1}
$$

where  $r$  is shorthand for  $r_t^T$ . This condition is the put-call parity condition from European options. This equation is known as the put-call parity condition as it was first derived under the assumption that the options were at the money,  $S_t = X$  and that the interest rate was 0.

It can be seen directly from this equation that the portfolio which is long in the stock and long in the put option is equivalent to a portfolio which is long in the call and long in a discount bond with a face value of  $X$ .

Exercise: Check it out.

Another way to see this is as follows. Consider simultaneously buying a call and writing a put. If  $S_{T} > X$  then exercise the call for a profit of  $S_{T} - X$ . If  $X > S_{T}$ , then the put will be exercised resulting in a payoff of  $X - S_{T}$  for the holder and a payoff of  $S_{T} - X$  for the writer. Thus the portfolio of one call and one written put results in a payoff of  $S_{T} - X$  in all circumstances. The value of this payoff can be evaluated using the stochastic discount factor  $k$ . The value of the portfolio at time  $t$  is

$$
c _ {t} - p _ {t} = E [ \boldsymbol {k} \cdot (\boldsymbol {S} _ {T} - \boldsymbol {X}) ] = E [ \boldsymbol {k} \cdot \boldsymbol {S} _ {T} ] - X E [ \boldsymbol {k} ] = S _ {t} - \frac {X}{(1 + r)}
$$

since by definition the appropriately discounted value of the stock price at time  $T$  is the stock price now,  $S_{t}$ , and  $E[k]$  is the appropriate discount factor. Again we have the same put-call parity condition.

To labour the point once more remember that the payoff at maturity from writing a covered call is  $\min[S_T, X]$ . Suppose that in addition you go short in a risk-free bond with a face value of  $X$ . The overall payoff at maturity is  $\min[S_T - X, 0]$ , the same as writing a put option. The value of this portfolio is  $S_t - c_t - \frac{X}{(1 + r)}$ , which must equal the value of writing the put option,  $-p_t$ .

# 3 Arbitrage Bounds

We will know consider the payoff to the option prior to maturity. We will establish bounds for the option value prior to maturity.

The intrinsic value or parity value of an option at time  $t$  is the payoff to the option if the current date were the maturity date. Thus the intrinsic

value of the call option at time  $t$  is  $\max [0, S_t - X]$  where  $s_t$  is the current price of the underlying asset and the intrinsic value of a put option is  $\max [X - S_t, 0]$ .

An American option will always trade at a price at or above its intrinsic value, since with an American option it is always possible to exercise the option now and realise the intrinsic value. The difference between the price of an option and its intrinsic value is known as the premium or time value of the option. Thus the price of an option is the sum of its intrinsic value plus its premium

$$
\text {p r i c e} = \text {i n t r i n s i c v a l u e} + \text {t i m e v a l u e}.
$$

If an option is initially set up at the money,  $S_0 = X$  then the intrinsic value of the option is 0 and the premium and price are equivalent. This accounts for why the option price is sometimes referred to as the premium. We will use the term time value to avoid confusion.

A European call option also has a positive time value. That is the price of a European call option cannot be less than its intrinsic value. Remember that the payoff to the call option is  $\text{Max}[S_T - X, 0]$ . The call can be valued using the stochastic discount factors  $k$ . Thus the value of the call option at time  $t$  is  $c_t = E[k \cdot \text{Max}[S_T - X, 0]]$ . Clearly

$$
c _ {t} \geq E [ k \cdot (S _ {T} - X) ] = E [ k \cdot S _ {T} ] - X E [ k ] = S _ {t} - \frac {X}{(1 + r)}
$$

where the first inequality comes from the definition of the maximum and the other equalities follow as  $E[k \cdot S_T] = S_t$ , the stochastically discounted value of the stock at maturity is its current value, and the fact that  $E[k] = \frac{1}{(1 + r)}$ . Equally since  $S_T \geq 0$  and  $X \geq 0$ , it follows that  $\text{Max}[S_T - X, 0] \leq S_T$ , so  $c_t \leq E[k \cdot S_T] = S_t$ . Since the call cannot command a negative price we have for the arbitrage bounds for a call option

$$
S _ {t} \geq c _ {t} \geq \max  \left[ S _ {t} - \frac {X}{(1 + r)}, 0 \right]. \tag {2}
$$

<table><tr><td>Position</td><td>Value</td><td>ST&lt;X</td><td>X&lt;ST</td></tr><tr><td>Write Call</td><td>-ct</td><td>0</td><td>X-SST</td></tr><tr><td>Buy Stock</td><td>St</td><td>ST</td><td>ST</td></tr><tr><td>Overall</td><td>St-ct</td><td>ST</td><td>X</td></tr></table>

Table 3: Call Upper Bound:  $S_{t}\geq c_{t}$

Since the strike price on the RHS is discounted we have  $\frac{X}{(1 + r)} < X$ , so that

$$
c _ {t} \geq \max \left[ S _ {t} - \frac {X}{(1 + r)}, 0 \right] > \max [ S _ {t} - X, 0 ]
$$

for  $t < T$  and  $r > 0$ , so the European call has value greater than its intrinsic value at any date prior to maturity.

To see how the inequalities in (2) can be derived without using the stochastic discount factor first let's consider the upper bound on the European call option. The value of the call cannot be greater than the value of the stock. This is obvious because the call option only gives you the right to buy the stock. If the call option cost more than the stock, it would simply be cheaper to buy the stock now and have nothing further to pay. To see this more clearly consider writing a covered call, that is buy the stock and write a call option. The payoff now is  $c_{t} - S_{t}$ , which is positive if the call price is greater than the current stock price. At maturity, either the call goes unexercised, if  $S_{T} < X$ , and we are left with the stock with value of  $S_{T}$ , or the call is exercised, in which case we give up the stock we own for the agreed strike price of  $X$ . Either way we end up with a positive payoff at maturity, so the value of the portfolio must be positive  $S_{t} - c_{t} > 0$  if  $X > 0$  or  $S_{T} > 0$ . If  $c_{t} > S_{t}$  there is an arbitrage possibility formed by writing a covered call. The payoffs are summarised in the Table 3.

To see the lower bound on the call option,  $c_{t} \geq S_{t} - \frac{X}{(1 + r)}$  recall that we have already shown that a long position in the call option with a strike price of  $X$  combined with a short position in a forward contract on the same

<table><tr><td>Position</td><td>Value</td><td>ST&lt;X</td><td>X&lt;ST</td></tr><tr><td>Buy Call</td><td>ct</td><td>0</td><td>ST-X</td></tr><tr><td>Sell Stock</td><td>-St</td><td>-ST</td><td>-ST</td></tr><tr><td>Buy Bond</td><td>X(1+r)</td><td>X</td><td>X</td></tr><tr><td>Overall</td><td>ct-St+X(1+r)</td><td>X-ST</td><td>0</td></tr></table>

Table 4: Call Lower Bound:  $c_t \geq S_t - \frac{X}{(1 + r)}$

underlying and with a delivery price of  $X$  is equivalent to a long position in a put option with the same strike price. A short position in the forward contract with a delivery price of  $X$  is itself equivalent to selling the stock short now and buying a risk-less bond with a face value of  $X$ . The payoffs are summarised in Table 4. The portfolio has a payoff of 0 if  $X < S_{T}$ : the bond pays out  $X$  and the call is exercised using the bond payoff to pay the strike price and the purchase of the stock closes out the short position. The portfolio has a payoff of  $X - S_{T}$  if  $S_{T} < X$  as the call option goes unexercised. Thus the portfolio replicates the put option and in particular never has a negative payoff. The value of the portfolio must therefore be positive by the no-arbitrage principle,  $c_{t} \geq S_{t} - \frac{X}{(1 + r)}$ .

An American option cannot be less valuable than the equivalent European option as the American option provides all the same rights as the European option and the opportunity to exercise early. Thus  $C_t \geq c_t$  and  $P_t \geq p_t$ . However, although it is possible to exercise an American call option on a non-dividend paying stock prior to maturity, it is never optimal to do so. This is because the European call option has a positive time value and thus its price is greater than its intrinsic value. Since  $C_t \geq c_t > S_t - X$  for  $t < T$ , it will always be better to sell the call option and get  $C_t$  rather than exercise it and get  $S_t - X$ . Thus the option to exercise the American option early is redundant and the American and European options on non-divided paying assets are equivalent and hence must trade at the same price,  $C_t = c_t$ .

The qualification that the underlying asset should be non-dividend paying is important. It may be optimal to exercise an American option early if the underlying asset is a dividend paying stock. Let  $D_{t}$  denote the present value of dividends paid on the underlying during the remainder of the options life. Then the lower bound for the call option is  $S_{t} - D_{t} - \frac{X}{(1 + r)}$ . If  $D_{t}$  is large enough, then this lower bound can below the intrinsic value of  $S_{t} - X$ . In this case it may be optimal to exercise early. To take an extreme case suppose that the call is in the money but the firm on which the option is written is unexpectedly to be liquidated and all the asset value is to be paid out in dividends. Then after the dividend payment, the stock is worthless and the call option can never be in the money. In this case it is best to exercise early and take the positive value of exercise now.

By analogy the arbitrage bounds for a European put option on a non-dividend paying stock with a payoff of  $Max[X - S_T, 0]$  are

$$
X \geq p _ {t} \geq \max \left[ \frac {X}{(1 + r)} - S _ {t}, 0 \right].
$$

Note that an American put option cannot be less than its intrinsic value, so the arbitrage bounds for an American put option are

$$
X \geq P _ {t} \geq \max [ X - S _ {t}, 0 ].
$$

For an American put option early exercise can be optimal even if the underlying asset pays no dividends. To take an extreme example, suppose that  $S_{t} = 0$  but  $X > 0$ . It is impossible to gain more by waiting since the stock price cannot fall further. In addition the gain to be had by waiting is discounted at the risk-free rate, and if the interest rate is positive it is better to exercise now rather than wait. If exercise is ever optimal before maturity then  $P_{t} = X - S_{t}$  since if  $P_{t} > X - S_{t}$  it would be better to sell the option rather than exercise it.

Exercise: Find an arbitrage opportunity if  $p_t > X$ .

Exercise: Find an arbitrage opportunity if  $p_t < \frac{X}{(1 + r)} - S_t$ .

<table><tr><td>Position</td><td>Value</td><td>ST&lt;X</td><td>X&lt;ST</td></tr><tr><td>Buy Call</td><td>CT</td><td>0</td><td>ST-X</td></tr><tr><td>Write put</td><td>-Pt</td><td>ST-X</td><td>0</td></tr><tr><td>Short Stock</td><td>-St</td><td>-ST</td><td>-ST</td></tr><tr><td>Save X</td><td>X</td><td>X(1+r)</td><td>X(1+r)</td></tr><tr><td>Overall</td><td>CT-Pt-St+X</td><td>rX</td><td>rX</td></tr></table>

Table 5: American Put-Call Parity:  $C_t - P_t \geq S_t - X$

# 4 Put-Call Parity Condition (American)

There is a put-call parity condition for American options on non-dividend paying stocks. The condition however, is one of inequalities rather than equality and is given by:

$$
S _ {t} - \frac {X}{(1 + r)} \geq C _ {t} - P _ {t} \geq S _ {t} - X. \tag {3}
$$

The first inequality follows from three facts. First the parity condition for European puts and calls (equation (1)) that  $c_{t} - p_{t} = S_{t} - (X / (1 + r))$ . Second the fact that American call options are not exercised early, so  $C_t = c_t$  and third the fact that the American put cannot be worthless than the European put, that is  $P_{t} \geq p_{t}$ . Hence combining these three facts we get  $c_{t} - p_{t} = S_{t} - (X / (1 + r)) \geq C_{t} - P_{t}$ . To see the second inequality consider the portfolio of a long call, a short put, shorting the stock and saving  $X$ . The payoffs to this portfolio are summarised in the Table 5. Since the portfolio yields a certain return of  $rX$  at maturity, the portfolio must have a positive value at date  $t$ , and hence we can conclude that  $C_t - P_t \geq S_t - X$ .

Note the bounds in equation (3) are quite tight and become tighter the smaller is the interest rate  $r$ . If the interest rate is zero ( $r = 0$ ) then the inequalities in equation (3) become an equality

$$
C _ {t} - P _ {t} = S _ {t} - X.
$$

If in addition the option is set up at date  $t$  and the strike price is set so that the option is at-the-money (that is  $X = S_{t}$ ) then we have exact parity between the put and call prices for American options too and  $C_{t} = P_{t}$ .

# Forward and Futures Contracts

These notes explore forward and futures contracts, what they are and how they are used. We will learn how to price forward contracts by using arbitrage and replication arguments that are fundamental to derivative pricing. We shall also learn about the similarities and differences between forward and futures markets and the differences between forward and futures markets and prices. We shall also consider how forward and future prices are related to spot market prices.

Keywords: Arbitrage, Replication, Hedging, Synthetic, Speculator, Forward Value, Maintainable Margin, Limit Order, Market Order, Stop Order, Backwardation, Contango, Underlying, Derivative.

Reading: You should read Hull chapters 1 (which covers option payoffs as well) and chapters 2 and 5.

# 1 Background

From the 1970s financial markets became riskier with larger swings in interest rates and equity and commodity prices. In response to this increase in risk, financial institutions looked for new ways to reduce the risks they faced. The way found was the development of exchange traded derivative securities. Derivative securities are assets linked to the payments on some underlying security or index of securities. Many derivative securities had been traded over the counter for a long time but it was from this time that volume of trading activity in derivatives grew most rapidly.

The most important types of derivatives are futures, options and swaps. An option gives the holder the right to buy or sell the underlying asset at a specified date for a pre-specified price. A future gives the holder the

obligation to buy or sell the underlying asset at a specified date for a prespecified price. Swaps allow investors to exchange cash flows and can be regarded as a portfolio of futures contracts.

Options and futures are written on a range of major stocks, stock market indices, major currencies, government bonds and interest rates. Most options and futures in the UK are traded on the London International Financial Futures Exchange (http://www.liffe.com/) and most options and futures in the US are traded on the Chicago Board of Trade (http://www.cbot.com/). It is also possible to trade futures contracts on a range of different individual stocks from across the world at Euronext (http://www.universalsstockfutures.com/). Such exchange traded derivatives might be described as off-the-peg or generic as the details of the derivative are specified by the Exchange House. Other derivatives are traded over the counter. They are tailor-made and designed specifically to meet the needs of individual traders, the party and counter party.

Derivatives allow investors a great deal of flexibility and choice in determining their cash flows and thus are ideal instruments for hedging of existing risk or speculating on the price movements of the underlying asset. Thus for example it is possible to offset the risk that a stock will fall in price by buying a put option on the stock. It is possible to gain if a large change in the price of the underlying asset is anticipated even if the direction of change is unknown. It is also possible by using an appropriate portfolio of options to guarantee that you buy at the lowest price and sell at the highest price — a trader's dream made reality.

# 2 Forward Contracts

Forwards and futures contracts are a special type of derivative contract. Forward contracts were initially developed in agricultural markets. For example an orange grower faces considerable price risk because they do not know at what price their crops will sell. This may be a consequence of weather condi

tions (frost) that will affect aggregate supply. The farmer can insure or hedge against this price risk by selling the crop forward on the forward orange concentrate market. This obligates the grower to deliver a specific quantity of orange concentrate at a specific date for a specified price. The delivery and the payment occur only at the forward date and no money changes hands initially. Farmers can, in this way, eliminate the price risk and be sure of the price they will get for their crop. An investor might also engage in such a forward contract. For an example an investor might sell orange concentrate forward for delivery in March at 120. If the price turns out to be 100, the investor buys at 100 and delivers at 120 making a profit of 20. If the weather was bad and the price in March is 150, the investor must buy at 150 to fulfill her obligation to supply at 120, making a loss of 30 on each unit sold. The farmer is said to be a hedger as selling the orange concentrate forward reduces the farmer's risk. The investor on the other hand is taking a position in anticipation of his beliefs about the weather and is said to be a specula-tor. This terminology is standard but can be misleading. The farmer who does not hedge their price risk is really taking a speculative position and it is difficult to make a hard and fast distinction between the two types of traders.

# Why trade forward?

For an investor the forward market has both pros and cons. The advantage is that there is no initial investment. That is it costs nothing now to buy or sell forward. The disadvantage is that there is a change of suffering a large loss.

# The price of a forward contract

Let's consider a forward contract for a particular underlying asset, e.g. IBM stock, with a maturity date of  $T$ . The price of such a forward contract is easy to determine. In the absence of any transactions or storage cost the price of the forward contract is the future value of the current spot price.

<table><tr><td></td><td>Position</td><td>Cost Now</td><td>Payoff at Maturity</td></tr><tr><td>(1)</td><td>Long Underlying</td><td>S0</td><td>ST</td></tr><tr><td>(2)</td><td>Long Forward</td><td>0</td><td>(ST-F)</td></tr><tr><td>(3)</td><td>Short Forward</td><td>0</td><td>(F-ST)</td></tr><tr><td>(4)</td><td>Long Discount Bond</td><td>F/(1+r)</td><td>F</td></tr></table>

Table 1: Forward Price

Let  $F$  be the forward price and  $S_0$  be the current spot price and let  $r_0^T$  be the risk-free rate of interest from now until the maturity date  $T$ , then

$$
F = (1 + r _ {0} ^ {T}) S _ {0}.
$$

To simplify the notation denote  $r_0^T$  simply by  $r$ . Then  $F = (1 + r)S_0$ . To see that this formula is correct, let's consider the payoff and cost of the positions that can be taken on the stock, the forward contract and a risk-free discount bond with a face value of  $F$  and a maturity date of  $T$ . If we take a long position in the stock, the cost now is  $S_0$  and the payoff at the maturity date is  $S_T$ . We don't know what  $S_T$  will be since the payoff to the asset is uncertain. If we take a long position in the forward contract, the cost now is zero and the payoff at maturity is  $S_T - F$ . That is we are obligated to buy at  $F$  and the underlying asset can be sold for  $S_T$ . If  $S_T > F$ , then we buy at  $F$  and can immediately sell at  $S_T$  for a profit of  $S_T - F$ . If on the other hand  $S_T < F$  then we must buy at  $F$  but can only sell at  $S_T$  so we have a loss since  $S_T - F < 0$ . In addition suppose we buy the discount bond. It costs  $F / (1 + r)$  now and pays out the face value  $F$  at maturity. We can summarise all this information in Table 1.

Now consider the following trading strategy: go long in the forward contract and buy the discount bond. The payoff to the forward contract is  $(S_T - F)$ , you are committed to buy at  $F$  but can sell for  $S_T$ , and the payoff to the bond is simply  $F$ , so the total payoff is  $S_T$ . Thus this trading strategy replicates the payoff to the underlying asset. We then invoke the arbitrage principle that since this trading strategy has the same payoff at maturity as the underlying asset, it must cost exactly the same as buying the underlying asset itself. The strategy costs  $F / (1 + r)$  as the forward contract involves no

<table><tr><td>Position</td><td>Cost Now</td><td>Payoff at Maturity</td></tr><tr><td>(1) + (3) = (4)</td><td>S0</td><td>F</td></tr><tr><td>(2) + (4) = (1)</td><td>F/ (1+r)</td><td>ST</td></tr></table>

Table 2: Forward

initial outlay, therefore it must be the case that  $F / (1 + r) = S_0$  or

$$
F = (1 + r) S _ {0}.
$$

That is, the forward price is simply the future value of the stock. The long position in the stock (1) is equivalent to a portfolio of a long position in the forward and a long position in the discount bond  $(2) + (4)$ .

As an alternative suppose you go long in the stock and short on the forward contract, that is a portfolio of (1) and (3). The overall payoff at maturity is  $S_{T} + (F - S_{T}) = F$ . The cost of this strategy is  $S_{0}$  but has the same payoff as a risk-free bond with face value of  $F$  and is thus equivalent to position (4). Thus as before  $F / (1 + r) = S_{0}$ . This is summarised by Table 2.

As yet another possibility consider buying the underlying stock and going short on the discount bond with face value of  $F$  (that is borrow an amount  $F / (1 + r)$ ). At maturity one has an asset worth  $S_{T}$  but and obligation to repay  $F$  and thus a net worth of  $S_{T} - F$ . This is exactly the same as the long forward contract. Since the payoffs are the same we are said to have synthesized or replicated the forward contract. The cost of this synthetic forward contract is the cost of the stock now  $S_{0}$  less what we borrowed,  $F / (1 + r)$ , so that the net cost is

$$
S _ {0} - \frac {F}{(1 + r)}.
$$

The payoff is the same as the forward contract. Yet the forward contract involves no exchange of money upfront. So the cost of the synthetic forward must be zero too:

$$
S _ {0} - \frac {F}{(1 + r)} = 0
$$

which again the delivers the same conclusion that  $F = (1 + r)S_{0}$ .

# Exercises:

Exercise 1: If  $F > (1 + r)S_{0}$  identify a arbitrage opportunity. Put together a portfolio which gives you money now and only offsetting obligations at the maturity date.

Exercise 2: If  $F < (1 + r)S_{0}$  identify a arbitrage opportunity. Put together a portfolio which gives you money now and only offsetting obligations at the maturity date.

Exercise 3: If the stock pays out a dividend  $D$  at the maturity date  $T$ , so the total payoff to holding the stock is  $S_{T} + D$ , calculate the forward price if the interest rate is  $r$

# Forward Value

The forward contract is initially negotiated so that there is no initial outlay. That is the delivery price on the forward contract is chosen so that the value of the contract is zero. However, as maturity approaches the price of the underlying asset changes but the delivery price does not. Thus as time progresses the forward contract may have a positive or negative value. Let  $K$  be the delivery price and let  $S_{t}$  denote the price of the underlying asset at time  $t$  with time  $T - t$  left to maturity. The forward price is  $F_{t} = S_{t}(1 + r_{t}^{T})$  where  $r_{t}^{T}$  is the risk-free interest rate from  $t$  until  $T$ .

The same argument can be used above can now be used to find how the value of the forward contract changes as the time moves to maturity. Let this value be  $v_{t}$ . Consider the portfolio of one long forward contract and the purchase of a discount bond with face value of  $K$  and maturity date of  $T$ . The payoff to the forward contract is  $(S_{T} - K)$  but the payoff to the bond is  $K$  leaving a net payoff of  $S_{T}$ . The cost of this portfolio is  $v_{t} + \frac{K}{(1 + r_{t}^{T})}$ . Since it replicates exactly the underlying (which has a price of  $S_{t}$ ) we have

$$
v _ {t} = S _ {t} - \frac {K}{\left(1 + r _ {t} ^ {T}\right)} = \frac {\left(F _ {t} - K\right)}{\left(1 + r _ {t} ^ {T}\right)}
$$

where the last part follows since  $S_{t} = F_{t} / (1 + r_{t}^{T})$ . To check that this makes sense first consider what happens at  $t = 0$ . At  $t = 0$  the delivery price is chosen so  $v_{t} = 0$ , that is  $K = S_{0}(1 + r_{0}^{T}) = F_{0}$  and the forward price is equal to the delivery price. Next consider  $t = T$ . Then  $r_{t}^{T} = 0$  and we get  $v_{T} = S_{T} - K$  which is just the payoff to the forward contract at maturity.

To presage what we will do subsequent, the value of the forward contract can also be calculated by using the stochastic discount factor  $k$ .<sup>1</sup> A forward contract with a delivery price of  $K$  has a payoff at maturity of  $S_{T} - K$ . Thus the value of this payoff is

$$
v _ {t} = \operatorname {E} [ k \cdot (S _ {T} - K) ] = \operatorname {E} [ k \cdot S _ {T} ] - K \operatorname {E} [ k ] = S _ {t} - \frac {K}{(1 + r _ {t} ^ {T})}
$$

where the last part of the equation follows since  $\operatorname{E}[k]$  measure the appropriately discounted payoff of one unit of payoff for sure and thus is equal to the discount factor  $1 / (1 + r_t^T)$ .

# 3 Futures Contracts

So far we have used the terms forward and futures interchangeably and they are equivalent if there is no interest rate uncertainty. There are however, some differences between forward and futures contracts.

Forward contracts are normally traded over the counter and futures contracts are generally exchange traded with futures prices reported in the financial press. With a futures contract therefore the exchange provides a standardised contract with a range of specified delivery periods. Thus a wheat futures contract will be specify the delivery of so many bushels of wheat for delivery in a particular month. The quality and delivery place will also be specified. The exact day of delivery within the month is usually left to the discretion of the writer of the contract.

The key difference between forward and futures contracts is that forwards are settled at maturity, whereas futures contracts are settled daily. This daily settlement is done by requiring the investor to hold a margin account with the exchange. Thus although the contract costs nothing initially, the investor is required to deposit a certain amount of funds, the initial margin with the exchange. This margin account is marked to market to reflect the daily gains or losses on the contract. Thus for example if you buy a futures contract on Wednesday for 250 and the following day the futures price has fallen to 240, you will have suffered a loss of 10 and this amount will be deducted from your margin account. In effect the futures contract is closed out and rewritten every day. The exchange will also specify a maintenance margin which is the amount which must be maintained in the margin account, usually about  $75\%$  of the initial margin. If the margin account does fall below the maintenance margin the investor will be required to deposit extra funds, the variation margin, with the exchange. Most futures contracts are closed out prior to maturity and don't actually result in delivery of the underlying. Thus an investor will settle the futures contract and withdraw the amount in the margin account on that day.

Traders on futures (and other types of exchange markets) can place conditional trade as well as trade orders. There are three main types of order that can be executed. (i) A "Market" order will trade immediately at the current market price once the order is made there is no turning back! (ii) "Limit" orders are used to set a price at which the trader is prepared to trade. For example if the prices are currently high, the trader can input a price a bit lower than the current offer, and place a conditional order to buy. The order will now move into a working orders account and will be executed if the offer price falls to the limit level specified. (iii) "Stop" orders enable the trader to limit losses in his/her portfolio. This involves setting a conditional price at which to sell the asset if the market moves too much in the wrong direction. The trader specifies a price and volume at which to sell. The order will again be placed in the working orders account and will be executed if the price falls to the level specified.

<table><tr><td>Day</td><td>Position</td><td>Futures Price</td><td>Gain/loss</td><td>Future Value</td></tr><tr><td>0</td><td>Long \(\frac{1}{(1+r)^{T-1}}\)</td><td>\(G_0\)</td><td>-</td><td>-</td></tr><tr><td>1</td><td>Long \(\frac{1}{(1+r)^{T-2}}\)</td><td>\(G_1\)</td><td>\(\frac{G_1-G_0}{(1+r)^{T-1}}\)</td><td>\(G_1-G_0\)</td></tr><tr><td>2</td><td>Long \(\frac{1}{(1+r)^{T-3}}\)</td><td>\(G_2\)</td><td>\(\frac{G_1-G_0}{(1+r)^{T-2}}\)</td><td>\(G_2-G_1\)</td></tr><tr><td>…</td><td>…</td><td>…</td><td>…</td><td>…</td></tr><tr><td>T-2</td><td>Long \(\frac{1}{(1+r)}\)</td><td>\(G_{T-2}\)</td><td>\(\frac{G_{T-2}-G_{T-3}}{(1+r)^2}\)</td><td>\(G_{T-2}-G_{T-3}\)</td></tr><tr><td>T-1</td><td>Long 1</td><td>\(G_{T-1}\)</td><td>\(\frac{G_{T-1}-G_{T-2}}{(1+r)}\)</td><td>\(G_{T-1}-G_{T-2}\)</td></tr><tr><td>T</td><td>0</td><td>\(G_T\)</td><td>\(G_T-G_{T-1}\)</td><td>\(G_T-G_{T-1}\)</td></tr></table>

Table 3: Equivalence of Futures and Forward Prices

Although futures are settled daily we now show that the forward price and the futures price are the same if interest rates are known even if the forward contract cannot be traded. For simplicity suppose that the interest rate is constant and let  $r$  denote the daily interest rate and suppose that the futures contract matures on date  $T$  and let  $G_0, G_1, G_2, \ldots, G_{T-1}, G_T$  denote the futures price on each of the trading days. Suppose that we have a position of  $\frac{1}{(1+r)^{T-t-1}}$  on day  $t$ . Thus initially our position is  $\frac{1}{(1+r)^{T-1}}$  and we increment our position on a daily basis. The change in the value of our position on day 1 is

$$
\frac {G _ {1} - G _ {0}}{(1 + r) ^ {T - 1}}.
$$

To calculate the future value of this gain or loss compounded to date  $T$  we multiply by  $(1 + r)^{T - 1}$  as there are  $T - 1$  days to go. Thus the future value is simply  $G_{1} - G_{0}$ . The positions and future value on each day is summarised in Table 3.

Overall the future value from this portfolio is  $G_{T} - G_{0}$ . Since the futures price at maturity must equal the spot price,  $G_{T} = S_{T}$ , the future value is  $S_{T} - G_{0}$ . If we combine this portfolio with a purchase of a risk-free asset at time zero with a face value of  $G_{0}$  the portfolio has a payoff of  $S_{T}$ . Since the futures contracts cost nothing to purchase the overall cost of the portfolio is the cost of the risk-free asset,  $\frac{1}{(1 + r)^T}$ . Suppose that the forward contract has a delivery price of  $F_{0}$ . Since we have already seen that the forward contract combined with a risk-free asset with face value of  $F_{0}$  gives at time

$T$  a portfolio worth  $S_{T}$ , these two portfolios must cost the same. Hence

$$
\frac {G _ {0}}{(1 + r) ^ {T}} = \frac {F _ {0}}{(1 + r) ^ {T}}
$$

or  $G_0 = F_0$  and hence for any  $t$ ,  $G_t = F_t$ . Thus the forward and futures prices are equivalent.

This argument can be replicated if the interest rate changes in a known way, simply by choosing the appropriate positions so that the future value of the gain or loss on the futures contract is  $G_{t} - G_{t-1}$  on date  $t$ .

There is however, a difference between futures and forward prices if the interest rate is uncertain. Suppose that there is a positive covariance between the interest rate and the price of the underlying asset. Then if the price of the asset rises the gains on the futures contract will tend to be valued at a high interest rate and similarly losses on the futures contract will be valued at a low interest rate. An investor holding a forward contract is not affected by changes in the interest rate if they cannot trade the forward. Hence if the covariance between the interest rate and the underlying is positive, the futures price will tend to be higher than the forward price. In practice even this difference is likely to be small for as most futures contracts are held for relatively short durations. Thus for most practical purposes there is little difference between the forward and the futures price.

It is to be remembered too that although we've talked about the market price there are really two prices, the bid price and the offer price. The offer price is the price one can buy at (the market offers the contract at this price) and the bid price is the price one can sell at (how much the market is prepared to pay for the asset). It must be the case that offer price  $\geq$  bid price otherwise you could buy at the offer price and sell at the bid price and make an immediate arbitrage profit. The difference between the bid and offer prices is known as the bid-offer spread and the cost of buying at the offer price as selling at the bid price is known as the roundtrip cost.

# Backwardation and Contango

We have shown that the forward price is just the future value of the underlying,  $F = (1 + r_0^T)S_0$ . Perhaps surprisingly the expected value of the underlying asset at time  $T$ ,  $\operatorname{E}[S_T]$  does not affect the forward price at all. Yet it is also clear that the forward price tends to the current spot price as the contracts tend to maturity. To see this suppose that we are very close to the delivery period. If the forward price were below the current spot price, then it would be possible buy the forward contract, wait for delivery and sell almost surely at the higher spot price. This will tend to drive the forward price up toward the spot price. Similarly if the forward price were above the spot price one could sell the forward contract, buy at the lower spot price and make the delivery generating an almost sure profit. With everyone doing this the forward price will fall toward the spot price.

A situation where the forward price is below the expected spot price,  $F < \operatorname{E}[S_T]$ , is called **backwardation**. A reverse situation where the forward price is above the expected spot price is called **contango**. An interesting question, and one that exercised Hicks and Keynes in the 1930s, is whether forward prices normally exhibit backwardation or contango and why.

To consider the relationship between the forward price and the expected future spot price it is necessary to consider the risk involved in holding a forward or futures position. Consider an investor or speculator who holds a long position in a forward contract. This obligates the investor to pay out  $F$  the forward price at maturity in return for an asset that will be worth the unknown amount  $S_{T}$ . For simplicity suppose the investor  $F / (1 + r)$  in a risk-free investment now which will deliver  $F$  at time  $T$  to offset his/her obligations. The cash-flow is thus a certain  $F / (1 + r)$  now and an uncertain amount  $S_{T}$  at time  $T$ .

The question that remains is how to value the risky future payoff  $S_{T}$ . As in corporate finance we could evaluate this payoff using a CAPM so that the

value of the future cash flow is

$$
\frac {\operatorname {E} \left[ S _ {T} \right]}{\left(1 + r ^ {*}\right)}
$$

where  $r^* = r + \beta (\bar{r}_M - r)$  is the required rate of return,  $\beta$  is the beta of the underlying asset and  $\bar{r}_M$  is the expected rate of return on the market portfolio. Then the value of the investors portfolio is

$$
- \frac {F}{(1 + r)} + \frac {\operatorname {E} [ S _ {T} ]}{(1 + r ^ {*})}.
$$

As the asset is priced so that  $S_0 = \mathrm{E}[S_T] / (1 + r^*)$ , if this term where positive or negative, there would be an arbitrage opportunity. For example if  $F / (1 + r) > \mathrm{E}[S_T] / (1 + r^*)$  then there would be an arbitrage opportunity to borrow  $F / (1 + r)$ , buy the underling asset at the price  $S_0 = \mathrm{E}[S_T] / (1 + r^*)$  and short the forward contract. This would create a net inflow of cash today and offsetting cash flows at the maturity date as illustrated in Table 4. Thus we must have that the forward price satisfies

$$
F = \operatorname {E} [ S _ {T} ] \left(\frac {(1 + r)}{(1 + r ^ {*})}\right).
$$

If the beta of the underlying asset were zero then  $r^* = r$  and the forward price would be equal to the expected spot price. In these circumstances we would say the forward price is an unbiased predictor of the expected future spot price. We do however, know that for most assets the beta of the asset is positive and hence  $r^* > r$ . That is to say the asset has some systematic risk that cannot be diversified away and hence an expected return higher than the risk-free rate is required to compensate. In this typical case

$$
F <   \operatorname {E} [ S _ {T} ]
$$

and we have backwardation. $^3$  If the returns on the market were negatively correlated with the underlying asset then we would have  $\beta < 0$  and hence  $F > \operatorname{E}[S_t]$  and hence contango.

The same argument can also be made by using the stochastic discount factor and hence does not rely on a specific pricing model such as the CAPM.

<table><tr><td>Position</td><td>Cost Now</td><td>Payoff at Maturity</td></tr><tr><td>Long Underlying</td><td>S0=E[ST/(1+r*)</td><td>ST</td></tr><tr><td>Short Forward</td><td>0</td><td>(F-ST)</td></tr><tr><td>Short Discount Bond</td><td>-F/ (1+r)</td><td>-F</td></tr></table>

Table 4: Arbitrage Possibility

Since the current stock value reflects the appropriately stochastically discounted value of possible future values,  $S_0 = \operatorname{E}[k \cdot S_T]$ . Since  $F = S_0(1 + r)$  we have that  $F = (1 + r)\operatorname{E}[k \cdot S_T]$ . Using the covariance rule

$$
\begin{array}{l} F = (1 + r) \mathrm {E} [ k \cdot S _ {T} ] = (1 + r) \mathrm {E} [ k ] \mathrm {E} [ S _ {T} ] + (1 + r) C o v (k, S _ {T}) \\ = \operatorname {E} \left[ S _ {T} \right] + (1 + r) C o v (k, S _ {T}) \\ \end{array}
$$

since  $\operatorname{E}[k] = 1 / (1 + r)$ . It can be seen from the above equation that whether there is backwardation or contango depends on the sign of  $cov(k, S_T)$ . Typically, because individuals are risk averse, the demand will be for assets that offer insurance and the price of returns in low payoff states will be high. Thus for most assets the covariance will be negative. Typically then  $F < \operatorname{E}[S_T]$  and the forward will exhibit backwardation.

# Exercises:

Exercise 4: The current gold price is $500 per ounce. The forward price for delivery in one year is $575 per ounce. The cost of storing an ounce of gold for one year is $40 and this must be paid now in advance. The risk-free rate of interest is 10% per annum. If you own ten ounces of gold, how can you exploit an arbitrage opportunity to make $190?

Exercise 5: Consider a forward contract written on a non-dividend paying asset. The current spot price is \(65. The maturity of the contract is in 90 days and the interest rate over this period is \(1.1\%\). Determine the forward price. What is the value of this contract? A corporate client wants a 90-day

forward contract with the delivery price set at \(60. What is the value of this contract? (See Hull p.108).

Exercise 6: Consider a one year futures contract on an underlying commodity that pays no income. It costs  $5 per unit to store the commodity with payment being made at the end of the period. The current price of the commodity is$ 200 and the annual interest rate is 6%. Find the arbitrage-free price of the futures contract. (See Hull p.116).

# One Period Binomial Model

These notes consider the one period binomial model to exactly price an option. We will consider three different methods of pricing an option: delta-hedging, creating a synthetic option using the underlying asset and the risk-free asset and calculating the risk-neutral probabilities or stochastic discount factors. All methods will be used again when we extend the binomial model beyond one period and when we consider continuous trading.

Keywords: Delta-hedging, synthetic options, replication, risk-neutral probabilities, risk-neutral valuation.

Reading: Start of chapter 11 from Hull.

# Binomial Model

To value options exactly it is necessary to make specific assumptions about the determinants of the price of the underlying security. In practice this often means that a continuous stochastic process for the underlying is estimated or inferred from observations on past prices. However, the essential aspects can all be embodied in a simple binomial model in which the underlying asset can be one of two possible values at the end of each period; to put in starkly the asset can either go up or go down in value. By considering more than one period a binomial tree is constructed, where the price that an asset has branches out, either upward or downward at each point in time. These binomial trees can provide a remarkably good approximation to a more complex stochastic process provided that the number of periods is reasonably large, say above thirty.

In fact nearly all the basic principles of derivative pricing can be explained with a one or two period binomial model and this section develops the one period binomial model to study how options are exactly priced and the riskiness and elasticity of options.

# Delta Hedging

Buying a stock is a risky investment. Buying a call option on that stock is even riskier. Yet combining the stock with the option can produce an investment that is risk-free. That is it is possible to hedge a position in the stock by taking an opposite position in the call option. To create such a risk-free investment it is necessary to buy the stock and the option in exactly the right proportions. The number of units of the stock required per option is known as the  $\Delta$  (Delta) of the stock and taking these positions to create a risk-free investment is known as Delta Hedging.

We will now illustrate how to calculate  $\Delta$  in a simple binomial example. Once  $\Delta$  is known the option price itself can be calculated as any risk-free investment must in the absence of arbitrage opportunities earn the risk-free rate of return.

Consider a simple example where the price of the underlying stock is 100 and at the end of three months it has either risen to 175 or has fallen to 75. There is an "up" state and a "down" state. Let  $u = 0.75$  and  $d = -0.25$ , so that the value of the stock in three months in the up state is  $100(1 + u) = 175$  and the value in the down state is  $100(1 + d) = 75$ . The net growth rate of the value of the stock in the up state is  $75\%$ , and the net growth in the value of the stock in the down state is  $-25\%$ .

Since the stock can either rise by  $75\%$  or fall by  $25\%$  buying the stock is a risky investment. Now consider an at the money call option on this stock with a strike price of 100. If the stock goes up then in three months the

call can be exercised for a profit of  $175 - 100 = 75$  and if the price of the stock goes down, then the call will not be exercised. Thus the payoff to the call option is 75 in the up state and 0 in the down state. So the call is also risky. Suppose however, that we consider buying  $\Delta$  units of the stock and writing one call. The payoff from this portfolio is  $175\Delta - 75$  in the up state: the stock has gone up to 175 but the call option we have written will be exercised against us so we have an obligation of 75. The payoff in the down state is simply  $75\Delta$  as the call option is not exercised in the down state. To make this portfolio risk-free it is necessary to choose  $\Delta$  such that

$$
1 7 5 \Delta - 7 5 = 7 5 \Delta
$$

so that the payoff is the same no matter whether we are in the up state or the down state. Solving for  $\Delta$  gives  $\Delta = 3/4$ . Thus to completely hedge out the risk in the stock, we should sell four call options for every three units of stock we buy. The payoff from such a portfolio is given in Table 1. The value in three months time is 225 in both states and hence the portfolio is risk-free. Since it is risk-free it can be valued using the risk-free rate of interest. Suppose the risk-free rate of interest is  $1/4$  or  $25\%$ . The present value of this portfolio is  $225/(1 + 1/4) = 180$ . The value of the portfolio now is simply the current value of the share,  $3 \times 100 = 300$  less  $4c$  where  $c$  is the price of the call option. If there are no arbitrage possibilities then the value of this portfolio must also have a value of 3180:

$$
3 0 0 - 4 c = 1 8 0.
$$

So solving for the call price gives  $c = 30$ . This shows that the  $\Delta$ -hedge can be used to price the option.

The same procedure can be generalized. Let  $S$  be the value of the underlying stock, so its terminal value is  $S_{u} = (1 + u)S$  in the up state and  $S_{d} = (1 + d)S$  in the down state. Let  $K$  be the strike price of the option and  $c_{u} = \max [0,S_{u} - K]$  be the value of the call option in the up state and

<table><tr><td>Position</td><td>Value Now</td><td>Value in down state</td><td>Value in up state</td></tr><tr><td>4 Short Calls</td><td>-4c</td><td>0</td><td>300</td></tr><tr><td>3 Long Shares</td><td>300</td><td>225</td><td>525</td></tr><tr><td>Overall</td><td>300 – 4c</td><td>225</td><td>225</td></tr></table>

Table 1: Risk-Free Portfolio - Example

$c_{d} = \max [0, S_{d} - K]$  is the value of the call option in the down state. Remember, that the call option gives us the right to buy the underlying at a price of  $K$ , so for example in the up state when the stock is worth  $S_{u}$ , the option gives the right to buy at  $K$  and asset that can be sold for  $S_{u}$ . Thus the option will be exercised for a profit of  $S_{u} - K$  if  $S_{u} - K > 0$  and won't be exercised otherwise.

Now consider the  $\Delta$ -hedge portfolio that writes one call and buys  $\Delta$  units of the underlying. The payoffs from this portfolio are given in Table 2. The value of  $\Delta$  is chosen so that the portfolio is riskless,  $\Delta S_{d} - c_{d} = \Delta S_{u} - c_{u}$ , i.e.

$$
\Delta = \frac {c _ {u} - c _ {d}}{S _ {u} - S _ {d}} = \frac {c _ {u} - c _ {d}}{(u - d) S}.
$$

The value of the risk-free portfolio is evaluated at the risk-free rate of interest  $r$ , so that

$$
\Delta S - c = \frac {\Delta S _ {d} - c _ {d}}{(1 + r)}.
$$

Using the value of  $\Delta$  just derived, and substituting  $(1 + d)S$  for  $S_{d}$  and solving for  $c$  gives after some manipulation

$$
c = \frac {p c _ {u} + (1 - p) c _ {d}}{(1 + r)}
$$

where  $p = (r - d) / (u - d)$ . Thus for any values of  $S, K, r, u$  and  $d$ , the value of the call option can be calculated from this formula.

There is a natural interpretation for  $\Delta$ . It is the difference in the value of the call at maturity  $c_{u} - c_{d}$  in the up state rather than the down state

<table><tr><td>Position</td><td>Value Now</td><td>Value in down state</td><td>Value in up state</td></tr><tr><td>Short Call</td><td>-c</td><td>-cd</td><td>-cu</td></tr><tr><td>Δ Long Shares</td><td>ΔS</td><td>ΔSd</td><td>ΔuSu</td></tr><tr><td>Overall</td><td>ΔS-c</td><td>ΔSd-cd</td><td>ΔSu-cu</td></tr></table>

Table 2: Risk-Free Portfolio

relative to the difference in the value of the stock  $S_{u} - S_{d}$ . It tells us the change in the value of the call relative to the change in the value of the stock or how much the value of the call changes when the stock changes by a given amount. Thus  $\Delta$  tells us how responsive is the call value to changes in the value of the stock. We will return to this interpretation when we consider the elasticity of an option later on.

# Synthetic Options

The idea underlying  $\Delta$ -Hedging is to create a risk-free asset using a combination of the stock and the option that can be valued at the risk-free rate of interest. The risk-free asset and the underlying asset can themselves be combined to replicate the payoffs of the option itself. Such a combination is called a synthetic option.

Consider again our simple example where the price of the underlying stock is 100 and at the end of three months it has either risen to 175 or has fallen to 75. Now consider how an at the money call option on this stock with a strike price of 100 can be synthesized. The payoff to the call option in the up state is 75 and the payoff in the down state is 0 as the option will not be exercised. Consider buying  $\Delta$  units of the stock and investing  $B$  units of funds at the risk-free interest rate of  $1/4$ . The payoff from this portfolio in the up state is  $175\Delta + (1 + 1/4)B$  and the payoff in the down state is  $75\Delta + (1 + 1/4)B$ . To synthesize the option we must match these payoffs to

<table><tr><td>Position</td><td>Value Now</td><td>Value in down state</td><td>Value in up state</td></tr><tr><td>Borrow B</td><td>-45</td><td>225/4</td><td>225/4</td></tr><tr><td>Buy Δ shares</td><td>75</td><td>225/4</td><td>525/4</td></tr><tr><td>Overall</td><td>30</td><td>0</td><td>75</td></tr></table>

Table 3: Synthetic Option

the payoffs from the option. That is we must find  $\Delta$  and  $B$  to solve

$$
1 7 5 \Delta + (1 + 1 / 4) B = 7 5
$$

$$
7 5 \Delta + (1 + 1 / 4) B = 0.
$$

Solving these two equations simultaneously gives  $\Delta = 3/4$  and  $B = -45$ . Thus the option can be replicated by borrowing 45 and buying  $\frac{3}{4}$  units of the stock. Since the stock costs 100 the cost of buying  $3/4$  of a unit of stock is 75. Thus the net cost of synthesizing the option is the price we pay minus the amount borrowed,  $75 - 45 = 30$ . Again the portfolio that replicates or synthesizes the call must have the same price as the call itself. Hence  $c = 30$  and we reach exactly the same conclusion as before. The payoffs are summarized in Table 3.

Again it is simple to generalize this procedure. To find the number of shares to be bought  $\Delta$  and the amount to invest  $B$  to synthesize the option it is only necessary to solve simultaneously the following two equations:

$$
\Delta S _ {u} + (1 + r) B = c _ {u}
$$

$$
\Delta S _ {d} + (1 + r) B = c _ {d}.
$$

Solving these two equations gives

$$
\Delta = \frac {c _ {u} - c _ {d}}{S _ {u} - S _ {d}}
$$

and

$$
B = \frac {1}{1 + r} (c _ {d} - \Delta S _ {d}) = \frac {1}{1 + r} \left(c _ {d} - \frac {(1 + d) S (c _ {u} - c _ {d})}{(S _ {u} - S _ {d})}\right).
$$

This is illustrated graphically in Figure 1. The payoff at maturity to the call option is illustrated by the thick line. The two possible end values for the stock  $S_{u}$  and  $S_{d}$  are drawn on the horizontal axis. The strike price  $K$  has been chosen between the two values  $S_{u}$  and  $S_{d}$  so that in the down state the call option expires valueless and  $c_{u} = 0$ . The value of the call in the up state is  $c_{u} = S_{u} - k$  and this is illustrated on the vertical axis. Also drawn is the line connected the two points  $(S_{d}, c_{d})$  and  $(S_{u}, c_{u})$ . The slope of this line is  $\Delta$  and the intercept with the vertical axis is  $-\Delta S_{d} = -(1 + r)B$ . It can be seen that the line is never downward sloping, so  $\Delta \geq 0$  and the slope is always less than  $45^{o}$ , so  $\Delta \leq 1$ . The intercept with the vertical axis is zero or negative indicating that the portfolio that synthesizes the call option involves borrowing (selling rather than buying the risk-free asset).

The cost of synthesizing the option is the cost of the portfolio of  $\Delta$  units of the shares and investing  $B$  in bonds

$$
c = \Delta S + B = \frac {p c _ {u} + (1 - p) c _ {d}}{(1 + r)}
$$

where  $p = (r - d) / (u - d)$  exactly as before.

EXERCISE: Repeat for a put option.

# Risk Neutral Pricing

The previous two subsections have derived a simple expression for the price of the call option

$$
c = \frac {p c _ {u} + (1 - p) c _ {d}}{(1 + r)}.
$$

In this expression the value of the call option is the present value of a weighted average of the call at maturity, either  $c_{u}$  in the up state, or  $c_{d}$  in the down state. It is tempting to interpret  $p$  in this equation as a probability. It is

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/71260353-9bdb-4766-88df-bb675f8818cf/9126f7db4ac21171340efe514238991f1c0def0c82a320be5ac810c86a105d01.jpg)  
Figure 1: THE  $\Delta$  OF A CALL OPTION IN THE BINOMIAL MODEL

important to notice two things about this formula. First  $p$  cannot be the probability of an up movement in the stock as the probabilities of stock movements were not used in the calculation of the call value. Thus the value of the call is independent of the probabilities of the up or down movements in the stock price. Second the formula for the call is based on the present value of  $pc_{u} + (1 - p)c_{d}$  and is therefore valued as if this payoff was risk-free. Thus the probability  $p$  is a risk-adjusted probability. It is simply the future value of the state price for the up-state.

To give an interpretation to  $p$  imagine a situation where all individuals were indifferent to risk. Such as situation is known as a risk-neutral world. In such a situation all individuals would agree to value any risky prospect

simply by its expected present value. Since the formula for the value of the call is the expected present value when  $p$  is interpreted as the probability of an upward movement in the stock,  $\rho$  is interpreted as a risk-neutral probability and this method of valuing the derivative is called risk neutral valuation. It is a simple and general principle that can be used for valuing all derivative securities.

To see how it can be used, let's revisit our simple example again. Using the method of risk neutral valuation, the expected value of the stock at the end of the period is  $175p + 75(1 - p)$ , so the expected present value using the risk-neutral probabilities is

$$
\frac {1 7 5 p + 7 5 (1 - p)}{(1 + 1 / 4)}.
$$

This must equal the actual value of the stock which is 100. This gives one equation in one unknown,  $p$ , and solving gives  $p = \frac{1}{2}$ . To value the call we simple use risk-neutral valuation again. The call at maturity is worth 75 in the up state and 0 in the down state, so the expected value using the risk neutral probabilities is (1/2)75 and the present value of this expectation is (1/2)75/(5/4) = 30.

Again generalising this method,  $p$  is solved from the equation

$$
S = \frac {p (1 + u) S + (1 - p) (1 + d) S}{(1 + r)}
$$

to give  $p = (r - d) / (u - d)$  exactly as before and this value of  $p$  can then be used to compute the risk-neutral valuation for the option.

# Summary

We've considered a one period binomial model where the stock price can go either up or down by factors  $(1 + u)$  and  $(1 + d)$ . We can the use information

on the current stock price  $S$ , the risk-free interest rate  $r$  and the strike price  $K$  to determine the value of the option. We did this in three different ways. First by creating a riskless portfolio of the stock and the option. Second by creating a synthetic option that replicates the payoffs to the option using the underlying stock and the risk-free asset. In both cases we use an arbitrage argument that any two portfolios or assets that deliver the same payoffs must trade at the same price. Thirdly we derived the risk-neutral probability such that all assets and portfolios are valued by their expected present value. This ten allows the option to be evaluated in the same way using these risk-adjusted probabilities.

The next thing to do is to allow for more than one period in the binomial model to see if the price of the option can still be calculated in a similar and similarly simple fashion.

# One Period Binomial Model

These notes consider the one period binomial model to exactly price an option. We will consider three different methods of pricing an option: delta-hedging, creating a synthetic option using the underlying asset and the risk-free asset and calculating the risk-neutral probabilities or stochastic discount factors. All methods will be used again when we extend the binomial model beyond one period and when we consider continuous trading.

Keywords: Delta-hedging, synthetic options, replication, risk-neutral probabilities, risk-neutral valuation.

Reading: Start of chapter 11 from Hull.

# Binomial Model

To value options exactly it is necessary to make specific assumptions about the determinants of the price of the underlying security. In practice this often means that a continuous stochastic process for the underlying is estimated or inferred from observations on past prices. However, the essential aspects can all be embodied in a simple binomial model in which the underlying asset can be one of two possible values at the end of each period; to put in starkly the asset can either go up or go down in value. By considering more than one period a binomial tree is constructed, where the price that an asset has branches out, either upward or downward at each point in time. These binomial trees can provide a remarkably good approximation to a more complex stochastic process provided that the number of periods is reasonably large, say above thirty.

In fact nearly all the basic principles of derivative pricing can be explained with a one or two period binomial model and this section develops the one period binomial model to study how options are exactly priced and the riskiness and elasticity of options.

# Delta Hedging

Buying a stock is a risky investment. Buying a call option on that stock is even riskier. Yet combining the stock with the option can produce an investment that is risk-free. That is it is possible to hedge a position in the stock by taking an opposite position in the call option. To create such a risk-free investment it is necessary to buy the stock and the option in exactly the right proportions. The number of units of the stock required per option is known as the  $\Delta$  (Delta) of the stock and taking these positions to create a risk-free investment is known as Delta Hedging.

We will now illustrate how to calculate  $\Delta$  in a simple binomial example. Once  $\Delta$  is known the option price itself can be calculated as any risk-free investment must in the absence of arbitrage opportunities earn the risk-free rate of return.

Consider a simple example where the price of the underlying stock is 100 and at the end of three months it has either risen to 175 or has fallen to 75. There is an "up" state and a "down" state. Let  $u = 0.75$  and  $d = -0.25$ , so that the value of the stock in three months in the up state is  $100(1 + u) = 175$  and the value in the down state is  $100(1 + d) = 75$ . The net growth rate of the value of the stock in the up state is  $75\%$ , and the net growth in the value of the stock in the down state is  $-25\%$ .

Since the stock can either rise by  $75\%$  or fall by  $25\%$  buying the stock is a risky investment. Now consider an at the money call option on this stock with a strike price of 100. If the stock goes up then in three months the

call can be exercised for a profit of  $175 - 100 = 75$  and if the price of the stock goes down, then the call will not be exercised. Thus the payoff to the call option is 75 in the up state and 0 in the down state. So the call is also risky. Suppose however, that we consider buying  $\Delta$  units of the stock and writing one call. The payoff from this portfolio is  $175\Delta - 75$  in the up state: the stock has gone up to 175 but the call option we have written will be exercised against us so we have an obligation of 75. The payoff in the down state is simply  $75\Delta$  as the call option is not exercised in the down state. To make this portfolio risk-free it is necessary to choose  $\Delta$  such that

$$
1 7 5 \Delta - 7 5 = 7 5 \Delta
$$

so that the payoff is the same no matter whether we are in the up state or the down state. Solving for  $\Delta$  gives  $\Delta = 3/4$ . Thus to completely hedge out the risk in the stock, we should sell four call options for every three units of stock we buy. The payoff from such a portfolio is given in Table 1. The value in three months time is 225 in both states and hence the portfolio is risk-free. Since it is risk-free it can be valued using the risk-free rate of interest. Suppose the risk-free rate of interest is  $1/4$  or  $25\%$ . The present value of this portfolio is  $225/(1 + 1/4) = 180$ . The value of the portfolio now is simply the current value of the share,  $3 \times 100 = 300$  less  $4c$  where  $c$  is the price of the call option. If there are no arbitrage possibilities then the value of this portfolio must also have a value of 3180:

$$
3 0 0 - 4 c = 1 8 0.
$$

So solving for the call price gives  $c = 30$ . This shows that the  $\Delta$ -hedge can be used to price the option.

The same procedure can be generalized. Let  $S$  be the value of the underlying stock, so its terminal value is  $S_{u} = (1 + u)S$  in the up state and  $S_{d} = (1 + d)S$  in the down state. Let  $K$  be the strike price of the option and  $c_{u} = \max [0,S_{u} - K]$  be the value of the call option in the up state and

<table><tr><td>Position</td><td>Value Now</td><td>Value in down state</td><td>Value in up state</td></tr><tr><td>4 Short Calls</td><td>-4c</td><td>0</td><td>300</td></tr><tr><td>3 Long Shares</td><td>300</td><td>225</td><td>525</td></tr><tr><td>Overall</td><td>300 – 4c</td><td>225</td><td>225</td></tr></table>

Table 1: Risk-Free Portfolio - Example

$c_{d} = \max [0, S_{d} - K]$  is the value of the call option in the down state. Remember, that the call option gives us the right to buy the underlying at a price of  $K$ , so for example in the up state when the stock is worth  $S_{u}$ , the option gives the right to buy at  $K$  and asset that can be sold for  $S_{u}$ . Thus the option will be exercised for a profit of  $S_{u} - K$  if  $S_{u} - K > 0$  and won't be exercised otherwise.

Now consider the  $\Delta$ -hedge portfolio that writes one call and buys  $\Delta$  units of the underlying. The payoffs from this portfolio are given in Table 2. The value of  $\Delta$  is chosen so that the portfolio is riskless,  $\Delta S_{d} - c_{d} = \Delta S_{u} - c_{u}$ , i.e.

$$
\Delta = \frac {c _ {u} - c _ {d}}{S _ {u} - S _ {d}} = \frac {c _ {u} - c _ {d}}{(u - d) S}.
$$

The value of the risk-free portfolio is evaluated at the risk-free rate of interest  $r$ , so that

$$
\Delta S - c = \frac {\Delta S _ {d} - c _ {d}}{(1 + r)}.
$$

Using the value of  $\Delta$  just derived, and substituting  $(1 + d)S$  for  $S_{d}$  and solving for  $c$  gives after some manipulation

$$
c = \frac {p c _ {u} + (1 - p) c _ {d}}{(1 + r)}
$$

where  $p = (r - d) / (u - d)$ . Thus for any values of  $S, K, r, u$  and  $d$ , the value of the call option can be calculated from this formula.

There is a natural interpretation for  $\Delta$ . It is the difference in the value of the call at maturity  $c_{u} - c_{d}$  in the up state rather than the down state

<table><tr><td>Position</td><td>Value Now</td><td>Value in down state</td><td>Value in up state</td></tr><tr><td>Short Call</td><td>-c</td><td>-cd</td><td>-cu</td></tr><tr><td>Δ Long Shares</td><td>ΔS</td><td>ΔSd</td><td>ΔuSu</td></tr><tr><td>Overall</td><td>ΔS-c</td><td>ΔSd-cd</td><td>ΔSu-cu</td></tr></table>

Table 2: Risk-Free Portfolio

relative to the difference in the value of the stock  $S_{u} - S_{d}$ . It tells us the change in the value of the call relative to the change in the value of the stock or how much the value of the call changes when the stock changes by a given amount. Thus  $\Delta$  tells us how responsive is the call value to changes in the value of the stock. We will return to this interpretation when we consider the elasticity of an option later on.

# Synthetic Options

The idea underlying  $\Delta$ -Hedging is to create a risk-free asset using a combination of the stock and the option that can be valued at the risk-free rate of interest. The risk-free asset and the underlying asset can themselves be combined to replicate the payoffs of the option itself. Such a combination is called a synthetic option.

Consider again our simple example where the price of the underlying stock is 100 and at the end of three months it has either risen to 175 or has fallen to 75. Now consider how an at the money call option on this stock with a strike price of 100 can be synthesized. The payoff to the call option in the up state is 75 and the payoff in the down state is 0 as the option will not be exercised. Consider buying  $\Delta$  units of the stock and investing  $B$  units of funds at the risk-free interest rate of  $1/4$ . The payoff from this portfolio in the up state is  $175\Delta + (1 + 1/4)B$  and the payoff in the down state is  $75\Delta + (1 + 1/4)B$ . To synthesize the option we must match these payoffs to

<table><tr><td>Position</td><td>Value Now</td><td>Value in down state</td><td>Value in up state</td></tr><tr><td>Borrow B</td><td>-45</td><td>225/4</td><td>225/4</td></tr><tr><td>Buy Δ shares</td><td>75</td><td>225/4</td><td>525/4</td></tr><tr><td>Overall</td><td>30</td><td>0</td><td>75</td></tr></table>

Table 3: Synthetic Option

the payoffs from the option. That is we must find  $\Delta$  and  $B$  to solve

$$
1 7 5 \Delta + (1 + 1 / 4) B = 7 5
$$

$$
7 5 \Delta + (1 + 1 / 4) B = 0.
$$

Solving these two equations simultaneously gives  $\Delta = 3/4$  and  $B = -45$ . Thus the option can be replicated by borrowing 45 and buying  $\frac{3}{4}$  units of the stock. Since the stock costs 100 the cost of buying  $3/4$  of a unit of stock is 75. Thus the net cost of synthesizing the option is the price we pay minus the amount borrowed,  $75 - 45 = 30$ . Again the portfolio that replicates or synthesizes the call must have the same price as the call itself. Hence  $c = 30$  and we reach exactly the same conclusion as before. The payoffs are summarized in Table 3.

Again it is simple to generalize this procedure. To find the number of shares to be bought  $\Delta$  and the amount to invest  $B$  to synthesize the option it is only necessary to solve simultaneously the following two equations:

$$
\Delta S _ {u} + (1 + r) B = c _ {u}
$$

$$
\Delta S _ {d} + (1 + r) B = c _ {d}.
$$

Solving these two equations gives

$$
\Delta = \frac {c _ {u} - c _ {d}}{S _ {u} - S _ {d}}
$$

and

$$
B = \frac {1}{1 + r} (c _ {d} - \Delta S _ {d}) = \frac {1}{1 + r} \left(c _ {d} - \frac {(1 + d) S (c _ {u} - c _ {d})}{(S _ {u} - S _ {d})}\right).
$$

This is illustrated graphically in Figure 1. The payoff at maturity to the call option is illustrated by the thick line. The two possible end values for the stock  $S_{u}$  and  $S_{d}$  are drawn on the horizontal axis. The strike price  $K$  has been chosen between the two values  $S_{u}$  and  $S_{d}$  so that in the down state the call option expires valueless and  $c_{u} = 0$ . The value of the call in the up state is  $c_{u} = S_{u} - k$  and this is illustrated on the vertical axis. Also drawn is the line connected the two points  $(S_{d}, c_{d})$  and  $(S_{u}, c_{u})$ . The slope of this line is  $\Delta$  and the intercept with the vertical axis is  $-\Delta S_{d} = -(1 + r)B$ . It can be seen that the line is never downward sloping, so  $\Delta \geq 0$  and the slope is always less than  $45^{o}$ , so  $\Delta \leq 1$ . The intercept with the vertical axis is zero or negative indicating that the portfolio that synthesizes the call option involves borrowing (selling rather than buying the risk-free asset).

The cost of synthesizing the option is the cost of the portfolio of  $\Delta$  units of the shares and investing  $B$  in bonds

$$
c = \Delta S + B = \frac {p c _ {u} + (1 - p) c _ {d}}{(1 + r)}
$$

where  $p = (r - d) / (u - d)$  exactly as before.

EXERCISE: Repeat for a put option.

# Risk Neutral Pricing

The previous two subsections have derived a simple expression for the price of the call option

$$
c = \frac {p c _ {u} + (1 - p) c _ {d}}{(1 + r)}.
$$

In this expression the value of the call option is the present value of a weighted average of the call at maturity, either  $c_{u}$  in the up state, or  $c_{d}$  in the down state. It is tempting to interpret  $p$  in this equation as a probability. It is

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/71260353-9bdb-4766-88df-bb675f8818cf/dbea0a4baa0c7eb9f4993150988d0845fdaae5f14892d0e8ea782485b51fac1f.jpg)  
Figure 1: THE  $\Delta$  OF A CALL OPTION IN THE BINOMIAL MODEL

important to notice two things about this formula. First  $p$  cannot be the probability of an up movement in the stock as the probabilities of stock movements were not used in the calculation of the call value. Thus the value of the call is independent of the probabilities of the up or down movements in the stock price. Second the formula for the call is based on the present value of  $pc_{u} + (1 - p)c_{d}$  and is therefore valued as if this payoff was risk-free. Thus the probability  $p$  is a risk-adjusted probability. It is simply the future value of the state price for the up-state.

To give an interpretation to  $p$  imagine a situation where all individuals were indifferent to risk. Such as situation is known as a risk-neutral world. In such a situation all individuals would agree to value any risky prospect

simply by its expected present value. Since the formula for the value of the call is the expected present value when  $p$  is interpreted as the probability of an upward movement in the stock,  $\rho$  is interpreted as a risk-neutral probability and this method of valuing the derivative is called risk neutral valuation. It is a simple and general principle that can be used for valuing all derivative securities.

To see how it can be used, let's revisit our simple example again. Using the method of risk neutral valuation, the expected value of the stock at the end of the period is  $175p + 75(1 - p)$ , so the expected present value using the risk-neutral probabilities is

$$
\frac {1 7 5 p + 7 5 (1 - p)}{(1 + 1 / 4)}.
$$

This must equal the actual value of the stock which is 100. This gives one equation in one unknown,  $p$ , and solving gives  $p = \frac{1}{2}$ . To value the call we simple use risk-neutral valuation again. The call at maturity is worth 75 in the up state and 0 in the down state, so the expected value using the risk neutral probabilities is (1/2)75 and the present value of this expectation is (1/2)75/(5/4) = 30.

Again generalising this method,  $p$  is solved from the equation

$$
S = \frac {p (1 + u) S + (1 - p) (1 + d) S}{(1 + r)}
$$

to give  $p = (r - d) / (u - d)$  exactly as before and this value of  $p$  can then be used to compute the risk-neutral valuation for the option.

# Summary

We've considered a one period binomial model where the stock price can go either up or down by factors  $(1 + u)$  and  $(1 + d)$ . We can the use information

on the current stock price  $S$ , the risk-free interest rate  $r$  and the strike price  $K$  to determine the value of the option. We did this in three different ways. First by creating a riskless portfolio of the stock and the option. Second by creating a synthetic option that replicates the payoffs to the option using the underlying stock and the risk-free asset. In both cases we use an arbitrage argument that any two portfolios or assets that deliver the same payoffs must trade at the same price. Thirdly we derived the risk-neutral probability such that all assets and portfolios are valued by their expected present value. This ten allows the option to be evaluated in the same way using these risk-adjusted probabilities.

The next thing to do is to allow for more than one period in the binomial model to see if the price of the option can still be calculated in a similar and similarly simple fashion.

# The  $n$ -period Binomial Model

# Introduction

Once we have understood the one period binomial model it is very easy to extend the model to two or more periods so that derivatives with maturity in two or more periods can be examined. We will later show that using the binomial model can produce a very good approximation when it is extended to a sufficiently great number of periods. In these notes we consider how to extend the binomial model to more than two periods. This is relatively straightforward but requires the use of the binomial coefficients.

Reading: Hull Chapter 11.

# The Two-Period Model

The binomial model is extended by adding to new branches of the tree after each node. Proceeding in the same way as with the one period model after each node the price of the underlying asset either increases by a factor of  $u$  or decreases by a factor  $d$ .<sup>1</sup> Thus whether the value of the underlying after two periods is either  $(1 + u)^2 S$  if the stock has gone up in two successive periods,  $(1 + d)^2 S$  if the stock has gone down in two successive periods,  $(1 + u)(1 + d)S$  if the stock first went up and then went down, or  $(1 + d)(1 + u)S$  if the stock went down and then went up in the second period. Since  $(1 + u)(1 + d) = (1 + d)(1 + u)$ , the value of the stock is the same whether it first went up and then down or down and then up. Thus the two branches of the tree recombine after two periods and there are only three possible values for the

value of the underlying after two periods. (After  $n$  periods there will be  $n - 1$  possible ending values for the underlying asset in such a recombinant tree).

The objective is to find the value of the option or derivative at the initial node of the tree. Let's consider an example with  $u = 0.75$ ,  $d = -0.25$ ,  $S = 100$ ,  $X = 100$  and  $r = 0.25$  and extend it to two periods. The ending values for the underlying asset are 306.25, 131.25 and 56.25. To value the call option at the initial node we first value the call at the final nodes and then work backward. The value of the call at the final nodes is simply 206.25, 31.25 and 0, that is the stock value minus the strike price. The value at the intermediate note then can be computed using the methods of delta hedging, synthetic options or risk neutral valuation used in the section on the one period model. The method of risk neutral valuation is simple because the risk neutral probability is the same for each period as it depends only on  $u$ ,  $d$  and  $r$  that are unchanging. Taking this risk-neutral valuation method, the value following the first up move is

$$
\frac {\frac {1}{2} (2 0 6 . 2 5 + 3 1 . 2 5)}{(1 + \frac {1}{4})} = 9 5
$$

and the value of the call option following a down movement in the stock is

$$
\frac {\frac {1}{2} (3 1 . 2 5)}{(1 + \frac {1}{4})} = \frac {2 5}{2}.
$$

Having found the value of the option after the first period, the same method can be used to find the value at the initial node:

$$
\frac {\frac {1}{2} (9 5 + \frac {2 5}{2})}{(1 + \frac {1}{4})} = 4 3.
$$

# Risk Neutral Valuation and State Prices

The risk neutral valuation method also gives a very simple method of calculating the value of the option at the initial node. The risk neutral probability

of two up movements in the underlying stock is  $\frac{1}{2} \times \frac{1}{2} = \frac{1}{4}$ . The probability of stock ending with a value of 131.25 is the probability of an up movement followed by a down movement plus the probability of a down movement followed by an up movement. Thus the risk neutral probability for this event is  $\frac{1}{2} \times \frac{1}{2} + \frac{1}{2} \times \frac{1}{2} = \frac{1}{2}$ . Thus the value of the call option can also be evaluated directly as

$$
\frac {\frac {1}{4} (2 0 6 . 2 5) + \frac {1}{2} (3 1 . 2 5)}{(1 + \frac {1}{4}) ^ {2}} = 4 3.
$$

Likewise the state prices are easily calculated (by dividing the risk neutral probabilities by  $(1 + r)^2 = \frac{25}{16}$ ) to be  $q_{uu} = \frac{4}{25}$ ,  $q_{ud} = q_{du} = \frac{8}{25}$  and  $q_{dd} = \frac{4}{25}$ . Thus the call value could also easily be calculated as

$$
\frac {4}{2 5} (2 0 6. 2 5) + \frac {8}{2 5} (3 1. 2 5) = 4 3.
$$

# American Options

As we have seen a European call option will have a positive time value as the lower bound for the European call is  $S_{t} - X / (1 + r) \geq S_{t} - X$  with inequality if  $r > 0$ . Since American options can't be worth less than equivalent European options it follows that American call options on non-dividend paying stock will not be exercised early because selling the option will always dominate exercising it. Intuitively an early exercise will involving paying the strike price earlier and this is undesirable. However, American put options can be exercised early because this will involve receiving the strike price earlier. The two period binomial model can be used to illustrate this possibility.

Consider a put option in our example with a strike price  $X = 100$ . The value of this put option at the final nodes is 0, 0 and 43.75. Thus the value of the put option following an up movement in the first period is 0 as the option can never get back in the money. However, following a down movement in the first period the value of the option is using the state prices

$\frac{2}{5}(41.75) = 17.5$ . But early exercise of the option would give 25. Thus early exercise is the better alternative and the option must have a value of 25 if it is of the American type. At the initial node the option is thus worth 10 if it is an American option and 7 if it is a European option that cannot be exercised early at the end of the first period.

# Extending the model to  $n > 2$  periods

# Pascal's Triangle

In the one-period binomial model there are two possible end values and in the two-period binomial model there are three possible end values. Extrapolating we have that in the  $n$ -period binomial model there are  $n + 1$  possible end values. The number of ways that each value is reached is determined by Pascal's triangle. Pascal's triangle is shown in Table 1 for  $n = 5$ . Period 0 corresponds to the initial node of the binomial tree. Period 1 corresponds to the possible values after the first period and so on. In period 2 there is one way to reach the two outer sides of the triangle corresponding to either two up or two down returns. There are two ways to reach the middle node, either an up followed by a down or a down followed by an up. The numbers in Pascal's triangle are easy to calculate. Simply put 1s along the edges of the triangle and to find the other numbers take the two numbers above and add them together.

# Binomial Coefficients

The numbers in Pascal's triangle are called the binomial coefficients and the binomial coefficients are usually written  $\binom{n}{k}$  for  $n, k \geq 0$  where

$$
{\binom {n} {k}} = \frac {n !}{k ! (n - k) !}
$$

<table><tr><td>Period 0</td><td></td><td></td><td></td><td>1</td><td></td><td></td><td></td><td></td></tr><tr><td>Period 1</td><td></td><td></td><td>1</td><td>1</td><td></td><td></td><td></td><td></td></tr><tr><td>Period 2</td><td></td><td>1</td><td>2</td><td>1</td><td></td><td></td><td></td><td></td></tr><tr><td>Period 3</td><td></td><td>1</td><td>3</td><td>3</td><td>1</td><td></td><td></td><td></td></tr><tr><td>Period 4</td><td>1</td><td>4</td><td>6</td><td>4</td><td>1</td><td></td><td></td><td></td></tr><tr><td>Period 5</td><td>1</td><td>5</td><td>10</td><td>10</td><td>5</td><td>1</td><td></td><td></td></tr></table>

Table 1: Pascal's Triangle

is the  $(k + 1)$ -th number in the  $(n + 1)$ -th row of the triangle. Here  $k! = k \times k - 1 \times k - 2 \times \ldots \times 2 \times 1$  and by convention  $0! = 1$ . Thus if  $n = 4$  and  $k = 2$ , then

$$
\binom {4} {2} = \frac {4 !}{2 ! \times 2 !} = \frac {4 \times 3 \times 2 \times 1}{(2 \times 1) (2 \times 1)} = \frac {2 4}{4} = 6.
$$

The binomial coefficients show us the number of ways the returns can be generated by  $k$  down returns and  $n - k$  up returns.

# Binomial Variable

In our binomial model there are two outcomes for the stock price "up" or "down". We can treat this as a random variable and associate with each event a probability. Let  $\pi = \operatorname{Prob}[\text{"up"}\text{-state}]$  and probability  $1 - \pi = \operatorname{Prob}[\text{"down"}\text{-state}]$ . The probability of having  $k$  up states after  $n$  periods is given by

$$
\pi (k) = \left( \begin{array}{c} n \\ k \end{array} \right) \pi^ {k} (1 - \pi) ^ {n - k}.
$$

We say this is a binomial random variable with parameter  $\pi$ . For example, say  $n = 4$  and there are  $k = 2$  "up"-states. The are  $\binom{4}{2} = 6$  ways in which this can occur. Thus the probability of 'up"-states in four periods is  $6\pi^2 (1 - \pi)^2$ . We shall need to know the probability of having more than a certain number of "up"-states. Let  $B_{\pi}(x)$  denote the probability that the binomial random variable with parameter  $\pi$  is greater than  $x$  after  $n$  periods. That is the

probability that we have  $x$  or more than  $x$  "up"-states in  $n$  periods. This is given by

$$
B _ {\pi} (x) = \sum_ {k = x} ^ {n} \binom {n} {k} a ^ {k} (1 - a) ^ {n - k}.
$$

For example, if we want to know the probability that we have two or more up states in four periods we have to calculate

$$
\left( \begin{array}{c} 4 \\ 2 \end{array} \right) \pi^ {2} (1 - \pi) ^ {2} + \left( \begin{array}{c} 4 \\ 3 \end{array} \right) \pi^ {3} (1 - \pi) ^ {1} + \left( \begin{array}{c} 4 \\ 4 \end{array} \right) \pi^ {4} (1 - \pi) ^ {0} = 6 \pi^ {2} (1 - \pi) ^ {2} + 4 \pi^ {3} (1 - \pi) + \pi^ {4}.
$$

# The distribution of the end values

Let  $U = (1 + u)$ ,  $D = (1 + d)$  and  $R = (1 + r)$ . If there are  $k$  down returns and  $n - k$  up returns then the end value of the asset after  $n$  periods is  $S_{n} = S_{0}U^{n - k}D^{k}$ . The number of ways of attaining this ending value is given by the binomial coefficient  $\binom{n}{k}$ . Suppose that the probability of an "up" return is  $\pi$  and the probability of a down return is  $(1 - \pi)$ . Then the probability of reaching the end value of  $S_{n} = S_{0}U^{n - k}D^{k}$  by any one route is  $\pi^{n - k}(1 - \pi)^{k}$ . Thus the probability of reaching this end value is the number of ways of reaching it  $\binom{n}{k}$  times the probability  $\pi^{n - k}(1 - \pi)^{k}$  of reaching it by any given route. The information is summarized in Table 2.

The expected value of the asset after  $n$  periods is given by the equation

$$
\sum_ {k = 0} ^ {n} {\binom {n} {k}} \pi^ {k} (1 - \pi) ^ {n - k} S _ {0} U ^ {k} D ^ {n - k}.
$$

Although complicated in form this is very routine computation that can be made in a spreadsheet or other software.

<table><tr><td>End Value Sn</td><td>Returns</td><td>Probability</td></tr><tr><td>S0UnD0</td><td>n ups and 0 downs</td><td>(n)πn(1−π)0</td></tr><tr><td>S0Un−1D1</td><td>n−1ups and 1 downs</td><td>(n)1πn−1(1−π)1</td></tr><tr><td>S0Un−2D2</td><td>n−2ups and 2 downs</td><td>(n)2πn−2(1−π)2</td></tr><tr><td>S0Un−3D3</td><td>n−3ups and 3 downs</td><td>(n)3πn−3(1−π)3</td></tr><tr><td>:</td><td>:</td><td>:</td></tr><tr><td>S0Un3Dn−3</td><td>3 ups and n−3 downs</td><td>(n)π3(1−π)n−3</td></tr><tr><td>S0Un2Dn−2</td><td>2 ups and n−2 downs</td><td>(n)2π2(1−π)n−2</td></tr><tr><td>S0Un1Dn−1</td><td>1 ups and n−1 downs</td><td>(n)1π1(1−π)n−1</td></tr><tr><td>S0Un0Dn</td><td>0 ups and n downs</td><td>(n)π0(1−π)n</td></tr></table>

Table 2: End Asset Values and Probabilities in  $n$ -period Binomial Model

# Pricing the Call Option

Using risk-neutral valuation, the price of the call which matures in  $n$  periods is calculated as

$$
c _ {0} = \frac {1}{R ^ {n}} \left(\sum_ {k = 0} ^ {n} {\binom {n} {k}} \rho^ {k} (1 - \rho) ^ {n - k} \max [ S _ {0} U ^ {k} D ^ {n - k} - X, 0 ]\right)
$$

where  $\rho = (R - D) / (U - D)$  is the risk-neutral probability and  $U$  and  $D$  are the factors given above. Thus given the strike price  $X$ , the time to maturity  $n$ , the risk-free interest rate  $r$ , it is possible to calculate the call value.

Let  $x$  denote the minimum number of up branches that need to be taken for the terminal value  $S_0 U^x D^{n - x}$  to be greater than the strike price  $X$ . Then the above formula can be written as

$$
c _ {0} = S _ {0} \sum_ {k = x} ^ {n} {\binom {n} {k}} \rho^ {k} (1 - \rho) ^ {n - k} \frac {U ^ {k}}{R ^ {k}} \frac {D ^ {n - k}}{R ^ {n - k}} - \frac {X}{R ^ {n}} \sum_ {k = 0} ^ {n} {\binom {n} {k}} \rho^ {k} (1 - \rho) ^ {n - k}.
$$

Remember that  $B_{\pi}(x)$  denotes the probability that the binomial random variable with parameter  $\pi$  has at least  $x$  "up"-states after  $n$  periods. Letting

$x$  be the number of "up-states" such that the end value of the stock is at least the strike price  $X$ , the call option price can be written more simply as

$$
c _ {0} = S _ {0} B _ {s} (x) - \frac {X}{R ^ {n}} B _ {\rho} (x)
$$

where  $s = \rho U / R$ . This follows since

$$
\begin{array}{l} (1 - s) = \left(1 - \frac {\rho U}{R}\right) = \left(1 - \frac {(R - D) U}{(U - D) R}\right) \\ = \frac {(U - D) R - (R - D) U}{(U - D) R} = \frac {D}{R} \frac {(U - R)}{(U - D)} = \frac {D}{R} \rho . \\ \end{array}
$$

This is really exactly the same as in the one period model. To see Suppose for simplicity that the call has a positive value in the up state so  $x = 1$  and  $n = 1$ . Then we have seen that the value of the call in the one period model is

$$
c _ {0} = \frac {1}{R} \rho (U S _ {0} - X) = S _ {0} \rho \frac {U}{R} - \frac {X}{R} \rho = s S _ {0} - \rho \frac {X}{R}.
$$

Likewise using the formula for replicating the call we have

$$
\Delta = \frac {U S _ {0} - X}{(U - D) S _ {0}} \quad \mathrm {a n d} \quad B = - \frac {D}{R} \frac {U S _ {0} - X}{(U - D)}.
$$

Therefore the value of the replicating portfolio is

$$
\Delta S _ {0} + B = \frac {U S _ {0} - X}{(U - D)} - \frac {D}{R} \frac {U S _ {0} - X}{(U - D)}
$$

which can be rewritten as

$$
\Delta S _ {0} + B = \frac {1}{R} \left(\frac {U S _ {0} (R - D)}{(U - D)} - X \frac {(R - D)}{(U - D)}\right) = \rho S _ {0} \frac {U}{R} - \rho \frac {X}{R} = s S _ {0} - \rho \frac {X}{R}.
$$

# Example

A four period example is illustrated in Figure 1. the example is the same as before with with  $u = 0.75$ ,  $d = -0.25$ ,  $S = 100$ ,  $X = 100$  and  $r = 0.25$  but

extended over four periods. The upper diagrams show the stock price in all possible cases, the middle diagram the call price and the lower diagram the replicating portfolio of  $\Delta$  units of the stock and borrowing a certain amount of the risk-free asset.

As can be seen the amount of stock required and the amount borrowed in order to replicate the call change over time. Thus the replicating portfolio is dynamic and it is necessary to reoptimize the portfolio every period. It is however, true that the change in the portfolio required is self-financing. That is the proceeds from the sale of the old portfolio are just that required to buy the new portfolio at every node of the tree.

Exercise: Check that the replicating portfolio is self-financing.

# Arithmetic and geometric rates of return

This section shows an important difference between the arithmetic and the geometric mean rate of return. It is shown that the geometric mean is always less than the arithmetic mean and that the difference between the two is approximately half the variance of the return. This is an important distinction because it implies that if the rate of return is symmetrically distributed then the final asset value will be asymmetrically distributed. In particular the median of the distribution will fall below the mean of the distribution. Thus one should conclude that one should "expect less than the expected". An important lesson to learn in finance.

Suppose we have an asset worth 100 and for two successive periods it increases by  $20\%$ . Then the value at the end of the first period is 120 and the value at the end of the second period is 144.

Now suppose that instead the asset increases in the first period by  $30\%$  and in the second period by  $10\%$ . The average or arithmetic mean of the

return is  $20\%$ . However the value of the asset is 130 at the end of first period and 143 at the end of the second period. The variability of the return has meant that the asset is worth less after two periods even though the average return is the same. We can calculate the equivalent per period return that would give the same value of 143 after two periods if there were no variance in the returns. That is the value  $\nu$  that satisfies

$$
1 4 3 = 1 0 0 (1 + \nu) ^ {2}.
$$

This value is known as the geometric mean. It is another measure of the average return over the two periods. Solving this equation gives the geometric mean as  $\nu = 0.195826$  or  $19.58\%$  per period² which is less than the arithmetic rate of return per period.

There is a simple relationship between the arithmetic mean return, the geometric mean return and the variance of the return. Let  $\mu_1 = \mu + \sigma$  be the rate of return in the first period and let  $\mu_2 = \mu - \sigma$  be the rate of return in the second period. Here the average rate of return is  $\frac{1}{2} (\mu_1 + \mu_2) = \mu$  and the variance of the two rates is  $\sigma^2$ . The geometric rate of return  $\mu$  satisfies  $(1 + \nu)^2 = (1 + \mu_1)(1 + \mu_2)$ . Substituting and expanding this gives

$$
1 + 2 \nu + \nu^ {2} = (1 + \mu + \sigma) (1 + \mu - \sigma) = (1 + \mu) ^ {2} - \sigma^ {2} = 1 + 2 \mu + \mu^ {2} - \sigma^ {2}
$$

or

$$
\nu = \mu - \frac {1}{2} \sigma^ {2} + \frac {1}{2} (\mu^ {2} - \nu^ {2}).
$$

Since rates of return are typically less than one, the square of the return is even smaller and hence the difference between two squared percentage terms is smaller still. Hence we have the approximation  $\nu \approx \mu -\frac{1}{2}\sigma^2$  or

$$
\mathrm {g e o m e t r i c m e a n} \approx \mathrm {a r i t h m e t i c m e a n} - \frac {1}{2} \mathrm {v a r i a n c e}.
$$

This approximation will be better the smaller are the interest rates and the smaller is the variance. In the example  $\mu = 0.2$  and  $\sigma = 0.1$  so  $\frac{1}{2}\sigma^2 = 0.005$  and  $\mu -\frac{1}{2}\sigma^2 = 0.1950$  which is close to the actual geometric mean of 0.1958.

# Expect less than the expected

We can see the same difference between arithmetic and geometric rates of return in our binomial model to show that the end values for the underlying asset will be asymmetrically distributed. Consider a binomial model where the up and down factors are  $U = 1.3$  and  $D = 1.1$ . Thus the asset either increases by  $30\%$  or by  $10\%$ . Suppose that each is equally likely so that the average return is  $20\%$ . Let the initial value of the asset be 100. Then after one period the ending values are 130 or 110 each with probability  $\frac{1}{2}$ . This is a symmetric distribution centered around the average value of 120. After two periods the ending value is either 169 if there are two successive ups, 143 if there is either one up and one down or one down and one up, or 121 if there are two downs. The probability of these three outcomes, 169, 143 and 121 are  $\frac{1}{4}$ ,  $\frac{1}{2}$  and  $\frac{1}{4}$  respectively. Thus the expected value after two periods is

$$
\frac {1}{4} \times 6 9 + \frac {1}{2} \times 1 4 3 + \frac {1}{4} \times 1 2 1 = 1 4 4.
$$

However the return is less than 144 in three of the four possible ending values. Thus after two periods the distribution of the end values is asymmetric with most of the distribution below the average value. We say that the distribution of the ending values is skewed to the right. The most likely out, the mode, is 143 and it is also in this case equal to the median as the ending value is equally likely to be above or below 143.

Consider the two-period model where the up and down factors are  $1 + \mu +\sigma$  and  $1 + \mu -\sigma$ , the initial value of the asset is  $S_{0}$  and both up and down

movements are equally likely. Then the expected value after two periods is

$$
S _ {0} \left(\frac {1}{4} (1 + \mu + \sigma) ^ {2} + \frac {1}{2} (1 + \mu + \sigma) (1 + \mu - \sigma) + \frac {1}{4} (1 + \mu - \sigma) ^ {2}\right) = S _ {0} (1 + \mu) ^ {2}.
$$

The median value however is

$$
S _ {0} (1 + \mu + \sigma) (1 + \mu - \sigma) = S _ {0} \left((1 + \mu) ^ {2} - \sigma^ {2}\right)
$$

so that the median is below the mean by an amount equal to the variance. Since we have already shown that  $(1 + \nu)^2 = (1 + \mu)^2 - \sigma^2$ , the median of the end value is just  $S_0(1 + \nu)^2$ .

The binomial model is easily extended from two to  $n$  periods. We have in each period the return changes by the factor  $U$  or  $D$ , thus the returns in each period are identically and independently distributed. Let  $U = 1 + \mu + \sigma$  and  $D = 1 + \mu - \sigma$  as before and suppose that the probability of either return is equally likely. Then the median return (if  $n$  is large and even) is

$$
S _ {0} \left((1 + \mu + \sigma) ^ {\frac {n}{2}}\right) \left((1 + \mu - \sigma) ^ {\frac {n}{2}}\right) = \left((1 + \mu + \sigma) (1 + \mu - \sigma)\right) ^ {\frac {n}{2}}
$$

as there will be roughly an equal number of up returns and down returns. The geometric return that produces the same outcome after  $n$  periods is  $(1 + g)^n$ , thus

$$
(1 + \nu) ^ {n} = ((1 + \mu + \sigma) (1 + \mu - \sigma)) ^ {\frac {n}{2}}
$$

or  $(1 + \nu)^{2} = (1 + \mu +\sigma)(1 + \mu -\sigma)$  which is exactly as before. Thus the same approximation  $\nu \approx \mu -\frac{1}{2}\sigma^2$  applies in the  $n$  -period model as well. Since the geometric return gives the median value for the underlying asset and the arithmetic mean gives the average value, the median is always below the average. Thus one should always expect to have less than the average value more than half the time.

Example:  $\mathrm{u} = 0.75$ ,  $\mathrm{d} = -0.25$ ,  $\mathrm{r} = 0.25$ ,  $\mathrm{X} = 100$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/71260353-9bdb-4766-88df-bb675f8818cf/334b2aaae74386e17d33de7a83a86a52577ade0eea8558c15f84422f953dbb49.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/71260353-9bdb-4766-88df-bb675f8818cf/fb16c54e8d028cce2508baf17bbedd63a0a08cad1592ff0d866c452cf223abb0.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/71260353-9bdb-4766-88df-bb675f8818cf/5dacecd0a8f01f04a8506618928eaa69304cfaeb51558d5a507518d92b9dd3e8.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/71260353-9bdb-4766-88df-bb675f8818cf/b4e289bb3c1fde26f2f5793c7d4e02480b2d7b38f4b6d069053d67266b6664ad.jpg)  
Figure 1: FOUR-PERIOD BINOMIAL EXAMPLE

# OPTION RISK

# Introduction

In these notes we consider the risk of an option and relate it to the standard capital asset pricing model. If we are simply interested in valuing the option, then we can largely ignore this issue. We have seen from our notes on the one-period binomial model that to price an option we only need to know the price of the underlying asset. It is not necessary to know whether the underlying asset is priced fairly relative to other assets or indeed anything about other assets at all. However, if we are interested in forming an investment portfolio that includes options or other derivatives, then the risk and return of that portfolio will depend on the risk and return characteristics of the options. Thus we will need to know how the  $\beta$  of an option relates to the  $\beta$  of the underlying stock.

We can examine the issue of risk in a simple binomial model. So this is what we shall do. Most textbooks on options don't discuss risk and therefore you will need to keep these notes for your revision.

# Risk in the binomial model

We'll use the simple example we used when discussing the one period binomial model. Suppose the price of the underlying stock is 100 and at the end of the period it has either risen to 175 or has fallen to 75. That is  $u = 0.75$  and  $d = -0.25$ , so that the value of the stock after one period in the up state is  $100(1 + u) = 175$  and the value in the down state is  $100(1 + d) = 75$ . The net growth rate of the value of the stock in the up state is  $75\%$ , and the net growth in the value of the stock in the down state is  $-25\%$ .

We showed that in determining the price of the option, the probability that the stock price rises of falls was irrelevant. Now however suppose that the true probability of the up state is  $\pi = 4/5$  and the probability of the down state is  $(1 - \pi) = 1/5$ . The expected rate of return on the stock is therefore  $\mu_{S} = (4/5)75 + (1/5)(-25) = 55\%$  and with an interest rate of  $25\%$  the excess over the risk-free rate is  $\mu_{S} - r = 55 - 25 = 30\%$ . Given that the price of the call is 30, the rate of return on the call option is  $(75 - 30)/30$  or  $150\%$  in the up state and  $-100\%$  in the down state. Thus the expected rate of return on the call option is  $\mu_{C} = 100\%$  and the excess return over the risk-free rate is  $\mu_{C} - r = 75\%$ . Thus the excess return on the call is 2.5 times the excess return on the underlying asset. We know that this extra return will only come at the cost of extra risk.

The standard deviation of the rate of return on the stock is often simply referred to as the stock's volatility. The volatility of the stock is

$$
\sigma_ {S} = \sqrt {\frac {4}{5} (7 5 - 5 5) ^ {2} + \frac {1}{5} (- 2 5 - 5 5) ^ {2}} = 40 \%
$$

and the standard deviation of the rate of return on the call option, or the call's volatility is

$$
\sigma_ {C} = \sqrt {\frac {4}{5} (1 5 0 - 1 0 0) ^ {2} + \frac {1}{5} (- 1 0 0 - 1 0 0) ^ {2}} = 1 0 0
$$

Thus the standard deviation of the call returns is again 2.5 times the standard deviation of the stock returns.

Now remember that  $\Delta$  measures the responsiveness of the value of the call to changes in the value of the stock. In our example  $\Delta = 3/4$ . It is natural to measure this change in percentage terms. That is we define

$$
\Omega \equiv \frac {S}{c} \Delta
$$

to be the elasticity of the option, that is the percentage change in the call value relative to a given percentage change in the stock value. In our example  $S = 100$  and  $c = 30$ , so that  $\Omega = 2.5$ .

This is not a coincidence. If  $\pi$  is the probability of the up state and  $1 - \pi$  is the probability of the down state then expected rate of return on the stock and its volatility are:

$$
\mu_ {S} = \pi u + (1 - \pi) d \qquad \mathrm {a n d} \qquad \sigma_ {S} = \sqrt {\pi (1 - \pi)} (u - d).
$$

Equally the expected rate of return on the call and its volatility are

$$
\mu_ {C} = \frac {\pi c _ {u} + (1 - \pi) c _ {d} - c}{c} \qquad \mathrm {a n d} \qquad \sigma_ {C} = \sqrt {\pi (1 - \pi)} \frac {c _ {u} - c _ {d}}{c}.
$$

Then remembering that  $\Delta$  is the change in the call price over the change in the stock price, we have

$$
\Omega \equiv \frac {S}{c} \Delta = \frac {S}{c} \frac {c _ {u} - c _ {d}}{(u - d) S} = \frac {c _ {u} - c _ {d}}{c (u - d)}.
$$

It is therefore clear using the expressions above for  $\sigma_{C}$  and  $\sigma_{S}$  that

$$
\sigma_ {C} = \Omega \sigma_ {S}.
$$

Thus the ratio of the call and stock volatilities is exactly the option elasticity.

Remember that in synthesizing the call option we used the equations

$$
\Delta (1 + u) S + (1 + r) B = c _ {u}
$$

$$
\Delta (1 + d) S + (1 + r) B = c _ {d}.
$$

to show that the call price is  $c = \Delta S + B$ . We can therefore substitute for  $B = c - \Delta S$  to write these two equations as

$$
\Delta (1 + u) S - c _ {u} = (1 + r) (\Delta S - c)
$$

$$
\Delta (1 + d) S - c _ {d} = (1 + r) (\Delta S - c).
$$

Multiplying the first equation by  $\pi$  and the second equation by  $(1 - \pi)$  and adding the resulting two equations gives

$$
\pi (\Delta (1 + u) S - c _ {u}) + (1 - \pi) (\Delta (1 + d) S - c _ {d}) = (1 + r) (\Delta S - c).
$$

Then dividing by  $c$ , using the definition of  $\Omega = \Delta(S / c)$  and after some rewriting gives

$$
\mu_ {C} - r = \Omega (\mu_ {S} - r)
$$

or

$$
\mu_ {C} = r + \left(\frac {\mu_ {S} - r}{\sigma_ {S}}\right) \sigma_ {C}.
$$

This is of course the standard equation used to express an asset as a portfolio of the stock and the risk-free asset, that we have seen previously in Asset Pricing and Portfolio Choice. As we know the call option can be replicated by a fraction of the stock and selling the risk-free asset this should not be surprising. That is the risk and return of the call lie on somewhere on the risk-return line with intercept of  $r$  and slope of  $(\mu_S - r) / \sigma_S$ . The elasticity  $\Omega$  gives the position of the call along this line. Rewriting our equation on the excess return again

$$
\mu_ {C} = \Omega \mu_ {S} + (1 - \Omega) r.
$$

Thus the call can be seen as the portfolio of the stock and the risk-free asset with a weight of  $\Omega$  attached to the stock. Since we have seen that to synthesize the call requires borrowing the risk-free asset, we have that  $\Omega > 1$  and the call volatility is always greater than the stock volatility.

This is seen in Figure 1. In the diagram the call option is always to the right of the underlying stock as it will have higher volatility and higher expected return than the underlying asset itself. It can also be seen that a call with a higher strike price will be more risky and therefore will lie further out along the risk and return line.

If the same analysis is repeated for a put option it is found that  $\Delta$  is negative and  $B$  is positive. This means that replicating the put option involves

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/71260353-9bdb-4766-88df-bb675f8818cf/73f428e2ee5f830294fade249271f2d95153ce06c43f6e96b9ea40aab8aac7fa.jpg)  
Figure 1: RISK-RETURN DIAGRAM:  $(\sigma, \mu)$

selling the underlying asset and buying the risk-free asset (investing). As the underlying asset is sold short a put option will be located on the lower arm of the risk-return diagram. The expected return is reduced because there is a future obligation from the short sale rather than a return although the obligations are still risky and therefore have a positive standard deviation. It can therefore be seen that put options are never of themselves efficient portfolios although since they will be negatively correlated with the underlying asset they can provide good hedging opportunities.

We now consider the  $\beta$  of a call option. The Capital Asset Pricing Model, shows that for any asset, the excess return or risk-premium satisfies

$$
\mu_ {S} - r = \beta_ {S} (\mu_ {M} - r)
$$

where  $\mu_{M}$  is the expected rate of return on the market portfolio and  $\beta_{S}$  is the covariance of the stock's rate of return with the market divided by the variance of the rate of return on the market portfolio.

It is therefore simple to combine our excess return equation for the call and the CAPM formula to derive

$$
\mu_ {C} - r = \Omega \beta_ {S} (\mu_ {M} - r).
$$

It can be shown that  $\Omega \beta_{S}$  is the covariance of the rate of return of the call with the market divided by the variance of the rate of return of the market, so that the beta of the call is  $\beta_{C} = \Omega \beta_{S}$ . The option beta is simply the elasticity time the beta of the underlying asset. Provided that  $\beta_{S} > 0$ , since  $\Omega > 1$  for a call option, it is the case that  $\beta_{C} > \beta_{S}$  and the beta for the call is higher than the beta of the underlying asset. This is illustrated in Figure 2 which shows the security market line which plots expected return  $\mu$  against  $\beta$ . The security market line intercepts the vertical axis at  $r$  the rate of return on the risk-free asset which is uncorrelated with the market return (as it is risk-less) and hence has a zero beta. Since  $\Omega \geq 1$  the call option has a higher  $\beta$  than the underlying asset and so lies to the right of the stock on the security market line. Put options on the other hand are anti-correlated with the stock, their value goes up as the stock goes down, so they have a negative  $\beta$  and are located to the left of the risk-free asset on the security market line.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/71260353-9bdb-4766-88df-bb675f8818cf/0f370323df96eaef3edfb089e55e5f528b44f8eac65fddfbd4087dce3419e04e.jpg)  
Figure 2: SECURITY MARKET LINE:  $(\beta, \mu)$

Let's return once again to our simple example and suppose that the expected rate of return on the market portfolio is  $40\%$ . Then since the excess return on the stock is  $30\%$  and the excess return on the market portfolio is  $40 - 25 = 15\%$ , the beta of the stock is  $\beta_{S} = 2$  and the beta of the option is  $\beta_{C} = \Omega \beta_{S} = 5$ . Since  $\beta > 0$  and the expected rate of return on the market portfolio is greater than the risk-free rate, the expected rate of return on the call is also greater than the risk-free rate. Remember that the expected rate of return on the call using the risk-neutral probabilities is equal to the risk-free rate. Thus the risk-neutral probability for the up state is less than the true probability,  $p < \pi$ . This simply reflects that in adjusting for the risk of the call the probability of the high rate of return is shaded downward to

reflect an aversion to risk. In our example the risk-neutral probability is  $1/2$  and the actual probability of the up state is  $4/5$ .

# Summary

These notes have provided a connection between option pricing and standard models of portfolio choice and the Capital Asset Pricing Model (CAPM). The connection is provided by the option elasticity  $\Omega$ . We have seen previously that  $\Delta$  measures how much of the stock to buy to create a riskless hedge or to replicate the option. The option elasticity,  $\Omega$  is a proportionate measure of  $\Delta$ ,  $\Omega = S\Delta / c$ . The elasticity  $\Omega$  therefore measures the proportion of the portfolio placed in the underlying asset in order to replicate the option. It is therefore a portfolio weight rather a quantity of stock bought. The elasticity of the call option will be no less than one since to replicate the call option it will be necessary to borrow, that is go short in the risk-free asset, to fund the acquisition of the underlying asset. The elasticity also can be combined with the beta of the stock,  $\beta_{S}$  to calculate the beta of the call option  $\beta_{C} = \Omega \beta_{C}$ . Since  $\Omega \geq 1$  the call option will be a more aggressive asset that the underlying stock.

# Exotic Options

These notes describe the payoffs to some of the so-called exotic options. There are a variety of different types of exotic options. Some of these options are path dependent so that the value of the option depends on the previous values of the underlying as well as the current price of the underlying.

Keywords: Digital options, Barrier options, Path dependent options, Lookback options, Asian options.

Reading Hull Chapter 22 [Just read about the different types exotic options and their payoffs. Ignore the equations describing how they are priced for the moment.]

# Introduction

American and European puts and calls are sometimes referred to as plain vanilla options. There are however a wide variety of other types of options that are traded. These are sometimes referred to as exotic options. In the past most exotic options were traded in over the counter markets rather than exchanges, but more recently these alternative option types can be found on exchange markets too. The variety and types of options that are available are really only limited by imagination. As long as the payoff can be well specified, it can depend on any property of the price of the underlying asset. The following list just gives a few examples.

# Digital Options

One simple type is the digital or binary option. The payoff to a digital option depends on whether the price of the underlying asset at maturity is greater

or less than the strike price. Thus for a digital call option the payoff at maturity is:

$$
c _ {T} ^ {b} = \left\{ \begin{array}{l l} 0 & \text {i f} S _ {T} \leq X \\ 1 & \text {i f} S _ {T} > X \end{array} \right.
$$

and the payoff at maturity to a digital put option is:

$$
p _ {T} ^ {b} = \left\{ \begin{array}{l l} 1 & \text {i f} S _ {T} \leq X \\ 0 & \text {i f} S _ {T} > X. \end{array} \right.
$$

# Range Forward Contract

A range forward contract specifies a band  $[X_2, X_1]$ . If the price of the underlying at maturity is within the band then the holder is obliged to buy the asset at its current price. If the price of the underlying at maturity is below  $X_2$  then the holder has to buy at  $X_2$  and if the price of the underlying at maturity is above  $X_1$  then the holder has to buy at  $X_1$ . The range forward is designed so that the initial value of the contract is zero and therefore similar to a forward contract. It is equivalent to a combination of a long call option with a strike price of  $X_1$  and a written put option with a strike price of  $X_2$ , where the strike prices are chosen so that the put and the call have the same prices. The payoff at maturity to a range forward contract is  $\max[S_T - X_1, 0] - \max[X_2 - S_T, 0]$ .

# Break Forward

A break forward contract specifies a delivery price K and a break price B at which the forward price can be broken. Thus at the maturity date, the break price will be paid on a long forward position if -B > ST -K. For example if the break price is $10 and the delivery price is $100, the payoff to the long forward position is ST - 100. If ST < 90, there will be a loss of more than $10 and it will be worth while to pay the break price of $10. The payoff

at maturity is therefore max[S_T - 100, -10] = max[S_T - 90, 0] - 10. This then is just like a call option with a strike price of $90 but where a payment of $10 is paid at maturity. Since the break forward costs nothing when it is initiated, it is essentially a deferred payment option, where the payment of the initial cost of the option is deferred until maturity. Suppose that the interest rate until maturity is 1/9, then in our example a call option with a strike price of $90 which costs $9 us equivalent to a long break forward with a delivery price of $100 and break price of $10. In general letting r denote the interest to maturity and ct the current price of the call option with a strike price X, then the call option is equivalent to a long position in a break forward contract with delivery price X + (1+r)ct and break price (1+r)ct.

# Rainbow Options

It is possible to write options on more than one underlying asset. Such options are called rainbow options. For example a put option may specify that you have the option to deliver one from a range of different assets. Clearly if the exercise price is the same for all assets specified, and if you decide to exercise your option to sell, you will choose to deliver that asset with the lowest current price. Thus if there are two assets specified and their prices are  $S^1$  and  $S^2$ , then the intrinsic value of the put option is

$$
x \text {I n t r i n s i c v a l u e} = \left\{ \begin{array}{l l} X - \min  [ S ^ {1}, S ^ {2} ] & \text {i f} \min  [ S ^ {1}, S ^ {2} ] \leq X \\ 0 & \text {i f} \min  [ S ^ {1}, S ^ {2} ] > X. \end{array} \right.
$$

# "As-you-like-it" Options

This is an option where the holder can decide at a specific time whether the option is a put or a call option. Suppose that the where the decision must be made is  $t$ . The value of the option at this time is  $\max [c_t, p_t]$ . If the as-you-like-option offers the choice between a European put and a European

call with the same strike price and same maturity date  $T$ , then the put call parity condition can be used and

$$
\max [ c _ {t}, p _ {t} ] = \max \left[ c _ {t}, c _ {t} + \frac {X}{(1 + r)} - S _ {t} \right] = c _ {t} + \max \left[ 0, \frac {X}{(1 + r)} - S _ {t} \right]
$$

where  $r$  is the risk-free interest rate between  $t$  and the maturity date  $T$ . The as-you-like-it option therefore consists of a portfolio of a call option with strike price  $X$  and maturity at date  $T$  and a put option with strike price  $\frac{X}{(1 + r)}$  and maturity at date  $t$ .

# Barrier Options

Barrier options have a payoff that depends on whether the underlying asset reaches a certain level, the barrier, prior to maturity. There are two main varieties of barrier option. The knock-in only pays out if the price of the underlying reaches the barrier and the knock-out only pays out if the underlying does not reach the barrier. These can be further classified by whether the barrier is set above or below the initial value of the underlying asset. If the barrier is above the initial value of the underlying, it is said to be an up option. If the barrier is below the initial value of the underlying asset, it is said to be a down option. The payoff at maturity for a down-and-out call option is

$$
c _ {T} ^ {d o w n - o u t} = \left\{ \begin{array}{l l} c _ {T} & \text {i f} S _ {t} > B \quad \text {f o r a l l} t \leq T \\ 0 & \text {i f} S _ {t} <   B \quad \text {f o r a n y} t \leq T \end{array} \right.
$$

where  $B$  is the barrier and  $c_{T}$  is the value of the plain vanilla call option. Clearly if you own both a down and out call option together with a down an in call option on the same underlying with the same barrier, strike prices and maturity, then you have a plain vanilla call option. So for calls and puts and down and up options:

$$
v a n i l l a = \text {i n} + \text {o u t}.
$$

Barrier option sometimes specify a double barrier with an upper and lower limit. Sometimes the barrier changes over time. Sometimes a rebate is paid if the barrier is hit. Some options become barrier options if a particular value, usually the strike price, for the underlying is reached.

# Lookback Options

Lookback options have a payoff that depends on the maximum or minimum value that the underlying asset reaches during the lifetime of the option. The payoff to maturity of a European-style lookback call is  $S_{T} - S_{min}$  where  $S_{min}$  is the minimum value that the underlying achieves over the option's lifetime. The payoff to maturity of a European-style lookback put is  $S_{max} - S_{T}$  where  $S_{max}$  is the maximum value that the underlying achieves over the option's lifetime. Note that if you hold both a lookback put and a lookback call your payoff is  $S_{max} - S_{min}$ . It is like you bought when the price was lowest and sold when the price was highest. Of course such sweet deals are likely to be costly.

# Asian Options

An Asian option has a payoff that depends on the average price of the underlying asset from its starting date. Thus the intrinsic value of an average price Asian call option is  $\max[0, S_{ave} - X]$ , where  $S_{ave}$  is the average value of the asset from the start of the option to the current date. Another type of Asian option is the average strike price type, where the strike price is the average value. In this case the intrinsic value of the call is  $\max[0, S_t - S_{ave}]$  and the intrinsic value of the put is  $\max[S_{ave} - S_t, 0]$ .

# Asset Price Dynamics

# Introduction

These notes give assumptions of asset price returns that are derived from the efficient markets hypothesis. Although a hypothesis, there is widespread empirical evidence that broadly supports the hypothesis and therefore the assumptions made on the process governing asset price changes. Continuous time stochastic processes are discussed and the geometric Brownian motion model for stock price changes is derived. We first look at rates of return as if they are known for certain and then consider the realistic case that asset price returns are unknown in advance.

Keywords: continuously compounded rate of return, stochastic process, random walk, martingale, Markov property Wiener process, geometric Brownian motion, Ito calculus.

Reading: You should read Hull chapter 12 and perhaps the very first part of chapter 13.

# Rates of Return

# The Rate of Return

The rate of return is simply the end value less the initial value as a proportion of the initial value. Thus if 100 is invested and at the end value is 120 then the rate of return is  $\frac{120 - 100}{100} = \frac{1}{5}$  or  $20\%$ . If the initial investment is  $B_{0}$  and the end value is  $B_{T}$  after  $T$  periods then the rate of return is

$$
r (T) = \frac {B _ {T} - B _ {0}}{B _ {0}}
$$

or equivalently the rate of return  $r(T)$  satisfies  $B_{T} = B_{0}(1 + r(T))$ .

It is important to know the rate of return. However to compare rates of return on different investments with different time horizons it is also important to have a measure of the rate of return per period. One method of making this comparison is to use continuously compounded rates of return. To explain this we first consider compound returns and then show what happens when the compounding is continuous.

# Compound Rates of Return

Compound interest rates are calculated by assuming that the principal (initial investment) plus interest is re-invested each period. Compounding might be done annually, semi-annually, quarterly, monthly or even daily. Assuming the re-investment is done after each period, the per-period interest rate  $r$  on the investment satisfies

$$
\big (1 + r (T) \big) = \big (1 + r \big) ^ {T}.
$$

Now consider dividing up each period into  $n$  sub-periods each of length  $\Delta t$ . This is illustrated in Figure 1. Then if the compounding is done  $n$  times per period, the compound interest rate  $r$  satisfies

$$
(1 + r (T)) = (1 + \frac {r}{n}) ^ {n T}.
$$

For example consider a time period of one-year and suppose an investment of 100 that yields 120 after two years ( $T = 2$ ) has a rate of return  $r(2) = 0.2$ . If the interest rate is annualised using annual compounding ( $n = 1$ ,  $T = 2$ ), then  $r = 0.09544$ ; with semi-annual compounding ( $n = 2$ ,  $T = 2$ ) the annualised interest rate is  $r = 0.09327$ ; with quarterly compounding ( $n = 4$ ,  $T = 2$ ) the annualised interest rate is  $r = 0.0922075$  etc.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/71260353-9bdb-4766-88df-bb675f8818cf/e0b724b2bc635afccbd102d4932929768d0110f2d331c99fc63e735704dbe1ff.jpg)  
Figure 1: DIVIDING A TIME INTERVAL  $n$  SUB-PERIODS

# Continuous Compounding

Suppose that compounding is done  $n$  times per period and let the length of time between compounding be denoted by  $\Delta t = \frac{1}{n}$ . Continuous compounding occurs as  $\Delta t \to 0$  or equivalently as  $n \to 0$ . In this case the compounding factor  $r$  satisfies

$$
\left(1 + \frac {r}{n}\right) ^ {n T} = \left(1 + r \Delta t\right) ^ {\frac {T}{\Delta t}}.
$$

Let  $m = \frac{1}{r\Delta t}$ , then

$$
(1 + r \Delta t) ^ {\frac {T}{\Delta t}} = (1 + \frac {1}{m}) ^ {m r T} = \left((1 + \frac {1}{m}) ^ {m}\right) ^ {r T}.
$$

As we let the interval between compounding  $\Delta t$  go to zero then  $m\to \infty$ . The limit of  $(1 + \frac{1}{m})^m$  as  $m\to \infty$  is well known. In particular we have

$$
m = 1: \qquad \left(1 + \frac {1}{m}\right) ^ {m} = \left(1 + \frac {1}{1}\right) = 2
$$

$$
m = 1 0: \quad \left(1 + \frac {1}{m}\right) ^ {m} = \left(1 + \frac {1}{1 0}\right) ^ {1 0} = 2. 5 9 3 7 4
$$

$$
m = 1 0 0: \quad \left(1 + \frac {1}{m}\right) ^ {m} = \left(1 + \frac {1}{1 0 0}\right) ^ {1 0 0} = 2. 7 0 4 8 1
$$

$$
m = 1 0 0 0: \qquad \left(1 + \frac {1}{m}\right) ^ {m} = \left(1 + \frac {1}{1 0 0 0}\right) ^ {1 0 0 0} = 2. 7 1 6 9 2
$$

$$
m = 1 0 0 0 0: \qquad \left(1 + \frac {1}{m}\right) ^ {m} = \left(1 + \frac {1}{1 0 0 0 0}\right) ^ {1 0 0 0 0} = 2. 7 1 8 1 5
$$

$$
m = \vdots \quad \vdots = \vdots
$$

$$
m = \infty \qquad \qquad \left(1 + \frac {1}{m}\right) ^ {m} = e = 2. 7 1 8 2 8.
$$

In the limit as  $m \to \infty$ ,  $(1 + \frac{1}{m})^m \to e$  where  $e = 2.7182818$  is the base of the natural logarithm. Thus the compounding factor is given by

$$
(1 + \frac {r}{n}) ^ {n T} = \left((1 + \frac {1}{m}) ^ {m}\right) ^ {r T} \rightarrow e ^ {r T}.
$$

This gives a simple method for calculating the continuously compounded rate of return  $r$  from the formula  $(1 + r(T)) = e^{rT}$ . Since  $(1 + r(T)) = B_T / B_0$  simply take logs of both sides gives (since  $\ln e^{rT} = rT$ )

$$
r = \frac {1}{T} \ln \left(\frac {B _ {T}}{B _ {0}}\right) = \frac {1}{T} (\ln S _ {B} - \ln B _ {0}).
$$

This is known as the continuously compounded rate of return.

# The Continuously Compounded Rate of Return

The continuously compounded rate of return has the property that longer period rates of return can be computed simply by adding shorter continuously

compounded rates of return. This is a very convenient feature which makes using the continuously compounded rates of return especially simple. To see this let  $r_t$  denote the continuously compounded rate of return from period  $t$  to  $t + 1$ , that is

$$
r _ {t} = \ln \left(\frac {B _ {t + 1}}{B _ {t}}\right)
$$

where  $B_{t}$  is the value of the asset at time  $t$ . Let  $r(T)$  denote the continuously compounded rate of return over the period 0 to  $T$ ,

$$
r (T) = \ln \left(\frac {B _ {T}}{B _ {0}}\right) = \ln B _ {T} - \ln B _ {0}.
$$

Suppose that  $T = 2$  then we can write this as

$$
r (2) = \ln B _ {2} - \ln B _ {0} = (\ln B _ {2} - \ln B _ {1}) + (\ln B _ {1} - \ln B _ {0}) = r _ {2} + r _ {1}.
$$

Thus the continuously compounded rate of return over two periods is simply the sum of the two periods by period returns. In general for any value of  $T$  we can write

$$
\begin{array}{l} r (T) = (\ln B _ {T} - \ln B _ {T - 1}) + (\ln B _ {T - 1} - \ln B _ {T - 2}) + \dots + (\ln B _ {2} - \ln B _ {1}) + (\ln B _ {1} - \ln B _ {0}) \\ = r _ {T - 1} + r _ {T - 2} + \dots + r _ {1} + r _ {0} = \sum_ {t = 0} ^ {T - 1} r _ {t}. \\ \end{array}
$$

Thus the continuously compounded rate of return over time  $T$  is simply the sum of the period by period returns. If  $r_t$  is constant over time then  $r(T) = rT$ .

# A Differential Equation

Let  $r_t$  denote the rate of return between  $t$  and  $t + 1$ . Then over any sub-interval of  $\Delta t$  say between  $t$  and  $t + \Delta t$ ,  $r_t$  satisfies

$$
B _ {t + \Delta t} = (1 + r _ {t} \Delta t) B _ {t}.
$$

Then taking the limit as  $\Delta t\to 0$  we have  $B_{t + \Delta t} - B_t\rightarrow dB(t)$  where  $B(t)$  is the price at time  $t$  and  $\Delta t\to dt$ . Hence we can write

$$
d B (t) = r _ {t} B (t) d t
$$

or equivalently

$$
\frac {d B (t)}{B (t)} = r _ {t} d t.
$$

This is a differential equation. If we assume that  $r_t = r$  is independent of the time  $t$ , then this equation can be solved at by integration to give the asset price at time  $T$

$$
\ln B _ {T} - \ln B _ {0} = = \ln \left(\frac {B _ {T}}{B _ {0}}\right) = r T
$$

or

$$
B _ {T} = B _ {0} e ^ {r T}.
$$

# Stochastic Processes

We have assumed so far that the rate of return was known so that we were dealing with a risk-free asset. But for most assets the rate of return is uncertain or stochastic. As the asset value also changes through time the we say that the asset price follows a stochastic process. Fortunately the efficient markets hypothesis provides some strong indication of what properties this stochastic process will have.

# A Coin Tossing Example

To examine the form that uncertain returns may take it is useful to think first of a very simple stochastic process. This we have already seen as the binomial model is itself a stochastic process. As an example consider the case of tossing a fair coin where one unit is won if the coin ends up Heads

and one unit is lost if the coin ends up Tails. An example of the possible payoffs for a particular sequence of Heads and Tails is illustrated in Figure 2.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/71260353-9bdb-4766-88df-bb675f8818cf/cf4b3958f73ea2a88b94ae9b3e034d4669b13adca5ccadcaaab240aa4def6ba0.jpg)  
Figure 2: A COIN TOSSING STOCHASTIC PROCESS

The important properties of this example are that the distribution of returns are 1) identically distributed at each toss (there is an equal chance of a Head or a Tail); 2) independently distributed (the probability of a Head today is independent of whether there was a Head yesterday); 3) the expected return is the same each period (equal to zero); 4) the variance is constant at each period (equal to one).

There are some important implications to note about this process. First let  $x_{t}$  denote the winnings on the  $t$ th toss. We have  $x_{0} = 0$  and  $\operatorname{E}[x_1] = 0$  where  $\operatorname{E}[x_t]$  denotes the expected winnings at date  $t$ . Then we also have at any date

$$
\operatorname {E} \left[ x _ {t + 1} \right] = x _ {t}.
$$

Any process with this property is said to be a martingale. Another important property is that the variance of  $x$  is increasing proportionately to the number of tosses. In particular letting  $\sigma_t^2$  denote the variance of the winnings at the  $t$ th toss we have  $\sigma_t^2 = t$  or in terms of the standard deviation (the square root of the variance

$$
\sigma_ {t} = \sqrt {t}.
$$

This is illustrated in Figure 3. Figure 3 shows all possible winnings through four tosses. The variance of winnings is easily calculated at each toss. For example at the second toss the expected winnings are zero so the variance is given by

$$
\sigma_ {2} ^ {2} = \frac {1}{4} (2 - 0) ^ {2} + \frac {1}{2} (0 - 0) ^ {2} + \frac {1}{4} (- 2 - 0) ^ {2} = 1 + 1 = 2
$$

and so the standard deviation is  $\sigma_{2} = \sqrt{2}$

# A Stochastic Process for Asset Prices

The efficient markets hypothesis implies that all relevant information is rapidly assimilated into asset prices. Thus asset prices will respond only to new information (news) and since news is essentially unforecastable so to are asset prices. The efficient market hypothesis also implies that it is impossible to consistently make abnormal profits by trading on publicly available information and in particular the past history of asset prices. Thus only the current asset price is relevant in predicting future prices and past prices are irrelevant. This property is known as the Markov property for stock prices. If we add a further assumption that the variability of asset prices is roughly constant over time, then the asset price is said to follow a random walk. This was true of our coin tossing example above.

Let  $u_{t}$  denote the random rate of return from period  $t$  to  $t + 1$ . Then

$$
S _ {t + 1} = (1 + u _ {t}) S _ {t}.
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/71260353-9bdb-4766-88df-bb675f8818cf/ff882a40cee64f2d31c0e7844fe894676babb997b2f473fb5336cbdd4b7ca4ec.jpg)  
Figure 3: COIN TOSSING EXAMPLE: THE VARIANCE IS PROPORTIONAL TO TIME

$$
\sigma^ {2} = 1 \quad \sigma^ {2} = 2 \quad \sigma^ {2} = 3 \quad \sigma^ {2} = 4
$$

The return  $u_{t}$  is now random because the future asset price is unknown. It can be considered as a random shock or disturbance. Taking natural logarithm of both sides gives

$$
\ln S _ {t + 1} = \ln S _ {t} + \ln (1 + u _ {t}).
$$

We can then see how the stochastic process for the asset price evolves. Suppose we start from a given value  $S_0$ , then

$$
\ln S _ {1} = \ln S _ {0} + \ln \left(1 + u _ {0}\right)
$$

$$
\ln S _ {2} = \ln S _ {1} + \ln (1 + u _ {1}) = \ln S _ {0} + \ln (1 + u _ {0}) + \ln (1 + u _ {1})
$$

$$
\ln S _ {3} = \ln S _ {2} + \ln (1 + u _ {2}) = \ln S _ {0} + \ln (1 + u _ {0}) + \ln (1 + u _ {1}) + \ln (1 + u _ {2})
$$

$$
\begin{array}{c} \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \end{array}
$$

$$
\ln S _ {T} = \ln S _ {0} + \sum_ {i = 0} ^ {T - 1} \ln (1 + u _ {i}).
$$

Let  $\omega_{t} = \ln (1 + u_{t})$ . We can then write

$$
\ln S _ {T} = \ln S _ {0} + \sum_ {i = 0} ^ {T - 1} \omega_ {i}.
$$

We shall assume that  $\omega_{t}$  is a random variable which is identically and independently distributed and such that the expected value  $\operatorname{E}[\omega_t] = \nu$  and variance  $\operatorname{Var}[\omega_t] = \sigma^2$ . There is a great deal of evidence to support the assumption that  $\omega_{t}$  is independently and identically distributed and over short time horizons. It is also usually reasonable to assume that the expected value  $\nu$  and variance  $\sigma^2$  are independent of time for the short time horizons that we normally consider in pricing options.

We shall make a further assumption that each  $\omega_{t}$  is normally distributed. Since the sum of randomly distributed random variables is normally distributed, and since  $S_0$  is known the natural logarithm of the asset price will also be normally distributed. Taking expectations we can therefore show that

$$
\operatorname {E} \left[ \ln S _ {T} \right] = \ln S _ {0} + \nu T
$$

and

$$
\mathrm {V a r} [ \ln S _ {T} ] = \sigma^ {2} T.
$$

Since the logarithm of the asset price is normally distributed the asset price itself is said to be lognormally distributed. In practice when one looks at the empirical evidence asset prices are reasonably closely lognormally distributed.

# Lognormal Random Variable

We have assumed that that  $\omega_{t} = \ln (1 + u_{t})$  is normally distributed with an expected value of  $\nu$  and variance  $\sigma^2$ . But  $1 + u_{t}$  is a lognormal variable. Since  $1 + u_{t} = e^{\omega_{t}}$  we might guess that the expected value of  $u_{t}$  is  $\operatorname{E}[u_t] = e^\nu - 1$ . However this would be WRONG. The expected value of  $u_{t}$  is

$$
\operatorname {E} [ u _ {t} ] = e ^ {\nu + \frac {1}{2} \sigma^ {2}} - 1.
$$

The expected value is actually higher than anticipated by half the variance. The reason why can be seen from looking at an example of the lognormal distribution which is drawn in Figure 4. The distribution is skewed and as the variance increases the lognormal distribution will spread out. It cannot spread out too much in a downward direction because the variable is always non-negative. But it can spread out upwards and this tends to increase the mean value. One can likewise show that the expected value of the asset price at time  $T$  is

$$
\operatorname {E} [ S _ {T} ] = S _ {0} e ^ {(\nu + \frac {1}{2} \sigma^ {2}) T}.
$$

Letting  $\mu = \nu +\frac{1}{2}\sigma^2$  we have

$$
\operatorname {E} [ S _ {T} ] = s _ {0} e ^ {\mu T}
$$

so that  $\mu$  is the expected continuously compounded rate of return. We will explain the relationship between  $\mu$  and  $\nu$  a little bit further below.

# Standard Normal Variable

We have seen that  $\ln S_T$  is normally distributed with mean (expected value) of  $\ln S_0 + \nu T$  and variance of  $\sigma^2 T$ . It is useful to transform this to a variable

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/71260353-9bdb-4766-88df-bb675f8818cf/7827bd90c967a53fdad474eedc240170de07c413cd373afea96303dcfb096810.jpg)  
Figure 4: A LOGNORMAL DISTRIBUTION

which has a standard normal distribution with mean of zero and standard deviation of one. Such a variable is called a standard normal variable. To make this transformation, we subtract the mean and divide by the standard deviation (square root of the variance). Thus

$$
\frac {\ln S _ {T} - \ln S _ {0} - \nu T}{\sigma \sqrt {T}}
$$

is a standard normal variable. We let  $N(x)$  denote the cumulative probability that the standard normal variable is less than or equal to  $x$ . A standard normal distribution is drawn in Figure 5. It can be seen that  $N(0) = 0.5$  as the normal distribution is symmetric and half the distribution is to the left of the mean value of zero. It also follows from symmetry that if  $x > 0$ , then  $1 - N(x) = N(-x)$ . We will use this property later when we look at the Black-Scholes formula.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/71260353-9bdb-4766-88df-bb675f8818cf/9a3d417bf296598e5a13c589c505dbf97ca3d71733626ea1a3c6f198a5504cbc.jpg)  
Figure 5: A STANDARD NORMAL DISTRIBUTION.  $N(0) = 0.5$ .

# Arithmetic and geometric rates of return

We now consider  $\mu$  and  $\nu$  again. Suppose we have an asset worth 100 and for two successive periods it increases by  $20\%$ . Then the value at the end of the first period is 120 and the value at the end of the second period is 144.

Now suppose that instead the asset increases in the first period by  $30\%$  and in the second period by  $10\%$ . The average or arithmetic mean of the return is  $20\%$ . However the value of the asset is 130 at the end of first period and 143 at the end of the second period. The variability of the return has meant that the asset is worth less after two periods even though the average return is the same. We can calculate the equivalent per period return that would give the same value of 143 after two periods if there were no variance in the returns. That is the value  $\nu$  that satisfies

$$
1 4 3 = 1 0 0 (1 + \nu) ^ {2}.
$$

This value is known as the geometric mean. It is another measure of the average return over the two periods. Solving this equation gives the geometric

mean as  $\nu = 0.195826$  or  $19.58\%$  per period² which is less than the arithmetic rate of return per period.

There is a simple relationship between the arithmetic mean return, the geometric mean return and the variance of the return. Let  $\mu_1 = \mu + \sigma$  be the rate of return in the first period and let  $\mu_2 = \mu - \sigma$  be the rate of return in the second period. Here the average rate of return is  $\frac{1}{2} (\mu_1 + \mu_2) = \mu$  and the variance of the two rates is  $\sigma^2$ . The geometric rate of return  $\mu$  satisfies  $(1 + \nu)^2 = (1 + \mu_1)(1 + \mu_2)$ . Substituting and expanding this gives

$$
1 + 2 \nu + \nu^ {2} = (1 + \mu + \sigma) (1 + \mu - \sigma) = (1 + \mu) ^ {2} - \sigma^ {2} = 1 + 2 \mu + \mu^ {2} - \sigma^ {2}
$$

or

$$
\nu = \mu - \frac {1}{2} \sigma^ {2} + \frac {1}{2} (\mu^ {2} - \nu^ {2}).
$$

Since rates of return are typically less than one, the square of the return is even smaller and hence the difference between two squared percentage terms is smaller still. Hence we have the approximation  $\nu \approx \mu -\frac{1}{2}\sigma^2$  or

$$
\mathrm {g e o m e t r i c m e a n} \approx \mathrm {a r i t h m e t i c m e a n} - \frac {1}{2} \mathrm {v a r i a n c e}.
$$

This approximation will be better the smaller are the interest rates and the smaller is the variance. In the example  $\mu = 0.2$  and  $\sigma = 0.1$  so  $\frac{1}{2}\sigma^2 = 0.005$  and  $\mu -\frac{1}{2}\sigma^2 = 0.1950$  which is close to the actual geometric mean of 0.1958. Thus the difference between  $\mu$  and  $\nu$  is that  $\nu$  is the geometric rate of return and  $\mu$  is the arithmetic rate of return. It is quite usual to use the arithmetic rate and therefore to write that the expected value of the logarithm of the stock price satisfies

$$
\operatorname {E} [ \ln S _ {T} ] = \ln S _ {0} + \left(\mu - \frac {1}{2} \sigma^ {2}\right) T
$$

and

$$
\mathrm {V a r} [ \ln S _ {T} ] = \sigma^ {2} T.
$$

# Continuously Compounded Rate of Return

The value  $\nu$  is the continuously compounded rate of return. It is given by

$$
\nu = \frac {1}{T} [ \ln S _ {T} - \ln S _ {0} ].
$$

Hence taking expectations we can calculate

$$
\operatorname {E} [ \nu ] = \frac {1}{T} \operatorname {E} [ \ln S _ {T} - \ln S _ {0} ] = = \frac {1}{T} \left(\operatorname {E} [ \ln S _ {T} ] - \ln S _ {0}\right) = \mu - \frac {\sigma^ {2}}{2}.
$$

Similarly the variance satisfies

$$
\mathrm {V a r} [ \nu ] = \frac {1}{T ^ {2}} \mathrm {V a r} [ \ln S _ {T} - \ln S _ {0} ] = \frac {1}{T ^ {2}} \mathrm {V a r} [ \ln S _ {T} ] = \frac {\sigma^ {2} T}{T ^ {2}} = \frac {\sigma^ {2}}{T}.
$$

Hence the standard deviation of  $\nu$  is simply  $\sigma / \sqrt{T}$ .

# A Wiener Process

We will now consider the stochastic process in more detail and see how to take limits as the length of the time interval goes to zero. This will produce a continuous time stochastic process.

Consider a variable  $z$  which takes on values at discrete points in time  $t = 0,1,\ldots ,T$  and suppose that  $z$  evolves according to the following rule:

$$
z _ {t + 1} = z _ {t} + \epsilon ; \qquad W _ {0} \quad \mathrm {f i x e d}
$$

where  $\epsilon$  is a random drawing from a standardized normal distribution, that is with mean of zero and variance of one. The draws are assumed to be independently distributed. This represents a random walk where on average  $z$  remains unchanged each period but where the standard deviation of the realized value is one each period. At date  $t = 0$ , we have  $E[z_T] = z_0$  and the variance  $Var[z_T] = T$  as the draws are independent.

Now divide the periods into  $n$  subperiods each of length  $\Delta t$ . To keep the process equivalent the variance in the shock must also be reduced so that the standard deviation is  $\sqrt{\Delta t}$ . The resulting process is known as a Wiener process. The Wiener process has two important properties:

Property 1 The change in  $z$  over a small interval of time satisfies:

$$
z _ {t + h} = z _ {t} + \epsilon \sqrt {\Delta t}.
$$

Then as of time  $t = 0$ , it is still the case that  $E[z_T] = z_0$  and the variance  $Var[z_T] = T$ . This relation may be written

$$
\Delta z (t + \Delta t) = \epsilon \sqrt {\Delta t}
$$

where  $\Delta z(t + \Delta t) = z_{t + \Delta t} - z_t$ . This has an expected value of zero and standard deviation of  $\sqrt{\Delta t}$ .

Property 2 The values of  $\Delta z$  for any two different short intervals of time are independent.

It follows from this that

$$
z (T) - z (0) = \sum_ {i} ^ {N} \epsilon_ {i} \sqrt {\Delta t}
$$

where  $N = T / \Delta t$  is the number of time intervals between 0 and  $T$ . Hence we have

$$
\operatorname {E} [ Z (T) ] = z (0)
$$

and

$$
\mathrm {V a r} [ z (T) ] = N \Delta t = T
$$

or the standard deviation of  $z(T)$  is  $\sqrt{T}$ .

Now consider what happens in the limit as  $\Delta t \to 0$ , that is as the length of the interval becomes an infinitesimal  $dt$ . We replace  $\Delta z(t + \Delta t)$  by  $dz(t)$

which has a mean of zero and standard deviation of  $dt$ . This continuous time stochastic process is also known as Brownian Motion after its use in physics to describe the motion of particles subject to a large number of small molecular shocks.

This process is easily generalized to allow for a non-zero mean and arbitrary standard deviation. A generalized Wiener process for a variable  $x$  is defined in terms of  $dz(t)$  as follows

$$
d x = a d t + b d z
$$

where  $a$  and  $b$  are constants. This formula for the change in the value of  $x$  consists of two components, a deterministic component  $a dt$  and a stochastic component  $bd z(t)$ . The deterministic component is  $dx = a dt$  or  $\frac{dx}{dt} = a$  which shows that  $x = x_0 + at$  so that  $a$  is simply the trend term for  $x$ . Thus the increase in the value of  $x$  over one time period is  $a$ . The stochastic component  $bd z(t)$  adds noise or variability to the path for  $x$ . The amount of variability added is  $b$  times the Wiener process. Since the Wiener process has a standard deviation of one the generalized process has a standard deviation of  $b$ .

# The Asset Price Process

Remember that we have

$$
\ln S _ {t + 1} - \ln S _ {t} = \omega_ {t}
$$

where  $\omega_{t}$  is an independent random variable with mean  $\nu$  and standard deviation of  $\sigma$ . The continuous time version of this equation is therefore

$$
d \ln S (t) = \nu d t + \sigma d z
$$

where  $z$  is a standard Wiener process. The right-hand-side of the equation is just a random variable that is evolving through time. The term  $\nu$  is called the

drift parameter and the standard deviation of the continuously compounded rate of return is  $\sqrt{Var[r(t)]} = \sigma \sqrt{\Delta t}$  and the term  $\sigma$  is referred to as the volatility of the asset return.

# Ito Calculus

We have written the process in terms of  $\ln S(t)$  rather than  $S(t)$  itself. This is convenient and shows the connection to the binomial model. However it is usual to think in terms of  $S(t)$  itself too. In ordinary calculus we know that

$$
d \ln S (t) = \frac {d S (t)}{S (t)}.
$$

Thus we might think that  $dS(t) / S(t) = \nu dt + \sigma dz$ . But this would be WRONG. The correct version is

$$
\frac {d S (t)}{S (t)} = \left(\nu + \frac {1}{2} \sigma^ {2}\right) d t + \sigma d z.
$$

This is a special case of Ito's lemma. Ito's lemma shows that for any process of the form

$$
d x = a (x, t) d t + b (x, t) d z
$$

then the function  $G(x,t)$  follows the process

$$
d G = \left(\frac {\partial G}{\partial x} a (x, t) + \frac {\partial G}{\partial t} + \frac {1}{2} \frac {\partial^ {2} G}{\partial x ^ {2}} b ^ {2} (x, t)\right) d t + \frac {\partial G}{\partial x} b (x, t) d z.
$$

We'll see how to use Ito's lemma. We have

$$
d \ln S (t) = \nu d t + \sigma d z.
$$

Then let  $\ln S(t) = x(t)$ , so  $s(T) = G(x,t) = e^{x}$ . Then upon differentiating

$$
\frac {\partial G}{\partial x} = e ^ {x} = S, \qquad \frac {\partial^ {2} G}{\partial S ^ {2}} = e ^ {x} = S, \qquad \frac {\partial G}{\partial t} = 0.
$$

Hence using Ito's lemma

$$
d S (t) = (\nu S (t) + 0 + \frac {1}{2} \sigma^ {2} S (t)) d t + \sigma S (t) d z
$$

or

$$
d S (t) = (\nu + \frac {1}{2} \sigma^ {2}) S (t) d t + \sigma S (t) d z
$$

Since  $\mu = \nu +\frac{1}{2}\sigma^2$  we can write this as

$$
d S (t) = \mu S (t) d t + \sigma S (s) d z.
$$

This process is known as geometric Brownian motion as it is the rate of change which is Brownian motion. Thus sometimes the above equation is written as

$$
\frac {d S (t)}{S (t)} = \mu d t + \sigma d z.
$$

We can also do the same calculation the other way around. Suppose that we start from the process

$$
d s (t) = \mu S (t) d t + \sigma S (s) d z.
$$

Now consider the function  $G(S) = \ln S$ . Differentiating we have

$$
\frac {\partial G}{\partial S} = 1, \qquad \frac {\partial^ {2} G}{\partial S ^ {2}} = - \frac {1}{S ^ {2}}, \qquad \frac {\partial G}{\partial t} = 0.
$$

Hence substituting into Ito's lemma we get

$$
d G = d \ln S (t) = \left(\mu - \frac {1}{2} \sigma^ {2}\right) d t + \sigma d z.
$$

# The forward price

As we have seen before the forward price just depends on the current price of the underlying, the interest rate and the time to expiration. With continuous compounding we can write the forward price equation as

$$
F (S (t), t) = S (t) e ^ {r (T - t)}.
$$

This shows the forward price is a stochastic process which depends on the price of the underlying asset which itself is a stochastic process. Since we have

that the forward price is a function of a stochastic process we can use Ito's lemma. Upon differentiation we have

$$
\frac {\partial F}{\partial S} = e ^ {r (T - t)}; \quad \frac {\partial F}{\partial t} = - r S (t) e ^ {r (T - t)}; \quad \frac {\partial^ {2} F}{\partial S ^ {2}} = 0.
$$

Hence substituting into Ito's lemma

$$
\begin{array}{l} d F = \left(e ^ {r (T - t)} \mu S (t) - r S (t) e ^ {r (T - t)}\right) d t + \sigma S (t) e ^ {r (T - t)} d z \\ = (\mu - r) S (t) e ^ {r (T - t)} \sigma S (t) e ^ {r (T - t)} d z \\ = (\mu - r) F (t) d t + \sigma F (t) d z. \\ \end{array}
$$

This shows that the forward price also follows a geometric Brownian motion process with expected return given by the risk premium on the underlying  $\mu - r$  and volatility  $\sigma$  (the same as the underlying asset).

# Summary

We have shown how returns are continuously compounded and introduced the geometric Brownian motion process for stock prices. We have shown how Ito's lemma can be used. The next thing to do will be to show how to use the assumption of geometric Brownian motion to price an option or derivative using Ito's lemma.

# The Black-Scholes Formula

These notes examine the Black-Scholes formula for European options. The Black-Scholes formula are complex as they are based on the geometric Brownian motion assumption for the underlying asset price. Nevertheless they can be interpreted and are easy to use once understood. We start off by examining digital or binary options which are easy and intuitive to price. We shall show how the Black-Scholes formula can be derived and derive and justify the Black-Scholes-Merton partial differential equation.

Keywords: Black-Scholes formula, Black-Scholers-Merton partial differential equation, replication, self-financing portfolio, martingale pricing, boundary conditions, PDE.

Reading: Hull Chapter 13.

# Digital Options

To help understand the Black-Scholes formula for call and put options we start by looking at digital options. Digital options are very simple. A digital call with a strike price  $K$  and maturity date  $T$  pays out one unit if  $S(T) > K$  and nothing otherwise. Likewise a digital put with a strike price  $K$  and maturity date  $T$  pays out one unit if  $S(T) < K$  and nothing otherwise.

Thus for a digital call option the payoff at maturity is:

$$
c ^ {b} (T) = \left\{ \begin{array}{l l} 0 & \text {i f} S (T) \leq K \\ 1 & \text {i f} S (T) > K \end{array} \right.
$$

and the payoff at maturity to a digital put option is:

$$
p ^ {b} (T) = \left\{ \begin{array}{l l} 1 & \text {i f} S (T) \leq K \\ 0 & \text {i f} S (T) > K. \end{array} \right.
$$

We now show how to value the digital call option. The end price  $S_{T}$  is a random variable. We have by assumption that  $\ln S(T)$  is normally distributed with

$$
\operatorname {E} [ \ln S (T) ] = \ln S (0) + \left(\mu - \frac {1}{2} \sigma^ {2}\right) T
$$

and

$$
\operatorname {V a r} [ \ln S (T) ] = \sigma^ {2} T.
$$

Thus

$$
\frac {\ln S (T) - \ln S (0) - \left(\mu - \frac {1}{2} \sigma^ {2}\right) T}{\sigma \sqrt {T}}
$$

is a standard normal variable with expected value of zero and standard deviation of one. We want to know the probability that the call option is exercised. The call option is exercised if  $S_T > K$  or equivalently if  $\ln S(T) > \ln K$ . Thus the probability of exercise is given by  $1 - N(x^{*})$  where

$$
x ^ {*} = \frac {\ln K - \ln S (0) - \left(\mu - \frac {1}{2} \sigma^ {2}\right) T}{\sigma \sqrt {T}}
$$

As we have seen options can be evaluated using risk-neutral pricing, that is as if all assets earn the same rate of return,  $r$  as the riskless asset. Thus we replace  $\mu$  by  $r$  in the above equation to get

$$
x = \frac {\ln K - \ln S (0) - \left(r - \frac {1}{2} \sigma^ {2}\right) T}{\sigma \sqrt {T}}.
$$

Thus the probability of exercise in a risk-neutral world is  $1 - N(x) = N(-x)$ . The call option pays out one unit if it is exercised but only after  $T$  periods. Thus the expected discounted value of the digital call option is

$$
c ^ {b} (0) = e ^ {- r T} N (- x).
$$

There is a simple condition for put call parity for digital options. This is given by

$$
c ^ {b} (0) + p ^ {b} (0) = e ^ {- r T}
$$

since if one buys a digital call and a digital put with the same strike price and maturity date, one is sure to have one unit at time  $T$  no matter what the price of the underlying asset. Hence the put price satisfies

$$
p ^ {b} (0) = e ^ {- r T} - c ^ {b} (0) = e ^ {- r T} - e ^ {- r T} N (- x) = e ^ {- r T} (1 - N (- x)) = e ^ {- r T} N (x).
$$

Equivalently we can see that the risk-neutral probability that  $S_T < K$  is given by  $N(x)$  and hence the value of the binary or digital put is  $e^{-rT}N(x)$  where  $x$  is given above.

# The Black-Scholes Formula

Plain options have slightly more complex payoffs than digital options but the principles for calculating the option value are the same.

The payoff to a European call option with strike price  $K$  at the maturity date  $T$  is

$$
c (T) = \max [ S (T) - K, 0 ]
$$

where  $S(T)$  is the price of the underlying asset at the maturity date. At maturity if  $S(T) > K$  the option to buy the underlying at  $K$  can be exercised and the underlying asset immediately sold for  $S(T)$  to give a net payoff of  $S(T) - K$ . Since the option gives only the right and not the obligation to buy the underlying asset, the option to buy the underlying will not be exercised if doing so would lead to a loss,  $S(T) - K < 0$ . The Black-Scholes formula for the price of the call option at date  $t = 0$  prior to maturity is given by

$$
c (0) = S (0) N (d _ {1}) - e ^ {- r T} K N (d _ {2})
$$

where  $N(d)$  is the cumulative probability distribution for a variable that has a standard normal distribution with mean of zero and standard deviation of

one. It is the area under the standard normal density function from  $-\infty$  to  $d$  and therefore gives the probability that a random draw from the standard normal distribution will have a value less than or equal to  $d$ . We have therefore that  $0 \leq N(d) \leq 1$  with  $N(-\infty) = 0, N(0) = \frac{1}{2}$  and  $N(+\infty) = 1$ . The term  $r$  is the continuously compounded risk-free rate of interest and  $d_{1}$  and  $d_{2}$  satisfy

$$
\begin{array}{l} d _ {1} = \frac {\ln (\frac {S (0)}{K}) + (r + \frac {1}{2} \sigma^ {2}) T}{\sigma \sqrt {T}} \\ d _ {2} = d _ {1} - \sigma \sqrt {T} = \frac {\ln (\frac {S (0)}{K}) + (r - \frac {1}{2} \sigma^ {2}) T}{\sigma \sqrt {T}} \\ \end{array}
$$

Here  $\sigma^2$  is the variance of the continuously compounded rate of return on the underlying asset.

Likewise the payoff to a European put option with strike price  $K$  at the maturity date  $T$  is

$$
p (T) = \max  [ K - S (T), 0 ]
$$

as the put option gives the right to sell underlying asset at the strike price of  $K$ . The Black-Scholes formula for the price of the put option at date  $t = 0$  prior to maturity is given by

$$
p (0) = c (0) + e ^ {- r T} K - S (0) = e ^ {- r T} K \left(1 - N \left(d _ {2}\right)\right) - S (0) \left(1 - N \left(d _ {1}\right)\right)
$$

where  $d_{1}$  and  $d_{2}$  are defined above. By the symmetry of the standard normal distribution  $N(-d) = (1 - N(d))$  so the formula for the put option is usually written as

$$
p (0) = e ^ {- r T} K N (- d _ {2}) - S (0) N (- d _ {1}).
$$

# Interpretation of the Formula

Rewrite the Black-Scholes formula as

$$
c (0) = e ^ {- r T} \left(S (0) e ^ {r T} N \left(d _ {1}\right) - K N \left(d _ {2}\right)\right).
$$

The formula can be interpreted as follows. If the call option is exercised at the maturity date then the holder gets the stock worth  $S(T)$  but has to pay the strike price  $K$ . But this exchange takes place only if the call finishes in the money. Thus  $S(0)e^{rT}N(d_1)$  represents the future value of the underlying asset conditional on the end stock value  $S(T)$  being greater than the strike price  $K$ . The second term in the brackets  $KN(d_2)$  is the value of the known payment  $K$  times the probability that the strike price will be paid  $N(d_2)$ . The terms inside the brackets are discounted by the risk-free rate  $r$  to bring the payments into present value terms. Thus the evaluation inside the brackets is made using the risk-neutral or martingale probabilities. The term  $N(d_2)$  represents the probability that the call finishes in the money where  $d_2$  is also evaluated using the risk-free rate.

Remember that in a risk-neutral world all assets earn the risk-free rate. We are assuming the logarithm of the stock price is normally distributed. Thus  $\tilde{\nu}$  the expected continuously compounded rate of return in a risk neutral world is equal to  $r - \frac{1}{2}\sigma^2$  where the variance is deducted to calculate the certainty equivalent rate of return. Therefore at time  $T$ $\ln S(T)$  is normally distributed with a mean value of  $\ln S(0) + (r - \frac{1}{2}\sigma^2)T$  and a standard deviation of  $\sigma \sqrt{T}$ . Thus

$$
\frac {\ln S (T) - (\ln S (0)) + (r - \frac {1}{2} \sigma^ {2}) T)}{\sigma \sqrt {T}}
$$

is a standard normal variable. The probability that  $S(T) < K$  is therefore given by  $N(-d_2)$  and the probability that  $S(T) > K$  is given by  $1 - N(-d_2) = N(d_2)$ .

It is more complicated to show that  $S(0)e^{rT}N(d_1)$  is the future value of underlying asset in a risk-neutral world conditional on  $S(T) > K$  but a proof can be found in more advanced textbooks.

The formula also has another useful interpretation. From our analysis of the binomial model we know that the value of the call is

$$
c (0) = S (0) \Delta - B
$$

where  $\Delta$  is the amount of the underlying asset bought and  $B$  is the amount of money borrowed needed to synthesize the call option. From the formula therefore  $N(d_{1})$  is the hedge parameter indicating the number of shares bought and  $e^{-rT}KN(d_2)$  indicates the amount of cash borrowed to part finance the share purchase. Since  $0\leq N(d)\leq 1$  the formula shows that the replicating portfolio consists of a fraction of the underlying asset and a positive amount of cash borrowed. The  $\Delta$  of this formula is also found by partially differentiating the call price formula

$$
\frac {\partial c (0)}{\partial S (0)} = \Delta .
$$

It is the slope of the curve relating the option price with the price of the underlying asset. The cost of buying  $\Delta$  units of the stock and writing one call option is  $S(0)\Delta - c(0)$ . This portfolio is said to be delta neutral as a small change in the stock price will not affect the value of the portfolio.

# Boundary Conditions

We shall consider the boundary conditions for the call option. Consider first the boundary condition for the call at expiration when  $T = 0$ . To do this consider the formula for the call option as  $T \to 0$ , that is as the time until maturity goes to zero. At maturity  $c(T) = \max[S(T) - K, 0]$  so we need to show that as  $T \to 0$  the formula converges to  $c(0) = \max[S(0) - K, 0]$ . If  $S(0) > K$  then  $\ln\left(\frac{S(0)}{K}\right) > 0$  so that as  $T \to 0$ ,  $d_1$  and  $d_2 \to +\infty$ . Thus  $N(d_1)$  and  $N(d_2) \to 1$ . Since  $e^{-rT} \to 1$  as  $T \to 0$  we have that  $c(0) \to S(0) - K$  if  $S(0) > K$ . Alternatively if  $S(0) < K$  then  $\ln\left(\frac{S(0)}{K}\right) < 0$  so that as  $T \to 0$ ,  $d_1$  and  $d_2 \to -\infty$  and hence  $N(d_1)$  and  $N(d_2) \to 0$ . Thus  $c(0) \to 0$  if  $S(0) < K$ . This is precisely as expected. If the option is in the money at maturity,  $S(0) > K$ , it is exercised for a profit of  $S(0) - K$  and if it is out of the money,  $S(0) < K$ , the option expires unexercised and valueless.

As another example consider what happens as  $\sigma \to 0$ . In this case the underlying asset becomes riskless so grows at the constant rate of  $r$ . Thus the future value of the stock is  $S(T) = e^{rT}S(0)$  and the payoff to the call option at maturity is  $\max[e^{rT}S(0) - K, 0]$ . Thus the value of the call at date  $t = 0$  is  $\max[S(0) - e^{-rT}K, 0]$ . To see this from the formula first consider the case where  $S(0) - e^{-rT}K > 0$  or  $\ln \left(\frac{S(0)}{K}\right) + rT > 0$ . Then as  $\sigma \to 0$ ,  $d_1$  and  $d_2 \to +\infty$  and hence  $N(d_1)$  and  $N(d_2) \to 1$ . Thus  $c(0) \to S(0) - e^{-rT}K$ . Likewise when  $S(0) - e^{-rT}K < 0$  or  $\ln \left(\frac{S(0)}{K}\right) + rT < 0$  then  $d_1$  and  $d_2 \to -\infty$  as  $\sigma \to 0$ . Hence  $N(d_1)$  and  $N(d_2) \to 0$  and so  $c(0) \to 0$ . Thus combining both conditions  $c(0) \to \max[e^{rT}S(0) - K, 0]$  as  $\sigma \to 0$ .

# At-the-money Options

Consider an option that is currently at-the-money,  $S(0) = K$ . Then the formula for the call option becomes

$$
c (0) = S (0) \left(N (d _ {1}) - e ^ {- r T} N (d _ {2})\right)
$$

where

$$
d _ {1} = \frac {(r - \frac {1}{2} \sigma^ {2}) T}{\sigma \sqrt {T}}; \qquad d _ {2} = d _ {1} - \sigma \sqrt {T}.
$$

Thus the price of an at-the-money call option is simply a fraction the price of the underlying.

There is an even more convenient approximation if we take  $K = S(0)e^{rT}$ , that is where the strike price is forward price of the underlying asset. Then

$$
c (0) = S (0) \left(N \left(d _ {1}\right) - N \left(d _ {2}\right)\right)
$$

and

$$
d _ {1} = \frac {\ln (\frac {S (0)}{K}) + (r + \frac {1}{2} \sigma^ {2}) T}{\sigma \sqrt {T}} = \frac {\frac {1}{2} \sigma^ {2} T}{\sigma \sqrt {T}} = \frac {1}{2} \sigma \sqrt {T}
$$

and  $d_2 = -(1/2)\sigma \sqrt{T}$ . By Taylor's theorem, expanding  $N(x)$  about  $x = 0$  gives

$$
N (x) \approx N (0) + x N ^ {\prime} (0) + \frac {1}{2} x ^ {2} N ^ {\prime \prime} (0).
$$

Thus we have

$$
\begin{array}{l} N \left(d _ {1}\right) - N \left(d _ {2}\right) \approx \left(N (0) + d _ {1} N ^ {\prime} (0) + (1 / 2) d _ {1} ^ {2} N ^ {\prime \prime} (0)\right) \\ - \left(N (0) + d _ {2} N ^ {\prime} (0) + (1 / 2) d _ {2} ^ {2} N ^ {\prime \prime} (0)\right) \\ \end{array}
$$

Hence since  $d_1^2 = d_2^2$  and  $d_1 = -d_2 = (1/2)\sigma \sqrt{T}$  we have

$$
c (0) \approx S (0) \left(N ^ {\prime} (0) \sigma \sqrt {T}\right)
$$

and since  $N'(0) = 1 / \sqrt{2\pi}$  we have

$$
c (0) \approx \frac {S (0) \sigma \sqrt {T}}{\sqrt {2 \pi}} \approx 0. 4 S (0) \sigma \sqrt {T}.
$$

This can be used as a rough and ready method for calculating the implied volatility if the price is known. Note this formula applies equally to puts as well as calls.

# The Black-Scholes-Merton Partial Differential Equation

We wish to price a call on an underlying stock. Assume that the time to maturity is  $T$  and the strike price is  $K$  the volatility of the underlying asset is  $\sigma$ . We assume that the underlying asset follows a geometric Brownian motion process

$$
d S (t) = \mu S (t) d t + \sigma S (t) d z (t)
$$

where  $dz$  is a Wiener process, i.e. has zero mean an unit variance and increments are independent. We assume there is a risk-free asset that has a

constant continuously compounded rate of return  $r$  so that a money market account follows the process

$$
d B (t) = r B (t) d t.
$$

The latter is equivalent to  $B(t) = B(0)e^{rt}$ . The excess return on the stock is  $\mu - r$  and the ratio  $\lambda = (\mu - r) / \sigma$  is known as the market price of risk. The call option changes value over time as the stock price and the time to maturity changes and therefore we can write the call price  $c(s(t), t)$ .

The objective is to show that  $c(S(t), t)$  is well defined (there is a unique price) and describe how the call price depends on  $S(t)$  and  $t$ .

Since  $c(S(t), t)$  is just a function we can apply Ito's lemma to derive

$$
d c = \left(\frac {\partial c}{\partial t} + \mu S \frac {\partial c}{\partial S} + \frac {1}{2} \sigma^ {2} S ^ {2} \frac {\partial^ {2} c}{\partial S ^ {2}}\right) d t + \sigma S \frac {\partial c}{\partial S} d z.
$$

We now consider a portfolio of one option and  $\Delta$  units of the underlying itself. The process for this portfolio is

$$
d (c + \Delta S) = \left(\frac {\partial c}{\partial t} + \mu S \frac {\partial c}{\partial S} + \frac {1}{2} \sigma^ {2} S ^ {2} \frac {\partial^ {2} c}{\partial S} + \Delta \mu S\right) d t + \left(\frac {\partial c}{\partial S} + \Delta\right) \sigma S d z.
$$

Now setting  $\Delta = -\partial c / \partial S$  eliminates the random  $dz$  term to give

$$
d (c + \Delta S) = \left(\frac {\partial c}{\partial t} + \frac {1}{2} \sigma^ {2} S ^ {2} \frac {\partial^ {2} c}{\partial S}\right) d t.
$$

This is our  $\Delta$ -hedged portfolio which has eliminated all risk. Since this portfolio is riskless it must satisfy exactly the same equation as the money-market account, i.e.

$$
d (c + \Delta S) = r (c + \Delta S) d t
$$

and hence we have by equating these two terms that

$$
\left(\frac {\partial c}{\partial t} + \frac {1}{2} \sigma^ {2} S ^ {2} \frac {\partial^ {2} c}{\partial S}\right) = r \left(c - \frac {\partial c}{\partial S} S\right)
$$

where we've replace  $\Delta$  by  $-\partial c / \partial S$ . Rewriting we have

$$
c = \frac {1}{r} \left\{\left(\frac {\partial c}{\partial t} + r S \frac {\partial c}{\partial S} + \frac {1}{2} \sigma^ {2} S ^ {2} \frac {\partial^ {2} c}{\partial S}\right) \right\}.
$$

This is a second-order partial differential equation (PDE). It is known as the Black-Scholes-Merton Partial Differential Equation. Indeed since we did not yet specify anything about the nature of the option, this equation will apply to any derivative security. What determines how the equation applies to a particular derivative is given by the boundary condition. For the call option we have the boundary condition that at maturity

$$
c (S (T), T) = \max  \{S (T) - K, 0 \}.
$$

Solving this second order differential equation together with the boundary condition gives the Black-Scholes formula we have seen before

$$
c (0) = S (0) N (d _ {1}) - e ^ {- r T} K N (d _ {2})
$$

where  $d_{1}$  and  $d_{2}$  satisfy

$$
\begin{array}{l} d _ {1} = \frac {\ln (\frac {S (0)}{K}) + (r + \frac {1}{2} \sigma^ {2}) T}{\sigma \sqrt {T}} \\ {d _ {2}} = {d _ {1} - \sigma \sqrt {T} = \frac {\ln (\frac {S (0)}{K}) + (r - \frac {1}{2} \sigma^ {2}) T}{\sigma \sqrt {T}}.} \\ \end{array}
$$

# A Replication Argument

We consider a portfolio that invests  $\alpha$  in the underlying asset and  $\beta$  in the risk free asset.

The value of this portfolio at the initial date is

$$
P (0) = \alpha S (0) + \beta B (0).
$$

We shall require that this strategy is both replicating and self-financing. A portfolio is self-financing if it involves no injection or extraction of cash at

any time and thus the change in the value of the portfolio depends on how the stock price and value of the risk-free asset changes. Thus the portfolio is self-financing if and only if

$$
d P = \alpha d S + \beta d B.
$$

To satisfy this equation  $\alpha$  and  $\beta$  will in general be changing over time and as  $S(t)$  varies. However it is also clear that once  $\alpha(S(t), t)$  is specified,  $\beta(S(t), t)$  is determined as well by the fact that the portfolio is self-financing and thus has to satisfy the above equation. We shall follow what we did in the previous section and suppose that  $\alpha = \partial C / \partial S$ . Here we are taking a long position in the stock as we are trying to replicate the portfolio (whereas in the previous section we were taking a short position to hedge out the risk of the option itself). We want to show that the value of the portfolio equals the value of the call at every instant. That is we want to show that  $P(S(t), t) = c(S(t), t)$ . Therefore we consider the difference

$$
\begin{array}{l} d (P (S (t), t) - c (S (t), t)) = d P - d c \\ = \alpha (S, t) d S + \beta (S, t) d B \\ - \left(\frac {\partial c}{\partial t} + \mu S \frac {\partial c}{\partial S} + \frac {1}{2} \sigma^ {2} S ^ {2} \frac {\partial^ {2} c}{\partial S ^ {2}}\right) d t - \sigma S \frac {\partial c}{\partial S} d z. \\ \end{array}
$$

Then substituting for  $dS$ ,  $dB$  and  $\alpha(S, t)$  gives

$$
d (P (S (t), t) - c (S (t), t)) = \left(\beta (S, t) r B - \frac {\partial c}{\partial t} - \frac {1}{2} \sigma^ {2} S ^ {2} \frac {\partial^ {2} c}{\partial S ^ {2}}\right) d t.
$$

Again the risk has been eliminated from this equation. Then using the Black-Scholes equation gives

$$
d (P (S (t), t) - c (S (t), t)) = \left(\beta (S, t) r B - r \left(c - S \frac {\partial c}{\partial S}\right)\right) d t
$$

and since  $\beta (S,t)B = P(S,t) - \alpha (S,t)S$  this gives

$$
\begin{array}{l} d (P (S (t), t) - c (S (t), t)) = r \left(P (S, t) - \alpha (S, t) S\right) d t - r \left(c - S \frac {\partial c}{\partial S}\right) d t \\ = r \left(P (S, t) - c (S, t)\right) d t. \\ \end{array}
$$

Let  $D(S, t) = P(S, t) - c(S, t)$ . By construction we want the portfolio to be replicating so  $P(S(0), 0) = c(S(0), 0)$  and hence  $D(S, 0) = 0$ . But we have from the above equation that  $dD = rD(S, t) dt$  and so  $D(S, t) = D(S, 0)e^{rt} = 0$ . Thus the portfolio because it is self-financing and all risk has been hedged away replicates the call value at every instant. Moreover, unlike the previous argument which assumed a call value function  $c(S, t)$  and differentiated, the present approach proves the existence of this value and shows that it is well defined.

# Martingale Pricing

We now consider the ratio  $\varrho(t) = S(t) / B(t)$ . In the binomial case we have seen that this is a martingale so that the ratio  $\varrho(t)$  satisfies the property  $\mathrm{E}_*[x(t + 1)] = x(t)$  where the expectation is taken using the risk-neutral probabilities. Equivalently we have  $\mathrm{E}_*[x(t + 1) - x(t)] = 0$  or in the limit  $\mathrm{E}_*[dx(t)] = 0$ .

Using the equations above for  $S(t)$  and  $B(t)$  we have upon differentiation that

$$
d \varrho (t) = \frac {d S (t)}{B (t)} + S (t) d (B (t) ^ {- 1}).
$$

We have  $d(B(t)^{-1}) = -rB(t)^{-1}dt^{1}$  so that

$$
\begin{array}{l} d \varrho (t) = \frac {1}{B (t)} (\mu S (t) d t + \sigma S (t) d z) - \frac {1}{B (t)} r S d t \\ = (\mu - r) \varrho (t) d t + \sigma \varrho (t) d z. \\ \end{array}
$$

This does not satisfy the martingale property because the drift rate is not equal to  $r$ . We remember however, that in the Binomial model we never had to specify the true probabilities but could derive risk-neutral probabilities.

We can do do something similar here by changing the probabilities or measure of the distribution. It turns out that if we specify a process  $\tilde{z} = z - \eta t$  where  $z$  is a Wiener process then so to is  $\tilde{z}$ .<sup>2</sup> Thus

$$
d \varrho (t) = (\mu - r) \varrho (t) d t + \sigma \varrho (t) d \tilde {z} + \sigma \varrho (t) \eta d t.
$$

If we choose  $\eta$  to be equal to the market price of risk,  $\lambda = (\mu - r) / \sigma$ , then the drift terms cancel out and  $\varrho(t)$  is a martingale, that is  $d\varrho(t) = \sigma \varrho(t)d\tilde{z}$ . Hence since  $dB(t) = rB(t)dt$  we get

$$
d \varrho (t) = \frac {d S (t)}{B (t)} - \frac {r S (t)}{B (t)} d t = \sigma \frac {S (t)}{B (t)} d \tilde {z}
$$

or after cancelling out the  $B(t)$  term and rewriting

$$
d S (t) = r S (t) d t + \sigma S (t) d \tilde {z}
$$

so that  $S(t)$  is a geometric Brownian motion process using the new variable  $\tilde{z}$ . Here the drift with the new variable is just the risk-free rate. It is as if we are in a risk-neutral world and all assets are growing at the same expected rate equal to the risk-free rate.

We can then proceed as before to show that

$$
\frac {\ln S (T) - \ln S (0) - (r - \frac {1}{2} \sigma^ {2}) T}{\sigma \sqrt {T}}
$$

is a standard normal variable with mean zero and unit variance. The value of a call option can be calculated as the discounted value of the expected intrinsic value using the risk neutral expectation. That is

$$
c (0) = e ^ {- r T} \mathrm {E} _ {*} [ \max \{S (T) - K, 0 \} ].
$$

Thus we need to calculate the expected value of  $S(T) - K$  conditional on the option ending in the money,  $S(T) > K$ . The value of the option consists of

two parts: the future value of the underlying asset conditional on  $S(T) > K$  and the strike price paid times the probability the option is exercised. The probability the option is exercised is the probability  $S(T) > K$ . This will be given by  $1 - N(x)$  where

$$
x = \frac {\ln K - \ln S (0) - (r - \frac {1}{2} \sigma^ {2}) T}{\sigma \sqrt {T}}.
$$

Since  $1 - N(x) = N(-x)$  the probability of exercise is  $N(d_2)$  where

$$
- x = d _ {2} = \frac {\ln (S (0) / K) + (r - \frac {1}{2} \sigma^ {2}) T}{\sigma \sqrt {T}}.
$$

It can also be shown by integration that the expected future value of the underlying asset conditional on  $S(T) > K$  is  $S(0)e^{rT}N(d_1)$  where  $d_{1} = d_{2} + \sigma \sqrt{T}$ . Hence

$$
c (0) = e ^ {- r T} \left(S (0) e ^ {r T} N (d _ {1}) - K N (d _ {2})\right)
$$

which is the Black-Scholes formula.

# Summary

We have considered three ways in which the Black-Scholes formula may be derived. The first is to develop a second-order partial differential equation by creating a riskless portfolio by dynamically  $\Delta$ -hedging. The second is to synthesize the option by using the underlying and the risk-free asset. This second method is more satisfactory as it does not assume the existence of a well defined option price but derives it from the assumption that all arbitrage opportunities are eliminated in the market. The third method considers replaced actual probabilities by fictitious risk-neutral probabilities so that all assets satisfy a martingale property. This then allows one to replace the actual return on the underlying asset with the risk-free rate. This allows a straightforward derivation of the formula.

# The Greeks

# Introduction

We have studied how to price an option using the Black-Scholes formula. Now we wish to consider how the option price changes, either over time or as the parameters in the formula are changed. As the price of an option changes the risk of the option changes too. Therefore knowing how the option prices changes enables the trader to hedge the risks of holding the option.

These notes will consider the various measures of how the option price changes. These measures are known as the Greeks as each of them is given a Greek letter.<sup>1</sup> We shall consider what these Greek letters measure and how they relate to each other. We shall also consider implied volatility and volatility smiles. We shall make use of the put-call parity condition for European options.

Keywords: Delta, Gamma, Rho, Vega, Theta, Hedging, Volatility smiles.

Reading: Hull Chapters 15 and 16.

# The Greeks

We have from the Black-Scholes formula that the price of a call option depends on on the price of the underlying asset,  $S$ , the strike price  $K$ , the time to maturity,  $T$ , the interest rate,  $r$  and the volatility,  $\sigma$ .<sup>2</sup> Write this as

a function  $C = C(S, K, T, r, \sigma)$ . Then using a first-order approximation we have

$$
\begin{array}{l} C (S + \delta S, K, T + \delta T, r + \delta r, \sigma + \delta \sigma) = C (S, K, T, r, \sigma) \\ + \delta S \frac {\partial C}{\partial S} + \delta T \frac {\partial C}{\partial T} + \delta r \frac {\partial C}{\partial r} + \delta \sigma \frac {\partial C}{\partial \sigma}. \\ \end{array}
$$

This show the effect of varying each of the parameters,  $S, T, r, \sigma$  by small amounts  $\delta S, \delta T, \delta r$  and  $\delta \sigma$  but with  $K$  fixed. The same will be true for any option or portfolio of options. Thus if  $\Pi = C(S, T, r, \sigma)$  is the value of the option or portfolio of options then the value of the portfolio after a small change in the parameters is given by<sup>3</sup>

$$
\begin{array}{l} \Pi (S + \delta S, K, T + \delta T, r + \delta r, \sigma + \delta \sigma) = \Pi (S, K, T, r, \sigma) \\ + \delta S \frac {\partial \Pi}{\partial S} + \delta T \frac {\partial \Pi}{\partial T} + \delta r \frac {\partial \Pi}{\partial r} + \delta \sigma \frac {\partial \Pi}{\partial \sigma}. \\ \end{array}
$$

Each of the partial effects is given a Greek letter.

Delta  $\Delta = \partial \Pi / \partial S$ .  $\Delta$  measures how the option price changes when the price of the underlying asset changes.

Theta  $\Theta = -\partial \Pi /\partial T$  .  $\Theta$  measures how the option price changes as the time to maturity decreases.

Rho  $\rho = \partial \Pi /\partial r$ .  $\rho$  measures how the option price changes as the interest rate changes.

Vega  $\upsilon = \partial \Pi /\partial \sigma$  .  $\upsilon$  measures how the option price changes as the volatility changes.

There is also another Greek that measures how  $\Delta$  changes as  $S$  changes. This is known as Gamma.

Gamma  $\Gamma = \partial \Delta /\partial S = \partial^{2}\Pi /\partial S^{2}$  .  $\Gamma$  measures the rate of change of the option's  $\Delta$  as the price of the underlying changes.

We shall discuss each of these a little further.

# Delta

We have shown in the binomial model that holding a position that is  $\Delta$  units long in the stock and short one call option we have a portfolio that is risk free. The price of this portfolio is  $\Pi(S, K, T, r, \sigma) = \Delta S - C(S, K, T, r, \sigma)$ . The Delta of the portfolio is therefore

$$
\Delta_ {\Pi} = \frac {\partial \Pi}{\partial S} = \Delta - \frac {\partial C}{\partial S} = \Delta - \Delta_ {C}
$$

where  $\Delta_C$  is the Delta of the call option. If the portfolio is risk-free it will not depend on  $S$  and hence  $\Delta_{\Pi} = 0$ . Such a portfolio is said to be delta neutral. It therefore follows that  $\Delta_C = \Delta$ . That is the  $\Delta$  we calculate in replicating the option or creating a risk neutral portfolio is the Delta of the option itself.

This gives a convenient method for finding  $\Delta$  from the Black-Scholes formula. Let's take the Black-Scholes formula

$$
C (S, K, T, r, \sigma) = S N (d _ {1}) - e ^ {- r T} K N (d _ {2})
$$

where

$$
{d _ {1}} = {\frac {\ln (\frac {S}{K}) + (r + \frac {1}{2} \sigma^ {2}) T}{\sigma \sqrt {T}}}
$$

$$
{d _ {2}} = {d _ {1} - \sigma \sqrt {T} = \frac {\ln (\frac {S}{K}) + (r - \frac {1}{2} \sigma^ {2}) T}{\sigma \sqrt {T}}}
$$

We wish to find  $\partial C / \partial S$  where we have to remember that both  $d_{1}$  and  $d_{2}$  depend on  $S$ . To find  $\Delta$  we first note that the call price has the property

that if we double the strike  $K$  and double the price of the underlying  $S$ , the call price doubles. This is exactly what we should expect. If we change the currency denomination of the asset from pounds to dollars and there are two dollars per pound then the strike price and the price of the underlying should double and the call price should also be double. A function with this property is said to be linearly homogeneous in  $S$  and  $K$ . More generally this means that

$$
\lambda C (S, K, T, r, \sigma) = C (\lambda S, \lambda K, T, r, \sigma)
$$

for any  $\lambda > 0$ . It therefore follows from Euler's Theorem that

$$
C (S, K, T, r, \sigma) = S \frac {\partial C}{\partial S} + K \frac {\partial C}{\partial K}.
$$

Since the Black-Scholes formula has the form  $C(S, K, T, r, \sigma) = Sx - Ky$  where  $x = N(d_1)$  and  $y = e^{-rT}N(d_2)$ . This therefore implies that  $\partial C / \partial S = N(d_1)$  and  $(\partial C / \partial K = -e^{-rT}N(d_2))$  and therefore that  $\Delta = N(d_1)$ .

Question: Give an interpretation for  $\partial C / \partial K$  [Hint: Consider the effect of a one unit increase in the strike price on the profitability of holding the option.]

Notice that since  $\Delta = N(d_1)$ ,  $0 \leq \Delta \leq 1$  as  $N(d_1)$  is a cumulative probability. This is again what we should expect. The  $\Delta$  tell us how much of the underlying asset to buy to replicate the option. Only if we know for sure that the option will be exercised will we replicate it by buying the underlying asset. If there is some possibility that the option will not be exercised then we only need to buy a fraction of the underlying asset (whilst partly borrowing in order to pay for the asset).

Question: What is the  $\Delta$  of a forward contract? [Hint: The forward contract has a value of  $S - Ke^{-rT}$ .]

It is important to remember that  $\Delta$  changes (with  $S$  and  $T$ ) and therefore a portfolio that replicates the call will change over time and as the time to

maturity gets closer. The appropriate replicating portfolio or hedge thus changes over time. This is known as rebalancing and the the strategy of keeping a delta-neutral portfolio is known as dynamic delta-hedging.

The  $\Delta$  of a put option can easily be calculated from the put-call parity conditions for European options:

$$
C = P + (S - K e ^ {- r T}).
$$

Differentiating the above equation with respect to  $S$

$$
\Delta_ {C} = \Delta_ {P} + 1
$$

where  $\Delta_C = \partial C / \partial S$  and  $\Delta_P = \partial P / \partial S$ . Thus

$$
\Delta_ {P} = \Delta_ {C} - 1 = N (d _ {1}) - 1.
$$

The  $\Delta$  of the put option is negative  $(-1 \leq \Delta_P \leq 0)$  indicating that to replicate the put option we must sell the underlying asset or to hedge a long position in the option we buy the underlying asset.

Question: How would you hedge a long position in the forward contract? What is the  $\Delta$  of a forward contract?

# Theta

Theta measures how the option price changes as the time to maturity approaches. With some differentiation and manipulation it can be shown that

$$
\Theta_ {C} = - \frac {\partial C}{\partial T} = - \frac {S N ^ {\prime} (d _ {1}) \sigma}{2 \sqrt {T}} - r K e ^ {- r T} N (d _ {2}).
$$

This shows that  $\Theta_C < 0$ . That is the price of the option declines as maturity approaches or that longer dated options are more valuable. We know that

this is true for American options because the longer dated options give all the opportunities for profit as the earlier dated options and more besides. The same applies for European options (on non-dividend paying stocks) because the early exercise of an American call option is never optimal and therefore European and American call options are equivalent. To see that early exercise is not optimal consider again the put-call parity condition  $C = P + (S - Ke^{-rT})$ . Since the put option is a limited liability asset its price must be non-negative. Hence  $P \geq 0$  and therefore  $C \geq S - Ke^{-rT}$ . Thus a lower bound for the call price is  $C \geq \max \{0, S - Ke^{-rT}\}$ . Now if  $r > 0$  this means  $C > S - K$ . Since the American option cannot be worth less than the equivalent European option we therefore also have  $C^A > S - K^6$  and hence it will always be better to sell the option rather than exercise it early. Thus American and European options on non-dividend paying stock are equivalent.

The situation is slightly different for European put options. From differentiating the put-call parity condition with respect to  $T$  we get

$$
- \Theta_ {C} = - \Theta_ {P} + r K e ^ {- r T}.
$$

Hence

$$
\Theta_ {P} = - \frac {\partial C}{\partial T} = - \frac {S N ^ {\prime} (d _ {1}) \sigma}{2 \sqrt {T}} - r K e ^ {- r T} N (d _ {2}) + r K e ^ {r T}
$$

which may be of either sign. The same argument applies as for a call option. The longer dated option will in general be more valuable. However for an American put option early exercise may be optimal. This is because by exercising early the investor gets the strike price earlier. In the extreme case where the option is deep-in-the money and the stock price is close to zero then there is little chance of falling lower. As there may be some chance of it increasing, it may be optimal to exercise early and get the maximum gain at an earlier point in time.<sup>7</sup> Thus an American put option will be worth more

than a European option. Thus although  $\Theta$  for an American put option will be negative the  $\Theta$  of a European put option may in some cases be positive.[8]

It should be remembered that  $\Theta$  should not really be considered a hedge parameter in the way  $\Delta$  is a hedge parameter for  $S$ . There is no uncertainty about the approach of the expiration date and hence no risk against which to hedge. Nevertheless  $\Theta$  is related to another hedge parameter Gamma and therefore it is information that is normally tracked by traders.

# Gamma

Gamma measures how much  $\Delta$  changes as the price of the underlying asset  $S$  changes and thus provides information about the appropriate dynamic hedging strategy and how  $\Delta$  should be changed as  $S$  changes. If  $\Gamma$  is large then it will be necessary to change  $\Delta$  by a large amount as  $S$  changes. In this case it will be risky to leave  $\Delta$  unchanging even over shorter periods. On the other hand if  $\Gamma$  is small then the costs of leaving  $\Delta$  unchanged will be relatively small. Often traders wish to create a portfolio which is gamma-neutral as well as delta-neutral. The reason for this is that it may not be feasible or desirable to change  $\Delta$  continuously to keep a completely delta-neutral portfolio and hence a gamma-neutral portfolio will mean that the costs of not keeping the portfolio completely delta-neutral will be minimised. It is important to realise however, that a gamma-neutral portfolio cannot be achieved by using only the underlying asset (or a forward contract) since the Gamma of the underlying asset is zero. Thus suppose that the delta-neutral portfolio has a Gamma of  $\Gamma_{x}$  and that there is another traded option that has a gamma of  $\Gamma_{y}$ . Then selling  $\Gamma_{x} / \Gamma_{y}$  of the traded options will create a new portfolio that is gamma-neutral.

Given that for a call option  $\Delta = N(d_1)$  and  $\Gamma = \partial \Delta / \partial S$  it is easy to calculate that the Gamma for a call option is

$$
\Gamma_ {C} = \frac {N ^ {\prime} (d _ {1})}{S \sigma \sqrt {T}}
$$

where  $d_{1}$  is as given above and  $N^{\prime}(d) = (e^{d^{2} / 2}) / \sqrt{2\pi}$ . Since  $N^{\prime}(d) > 0$  we have that  $\Gamma_C > 0$  which shows that the call price is a convex function of the price of the underlying asset. Since  $\Delta_P = \Delta_C - 1$  from the put-call parity condition, we have by differentiating that

$$
\Gamma_ {P} = \Gamma_ {C}
$$

so that the Gamma of a put and an equivalent call are the same.

We can see the relationship between  $\Delta$ ,  $\Theta$  and  $\Gamma$  from the Black-Scholes-Merton Partial Differential Equation. This states that the price  $C$  of any option or portfolio of options satisfy

$$
C = \frac {1}{r} \left\{\left(\frac {\partial C}{\partial T} + r S \frac {\partial C}{\partial S} + \frac {1}{2} \sigma^ {2} S ^ {2} \frac {\partial^ {2} C}{\partial S}\right) \right\}
$$

which can be re-written as

$$
C = \frac {1}{r} \left\{\left(- \Theta + r S \Delta + \frac {1}{2} \sigma^ {2} \Gamma\right) \right\}.
$$

This equation can be used for calculating one of  $\Theta$ ,  $\Gamma$  and  $\Delta$  if the other two are known. Also it follows directly from this equation that any portfolio which is delta-neutral and gamma-neutral is also theta-neutral.

# Vega

Vega measures how the option price changes as volatility changes. The Vega of a call option is given by

$$
v _ {C} = S \sqrt {T} N ^ {\prime} (d _ {1}).
$$

Also from the put-call parity condition we have that  $v_{C} = v_{P}$ . It is important to understand why Vega is studied. In the Black-Scholes model volatility is assumed to be constant. Thus it makes much less sense to consider how the Black-Scholes formula changes in response to a change in volatility than to a change in the underlying price. However, the relevant volatility for calculating the option price is the volatility of the underlying asset over the lifetime of the option. This is a future volatility, which is not observable. It can be seen that the Vega of a call or put option is positive and so it is possible to use the known market price of the option to impute the volatility. This is known as the implied volatility. It is therefore possible to use market prices to calculate implied volatility. More on this later.

# Rho

Rho measures the sensitivity of the option price with respect to the interest rate. As with the volatility an assumption of the Black-Scholes model is that interest rates are constant over the life of the option. For a call option it can be shown that

$$
\rho_ {C} = K T e ^ {- r T} N (d _ {2})
$$

which is non-negative. This is because a rise in the interest rate reduces the present value of the strike price to be paid out if the option is exercised and this will raise the option price. From the put-call parity condition  $C = P + (S - Ke^{-rT})$  we get

$$
\rho_ {C} = \rho_ {P} + K T e ^ {- r T}
$$

so that

$$
\rho_ {P} = K T e ^ {- r T} (N (d _ {2}) - 1) = - K T e ^ {- r T} N (- d _ {2})
$$

which is non-positive. This is because as the interest rate rises the present value of the strike price received at expiration, if the option is exercised, declines reducing the price of the put.

# Volatility

# Implied volatility and volatility smiles

As we have discussed the volatility that is required to calculate the Black-Scholes formula is a future volatility which is in principle unknown. It may be calculated on the basis of historic volatility but this may not be an accurate reflection of future volatility. It is therefore common to take the market prices for options and calculate the volatility which if used in the Black-Scholes formula would give the market price. This can be done as Vega is positive so that no two different volatilities can imply the same price.

If the Black-Scholes formula were correct then all similarly dated options on the same underlying should have the same implied volatility. If however, the implied volatility is calculated and plotted against the strike price then there is typically a u-shaped pattern with the bottom of the U near the at-the-money strike price. Such a pattern is known as a volatility smile. Given that Vega is positive one might imagine that this implies some arbitrage opportunity. Either the low volatility options are underpriced or the higher volatility options are overpriced and one can buy the low volatility options and sell the high volatility options to yield a profit. However, these smiles appear to persist so the arbitrage opportunity is probably more apparent than real.

The smile is more an expression of the market's view of the imperfections of the Black-Scholes model itself. The two main imperfections are first the assumption that the underlying prices follow geometric Brownian motion and

so are lognormally distributed and second that the dynamic hedging which requires continuous adjustment can be carried out without cost.

# Fat tails, jumps and stochastic volatility

The assumption of geometric Brownian motion matches the data well but not perfectly. When one compares actual data to that expected one finds that actual data exhibits kurtosis. This means that the tails are fatter or thicker than expected and the distribution is more highly peaked at the centre.

One way of modelling fat tails is to assume that volatility is itself stochastic and itself follows something like a geometric Brownian motion process. Another approach is to assume tat volatility is a function of changes in the stock price so that big changes increase volatility.

Another approach is to consider processes that allow for jumps at some discrete points. The jumps themselves follow a Poisson process and this is added to the continuous Brownian motion process for the stock return. These mixed models are known as jump-diffusion processes.

These alternatives for the Black-Scholes model are not universally better. Which model fits better will depend on the market being studied. Thus jumps in stock prices are quite common but are less common in foreign exchange markets. This leaves much open for analysis and future work and most trading banks will have teams of analysts working on exactly this. They will typically be using discrete and numerical methods as well as mathematical models. This of course also makes a topic for dissertation work.

# Conclusion

We have discussed what is meant by the Delta, Theta, Gamma, Rho and Vega of an option. We have considered the relationship between  $\Theta$ ,  $\Delta$  and  $\Gamma$  for an option or portfolio of option. We have also discussed how to impute volatility from knowledge of market prices and the empirical phenomenon of volatility smiles and how these might be accounted for by stochastic modelling of volatility.

# Risk

These notes explore the conceptual tools that help investors in assessing the "riskiness" of their portfolios. We ask: Given two assets or portfolios  $A$  and  $B$  can we say which one is "riskier"? This turns out to be closely linked to the more general question of "portfolio choice". We ask: If an investor has the choice between two mutually exclusive portfolios,  $A$  and  $B$ , which of these two portfolios does he prefer? Can we specify certain general patterns of investment choice, whereby all "sensible" investors can be expected to prefer  $A$  over  $B$  if  $A$  has certain well-defined properties relative to  $B$ . For historical reasons, this whole area of investigation is called utility theory — we ask, what portfolio choices will give the highest "utility" to an investor if all investor's have similar preferences.

As a special application of this kind of query, we can then assess relative riskiness. Given a choice between two mutually exclusive portfolios  $A$  and  $B$ , both having the same expected payoffs (average payoffs), which of these portfolios will a "risk-averse" investor choose? We will explore three different notions of risk aversion that help answering such questions: (i) preference for certainty; (ii) variance aversion; (iii) stochastic dominance.

Keywords: Roy's Safety First Rule, Value at Risk, Domar-Musgrave Risk Measure, Conditional Value at Risk, Variance and Semi-Variance, Lower Partial Moments, Coherent risk Measures, Risk Aversion, Risk Premia, 1st and 2nd order stochastic dominance.

Reading: Chapter 18 from Hull as a supplement to these notes.

# 1 Background

This introductory section positions the topic of "Portfolio Choice" within the wider context of the course and sorts out a few preliminary issues.

Partial vs Total Payoffs: Investors buy various individual assets and combine these assets into overall portfolios. An investor cannot form a portfolio unless he is willing to purchase the individual assets out of which it is composed, but these individual assets are relevant to the investor only insofar as they contribute to the payoff profile of the overall portfolio of which they are a part. Ultimately, the investor ends up with one particular portfolio rather than any other portfolio, and his final income will then be given by the payoffs of this particular portfolio.

If we wish to stress that we are talking about the investor's ultimate overall portfolio, we talk of the "total payoffs" of the investor's overall portfolio (as opposed to the partial payoffs coming from individual assets), and we speak of "mutually exclusive investments" that are open to the investor (each of which offering an alternative "total payoff" to the investor).

Using assets to hedge risk: It is important to make the distinction between the riskiness of an asset and its value. The value of an individual asset depends on the relationship between the payoffs of that asset and the payoffs of the other assets in the investor's overall portfolio. Thus it is possible for an individual asset to be very risky and yet to be very desirable; an asset is desirable if its risky payoffs are anti-correlated with the payoffs of the other assets in the investor's overall portfolio. Such anti-correlated assets provide the opportunity to hedge risk and allow the investor to reduce the risk of his/her overall portfolio. Investors may not wish to hold such hedging assets in isolation, but they may wish to hold them as one component of their overall portfolios.

Hedging is a very important part of understanding how derivative securities and financial instruments are priced. We will see that the use of hedging assets can offset risk completely and allow the price of derivatives to be determined by relatively simple formulas.

Overall Income Risk: Stochastic Dominance: The present handout is concerned with another question. Here we no longer ask the question "How well does the riskiness of this particular individual asset combine with the riskiness of the other assets in the investor's portfolio?" Instead, we present the investor with a range of various complete or overall portfolios, neither of which may be altered, and ask the investor to choose one of them, reject all others, and subsequently live with the payoffs from the one portfolio that he has chosen. Thus we ask: "How does the riskiness of one particular overall portfolio (to which no further assets may be added) compare with the riskiness of some other, alternative such portfolio?" We ask: when given the choice between two mutually exclusive overall portfolio payoffs, which one does the investor regard as riskier (and hence less desirable) than the other?

How desirable is one overall portfolio compared with another? If investors are "risk-averse", then they will prefer "less risky" over "more risky" portfolios with the same average payoffs. What does it mean that a portfolio is "less risky" than another? There are a number of possible answers to this question and we will consider some of the alternatives that have been proposed. The concept of (second-order) Stochastic Dominance defined below is however the most important as it gives a theoretically rigorous answer. If portfolio  $A$  stochastically dominates portfolio  $B$ , then all "risk-averse" investors are well advised to prefer  $A$  over  $B$ ; they should choose portfolio  $A$  and reject portfolio  $B$ . This however, does depend on what is meant by "risk-averse" and this we will consider later.

# 2 Preliminaries

In this section we set up the formal framework, specify a concrete example, and perform various preliminary computations for this example. Later sections will then offer formal definitions of investor preferences and refer back to the example from the present section.

Risky Investments: We consider an investor with a single-period time horizon. The investor has the choice between a number of mutually exclusive investments,  $A, B, C, \ldots$ . The payoffs of these investments depend on the state of the world. When deciding on his investment, the investor does not know which of the various possible states of the world will come about: payoffs are risky. However the investor knows the relative likelihood (probability) of each state and hence is capable of computing the expected value, variance and probability distribution of each asset.

The Choice Problem: At the beginning of the period the investor chooses one of the available investments. He is then tied to the particular investment he has chosen and his end-of-period income will consist entirely of the payoffs from his chosen investment. How large will his income be? That depends on the state of the world during the period, which cannot be foreseen at the beginning of the period but which can be analysed in terms of likelihoods (probability distributions).

When comparing any two of the various available investments, the investor needs to ask himself: which of these two would I rather have? In answering this question, the investor will take account of the knowledge he has about payoff profiles of these investments. We consider the following concepts in assessing a payoff profile: expected payoffs, variance of payoffs, worst-case payoffs, and "dispersion" of payoffs. Later we will use these concepts to declare precise definitions of risk aversion that reflect the choices of a "reasonable" investor.

Example: By way of example, we consider an economy with eight states of the world. For simplicity, all eight states are equally likely, so that the probability of state  $i$  is  $f_{i} = \frac{1}{8}$  (for  $i = 1,2,\ldots,8$ ). We consider the following six mutually exclusive investments:

$$
A = \left( \begin{array}{l} 9 \\ 9 \\ 9 \\ 9 \\ 9 \\ 9 \\ 9 \\ 9 \end{array} \right); B = \left( \begin{array}{l} 1 1 \\ 1 1 \\ 1 1 \\ 1 1 \\ 9 \\ 9 \\ 9 \end{array} \right); C = \left( \begin{array}{l} 1 0 \\ 1 0 \\ 1 0 \\ 1 0 \\ 1 0 \\ 1 0 \\ 1 0 \end{array} \right); D = \left( \begin{array}{l} 1 4 \\ 1 3 \\ 1 2 \\ 1 1 \\ 9 \\ 8 \\ 7 \\ 6 \end{array} \right); E = \left( \begin{array}{l} 1 8 \\ 1 6 \\ 1 4 \\ 1 2 \\ 8 \\ 6 \\ 4 \\ 2 \end{array} \right); F = \left( \begin{array}{l} 1 1 \\ 1 1 \\ 1 1 \\ 1 1 \\ 1 1 \\ 3 \end{array} \right).
$$

Casual inspection of these six investments reveals that  $A$  and  $C$  are risk-free, all others are risky. We will be particularly interested in studying and comparing  $D$ ,  $E$  and  $F$ .

State-wise dominance: We say that investment  $X$  state-wise dominates investment  $Y$  if  $X$  pays more than  $Y$  in at least one of the states and not less than  $Y$  in any other state. Investment  $X$  then is the dominating investment and  $Y$  "is dominated" (by  $X$ ). We shall write  $X \geq Y$  for shorthand.

In our example,  $B$  dominates  $A$ , since it pays 2 extra in states 1-4 and the same as  $A$  in states 5-8. Likewise,  $C$  dominates  $A$ . No other investment dominates any other. For instance,  $D$  does not dominate  $E$  since it pays less than  $E$  in states 1-4. In general, if two investments have the same expected payoffs, neither will dominate the other, since any extra payoff in one of the states must be compensated by shortfalls in some of the other states.

Probability Distributions: To determine how risky a portfolio or asset is, we will need to know the probability distributions of its payoffs.

An asset or portfolio will result in  $n$  possible financial outcomes (sums of money or returns),  $x_{1}, x_{2}, \ldots, x_{n}$ . We shall denote the probability of outcome

$x_{i}$  by  $f_{i}$ . If the portfolio is risky then for at least one value  $x_{i}$ , the probability satisfies  $0 < f_{i} < 1$ . In this case we can think of the outcome  $x$  as a random variable taking on the values  $x_{1}, x_{2}, \ldots, x_{n}$  so that

$$
f _ {i} = \operatorname {P r o b} (x = x _ {i}).
$$

From the example we see that  $n$  can be less than the number of states. So for example portfolio  $F$  has  $n = 2$  with  $x_{1} = 3$ ,  $x_{2} = 11$ . The probability mass function  $f(x_{i})$  of an investment assigns to each possible payoff  $x_{i}$  of the investment its relative likelihood or probability. The value  $f_{i} = f(x_{i})$  of the mass function is the likelihood that the investment will have a payoff of  $x_{i}$  pounds. We find the value of  $f(x_{i})$  by summing over the likelihoods of all those states where the investment pays exactly  $x_{i}$  pounds. In our example, for all six investments, their state-specific payoffs lie somewhere between 1 and 20, and thus we may consider the relevant range of  $x$  to be the interval [1, 20], for all mass functions. For the risk-free investment  $A$ , payoff  $x = 9$  occurs always and all other payoffs occur never, and thus we have

$$
f ^ {a} (9) = 1; \quad f ^ {a} (x) = 0 \text {f o r a l l o t h e r} x.
$$

Likewise for  $C$ :

$$
f ^ {c} (1 0) = 1; \quad f ^ {c} (x) = 0 \text {f o r a l l o t h e r} x.
$$

What about the mass functions of the risky investments? For  $B$ , we find that it pays 9 in four out of eight states, 11 in the other four states. Since all states are equally likely, this means that

$$
f ^ {b} (9) = \frac {1}{2}, \quad f ^ {b} (1 1) = \frac {1}{2}, \quad f ^ {b} (x) = 0 \mathrm {f o r a l l o t h e r} x.
$$

Likewise for  $D$ ,  $E$  and  $F$ . We have:

$$
\begin{array}{l} f ^ {d} (x) = \frac {1}{8} \text {f o r} x = 6, 7, 8, 9, 1 1, 1 2, 1 3, 1 4; \quad f ^ {d} (x) = 0 \text {f o r a l l o t h e r} x. \\ f ^ {e} (x) = \frac {1}{8} \text {f o r} x = 2, 4, 6, 8, 1 2, 1 4, 1 6, 1 8; \quad f ^ {e} (x) = 0 \text {f o r a l l o t h e r} x. \\ f ^ {f} (x) = \frac {1}{8} \mathrm {f o r} x = 3; f ^ {f} (x) = \frac {7}{8} \mathrm {f o r} x = 1 1. \\ \end{array}
$$

In some circumstances we will also think of  $x$  as a continuous variable taking on any value in some range  $[a, b]$ . In that case  $f(x)$  is a continuous function and is known as a probability density function.

Probability Mass Function: It is instructive to draw the histograms for the mass functions of the various investments, with payoffs on the horizontal axis and probabilities on the vertical axis. Here we show  $C$  with  $D$ ,  $D$  with  $E$ , and  $D$  with  $F$ .

Exercise: Draw the probability mass functions.

Cumulative Probability Functions: The cumulative probability function gives the probability that the payoff is less than or equal to a particular value. We shall denote the cumulative probability by

$$
F _ {i} = F (x _ {i}) = \operatorname {P r o b} (x \leq x _ {i}).
$$

For a discrete distribution we have

$$
F (x _ {i}) = \sum_ {j = 1} ^ {i} f _ {j}
$$

and for a continuous distribution we have

$$
F (x) = \int_ {a} ^ {x} f (t) d t.
$$

The cumulative probability distribution  $F(x)$  is the area below the probability density function  $f(t)$  below the value of  $x$ .

Exercise: Draw the cumulative probability functions.

Expected Payoffs: As a first measure of investment performance, we are interested in the average payoffs (expected payoffs) of an investment. The expected payoffs of the risk-free investments are simply their fixed payoffs:

$$
\begin{array}{l l} \operatorname {E} [ A ] = 9; & \operatorname {E} [ C ] = 1 0. \end{array}
$$

For the other investments, we recall that all states are equally likely, hence we merely need to sum over all payoffs and divide by the number of states:

$$
\begin{array}{l} \operatorname {E} [ B ] = \frac {1 1 + 1 1 + 1 1 + 1 1 + 9 + 9 + 9 + 9}{8} = 1 0; \\ \operatorname {E} [ D ] = \frac {1 4 + 1 3 + 1 2 + 1 1 + 9 + 8 + 7 + 6}{8} = 1 0; \\ \operatorname {E} [ E ] = \frac {1 8 + 1 6 + 1 4 + 1 2 + 8 + 6 + 4 + 2}{8} = 1 0; \\ \operatorname {E} [ F ] = \frac {1 1 + 1 1 + 1 1 + 1 1 + 1 1 + 1 1 + 3}{8} = 1 0. \\ \end{array}
$$

Thus, all investments except  $A$  have the same average payoffs of 10. On this measure, the five investments  $B - F$  are all equally desirable.

**Deviations:** How large are the deviations of actual payoffs from the mean? For the risk-free investments ( $A$  and  $C$ ), deviations are zero in all states. For the others, we have:

$$
\Delta B = \left( \begin{array}{l} + 1 \\ + 1 \\ + 1 \\ + 1 \\ - 1 \\ - 1 \\ - 1 \\ - 1 \end{array} \right); \Delta D = \left( \begin{array}{l} + 4 \\ + 3 \\ + 2 \\ + 1 \\ - 1 \\ - 2 \\ - 3 \\ - 4 \end{array} \right); \Delta E = \left( \begin{array}{l} + 8 \\ + 6 \\ + 4 \\ + 2 \\ - 2 \\ - 4 \\ - 6 \\ - 8 \end{array} \right); \Delta F = \left( \begin{array}{l} + 1 \\ + 1 \\ + 1 \\ + 1 \\ + 1 \\ - 7 \end{array} \right).
$$

A quick calculation shows that each of these deviations has an average of zero;

$$
\operatorname {E} [ B ] = \operatorname {E} [ D ] = \operatorname {E} [ E ] = \operatorname {E} [ F ] = 0,
$$

confirming that on average, the positive and negative deviations cancel each other out.

Casual inspection of these deviations shows that  $E$  tends to have much larger deviations than the other investments.  $F$  had mostly small positive deviations but one fairly large negative one (in the last state), whereas  $D$  has variable deviations that are smaller than those of  $E$  but never as large as the largest (negative) one from  $F$ .

Variance: Variance is the average of the squared deviations, and as such it is an important summary measure of risk.

$$
\Delta B ^ {2} = \left( \begin{array}{l} 1 \\ 1 \\ 1 \\ 1 \\ 1 \\ 1 \\ 1 \\ 1 \end{array} \right); \Delta D ^ {2} = \left( \begin{array}{l} 1 6 \\ 9 \\ 4 \\ 1 \\ 1 \\ 4 \\ 9 \\ 1 6 \end{array} \right); \Delta E ^ {2} = \left( \begin{array}{l} 6 4 \\ 3 6 \\ 1 6 \\ 4 \\ 4 \\ 1 6 \\ 3 6 \\ 6 4 \end{array} \right); \Delta F ^ {2} = \left( \begin{array}{l} 1 \\ 1 \\ 1 \\ 1 \\ 1 \\ 1 \\ 4 9 \end{array} \right).
$$

Hence,

$$
\mathrm {V a r} [ B ] = \mathrm {E} [ \Delta B ^ {2} ] = \frac {1 + 1 + 1 + 1 + 1 + 1 + 1 + 1}{8} = \frac {8}{8} = 1;
$$

$$
\operatorname {V a r} [ D ] = \operatorname {E} [ \Delta D ^ {2} ] = \frac {1 6 + 9 + 4 + 1 + 1 + 4 + 9 + 1 6}{8} = \frac {6 0}{8} = 7. 5;
$$

$$
\operatorname {V a r} [ E ] = \operatorname {E} [ \Delta E ^ {2} ] = \frac {6 4 + 3 6 + 1 6 + 4 + 4 + 1 6 + 3 6 + 6 4}{8} = \frac {2 4 0}{8} = 3 0;
$$

$$
\operatorname {V a r} [ F ] = \operatorname {E} [ \Delta F ^ {2} ] = \frac {1 + 1 + 1 + 1 + 1 + 1 + 1 + 4 9}{8} = \frac {5 6}{8} = 7.
$$

This we find that on average, as expected  $E$  has the largest deviations, but  $F$  has a smaller average deviation than  $D$ , despite having one very large negative deviation in the last state. Based on this measure, investment  $F$  is

the most desirable of the last three investments, closely followed by  $D$ , and then much later by  $E$ .

# Worst-case Payoffs:

If your life income depends exclusively on one particular investment, you will not just be interested in the average payoffs and average risk of that investment but you will also be interested in the actual payoffs in the various states. Ultimately, you will receive one of these actual payoffs, rather than the average payoff. In particular, you will want to know: What is the lowest possible payoff of my investment? This is the "worst-case" payoff. Worst-case payoffs are the payoffs which have the largest negative deviation from the mean.

In our example, the worst-case payoffs are 9 for  $A$ , 9 for  $B$ , 10 for  $C$ , 6 for  $D$ , 2 for  $E$ , 3 for  $F$ . We note that for a risk-free investment, worst-case payoffs are always equal to average payoffs, since for risk-free investments, payoffs are the same in all states and all deviations are zero.

# 3 Measures of Risk

We now want to ask the question whether risk can be quantified and whether the riskiness of various investments can be compared. We shall give a qualified and subtle yes to this question. It is possible to make comparisons between the riskiness of some pairs of portfolios but not others. Thus we shall have a partial ordering of portfolios according to their riskiness. Before proceeding we shall consider various measures of risk which have been considered in the literature.

# Roy's Safety First Rule

Roy in a classic paper<sup>2</sup> proposed the following measure of risk

$$
\rho_ {R} = \mathrm {P r o b} (x \leq \hat {x}).
$$

This gives the probability that the outcome is less than some critical or disaster level  $\hat{x}$  and thus the risk measure  $\rho_{R}$  measures the probability of disaster. Roy's risk measure is also known as the shortfall probability. The safety-first principle is then to choose a portfolio that minimises this probability of disaster. For a continuous distribution the Roy measure is simply the cumulative probability at  $\hat{x}$ ,

$$
\rho_ {R} = F (\hat {x}) = \int_ {x _ {m i n}} ^ {\hat {x}} f (x) d x.
$$

An upper bound can be found for this probability. Letting

$$
\mu = \int x f (x) d x
$$

denote the mean of the distribution and

$$
\sigma^ {2} = \int (x - \mu) ^ {2} d x
$$

denote the variance of the distribution, it can be shown by Chebycheff's inequality that

$$
\rho_ {R} = F (\hat {x}) \leq \frac {\sigma^ {2}}{(\mu - \hat {x}) ^ {2}}.
$$

Roy suggested that if the entire distribution is not known then choosing the investment portfolio which minimised the ratio  $\sigma^2 / (\mu - \hat{x})^2$  would be desirable. Or equivalently the portfolio which maximised the square-root of the inverse. Taking  $\hat{x}$  to be the risk-free payoff  $r$ , Roy would suggest choosing the portfolio which maximised  $(\mu - r) / \sigma$  would be desirable. This later is

just the reward to variability or Sharpe ratio introduced by Sharpe (1966)<sup>3</sup> which is widely used by professional investors.

One problem with Roy's measure is that it looks only at probabilities and not the size of the loss. Thus suppose that there are two portfolios and take  $\hat{x} = 0$  so that any negative payoff is considered a disaster. Suppose portfolio  $A$  has a payoff of  $-100$  with probability 0.01 and that all other payoffs are positive. Similarly suppose that portfolio  $B$  has a payoff of  $-1$  with probability 0.02 and all other payoffs are positive. Roy's index is higher for portfolio  $B$  though arguably portfolio  $A$  is potentially more disastrous.

# Value at Risk

Value at Risk (VaR) is the inverse of Roy's risk measure. Whereas Roy's measure asks what is the probability of a loss below a particular level  $\hat{x}$ , VaR determines the value  $\hat{x}$  such that the portfolio will suffer a loss of more than  $\hat{x}$  with a given probability. It is usual to fix the probability of loss at  $1\%$  or  $5\%$  and calculate the return distribution say for one day so that the VaR measures the minimum loss likely to be suffered on 1 or 5 of the next 100 trading days. Using the cumulative distribution function we have

$$
\alpha = F (V a R)
$$

or

$$
V a R = F ^ {- 1} (\alpha).
$$

As with Roy's measure there are some problems with the use of VaR as a measure of risk. It only considers the distribution in the lower tail and will therefore ignore differences in the distribution above the VaR threshold. The VaR measure is not sub-additive which means that the it may be possible

<table><tr><td>Prob</td><td>A</td><td>B</td><td>A+B</td></tr><tr><td>0.03</td><td>-9</td><td>1</td><td>-8</td></tr><tr><td>0.94</td><td>1</td><td>1</td><td>2</td></tr><tr><td>0.03</td><td>1</td><td>-9</td><td>-8</td></tr><tr><td>VaR(5%)</td><td>-1</td><td>-1</td><td>8</td></tr></table>

Table 1: VaR is not sub-additive

to combine two assets or portfolio and increase the VaR. Table 1 shows two portfolios  $A$  and  $B$  and calculates the VaR at the  $5\%$  level for each. Since the probability of any loss is  $3\%$ , the maximum value of the portfolio in the lowest  $5\%$  of the distribution is 1 in both cases. Thus VaR, which is the loss at risk is negative for both portfolios. However combining the two portfolios produces a  $6\%$  probability of a loss of 8 and thus the VaR at the  $5\%$  level is 8. This shows that combining two portfolios can increase the VaR significantly. $^4$  Finally as we shall show the VaR can be inconsistent with second-order stochastic dominance.

# Domar-Musgrave Risk Index

Domar and Musgrave<sup>5</sup> proposed a measure of risk that measures the expected value of returns less than the returns on a risk-free investment. Letting  $r$  denote the return on a risk-free asset, the Domar-Musgrave risk index is given by

$$
\rho_ {D M} = - \int_ {x _ {m i n}} ^ {r} (x - r) f (x) d x
$$

in the case of a continuous return or

$$
\rho_ {D M} = - \sum_ {x _ {i} \leq r} (x - r) f (x _ {i})
$$

in the discrete case. Calculating the risk index for the three portfolios  $D$ ,  $E$  and  $F$  from our example we find that

$$
\rho_ {D M} [ D ] = \frac {5}{4}; \qquad \rho_ {D M} [ E ] = \frac {5}{2}; \qquad \rho_ {D M} [ F ] = \frac {7}{8}.
$$

It is possible to generalise the Domar-Musgrave risk index to any particular target return  $\hat{x}$  which may or may not be the risk-free return. In this case the measure is also known as expected shortfall as it measures the average return that falls short of some target return  $\hat{x}$ . That is expected shortfall is measured by

$$
\rho_ {E S} = - \int_ {x _ {m i n}} ^ {\hat {x}} (x - \hat {x}) f (x) d x
$$

in the case of a continuous return or

$$
\rho_ {E S} = - \sum_ {x _ {i} \leq \hat {x}} (x - \hat {x}) f (x _ {i})
$$

in the discrete case.

There are some difficulties with the Domar-Musgrave index or expected shortfall as a measure of risk too. Consider a case where the target is  $\hat{x} = 0$  and suppose that some portfolio  $A$  has a return of  $-500$  with probability 0.1 and portfolio  $B$  has a return of  $-100$  with probability 0.5 and that all other payoffs are positive (an hence do not affect the index). Then the risk index or expected shortfall for both portfolios is the same,  $\rho_{ES}[A] = \rho_{ES}[B] = 50$  but perhaps many investors would regard portfolio  $A$  with the potentially much larger loss as more risky.

# Conditional Value at Risk

Conditional Value of Risk (CVaR) was introduced by Rockafellar and Uryasev $^{6}$  to overcome some of the problems that occur with using VaR as a risk

measure. The conditional value at risk measure is related to the Domar-Musgrave index. $^{7}$  Like the VaR the CVaR fixes a probability of loss and then takes the VaR as the target for the generalised Domar-Musgrave index. Thus in the continuous case we have

$$
C V a R = - \int_ {x _ {m i n}} ^ {V a R _ {\alpha}} (x - V a R _ {\alpha}) f (x) d x.
$$

This is simply (minus) the expected value of the tail of the distribution below the VaR level.

# Variance and Semi-variance

Markowitz developed a mean-variance framework for portfolio choice $^{8}$  in which he argued that investors in choosing between portfolios with equal expected value should choose the portfolio with the minimum variance. $^{910}$  This work was later used by Sharpe and Lintner in developing the Capital Asset Pricing Model (CAPM). As we have seen variance is a measure of average deviation and weighs both positive and negative variations equally. In his 1959 book, *Portfolio Selection*, Markowitz suggested the idea of looking at semi-variance which only considers deviations below some critical threshold. Letting the threshold be  $\hat{x}$ , the semi-variance risk measure is given by

$$
\rho_ {S V} = \sum_ {x _ {i} \leq \hat {x}} (x - \hat {x}) ^ {2} f (x _ {i})
$$

for discrete distributions and

$$
\rho_ {S V} = \int_ {x _ {m i n}} ^ {\hat {x}} (x - \hat {x}) ^ {2} f (x) d x
$$

for continuous distributions. Often the critical value is taken to be the mean return  $\mu$  so that only deviations below the mean are taken into account. The reason for preferring the semi-variance is that the variance considers both very high and very low returns equally desirable or undesirable and therefore will choose portfolios that eliminate either extremes. The semivariance however, concentrates only on losses and therefore portfolios chosen on the basis of semi-variance will focus on eliminating losses.

Exercise: Calculate the semi-variance (using  $\mu$  as the cut-off value) for the portfolios  $D$ ,  $E$  and  $F$  from our example.

# Lower Partial Moments

The measures we have consider so far are actually all special cases of the lower partial moments which were suggested by Fishburn<sup>11</sup> as suitable risk measures. The lower partial moments for a continuous distributions are given by

$$
\rho_ {L P M} ^ {\beta} = \int_ {- \infty} ^ {\hat {x}} (\hat {x} - x) ^ {\beta} f (x) d x
$$

for any  $\beta \geq 0$ . It is easy to check that

$$
\begin{array}{l} \rho_ {L P M} ^ {0} = \int_ {x _ {m i n}} ^ {\hat {x}} (\hat {x} - x) ^ {0} f (x) d x = \int_ {x _ {m i n}} ^ {\hat {x}} f (x) d x = F (\hat {x}) = \rho_ {R} \\ \rho_ {L P M} ^ {1} = \int_ {x _ {m i n}} ^ {\hat {x}} (\hat {x} - x) f (x) d x = - \int_ {x _ {m i n}} ^ {\hat {x}} (x - \hat {x} -) f (x) d x = \rho_ {D M} \\ \rho_ {L P M} ^ {2} = \int_ {x _ {m i n}} ^ {\hat {x}} (\hat {x} - x) ^ {2} f (x) d x = \rho_ {S V}. \\ \end{array}
$$

Thus the zeroth lower partial moment (where  $\beta = 0$ ) is Roy's risk index, the first lower partial moment (where  $\beta = 1$ ) is the expected shortfall or Domar-Musgrave measure and the second lower partial moment (where  $\beta = 2$ ) is a semi-variance.

# Coherent Risk Measures

We have seen that several different measures of risk have been suggested. There are however advantages and disadvantages to all these different measures and no one measure is universally accepted as the best. In order to describe what might be acceptable for a risk measure a set of criteria were developed by Artzner, Delbaen, Eber, and Heath<sup>12</sup> Consider two portfolios  $A$  and  $B$ , a measure of risk is called coherent if it satisfies the following four properties:

$$
\text {S u b a d d i t i v i t y :} \rho (A + B) \leq \rho (A) + \rho (B)
$$

Monotonicity: if  $A \leq B$ , then  $\rho(A) \geq \rho(B)$ .

Positive homogeneity: if  $\lambda > 0$ , then  $\rho(\lambda A) = \lambda \rho(A)$ .

Translation invariance: for any number  $m$ ,  $\rho(A + m) = \rho(A) - m$ .

We'll consider the rationale for each of these axioms. Subadditivity has an easy interpretation. If the subadditivity did not hold, then  $\rho(A + B) > \rho(A) + \rho(B)$ . This would imply, for instance, that in order to decrease risk, a firm might be motivated to break up into different incorporated affiliates or split portfolio into two separate parts. Such an artifact should not really decrease the overall risk. Monotonicity is perhaps obvious. If portfolio  $A$  always has lower returns than portfolio  $B$  then it ought to be defined as

being more risky. Positive homogeneity is slightly more tricky to interpret. Subadditivity implies  $\rho(A) + \rho(A) \leq 2\rho(A)$ . Taking  $\lambda = 2$  in the positive homogeneity axiom then equivalent to the assumption that  $\rho(A + A) \geq 2\rho(A)$ . That is saying that a portfolio of  $2A$  is more risky than two portfolios of  $A$ . Translation invariance implies that the risk  $\rho(A)$  decreases by  $m$ , by adding a sure return  $m$  to a portfolio  $A$ . The idea is that a risk measure is a measure of what kind of risk is acceptable. Thus if one adds a certain amount 100 (in every state) to the portfolio then the amount that needs to be added to this new portfolio to make it acceptable must have gone down by 100.

As we have seen some measures of risk are not coherent. For example VaR does not satisfy the assumption of subadditivity. Other measures such as Domar-Musgrave measure or expected shortfall are coherent. Nevertheless both VaR and expected shortfall have both detractors and advocates and no one measure is universally agreed to be better than others.[13]

# 4 Investor Preferences

The measures of risk we have so far considered associate with a given probability distribution a single number to measure risk. As we have seen there seems no universal agreement on what is the best measure and perhaps different people can have different views of risk simply because of their preferences. A question therefore to ask is whether there are situations which everyone would agree that invest  $A$  was riskier than investment  $B$ . To try to answer this question we look at investor's preferences over risky investments. It offers formal definitions of risk aversion that cover many realistic cases of investment choices. We consider pair-wise comparisons of mutually exclusive investments  $X$  and  $Y$  and ask which of the two investments is better,

given a list of assumptions of "reasonable" investment behaviour. We use our example from the previous section for illustration.

Complete Preferences: For any pair of investments  $X$  and  $Y$ , the individual can express a preference for  $X$  over  $Y$  or visa-versa or is indifferent between the two.

Transitive Preferences: For any triple of investments,  $X$ ,  $Y$  and  $Z$ , if  $X$  is preferred to  $Y$  and  $Y$  is preferred to  $Z$  then  $X$  is preferred to  $Z$ .

The idea behind these two assumptions is that investors can make choices. This is obvious for complete preferences. Without this assumption there will be some consequence bundles that the investor cannot compare. If they cannot compare the outcomes then the choice between portfolios leading to these outcomes becomes impossible. It is equally true that transitivity is needed to be able to choose between alternative portfolios. Without transitivity there would be a chain of preferences amongst some three consequences  $X$ ,  $Y$ ,  $Z$  such that  $X$  is preferred to  $Y$  and  $c'$  is preferred to  $Z$  and  $Z$  is preferred to  $X$ . In these circumstances it is impossible to say which consequence investment is the best.

Non-satiation: We say that an investor is non-satiated if he prefers a dominating investment over a dominated one. In most work in theoretical finance, we assume that all investors are non-satiated. This assumption makes sense, since payoffs are made in cash and cash can be spent on a wide range of different consumption goods and any unwanted cash can be discarded at almost no cost ("free disposal"). The assumption of non-satiation is useful when making comparisons of investments that are at different average payoff levels, but it does not let us decide between investments that have the same expected payoffs but different risk profiles. For those cases we need more specific risk assumptions.

Risk Aversion I [Preference for Certainty]: We say that an investor has "preference for certainty" and is risk averse if a risk-free investment is preferred over a risky investment of equal expected payoffs.

In our example, if a risk-averse investor is given the choice between  $C$  and  $D$ , say, he will choose  $C$ , since  $C$  has the same expected payoffs as  $D$  but no risk. We note that this definition of risk aversion does not require us to make judgements between different risky investments; we merely compare one risky investment with one risk-free investment of equal expected payoffs. "Preference for Certainty" is a very plausible assumption that is pretty much universally adopted in finance. However, it is too weak to help us decide on choices between two risky investments, such as  $D$  and  $E$ . For those choices we need more specific assumptions.

A diagrammatic way to represent preferences is to use indifference curves. Suppose there are just two states. Let the horizontal axis represents the amount of cash in state 1 and the vertical axis represents cash in state 2. Choose a particular investment  $X$ . A line is drawn through the point  $X$  which corresponds to all the other possible consequences of investments  $Y$  which are indifferent to  $X$ . This set of points  $I(X)$  is called the indifference curve. Indifference curves cannot cross by the assumption of transitivity and because of the assumptions of monotonicity and transitivity the indifference curve is "thin" and downward sloping. All the points above the indifference curve belong to the weak preference set  $WP(X)$  which represents all the points that are either preferred to or are indifferent to  $X$ .

The slope of the indifference curve shows how much extra is required in state 2 to compensate the individual for a one unit decrease in the amount received in state 1. This amount is called the marginal rate of substitution,  $MRS(X)$ , is a measure of the marginal rate of substitution at  $X$ . The marginal rate of substitution depends on preferences and therefore is likely to vary from one person to another even at the same consequence payoff  $X$ . The ratio  $q_{1} / q_{2}$  represents how much the market will compensate the individual for

reducing the consequent payoff in state 1 by one unit. Decreasing the amount received in state 1 by one unit will save the investor  $q_{1}$  on his investment. Thus the amount extra that can be had in state 2 is  $q_{1} / q_{2}$ .

Given our three assumptions little more can be said about indifference curves other than that they do not cross, are thin and are downward sloping. However there are some other features that we might expect preferences over uncertain outcomes to exhibit. Firstly risk aversion, that is a desire for more certain rather than a riskier outcomes with the same expected value.[14] Secondly state independence, that is that preferences depend on the outcome and not the state of nature per se. Thirdly separability, that is that the preferences in one particular state are to some extent independent of the preferences in some other state that didn't actually occur.

# Utility

We shall discuss the properties of risk aversion, separability and state independence in greater detail shortly. First we consider another convenient way of representing preferences which is through a utility function. A utility function associates with each possible investment  $X = (x_{1}, x_{2})$  a number  $v(x_{1}, x_{2})$  such that  $v(x_{1}, x_{2}) > v(y_{1}, y_{2})$  if and only if  $X$  is preferred to  $Y = (y_{1}, y_{2})$ . The only property of the utility function that is important is that it ranks consequences, assigning a higher number to a preferred consequence. The actual size of the number is unimportant and any transformation of the function  $v$  that produces the same ordering of consequences as does  $v$  is equally valid as a representation of preferences. Any transformation of  $v$  that is an increasing function of  $v$  will produce the same ranking. Therefore  $v$  is said to be unique only up to a positive monotonic transformation and this representation is referred to as ordinal utility.

To illustrate the ordinal nature of utility consider an example of a preference ranking which is the so-called Cobb-Douglas preferences

$$
v \left(x _ {1}, x _ {2}\right) = A x _ {1} ^ {a} x _ {2} ^ {b}
$$

where  $A$ ,  $a$  and  $b$  are parameters. $^{15}$  Since  $\log_e$  is a positive monotonic transformation, the alternative utility function

$$
\hat {v} \left(x _ {1}, x _ {2}\right) = \log_ {e} \left(v \left(x _ {1}, x _ {2}\right)\right) = \log_ {e} (A) + a \log_ {e} \left(x _ {1}\right) + b \log_ {e} \left(x _ {2}\right)
$$

is an equally valid representation of the same preferences.

The marginal rate of substitution is calculated by totally differentiating the utility function. Suppose there are just two states, then totally differentiating  $v(x_{1},x_{2})$  gives

$$
d v = \frac {\partial v (x _ {1} , x _ {2})}{\partial x _ {1}} d x _ {1} + \frac {\partial v (x _ {1} , x _ {2})}{\partial x _ {2}} d x _ {2}.
$$

The partial derivatives are often called marginal utilities as they show how much utility is increased for a small (marginal) increase in the payoff in one state. Thus we define  $MU_{1}(x_{1}, x_{2}) = \partial v(x_{1}, x_{2}) / \partial x_{1}$  and  $MU_{2}(x_{1}, x_{2}) = \partial v(x_{1}, x_{2}) / \partial x_{2}$ . The marginal rate of substitution is calculated along an indifference curve where the utility does not change, i.e. where  $dv = 0$ . Hence

$$
M R S (c x _ {1}, x _ {2}) = - \frac {d x _ {2}}{d x _ {1}} = \frac {\frac {\partial v (x _ {1} , x _ {2})}{\partial x _ {1}}}{\frac {\partial v (x _ {1} , x _ {2})}{\partial x _ {1}}}.
$$

Note that  $MRS$  is defined to be a positive number and since the indifference curve is downward sloping, the slope  $dx_{2} / dx_{1}$  is multiplied by  $-1$  to give a positive number. As we can see the marginal rate of substitution is the ratio of marginal utilities. In the case of Cobb-Douglas preferences the marginal rate of substitution is

$$
M R S (x _ {1}, x _ {2}) = \frac {\frac {a}{x _ {1}}}{\frac {b}{x _ {2}}} = \frac {x c _ {2}}{b x _ {1}}.
$$

Remember that the marginal rate of substitution is slope of the indifference curve and therefore is independent of whether the utility is assigned using the function  $v(x_{1},x_{2})$  or  $\hat{v} (x_1,x_2)$ .

So far nothing has been said about probabilities in defining preferences. However the probabilities can be illustrated in a diagram. Take some point  $X = (x_{1}, x_{2})$  in the diagram and suppose the probabilities of the two states are  $\pi_{1}$  and  $\pi_{2}$  where  $\pi_{1} + \pi_{2} = 1$ . The expected payoff from this investment is

$$
\operatorname {E} [ X ] = \pi_ {1} x _ {1} + \pi_ {2} x _ {2}.
$$

The line of all points with the same expected value is called the fair odds line. The value  $\operatorname{E}[X]$  is illustrated where the fair odds line hits the  $45^0$  line through the origin. This is the point of certainty where the payoff is the same in both states. The slope of the line is  $-\pi_1 / \pi_2$ . A preference for certainty is reflected through the utility function if  $v(E[X], E[X]) > v(x_1, x_2)$  for  $x_1 \neq x_2$ . Let's consider the implications of a preference for certainty graphically in terms of the indifference curves. Consider the point where the  $45^0$  line intersects the fair odds line. If there is a preference for certainty, all points along the fair odds line must lie on a lower indifference curve that the indifference curve passing through the intersection of the fair odds line and the  $45^0$  line. Thus the weak preference set  $WP(E[X], E[X])$  must lie above the fair odds line. This means that locally the indifference curve is convex to the origin or that the weak preference set is locally convex. If preferences are smooth then it implies that the marginal rate of substitution at the  $45^0$  line is equal to the ratio of probabilities

$$
M R S (E [ X ], E [ X ]) = \frac {\pi_ {1}}{\pi_ {2}}.
$$

In this case then, when there is a preference for certainty the indifference curve or preferences do reflect some information about the probabilities of the various states. That is if we did not know the probabilities of the states but knew an individual's preferences, then we could infer the individual's

probability assessment of the states by calculating the marginal rate of substitution at the point of certainty. Note that this implies that the marginal rate of substitution along the  $45^{\circ}$  line will be the same irrespective how far out along the  $45^{\circ}$  line we are. The slope of the all indifference curves where they cut the  $45^{\circ}$  line are the same.

As we have mentioned in the case of financial assets where the payoffs are amounts of money, the label of the state is likely to be unimportant. Thus we can reasonably suppose that how assets are viewed does not change if the states are simply relabelled. That is changing the name of the state from "rain" to "shine" and "shine" to "rain" should not affect how assets are viewed.[16] Indeed it is really the distribution of payoffs that matters and not how states are labelled at all. Thus we make the assumption that individuals are probabilistically sophisticated[17] and evaluate consequences simply by their distribution function. Probabilistic sophistication imposes a symmetry on preferences. Thus if points  $X$  and  $Y$  are on the same fair-odds line and are equal in distribution, i.e.  $x_{1} = y_{2}$  and  $x_{2} = y_{1}$  then by the assumption the indifference curve through  $X$  must also pass through  $Y$ .

Expected Utility Maximization: The most common assumption about preferences is that utility is expected utility.

$$
v (x _ {1}, x _ {2}) = p u _ {1} (x _ {1}) + (1 - p) u _ {2} (x _ {2})
$$

where  $u_{1}(x_{1})$  and  $u_{2}(x_{2})$  are the von-Neumann Morgenstern utility functions with  $u^{\prime}(\cdot) > 0$  and  $u''(\cdot) \leq 0$ . Since  $u_{1}(\cdot)$  and  $u_{2}(\cdot)$  are concave functions the indifference curves in  $(x_{1}, x_{2})$ -space are convex to the origin and thus are quasi-concave. It is typically assumed that the von-Neumann Morgenstern utility functions do not depend on the state so that  $u_{1}(\cdot) = u_{2}(\cdot)$ .

Certainty Equivalent and Risk Aversion: The certainty equivalent of an investment  $X$  is the value of an alternative safe investment  $X^{ce}$  which

has the same utility,

$$
v (x ^ {c e}, x ^ {c e}) = v (x _ {1}, x _ {2}).
$$

Graphically the certainty equivalent is the value of the point on the  $45^0$  line where it is cut by the indifference curve that passes through  $(x_{1},x_{2})$ . We can write the certainty equivalent as a function of  $x_{1}$  and  $x_{2}$ , i.e.  $x^{ce}(x_1,x_2)$ .

In the case of expected utility the certainty equivalent is given by

$$
x ^ {c e} (x _ {1}, x _ {2}) = u ^ {- 1} (\pi_ {1} u (x _ {1}) + \pi_ {2} u (x _ {2})).
$$

Since the inverse function  $u^{-1}(\cdot)$  is an increasing monotonic transformation, this function represents the same preferences as the expected utility function and the certainty equivalent can itself be treated as a utility function.

This property of the certainty equivalent is completely general. Since indifference curves do not cross by the transitivity assumption, the certainty equivalent gives the same preference ranking as the utility function itself. Thus if preferred it is possible to treat the certainty equivalent as the utility function and work with the certainty equivalent. That is maximising the certainty equivalent is equivalent to maximising utility.

Risk Premia: Risk premia are a measure of how far the certainty equivalent is from the expected value. There are two alternatives to measuring this difference: the absolute difference and the relative difference.

The absolute risk premium is the amount that can be taken away from the expected value such that if this amount is received with certainty it is no worse than the original distribution. Consider the investment  $X$ , the absolute risk premium  $\rho^a(x_1, y_1)$  is defined by

$$
v (E [ X ] - \rho^ {a} (x _ {1}, x _ {2}), E [ X ] - \rho^ {a} (x _ {1}, x _ {2})) = v (x _ {1}, x _ {2}).
$$

To see how this relates to the certainty equivalent remember that

$$
v \left(x ^ {c e} \left(x _ {1}, x _ {2}\right), x ^ {c e} \left(x _ {1}, x _ {2}\right)\right) = v \left(x _ {1}, x _ {2}\right)
$$

so that the absolute risk premium satisfies  $\rho^a (x_1,x_2) = E[X] - x^{ce}(x_1,x_2)$  and it is a measure of the willingness to pay for certainty.

An alternative way to measure the willingness to pay for certainty is to measure the proportion<sup>18</sup> that can be taken away from expected value such that if this amount is received with certainty it is no worse than the original distribution. This amount is known as the relative risk premium. The relative risk premium  $\rho^r(x_1, x_2)$  and is defined by

$$
v \left(\frac {E [ X ]}{\rho^ {r} (x _ {1} , x _ {2})}, \frac {E [ X ]}{\rho^ {r} (x _ {1} , x _ {2})}\right) = v (x _ {1}, x _ {2}).
$$

Since  $v(x^{ce}(x_1, x_2), x^{ce}(x_1, x_2)) = v(x_1, x_2)$ , the relative risk premium is simply the ratio of the expected value and certainty equivalent

$$
\rho^ {r} (x _ {1}, x _ {2}) = \frac {E [ X ]}{y ^ {c e} (x _ {1} , x _ {2})}.
$$

Diagrammatically the relative risk premium is the distance between the certainty equivalent and the expected value measured along the  $45^{\circ}$  line.

Arrow-Pratt Theory: Arrow (Aspects of the Theory of Risk Bearing, 1965) and Pratt (Econometrica, 1964) showed in the case of expected utility how the risk premium is related to the curvature of the von-Neumann Morgenstern utility function. Consider the investment  $X$  with an expected payoff of  $\pi x_{1} + (1 - \pi)x_{2} = E[X] = w$  where  $w$  can be interpreted as initial wealth. The expected utility is  $\pi u(x_{1}) + (1 - \pi)u(x_{2})$ . Suppose the individual pays an absolute risk premium of  $\rho^{a}$  to eliminate the risk. Their utility would then be  $u(E[X] - \rho^{a})$  where  $\rho^{a}$  satisfies the equation

$$
\pi u (x _ {1}) + (1 - \pi) u (x _ {2}) = u (E [ X ] - \rho^ {a}).
$$

The risk premium is, as before,  $\rho^a = w - x^{ce}$ . Some calculus using a Taylor expansion can be used to show that

$$
\rho^ {a} \approx - \frac {1}{2} \sigma^ {2} \frac {u ^ {\prime \prime} (w)}{u ^ {\prime} (w)}
$$

where  $\sigma^2 = \pi x_1^2 + (1 - \pi)x_2^2$  is the variance of the portfolio. The function

$$
A (w) = - \frac {u ^ {\prime \prime} (w)}{u ^ {\prime} (w)}
$$

is called the Arrow-Pratt coefficient of absolute risk aversion. It is a measure of the curvature of the utility function. By monotonicity  $u'(w)$  is positive, so the risk premium is positive, and the Arrow-Pratt coefficient of absolute risk aversion positive, if the second derivative of the utility function  $u''(w)$  is negative, which indicates that the utility function is concave. The larger the coefficient  $A(w)$  the greater the risk premium, the greater will the individual pay to avoid the lottery and the more risk averse is the individual. It is well known that the only von-Neumann Morgenstern utility function which has a constant coefficient of absolute risk aversion is the negative exponential function

$$
u (w) = - \exp^ {- a w}.
$$

It is also possible to define the Arrow-Pratt coefficient of relative risk aversion

$$
R (w) = w A (w)
$$

that corresponds to the relative risk premium. The von Neumann Morgenstern utility functions that exhibit constant relative risk aversion are of the power form

$$
u (w) = \frac {w ^ {(1 - r)}}{(1 - r)}
$$

with  $u(w) = \log_e(w)$  when  $r = 1$ . Again it is easily checked that  $R(w) = r$ .

# 5 Stochastic Dominance

First-order stochastic dominance: To examine stochastic dominance of two investments we look at the cumulative probability distribution functions.

Thus if two investments  $X$  and  $Y$  have cumulative distribution functions  $F$  and  $G$  respectively we say that  $X$  first-order stochastically dominates  $Y$  if

$$
F (x) \leq G (x)
$$

for all possible values of  $x$  (with strict inequality for at least one  $x$ ). Remember that  $F(x) = \operatorname{prob}(X \leq x)$  so if  $F(x) \leq G(x)$  then the probability of getting an outcome worse than  $x$  is always lower for  $X$  than for  $Y$  no matter which  $x$  we choose. We should think that most investors will prefer  $X$  to  $Y$  and one can show this is the case if the utility function is monotonic. Thus all investors with monotonically increasing preferences will agree that  $X$  is better than  $Y$ .

It is important to remember however that many investments will not be able to be ranked by first order stochastic dominance. For these investments  $F(x) < G(x)$  for some  $x$  but  $G(x) < F(x)$  for other values of  $x$ . Such investments are non-comparable according to first-order stochastic dominance. Thus first-order stochastic dominance can only be used to find a partial ordering of the set of possible investment opportunities.

Second-order stochastic dominance: For two investments  $X$  and  $Y$  with distribution functions  $F$  and  $G$  we say that  $X$  second-order stochastically dominates  $Y$  if

$$
\int_ {x _ {\min}} ^ {x} F (t) d t \leq \int_ {x _ {\min}} ^ {x} G (t) d t
$$

for all possible values of  $x$  (with strict inequality for at least one  $x$ ). We can illustrate this condition by drawing the two cumulative distribution functions. The net area between the two curves evaluated at some point  $x$  is the difference

$$
\int_ {x _ {m i n}} ^ {x} G (t) - F (t) d t.
$$

taking into account positive and negative areas (negative if  $G < F$ ) and this sum is required to be positive for all  $x$ . Thus we must start with a positive area and if the curves ever cross the sum of the positive areas must always outweigh the negative areas that follow.

It can be shown that all investors who are risk-averse expected utility maximisers will agree that  $X$  is better than  $Y$  if  $X$  second-order stochastically dominates  $Y$ . The intuition is that with risk-aversion marginal utility is declining and thus higher weight is placed on lower return outcomes. If  $X$  second-order stochastically dominates  $Y$  then any positive area where  $F < G$  is greater than any negative area where  $G < F$  and therefore higher weight is put on the positive areas.

Thus we can conclude that every risk averse expected utility maximiser will agree that  $X$  is preferable to  $Y$  if  $X$  second-order stochastically dominates  $Y$ . Again not all investments will be comparable according to second-order stochastic dominance so this again implies only a partial ordering of the set of all possible investments.

Stochastic Dominance and Variance: (1) If investment  $X$  stochastically dominates investment  $Y$ , then  $X$  will have a lower variance and a better worst-case payoff than  $Y$ . (2) However, it is possible for  $X$  to have a lower variance than  $Y$  without  $X$  stochastically dominating  $Y$ ; lower variance is a necessary but not a sufficient condition for stochastic dominance.

Exercise: Compare portfolios  $D$  and  $E$  using the stochastic dominance criteria (first-order and second-order).

# 6 Increases in Risk

Consider the following two assets (or portfolios)  $A$  and  $B$  with payoffs

$$
A = \left( \begin{array}{l} 7 \\ 4 \\ 6 \\ 0 \end{array} \right) \qquad B = \left( \begin{array}{l} 5 \\ 5 \\ 3 \\ 3 \end{array} \right)
$$

where the four states occur with probabilities  $\left(\frac{1}{6},\frac{1}{3},\frac{1}{4},\frac{1}{4}\right)$  respectively. Which of these two assets is the riskier? The expected value of these assets are  $E[A] = E[B] = 4$ . The variance of the assets are  $Var[A] = \frac{13}{2}$  and  $Var[B] = 1$  and it does seem reasonable to say that  $A$  is riskier than  $B$  as the payoffs are more spread out.

Consider the two assets  $C$  and  $D$  with payoffs

$$
C = \left( \begin{array}{l} 3 \\ 3 \\ 3 \\ 3 \\ 3 \\ 3 \\ 3 \\ 1 1 \end{array} \right) \qquad D = \left( \begin{array}{l} 0 \\ 0 \\ 0 \\ 0 \\ 4 \\ 4 \\ 4 \\ 4 \end{array} \right)
$$

where all states occur with probability  $\frac{1}{8}$ . Again  $E[C] = E[D] = 4$  but  $Var[C] = 7$  and  $Var[D] = 4$ . In this case it seems much more arguable to conclude that  $C$  is riskier than  $D$ . Asset  $C$  has a constant payout except in one state, whereas  $D$  has an equal chance of no payout or a slightly higher payout.

A natural way to define the concept of  $A$  is "less risky than"  $B$  is to suppose that  $B$  is the same as  $A$  plus some extra risk or "noise". To make it clear that we are dealing with assets with a random payoff, we shall write  $\tilde{A}$ ,  $\tilde{B}$  etc. to indicate that the payoff to the assets is random.

To make this definition precise we have to consider what it means for two assets  $A$  and  $B$  to be equivalent and how "noise" can be defined. First consider the two assets  $E$  and  $F$  which have the following payoffs

$$
E = \left( \begin{array}{c} 7 \\ 4 \end{array} \right) \qquad F = \left( \begin{array}{c} 4 \\ 7 \end{array} \right)
$$

where both states are equally probable. These two assets are not the same, since they pay out different amounts in different states. Nevertheless the two assets are equally risky. In both cases there is an equal chance of a payoff of either 4 or 7. In this case we write  $\tilde{E} \stackrel{d}{=} \tilde{F}$  and say that the two assets are equal in distribution. This is the same as saying that investors are probabilistically sophisticated and care only about the distribution of the payoffs and not the states themselves.

We have already seen that combining one asset with another can reduce the variance of the portfolio if the assets are negatively correlated. Therefore in defining "noise" we want to consider a situation that is uncorrelated with an asset  $X$ . In fact we shall use a concept slightly stronger than uncorrelated, namely mean independence. We say that a random variable  $\tilde{\epsilon}$  is mean independent of  $\tilde{X}$  if the expected value of  $\tilde{\epsilon}$  is the same for every possible value of the random variable  $\tilde{X}$ . That is  $E_{\epsilon}[\epsilon |X] = E_{\epsilon}[\epsilon ]$  for all possible values that  $X$  can take.

Consider the asset  $B$  that has a payoff of 5 with probability  $\frac{1}{2}$  and a payoff of 3 with probability  $\frac{1}{2}$ . Suppose that  $\epsilon$  has the following values

$$
\epsilon = \left\{ \begin{array}{l l} 2 & \mathrm {w i t h p r o b a b i l i t y} \frac {1}{3} \\ - 1 & \mathrm {w i t h p r o b a b i l i t y} \frac {2}{3} \end{array} \right. \qquad \mathrm {i f} B = 5
$$

and

$$
\epsilon = \left\{ \begin{array}{l l} 3 & \text {w i t h p r o b a b i l i t y} \frac {1}{2} \\ - 3 & \text {w i t h p r o b a b i l i t y} \frac {1}{2} \end{array} \right. \qquad \text {i f} B = 3.
$$

It is easy to calculate that  $E_{\epsilon}[\epsilon |B = 5] = E\epsilon [\epsilon |B = 3] = 0$ . Thus the mean of  $\epsilon$  is the same independent of the value of  $B$ . Since the mean is the same independent of  $B$ ,  $E_{\epsilon}[\epsilon |B] = E_{\epsilon}[\epsilon ]$  and it can be checked that

$$
E _ {\epsilon} [ \epsilon ] = \frac {1}{2} E _ {\epsilon} [ \epsilon | B = 5 ] + \frac {1}{2} E \epsilon [ \epsilon | B = 3 ] = 0.
$$

Mean independence is weaker than independence but is stronger than uncorrelated. The implications are

$$
\text {I n d e p e n d e n c e} \Rightarrow \text {M e a n I n d e p e n d e n c e} \Rightarrow \text {U n c o r r e l a t e d}
$$

Remember that the two variables  $X$  and  $\epsilon$  are uncorrelated when  $cov(X, \epsilon) = E[X \cdot \epsilon] - E[X] \cdot E[\epsilon] = 0$ . To see that mean independence implies zero covariance note

$$
E [ X \cdot \epsilon ] = E _ {X} [ E _ {\epsilon} [ X \cdot \epsilon | X ] ] = E _ {X} [ X \cdot E _ {\epsilon} [ \epsilon | X ] ] = E _ {X} [ X \cdot E _ {\epsilon} [ \epsilon ] ] = E _ {X} [ X ] \cdot E _ {\epsilon} [ \epsilon ].
$$

Here the first equality holds by the Law of iterated expectation; the second equality holds as the expectation over  $\epsilon$  is taken for each value of  $X$ ; the third equality holds by mean independence,  $E_{\epsilon}[\epsilon |X] = E[\epsilon ]$ ; and the last equality again holds as expectation over  $X$  is taken for each value of  $\epsilon$ .

In the example  $\epsilon$  is not independent of  $B$  because the distribution function for  $\epsilon$  depends upon  $B$ . However  $B$  and  $\epsilon$  are uncorrelated. This can be easily checked as

$$
B \cdot \epsilon = \left( \begin{array}{c} 6 \\ - 3 \\ 3 \\ - 3 \end{array} \right)
$$

with probabilities  $\left(\frac{1}{6},\frac{1}{3},\frac{1}{4},\frac{1}{4}\right)$  which gives  $E[B\cdot \epsilon ] = 0$ . In this case the two variables  $B$  and  $\epsilon$  are said to be orthogonal. Since  $E[\epsilon ] = 0$ , the covariance is zero and  $B$  and  $\epsilon$  are uncorrelated.

In comparing the risk of two assets or portfolios  $X$  and  $Y$  we wish to compare variability or deviation from the mean rather than the levels of the variable. Therefore we compare the deviations  $X - E[X]$  and  $Y - E[Y]$ . Therefore the standard definition for "riskier than" is as follows:

Risk: The asset or portfolio  $\tilde{Y}$  is riskier than the asset or portfolio  $\tilde{X}$  if there is a random variable  $\tilde{\epsilon}$  such that

$$
\tilde {Y} - E [ \tilde {Y} ] \stackrel {d} {=} \tilde {X} - E [ \tilde {X} ] + \tilde {\epsilon} \qquad \mathrm {w h e r e} \qquad E [ \tilde {\epsilon} | \tilde {X} ] = E [ \tilde {\epsilon} ] = 0.
$$

The definition says that the deviation of the random variable  $\tilde{Y}$  from its mean is equal in distribution to the deviation of the random variable  $\tilde{X}$  from

its mean plus some noise  $\tilde{\epsilon}$ . It turns out that this definition is exactly the same as second-order stochastic dominance but with the additional assumption that the means of the two distributions are the same.

Consider our example again with asset  $B$  and the random variable  $\epsilon$ . We can calculate  $B + \epsilon$  as follows:

$$
B + \epsilon = \left\{ \begin{array}{l l} 7 & \text {w i t h p r o b a b i l i t y} \frac {1}{3} \\ 4 & \text {w i t h p r o b a b i l i t y} \frac {2}{3} \end{array} \right. \qquad \text {i f} B = 5
$$

and

$$
B + \epsilon = \left\{ \begin{array}{l l} 6 & \text {w i t h p r o b a b i l i t y} \frac {1}{2} \\ 0 & \text {w i t h p r o b a b i l i t y} \frac {1}{2} \end{array} \right. \qquad \text {i f} B = 3.
$$

Since  $B = 5$  or  $B = 3$  with equal probability we have

$$
B + \epsilon = \left\{ \begin{array}{l l} 7 & \text {w i t h p r o b a b i l i t y} \frac {1}{6} \\ 4 & \text {w i t h p r o b a b i l i t y} \frac {1}{3} \\ 6 & \text {w i t h p r o b a b i l i t y} \frac {1}{4} \\ 0 & \text {w i t h p r o b a b i l i t y} \frac {1}{4} \end{array} \right..
$$

This shows that  $B + \epsilon$  and  $A$  have the same distribution function and thus are equal in distribution. We can say that  $A$  is riskier than  $B$  because it is obtained from  $B$  by adding some "noise".

It turns out that we cannot compare  $C$  and  $D$  using this definition. That is there is no noise  $\epsilon$  such that  $C \stackrel{d}{=} D + \epsilon$  or  $D \stackrel{d}{=} C + \epsilon$ . We say that  $C$  and  $D$  are incomparable in terms of risk. Thus we simply have to accept that not all assets or portfolios can be compared in terms of their riskiness.

But all asset including  $C$  and  $D$  can be compared in terms of variance. This implies that in general variance is not a good measure of risk. Indeed that it is an over strong measure of risk and a larger variance does not always correspond to what we mean by larger risk. However the opposite is true:

Thus we can conclude that a riskier asset has the greater variance. To see this we can compute the variance of  $Y$ , when  $Y$  is riskier than  $X$  as follows:

$$
\begin{array}{l} \operatorname {v a r} (Y) = \operatorname {v a r} (Y - E [ Y ]) = \operatorname {v a r} (X - E [ X ] + \epsilon) \\ = \operatorname {v a r} (X - E [ X ]) + \operatorname {v a r} (\epsilon) + 2 \operatorname {c o v} (X - E [ X ], \epsilon) \\ = \operatorname {v a r} (X) + \operatorname {v a r} (\epsilon) \\ > \quad v a r (X). \\ \end{array}
$$

Here the first line follows because  $Y$  and  $X + \epsilon$  are equal in distribution; the second line follows from the rule for variances and the third line follows because  $X$  and  $\epsilon$  are uncorrelated. Finally since  $\epsilon$  is noise, its variance is positive so  $var(X) + var(\epsilon) > var(X)$ . Thus greater variance is a necessary condition for greater risk but it is not sufficient.

# 7 Conclusion

There have been many measures of risk that have been proposed. Many measures that have been proposed are not coherent. Other measures which are coherent but are complete run into the problem that not all risk averse investors would necessarily agree on which investment is riskier. If however, we accept a partial measure of risk that compares some but not all portfolios of investment, then second order stochastic dominance of the equivalent (when the means are the same) measure of increases in risk will give a measure on which all risk averse investors will agree.

# Asset Price Dynamics

# Introduction

These notes give assumptions of asset price returns that are derived from the efficient markets hypothesis. Although a hypothesis, there is widespread empirical evidence that broadly supports the hypothesis and therefore the assumptions made on the process governing asset price changes. Continuous time stochastic processes are discussed and the geometric Brownian motion model for stock price changes is derived. We first look at rates of return as if they are known for certain and then consider the realistic case that asset price returns are unknown in advance.

Keywords: continuously compounded rate of return, stochastic process, random walk, martingale, Markov property Wiener process, geometric Brownian motion, Ito calculus.

Reading: You should read Hull chapter 12 and perhaps the very first part of chapter 13.

# Rates of Return

# The Rate of Return

The rate of return is simply the end value less the initial value as a proportion of the initial value. Thus if 100 is invested and at the end value is 120 then the rate of return is  $\frac{120 - 100}{100} = \frac{1}{5}$  or  $20\%$ . If the initial investment is  $B_{0}$  and the end value is  $B_{T}$  after  $T$  periods then the rate of return is

$$
r (T) = \frac {B _ {T} - B _ {0}}{B _ {0}}
$$

or equivalently the rate of return  $r(T)$  satisfies  $B_{T} = B_{0}(1 + r(T))$ .

It is important to know the rate of return. However to compare rates of return on different investments with different time horizons it is also important to have a measure of the rate of return per period. One method of making this comparison is to use continuously compounded rates of return. To explain this we first consider compound returns and then show what happens when the compounding is continuous.

# Compound Rates of Return

Compound interest rates are calculated by assuming that the principal (initial investment) plus interest is re-invested each period. Compounding might be done annually, semi-annually, quarterly, monthly or even daily. Assuming the re-investment is done after each period, the per-period interest rate  $r$  on the investment satisfies

$$
\left(1 + r (T)\right) = \left(1 + r\right) ^ {T}.
$$

Now consider dividing up each period into  $n$  sub-periods each of length  $\Delta t$ . This is illustrated in Figure 1. Then if the compounding is done  $n$  times per period, the compound interest rate  $r$  satisfies

$$
(1 + r (T)) = (1 + \frac {r}{n}) ^ {n T}.
$$

For example consider a time period of one-year and suppose an investment of 100 that yields 120 after two years ( $T = 2$ ) has a rate of return  $r(2) = 0.2$ . If the interest rate is annualised using annual compounding ( $n = 1$ ,  $T = 2$ ), then  $r = 0.09544$ ; with semi-annual compounding ( $n = 2$ ,  $T = 2$ ) the annualised interest rate is  $r = 0.09327$ ; with quarterly compounding ( $n = 4$ ,  $T = 2$ ) the annualised interest rate is  $r = 0.0922075$  etc.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/71260353-9bdb-4766-88df-bb675f8818cf/f8a8f058ecfcbee55392086d5b5060a0da446e815f6b79239609e245c31f450a.jpg)  
Figure 1: DIVIDING A TIME INTERVAL  $n$  SUB-PERIODS

# Continuous Compounding

Suppose that compounding is done  $n$  times per period and let the length of time between compounding be denoted by  $\Delta t = \frac{1}{n}$ . Continuous compounding occurs as  $\Delta t \to 0$  or equivalently as  $n \to 0$ . In this case the compounding factor  $r$  satisfies

$$
\left(1 + \frac {r}{n}\right) ^ {n T} = \left(1 + r \Delta t\right) ^ {\frac {T}{\Delta t}}.
$$

Let  $m = \frac{1}{r\Delta t}$ , then

$$
(1 + r \Delta t) ^ {\frac {T}{\Delta t}} = (1 + \frac {1}{m}) ^ {m r T} = \left((1 + \frac {1}{m}) ^ {m}\right) ^ {r T}.
$$

As we let the interval between compounding  $\Delta t$  go to zero then  $m\to \infty$ . The limit of  $(1 + \frac{1}{m})^m$  as  $m\to \infty$  is well known. In particular we have

$$
m = 1: \quad \left(1 + \frac {1}{m}\right) ^ {m} = \left(1 + \frac {1}{1}\right) = 2
$$

$$
m = 1 0: \quad \left(1 + \frac {1}{m}\right) ^ {m} = \left(1 + \frac {1}{1 0}\right) ^ {1 0} = 2. 5 9 3 7 4
$$

$$
m = 1 0 0: \quad \left(1 + \frac {1}{m}\right) ^ {m} = \left(1 + \frac {1}{1 0 0}\right) ^ {1 0 0} = 2. 7 0 4 8 1
$$

$$
m = 1 0 0 0: \quad \left(1 + \frac {1}{m}\right) ^ {m} = \left(1 + \frac {1}{1 0 0 0}\right) ^ {1 0 0 0} = 2. 7 1 6 9 2
$$

$$
m = 1 0 0 0 0: \quad \left(1 + \frac {1}{m}\right) ^ {m} = \left(1 + \frac {1}{1 0 0 0 0}\right) ^ {1 0 0 0 0} = 2. 7 1 8 1 5
$$

$$
m = \vdots \qquad \qquad \vdots = \vdots
$$

$$
m = \infty \qquad \qquad \left(1 + \frac {1}{m}\right) ^ {m} = e = 2. 7 1 8 2 8.
$$

In the limit as  $m \to \infty$ ,  $(1 + \frac{1}{m})^m \to e$  where  $e = 2.7182818$  is the base of the natural logarithm. Thus the compounding factor is given by

$$
(1 + \frac {r}{n}) ^ {n T} = \left((1 + \frac {1}{m}) ^ {m}\right) ^ {r T} \rightarrow e ^ {r T}.
$$

This gives a simple method for calculating the continuously compounded rate of return  $r$  from the formula  $(1 + r(T)) = e^{rT}$ . Since  $(1 + r(T)) = B_T / B_0$  simply take logs of both sides gives (since  $\ln e^{rT} = rT$ )

$$
r = \frac {1}{T} \ln \left(\frac {B _ {T}}{B _ {0}}\right) = \frac {1}{T} (\ln S _ {B} - \ln B _ {0}).
$$

This is known as the continuously compounded rate of return.

# The Continuously Compounded Rate of Return

The continuously compounded rate of return has the property that longer period rates of return can be computed simply by adding shorter continuously

compounded rates of return. This is a very convenient feature which makes using the continuously compounded rates of return especially simple. To see this let  $r_t$  denote the continuously compounded rate of return from period  $t$  to  $t + 1$ , that is

$$
r _ {t} = \ln \left(\frac {B _ {t + 1}}{B _ {t}}\right)
$$

where  $B_{t}$  is the value of the asset at time  $t$ . Let  $r(T)$  denote the continuously compounded rate of return over the period 0 to  $T$ ,

$$
r (T) = \ln \left(\frac {B _ {T}}{B _ {0}}\right) = \ln B _ {T} - \ln B _ {0}.
$$

Suppose that  $T = 2$  then we can write this as

$$
r (2) = \ln B _ {2} - \ln B _ {0} = (\ln B _ {2} - \ln B _ {1}) + (\ln B _ {1} - \ln B _ {0}) = r _ {2} + r _ {1}.
$$

Thus the continuously compounded rate of return over two periods is simply the sum of the two periods by period returns. In general for any value of  $T$  we can write

$$
\begin{array}{l} r (T) = (\ln B _ {T} - \ln B _ {T - 1}) + (\ln B _ {T - 1} - \ln B _ {T - 2}) + \dots + (\ln B _ {2} - \ln B _ {1}) + (\ln B _ {1} - \ln B _ {0}) \\ = r _ {T - 1} + r _ {T - 2} + \dots + r _ {1} + r _ {0} = \sum_ {t = 0} ^ {T - 1} r _ {t}. \\ \end{array}
$$

Thus the continuously compounded rate of return over time  $T$  is simply the sum of the period by period returns. If  $r_t$  is constant over time then  $r(T) = rT$ .

# A Differential Equation

Let  $r_t$  denote the rate of return between  $t$  and  $t + 1$ . Then over any sub-interval of  $\Delta t$  say between  $t$  and  $t + \Delta t$ ,  $r_t$  satisfies

$$
B _ {t + \Delta t} = (1 + r _ {t} \Delta t) B _ {t}.
$$

Then taking the limit as  $\Delta t\to 0$  we have  $B_{t + \Delta t} - B_t\rightarrow dB(t)$  where  $B(t)$  is the price at time  $t$  and  $\Delta t\to dt$ . Hence we can write

$$
d B (t) = r _ {t} B (t) d t
$$

or equivalently

$$
\frac {d B (t)}{B (t)} = r _ {t} d t.
$$

This is a differential equation. If we assume that  $r_t = r$  is independent of the time  $t$ , then this equation can be solved at by integration to give the asset price at time  $T$

$$
\ln B _ {T} - \ln B _ {0} = = \ln \left(\frac {B _ {T}}{B _ {0}}\right) = r T
$$

or

$$
B _ {T} = B _ {0} e ^ {r T}.
$$

# Stochastic Processes

We have assumed so far that the rate of return was known so that we were dealing with a risk-free asset. But for most assets the rate of return is uncertain or stochastic. As the asset value also changes through time the we say that the asset price follows a stochastic process. Fortunately the efficient markets hypothesis provides some strong indication of what properties this stochastic process will have.

# A Coin Tossing Example

To examine the form that uncertain returns may take it is useful to think first of a very simple stochastic process. This we have already seen as the binomial model is itself a stochastic process. As an example consider the case of tossing a fair coin where one unit is won if the coin ends up Heads

and one unit is lost if the coin ends up Tails. An example of the possible payoffs for a particular sequence of Heads and Tails is illustrated in Figure 2.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/71260353-9bdb-4766-88df-bb675f8818cf/826ead5434c4f93defb9f0fec2edb0598d2e8a002269a8284c8cc04dfbaa30d3.jpg)  
Figure 2: A COIN TOSSING STOCHASTIC PROCESS

The important properties of this example are that the distribution of returns are 1) identically distributed at each toss (there is an equal chance of a Head or a Tail); 2) independently distributed (the probability of a Head today is independent of whether there was a Head yesterday); 3) the expected return is the same each period (equal to zero); 4) the variance is constant at each period (equal to one).

There are some important implications to note about this process. First let  $x_{t}$  denote the winnings on the  $t$ th toss. We have  $x_{0} = 0$  and  $\operatorname{E}[x_1] = 0$  where  $\operatorname{E}[x_t]$  denotes the expected winnings at date  $t$ . Then we also have at any date

$$
\operatorname {E} \left[ x _ {t + 1} \right] = x _ {t}.
$$

Any process with this property is said to be a martingale. Another important property is that the variance of  $x$  is increasing proportionately to the number of tosses. In particular letting  $\sigma_t^2$  denote the variance of the winnings at the  $t$ th toss we have  $\sigma_t^2 = t$  or in terms of the standard deviation (the square root of the variance

$$
\sigma_ {t} = \sqrt {t}.
$$

This is illustrated in Figure 3. Figure 3 shows all possible winnings through four tosses. The variance of winnings is easily calculated at each toss. For example at the second toss the expected winnings are zero so the variance is given by

$$
\sigma_ {2} ^ {2} = \frac {1}{4} (2 - 0) ^ {2} + \frac {1}{2} (0 - 0) ^ {2} + \frac {1}{4} (- 2 - 0) ^ {2} = 1 + 1 = 2
$$

and so the standard deviation is  $\sigma_{2} = \sqrt{2}$

# A Stochastic Process for Asset Prices

The efficient markets hypothesis implies that all relevant information is rapidly assimilated into asset prices. Thus asset prices will respond only to new information (news) and since news is essentially unforecastable so to are asset prices. The efficient market hypothesis also implies that it is impossible to consistently make abnormal profits by trading on publicly available information and in particular the past history of asset prices. Thus only the current asset price is relevant in predicting future prices and past prices are irrelevant. This property is known as the Markov property for stock prices. If we add a further assumption that the variability of asset prices is roughly constant over time, then the asset price is said to follow a random walk. This was true of our coin tossing example above.

Let  $u_{t}$  denote the random rate of return from period  $t$  to  $t + 1$ . Then

$$
S _ {t + 1} = (1 + u _ {t}) S _ {t}.
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/71260353-9bdb-4766-88df-bb675f8818cf/9645fbe668c4b5d549179b85be49b1ad920b5e1a4dfd4945a858109c86554ee2.jpg)  
Figure 3: COIN TOSSING EXAMPLE: THE VARIANCE IS PROPORTIONAL TO TIME

$$
\sigma^ {2} = 1 \quad \sigma^ {2} = 2 \quad \sigma^ {2} = 3 \quad \sigma^ {2} = 4
$$

The return  $u_{t}$  is now random because the future asset price is unknown. It can be considered as a random shock or disturbance. Taking natural logarithm of both sides gives

$$
\ln S _ {t + 1} = \ln S _ {t} + \ln (1 + u _ {t}).
$$

We can then see how the stochastic process for the asset price evolves. Suppose we start from a given value  $S_0$ , then

$$
\ln S _ {1} = \ln S _ {0} + \ln \left(1 + u _ {0}\right)
$$

$$
\ln S _ {2} = \ln S _ {1} + \ln (1 + u _ {1}) = \ln S _ {0} + \ln (1 + u _ {0}) + \ln (1 + u _ {1})
$$

$$
\ln S _ {3} = \ln S _ {2} + \ln (1 + u _ {2}) = \ln S _ {0} + \ln (1 + u _ {0}) + \ln (1 + u _ {1}) + \ln (1 + u _ {2})
$$

$$
\begin{array}{c} \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \end{array}
$$

$$
\ln S _ {T} = \ln S _ {0} + \sum_ {i = 0} ^ {T - 1} \ln (1 + u _ {i}).
$$

Let  $\omega_{t} = \ln (1 + u_{t})$ . We can then write

$$
\ln S _ {T} = \ln S _ {0} + \sum_ {i = 0} ^ {T - 1} \omega_ {i}.
$$

We shall assume that  $\omega_{t}$  is a random variable which is identically and independently distributed and such that the expected value  $\operatorname{E}[\omega_t] = \nu$  and variance  $\operatorname{Var}[\omega_t] = \sigma^2$ . There is a great deal of evidence to support the assumption that  $\omega_{t}$  is independently and identically distributed and over short time horizons. It is also usually reasonable to assume that the expected value  $\nu$  and variance  $\sigma^2$  are independent of time for the short time horizons that we normally consider in pricing options.

We shall make a further assumption that each  $\omega_{t}$  is normally distributed. Since the sum of randomly distributed random variables is normally distributed, and since  $S_0$  is known the natural logarithm of the asset price will also be normally distributed. Taking expectations we can therefore show that

$$
\operatorname {E} \left[ \ln S _ {T} \right] = \ln S _ {0} + \nu T
$$

and

$$
\mathrm {V a r} [ \ln S _ {T} ] = \sigma^ {2} T.
$$

Since the logarithm of the asset price is normally distributed the asset price itself is said to be lognormally distributed. In practice when one looks at the empirical evidence asset prices are reasonably closely lognormally distributed.

# Lognormal Random Variable

We have assumed that that  $\omega_{t} = \ln (1 + u_{t})$  is normally distributed with an expected value of  $\nu$  and variance  $\sigma^2$ . But  $1 + u_{t}$  is a lognormal variable. Since  $1 + u_{t} = e^{\omega_{t}}$  we might guess that the expected value of  $u_{t}$  is  $\operatorname{E}[u_t] = e^\nu - 1$ . However this would be WRONG. The expected value of  $u_{t}$  is

$$
\operatorname {E} [ u _ {t} ] = e ^ {\nu + \frac {1}{2} \sigma^ {2}} - 1.
$$

The expected value is actually higher than anticipated by half the variance. The reason why can be seen from looking at an example of the lognormal distribution which is drawn in Figure 4. The distribution is skewed and as the variance increases the lognormal distribution will spread out. It cannot spread out too much in a downward direction because the variable is always non-negative. But it can spread out upwards and this tends to increase the mean value. One can likewise show that the expected value of the asset price at time  $T$  is

$$
\operatorname {E} [ S _ {T} ] = S _ {0} e ^ {(\nu + \frac {1}{2} \sigma^ {2}) T}.
$$

Letting  $\mu = \nu +\frac{1}{2}\sigma^2$  we have

$$
\operatorname {E} [ S _ {T} ] = s _ {0} e ^ {\mu T}
$$

so that  $\mu$  is the expected continuously compounded rate of return. We will explain the relationship between  $\mu$  and  $\nu$  a little bit further below.

# Standard Normal Variable

We have seen that  $\ln S_T$  is normally distributed with mean (expected value) of  $\ln S_0 + \nu T$  and variance of  $\sigma^2 T$ . It is useful to transform this to a variable

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/71260353-9bdb-4766-88df-bb675f8818cf/583a0919f17634da20b58b68f61610f924f77cd1920442eb956d17d695ce829a.jpg)  
Figure 4: A LOGNORMAL DISTRIBUTION

which has a standard normal distribution with mean of zero and standard deviation of one. Such a variable is called a standard normal variable. To make this transformation, we subtract the mean and divide by the standard deviation (square root of the variance). Thus

$$
\frac {\ln S _ {T} - \ln S _ {0} - \nu T}{\sigma \sqrt {T}}
$$

is a standard normal variable. We let  $N(x)$  denote the cumulative probability that the standard normal variable is less than or equal to  $x$ . A standard normal distribution is drawn in Figure 5. It can be seen that  $N(0) = 0.5$  as the normal distribution is symmetric and half the distribution is to the left of the mean value of zero. It also follows from symmetry that if  $x > 0$ , then  $1 - N(x) = N(-x)$ . We will use this property later when we look at the Black-Scholes formula.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/71260353-9bdb-4766-88df-bb675f8818cf/6b62efdfeb76db9e53d70d460d38fd1fa7a08bf4e0bd70ffd805a3d44452d6bf.jpg)  
Figure 5: A STANDARD NORMAL DISTRIBUTION.  $N(0) = 0.5$ .

# Arithmetic and geometric rates of return

We now consider  $\mu$  and  $\nu$  again. Suppose we have an asset worth 100 and for two successive periods it increases by  $20\%$ . Then the value at the end of the first period is 120 and the value at the end of the second period is 144.

Now suppose that instead the asset increases in the first period by  $30\%$  and in the second period by  $10\%$ . The average or arithmetic mean of the return is  $20\%$ . However the value of the asset is 130 at the end of first period and 143 at the end of the second period. The variability of the return has meant that the asset is worth less after two periods even though the average return is the same. We can calculate the equivalent per period return that would give the same value of 143 after two periods if there were no variance in the returns. That is the value  $\nu$  that satisfies

$$
1 4 3 = 1 0 0 (1 + \nu) ^ {2}.
$$

This value is known as the geometric mean. It is another measure of the average return over the two periods. Solving this equation gives the geometric

mean as  $\nu = 0.195826$  or  $19.58\%$  per period² which is less than the arithmetic rate of return per period.

There is a simple relationship between the arithmetic mean return, the geometric mean return and the variance of the return. Let  $\mu_1 = \mu + \sigma$  be the rate of return in the first period and let  $\mu_2 = \mu - \sigma$  be the rate of return in the second period. Here the average rate of return is  $\frac{1}{2} (\mu_1 + \mu_2) = \mu$  and the variance of the two rates is  $\sigma^2$ . The geometric rate of return  $\mu$  satisfies  $(1 + \nu)^2 = (1 + \mu_1)(1 + \mu_2)$ . Substituting and expanding this gives

$$
1 + 2 \nu + \nu^ {2} = (1 + \mu + \sigma) (1 + \mu - \sigma) = (1 + \mu) ^ {2} - \sigma^ {2} = 1 + 2 \mu + \mu^ {2} - \sigma^ {2}
$$

or

$$
\nu = \mu - \frac {1}{2} \sigma^ {2} + \frac {1}{2} (\mu^ {2} - \nu^ {2}).
$$

Since rates of return are typically less than one, the square of the return is even smaller and hence the difference between two squared percentage terms is smaller still. Hence we have the approximation  $\nu \approx \mu -\frac{1}{2}\sigma^2$  or

$$
\mathrm {g e o m e t r i c m e a n} \approx \mathrm {a r i t h m e t i c m e a n} - \frac {1}{2} \mathrm {v a r i a n c e}.
$$

This approximation will be better the smaller are the interest rates and the smaller is the variance. In the example  $\mu = 0.2$  and  $\sigma = 0.1$  so  $\frac{1}{2}\sigma^2 = 0.005$  and  $\mu -\frac{1}{2}\sigma^2 = 0.1950$  which is close to the actual geometric mean of 0.1958. Thus the difference between  $\mu$  and  $\nu$  is that  $\nu$  is the geometric rate of return and  $\mu$  is the arithmetic rate of return. It is quite usual to use the arithmetic rate and therefore to write that the expected value of the logarithm of the stock price satisfies

$$
\operatorname {E} [ \ln S _ {T} ] = \ln S _ {0} + \left(\mu - \frac {1}{2} \sigma^ {2}\right) T
$$

and

$$
\mathrm {V a r} [ \ln S _ {T} ] = \sigma^ {2} T.
$$

# Continuously Compounded Rate of Return

The value  $\nu$  is the continuously compounded rate of return. It is given by

$$
\nu = \frac {1}{T} [ \ln S _ {T} - \ln S _ {0} ].
$$

Hence taking expectations we can calculate

$$
\operatorname {E} [ \nu ] = \frac {1}{T} \operatorname {E} [ \ln S _ {T} - \ln S _ {0} ] = = \frac {1}{T} \left(\operatorname {E} [ \ln S _ {T} ] - \ln S _ {0}\right) = \mu - \frac {\sigma^ {2}}{2}.
$$

Similarly the variance satisfies

$$
\mathrm {V a r} [ \nu ] = \frac {1}{T ^ {2}} \mathrm {V a r} [ \ln S _ {T} - \ln S _ {0} ] = \frac {1}{T ^ {2}} \mathrm {V a r} [ \ln S _ {T} ] = \frac {\sigma^ {2} T}{T ^ {2}} = \frac {\sigma^ {2}}{T}.
$$

Hence the standard deviation of  $\nu$  is simply  $\sigma / \sqrt{T}$ .

# A Wiener Process

We will now consider the stochastic process in more detail and see how to take limits as the length of the time interval goes to zero. This will produce a continuous time stochastic process.

Consider a variable  $z$  which takes on values at discrete points in time  $t = 0,1,\ldots ,T$  and suppose that  $z$  evolves according to the following rule:

$$
z _ {t + 1} = z _ {t} + \epsilon ; \qquad W _ {0} \quad \mathrm {f i x e d}
$$

where  $\epsilon$  is a random drawing from a standardized normal distribution, that is with mean of zero and variance of one. The draws are assumed to be independently distributed. This represents a random walk where on average  $z$  remains unchanged each period but where the standard deviation of the realized value is one each period. At date  $t = 0$ , we have  $E[z_T] = z_0$  and the variance  $Var[z_T] = T$  as the draws are independent.

Now divide the periods into  $n$  subperiods each of length  $\Delta t$ . To keep the process equivalent the variance in the shock must also be reduced so that the standard deviation is  $\sqrt{\Delta t}$ . The resulting process is known as a Wiener process. The Wiener process has two important properties:

Property 1 The change in  $z$  over a small interval of time satisfies:

$$
z _ {t + h} = z _ {t} + \epsilon \sqrt {\Delta t}.
$$

Then as of time  $t = 0$ , it is still the case that  $E[z_T] = z_0$  and the variance  $Var[z_T] = T$ . This relation may be written

$$
\Delta z (t + \Delta t) = \epsilon \sqrt {\Delta t}
$$

where  $\Delta z(t + \Delta t) = z_{t + \Delta t} - z_t$ . This has an expected value of zero and standard deviation of  $\sqrt{\Delta t}$ .

Property 2 The values of  $\Delta z$  for any two different short intervals of time are independent.

It follows from this that

$$
z (T) - z (0) = \sum_ {i} ^ {N} \epsilon_ {i} \sqrt {\Delta t}
$$

where  $N = T / \Delta t$  is the number of time intervals between 0 and  $T$ . Hence we have

$$
\operatorname {E} [ Z (T) ] = z (0)
$$

and

$$
\operatorname {V a r} [ z (T) ] = N \Delta t = T
$$

or the standard deviation of  $z(T)$  is  $\sqrt{T}$ .

Now consider what happens in the limit as  $\Delta t \to 0$ , that is as the length of the interval becomes an infinitesimal  $dt$ . We replace  $\Delta z(t + \Delta t)$  by  $dz(t)$

which has a mean of zero and standard deviation of  $dt$ . This continuous time stochastic process is also known as Brownian Motion after its use in physics to describe the motion of particles subject to a large number of small molecular shocks.

This process is easily generalized to allow for a non-zero mean and arbitrary standard deviation. A generalized Wiener process for a variable  $x$  is defined in terms of  $dz(t)$  as follows

$$
d x = a d t + b d z
$$

where  $a$  and  $b$  are constants. This formula for the change in the value of  $x$  consists of two components, a deterministic component  $a dt$  and a stochastic component  $bd z(t)$ . The deterministic component is  $dx = a dt$  or  $\frac{dx}{dt} = a$  which shows that  $x = x_0 + at$  so that  $a$  is simply the trend term for  $x$ . Thus the increase in the value of  $x$  over one time period is  $a$ . The stochastic component  $bd z(t)$  adds noise or variability to the path for  $x$ . The amount of variability added is  $b$  times the Wiener process. Since the Wiener process has a standard deviation of one the generalized process has a standard deviation of  $b$ .

# The Asset Price Process

Remember that we have

$$
\ln S _ {t + 1} - \ln S _ {t} = \omega_ {t}
$$

where  $\omega_{t}$  is an independent random variable with mean  $\nu$  and standard deviation of  $\sigma$ . The continuous time version of this equation is therefore

$$
d \ln S (t) = \nu d t + \sigma d z
$$

where  $z$  is a standard Wiener process. The right-hand-side of the equation is just a random variable that is evolving through time. The term  $\nu$  is called the

drift parameter and the standard deviation of the continuously compounded rate of return is  $\sqrt{Var[r(t)]} = \sigma \sqrt{\Delta t}$  and the term  $\sigma$  is referred to as the volatility of the asset return.

# Ito Calculus

We have written the process in terms of  $\ln S(t)$  rather than  $S(t)$  itself. This is convenient and shows the connection to the binomial model. However it is usual to think in terms of  $S(t)$  itself too. In ordinary calculus we know that

$$
d \ln S (t) = \frac {d S (t)}{S (t)}.
$$

Thus we might think that  $dS(t) / S(t) = \nu dt + \sigma dz$ . But this would be WRONG. The correct version is

$$
\frac {d S (t)}{S (t)} = \left(\nu + \frac {1}{2} \sigma^ {2}\right) d t + \sigma d z.
$$

This is a special case of Ito's lemma. Ito's lemma shows that for any process of the form

$$
d x = a (x, t) d t + b (x, t) d z
$$

then the function  $G(x,t)$  follows the process

$$
d G = \left(\frac {\partial G}{\partial x} a (x, t) + \frac {\partial G}{\partial t} + \frac {1}{2} \frac {\partial^ {2} G}{\partial x ^ {2}} b ^ {2} (x, t)\right) d t + \frac {\partial G}{\partial x} b (x, t) d z.
$$

We'll see how to use Ito's lemma. We have

$$
d \ln S (t) = \nu d t + \sigma d z.
$$

Then let  $\ln S(t) = x(t)$ , so  $s(T) = G(x,t) = e^{x}$ . Then upon differentiating

$$
\frac {\partial G}{\partial x} = e ^ {x} = S, \qquad \frac {\partial^ {2} G}{\partial S ^ {2}} = e ^ {x} = S, \qquad \frac {\partial G}{\partial t} = 0.
$$

Hence using Ito's lemma

$$
d S (t) = (\nu S (t) + 0 + \frac {1}{2} \sigma^ {2} S (t)) d t + \sigma S (t) d z
$$

or

$$
d S (t) = (\nu + \frac {1}{2} \sigma^ {2}) S (t) d t + \sigma S (t) d z
$$

Since  $\mu = \nu +\frac{1}{2}\sigma^2$  we can write this as

$$
d S (t) = \mu S (t) d t + \sigma S (s) d z.
$$

This process is known as geometric Brownian motion as it is the rate of change which is Brownian motion. Thus sometimes the above equation is written as

$$
\frac {d S (t)}{S (t)} = \mu d t + \sigma d z.
$$

We can also do the same calculation the other way around. Suppose that we start from the process

$$
d s (t) = \mu S (t) d t + \sigma S (s) d z.
$$

Now consider the function  $G(S) = \ln S$ . Differentiating we have

$$
\frac {\partial G}{\partial S} = 1, \qquad \frac {\partial^ {2} G}{\partial S ^ {2}} = - \frac {1}{S ^ {2}}, \qquad \frac {\partial G}{\partial t} = 0.
$$

Hence substituting into Ito's lemma we get

$$
d G = d \ln S (t) = \left(\mu - \frac {1}{2} \sigma^ {2}\right) d t + \sigma d z.
$$

# The forward price

As we have seen before the forward price just depends on the current price of the underlying, the interest rate and the time to expiration. With continuous compounding we can write the forward price equation as

$$
F (S (t), t) = S (t) e ^ {r (T - t)}.
$$

This shows the forward price is a stochastic process which depends on the price of the underlying asset which itself is a stochastic process. Since we have

that the forward price is a function of a stochastic process we can use Ito's lemma. Upon differentiation we have

$$
\frac {\partial F}{\partial S} = e ^ {r (T - t)}; \quad \frac {\partial F}{\partial t} = - r S (t) e ^ {r (T - t)}; \quad \frac {\partial^ {2} F}{\partial S ^ {2}} = 0.
$$

Hence substituting into Ito's lemma

$$
\begin{array}{l} d F = \left(e ^ {r (T - t)} \mu S (t) - r S (t) e ^ {r (T - t)}\right) d t + \sigma S (t) e ^ {r (T - t)} d z \\ = (\mu - r) S (t) e ^ {r (T - t)} \sigma S (t) e ^ {r (T - t)} d z \\ = (\mu - r) F (t) d t + \sigma F (t) d z. \\ \end{array}
$$

This shows that the forward price also follows a geometric Brownian motion process with expected return given by the risk premium on the underlying  $\mu - r$  and volatility  $\sigma$  (the same as the underlying asset).

# Summary

We have shown how returns are continuously compounded and introduced the geometric Brownian motion process for stock prices. We have shown how Ito's lemma can be used. The next thing to do will be to show how to use the assumption of geometric Brownian motion to price an option or derivative using Ito's lemma.
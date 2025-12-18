---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: 18.1 NATURE OF FUTURES OPTIONS
linter-yaml-title-alias: 18.1 NATURE OF FUTURES OPTIONS
---

# 18.1 NATURE OF FUTURES OPTIONS

A futures option is the right, but not the obligation, to enter into a futures contract at a certain futures price by a certain date. Specifically, a futures call option is the right to enter into a long futures contract at a certain price; a futures put option is the right to enter into a short futures contract at a certain price. Futures options are generally American; that is, they can be exercised any time during the life of the contract.

If a futures call option is exercised, the holder acquires a long position in the underlying futures contract plus a cash amount equal to the most recent settlement futures price minus the strike price. If a futures put option is exercised, the holder acquires a short position in the underlying futures contract plus a cash amount equal to the strike price minus the most recent settlement futures price. As the following examples show, the effective payoff from a futures call option is  $\max (F - K,0)$  and the effective payoff from a futures put option is  $\max(K - F, 0)$ , where  $F$  is the futures price at the time of exercise and  $K$  is the strike price.

# Example 18.1

Suppose it is August 15 and a trader has one September futures call option contract on copper with a strike price of 320 cents per pound. One futures contract is on 25,000 pounds of copper. Suppose that the futures price of copper for delivery in September is currently 331 cents, and at the close of trading on August 14 (the last settlement) it was 330 cents. If the option is exercised, the trader receives a cash amount of

$$
2 5, 0 0 0 \times (3 3 0 - 3 2 0) \text {c e n t s} = \$ 2, 5 0 0
$$ plus a long position in a futures contract to buy 25,000 pounds of copper in September. If desired, the position in the futures contract can be closed out immediately. This would leave the trader with the 2,500 cash payoff plus an amount


$$

2 5, 0 0 0 \times (3 3 1 - 3 3 0) \text {c e n t s} = \$ 2 5 0

$$ reflecting the change in the futures price since the last settlement. The total payoff from exercising the option on August 15 is 2,750, which equals 25,000(F - K), where F is the futures price at the time of exercise and K is the strike price.


# Example 18.2

A trader has one December futures put option on corn with a strike price of 600 cents per bushel. One futures contract is on 5,000 bushels of corn. Suppose that the current futures price of corn for delivery in December is 580, and the most recent settlement price is 579 cents. If the option is exercised, the trader receives a cash amount of

$$

5, 0 0 0 \times (6 0 0 - 5 7 9) \text {c e n t s} = \$ 1, 0 5 0

$$ plus a short position in a futures contract to sell 5,000 bushels of corn in December. If desired, the position in the futures contract can be closed out. This would leave the trader with the 1,050 cash payoff minus an amount


$$

5, 0 0 0 \times (5 8 0 - 5 7 9) \text {c e n t s} = \$ 5 0

$$ reflecting the change in the futures price since the last settlement. The net payoff from exercise is 1,000, which equals 5,000(K - F), where F is the futures price at the time of exercise and K is the strike price.


# Expiration Months

Futures options are referred to by the delivery month of the underlying futures contract—not by the expiration month of the option. As mentioned earlier, most futures options are American. The expiration date of a futures option contract is usually a short period of time before the last trading day of the underlying futures contract. (For example, the CME Group Treasury bond futures option expires on the latest Friday that precedes by at least two business days the end of the month before the futures delivery month.) Exceptions are the CME Group mid-curve Eurodollar and the mid-curve three-month SOFR contracts where the futures contract expires much later than the options contract.

# Options on Interest Rate Futures

In Chapter 6, we discussed the interest rate futures contracts traded by the CME Group. Options on interest rate futures are also traded by the exchange. Consider, for example, the Treasury bond futures option contract. This is an option to enter into a Treasury bond futures contract. One Treasury bond futures contract is for the delivery of bonds with a principal of 100,000. The price of the Treasury bond futures option is quoted as a percentage of the face value of the underlying Treasury bonds to the nearest sixty-fourth of 1\%.

As explained in Chapter 6, the CME's most popular contract on short-term interest rates has traditionally been its Eurodollar futures contract. As LIBOR is phased out, the exchange expects this to be replaced by the three-month SOFR futures contract. Options on Eurodollar futures have been popular and are expected to be replaced by options on three-month SOFR futures, which were launched by the CME in January 2020. It will be recalled that the Eurodollar rate is a forward-looking rate (a borrowing rate for the next three months) whereas SOFR is a backward-looking rate (calculated by compounding overnight rates for the previous three months). Eurodollar and three-month SOFR futures are designed so that a one-basis-point move in the futures price is worth 25 per contract. The same is true of options on these futures contracts.

Interest rate futures option contracts work in the same way as the other futures options contracts discussed in this chapter. For example, in addition to the cash payoff, the holder of a call option obtains a long position in the futures contract when the option is exercised and the option writer obtains a corresponding short position. The total payoff from the call, including the value of the futures position, is  $\max (F - K,0)$ , where  $F$  is the futures price at the time of exercise and  $K$  is the strike price.

Interest rate futures prices increase when bond prices increase (i.e., when interest rates fall). They decrease when bond prices decrease (i.e., when interest rates rise). An investor who thinks that short-term interest rates will rise can speculate by buying put options on Eurodollar or SOFR futures, whereas an investor who thinks the rates will fall can speculate by buying call options on Eurodollar or SOFR futures. An investor who thinks that long-term interest rates will rise can speculate by buying put options on Treasury note futures or Treasury bond futures, whereas an investor who thinks the rates will fall can speculate by buying call options on these instruments.

# Example 18.3

Suppose that the June SOFR futures is 99.35 (indicating an interest rate of  $0.65\%$  per annum) and that an investor expects short-term interest rates to decline so that overnight rates between June and September are less than  $0.5\%$  per annum. Suppose also that the price of a call option with a strike price of 99.50 is 0.05 (i.e., 5 basis points). The investor could buy a call option contract with a strike price of 99.50 for  $\$25 \times 5$ , or  $\$125$ . If the investor exercises the call when the futures price is 99.70 (indicating an interest rate of  $0.3\%$  per annum), the payoff to the investor is  $\$25 \times 20$ , or  $\$500$ , and the investor's profit is  $\$375$ .

# Example 18.4

It is August and the futures price for the December Treasury bond contract is 96.09 (or  $96\frac{9}{32} = 96.28125$ ). The yield on long-term government bonds is about  $6.4\%$  per annum. An investor who feels that this yield will fall by December might choose to buy December calls with a strike price of 98. Assume that the price of these calls is 1-04 (or  $1\frac{4}{64} = 1.0625\%$  of the principal). If long-term rates fall to  $6\%$  per annum and the Treasury bond futures price rises to 100-00, the investor will make a net profit per 100 of bond futures of


$$

1 0 0. 0 0 - 9 8. 0 0 - 1. 0 6 2 5 = 0. 9 3 7 5

$$

Since one option contract is for the purchase or sale of instruments with a face value of \$100,000, the investor's profit is \$937.50 per option contract bought.

# 18.2 REASONS FOR THE POPULARITY OF FUTURES OPTIONS

It is natural to ask why people choose to trade options on futures rather than options on the underlying asset. The main reason appears to be that a futures contract is, in many circumstances, more liquid and easier to trade than the underlying asset. Furthermore, a futures price is known immediately from trading on the futures exchange, whereas the spot price of the underlying asset may not be so readily available.

Consider Treasury bonds. The market for Treasury bond futures is much more active than the market for any particular Treasury bond. Also, a Treasury bond futures price is known immediately from exchange trading. By contrast, the current market price of a bond can be obtained only by contacting one or more dealers. It is not surprising that investors would rather take delivery of a Treasury bond futures contract than Treasury bonds.

Futures on commodities are also often easier to trade than the commodities themselves. For example, it is much easier and more convenient to make or take delivery of a live-cattle futures contract than it is to make or take delivery of the cattle.

An important point about a futures option is that exercising it does not usually lead to delivery of the underlying asset, as in most circumstances the underlying futures contract is closed out prior to delivery. Futures options are therefore normally eventually settled in cash. This is appealing to many investors, particularly those with limited capital who may find it difficult to come up with the funds to buy the underlying asset when an option on spot is exercised. Another advantage sometimes cited for futures options is that futures and futures options are traded on the same exchange. This facilitates hedging, arbitrage, and speculation. It also tends to make the markets more efficient. A final point is that futures options entail lower transaction costs than spot options in many situations.

# 18.3 EUROPEAN SPOT AND FUTURES OPTIONS

The payoff from a European call option with strike price  $K$  on the spot price of an asset is

$$

\max  \left(S _ {T} - K, 0\right)

$$ where  $S_{T}$  is the spot price at the option's maturity. The payoff from a European call option with the same strike price on the futures price of the asset is

$$
\max  (F _ {T} - K, 0)
$$ where  $F_{T}$  is the futures price at the option's maturity. If the futures contract matures at


the same time as the option, then  $F_{T} = S_{T}$  and the two options are equivalent. Similarly, a European futures put option is worth the same as its spot put option counterpart when the futures contract matures at the same time as the option.

Most of the futures options that trade are American-style. However, as we shall see, it is useful to study European futures options because the results that are obtained can be used to value the corresponding European spot options.

# 18.4 PUT-CALL PARITY

In Chapter 11, we derived a put-call parity relationship for European stock options. We now consider a similar argument to derive a put-call parity relationship for European futures options. Consider European futures call and put options, both with strike price  $K$  and time to expiration  $T$ . We can form two portfolios:

Portfolio A: a European futures call option plus an amount of cash equal to  $Ke^{-rT}$

Portfolio B: a European futures put option plus a long futures contract plus an amount of cash equal to  $F_0 e^{-rT}$ , where  $F_0$  is the futures price

In portfolio A, the cash can be invested at the risk-free rate,  $r$ , and grows to  $K$  at time  $T$ . Let  $F_{T}$  be the futures price at maturity of the option. If  $F_{T} > K$ , the call option in portfolio A is exercised and portfolio A is worth  $F_{T}$ . If  $F_{T} \leq K$ , the call is not exercised and portfolio A is worth  $K$ . The value of portfolio A at time  $T$  is therefore

$$

\max  (F _ {T}, K)

$$

In portfolio B, the cash can be invested at the risk-free rate to grow to  $F_0$  at time  $T$ . The put option provides a payoff of  $\max(K - F_T, 0)$ . The futures contract provides a payoff of  $F_T - F_0$ . The value of portfolio B at time  $T$  is therefore

$$

F _ {0} + \left(F _ {T} - F _ {0}\right) + \max  \left(K - F _ {T}, 0\right) = \max  \left(F _ {T}, K\right)

$$

Because the two portfolios have the same value at time  $T$  and European options cannot be exercised early, it follows that they are worth the same today. The value of portfolio A today is

$$ c + K e ^ {- r T}
$$ where  $c$  is the price of the futures call option. The daily settlement process ensures that the futures contract in portfolio B is worth zero today. Portfolio B is therefore worth


$$ p + F _ {0} e ^ {- r T}
$$ where  $p$  is the price of the futures put option. Hence


$$ c + K e ^ {- r T} = p + F _ {0} e ^ {- r T} \tag {18.1}
$$

The difference between this put-call parity relationship and the one for a non-dividend-paying stock in equation (11.6) is that the stock price,  $S_0$ , is replaced by the discounted futures price,  $F_0 e^{-rT}$ .

As shown in Section 18.3, when the underlying futures contract matures at the same time as the option, European futures and spot options are the same. Equation (18.1) therefore gives a relationship between the price of a call option on the spot price, the price of a put option on the spot price, and the futures price when both options mature at the same time as the futures contract.

# Example 18.5

Suppose that the price of a European call option on a commodity for delivery in six months is 0.56 per ounce when the strike price is 8.50. Assume that the futures price for delivery in six months is currently 8.00, and the risk-free interest rate for an investment that matures in six months is 10\% per annum. From a rearrangement of equation (18.1), the price of a European put option on the spot price with the same maturity and exercise date as the call option is

$$
0. 5 6 + 8. 5 0 e ^ {- 0. 1 \times 6 / 1 2} - 8. 0 0 e ^ {- 0. 1 \times 6 / 1 2} = 1. 0 4
$$

For American futures options, the put-call relationship is (see Problem 18.21)

$$
F _ {0} e ^ {- r T} - K <   C - P <   F _ {0} - K e ^ {- r T} \tag {18.2}
$$

# 18.5 BOUNDS FOR FUTURES OPTIONS

The put-call parity relationship in equation (18.1) provides bounds for European call and put options. Because the price of a put,  $p$ , cannot be negative, it follows from equation (18.1) that

$$ c + K e ^ {- r T} \geq F _ {0} e ^ {- r T}
$$ so that


$$ c \geq \max  \left(\left(F _ {0} - K\right) e ^ {- r T}, 0\right) \tag {18.3}
$$

Similarly, because the price of a call option cannot be negative, it follows from equation (18.1) that

$$
K e ^ {- r T} \leq F _ {0} e ^ {- r T} + p
$$ so that


$$ p \geq \max  \left(\left(K - F _ {0}\right) e ^ {- r T}, 0\right) \tag {18.4}
$$

These bounds are analogous to the ones derived for European stock options in Chapter 11. The prices of European call and put options are very close to their lower bounds when the options are deep in the money. To see why this is so, we return to the put-call parity relationship in equation (18.1). When a call option is deep in the money, a put option with the same strike price is deep out of the money. This means that  $p$  is very close to zero. The difference between  $c$  and its lower bound equals  $p$ , so that the price of the call option must be very close to its lower bound. A similar argument applies to put options.

Because American futures options can be exercised at any time, we must have

$$
C \geq \max  (F _ {0} - K, 0)
$$ and


$$

P \geq \max  (K - F _ {0}, 0)

$$

Thus, assuming interest rates are positive, the lower bound for an American option price is always higher than the lower bound for the corresponding European option price. There is always some chance that an American futures option will be exercised early.


# 18.6 DRIFT OF A FUTURES PRICE IN A RISK-NEUTRAL WORLD

There is a general result that allows us to use the analysis in Section 17.3 for futures options. This result is that in a risk-neutral world a futures price behaves in the same way as a stock paying a dividend yield at the domestic risk-free interest rate  $r$ .

One clue that this might be so is given by noting that the put-call parity relationship for futures options prices is the same as that for options on a stock paying a dividend yield at rate  $q$  when the stock price is replaced by the futures price and  $q = r$  (compare equations (18.1) and (17.3)).

To prove the result formally, we calculate the drift of a futures price in a risk-neutral world. We define  $F_{t}$  as the futures price at time  $t$  and suppose the settlement dates are at times 0,  $\Delta t$ ,  $2\Delta t$ , ... If we enter into a long futures contract at time 0, its value is zero. At time  $\Delta t$ , it provides a payoff of  $F_{\Delta t} - F_{0}$ . If  $r$  is the very-short-term ( $\Delta t$ -period) interest rate at time 0, risk-neutral valuation gives the value of the contract at time 0 as

$$ e ^ {- r \Delta t} \hat {E} \left[ F _ {\Delta t} - F _ {0} \right]
$$ where  $\hat{E}$  denotes expectations in a risk-neutral world. We must therefore have


$$ e ^ {- r \Delta t} \hat {E} \left(F _ {\Delta t} - F _ {0}\right) = 0
$$ showing that


$$

\hat {E} (F _ {\Delta t}) = F _ {0}

$$

Similarly,  $\hat{E}(F_{2\Delta t}) = F_{\Delta t}$ ,  $\hat{E}(F_{3\Delta t}) = F_{2\Delta t}$ , and so on. Putting many results like this together, we see that

$$

\hat {E} (F _ {T}) = F _ {0}

$$ for any time  $T$ .

The drift of the futures price in a risk-neutral world is therefore zero. From equation (17.7), the futures price behaves like a stock providing a dividend yield  $q$  equal to  $r$ . This result is a very general one. It is true for all futures prices and does not depend on any assumptions about interest rates, volatilities, etc.

The usual assumption made for the process followed by a futures price  $F$  in the risk-neutral world is

$$ d F = \sigma F d z \tag {18.5}
$$ where  $\sigma$  is a constant.


# Differential Equation

For another way of seeing that a futures price behaves like a stock paying a dividend yield at rate  $q$ , we can derive the differential equation satisfied by a derivative dependent on a futures price in the same way as we derived the differential equation for a derivative dependent on a non-dividend-paying stock in Section 15.6. This is


$$

\frac {\partial f}{\partial t} + \frac {1}{2} \frac {\partial^ {2} f}{\partial F ^ {2}} \sigma^ {2} F ^ {2} = r f \tag {18.6}

$$

It has the same form as equation (17.6) with  $q$  set equal to  $r$ . This confirms that, for the purpose of valuing derivatives, a futures price can be treated in the same way as a stock providing a dividend yield at rate  $r$ .

# 18.7 BLACK'S MODEL FOR VALUING FUTURES OPTIONS

European futures options can be valued by extending the results we have produced. Fischer Black was the first to show this in a paper published in 1976. Assuming that the futures price follows the (lognormal) process in equation (18.5), the European call price  $c$  and the European put price  $p$  for a futures option are given by equations (17.4) and (17.5) with  $S_0$  replaced by  $F_0$  and  $q = r$ :

$$ c = e ^ {- r T} \left[ F _ {0} N \left(d _ {1}\right) - K N \left(d _ {2}\right) \right] \tag {18.7}
$$

$$ p = e ^ {- r T} \left[ K N \left(- d _ {2}\right) - F _ {0} N \left(- d _ {1}\right) \right] \tag {18.8}
$$ where


$$ d _ {1} = \frac {\ln (F _ {0} / K) + \sigma^ {2} T / 2}{\sigma \sqrt {T}}
$$

$$ d _ {2} = \frac {\ln (F _ {0} / K) - \sigma^ {2} T / 2}{\sigma \sqrt {T}} = d _ {1} - \sigma \sqrt {T}
$$ and  $\sigma$  is the volatility of the futures price. When the cost of carry and the convenience yield are functions only of time, it can be shown that the volatility of the futures price is the same as the volatility of the underlying asset.


# Example 18.6

Consider a European put futures option on a commodity. The time to the option's maturity is 4 months, the current futures price is  \$20, the exercise price is\$ 20, the risk-free interest rate is 9\% per annum, and the volatility of the futures price is 25\% per annum. In this case,  $F_0 = 20, K = 20, r = 0.09, T = 4/12, \sigma = 0.25$ , and  $\ln(F_0 / K) = 0$ , so that

$$ d _ {1} = \frac {\sigma \sqrt {T}}{2} = 0. 0 7 2 1 6
$$

$$ d _ {2} = - \frac {\sigma \sqrt {T}}{2} = - 0. 0 7 2 1 6
$$

$$
N (- d _ {1}) = 0. 4 7 1 2, \quad N (- d _ {2}) = 0. 5 2 8 8
$$
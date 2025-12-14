---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Pricing Foreign Currency Options
linter-yaml-title-alias: Pricing Foreign Currency Options
---

# Pricing Foreign Currency Options

One of the most popular option underlyings is foreign currency. The right to buy or sell a foreign currency is a widely used instrument by global corporations, institutional investors, and speculators. Yet, options on foreign currencies can be a bit more difficult to understand than options on stocks, bonds, and commodities. The reason primarily lies in the fact that every currency contract involves not one but two currencies. Options on stocks, bonds, and commodities, by contrast, do not involve more than one currency. They do, however, implicitly involve more than one asset. For example, an option to buy a stock is an option to exchange a currency for the stock. From the opposite perspective, however, it is clearly an option to exchange stock for the currency. We may speak of a share of stock as costing 50 but we could just as easily say that the cost of 1.0 is 0.02 shares of stock. That is, one could theoretically exchange 0.02 shares of stock and receive 1.0. Although the notion of exchanging stock for money is a valid economic concept and explains precisely the same idea as if we described the transaction as exchanging money for stock, it is not the form we typically use in commerce. But in the currency world, things are just a bit different.

Hence, exchanging dollars for euros is the mirror image of exchanging euros for dollars. Likewise, exchanging dollars for stock is the mirror image of exchanging stock for dollars. Because we never describe the stock transaction as the latter, we may have trouble understanding the currency transaction from that point of view.

In the world of currency trading, however, it is necessary to understand the transaction from either point of view. In particular, foreign currency option transactions have an important characteristic that sheds light on some interesting issues in option valuation. That characteristic is that a foreign currency call can be viewed as a foreign currency put from the mirror image perspective. We describe this idea as the concept of isomorphism, the notion that two things have essentially the same form. This point would also hold for calls on stocks because they can be viewed as puts on cash, but because we virtually never view a stock sale as the purchase of money paid for by tendering stock, we almost never use this concept elsewhere in financial markets.

In foreign currency transactions, we shall refer to the two currencies as the base currency and the quoted currency. The base currency is just the underlying currency. For example, a call option quoted in dollars in which the underlying is euros has the dollar as the quoted currency and the euro as the base currency.<sup>1</sup> In addition, the instruments we examine are sometimes called foreign currency options, currency options, and foreign exchange options, so be prepared for alternative nomenclature.

# 32.1 DEFINITION OF TERMS

Let us start by giving a clear definition of the terms we shall use:

$S_{0}, S_{T} =$  spot exchange rate at times 0 or  $T$ , quoted in the domestic currency, that is, units of the domestic currency or quote currency per unit of the foreign currency, or base currency

$R_0 = 1 / S_0$  and  $R_{T} = 1 / S_{T}$ , the spot exchange rate at times 0 or  $T$ , quoted in the foreign currency, that is, units of the foreign currency per unit of domestic currency, or the reciprocal of the spot exchange rate

$X =$  exercise price, sometimes called the exercise rate, expressed in the quote currency of a call option to buy one unit of the foreign currency

$T =$  expiration date

$\sigma =$  volatility of the log return on the quote currency

$r_{D} =$  domestic risk-free interest rate; note that we have often used the symbol  $r_f$ , but we do not wish to suggest that the  $f$  represents the foreign currency

$r_{F} =$  foreign risk-free interest rate; note that the subscript is capitalized

# 32.2 OPTION PAYOFFS

At this point in the book, you will be familiar with option payoff functions. Nonetheless, it will be useful to repeat them here. The payoff of the call at expiration is

$$
S _ {T} - X \qquad {\mathrm {i f}} S _ {T} \geq X
$$

$$
0 \quad \text {i f} S _ {T} <   X. \tag {32.1}
$$

Of course, we frequently wrote this compactly as  $\max(0, S_T - X)$ . We will now show that this option is isomorphic to a put option denominated in the foreign currency to sell  $X$  units of the domestic currency at an exercise price of  $1 / X$ . Let  $X_R = 1 / X$ , the reciprocal strike. We shall call this put the reciprocal put. Because the reciprocal put has an exercise price of  $1 / X$  and the underlying value at expiration is  $1 / S_T$ , which we designate as  $R_T$ , the put will exercise when  $1 / S_T < 1 / X$ . Rearranging, we have

$$
\begin{array}{l} 1 / S _ {T} \leq 1 / X \\ \Rightarrow S _ {T} \geq X. \tag {32.2} \\ \end{array}
$$

Thus, when the reciprocal put is in-the-money, the spot call is in-the-money. The out-of-the-money put condition is obviously

$$
\begin{array}{l} 1 / S _ {T} > 1 / X \\ \Rightarrow S _ {T} <   X. \tag {32.3} \\ \end{array}
$$

Thus, the reciprocal put out-of-the-money condition is the same as the call out-of-the-money condition. Thus, to summarize, we have

<table><tr><td>The condition</td><td>1/ST ≤ 1/X</td><td>1/ST &gt; 1/X</td></tr><tr><td rowspan="3">is mathematically equivalent to And, therefore, implies that Reciprocal put Call</td><td>ST ≥ X</td><td>ST &lt; X</td></tr><tr><td>In-the-money</td><td>Out-of-the-money</td></tr><tr><td>In-the-money</td><td>Out-of-the-money</td></tr></table>

Incidentally, it should also be apparent that a standard put is equivalent to a reciprocal call.

Having established that the moneyness conditions of a standard call and reciprocal put are the same, we now proceed to show that the payoffs are the same, provided we adjust the quantity of the reciprocal put and translate the payoff value into the domestic currency. The payoff of the reciprocal put option is

$$
X _ {R} - R _ {T} = (1 / X) - \left(1 / S _ {T}\right) \quad \text {i f} S _ {T} \geq X
$$

$$
0 \quad \text {i f} S _ {T} <   X. \tag {32.4}
$$

If we assume there are  $X$  put options, this payoff in aggregate is

$$
X (1 / X) - X \left(1 / S _ {T}\right) = 1 - X / S _ {T} \text {i f} S _ {T} \geq X
$$

$$
0 \quad \text {i f} S _ {T} <   X. \tag {32.5}
$$

This payoff is in units of the foreign currency. To convert to domestic currency, we multiply by  $S_T$ :

$$
S _ {T} \left(1 - X / S _ {T}\right) = S _ {T} - X \quad \text {i f} S _ {T} \geq X
$$

$$
0 \quad \text {i f} S _ {T} <   X. \tag {32.6}
$$

Thus, we see that the payoff of the  $X$  reciprocal puts is the same as that of the spot call.

So, to repeat, a spot call on a foreign currency with an exercise price of  $X$  quoted in terms of the domestic currency is equivalent to  $X$  reciprocal puts on the domestic currency with an exercise price of  $1 / X$  in terms of the foreign currency. As such, in the world of foreign currency options, every call is also a put. Now, just to remind you, this would be true for any option if we were comfortable talking in terms of calls say on a stock as being puts on money in terms of stock. But we typically do not characterize other types of options in this manner.

# 32.3 VALUATION OF THE OPTIONS

Now we demonstrate how the premiums of these two options are equivalent in the Black-Scholes-Merton model. The BSM value of the call option is

$$
c = S _ {0} e ^ {- r _ {F} \tau} N \left(d _ {1} ^ {D}\right) - X e ^ {- r _ {D} \tau} N \left(d _ {2} ^ {D}\right), \tag {32.7}
$$

where

$$
d _ {1} ^ {D} = \frac {\ln \left(\frac {S _ {0} e ^ {- r _ {F} \tau}}{X e ^ {- r _ {D} \tau}}\right) + \left(\frac {\sigma^ {2}}{2}\right) \tau}{\sigma \sqrt {\tau}}
$$

$$
d _ {2} ^ {D} = d _ {1} ^ {D} - \sigma \sqrt {\tau}. \tag {32.8}
$$

Note that we use the  $D$  superscript on the normal distribution function to indicate that this is the normal probability for the call written on the foreign currency and denominated in the domestic currency. That is, it is being viewed from the domestic standpoint.

We now provide a numerical example: Suppose the euro exchange rate is  $1.15 per euro, the exercise price is$ 1.14 per euro, the time to maturity is 0.25, the domestic US interest rate is 0.8815%, the foreign euro interest rate is 0.4%, and the volatility is 15%. First, solving for the values of  $d_1^D$  and  $d_2^D$ , we have

$$
d _ {1} ^ {D} = \frac {\ln \left(\frac {S _ {0} e ^ {- r F \tau}}{X e ^ {- r D \tau}}\right) + \left(\frac {\sigma^ {2}}{2}\right) \tau}{\sigma \sqrt {\tau}} = \frac {\ln \left(\frac {1 . 1 5 e ^ {- (0 . 0 0 4) 0 . 2 5}}{1 . 1 4 e ^ {- (0 . 0 0 8 8 1 5) 0 . 2 5}}\right) + \left(\frac {0 . 1 5 ^ {2}}{2}\right) 0 . 2 5}{0 . 1 5 \sqrt {0 . 2 5}} = 0. 1 7
$$

$$
d _ {2} ^ {D} = \frac {\ln \left(\frac {S _ {0} e ^ {- r _ {F} \tau}}{X e ^ {- r _ {D} \tau}}\right) - \left(\frac {\sigma^ {2}}{2}\right) \tau}{\sigma \sqrt {\tau}} = \frac {\ln \left(\frac {1 . 1 5 e ^ {- (0 . 0 0 4) 0 . 2 5}}{1 . 1 4 e ^ {- (0 . 0 0 8 8 1 5) 0 . 2 5}}\right) - \left(\frac {0 . 1 5 ^ {2}}{2}\right) 0 . 2 5}{0 . 1 5 \sqrt {0 . 2 5}} = 0. 0 9 5.
$$

Based on Table 5.1: Standard Normal Cumulative Distribution Function Table, we have

$$
\begin{array}{l} c = S _ {0} e ^ {- r _ {F} \tau} N \left(d _ {1} ^ {D}\right) - X e ^ {- r _ {D} \tau} N \left(d _ {2} ^ {D}\right) \\ = 1. 1 5 e ^ {- (0. 0 0 4) 0. 2 5} (0. 5 6 7 4 9 5) - 1. 1 4 e ^ {- (0. 0 0 8 8 1 5) 0. 2 5} (0. 5 3 7 8 4 3) = 0. 0 4 0 2. \\ \end{array}
$$

As we stated, this call is equivalent to  $X$  puts written on the domestic currency denominated in the foreign currency with a strike of  $X_{R} = 1 / X$ . We now validate that this result is upheld in the BSM model.

From the foreign investor's perspective, the value of a single unit of the reciprocal put is

$$
p _ {R} = X _ {R} e ^ {- r _ {F} \tau} \left[ 1 - N \left(d _ {2} ^ {F}\right) \right] - R _ {0} e ^ {- r _ {D} \tau} \left[ 1 - N \left(d _ {1} ^ {F}\right) \right], \tag {32.9}
$$

where  $p_R$  is denominated in the foreign currency and

$$
d _ {1} ^ {F} = \frac {\ln \left(\frac {R _ {0} e ^ {- r _ {D} \tau}}{X _ {R} e ^ {- r _ {F} \tau}}\right) + \left(\frac {\sigma^ {2}}{2}\right) \tau}{\sigma \sqrt {\tau}}
$$

$$
d _ {2} ^ {F} = \frac {\ln \left(\frac {R _ {0} e ^ {- r _ {D} \tau}}{X _ {R} e ^ {- r _ {F} \tau}}\right) - \left(\frac {\sigma^ {2}}{2}\right) \tau}{\sigma \sqrt {\tau}}. \tag {32.10}
$$

Before reconciling this put formula to the prior call formula, we circle back to our example. Recall the euro exchange rate is  $1.15 per euro, or$ 0.869565 per dollar, the

exercise price is  $1.14 per euro, or$ 0.877193 per dollar, the time to maturity is 0.25, the domestic euro interest rate is 0.4%, the foreign US interest rate is 0.8815%, and the volatility is 15%. Again, solving for the value of  $d_1^F$  and  $d_2^F$ , we have

$$
\begin{array}{l} d _ {1} ^ {F} = \frac {\ln \left(\frac {R _ {0} e ^ {- r _ {D} \tau}}{X _ {R} e ^ {- r _ {F} \tau}}\right) + \left(\frac {\sigma^ {2}}{2}\right) \tau}{\sigma \sqrt {\tau}} = \frac {\ln \left(\frac {0 . 8 6 9 5 6 5 e ^ {- (0 . 0 0 4) 0 . 2 5}}{0 . 8 7 7 1 9 3 e ^ {- (0 . 0 0 8 8 1 5) 0 . 2 5}}\right) + \left(\frac {0 . 1 5 ^ {2}}{2}\right) 0 . 2 5}{0 . 1 5 \sqrt {0 . 2 5}} = - 0. 0 9 5 \\ d _ {2} ^ {F} = \frac {\ln \left(\frac {R _ {0} e ^ {- r _ {D} \tau}}{X _ {R} e ^ {- r _ {F} \tau}}\right) - \left(\frac {\sigma^ {2}}{2}\right) \tau}{\sigma \sqrt {\tau}} = \frac {\ln \left(\frac {0 . 8 6 9 5 6 5 e ^ {- (0 . 0 0 4) 0 . 2 5}}{0 . 8 7 7 1 9 3 e ^ {- (0 . 0 0 8 8 1 5) 0 . 2 5}}\right) - \left(\frac {0 . 1 5 ^ {2}}{2}\right) 0 . 2 5}{0 . 1 5 \sqrt {0 . 2 5}} = - 0. 1 7. \\ \end{array}
$$

Note how these are related to their corresponding call terms, a point we return to later. Again based on Table 5.1 we have<sup>3</sup>

$$
\begin{array}{l} p _ {R} = X _ {R} e ^ {- r _ {F} \tau} \left[ 1 - N \left(d _ {2} ^ {F}\right) \right] - R _ {0} e ^ {- r _ {D} \tau} \left[ 1 - N \left(d _ {1} ^ {F}\right) \right] \\ = 0. 8 7 7 1 9 3 e ^ {- (0. 0 0 4) 0. 2 5} (1 - 0. 4 3 2 5 0 5) - 0. 8 6 9 5 6 5 e ^ {- (0 / 0 0 8 8 1 5) 0. 2 5} (1 - 0. 4 6 2 1 5 7) \\ = 0. 0 3 0 6. \\ \end{array}
$$

Clearly, this put value of €0.0306 is not equal to the call value of $0.0402, even after adjusting for the exchange rate.

Now let us examine why this is still the correct put formula at the core. In words, the BSM formula for the value of a put is the strike times the present value factor for the investor's currency times  $1 - N(d_2^F)$  minus the underlying price in the investor's currency times the present value factor for the yield on the currency, times  $1 - N(d_2^F)$ . Thus, in the previous formula for  $p$ , the strike is properly designated as  $X_R = 1 / X$ . The strike is then multiplied by the present value factor for the investor's currency. Because this put is being valued from the foreign investor's perspective, it is appropriate to discount the strike at the foreign rate. Then we use the normal probability based on  $-d_2^F$ , with the  $F$  superscript to distinguish it from  $d_2^D$  in the call. From the product of these three terms, we subtract the exchange rate in foreign currency,  $R_0 = 1 / S_0$ , times the present value factor for the opposite currency. From the foreign investor's perspective, this rate is  $r_D$ . Then this product is multiplied by one minus the normal probability for  $d_1^F$ .

Now let us work with  $d_1^F$  and  $d_2^F$ . First, note the following:

$$
\begin{array}{l} \ln \left(\frac {R _ {0} e ^ {- r _ {D} \tau}}{X _ {R} e ^ {- r _ {F} \tau}}\right) = \ln \left(\frac {\frac {1}{S _ {0}} e ^ {- r _ {D} \tau}}{\frac {1}{X} e ^ {- r _ {F} \tau}}\right) \\ = \ln 1 - \ln S _ {0} - r _ {D} \tau - \ln 1 + \ln X + r _ {F} \tau \\ = - \ln S _ {0} - r _ {D} \tau + \ln X + r _ {F} \tau \\ = - \ln \left(\frac {S e ^ {- r _ {F} \tau}}{X e ^ {- r _ {D} \tau}}\right). \tag {32.11} \\ \end{array}
$$

Thus,

$$
d _ {1} ^ {F} = \frac {- \ln \left(\frac {S _ {0} e ^ {- r _ {F} \tau}}{X e ^ {- r _ {D} \tau}}\right) + \left(\frac {\sigma^ {2}}{2}\right) \tau}{\sigma \sqrt {\tau}} = - \left(\frac {\ln \left(\frac {S _ {0} e ^ {- r _ {F} \tau}}{X e ^ {- r _ {D} \tau}}\right) - \left(\frac {\sigma^ {2}}{2}\right) \tau}{\sigma \sqrt {\tau}}\right) = - d _ {2} ^ {D}
$$

$$
d _ {2} ^ {F} = \frac {- \ln \left(\frac {S _ {0} e ^ {- r _ {F} \tau}}{X e ^ {- r _ {D} \tau}}\right) - \left(\frac {\sigma^ {2}}{2}\right) \tau}{\sigma \sqrt {\tau}} = - \left(\frac {\ln \left(\frac {S _ {0} e ^ {- r _ {F} \tau}}{X e ^ {- r _ {D} \tau}}\right) + \left(\frac {\sigma^ {2}}{2}\right) \tau}{\sigma \sqrt {\tau}}\right) = - d _ {1} ^ {D}. (3 2. 1 2)
$$

We saw this in the numerical calculations already. Therefore,

$$
N \big (- d _ {1} ^ {F} \big) = N \big (d _ {2} ^ {D} \big)
$$

$$
N \left(- d _ {2} ^ {F}\right) = N \left(d _ {1} ^ {D}\right). \tag {32.13}
$$

Our put formula will, thus, be

$$
\begin{array}{l} p _ {R} = X _ {R} e ^ {- r _ {F} \tau} N \bigl (- d _ {2} ^ {F} \bigr) - R _ {0} e ^ {- r _ {D} \tau} N \bigl (- d _ {1} ^ {F} \bigr) \\ = X _ {R} e ^ {- r _ {F} \tau} N \big (d _ {1} ^ {D} \big) - R _ {0} e ^ {- r _ {D} \tau} N \big (d _ {2} ^ {D} \big) \\ = \left(\frac {1}{X}\right) e ^ {- r _ {F} \tau} N \left(d _ {1} ^ {D}\right) - \left(\frac {1}{S _ {0}}\right) e ^ {- r _ {D} \tau} N \left(d _ {2} ^ {D}\right). \tag {32.14} \\ \end{array}
$$

Recall that the isomorphic put is actually  $X$  puts, so the aggregate put premium is

$$
X p _ {R} = X \bigg (\frac {1}{X} \bigg) e ^ {- r _ {F} \tau} N \big (d _ {1} ^ {D} \big) - X \bigg (\frac {1}{S _ {0}} \bigg) e ^ {- r _ {D} \tau} N \big (d _ {2} ^ {D} \big)
$$

$$
X p _ {R} = e ^ {- r _ {F} \tau} N \left(d _ {1} ^ {D}\right) - \left(\frac {X}{S _ {0}}\right) e ^ {- r _ {D} \tau} N \left(d _ {2} ^ {D}\right) (\text {i n u n i t s o f t h e f o r e i g n c u r r e n c y}). \tag {32.15}
$$

This value is in units of the foreign currency. To convert to the domestic currency, we simply multiply by  $S_0$ .

$$
X p _ {D} = S _ {0} e ^ {- r _ {F} \tau} N \left(d _ {1} ^ {D}\right) - X e ^ {- r _ {D} \tau} N \left(d _ {2} ^ {D}\right) (\text {i n u n i t s o f t h e d o m e s t i c c u r r e n c y}). \tag {32.16}
$$

This is the same as the right-hand side of the call formula.

Once again, we illustrate the correspondence between models with our numerical example. Recall

$$
\begin{array}{l} c = S _ {0} e ^ {- r _ {F} T} N \big (d _ {1} ^ {D} \big) - X e ^ {- r _ {D} T} N \big (d _ {2} ^ {D} \big) \\ = 1. 1 5 e ^ {- (0. 0 0 4) 0. 2 5} (0. 5 6 7 4 9 5) - 1. 1 4 e ^ {- (0. 0 0 8 8 1 5) 0. 2 5} (0. 5 3 7 8 4 3) = \$ 0. 0 4 0 2 \\ \end{array}
$$

and

$$
\begin{array}{l} p _ {R} = X _ {R} e ^ {- r _ {F} T} \left[ 1 - N \left(d _ {2} ^ {F}\right) \right] - R _ {0} e ^ {- r _ {D} T} \left[ 1 - N \left(d _ {1} ^ {F}\right) \right] \\ = 0. 8 7 7 1 9 3 e ^ {- (0. 0 0 4) 0. 2 5} (1 - 0. 4 3 2 5 0 5) - 0. 8 6 9 5 6 5 e ^ {- (0. 0 0 8 8 1 5) 0. 2 5} (1 - 0. 4 6 2 1 5 7) \\ = 0. 0 3 0 6 \epsilon . \\ \end{array}
$$

Assuming we purchase  $X = 1.14$  puts and then convert to USD, we note that  $S_0Xp = (\$ 1.15 / \epsilon)(1.14)\epsilon 0.0306 = \$ 0.0402$ . This numerical example highlights the two different ways to express currency options.

# 32.4 PROBABILITY OF EXERCISE

It is well known that the risk-neutral probability of exercise of the spot call option is  $N(d_2^D)$  and correspondingly the risk-neutral probability of exercise of the spot put option is  $N(-d_2^D)$ . For spot calls, this is the risk-neutral probability that  $S_T > X$ . The corresponding probability for exercise of the reciprocal put is the probability that  $1 / S_T < 1 / X$ , which must be the same as the probability that  $S_T > X$ . Thus,  $N(d_2^D)$  is the risk-neutral probability of exercise of the call, and this equals  $N(-d_1^F)$ , which is the probability of exercising the reciprocal put. Note that the probability of exercising the reciprocal put is not the term in the BSM put formula that is multiplied by the present value of  $1 / X$ , or  $N(-d_2^F)$ . There is an important reason for that, which will become clearer when we examine the actual, as opposed to risk-neutral, probability of exercise.

Let the true stochastic process for  $S$  be given as

$$
\frac {d S _ {t}}{S _ {t}} = \alpha d t + \sigma d W _ {t}. \tag {32.17}
$$

Here  $\alpha$  and  $\sigma$  are the expected return and volatility of  $dS_{t} / S_{t}$ . It is important to remember that the stochastic process for the log return is

$$
d \ln S _ {t} = \mu d t + \sigma d W _ {t}, \tag {32.18}
$$

with the log expected return given as

$$
\mu = \alpha - \sigma^ {2} / 2, \tag {32.19}
$$

which holds by definition for normal distributions.

Now we need the stochastic process of the reciprocal exchange rate. We will apply Ito's lemma for the reciprocal exchange rate,  $R_{t} = 1 / S_{t}$ . Thus, we will need certain partial derivatives:

$$
\frac {\partial R _ {t}}{\partial S _ {t}} = - \frac {1}{S _ {t} ^ {2}}
$$

$$
\frac {\partial^ {2} R _ {t}}{\partial S _ {t} ^ {2}} = \frac {2}{S _ {t} ^ {3}}
$$

$$
\frac {\partial R _ {t}}{\partial t} = 0. \tag {32.20}
$$

Now, applying Itô's lemma to  $R_{t}$

$$
d R _ {t} = \frac {\partial R _ {t}}{\partial S _ {t}} d S _ {t} + \frac {\partial R _ {t}}{\partial t} d t + \frac {1}{2} \frac {\partial^ {2} R _ {t}}{\partial S _ {t} ^ {2}} d S _ {t} ^ {2}. \tag {32.21}
$$

Substituting Equations (32.17) and (32.20), and using the fact that  $dS_{t}^{2} = S_{t}^{2}\sigma^{2}dt$ , we obtain

$$
\begin{array}{l} d R _ {t} = \left(\frac {1}{S _ {t}}\right) (- \alpha d t - \sigma d W + \sigma^ {2} d t) \\ = \left(\frac {1}{S _ {t}}\right) \left[ (- \alpha + \sigma^ {2}) d t - \sigma d W \right]. \tag {32.22} \\ \end{array}
$$

Dividing by  $R_{t}$  and multiplying by  $S_{t}$ , we obtain

$$
\frac {d R _ {t}}{R _ {t}} = \left(- \alpha + \sigma^ {2}\right) d t - \sigma d W _ {t}. \tag {32.23}
$$

Thus, the expected return on the reciprocal exchange rate is  $-\alpha + \sigma^2$ . Note, however, the minus term on the volatility, which contributes to the reason why the probability of exercise of the put is not given by the  $N(-d_2)$  term in its formula, as it usually is in the BSM model.4

The log return on  $R_{t}$  is

$$
- \alpha + \sigma^ {2} - \sigma^ {2} / 2 = - \alpha + \sigma^ {2} / 2. \tag {32.24}
$$

Substituting for  $\alpha$ , this can then be expressed as

$$
- \alpha + \sigma^ {2} / 2 = - (\mu - \sigma^ {2} / 2) + \sigma^ {2} / 2 = - \mu . \tag {32.25}
$$

This is the term that must be inserted into the formula for the normal probability. It is the expected log return on  $R_{t}$  expressed in terms of the log return on  $S_{t}$ . Making the substitution into  $-d_1^F$ , and using a* to denote that we are dealing with the true probability distribution, not the risk-neutral distribution, we have

$$
\begin{array}{l} N \Big (- d _ {1} ^ {F ^ {*}} \Big) = N \left[ - \frac {\ln \big (R _ {0} / X _ {R} \big) + (- \mu + \sigma^ {2} / 2) \tau}{\sigma \sqrt {\tau}} \right] = N \left[ - \frac {\ln \big (X / S _ {0} \big) + (- \mu + \sigma^ {2} / 2) \tau}{\sigma \sqrt {\tau}} \right] \\ = N \left[ \frac {- \ln \left(X / S _ {0}\right) + (\mu - \sigma^ {2} / 2) \tau}{\sigma \sqrt {\tau}} \right] = N \left[ \frac {\ln \left(S _ {0} / X\right) + (\mu - \sigma^ {2} / 2) \tau}{\sigma \sqrt {\tau}} \right]. \tag {32.26} \\ \end{array}
$$

This is, of course,  $N\left(d_2^{D^*}\right)$  because

$$
d _ {2} ^ {D ^ {*}} = \frac {\ln \left(S _ {0} / X\right) + \left(\mu - \sigma^ {2} / 2\right) \tau}{\sigma \sqrt {\tau}}. \tag {32.27}
$$

Thus, we see  $N\big(d_2^{D^*}\big)$  is the risk-neutral probability of exercise of the call, and this equals  $N\big(-d_1^{F^*}\big)$ , which is the probability of exercising the reciprocal put.

# 32.5 SOME TERMINOLOGY CONFUSION

Some foreign currency option traders do not like the terminology put and call. They see every option as being both a put and a call. Hence, it is common in foreign currency option transactions to use slightly different terminology than in other types of options. Foreign currency options, thus, are often written with two values referred to as the call currency amount and the put currency amount. As with any option, the holder of the option makes the exercise decision. If they choose to exercise, they tender the put currency amount and receive the call currency amount.<sup>6</sup> As an example, suppose an option written on the pound designates the call currency amount as £10,000,000 and the put currency amount as $15,000,000. At expiration, if the exchange rate is higher than $1.50, the holder of the option tenders (puts) $15,000,000 to the writer and claims (calls) £10,000,000. With the exchange rate higher than $1.50, the option holder can exchange the £10,000,000 and receive more than $15,000,000.

In addition, there is a further matter in the world of currencies that causes some confusion. It involves the use of ratios in expressing exchange rates. It can be quite confusing.

Consider an ordinary ratio, say  $3/8$ . In elementary math, this ratio is easily interpreted. We mentally consider an object divided into eighths in which we reference three of those eighths. For example, we might bake a cake and cut it into eight pieces. Suppose we have three guests and we give each a piece. We have just used up three-eighths of the cake. Ratios can be easily multiplied. For example,  $(2/3)(1/5) = 2/15$ . When we express the price of milk, we frequently say something like  $3.00 a gallon. This can be written as$ 3/gal. where the / is interpreted as per. We say that $3 is the price per gallon of milk. These certainly seem like simple concepts.

In the currency world, we can do a similar operation. We can indicate the ratio USD/EUR. In conformance with the notion that this is a ratio, / is interpreted as per and we read that ratio as "the number of dollars per euro." Thus, if USD/EUR = $1.30, we say that one euro costs $1.30.

As it turns out, however, the currency world does just the opposite. The notation USD/EUR means "the number of euros per US dollar." The first term (before the slash) is the base currency and the second term (after the slash) is the quote currency. The multiplication works just the same and is just as valid. For example, using the dollar (USD), euro (EUR), and Japanese yen (JPY), we have  $(\text{USD}/\text{EUR}) * (\text{EUR}/\text{JPY}) = \text{USD}/\text{JPY}$ . This is read as euros per dollar times yen per euro equals yen per dollar, which is USD/JPY in the industry's notation. This notational form is standard practice but does appear reversed. If it were not, we could write the price of milk as gal./$3, which we would never do. Thus, you should be aware of this format.

So, in short, if the euro costs $1.30, it would be written as EUR/USD = 1.30.

# 32.6 RECAP

In this final chapter of the book, we look at foreign currency puts and calls. They are viewed somewhat differently from standard underlyings in that a call on one currency can be viewed from the perspective of a put on the other currency. We showed that pricing options on foreign currency is, however, fairly easy to implement using the Black-Scholes-Merton model.

This chapter completes the book. We have laid the foundations of the theory of derivative pricing within the framework of the much broader discipline of quantitative finance. With the caveat that no theory ever works perfectly in practice, you can now proceed to study further and begin applying what you know to gain a better understanding of how options are used directly and how they apply indirectly to a variety of problems in finance. In addition, you are well positioned for further study of other derivatives, such as forwards, futures, and swaps.

# QUESTIONS AND PROBLEMS

1 In your own words, define what is meant by isomorphism within the context of foreign exchange options.  
2 Prove that a call option on a foreign currency with an exercise price of  $X$  quoted in terms of the domestic currency is equivalent to  $X$  puts on the local currency with an exercise price of  $1 / X$  in terms of the foreign currency.  
3 Demonstrate that  $d_1^F = -d_2^D$  and  $d_2^F = -d_1^D$ , where

$$
d _ {1} ^ {D} = \frac {\ln \left(\frac {S _ {0} e ^ {- r _ {F} \tau}}{X e ^ {- r _ {D} \tau}}\right) + \left(\frac {\sigma^ {2}}{2}\right) \tau}{\sigma \sqrt {\tau}}
$$

$$
d _ {2} ^ {D} = \frac {\ln \left(\frac {S _ {0} e ^ {- r _ {F} \tau}}{X e ^ {- r _ {D} \tau}}\right) - \left(\frac {\sigma^ {2}}{2}\right) \tau}{\sigma \sqrt {\tau}}
$$

and

$$
d _ {1} ^ {F} = \frac {\ln \left(\frac {R _ {0} e ^ {- r _ {D} \tau}}{X _ {R} e ^ {- r _ {F} \tau}}\right) + \left(\frac {\sigma^ {2}}{2}\right) \tau}{\sigma \sqrt {\tau}}
$$

$$
d _ {2} ^ {F} = \frac {\ln \left(\frac {R _ {0} e ^ {- r _ {D} \tau}}{X _ {R} e ^ {- r _ {F} \tau}}\right) - \left(\frac {\sigma^ {2}}{2}\right) \tau}{\sigma \sqrt {\tau}}.
$$

4 The risk-neutral probability of exercise of the call option is  $N\left(d_2^D\right)$ . Demonstrate that  $N\left(d_2^D\right) = N\left(-d_1^F\right)$ .

5 The actual probability of exercising a foreign exchange put option is not  $N\left(-d_2^F\right)$ . Explain.

Suppose the Australian dollar exchange rate is  $0.72 per AUD, the exercise price is$ 0.75 per AUD, the time to maturity is 1.0, the domestic U.S. interest rate is 1.05%, the foreign AUD interest rate is 2.97%, and the volatility is 20%.

a. Calculate the value of a foreign exchange call option (US $ per AUD) based on the Black-Scholes-Merton model from a US-based investor perspective.  
b. Calculate the value of a foreign exchange put option (AUD per US $) based on the Black-Scholes-Merton model from an Australian-based investor perspective.  
c. Demonstrate how to reconcile these two results.

# NOTES

1. The primary works that uncovered the unique characteristics of currency options and the application of many of the standard principles of option pricing to currency options are Grabbe (1983) and Garman and Kohlhagen (1983).  
2. Keep in mind that the reference to an interest rate being  $D$  for domestic or  $F$  for foreign must maintain consistency. Even though we are viewing this transaction from the foreign investor's point of view, the rate denoted  $F$  is their rate and  $D$  is the foreign rate from their point of view.  
3. Remember that the final answer is sensitive to the degree of rounding. The answer reported here assumes no rounding.  
4. The probability in the BSM formula is based on a stochastic process in which the noise term,  $\sigma dW_{t}$ , is added, not subtracted.  
5. This result is easy to see in the risk-neutral context. The risk-free rate term in the numerator of  $d_{1}^{D}$  is  $r_{D} - r_{F}$  where under risk neutrality,  $r_{D}$  is the risk-neutralized expected return on the domestic currency and  $r_{F}$  is the risk-neutralized expected return on the foreign currency. From the foreign investor's point of view, this corresponding term would be  $r_{F} - r_{D}$ , which is  $-(r_{D} - r_{F})$ . That is, the expected return is converted to its negative value.  

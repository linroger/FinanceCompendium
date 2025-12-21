---
title: 17 Options Indices Currencies
parent_directory: Options, Futures, and Other Derivatives
formatted: 2025-12-20 19:30:00 PM
formatter_model: kimi-k2-turbo
cli-tool: opencode
primary_tags:
  - index options pricing
  - currency options valuation
  - portfolio insurance
secondary_tags:
  - range forward contracts
  - dividend yield adjustment
  - binomial trees
  - put-call parity
cssclasses: academia
---

# 17 Options Indices Currencies

Several exchanges trade options on stock indices. Some of the indices track the movement of the market as a whole. Others are based on the performance of a particular sector (e.g., computer technology, oil and gas, transportation, or telecoms). Among the index options traded on the Chicago Board Options Exchange (CBOE) are American and European options on the S&P 100 (OEX and XEO), European options on the S&P 500 (SPX), European options on the Dow Jones Industrial Average (DJX), and European options on the Nasdaq 100 (NDX). In Chapter 10, we explained that the CBOE trades LEAPS and flex options on individual stocks. It also offers these option products on indices.

One index option contract is usually on 100 times the index. (Note that the Dow Jones index used for index options is 0.01 times the usually quoted Dow Jones index.) Index options are settled in cash. This means that, on exercise of the option, the holder of a call option contract receives  $(S - K) \times 100$  in cash and the writer of the option pays this amount in cash, where  $S$  is the value of the index at the close of trading on the day of the exercise and  $K$  is the strike price. Similarly, the holder of a put option contract receives  $(K - S) \times 100$  in cash and the writer of the option pays this amount in cash.

## Portfolio Insurance

Portfolio managers can use options on a well-diversified index to limit their downside risk. Suppose that the value of the index today is  $S_0$ . Consider a manager in charge of a well-diversified portfolio whose beta is 1.0. A beta of 1.0 implies that the returns from the portfolio mirror those from the index. Assuming the dividend yield from the portfolio is the same as the dividend yield from the index, the percentage changes in the value of the portfolio can be expected to be approximately the same as the percentage changes in the value of the index. Since each contract is on 100 times the index, it follows that the value of the portfolio is protected against the possibility of the index falling below  $K$  if, for each  $100S_0$  dollars in the portfolio, the manager buys one put option contract with strike price  $K$ . Suppose that the manager's portfolio is worth  $\500,000$  and the value of the index is currently 1,000. The portfolio is worth 500 times the index. The manager can obtain insurance against the value of the portfolio dropping below  $\$ 450,000  in the next three months by buying five three-month put option contracts on the index with a strike price of 900.

To illustrate how the insurance works, consider the situation where the index drops to 880 in three months. The portfolio will be worth about \$440,000. The payoff from the options will be 5 × (900 - 880) × 100 = \$10,000, bringing the total value of the portfolio up to the insured value of 450,000.

## When the Portfolio's Beta Is Not 1.0

If the portfolio's beta  $(\beta)$  is not  $1.0, \beta$  put options must be purchased for each  $100S_{0}$  dollars in the portfolio, where  $S_{0}$  is the current value of the index. Suppose that the 500,000 portfolio just considered has a beta of 2.0 instead of 1.0. We continue to assume that the index is 1,000. The number of put options required is

$$
2.0 \times \frac {500,000}{1,000 \times 100} = 10
$$ rather than 5 as before.


To calculate the appropriate strike price, the capital asset pricing model can be used (see the appendix to Chapter 3). Suppose that the risk free rate is  $12\%$ , the dividend yield on both the index and the portfolio is  $4\%$ , and protection is required against the value of the portfolio dropping below  $\$450,000$  in the next three months. Under the

Table 17.1 Calculation of expected value of portfolio when the index is 1,040 in three months and  $\beta = 2.0$ .

<table><tr><td>Value of index in three months:</td><td>1,040</td></tr><tr><td>Return from change in index:</td><td>40/1,000, or 4\% per three months</td></tr><tr><td>Dividends from index:</td><td>0.25 × 4 = 1\% per three months</td></tr><tr><td>Total return from index:</td><td>4 + 1 = 5\% per three months</td></tr><tr><td>Risk-free interest rate:</td><td>0.25 × 12 = 3\% per three months</td></tr><tr><td>Excess return from index over risk-free interest rate:</td><td>5 - 3 = 2\% per three months</td></tr><tr><td>Expected excess return from portfolio
over risk-free interest rate:</td><td>2 × 2 = 4\% per three months</td></tr><tr><td>Expected return from portfolio:</td><td>3 + 4 = 7\% per three months</td></tr><tr><td>Dividends from portfolio:</td><td>0.25 × 4 = 1\% per three months</td></tr><tr><td>Expected increase in value of portfolio:</td><td>7 - 1 = 6\% per three months</td></tr><tr><td>Expected value of portfolio:</td><td>$500,000 × 1.06 = $530,000</td></tr></table>

Table 17.2 Relationship between value of index and value of portfolio for  $\beta = 2.0$

<table><tr><td>Value of index in three months</td><td>Value of portfolio in three months ($)</td></tr><tr><td>1,080</td><td>570,000</td></tr><tr><td>1,040</td><td>530,000</td></tr><tr><td>1,000</td><td>490,000</td></tr><tr><td>960</td><td>450,000</td></tr><tr><td>920</td><td>410,000</td></tr><tr><td>880</td><td>370,000</td></tr></table> capital asset pricing model, the expected excess return of a portfolio over the risk-free rate is assumed to equal beta times the excess return of the index portfolio over the risk-free rate. The model enables the expected value of the portfolio to be calculated for different values of the index at the end of three months. Table 17.1 shows the calculations for the case where the index is 1,040. In this case, the expected value of the portfolio at the end of the three months is  \$530,000. Similar calculations can be carried out for other values of the index at the end of the three months. The results are shown in Table 17.2. The strike price for the options that are purchased should be the index level corresponding to the protection level required on the portfolio. In this case, the protection level is\$ 450,000 and so the correct strike price for the 10 put option contracts that are purchased is 960. $^{1}$


To illustrate how the insurance works, consider what happens if the value of the index falls to 880. As shown in Table 17.2, the value of the portfolio is then about \$370,000. The put options pay off (960 - 880) × 10 × 100 = \$80,000, and this is exactly what is necessary to move the total value of the portfolio manager's position up from \$370,000 to the required level of \$450,000.

The examples in this section show that there are two reasons why the cost of hedging increases as the beta of a portfolio increases. More put options are required and they have a higher strike price.

## 17.2 CURRENCY OPTIONS

Currency options are primarily traded in the over-the-counter market. The advantage of this market is that large trades are possible, with strike prices, expiration dates, and other features tailored to meet the needs of corporate treasurers. Although currency options do trade on NASDAQ OMX in the United States, the exchange-traded market for these options is much smaller than the over-the-counter market.

An example of a European call option is a contract that gives the holder the right to buy one million euros with U.S. dollars at an exchange rate of 1.1000 U.S. dollars per euro. If the actual exchange rate at the maturity of the option is 1.1500, the payoff is

1,000,000 \times (1.1500 - 1.1000) = \50,000. Similarly, an example of a European put option is a contract that gives the holder the right to sell ten million Australian dollars for U.S. dollars at an exchange rate of 0.7000 U.S. dollars per Australian dollar. If the actual exchange rate at the maturity of the option is 0.6700, the payoff is 10,000,000 \times (0.7000 - 0.6700) = \300,000.

For a corporation wishing to hedge a foreign exchange exposure, foreign currency options are an alternative to forward contracts. A U.S. company due to receive sterling at a known time in the future can hedge its risk by buying put options on sterling that mature at that time. The hedging strategy guarantees that the exchange rate applicable to the sterling will not be less than the strike price, while allowing the company to benefit from any favorable exchange-rate movements. Similarly, a U.S. company due to pay sterling at a known time in the future can hedge by buying calls on sterling that mature at that time. This hedging strategy guarantees that the cost of the sterling will not be greater than a certain amount while allowing the company to benefit from favorable exchange-rate movements. Whereas a forward contract locks in the exchange rate for a future transaction, an option provides a type of insurance. This is not free. It costs nothing to enter into a forward transaction, but options require a premium to be paid up front.

## Range Forwards

A range forward contract is a variation on a standard forward contract for hedging foreign exchange risk. Consider a U.S. company that knows it will receive one million pounds sterling in three months. Suppose that the three-month forward exchange rate is 1.3200 dollars per pound. The company could lock in this exchange rate for the dollars it receives by entering into a short forward contract to sell one million pounds sterling in three months. This would ensure that the amount received for the one million pounds is 1,320,000.

An alternative is to buy a European put option with a strike price of  $K_{1}$  and sell a European call option with a strike price  $K_{2}$ , where  $K_{1} < 1.3200 < K_{2}$ . This is known as a short position in a range forward contract. The payoff is shown in Figure 17.1a. Both options are on one million pounds. If the exchange rate in three months proves to be less than  $K_{1}$ , the put option is exercised and as a result the company is able to sell the

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/0753dfd8cfee309d2519c5b49d668eae55d4579baa1ce251fc520215c95dcfaf.jpg)
Figure 17.1 Payoffs from (a) short and (b) long position in a range forward contract.
(a)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/02518a2130c00d40e7ef3076b557bea1b526a2796f22a096c7344fa6bbafbf34.jpg)
(b) one million pounds at an exchange rate of  $K_{1}$ . If the exchange rate is between  $K_{1}$  and  $K_{2}$ , neither option is exercised and the company gets the current exchange rate for the one million pounds. If the exchange rate is greater than  $K_{2}$ , the call option is exercised against the company and the one million pounds is sold at an exchange rate of  $K_{2}$ . The exchange rate realized for the one million pounds is shown in Figure 17.2.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/e4a3c432-f970-46aa-92e4-7e5c2a06d8f6/ac77e98ba0704ae2f0355581e25de4d443c3c4bcb72b3a5ccff83c79656265d9.jpg)
Figure 17.2 Exchange rate realized when a range forward contract is used to hedge either a future foreign currency inflow or a future foreign currency outflow.


If the company knew it was due to pay rather than receive one million pounds in three months, it could sell a European put option with strike price  $K_{1}$  and buy a European call option with strike price  $K_{2}$ . This is a long position in a range forward contract and the payoff is shown in Figure 17.1b. If the exchange rate in three months proves to be less than  $K_{1}$ , the put option is exercised against the company and as a result the company buys the one million pounds it needs at an exchange rate of  $K_{1}$ . If the exchange rate is between  $K_{1}$  and  $K_{2}$ , neither option is exercised and the company buys the one million pounds at the current exchange rate. If the exchange rate is greater than  $K_{2}$ , the call option is exercised and the company is able to buy the one million pounds at an exchange rate of  $K_{2}$ . The exchange rate paid for the one million pounds is the same as that received for the one million pounds in the earlier example and is shown in Figure 17.2.

In practice, a range forward contract is set up so that the price of the put option equals the price of the call option. This means that it costs nothing to set up the range forward contract, just as it costs nothing to set up a regular forward contract. Suppose that the U.S. and British interest rates are both  $2\%$ , so that the spot exchange rate is 1.3200 (the same as the forward exchange rate). Suppose further that the exchange rate volatility is  $14\%$ . We can use DerivaGem to show that a European put with strike price 1.3000 to sell one pound has the same price as a European call option with a strike price of 1.3414 to buy one pound. (Both are worth 0.0273.) Setting  $K_{1} = 1.3000$  and  $K_{2} = 1.3414$  therefore leads to a contract with zero cost in our example.

As the strike prices of the call and put options in a range forward contract are moved together, the range forward contract becomes a regular forward contract. The (short) range forward contract in Figure 17.1a becomes a short forward contract and the (long) range forward contract in Figure 17.1b becomes a long forward contract.

## 17.3 OPTIONS ON STOCKS PAYING KNOWN DIVIDEND YIELDS

In this section we produce a simple rule that enables valuation results for European options on a non-dividend-paying stock to be extended so that they apply to European options on a stock paying a known dividend yield. Later we show how this enables us to value options on stock indices and currencies.

Suppose that the dividend yield per year (measured with continuous compounding) is  $q$ . Dividends cause stock prices to reduce on the ex-dividend date by the amount of the dividend payment. The payment of a dividend yield at rate  $q$  therefore causes the growth rate in the stock price to be less than it would otherwise be by an amount  $q$ . If, with a dividend yield of  $q$ , the stock price grows from  $S_0$  today to  $S_T$  at time  $T$ , then in the absence of dividends it would grow from  $S_0$  today to  $S_T e^{qT}$  at time  $T$ . Alternatively, in the absence of dividends it would grow from  $S_0 e^{-qT}$  today to  $S_T$  at time  $T$ .

This argument shows that we get the same probability distribution for the stock price at time  $T$  in each of the following two cases:

1. The stock starts at price  $S_0$  and provides a dividend yield at rate  $q$ .
2. The stock starts at price  $S_0e^{-qT}$  and pays no dividends.

This leads to a simple rule. When valuing a European option lasting for time  $T$  on a stock paying a known dividend yield at rate  $q$ , we reduce the current stock price from  $S_0$  to  $S_0e^{-q\tilde{T}}$  and then value the option as though the stock pays no dividends.2

## Lower Bounds for Option Prices

As a first application of this rule, consider the problem of determining bounds for the price of a European option on a stock paying a dividend yield at rate  $q$ . Substituting  $S_0e^{-qT}$  for  $S_0$  in equation (11.4), we see that a lower bound for the European call option price,  $c$ , is given by

$$ c \geq \max  \left(S _ {0} e ^ {- q T} - K e ^ {- r T}, 0\right) \tag {17.1}
$$

We can also prove this directly by considering the following two portfolios:

Portfolio  $A$ : one European call option plus an amount of cash equal to  $Ke^{-rT}$

Portfolio B:  $e^{-qT}$  shares with dividends being reinvested in additional shares.

To obtain a lower bound for a European put option, we can similarly replace  $S_0$  by  $S_0 e^{-qT}$  in equation (11.5) to get

$$ p \geq \max  \left(K e ^ {- r T} - S _ {0} e ^ {- q T}, 0\right) \tag {17.2}
$$

This result can also be proved directly by considering the following portfolios:

Portfolio C: one European put option plus  $e^{-qT}$  shares with dividends on the shares being reinvested in additional shares

Portfolio  $D$ : an amount of cash equal to  $Ke^{-rT}$ .

## Put-Call Parity

Replacing  $S_0$  by  $S_0e^{-qT}$  in equation (11.6) we obtain put-call parity for an option on a stock paying a dividend yield at rate  $q$ :

$$ c + K e ^ {- r T} = p + S _ {0} e ^ {- q T} \tag {17.3}
$$

This result can also be proved directly by considering the following two portfolios:

Portfolio A: one European call option plus an amount of cash equal to  $Ke^{-rT}$

Portfolio C: one European put option plus  $e^{-qT}$  shares with dividends on the shares being reinvested in additional shares.

Both portfolios are both worth  $\max(S_T, K)$  at time  $T$ . They must therefore be worth the same today, and the put-call parity result in equation (17.3) follows. For American options, the put-call parity relationship is (see Problem 17.16)

$$
S _ {0} e ^ {- q T} - K \leq C - P \leq S _ {0} - K e ^ {- r T}
$$

## Pricing Formulas

By replacing  $S_0$  by  $S_0e^{-qT}$  in the Black-Scholes-Merton formulas, equations (15.20) and (15.21), we obtain the price,  $c$ , of a European call and the price,  $p$ , of a European put on a stock paying a dividend yield at rate  $q$  as

$$ c = S _ {0} e ^ {- q T} N \left(d _ {1}\right) - K e ^ {- r T} N \left(d _ {2}\right) \tag {17.4}
$$

$$ p = K e ^ {- r T} N (- d _ {2}) - S _ {0} e ^ {- q T} N (- d _ {1}) \tag {17.5}
$$

Since

$$
\ln \frac {S _ {0} e ^ {- q T}}{K} = \ln \frac {S _ {0}}{K} - q T
$$ it follows that  $d_{1}$  and  $d_{2}$  are given by


$$ d _ {1} = \frac {\ln (S _ {0} / K) + (r - q + \sigma^ {2} / 2) T}{\sigma \sqrt {T}}
$$

$$ d _ {2} = \frac {\ln (S _ {0} / K) + (r - q - \sigma^ {2} / 2) T}{\sigma \sqrt {T}} = d _ {1} - \sigma \sqrt {T}
$$

These results were first derived by Merton. As discussed in Chapter 15, the word dividend should, for the purposes of option valuation, be defined as the reduction in the stock price on the ex-dividend date arising from any dividends declared. If the dividend yield rate is known but not constant during the life of the option, equations (17.4) and (17.5) are still true, with  $q$  equal to the average annualized dividend yield during the option's life.

## Differential Equation and Risk-Neutral Valuation

To prove the results in equations (17.4) and (17.5) more formally, we can either solve the differential equation that the option price must satisfy or use risk-neutral valuation.

When we include a dividend yield of  $q$  in the analysis in Section 15.6, the differential equation (15.16) becomes

$$
\frac {\partial f}{\partial t} + (r - q) S \frac {\partial f}{\partial S} + \frac {1}{2} \sigma^ {2} S ^ {2} \frac {\partial^ {2} f}{\partial S ^ {2}} = r f \tag {17.6}
$$

Like equation (15.16), this does not involve any variable affected by risk preferences. Therefore the risk-neutral valuation procedure described in Section 15.7 can be used.

In a risk-neutral world, the total return from the stock must be  $r$ . The dividends provide a return of  $q$ . The expected growth rate in the stock price must therefore be  $r - q$ . It follows that the risk-neutral process for the stock price is

$$ d S = (r - q) S d t + \sigma S d z \tag {17.7}
$$

To value a derivative dependent on a stock that provides a dividend yield equal to  $q$ , we set the expected growth rate of the stock equal to  $r - q$  and discount the expected payoff at rate  $r$ . When the expected growth rate in the stock price is  $r - q$ , the expected stock price at time  $T$  is  $S_0 e^{(r - q)T}$ . A similar analysis to that in the appendix to Chapter 15 gives the expected payoff for a call option in a risk-neutral world as

$$ e ^ {(r - q) T} S _ {0} N (d _ {1}) - K N (d _ {2})
$$ where  $d_{1}$  and  $d_{2}$  are defined as above. Discounting at rate  $r$  for time  $T$  leads to equation (17.4).


## 17.4 VALUATION OF EUROPEAN STOCK INDEX OPTIONS

In valuing index futures in Chapter 5, we assumed that the index could be treated as an asset paying a known yield. In valuing index options, we make similar assumptions. This means that equations (17.1) and (17.2) provide a lower bound for European index options; equation (17.3) is the put-call parity result for European index options; equations (17.4) and (17.5) can be used to value European options on an index; and the binomial tree approach can be used for American options. In all cases,  $S_0$  is equal to the current value of the index,  $\sigma$  is equal to the volatility of the index, and  $q$  is equal to the average annualized dividend yield on the index during the life of the option expressed with continuous compounding.

## Example 17.1

Consider a European call option on an index that is two months from maturity. The current value of the index is 930, the exercise price is 900, the risk-free interest rate is

8\% per annum, and the volatility of the index is 20\% per annum. Dividend yields of 0.2\% and 0.3\% (expressed with continuous compounding) are expected in the first month and the second month, respectively. In this case  $S_0 = 930$ ,  $K = 900$ ,  $r = 0.08$ ,  $\sigma = 0.2$ , and  $T = 2/12$ . The total dividend yield during the option's life is 0.2\% + 0.3\% = 0.5\%. This corresponds to 3\% per annum. Hence,  $q = 0.03$  and

$$ d _ {1} = \frac {\ln (930 / 900) + (0.08 - 0.03 + 0.2 ^ {2} / 2) \times 2 / 12}{0.2 \sqrt {2 / 12}} = 0.5444
$$

$$ d _ {2} = \frac {\ln (930 / 900) + (0.08 - 0.03 - 0.2 ^ {2} / 2) \times 2 / 12}{0.2 \sqrt {2 / 12}} = 0.4628
$$

$$
N \left(d _ {1}\right) = 0.7069, \quad N \left(d _ {2}\right) = 0.6782
$$ so that the call price,  $c$ , is given by equation (17.4) as


$$ c = 930 \times 0.7069 e ^ {- 0.03 \times 2 / 12} - 900 \times 0.6782 e ^ {- 0.08 \times 2 / 12} = 51.83
$$

One contract, if on 100 times the index, would cost 5,183.

The calculation of  $q$  should include only dividends for which the ex-dividend dates occur during the life of the option. In the United States ex-dividend dates tend to occur during the first week of February, May, August, and November. At any given time the correct value of  $q$  is therefore likely to depend on the life of the option. This is even more true for indices in other countries. In Japan, for example, all companies tend to use the same ex-dividend dates.

If the absolute amount of the dividend that will be paid on the stocks underlying the index (rather than the dividend yield) is assumed to be known, the basic Black-Scholes-Merton formulas can be used with the initial stock price being reduced by the present value of the dividends. This is the approach recommended in Chapter 15 for a stock paying known dividends. However, it may be difficult to implement for a broadly based stock index because it requires a knowledge of the dividends expected on every stock underlying the index.

It is sometimes argued that, in the long run, the return from investing a certain amount of money in a well-diversified stock portfolio is almost certain to beat the return from investing the same amount of money in a bond portfolio. If this were so, a long-dated put option allowing the stock portfolio to be sold for the value of the bond portfolio should not cost very much. In fact, as indicated by Business Snapshot 17.1, it is quite expensive.

## Forward Prices and the Estimation of Dividend Yields

Define  $F_0$  as the forward price of the index for a contract with maturity  $T$ . As shown by equation (5.3),  $F_0 = S_0 e^{(r - q)T}$ . This means that the equations for the European call price  $c$  and the European put price  $p$  in equations (17.4) and (17.5) can be written

$$ c = F _ {0} e ^ {- r T} N \left(d _ {1}\right) - K e ^ {- r T} N \left(d _ {2}\right) \tag {17.8}
$$

$$ p = K e ^ {- r T} N \left(- d _ {2}\right) - F _ {0} e ^ {- r T} N \left(- d _ {1}\right) \tag {17.9}
$$ where


$$ d _ {1} = \frac {\ln \left(F _ {0} / K\right) + \sigma^ {2} T / 2}{\sigma \sqrt {T}} \quad \text {a n d} \quad d _ {2} = \frac {\ln \left(F _ {0} / K\right) - \sigma^ {2} T / 2}{\sigma \sqrt {T}}
$$

## Business Snapshot 17.1 Can We Guarantee that Stocks Will Beat Bonds in the Long Run?

It is often said that if you are a long-term investor you should buy stocks rather than bonds. Consider a U.S. fund manager who is trying to persuade investors to buy, as a long-term investment, an equity fund that is expected to mirror the S&P 500. The manager might be tempted to offer purchasers of the fund a guarantee that their return will be at least as good as the return on risk-free bonds over the next 10 years. Historically stocks have outperformed bonds in the United States over almost any 10-year period. It appears that the fund manager would not be giving much away.

In fact, this type of guarantee is surprisingly expensive. Suppose that an equity index is 1,000 today, the dividend yield on the index is  $1\%$  per annum, the volatility of the index is  $15\%$  per annum, and the 10-year risk-free rate is  $5\%$  per annum. To outperform bonds, the stocks underlying the index must earn more than  $5\%$  per annum. The dividend yield will provide  $1\%$  per annum. The capital gains on the stocks must therefore provide  $4\%$  per annum. This means that we require the index level to be at least  $1,000e^{0.04 \times 10} = 1,492$  in 10 years.

A guarantee that the return on  \$1,000 invested in the index will be greater than the return on\$ 1,000 invested in bonds over the next 10 years is therefore equivalent to the right to sell the index for 1,492 in 10 years. This is a European put option on the index and can be valued from equation (17.5) with  $S_0 = 1,000$ ,  $K = 1,492$ ,  $r = 5\%$ ,  $\sigma = 15\%$ ,  $T = 10$ , and  $q = 1\%$ . The value of the put option is 169.7. This shows that the guarantee contemplated by the fund manager is worth about 17\% of the fund—hardly something that should be given away!

The put-call parity relationship in equation (17.3) can be written

$$
\begin{array}{l} c + K e ^ {- r T} = p + F _ {0} e ^ {- r T} \\ F _ {0} = K + (c - p) e ^ {r T} \end{array} \tag {17.10}
$$

Working with forward prices and equations (17.8) and (17.9) is attractive because it avoids the need to estimate the dividend yield on the index directly. The dividend yield expected by the market is incorporated into forward prices. Futures prices for stock indices can be assumed to be the same as forward prices and so futures markets can be used to estimate forward prices for the maturities of the futures contracts that trade. If, as is not uncommon, European put and call options with the same strike price and maturity date are traded, equation (17.10) can be used to provide an estimate of the forward price of the index for that maturity date.

Once forward prices for a number of different maturity dates have been obtained (at least approximately), a smooth function describing the forward price as a function of maturity can be estimated, and equations (17.8) and (17.9) can be used to determine the prices of European index options for a range of maturities.

When American options on an index are valued, the average dividend yield during the life of the option must be estimated explicitly. Because  $F_0 = S_0 e^{(r - q)T}$ , the average dividend yield during the life of a futures contract can be estimated as

$$ q = r - \frac {1}{T} \ln \frac {F _ {0}}{S _ {0}}
$$

A European call and put option with the same strike price and maturity date can also be used to estimate  $q$ . From equation (17.3),

$$ q = - \frac {1}{T} \ln \frac {c - p + K e ^ {- r T}}{S _ {0}}
$$

For a particular strike price and time to maturity, the estimates of  $q$  calculated from this equation are liable to be unreliable. But when the results from many matched pairs of calls and puts are combined, a clearer picture of the term structure of dividend yields being assumed by the market emerges.

## 17.5 VALUATION OF EUROPEAN CURRENCY OPTIONS

To value currency options, we define  $S_0$  as the spot exchange rate. To be precise,  $S_0$  is the value of one unit of the foreign currency in U.S. dollars. As explained in Section 5.10, a foreign currency is analogous to a stock paying a known dividend yield. The owner of foreign currency receives a yield equal to the risk-free interest rate,  $r_f$ , in the foreign currency. Equations (17.1) and (17.2), with  $q$  replaced by  $r_f$ , provide bounds for the European call price,  $c$ , and the European put price,  $p$ :

$$ c \geq \max  \left(S _ {0} e ^ {- r _ {f} T} - K e ^ {- r T}, 0\right) \quad \text {a n d} \quad p \geq \max  \left(K e ^ {- r T} - S _ {0} e ^ {- r _ {f} T}, 0\right)
$$

Equation (17.3), with  $q$  replaced by  $r_f$ , provides the put-call parity result for European currency options:

$$ c + K e ^ {- r T} = p + S _ {0} e ^ {- r _ {f} T}
$$

Finally, equations (17.4) and (17.5) provide the pricing formulas for European currency options when  $q$  is replaced by  $r_f$ :

$$ c = S _ {0} e ^ {- r f T} N \left(d _ {1}\right) - K e ^ {- r T} N \left(d _ {2}\right) \tag {17.11}
$$

$$ p = K e ^ {- r T} N \left(- d _ {2}\right) - S _ {0} e ^ {- r _ {f} T} N \left(- d _ {1}\right) \tag {17.12}
$$ where


$$ d _ {1} = \frac {\ln (S _ {0} / K) + (r - r _ {f} + \sigma^ {2} / 2) T}{\sigma \sqrt {T}}
$$

$$ d _ {2} = \frac {\ln (S _ {0} / K) + (r - r _ {f} - \sigma^ {2} / 2) T}{\sigma \sqrt {T}} = d _ {1} - \sigma \sqrt {T}
$$

Both the domestic interest rate,  $r$ , and the foreign interest rate,  $r_f$ , are the rates for a maturity  $T$ .

## Example 17.2

Consider a 4-month European call option on the British pound. Suppose that the current exchange rate is 1.6000, the exercise price is 1.6000, the risk-free interest rate in the United States is  $8\%$  per annum, the risk-free interest rate in Britain is  $11\%$  per annum, and the option price is 4.3 cents. In this case,  $S_0 = 1.6$ ,  $K = 1.6$ ,  $r = 0.08$ ,  $r_f = 0.11$ ,  $T = 0.3333$ , and  $c = 0.043$ . The implied volatility can be calculated by trial and error. A volatility of  $20\%$  gives an option price of 0.0639; a volatility of  $10\%$  gives an option price of 0.0285; and so on. The implied volatility is  $14.1\%$ .

Put and call options on a currency are symmetrical in that a put option to sell one unit of currency A for currency B at strike price  $K$  is the same as a call option to buy  $K$  units of B with currency A at strike price  $1 / K$  (see Problem 17.12).

## Using Forward Exchange Rates

Because banks and other financial institutions trade forward contracts on foreign exchange rates actively, forward exchange rates are often used for valuing options. From equation (5.9), the forward exchange rate,  $F_{0}$ , for a maturity  $T$  is given by

$$
F _ {0} = S _ {0} e ^ {(r - r _ {f}) T}
$$

This relationship allows equations (17.11) and (17.12) to be simplified to

$$ c = e ^ {- r T} \left[ F _ {0} N \left(d _ {1}\right) - K N \left(d _ {2}\right) \right] \tag {17.13}
$$

$$ p = e ^ {- r T} \left[ K N \left(- d _ {2}\right) - F _ {0} N \left(- d _ {1}\right) \right] \tag {17.14}
$$ where


$$ d _ {1} = \frac {\ln (F _ {0} / K) + \sigma^ {2} T / 2}{\sigma \sqrt {T}}
$$

$$ d _ {2} = \frac {\ln (F _ {0} / K) - \sigma^ {2} T / 2}{\sigma \sqrt {T}} = d _ {1} - \sigma \sqrt {T}
$$

Equations (17.13) and (17.14) are the same as equations (17.8) and (17.9). As we shall see in Chapter 18, a European option on the spot price of any asset can be valued in terms of the price of a forward or futures contract on the asset using equations (17.13) and (17.14). The maturity of the forward or futures contract must be the same as the maturity of the European option.

## 17.6 AMERICAN OPTIONS

As described in Chapter 13, binomial trees can be used to value American options on indices and currencies. As in the case of American options on a non-dividend-paying stock, the parameter determining the size of up movements,  $u$ , is set equal to  $e^{\sigma \sqrt{\Delta t}}$  where  $\sigma$  is the volatility and  $\Delta t$  is the length of time steps. The parameter determining the size of down movements,  $d$ , is set equal to  $1 / u$ , or  $e^{-\sigma \sqrt{\Delta t}}$ . For a non-dividend-paying stock, the probability of an up movement is

$$ p = \frac {a - d}{u - d}
$$ where  $a = e^{r\Delta t}$ . For options on indices and currencies, the formula for  $p$  is the same, but  $a$  is defined differently. In the case of options on an index,


$$ a = e ^ {(r - q) \Delta t} \tag {17.15}
$$ where  $q$  is the dividend yield on the index. In the case of options on a currency,


$$ a = e ^ {(r - r _ {f}) \Delta t} \tag {17.16}
$$ where  $r_f$  is the foreign risk-free rate. Example 13.1 in Section 13.11 shows how a two-step tree can be constructed to value an option on an index. Example 13.2 shows how a three-step tree can be constructed to value an option on a currency. Further examples of the use of binomial trees to value options on indices and currencies are given in Chapter 21.


In some circumstances, it is optimal to exercise American currency and index options prior to maturity. Thus, American currency and index options are worth more than their European counterparts. In general, call options on high-interest currencies and put options on low-interest currencies are the most likely to be exercised early. The reason is that a high-interest currency is expected to depreciate and a low-interest currency is expected to appreciate. Similarly, call options on indices with high-dividend yields and put options on indices with low-dividend yields are most likely to be exercised early.

# SUMMARY

The index options trading on exchanges are settled in cash. On exercise of an index call option contract, the holder typically receives 100 times the amount by which the index exceeds the strike price. Similarly, on exercise of an index put option contract, the holder receives 100 times the amount by which the strike price exceeds the index. Index options can be used for portfolio insurance. If the value of the portfolio mirrors the index, it is appropriate to buy one put option contract for each  $100S_{0}$  dollars in the portfolio, where  $S_{0}$  is the value of the index. If the portfolio does not mirror the index,  $\beta$  put option contracts should be purchased for each  $100S_{0}$  dollars in the portfolio, where  $\beta$  is the beta of the portfolio from the capital asset pricing model. The strike price of the put options purchased should reflect the level of insurance required.

Most currency options are traded in the over-the-counter market. They can be used by corporate treasurers to hedge a foreign exchange exposure. For example, a U.S. corporate treasurer who knows that the company will be receiving sterling at a certain time in the future can hedge by buying put options that mature at that time. Similarly, a U.S. corporate treasurer who knows that the company will be paying sterling at a certain time in the future can hedge by buying call options that mature at that time. Currency options can also be used to create a range forward contract. This is a zero-cost contract that can be used to provide downside protection while giving up some of the upside for a company with a known foreign exchange exposure.

The Black-Scholes-Merton formula for valuing European options on a non-dividend-paying stock can be extended to cover European options on a stock paying a known dividend yield. The extension can be used to value European options on stock indices and currencies because:

1. A stock index is analogous to a stock paying a dividend yield. The dividend yield is the dividend yield on the stocks that make up the index.
2. A foreign currency is analogous to a stock paying a dividend yield. The foreign risk-free interest rate plays the role of the dividend yield.

Binomial trees can be used to value American options on stock indices and currencies.

# FURTHER READING

Biger, N., and J. C. Hull. "The Valuation of Currency Options," Financial Management, 12 (Spring 1983): 24-28.
Bodie, Z. "On the Risk of Stocks in the Long Run," Financial Analysts Journal, 51, 3 (1995): 18-22.
Garman, M. B., and S. W. Kohlhagen. "Foreign Currency Option Values," Journal of International Money and Finance, 2 (December 1983): 231-37.
Giddy, I. H., and G. Dufey. "Uses and Abuses of Currency Options," Journal of Applied Corporate Finance, 8, 3 (1995): 49-57.
Grabbe, J. O. "The Pricing of Call and Put Options on Foreign Exchange," Journal of International Money and Finance, 2 (December 1983): 239-53.
Merton, R. C. "Theory of Rational Option Pricing," Bell Journal of Economics and Management Science, 4 (Spring 1973): 141-83.

# Short Concept Questions

17.1. How does the number of options necessary to hedge a well-diversified portfolio change as the beta of the portfolio changes?
17.2. What is a range forward contract?
17.3. How can the dividend yield expected by the market on a stock index be estimated from futures contracts on a stock index?
17.4. How is the Black-Scholes-Merton formula for valuing a European option on a non-dividend-paying stock adjusted to value a European option on an asset providing a known dividend yield?
17.5. "Once we know how to value options on a stock paying a dividend yield, we know how to value options on stock indices and currencies." Explain this statement.
17.6. A portfolio is currently worth 10 million and has a beta of 1.0. An index is currently standing at 800. Explain how a put option on the index with a strike price of 700 can be used to provide portfolio insurance.



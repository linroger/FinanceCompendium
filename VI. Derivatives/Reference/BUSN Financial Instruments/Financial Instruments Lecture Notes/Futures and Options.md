---
title: Futures and Options
primary_tags:
  - derivatives
  - futures contracts
  - options
  - risk management
  - arbitrage
secondary_tags:
  - cost of carry model
  - hedging strategies
  - eurodollar futures
  - stock index futures
  - forward rate agreements
  - cheapest to deliver bond
  - tracking error
  - capital asset pricing model
  - beta adjustment
  - basis trading
  - portable alpha
  - foreign exchange forwards
  - value at risk
  - market risk
cssclasses: academia
---

# Futures and Options

Course description: This course is designed to introduce Finance students to the theoretical and real world aspects of financial futures, options, and other derivatives. Over the last 40 years, the markets for these versatile instruments have grown enormously and have generated a profusion of innovative products and ideas, not to mention periodic crises. Derivatives have become one of the most important tools of modern finance, from both the academic and the practical standpoint. The subject is inherently more quantitative than other business courses, but the emphasis in this course is not on the math and theory, but always on developing your intuition. The goal is for you to understand the principles of how these instruments and markets work, not to derive models and prove theorems.

## Important Concepts in Sessions 1&2

Overview of the course

What are derivatives?

Three essential concepts for understanding derivatives

- behavior of financial risk and return (Value at Risk as an example)
- hedging
- arbitrage

Basics of math for derivatives and asset pricing

- Value-at-Risk (VaR) as a key example

## The Most Basic Question: Why is this subject worth learning about?

1. It's inherently interesting! It's a superb and valuable intellectual pursuit!
2. Derivatives extend finance to an entirely new dimension.

- Derivatives allow risk and other important characteristics to be effectively separated from the financial instruments they are attached to, and to be managed independently.
- You can own a risky asset without bearing the risk (e.g., a portfolio of Internet stocks, hedged correctly using derivatives, can behave like a Treasury bill); or you can take on the risk—and get paid for it—without buying the security (e.g., you can hold T-Bills but use derivatives to take on stock market exposure as if you were invested in a stock portfolio);
- other important properties, like accounting treatment, tax status, risk-based capital requirements, currency of denomination, etc., can all be easily modified with derivatives. Trade Chinese stocks without ever buying or selling a Chinese stock.

Contingent claims theory helps us to understand the economic value of being able to make a choice in the future, and to put a dollar figure on it.

3. Modern risk management depends heavily on derivatives; so does structuring virtually all major financial deals; so do many other areas in business, such as executive compensation. Basic familiarity with derivatives is essential for understanding how finance is being done today in real world firms and markets.
4. Application of derivatives concepts and methodology is rapidly expanding into other areas (e.g., management of credit risk, insurance, capital budgeting, corporate finance, etc., etc.)

## What Are Derivatives?

A Derivative is any member of a broad class of financial instruments whose payoff depends directly on the value of some underlying economic variable. (The value of a derivative is "derived" from the value of its underlying.)

Example: A contract to buy 50,000 barrels of crude oil on September 16, 2017 for \$50 per barrel.

## The Underlying

The underlying economic variable that determines the payoff on a derivative is typically the market price for some financial instrument (or portfolio), but there is a very wide range of possibilities.

- The underlying may be some financial asset
	- example: a U.S. Treasury bond
- a commodity
	- example: crude oil
- an interest rate
	- example: LIBOR
- a foreign currency
	- example: Japanese yen
- an index
	- example: the S&P 500
- any other clearly defined variable
Example: the mean daily temperature at Newark airport during January

## Two General Classes of Derivatives

There are two general types of derivatives: Contracts and Securitized Products

## Contract derivatives:

Examples are forward contracts, futures, options, interest rate swaps, caps, and floors, credit default swaps (CDS), and many other familiar derivatives

The contract binds two counterparties to make a transaction at a future date. All profits and losses come from cash flows between the counterparties.

## Securitized or Structured Products:

Unlike a contract-type derivative, in a securitization the underlying is a pool or portfolio of securities that are already outstanding. Securitization creates new derivative securities that receive and allocate the cash flows from the underlying pool to different classes of investors.

Contract derivatives will be our main focus in the first part of the course, but at this point it is worth mentioning some key features of both types of derivative.

## Contract Derivatives

A typical derivative is a contract between two "counterparties" either to buy or sell the underlying on a future date.

Other contract-type derivatives simply have a cash payoff based on the change in some economic variable, such as the Consumer Price Index.

The key feature is that the price and all other terms for the future transaction are fixed in the present.

Another key feature is that all payoffs come from the counterparty to the transaction. If a price change causes a \$100 loss to a trader, that trader's counterparty has a \$100 profit.

This means that every contract derivative is a "zero-sum game."

The contract may be binding on both parties, like a forward, futures contract, or swap.

Or the contract may contain options that allow one or both counterparties to choose later how and whether to complete the transaction. But the exact terms of those options are set at the beginning.

## Securitized Products as Derivatives

The purpose of securitization is to redistribute exposure to the risks that are inherent in the underlying assets. Typically, different classes ("tranches"—pronounced like "tronshes") of derivatives are created with differing levels of exposure to the underlying risk, from very safe to very risky. These appeal to investors with differing tolerance for bearing risk.

The safest tranches have the first claim on the cash flows from the underlying pool, while the riskiest are last in line, with the most uncertain payoffs but the highest expected return.

## Examples include:

- mortgage pass-through securities (e.g., GNMAs)
- Collateralized Mortgage Obligations (CMOs)
- asset-backed securities (ABS)
- Collateralized Debt Obligations (CDOs)
- and a wide variety of other structured financial products

## Securitization

Existing assets (e.g., mortgages, consumer loans, stocks, etc.) are combined into a portfolio ("pool").

New derivative securities are created and sold. A buyer of the new securities receives cash flows from the underlying pool (not from a counterparty).

Different tranches of derivative securities can be created to redistribute exposure to the risks of the assets in the pool.

Pool of risky assets (mortgages, bonds, loans)

all assets have some risk

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/05a0e9ac-eef1-40f4-a2fe-d8a83145f0c1/994cc402650991005bb9acfebcbe243885f429845f8057c7d0247fa21fecc350.jpg)

Securitization

Tranched securities redistribute the risk

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/05a0e9ac-eef1-40f4-a2fe-d8a83145f0c1/8c92b3ac7854e2b13e22521834ffc01d9e752d7ff9ea9c3be53b898a9464ef53.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/05a0e9ac-eef1-40f4-a2fe-d8a83145f0c1/a3456461fe9a340785cf589830684dcd7d8811a552c56a91cba25a1603b8e3f1.jpg)

## Structured products

Example: A Collateralized Mortgage Obligation (CMO) is a claim on the cash flows from a pool of home mortgage loans. Default risk on the mortgages is allocated to the different CMO tranches so that most have virtually no risk exposure.

Important! The risk comes from the underlying assets in the pool. The new securities do not increase or decrease total risk. They just change how the risk of the underlying assets is distributed among the investors.

The financial crisis of 2008 involved CMOs. Some high-risk CMOs took large losses, but a much bigger problem was that financing in the money market dried up. Potential lenders stopped accepting CMOs as collateral. Without access to financing, banks and financial firms had trouble carrying CMO positions, including the tranches with almost no default risk.

## Snapshot of U.S. Markets

There are thousands of different derivative contracts traded in U.S. markets.

In 2014, the Commodity Futures Trading Commission (CFTC) listed 11264 traded derivative products from 57 different organizations. (This does not even include many thousands of equity options, that are regulated by the SEC).

The CME Group (successor to the original Chicago Mercantile Exchange), the largest derivatives exchange, listed 2665 different contracts available for trading.

Most of these have very little trading interest, however.

Recent noteworthy developments:

Virtually all trading is now electronic. Open outcry pit trading is nearly extinct.

New regulations from the Dodd-Frank Act are not all finalized. But much over-the-counter derivatives trading has now migrated to exchanges ("Central Clearing Counterparties" -- CCPs).

Leadership in both regulatory agencies turned over with the Trump administration, which had a very different philosophy of government regulation. It is expected the Biden will restore leadership with more traditional ideas on derivatives regulation.

## Three essential concepts for understanding derivatives

- In a contract derivative, two counterparties agree today on the terms for a transaction to be executed on a future date. All profits and losses come from the transfer of cash from one counterparty to the other. This feature makes a derivatives contract a "zero-sum game."
- Risk hedging is the main reason for derivatives to exist. A contract derivative transfers risk from one of the counterparties to the other. A securitized derivative redistributes risk that is inherent in the underlying assets.
- Arbitrage ties the market for the derivative to the market for the underlying. Arbitrage is both a potentially profitable trading strategy and also the theoretical basis for derivatives valuation models.

## Contract derivatives are a zero-sum game

For the average investor, this means expected profit from trading is ZERO mathematically. Contrast this with the return to buying the underlying asset, such as a bond or a stock.

For the overall financial system, because every dollar lost by one counterparty is a dollar profit for the other one:

- Total losses to all derivatives traders, and to the financial system, sum to zero.
- No matter what happens, systemic risk should not be increased by derivatives losses (because they are offset by derivatives gains for the losers' counterparties).

Example: On Dec. 31, 2015, the S&P 500 index closed at 2060.59. The total value of the 500 stocks in the index was about \$18.774 trillion. Over the next 3 weeks, the market fell nearly (10%), to 1861.46 on Jan. 21. In aggregate, losses on these stocks totaled about -\$1.81 trillion.

Q: There are many different futures and options contracts all tied to the S&P 500 index. How much more was lost in these S&P derivative on top of the losses in the stock market?

A: Nothing!! Every dollar lost by one trader was a profit to that trader's counterparty. The sum across all investors has to be zero no matter what.

## Contract derivatives have high leverage and counterparty risk

The contract is a commitment to make a trade at a future date. There is no payment until then (so both sides may need to post collateral).

collateral is commonly required, to mitigate counterparty risk

derivatives exchanges require several layers of defense

- initial margin (collateral) and frequent (daily) mark to market are standard
    - other emergency support in case of a major market disruption is also needed (from Clearing House funds, member firm capital, government guarantee, …)
it is essential for the exchange itself to have zero default risk vis-a-vis its customers
- over-the-counter derivatives contracts involving large firms used to be done with no collateral. The Dodd-Frank Act now requires collateral and clearing of trades through a central clearing house for all standard contracts.

danger of rogue trader (high leverage can allow large risk exposure to be hidden)

- incentives for an individual trader are not the same as for their firm
internal risk controls are crucial

danger of market manipulation

- strict limits on the size of traders' positions are necessary

## Hedging: The Primary Purpose of Derivatives

Derivatives were developed so that those who deal in the underlying commodities or securities could hedge the inherent risk they have to bear.

## Key aspects of correct hedging:

- The hedge is a derivative position whose return is highly correlated with the risk to be hedged.
- The hedge position will have profits when the value of the item being hedged changes in the unfavorable direction. Random fluctuations in the total value of the combined position are minimized.
- The hedge can be successful even if no delivery on the contract ever occurs, and even if the contract is for a different underlying instrument than the one that is being hedged.
- Nearly all hedging with nonstandard over-the-counter contracts is subject to credit risk.
- Nearly all hedging with standardized futures contracts is subject to "basis risk."
- the contract is a zero-sum game. When the trade is completed, the original contract price will be better than the market price for one of the counterparties and worse for the other; these profits and losses must sum to zero

## Arbitrage, the Key to Derivatives Valuation

A typical derivative instrument sets up a (possible) future transaction in some underlying instrument.

This can lead to multiple different ways to do the same thing. Two positions that appear quite different can have exactly the same payoffs.

Two different positions (or trading strategies) that always have the same payoffs must also have the same total cost in the market. Otherwise there is an arbitrage trade that produces a profit with no risk.

In the idealized world of finance theory, this "no-arbitrage" principle leads to all of our theoretical derivatives valuation models. Within a model all derivative instruments must be priced so that no profitable arbitrage opportunities remain.

In real world financial markets, market makers and other investors work hard to find trading opportunities based on small violations of the "no-arbitrage" principle. Active trading by "arbitrageurs" (traders who do arbitrage) is what ties prices in a derivatives market closely to prices in the market for its underlying.

## Arbitrage, the Key to Derivatives Valuation, p.2

Example: Suppose the current price of gold is \$1500 per ounce, the interest rate is 4.00% and it is also possible to enter into a forward contract that lets you lock in a price of \$1520 per ounce to purchase gold in 6 months.

There are two ways to do the same thing, which is to pay out cash today and have gold in 6 months:

1. Buy gold today for \$1500 per ounce and hold it for six months.
2. Put \$1500 in the bank at 4% interest and buy a gold forward contract today. In 6 months, the money in the bank will have earned 1/2 year's interest, so the account will contain \$1500 \times 1.02 = \$1530. Take delivery on the forward contract and pay \$1520 per ounce for gold at that time. You again have an ounce of gold, but there is \$10 left over.

This is cannot be an equilibrium, because the two different ways to do exactly the same thing don't cost the same. To prevent a profitable arbitrage trade, the 6-month gold forward price has to be \$1530, not \$1520. (Notice that the profit is locked in at the beginning. It doesn't matter what the price of gold actually turns out to be six months from now.)

Theoretical pricing models for derivatives are developed by applying this concept in every possible manner.

## Basic Derivatives Math

The key aspects of a security are its return and its risk. These are intrinsically tied together: one can't be changed without affecting the other.

Derivatives are used mainly for managing risk exposure. To understand what modern finance can say about how a derivatives strategy works and, especially, how to design a good strategy for a particular purpose, you must understand the mathematics of return and risk.

There are many ways to quote returns, yields, and interest rates. Returns on some instruments are annualized at simple interest, others are compounded. Different day count conventions are used in different markets. The details are described in the handout "Math Review for Derivatives."

Risk means uncertainty, which in modern financial theory is modeled by a probability distribution. Knowing the fundamental properties of probabilities is very important for understanding derivatives.

## Interest Rate Calculations: Holding Period Return

A very helpful basic concept in doing interest calculations is the Holding Period Return $R_{\text{HPR}}$. For a given holding period, if an amount $V_0$ is paid at the beginning and a total amount $V_1$ is accumulated by the end of the holding period, the Holding Period Return is defined by

$$
(1 + R_{\text{HPR}}) = V_{1} / V_{0}
$$

Note that the Holding Period Return is not annualized.

Suppose interest on an 8% \$1 million loan is charged at the end.

$$
\begin{array}{l}
R_{\text{HPR}} = V_{1} / V_{0} - 1 \\
= 1,080,000 / 1,000,000 - 1 \\
= 1.08 - 1 \\
= 8.00 \%
\end{array}
$$

Suppose interest on an 8% \$1 million loan is charged in the form of a discount at the beginning (known as "discount basis"):

$$
\begin{array}{l}
R_{\text{HPR}} = V_{1} / V_{0} - 1 \\
= 1,000,000 / 920,000 - 1 \\
= 1.086957 - 1 \\
= 8.70 \%
\end{array}
$$

## Interest Rate Calculations: APR and EAR

There are many different ways to quote interest rates and to compute the dollar payments involved in an investment. How to convert back and forth between promised cash flows and quoted interest rates varies from one instrument to another. The details are both irrelevant and also extremely important: Irrelevant to understanding the concepts of how derivatives work, but extremely important in actually using them. The key is to focus on the dollar amounts and the dates when they are received.

Annual Percentage Rate (APR) This is the rate used in calculating the dollar amounts of interest payments. Since the 1970s, by law a lender has to quote the APR on a loan when offering it to borrowers.

For principal amount $V$, interest rate $R_{\text{APR}}$, holding period $K$ days, the interest payment would be computed as

$$
\text{Interest payment} = V \times R_{\text{APR}} \times (K / 365)
$$

This is typically known as "simple interest." It doesn't take account of compounding.

Example: For a 90-day loan of \$1 million loan with APR = 8.00%, the interest payment is:

$$
\text{Interest payment} = 1,000,000 \times 0.08 \times 90 / 365 = \$19,726.03
$$

## Interest Rate Calculations: APR and EAR

Effective Annual Rate (EAR) Takes account of both dollar interest amounts and their timing (which involves compounding interest over time). EAR tries to answer this question: If all interest payments received during the year were reinvested at the same interest rate and the cumulated total were paid out at the end of the year, how many dollars of interest would there be at the end per dollar invested at the beginning?

WEIRD BUT TRUE! Although rolling over short term investments over a whole year clearly leads to compound returns, the market conventions used by traders annualize returns at simple interest. Formal compounding is used only for holding periods greater than a year.

## Compounding: APR, HPR, and EAR

For a shorter holding period of K days, there will be $N = 365 / K$ periods per year.

The interest payment on a \$1 loan for one period is $\$1 \times R_{\text{APR}} \times (K / 365) = \$1 \times R_{\text{APR}} / N$

- This makes the one period Holding Period Return, $R_{\text{HPR}} = R_{\text{APR}} \times (K / 365) = R_{\text{APR}} / N$
- The EAR corresponding to this APR and compounding period is computed as

$$
(1 + R_{\text{EAR}}) = (1 + R_{\text{HPR}})^{N} = (1 + R_{\text{APR}} / N)^{N}
$$

NOTE: To keep things simple in this course, unless you are told otherwise, you can treat "one month" as 1/12 of a year, "3 months" as 1/4 of a year, etc.

Example: For a 3-month \$1 million loan, N = 4. If the APR is 8.00%, the interest payment will be

$$
\text{Interest payment} = 1,000,000 \times 0.08 \times 1 / 4 = \$20,000
$$

$$
R_{\text{HPR}} = 1,020,000 / 1,000,000 - 1 = 0.0200 = 2.00\%
$$

$$
R_{\text{EAR}} = (1 + R_{\text{HPR}})^{4} - 1 = (1.0200)^{4} - 1 = 1.0824 = 8.24\%
$$

# Interest Rate Calculations: Continuous Compounding

You have to deal correctly with compounding to take proper account of the time value of money. The calculations get messy when the number of holding periods in a year is not an integer. A simplification, which is used extensively for options and advanced derivatives, is to use continuously compounded rates.

If the annual continuously compounded rate is  $r$ , then  $(1 + R_{\mathrm{HPR}})$  for any holding period of length  $t$  years is just

$$
\left(1 + \mathrm {R} _ {\mathrm {H P R}}\right) = \mathrm {e} ^ {\mathrm {r t}}
$$

Examples: If  $r = 8.00\%$ ,

For 1 year holding period

$(1 + \mathrm{R}_{\mathrm{HPR}}) = \mathrm{e}^{0.08} = 1.0833$

For 1/2 year holding period

$(1 + \mathrm{R}_{\mathrm{HPR}}) = \mathrm{e}^{0.08 / 2} = 1.0408$

For 1/4 year holding period

$(1 + \mathrm{R}_{\mathrm{HPR}}) = \mathrm{e}^{0.08 / 4} = 1.0202$

If you invest  $\mathrm{V}_0$  over a holding period of length  $t$  years and receive  $\mathrm{V}_1$  at the end  $(1 + \mathrm{R}_{\mathrm{HPR}}) = \frac{\mathrm{V}_1}{\mathrm{V}_0} = \mathrm{e}^{\mathrm{rt}}$ . This is a continuously compounded annual rate of

$\mathrm{r} = (1 / \mathrm{t}) \ln \left( \mathrm{V}_{1} / \mathrm{V}_{0} \right)$ , where  $\ln (\cdot)$  refers to the natural logarithm

Examples: If  $V_0 = 100$  and  $V_1 = 108$ ,

For 1 year holding period

$\mathrm{r} = (1) \ln(1.08) = 0.0770 = 7.70 \%$

For 1/2 year holding period

$\mathrm{r} = (1 / .5) \ln (1.08) = 2 \times 0.0770 = 15.39 \%$

For 1/4 year holding period

$\mathrm{r} = (1 / .25)\ln (1.08) = 4\times 0.0770 = 30.78\%$

# How Should We Measure Risk?

# According to Modern Financial Theory:

- a full answer requires the full probability distribution of returns;
- given the probability distribution, specific risk measures can easily be computed, like the probability of taking a loss;
- the standard assumption is that asset returns have a Normal distribution (prices have a "lognormal" distribution);
- both the Normal and the lognormal have two parameters: mean and standard deviation
standard deviation becomes the measure of risk;
- the returns on several securities taken together are assumed to have a multivariate Normal distribution, which involves correlations, too.

# The Standard Model for Asset Returns

Price changes for securities like stocks have several stylized features that need to be incorporated into whatever model is used for the "returns process:"

- the price is observable (more or less) continuously
- random fluctuations occur all the time
- prices follow a "random walk," meaning that the random fluctuations are independent from one period to the next, even at the shortest intervals
- the distribution of percentage returns is (approximately) normal

These properties are expressed formally in the form of a "lognormal diffusion process." This is the standard assumption for derivatives modeling, particularly options.

We will look at the lognormal diffusion model more closely later in the course, when we get to options. For now, we will just assume some of the properties of the model hold, without getting into details.

Key assumptions: Over a period of time of length  $T$ ,

- the (continuously compounded) return follows a normal distribution
- security prices follow a lognormal distribution (the logarithm of price is normally distributed)
- the variance of the return is proportional to the length of the time interval  $\mathrm{VAR}[\mathrm{R}] = \mathrm{VAR}[\ln (\mathrm{S}_{\mathrm{T}} / \mathrm{S}_{0})] = \sigma^{2}\mathrm{T}$ ; standard deviation of return  $= \sigma \sqrt{\mathrm{T}}$  This is the "Square Root of T Rule." It describes how risk behaves, so it is essential that you know it.
- returns measured over non-overlapping time periods are statistically independent

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/05a0e9ac-eef1-40f4-a2fe-d8a83145f0c1/84de01d1307f13710f0a75177c2ede633e2624a4f517c68660c68d1ee24abd3c.jpg)

Standard Normal Probability

Standard deviations

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/05a0e9ac-eef1-40f4-a2fe-d8a83145f0c1/66b7caa74521ebac2a80c5276ae1468aa7975fb150a5b898c6f2b135436c0273.jpg)

Lognormal Probability

# A Very Important Application: Value at Risk

Value at Risk (VaR) has become an important measure of overall market risk exposure.

- widely used by financial firms to give a snapshot of immediate risk of major loss.
- embodied in recent capital requirements for banks proposed by the BIS (Bank for International Settlements) and adopted formally by the European Community

VaR is meant to answer a question like the following:

"Over the next day, what is the percentage loss on our position such that there is only a  $5\%$  chance that we will do worse?"

Common alternatives are to use a 10 day horizon or a  $1\%$  probability cutoff.

The calculation is easy, if we have an estimate of the standard deviation of our portfolio's return for the desired horizon.

# Value at Risk

Example: Suppose our portfolio is currently worth \(50 million and its 1-day standard deviation is \(1.2\%\). The \(5\%\) tail cutoff for a normal distribution is 1.65 standard deviations.

$$
\begin{array}{l} \mathrm{VaR} = (5 \% \text {tail cutoff}) \times (1 - \text {day std dev}) \\ = 1.65 \times 1.2 \% = 1.98 \% \\ = 0. 0 1 9 8 \times \$ 5 0 \text {m i l l i o n} = \$ 9 9 0, 0 0 0 \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/05a0e9ac-eef1-40f4-a2fe-d8a83145f0c1/e86a0165ecc250e16966ee6647f8c8584cca8aafebc030841bc10c20f3b78050.jpg)

Standard Normal Probability

# Some Fundamental Problems in using VaR and Other Risk Measures

# Volatility forecast error

Volatility and correlation are very hard to forecast accurately. Among other things, they change randomly over time.

# - Actual security returns have "fat tails"

The true probability of a big event may be a lot higher than the normal or lognormal distributions predict.

# Model Risk

Models are needed to connect individual security values to the benchmark risk factors that are fitted to the data.

# Nonlinearity Effects

An option's response to a change in the price of its underlying is nonlinear. A  $2\%$  change in the S&P index might cause a change in price change for an SPX option that is much greater than twice the response to a  $1\%$  change in the index.

# Hedging

Diversification reduces risk but only in a limited way, by spreading it out. Correlation due to exposure to a common risk factor, like returns on the broad stock market, cannot be eliminated by diversification.

Hedging is a more direct approach. A hedge is a position that is adopted specifically to offset risk exposure on one's primary position.

Derivative instruments are designed for hedging

- **forward contracts:** eliminate risk by locking in a future value for the underlying position;
- futures: eliminate much of the risk, by producing a cash flow that offsets the change in the value of the underlying position;
- options: allow one to tailor risk exposure more precisely, e.g., limiting downside risk while keeping profitability on the upside.

We will start by looking at risk management strategies using forwards and futures.

# Futures versus Forwards

Futures contracts and forward contracts are almost the same thing …

- Binding contract: buyer (the "long") and seller (the "short") commit to trade the underlying on a future date
- Terms and conditions are all set at the outset

price

quantity

- maturity date
exactly what will be delivered and how delivery will take place
delivery options.

# Futures versus Forwards

…but there are some critical differences in how they are traded

- Exchange traded: futures are traded on organized exchanges; forwards are over-the-counter deals between two counterparties
- Futures have greater liquidity but less flexibility than forwards
- futures contracts are standardized
exchange Clearing House becomes the counterparty to every contract ("nobation")

- Delivery of the underlying is rare: hedgers don't really want the exact terms of the standardized contract; most futures contracts are closed out by taking an offsetting position in the futures market before delivery date
Counterparty credit risk is eliminated

$\circ$  Collateral: must be posted by both counterparties (margin requirements).

- futures margin is collateral, not a down payment (different from margins on stock!)
- the required margin is set no higher than is needed to protect the exchange, given the price volatility of the underlying asset (so futures are highly leveraged)
- Contracts are marked to market, and required margin is updated daily
- BUT! With the Dodd-Frank regulations OTC forwards also have to be brought into "central clearing" (Although the trade is between two private counterparties, it must be registered with a CCP (Central Clearing counterParty) collateralized and marked to market.)

# Futures and Forwards

# Major classes of instruments with active forward markets

- foreign currencies (markets made by major international banks)
U.S. government securities and corporate bonds
- tailor-made ("bespoke") contracts (contracts on very specific financial instruments or other assets, or with nonstandard terms)
- interest rate derivatives ( swaps, caps, and floors)
credit default swaps (CDS)

# Major futures markets

- Treasury bonds and notes
- Eurodollar futures (LIBOR--i.e., short term interest rates)
Stock index futures
- Agricultural, energy, and industrial commodities
- (now) Volatility

# Hedging with Forwards: An Example

A Swiss institutional investor is holding a portfolio of U.S. Treasury bonds. Today's date is June 1 and the bonds will pay off \(24 million at maturity in 6 months, on December 1. At that time, the proceeds will be converted into Swiss francs (CHF) for repatriation to Switzerland.

The spot exchange rate is 1.0414 (dollars per franc).

If the transaction could be done at today's exchange rate, the proceeds would be:

$$
\$ 24.0 million / 1.0414 = \text {CHF} 23.046 \text {million}.
$$

But since the rate can change during the next 6 months, the position is exposed to exchange rate risk.

The investor would like to eliminate this risk exposure.

# Hedging with Forwards: An Example, p.2

Exchange rate risk exposure: If the Swiss franc rises relative to the dollar, exchanging \$24.0 million into Swiss francs would yield less than the current value of CHF 23.046 million.

Solution: Hedge the exchange rate risk by entering into a forward contract with a bank, to exchange dollars for Swiss francs on December 1. The exchange rate will be fixed at the level of the 6-month forward rate in the market today, June 1.

# The Forward Exchange Rate:

- The forward exchange rate in the market will normally be different from today's spot rate, but the value is at least known and locked in today, which removes the risk exposure.
- Suppose the forward rate is 1.0500. Selling \$24.0 million forward would lock in proceeds of 24.0 / 1.0500 = CHF 22.857 million.

# Spot Rates versus Forward Rates

Why is the forward exchange rate higher than the spot rate in this case?

- Maybe the market expects the exchange rate on the Swiss franc to rise over the next 6 months.
- Or, it could be the cost of insurance: A risk averse investor is willing to pay a premium to eliminate exchange rate risk.
- It could be because the forward rate is determined by arbitrage, as a function of the interest rate differential between the two countries.
- For freely floating exchange rates like the Swiss franc*, the third explanation would be the correct one. Some currencies, like the Chinese RMB*, have not always floated freely. In that case, the forward exchange rate built in the market's expectations about whether the RMB would be allowed to appreciate relative to the USD during the life of the contract.

* Note: In the mid-2010s, China began to allow the RMB to float (sort of), while in Jan. 2015, the Swiss revalued their exchange rate upward against the Euro in a surprise move.

# Hedging with Futures: An Example

Consider Ms. Jones, a jewelry manufacturer who is holding an inventory of 1000 ounces of gold and worries that the market price of gold may fall.

# Hedge Strategy:

On November 15, she sells 10 100-ounce December gold futures contracts at the New York Mercantile Exchange (NYMEX) at a price of \$1379.00 per ounce.

The hedged position is held for short time and lifted on Nov. 26.

# The Mechanics of a Gold Futures Trade

# 1. The Initial Trade, Nov 15

Ms. Jones sells 10 DEC gold futures contracts to Trader B at a price of 1379.00.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/05a0e9ac-eef1-40f4-a2fe-d8a83145f0c1/8e34cfaef0126873961d3eed637e9328fa98c4f3649cc43ba8dba610c5be70de.jpg)

The filled orders are reported to the Clearing House

## The Mechanics of a Gold Futures Trade, p.2

## 2. The trade is cleared

All contracts established on the exchange are cleared by the exchange Clearing House. The Clearing House becomes the counterparty to both traders. Both traders must post "initial margin" (a cash deposit as collateral) with the Clearing House.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/05a0e9ac-eef1-40f4-a2fe-d8a83145f0c1/fedfa1626d23e8f5b2fc4835fd4ab8b1eac50ae24f3ddfaa5a91f3b056f29c03.jpg)

Open Interest in this diagram is the sum of all contracts held by traders with long positions or the sum of all contracts held by traders with short contracts. The two are always equal.

## The Mechanics of a Gold Futures Trade, p.3

## 3. Over time

Every day all open positions are marked to market. The "paper" profits and losses from that day's futures price change are transferred from the margin accounts of the traders who lost that day to the winners ("variation margin"). If a trader's account falls below the "maintenance margin" level, he gets a margin call and must deposit enough additional funds to bring the account back up to the required initial margin level.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/05a0e9ac-eef1-40f4-a2fe-d8a83145f0c1/568de900c9d817df9dd098500bc6d59dd5419ea648d788c2934dac90e3ee2801.jpg)

Open Short Positions

Open Long Positions

## The Mechanics of a Gold Futures Trade, p.4

## 4. Unwinding the Position

Nov 26: Ms. Jones buys 10 DEC gold contracts at \$368.50 from Trader Z.

## Open Short Positions

## Open Long Positions

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/05a0e9ac-eef1-40f4-a2fe-d8a83145f0c1/42b185b2fc151a2585e94625eda8027877423262cebe34ac13eefbd08f264802.jpg)

When the trade is cleared, Ms. Jones's offsetting positions are cancelled out. The \$10.50 per ounce profit has already been received as the contract was marked to market while it was open. Notice that the open interest remains the same because Trader Z opened a new position which replaced the one Ms. Jones closed.

Possible Hedge Results for a Large Price Change: Ms. Jones had to post \$1500 per contract initial margin to open the position. Suppose both the price of gold and the gold futures price had gone down all the way to \$1350 per ounce. What would the final value of the gold in her vault and the amount in her futures margin account have been?

<table><tr><td></td><td>Nov. 15</td><td>Change</td><td>Nov. 26</td></tr><tr><td>Gold Spot Price</td><td>1379.10</td><td>-29.10</td><td>1350.00</td></tr><tr><td>Value of Gold in the Vault</td><td>$1,379,100</td><td>-$29,100</td><td>\$1350,000</td></tr><tr><td>DEC Gold Futures Price</td><td>1379.00</td><td>- 29.00</td><td>1350.00</td></tr><tr><td>Futures Margin Account</td><td>1500 x 10 = $15,000</td><td>(-1000)(-29.00) == $29,000</td><td>\$29,000
(+ initial
\$15,000)</td></tr><tr><td>Total Value of Hedged Position</td><td>$1,379,100</td><td>- $100</td><td>\$1,379,000</td></tr></table>

## In-Class Exercise

An alternative possibility: Suppose that instead of dropping, both the price of gold and the gold futures price had gone up to \$400 per ounce. What would the ending value of the gold in her vault and the amount in her futures margin account have been? The required Maintenance margin is \$1000 per contract. Would she have gotten a margin call?

<table><tr><td></td><td>Nov. 15</td><td>Change</td><td>Nov. 26</td></tr><tr><td>Gold Spot Price</td><td>379.10</td><td>+20.90</td><td>400.00</td></tr><tr><td>Value of Gold in the Vault</td><td>\$379,100</td><td></td><td></td></tr><tr><td>DEC Gold Futures Price</td><td>379.00</td><td>+21.00</td><td>400.00</td></tr><tr><td>Futures Margin Account</td><td>1500 x 10 = \$15,000</td><td></td><td></td></tr><tr><td>Total Value of Hedged Position</td><td>\$379,100</td><td></td><td></td></tr></table>

## Important Details to Notice about a Futures Hedge

A futures hedge is actually two parallel positions traded separately.

- A hedge with a forward contract would end with delivery of the underlying gold to the counterparty (which would be really inconvenient for a jewelry maker!). But in a futures hedge, the cash position is liquidated at current prices in the cash market and the futures position is closed out by an offsetting trade in the futures market.
- Even with no delivery, the hedge works fine as long as the changes in the values of the two positions over the hedging period are of equal size and opposite sign.

The hedge instrument is standardized.

- It does not necessarily match exactly the position that is being hedged. (In this case, the hedge had to be lifted before the DEC futures contract matured.)
- The lack of exact match leads to hedging inaccuracy, known as "basis risk."

Margin must be posted on all futures positions by both counterparties.

- The margin account is marked to market daily so almost no credit risk exposure is allowed to build up on outstanding contracts.

## Designing a Futures Hedge

A hedge with forwards locks in a value for the item being hedged as of maturity date. A futures hedge allows some hedging error (basis risk).

We first consider how to set up a hedge if basis risk is not present.

## Some basic principles

- A loss on the item being hedged should be made up by a profit on the futures hedge position.
- The profits and losses must offset each other in dollars. This is called "dollar equivalence."
- Losses on the futures are common in hedging. In a properly designed hedge, if there is a profit on the item being hedged, it should be offset by an equal-sized loss on the hedging instruments! This will occur about half the time.

## Dollar Equivalence in Hedge Design

The ideal hedge produces a profit that exactly offsets (in dollars) any loss experienced on the "spot" or "cash" position. The big question: How many futures contracts does this require?

$$
N_{F} = \text{number of futures contracts traded}
$$

Profit / loss on futures position $= N_{F} \times$ futures price change $\times$ size of futures contract

Profit / loss on spot position = spot price change $\times$ size of spot position

(Note that Position "size" is in physical units, like bushels or ounces or francs—whatever thing the price is the price of.)

These profits and losses should be of equal size and opposite sign:

$$
N_{F} \times \Delta F \times \text{contract size} = - \Delta P \times \text{spot position size}
$$

Solving for $N_{F}$ gives

$$
N_{F} = - \left(\frac{\Delta P}{\Delta F}\right) \times \left(\frac{\text{cash position size}}{\text{futures contract size}}\right)
$$

Important: We don't know the price changes $\Delta P$ and $\Delta F$ ahead of time, but we often know something about their ratio. For example, if futures and cash prices always change exactly together and by the same amount, the ratio will be 1. To use the dollar equivalence approach, we only need to know $\Delta P / \Delta F$.

## The Simplest Example: Hedging Equal Quantities (Physical Commodities, Foreign Exchange)

For some cases, dollar equivalence just calls for trading the same number of units in futures as are in the cash position being hedged (because $\Delta F = \Delta P$).

## Examples:

1. We want to hedge a holding of 1000 ounces of gold using 100-ounce gold futures contracts at the NYMEX. $N_{F} = -(1) \times (1000 \, \text{oz} / 100 \, \text{oz}) \Rightarrow$

$$
\text{Sell } 1000 / 100 = 10 \text{ futures contracts}.
$$

2. We wish to lock in a future exchange rate on \$24.0 million to be converted to Swiss francs. The forward rate (or futures price) is 1.0500.

$$
\text{Buy forward} \quad \$24.0 \text{ million } / 1.0500 = \text{CHF } 22.857 \text{ million}
$$

Using the 125,000-franc futures contracts at the Chicago Mercantile Exchange, we should go long $\frac{22,857,000}{125,000} = 183$ contracts.

## Sessions 3&4: Managing Risk with Forwards and Futures

## Eurodollar Futures September 2, 2016

## Chicago Mercantile Exchange

## Underlying instrument

- Special index of 90 day Euro \$ deposit rates (LIBOR)

## Futures Prices

Quoted as 100 minus interest rate

- Tick = 0.01 = \$25.00 (half ticks are used now because rates are so low, and quarter ticks for near maturities.)

## Quantity

\$1 million ("notional principal")

## Expiration dates

Monthly for next 4 months, then every March, June, September, December

- 2 London business days before 3rd Wednesday of the expiration month.
- Contracts currently traded for maturities up to 10 years.

## Delivery

- Cash settlement only
- No delivery options

<table><tr><td>Month</td><td>Open</td><td>High</td><td>Low</td><td>Last</td><td>Change</td><td>Settle</td><td>Estimate d Volume</td><td>Prior Day Open Interest</td></tr><tr><td colspan="9">Last Updated: Friday, 02 Sep 2016 02:30 PM</td></tr><tr><td>16-Sep</td><td>99.1275</td><td>99.17</td><td>99.1225</td><td>99.14</td><td>0.01</td><td>99.1375</td><td>368,670</td><td>1,084,257</td></tr><tr><td>16-Oct</td><td>99.1</td><td>99.135</td><td>99.095</td><td>99.105</td><td>0.005</td><td>99.1</td><td>29,020</td><td>134,713</td></tr><tr><td>16-Nov</td><td>99.09</td><td>99.11</td><td>99.085</td><td>99.09</td><td>UNCH</td><td>99.09</td><td>12,240</td><td>26,805</td></tr><tr><td>16-Dec</td><td>99.06</td><td>99.115</td><td>99.05</td><td>99.055</td><td>-0.01</td><td>99.055</td><td>401,421</td><td>1,522,347</td></tr><tr><td>17-Jan</td><td>-</td><td>99.0900B</td><td>-</td><td>99.0500A</td><td>-0.005</td><td>99.04</td><td>0</td><td>150</td></tr><tr><td>17-Feb</td><td>-</td><td>99.0750B</td><td>99.0300A</td><td>99.0300A</td><td>-0.005</td><td>99.03</td><td>0</td><td>0</td></tr><tr><td>17-Mar</td><td>99.02</td><td>99.085</td><td>99</td><td>99.01</td><td>-0.01</td><td>99.01</td><td>289,682</td><td>1,102,568</td></tr><tr><td>17-Jun</td><td>98.975</td><td>99.055</td><td>98.955</td><td>98.965</td><td>-0.005</td><td>98.97</td><td>219,701</td><td>1,011,804</td></tr><tr><td>17-Sep</td><td>98.93</td><td>99.015</td><td>98.915</td><td>98.925</td><td>UNCH</td><td>98.93</td><td>214,153</td><td>860,533</td></tr><tr><td>17-Dec</td><td>98.885</td><td>98.97</td><td>98.865</td><td>98.885</td><td>UNCH</td><td>98.885</td><td>263,645</td><td>1,332,003</td></tr><tr><td>18-Mar</td><td>98.865</td><td>98.945</td><td>98.84</td><td>98.86</td><td>0.005</td><td>98.865</td><td>142,638</td><td>635,236</td></tr><tr><td>18-Jun</td><td>98.835</td><td>98.915</td><td>98.805</td><td>98.83</td><td>0.005</td><td>98.835</td><td>140,166</td><td>493,443</td></tr><tr><td>18-Sep</td><td>98.795</td><td>98.885</td><td>98.77</td><td>98.795</td><td>0.005</td><td>98.8</td><td>135,613</td><td>456,728</td></tr><tr><td>18-Dec</td><td>98.75</td><td>98.84</td><td>98.725</td><td>98.755</td><td>0.01</td><td>98.76</td><td>129,927</td><td>616,586</td></tr><tr><td>19-Mar</td><td>98.725</td><td>98.8</td><td>98.7</td><td>98.73</td><td>0.01</td><td>98.735</td><td>90,655</td><td>410,653</td></tr><tr><td>19-Jun</td><td>98.69</td><td>98.765</td><td>98.665</td><td>98.695</td><td>0.01</td><td>98.705</td><td>88,272</td><td>319,744</td></tr><tr><td>19-Sep</td><td>98.655</td><td>98.735</td><td>98.625</td><td>98.66</td><td>0.01</td><td>98.67</td><td>57,454</td><td>246,531</td></tr><tr><td>19-Dec</td><td>98.615</td><td>98.695</td><td>98.58</td><td>98.615</td><td>0.005</td><td>98.625</td><td>62,491</td><td>266,208</td></tr><tr><td>20-Mar</td><td>98.59</td><td>98.64</td><td>98.55</td><td>98.585</td><td>0.005</td><td>98.595</td><td>32,079</td><td>144,450</td></tr><tr><td>20-Jun</td><td>98.555</td><td>98.615</td><td>98.51</td><td>98.55</td><td>0.005</td><td>98.56</td><td>38,811</td><td>101,479</td></tr><tr><td>20-Sep</td><td>98.52</td><td>98.575</td><td>98.475</td><td>98.51</td><td>0.005</td><td>98.525</td><td>24,590</td><td>80,262</td></tr><tr><td>20-Dec</td><td>98.48</td><td>98.54</td><td>98.43</td><td>98.47</td><td>UNCH</td><td>98.48</td><td>23,916</td><td>101,896</td></tr><tr><td>21-Mar</td><td>98.445</td><td>98.49</td><td>98.395</td><td>98.43</td><td>-0.005</td><td>98.445</td><td>17,797</td><td>55,127</td></tr><tr><td>21-Jun</td><td>98.41</td><td>98.465</td><td>98.355</td><td>98.395</td><td>-0.01</td><td>98.405</td><td>21,984</td><td>54,261</td></tr><tr><td>21-Sep</td><td>98.355</td><td>98.41</td><td>98.32</td><td>98.3550A</td><td>-0.01</td><td>98.365</td><td>2,132</td><td>24,659</td></tr><tr><td>21-Dec</td><td>98.31</td><td>98.36</td><td>98.28</td><td>98.3150A</td><td>-0.01</td><td>98.325</td><td>1,717</td><td>18,623</td></tr><tr><td>22-Mar</td><td>98.28</td><td>98.355</td><td>98.245</td><td>98.285</td><td>-0.01</td><td>98.295</td><td>1,281</td><td>11,884</td></tr><tr><td>22-Jun</td><td>98.27</td><td>98.315</td><td>98.215</td><td>98.25</td><td>-0.015</td><td>98.26</td><td>1,264</td><td>6,558</td></tr><tr><td>22-Sep</td><td>98.26</td><td>98.2700B</td><td>98.185</td><td>98.225</td><td>-0.015</td><td>98.23</td><td>134</td><td>4,916</td></tr><tr><td>22-Dec</td><td>98.21</td><td>98.23</td><td>98.155</td><td>98.185</td><td>-0.015</td><td>98.2</td><td>135</td><td>5,616</td></tr><tr><td>23-Mar</td><td>98.21</td><td>98.215</td><td>98.135</td><td>98.1700B</td><td>-0.015</td><td>98.18</td><td>130</td><td>4,937</td></tr><tr><td>23-Jun</td><td>98.165</td><td>98.1850B</td><td>98.11</td><td>98.14</td><td>-0.02</td><td>98.15</td><td>85</td><td>840</td></tr><tr><td>23-Sep</td><td>98.12</td><td>98.175</td><td>98.1100A</td><td>98.1100A</td><td>-0.02</td><td>98.125</td><td>42</td><td>1,365</td></tr></table>

## Example: Hedging the Repricing of a Swap Payment with Eurodollar Futures

Suppose your firm is paying a fixed rate of 2.70 percent and receiving 6 month US dollar LIBOR on a \$50 million swap. Repricing is every 6 months.

[What is an interest rate swap? A swap is a contract in which periodically (e.g., every 6 months), the two counterparties exchange ("swap") two cash amounts calculated as the interest for that period on a given "notional" principal (e.g., \$50 million) using two different interest rates. Generally one rate is fixed and the other is floating (e.g, 2.70% fixed annual rate versus 6 month LIBOR).]

At next March's repricing, the floating rate will be reset to the level of 6 month LIBOR in the market on that date. You want to use Eurodollar futures to hedge the interest rate risk on the swap payment that will be based on that rate.

## Example: Hedging with Eurodollar Futures, p.2

## An important first question

Considering the risk and the instruments involved and how the Eurodollar futures contract works, do you want to buy Eurodollar futures or sell Eurodollar futures?

Is figuring out the answer to this obvious question harder than you might have thought? One way to unravel the complexity is to apply "Figlewski's Rule."

## "Figlewski's Rule"

## A Rule of Thumb for Avoiding Really Stupid Mistakes in Hedge Design

To avoid selling futures when you really ought to buy them, or buying futures when you really should sell, break the thought process into two parts:

1. Figure out what you are afraid might happen that will hurt the position you want to hedge.

Then,

2. Take a futures position that will make money if what you are afraid of in step 1 actually does happen.

How does Figlewski's Rule work in this case?

## Example: Hedging with Eurodollar Futures, p.3

## How many contracts should you trade?

A Eurodollar futures contract = \$1 million principal value and the swap notional principal is \$50 million. Do you trade 50 contracts?

No. We need dollar equivalence. Since the repricing interval is 6 months, a 1 basis point change in 6 month LIBOR translates to a dollar change in the floating payment equal to

$$
0.0001 \times (180 / 360) \times \$50,000,000 = \$2500
$$

A 1 basis point change in the Eurodollar futures price is

$$
0.0001 \times (90 / 360) \times \$1,000,000 = \$25 \text{ per contract}
$$

To achieve dollar equivalence, so that the futures hedge offsets the change in dollar value of the swap payment, you need to trade

$$
\$2500 / 25 = \underline{100 \text{ contracts}}
$$

## Example: Hedging with Eurodollar Futures, p.4

## Other issues to think about

What if the repricing date does not correspond to a futures expiration date?

Suppose the swap repricing date is in April. Do you trade March futures or June futures? Use the Junes or else your hedge stops in March.

- What if 3 month LIBOR is more volatile than 6 month LIBOR?
Suppose that when 6 month LIBOR moves by 10 basis points, 3 month LIBOR typically moves by 12 basis points. You would only need (10/12) times as many 3-month LIBOR contract as if they moved one for one.
What if 3 month and 6 month LIBOR sometimes move in different directions?
- You're stuck. This is "basis risk". More generally, the two might move in the same direction but in a ratio different from what you expected.
- What if the swap payment that is tied to the March LIBOR rate will be made at the end of the 6 month period (as is normal) rather than at the beginning?
Dollar equivalence requires that the dollar amounts offset and also that the comparison must be done for the same date. This situation requires an adjustment to the hedge ratio.

## Sessions 3&4: Managing Risk with Forwards and Futures

<table><tr><td colspan="11">US Treasury Bond Futures September 2, 2016
Chicago Board of Trade</td></tr><tr><td rowspan="6"></td><td>Month</td><td>Open</td><td>High</td><td>Low</td><td>Last</td><td>Change</td><td>Settle</td><td>Estimated Volume</td><td>Prior Day
Open
Interest</td><td rowspan="6"></td></tr><tr><td colspan="9">Last Updated: Friday, 02 Sep 2016 03:02 PM</td></tr><tr><td>16-Sep</td><td>171&#x27;29</td><td>172&#x27;25</td><td>170&#x27;08</td><td>170&#x27;26</td><td>-31</td><td>170&#x27;31</td><td>13,139</td><td>14,325</td></tr><tr><td>16-Dec</td><td>170&#x27;16</td><td>171&#x27;07</td><td>168&#x27;25</td><td>169&#x27;10</td><td>-31</td><td>169&#x27;16</td><td>556,260</td><td>548,855</td></tr><tr><td>17-Mar</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-31</td><td>168&#x27;12</td><td>0</td><td>0</td></tr><tr><td>Total</td><td></td><td></td><td></td><td></td><td></td><td></td><td>569,399</td><td>563,180</td></tr><tr><td colspan="5">Underlying instrument
- 20 year 6 percent coupon U.S. Treasury bond
Futures Prices
- Quoted as % of 100
- Tick = 1/32 = \$31.25; 1 point = \$1000
Quantity
- \$100,000 face value
Expiration dates
- March, June, September, December
- 7 business days before end of expiration month.</td><td colspan="6">Delivery options
- Quality option: Any T-Bond with between 15 and 25 years to maturity can be delivered.
- Timing option: Delivery can be made on any business day in the expiration month.
- &quot;Wild card&quot; option: The decision to deliver and get paid the settlement price can be made well after the futures market closes.</td></tr></table>

## Dollar Equivalence in a Hedge with T-Bond Futures

How many T-bond futures contracts, $N_F$, should we trade to hedge a given bond position? For dollar equivalence, we want

$$
N_{F} = - \left(\frac{\Delta P}{\Delta F}\right) \times \left(\frac{\text{cash position size}}{\text{futures contract size}}\right)
$$

How should we figure out the ratio of price changes in this equation? Because of differences in coupon or maturity, prices and price changes won't be equal for similar bonds, but their yields and changes in yields will be. The hedge has to be adjusted for the difference in price sensitivities between the cash position and the future.

The price change associated with a given yield movement can be easily computed. It is known as the "price equivalent of a basis point" or sometimes the "dollar value of an 01" (DV01) or the "present value of an 01" (PV01). If we assume that the yields on the position to be hedged and the futures contract will move by the same number of basis points (b.p.), then the number of contracts to trade will be

$$
N_{F} = - \left(\frac{\text{price equivalent of 1 b.p. for cash}}{\text{price equivalent of 1 b.p. for future}}\right) \times \left(\frac{\text{cash position size}}{\text{futures contract size}}\right)
$$

## Example: Hedging a 20 Year Zero Coupon Bond with T-Bond Futures

Suppose we want to use T-bond futures to hedge a long position in \$100 million face value of 20 year zero coupon Treasury bonds. (Assume the future is for a 20 year 6% bond. We will discuss which T-bond will actually be delivered against a futures contract in a later session.)

<table><tr><td>Initial Conditions</td><td>Zero coupon</td><td>Future (6%)</td></tr><tr><td>Price</td><td>35.093</td><td>108.503</td></tr><tr><td>Yield</td><td>5.305</td><td>5.305</td></tr><tr><td>Position value</td><td>\$35.093 million</td><td></td></tr></table>

Suppose the yields each rise 1 basis point We compute

<table><tr><td>New price @5.315%</td><td>35.025</td><td>108.374</td></tr><tr><td>Price change (DV01)</td><td>0.0683</td><td>0.129</td></tr></table>

Although a rise in the yield causes the bond price to fall, by convention DV01 is expressed as a positive number.

## Example: Hedging a 20 Year Zero with T-Bond Futures, p.2

$$
N_F = - \left( \frac{\text{price equivalent of 1 b.p. for cash}}{\text{price equivalent of 1 b.p. for future}} \right) \times \left( \frac{\text{cash position size}}{\text{futures contract size}} \right)
$$

To achieve dollar equivalence, we trade $-(0.0683 / 0.129) = -0.528$ dollars of face value of futures per dollar of face value of the zero. This is called the "hedge ratio." (The minus sign means you trade futures in the opposite direction to your cash position.)

$$
N_{F} = - \left(\frac{0.0683}{0.129}\right) \times \left(\frac{\$100,000,000 \text{ face value of cash}}{\$100,000 \text{ face value of futures contract}}\right) = \text{Sell 528 contracts}
$$

## Example: Hedging the Refinancing Rate for a Maturing Debt Issue

The XYZ Corporation has a \$50 million face value long term bond issue that is maturing in June. They plan to issue a new 20 year bond to replace it, but are worried that interest rates will rise before then. They want to hedge against an increase in rates using Treasury bond futures. (When rates go up, prices of existing bonds fall and new bond issues have to pay higher coupons.)

Today's Date: December 12

Bond Data:

Futures Data:

Issue date: June 15

Contract: June U.S. Treasury bond

Maturity: 20 years

Maturity: 20 years

Coupon: 120 basis points above yield on 20 year Treasury

Coupon: 6.00

(Note: coupons are semiannual (even with zero coupon bonds!), which affects yield and duration calculations.)

Price at current rates: 100

Price at current rates: 98 24/32

Yield at current rates: 7.31

Yield at current rates: 6.11

Price Equiv of 1 b.p.: .1042

Price Equiv of 1 b.p.: .1134

## Example: Hedging the Refinancing Rate for a Maturing Debt Issue, p.2

Buy/Sell: Since the worry is that rates will rise, the hedge must sell bond futures so that the hedge will profit if rates do rise.

Hedge Ratio: To achieve dollar equivalence, we want the same dollar change in value when rates change by the same number of basis points.

Sell $1.1042 / .1134 = 0.918$ units of futures per unit of bonds.

Number of Contracts: Sell $0.918 \times (50,000,000 / 100,000) = 459$ contracts

Result: Suppose the 20 year Treasury rate rises to 7.50 percent by June. Our bonds will now have to yield 8.70 percent.

- The price of a 7.31 percent coupon 20 year bond is now 86.93. Issuing \$50 million face value of that bond would only raise \$43,466,000. The interest rate increase has cost us \$6,534,000.
- The futures price has also fallen, to 84.59 at the new rates. This produces a profit of 14.16 per \$100 face value, for a total of 14.16 x 1000 x 459 = \$6,499,000.
- The dollar equivalent hedge has protected against the rise in interest rates, as it was designed to do. The overall shortfall is only about \$35,000 (which is due to rounding error here).

Dollar equivalence dictates hedge design when there is no basis risk and a riskless hedge is possible.

In practice, unfortunately, basis risk is the norm and hedging involves trading off exposure to price level risk on the item being hedged, versus exposure to relative price risk between the item being hedged and the futures contract.

We now introduce statistical hedging, the use of probability theory and statistical estimation to design a hedged position with minimum overall risk.

## Traditional Course Joke

The only place you will ever find a perfect hedge

is in a Japanese garden.

- Wall Street saying

Consider hedging a long position in 1000 ounces of gold by selling 100-ounce gold futures contracts.

We can eliminate basis risk if we actually deliver gold when the futures contracts mature.

The "hedge ratio" h is the fraction of the position hedged.

Selling different numbers of futures traces out the risk-return tradeoff line for this hedge.

- The initial Unhedged position has $h = 0$.
- Selling $1000 / 100 = 10$ futures contracts, $h = 1.0$, would fully hedge the position.

Because there is no risk, the return should equal the current riskless interest rate in the market.

- Selling less than 10 contracts would produce a partial hedge, with some risk exposure but less than the original position.

Risk and Return in a Perfect Hedge

Expected return E[R]

Riskless rate r

Fully hedged position, $h = 1.0$

Unhedged position h = 0 Partial hedge h = 0.5

Standard deviation $\sigma$

## The Basis and Basis Risk in a Gold Futures Hedge, p.1

Recall Ms. Jones, the jewelry manufacturer who is holding an inventory of 1000 ounces of gold and worries that the market price of gold may fall.

Hedge Strategy:

On November 15, she sells 10 100-ounce December gold futures contracts at the NYMEX in New York.

The hedged position is held for short time and lifted on Nov. 26.

Note: This example uses actual market prices from November 1996.

# The Basis and Basis Risk in a Gold Futures Hedge, p.2

Hedge Results:

<table><tr><td></td><td>Nov. 15</td><td>Nov. 26</td><td>Change</td></tr><tr><td>Gold Spot Price</td><td>379.10</td><td>367.40</td><td>-11.70</td></tr><tr><td>DEC Gold Futures Price</td><td>379.00</td><td>368.50</td><td>-10.50</td></tr><tr><td>Value of Gold in the Vault</td><td>$379,100</td><td>$367,400</td><td>- \$11,700</td></tr><tr><td>Profit on Short Sale of 10
DEC Gold Futures Contracts</td><td>-</td><td>$10,500</td><td>+ $10,500</td></tr><tr><td>Total Value of Hedged Position</td><td>$379,100</td><td>$377,900</td><td>- \$1,200</td></tr></table>

# The Basis and Basis Risk in a Gold Futures Hedge, p.4

# Discussion:

The hedging discrepancy was due to an unfavorable change in the price difference between the future and the cash, which is known as the basis. Futures changed from being 0.10 under cash to 1.10 over cash.

The basis is defined either as (S - F) or as (F - S), depending on the market (e.g., it is (S - F) for agricultural commodities, but (F - S) for S&P stock index futures).

At futures maturity, the futures price must equal the cash price (for the specific grade of commodity or item that will actually be delivered). This is called convergence.

But in most hedges, the cash and the futures legs are lifted separately, before futures maturity, which produces basis risk. A hedger trades off exposure to market risk on the cash position against basis risk on the difference between the underlying and the future.

Before expiration how are the cash price and the futures price connected? Answer: By arbitrage between the cash market and the futures market.

# When there is basis risk

- A riskless hedge is not possible
- Selling different numbers of futures traces out a risk-return tradeoff curve for the hedge.
- There is a minimum risk hedge ratio,  $h^*$ , which is usually considered the optimal hedge. (But is it optimal?)
- Typically, if the hedged position is calculated as if there were no basis risk, it will lie on the under side of the curve. That would be an overhedged position.

Risk - Return Tradeoff in an Actual Hedge

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/05a0e9ac-eef1-40f4-a2fe-d8a83145f0c1/3d7f9255d45329cfdb327a729ac08daf8412cfda11e8e5e997f14a297fe735b3.jpg)

Standard deviation  $\sigma$

Computing Risk and Expected Return in a Hedged Position, p.1

Let  $\mathrm{R} =$  return (either the  $\%$  rate of return or the dollar price change per unit; the same equations hold either way)

S,  $\mathrm{F} =$  spot and futures prices, respectively

$\mathrm{h} =$  hedge ratio (units of futures per unit of cash position; in these notes positive h means the futures position is opposite to the cash position, e.g., take a short futures position to hedge a long cash position)

returns in $ returns in %

Return on the cash position:  $\mathrm{R}_{\mathrm{S}} = \mathrm{S}_{1} - \mathrm{S}_{0} = \Delta \mathrm{S}$  (or  $\mathrm{S}_{1} / \mathrm{S}_{0} - 1$  )

Return on future:  $\mathrm{R}_{\mathrm{F}} = \mathrm{F}_{1} - \mathrm{F}_{0} = \Delta \mathrm{F}$  (or  $\mathrm{F}_{1} / \mathrm{F}_{0} - 1$ )

Return on hedged position:  $\mathrm{R_H} = \mathrm{R_S} - \mathrm{hR_F}$

# Computing Risk and Expected Return in a Hedged Position, p.2

Return on hedged position:  $\mathrm{R_H} = \mathrm{R_S} - \mathrm{hR_F}$

Expected return on hedged position:  $\mathrm{E}\left[\mathrm{R}_{\mathrm{H}}\right] = \mathrm{E}\left[\mathrm{R}_{\mathrm{S}}\right] - \mathrm{h}\mathrm{E}\left[\mathrm{R}_{\mathrm{F}}\right]$

Variance of hedge return:  $\sigma_{\mathrm{H}}^{2} = \sigma_{\mathrm{S}}^{2} + \mathrm{h}^{2}\sigma_{\mathrm{F}}^{2} - 2\mathrm{h}\rho \sigma_{\mathrm{S}}\sigma_{\mathrm{F}}$

Hedge standard deviation:  $\sigma_{\mathrm{H}} = \sqrt{\sigma_{\mathrm{H}}^{2}}$

# The Risk Minimizing Hedge

Call the hedge ratio that minimizes variance of the hedged position  $h^*$ .

We can derive an expression for  $h^*$  using calculus, by setting the derivative of hedge variance with respect to  $h$  equal to 0:

$$
\frac {\mathrm {d} \sigma_ {\mathrm {H}} ^ {2}}{\mathrm {d h}} = \frac {\mathrm {d}}{\mathrm {d h}} \left(\sigma_ {\mathrm {S}} ^ {2} + \mathrm {h} ^ {2} \sigma_ {\mathrm {F}} ^ {2} - 2 \mathrm {h} \rho \sigma_ {\mathrm {S}} \sigma_ {\mathrm {F}}\right) = 0
$$

$$
2 \mathrm {h} ^ {*} \sigma_ {\mathrm {F}} ^ {2} - 2 \rho \sigma_ {\mathrm {S}} \sigma_ {\mathrm {F}} = 0
$$

Minimum risk hedge ratio:  $\mathrm{h}^{*} = \frac{\rho \sigma_{\mathrm{S}} \sigma_{\mathrm{F}}}{\sigma_{\mathrm{F}}^{2}} = \rho \frac{\sigma_{\mathrm{S}}}{\sigma_{\mathrm{F}}}$

An equivalent expression:  $\mathrm{h}^{*} = \frac{\mathrm{COV}\left[\mathrm{R}_{\mathrm{S}}, \mathrm{R}_{\mathrm{F}}\right]}{\mathrm{VAR}\left[\mathrm{R}_{\mathrm{F}}\right]}$

# Sessions 3&4: Managing Risk with Forwards and Futures

Standard and Poor's Stock Index Futures September 2, 2016 Chicago Mercantile Exchange

<table><tr><td rowspan="8"></td><td>Month</td><td>Open</td><td>High</td><td>Low</td><td>Last</td><td>Change</td><td>Settle</td><td>Estimate
d Volume</td><td>Prior Day Open
Interest</td></tr><tr><td colspan="9">Last Updated: Friday, 02 Sep 2016 03:02 PM</td></tr><tr><td>16-Sep</td><td>2169</td><td>2176.90B</td><td>2155.5</td><td>2167.5</td><td>-2.2</td><td>2167.3</td><td>5,727</td><td>95,677</td></tr><tr><td>16-Dec</td><td>2156</td><td>2163.80B</td><td>2149.30A</td><td>2161</td><td>-2.1</td><td>2160.2</td><td>203</td><td>4,029</td></tr><tr><td>17-Mar</td><td>-</td><td>2157.50B</td><td>2143.00A</td><td>2152.50B</td><td>-2.1</td><td>2153.9</td><td>0</td><td>60</td></tr><tr><td>17-Jun</td><td>-</td><td>2151.60B</td><td>2137.10A</td><td>2146.60B</td><td>-2.1</td><td>2148</td><td>0</td><td>60</td></tr><tr><td>17-Sep</td><td>-</td><td>2148.40B</td><td>2133.90A</td><td>2143.40B</td><td>-2.1</td><td>2144.8</td><td>0</td><td>0</td></tr><tr><td>17-Dec</td><td>-</td><td>2147.60B</td><td>2133.10A</td><td>2142.60B</td><td>-2.1</td><td>2144</td><td>0</td><td>0</td></tr><tr><td colspan="5">Underlying instrument
Standard and Poor&#x27;s 500 stock index portfolio
Futures Prices
- Level of the S&amp;P Index
- Tick = 0.10 = \$25.00
Quantity
- \$250 times the index
(formerly \$500 times the index)</td><td colspan="5">Expiration dates
3rd Friday of
- March, June, September, December
Delivery options
- Cash settlement only (at &quot;Special Opening
Quotation&quot;)
- No delivery options</td></tr></table>

# Estimating the Risk Minimizing Hedge by Least Squares Regression

When you are using historical returns data to estimate the minimum risk hedge, the easiest way to find  $h^*$  is simply by running an OLS regression of the price change (or % return) for the spot price regressed on the price change (or % return) for the future:

$$
\mathrm {R} _ {\mathrm {S}, \mathrm {t}} = \mathrm {c} + \mathrm {h} ^ {*} \mathrm {R} _ {\mathrm {F}, \mathrm {t}} + \varepsilon_ {\mathrm {t}}
$$

The return on the cash position is the dependent (left hand) variable and the return on the future is the explanatory (right hand) variable. The slope coefficient is mathematically equal to the  $h^*$  that would have minimized hedge variance over the sample period that the data comes from.

It is important (and less widely understood than it ought to be!) that this regression must be done on price changes or returns, NOT on prices.

$\varepsilon_{t}$  is the regression residual, which is hedging error. The "standard error of regression," which is the standard deviation of  $\varepsilon_{t}$ , and the regression  $R^2$  statistic are measures of basis risk, that indicate how good a hedge is likely to be.

<table><tr><td colspan="2">SUMMARY OUTPUT</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td rowspan="8" colspan="5">Excel Regression
% return of S&amp;P 500 index regressed on
% price change for nearby S&amp;P future;
Sep 1, 2010 - Sep 1, 2011</td><td></td></tr><tr><td colspan="2">Regression Statistics</td><td></td><td></td><td></td></tr><tr><td>Multiple R</td><td>0.98430689</td><td></td><td></td><td></td></tr><tr><td>R Square</td><td>0.96886005</td><td></td><td></td><td></td></tr><tr><td>Adjusted R Squ</td><td>0.96873935</td><td></td><td></td><td></td></tr><tr><td>Standard Error</td><td>0.00203738</td><td></td><td></td><td></td></tr><tr><td>Observations</td><td>260</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td></tr><tr><td>ANOVA</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td>df</td><td>SS</td><td>MS</td><td>F</td><td>Significance F</td><td></td><td></td><td></td><td></td></tr><tr><td>Regression</td><td>1</td><td>0.03332007</td><td>0.03332007</td><td>8027.1765</td><td>2.1905E-196</td><td></td><td></td><td></td><td></td></tr><tr><td>Residual</td><td>258</td><td>0.00107093</td><td>4.1509E-06</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Total</td><td>259</td><td>0.034391</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td>Coefficients</td><td>Standard Error</td><td>t Stat</td><td>P-value</td><td>Lower 95%</td><td>Upper 95%</td><td>Lower 95.0%</td><td>Upper 95.0%</td><td></td></tr><tr><td>Intercept</td><td>-4.118E-05</td><td>0.00012649</td><td>-0.3255261</td><td>0.74504678</td><td>-0.00029026</td><td>0.000207907</td><td>-0.0002903</td><td>0.00020791</td><td></td></tr><tr><td>X Variable 1</td><td>0.98514012</td><td>0.01099554</td><td>89.5945115</td><td>2.19E-196</td><td>0.96348769</td><td>1.006792558</td><td>0.96348769</td><td>1.00679256</td><td></td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/05a0e9ac-eef1-40f4-a2fe-d8a83145f0c1/498696e2871f3eff8b4b236583d400f21ec33796ac53ef978ac90677b0e0945f.jpg)

REGRESSION OF S&P 500 INDEX RETURN ON NEARBY S&P FUTURES RETURNS

<table><tr><td colspan="2">SUMMARY OUTPUT</td><td></td><td rowspan="9" colspan="5">Excel Regression
% return of NASDAQ index regressed on
% price change for nearby S&amp;P future;
Sep 1, 2010 - Sep 1, 2011</td><td></td></tr><tr><td></td><td></td><td></td><td></td></tr><tr><td colspan="2">Regression Statistics</td><td></td><td></td></tr><tr><td>Multiple R</td><td>0.95359144</td><td></td><td></td></tr><tr><td>R Square</td><td>0.90933664</td><td></td><td></td></tr><tr><td>Adjusted R Squ</td><td>0.90898524</td><td></td><td></td></tr><tr><td>Standard Error</td><td>0.00390219</td><td></td><td></td></tr><tr><td>Observations</td><td>260</td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td></tr><tr><td>ANOVA</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td>df</td><td>SS</td><td>MS</td><td>F</td><td>Significance F</td><td></td><td></td><td></td></tr><tr><td>Regression</td><td>1</td><td>0.03940305</td><td>0.03940305</td><td>2587.69214</td><td>1.6783E-136</td><td></td><td></td><td></td></tr><tr><td>Residual</td><td>258</td><td>0.00392859</td><td>1.5227E-05</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Total</td><td>259</td><td>0.04333164</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td>Coefficients</td><td>Standard Error</td><td>t Stat</td><td>P-value</td><td>Lower 95%</td><td>Upper 95%</td><td>Lower 95.0%</td><td>Upper 95.0%</td></tr><tr><td>Intercept</td><td>0.00011434</td><td>0.00024226</td><td>0.47194487</td><td>0.63736504</td><td>-0.00036273</td><td>0.000591404</td><td>-0.0003627</td><td>0.0005914</td></tr><tr><td>X Variable 1</td><td>1.07129722</td><td>0.02105977</td><td>50.8693635</td><td>1.678E-136</td><td>1.029826284</td><td>1.112768147</td><td>1.02982628</td><td>1.11276815</td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/05a0e9ac-eef1-40f4-a2fe-d8a83145f0c1/b46a0c53787e2b4027abda9248d2b3ac588bf4898c560c9546b1368f13fc0366.jpg)

REGRESSION OF NASDAQ INDEX RETURN ON NEARBY S&P FUTURES RETURNS

# The Number of Futures Contracts to Trade to Produce h*

$h^*$  may be computed from the correlation and standard deviations, or from a regression. The two techniques give mathematically identical  $h^*$  values.

Different h* values occur if "returns" are expressed as price changes per unit of underlying (as in $ per bushel), instead of percentage returns.

No matter how one obtains a value for  $\mathbf{h}^*$ , the number of futures contracts to trade to achieve that hedge ratio is

$$
\text {F u t u r e s c o n t r a c t s} = \mathrm {h} ^ {*} \times \frac {\text {S i z e o f c a s h p o s i t i o n}}{\text {S i z e o f o n e f u t u r e s c o n t r a c t}}
$$

For returns that are in dollars of price change per unit, the "sizes" of the positions must be in physical units also (bushels of wheat, ounces of gold, dollars face value of bonds).

For percentage returns, position size must be expressed in terms of dollars of market value.

# The Number of Futures Contracts to Trade to Produce h*, p.2

# Using Returns

The market value of your stock portfolio is \$50 million. A regression of the recent daily percentage returns of your portfolio's value regressed on the percentage changes in the S&P 500 index futures price produces a risk-minimizing hedge ratio of 1.25.

To achieve this h*, trade futures with a market value of \$1.25 for each \$1 market value of your cash position. You want to sell futures on 1.25 x \$50 million = \$62,500,000.

The current index futures price is 2100. One contract is for  \$250 times the index,$ 250 x 2100 = $525,000.

So you need to sell

$$
\mathrm {S e l l h} ^ {*} \times \frac {\mathrm {S M a r k e t v a l u e o f c a s h p o s i t i o n}}{\mathrm {S M a r k e t v a l u e o f o n e f u t u r e s c o n t r a c t}} = \frac {6 2 , 5 0 0 , 0 0 0}{5 2 5 , 0 0 0} = 1 1 9 \text {c o n t r a c t s}
$$

# Hedging Fine Points: Which Futures Contract to Use?

Other things equal, use a futures contract

- on the same underlying as your cash position;
- on the cash instrument most correlated with yours, if there is no future on your underlying;
- with the closest expiration following the maturity of your cash position.

Example: Hedge a position in long term Treasury bonds that will be unwound next May with the June T-bond contract.

The lower the correlation is between the future and your cash position, the greater the basis risk will be and the less effective the hedge.

The future should mature after the cash position to avoid your position becoming unhedged at futures expiration. The contract with the closest match in maturity will normally have the highest correlation with your position.

# Hedging Fine Points: When Would You Choose a Different Contract?

# Liquidity in the future is important

If the future on your underlying is illiquid, a cross-hedge using a close substitute may be better.

- For example, T-bond futures have often been used to hedge mortgage-backed securities, even when GNMA futures are available (but illiquid).

A rolling hedge may be used when a long maturity future is needed. Set up the hedge first with the longest maturity future that is liquid, then roll forward over time into more distant contracts as they become liquid.

- The rollover introduces new risks and costs, because the spread between contract months fluctuates;
- Hedge return may be enhanced by doing the rollover when the spread is favorable.

Strategies for hedging a sequence of cash flows, as in a swap:

- Strip hedge: Set the hedge up with each cash flow hedged by the matching maturity future.
- Stack and roll hedge: Begin with all of the future cash flows hedged in the same nearby contract. Roll portions of the hedge forward as more distant maturities become liquid.

# Important Concepts in Sessions 5-6

# Theories of Futures Price Determination

- Expectations and futures prices
The Cost of Carry Model

# Arbitrage: The single most important concept in the whole course

The definition of arbitrage

- How the possibility of arbitrage leads to the Cost of Carry model of futures pricing

# Arbitrage-based pricing of gold futures

# Pricing of foreign currency futures by covered interest parity

# Sessions 5-6: Futures Pricing and Cash-Futures Arbitrage

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/05a0e9ac-eef1-40f4-a2fe-d8a83145f0c1/cac9dc8ced55af553a6c2ea426d92ae6dc92b2f5338643491f07560822b9c038.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/05a0e9ac-eef1-40f4-a2fe-d8a83145f0c1/f35d843a0d4aeff7c49a3121c2b16abc28b7d34a2ddbb0f1b0bee7bf6471d27b.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/05a0e9ac-eef1-40f4-a2fe-d8a83145f0c1/256705a182125cd5a38c2da23df8c865aff36e3d3d870cfd74a5b8017e6a321c.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/05a0e9ac-eef1-40f4-a2fe-d8a83145f0c1/f2a59690d4ff86ce7d63e9485adfb15a0341f42c03a58a5ebfe7ca061bcefea9.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/05a0e9ac-eef1-40f4-a2fe-d8a83145f0c1/3a71eb1cdf4780ddab291e0964cecae0b2e0a0dd446441f2ed5031839ac45009.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/05a0e9ac-eef1-40f4-a2fe-d8a83145f0c1/c96c836b9ad1e8a0aa1f655cca733a6c602a12b207437cd8aab01e50db216f85.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/05a0e9ac-eef1-40f4-a2fe-d8a83145f0c1/104e9358d50b1274d77fee6406d560f42a5da41f44b5b7cee3cfc3a92e65cc2b.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/05a0e9ac-eef1-40f4-a2fe-d8a83145f0c1/eeb53a47df5b4fc8f67288315a629524fd6c245a4976dcedd1e9ffdcbcbd33fc.jpg)

# Sessions 5-6: Futures Pricing and Cash-Futures Arbitrage

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/05a0e9ac-eef1-40f4-a2fe-d8a83145f0c1/914a09e3dd32130b926fb0fea82771d906841a07f6b3cba97037bc54c6a9139d.jpg)

Crude Oil Futures

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/05a0e9ac-eef1-40f4-a2fe-d8a83145f0c1/1f863395f22fe7881cc06bdca6a8e9ff22feeff942c2b420ad34f2bc0b31d30e.jpg)

How these plots looked 5 years earlier

Gold Futures

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/05a0e9ac-eef1-40f4-a2fe-d8a83145f0c1/2141818f79932bee49fecd5223dd17c6e37225c899c8ea9ccd1109eb3e8da60f.jpg)

Eurodollar Futures

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/05a0e9ac-eef1-40f4-a2fe-d8a83145f0c1/8062f8f4c1078fad86d2df058890876dc12dd5241fd6ba0a37f552be3dff8c99.jpg)

S&P 500 Index Futures

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/05a0e9ac-eef1-40f4-a2fe-d8a83145f0c1/393de602af904dc839cefc7b16a7cb0983049d413a5726abef3b2678d9ce541f.jpg)

US Treasury Bond Futures

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/05a0e9ac-eef1-40f4-a2fe-d8a83145f0c1/6665945dec61d654915b4a98d2d3a1d702fe2cba393d4dffb7ed6fe78020e420.jpg)

Japanese Yen Futures

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/05a0e9ac-eef1-40f4-a2fe-d8a83145f0c1/a1f7891aca8d512e76cdce4ddfbeeb9f8be4060ddb353e29ae2207ce5fb02139.jpg)

Wheat Futures

# FUTURES CONTRACT PRICES, MATURITIES AND EXCHANGES

Crude Oil: U.S. $ per barrel; monthly maturities; New York Mercantile Exchange

Eurodollar: Price = 100 - 90-day interest rate; quarterly maturities; Chicago Mercantile Exchange

US Treasury Bond: Price per \$100 face value; quarterly maturities; Chicago Board of Trade

Wheat: U.S. cents per bushel; selected months; Chicago Board of Trade

Gold: U.S. $ per trio ounce; every second month for 1 year, then every 6 months; COMEX (NY)

S&P 500 Stock Index: Index points; quarterly; Chicago Mercantile Exchange

Japanese Yen: U.S. cents per 10,000 Yen; quarterly; International Monetary Market (Chicago

Mercantile B

# How Should the Futures Price be Related to the Price of Its Underlying?

There are two well established theories of futures pricing in equilibrium:

- Explanation 1: The Expectations Model
- Explanation 2: The Cost of Carry Model

# Explanation 1: The Expectations Model

The reasoning: If traders can take a long or a short futures position at a price  $F$ , any trader who expects the price of the underlying asset to be higher than  $F$  at expiration will buy futures, and any trader who expects the underlying price to be below  $F$  will sell futures. The equilibrium futures price will go to the level where demand is equally balanced between long and short. About half the traders will buy futures and the other half will sell futures.

The result: The futures price is the market's expected value for the price of the underlying asset on the expiration date of the futures contract.

Is the Expectations Model the right one for stock index futures?

# Let's Check Out the Expectations Model on S&P 500 Futures

Suppose the futures price for the Standard and Poor's 500 Stock Index is the market's forecast of the level of the S&P 500 index on the futures expiration date. What should the futures price be?

Current Market Data

<table><tr><td>Today&#x27;s date</td><td>Feb. 7, 2017</td></tr><tr><td>S&amp;P 500 index level</td><td>2293.08</td></tr><tr><td>Average annual dividend yield</td><td>1.98%</td></tr><tr><td>Interest rate (3 month LIBOR)</td><td>1.04%</td></tr><tr><td>Expected risk premium</td><td></td></tr><tr><td>on equities</td><td>4.0%?</td></tr></table>

# Futures contracts

MAR 2017 (38 days)

JUN 2017 (129 days)

SEP 2017 (220 days)

# Calculating the Expected S&P 500 Index at Futures Expiration

The total return on the S&P index = percent change in index + dividends

In equilibrium, the expected total return on the S&P index is equal to the riskless interest rate plus an appropriate risk premium. In recent years, the expected equity risk premium is thought to be about  $4.0\%$ .

We can combine these two relationships to compute the expected index level at futures expiration:

Expected value of total return on the index from now to futures expiration = (expected percent change in index + dividend yield)

Expected percent change in index  $=$  (Riskless interest rate + risk premium - dividend yield) x (days to expiration / 365)

## Calculating the Expected S&P 500 Index at Futures Expiration

$$
\binom{\text{expected index}}{\text{at futures expiration}} = I_{0} \times \left[ 1 + \left( \binom{\text{expected \% change}}{\text{in index}} \right) \right]
$$

$$
\begin{array}{l} \binom {\text {expected} \% \text {change}} {\text {in index}} = \left[ \binom {\text {risk free}} {\text {interest rate}} + \binom {\text {risk premium}} {\text {on equities}} - \binom {\text {dividend}} {\text {yield}} \right] \times \left(\frac {\text {days to expiration}}{365}\right) \\ = (1.04 \% + 4.0 \% - 1.98 \%) x 38 / 365 \\ = 1.003 \% \\ \end{array}
$$

By this calculation, the expected index at MAR futures expiration should be

$$
2 2 9 3. 0 8 \mathrm {x} 1. 0 0 3 = 2 3 0 0. 3 9
$$

# Was this right?

Calculating the Expected S&P 500 Index at Futures Expiration

<table><tr><td>Futures contract</td><td>Expected Index at Expiration</td><td>Closing Prices in Futures Market</td></tr><tr><td>MARCH 2017</td><td>2300.39</td><td>2288.00</td></tr><tr><td>JUNE 2017</td><td>2317.88</td><td>2283.10</td></tr><tr><td>SEPTEMBER 2017</td><td>2335.37</td><td>2278.70</td></tr></table>

The Expectations Model does not give the right answers. The expected index level at futures expiration is much higher than the futures price in the market.

# Why are the S&P Index Futures Prices So Much Lower than the Expected Value of the S&P Index at Futures Expiration?

Question: Suppose the futures prices in the market actually were the values we just computed for the expected index level at futures expiration. What trade should you do?

Hint: Think about the rate of return that you would lock in, if you could buy the portfolio of stocks in the S&P 500 index at 2177.18 and sell DEC index futures at 2191.27, the expected level of the index at futures expiration shown in the previous table.

# What's Wrong with the Expectations Model?

Our calculation of the expected future level of the S&P Index included an annualized  $4.0\%$  risk premium on the index to compensate the investor for the risk that the stock market might go down instead of up.

If you could sell futures at that level, you would eliminate all of the risk. The return you would lock in would be the full expected return on the stock market.

Said differently, if you borrow money at the riskless interest rate, buy stocks and then sell futures at a price equal to the expected future index level, you create a riskless position with a return  $4.0\%$  higher than your cost of funds. This cannot be an equilibrium.

To eliminate the free profit in this arbitrage trade, the futures price must be at the level that locks in the same return as on any other riskless position: the risk free interest rate.

The resulting model for futures prices is called the "Cost of Carry" Model.

# Cost of Carry Pricing for Stock Index Futures

The underlying asset for an index futures contract is the portfolio of stocks that compose the index.

The cost of buying the portfolio and carrying it to futures expiration date is:

1. the level of the index today
2. plus the cost of funding the position at the riskless interest rate
3. minus the dividend payout received, which reduces the net carrying cost

Let  $\mathrm{I}_0 =$  Spot level of the stock index

$\mathrm{F} =$  Index futures price

$\mathbf{r} =$  riskless interest rate

T = days to futures expiration

$d =$  dividend payout, expressed as an annualized percentage rate

$\mathrm{PV}(\mathrm{D}) =$  present value of future dividend payout, through futures expiration, in index points

# The pricing equations

1. Assuming a continuous dividend payout at an annual percentage rate  $d$  (a useful and appropriate simplification for a stock index portfolio):

$$
\mathrm {F} ^ {\mathrm {e q}} = \mathrm {I} _ {0} (1 + (\mathrm {r - d}) \times \mathrm {T / 3 6 5})
$$

or

2. If you know the complete stream of future dividends on stocks that will go ex-dividend during the lifetime of the contract, discount each of them back from the day it will be paid and add them up to get a combined present value of PV(D):

$$
\mathrm {F} ^ {\mathrm {e q}} = \left(\mathrm {I} _ {0} - \mathrm {P V} (\mathrm {D})\right) \times (1 + \mathrm {r} \times \mathrm {T} / 3 6 5)
$$

For a stock index, dividend yield requires weighting each individual stock's dividend by the firm's weight in the index portfolio, and aggregating to produce an overall PV(D).

The second equation is appropriate for a single stock, or for a very precise calculation with a portfolio of stocks (which you will only need if you are actually doing the arbitrage trade).

Calculating the "Cost of Carry" Futures Price

<table><tr><td>Futures contract</td><td>Cost of Carry Value for Future</td><td>Closing Prices in Futures Market</td></tr><tr><td>MARCH 2017</td><td>2290.84</td><td>2288.00</td></tr><tr><td>JUNE 2017</td><td>2285.46</td><td>2283.10</td></tr><tr><td>SEPTEMBER 2017</td><td>2280.09</td><td>2278.70</td></tr></table>

It is obvious that the Cost of Carry model gives more accurate prices for stock index futures. (But why aren't they actually equal??)

## So Which is the Right Model?

The Cost of Carry Model: The futures price will be equal to the current spot price for the underlying asset, plus the cost of carrying the underlying from now until futures expiration (both physical storage costs and interest on the money that has to be invested), minus the value of any cash paid out by the underlying between now and futures expiration (like coupon interest or dividends).

When one can buy the underlying and carry it through time until futures expiration, the cost of carry model will apply, because of the possibility of arbitrage between the cash market and the future. (This is normally true for financial instruments and most hard commodities).

The Expectations Model should hold only for futures on things that cannot be stored.

Examples include short term interest rates, non-storable commodities (like fresh fruit), and intangible underlying things (like the Consumer Price Index, or "Heating Degree Days" for derivatives based on weather.)

Regular patterns can occur in prices from the Expectations Model, due to price pressure from hedge trading that pushes prices out of line with expectations.

- "normal backwardation" (futures prices are lower for more distant maturities)
- "contango" (futures prices are higher for distant maturities)

## What is an Arbitrage?

An arbitrage is a trade: One simultaneously buys and sells essentially the same thing, to create a riskless position. If you sell at a higher price than you buy at, there is a riskless profit.

These three elements are ALL necessary to make a true arbitrage:

One buys and sells essentially the same thing.

The trades are simultaneous.

- The resulting position is riskless.

Arbitrage is a powerful concept with strong implications for market prices in a theoretical model. In the real world, arbitrage is a trade and there are risks and transactions costs that impose limits to arbitrage trading. How closely prices in a particular market will follow a theoretical pricing model depends on how easy or hard it is to do the actual arbitrage trade in that market.

## Why is Arbitrage Such an Important Concept?

An arbitrage trade produces a riskless position. It may be complex but it has no risk, so it should earn the same rate of return as any other risk-free asset. Risk aversion in the market and expectations about future returns on the underlying asset should not matter.

If the prices of the components of an arbitrage trade are not aligned properly, the locked-in return may be higher or lower than the riskless rate (if lower, arbitrage creates a current inflow of cash--a loan from the market--at an effective interest rate below the riskless rate). Either way, it would be a "free lunch," that is, an extra profit that can be earned with no risk.

Prices that permit an arbitrage profit cannot be in equilibrium. Arbitrageurs (people who do arbitrage) will trade as much as they can, until prices are forced into the correct alignment.

IMPORTANT: Derivative instruments, like forwards, futures and options, often can be used to create two different positions that are effectively identical. Arbitrage will force the market values for equivalent positions to be the same. The theoretical "fair value" for the derivative is the price that makes the excess return to the arbitrage trade equal to zero.

The arbitrage-based valuation model for futures is the Cost of Carry model.

## Cost of Carry Pricing for Gold Futures

The only significant cost of carrying gold from today until futures maturity is the interest cost of financing the position.

Let $S =$ current spot price of gold

$\mathrm{F} =$ gold futures price for delivery in T years

$\mathrm{r} =$ interest rate (expressed as a decimal, e.g., $8 \% = 0.08$)

Then the equilibrium gold futures price which precludes profitable cash-futures arbitrage is given by

$$
\mathbf{F}^{\mathrm{eq}} = \mathbf{S} \times (\mathbf{1} + \mathbf{r})^{\mathrm{T}}
$$

or, for short maturity contracts (here T is in calendar days)

$$
F^{\mathrm{eq}} \approx S \times (1 + r T / 365)
$$

## Cost of Carry Pricing for Gold Futures, p.2

## Example

The spot price of gold is \$1600 per ounce and the interest rate is $10\%$. The cost of carry prices for 6-month and 12-month gold futures are

$$
\mathrm{F}_{6-\mathrm{month}} = \mathrm{S}_{0} \times (1 + \mathrm{r} \times 6 / 12) = 1600 \times 1.05 = 1680
$$

$$
F_{12-\text{month}} = S_{0} \times (1 + r \times 12 / 12) = 1600 \times 1.10 = 1760
$$

## Gold Futures Arbitrage Example

Suppose the market price for the 6-month future is actually 1700. Here is how the arbitrage trade might be set up to exploit this mispricing. The futures price is "too high" relative to cash, so we want to be long spot and short futures:

The "Cash and Carry" Arbitrage Trade:

1. Borrow \$160,000 at 10% interest.
2. Buy 100 ounces of gold at \$1600 per ounce.
3. At the same time, sell one 100-ounce gold futures contract at \$1700.
4. Hold the position until futures expiration, then deliver the gold.
5. Repay the loan + interest (\$168,000) using the money received at delivery (including the cumulative cash flow from the daily variation margin payments over the life of the contract).
6. There will be \$20 per ounce = \$2000 left over after the position is fully unwound. This is the arbitrage profit.

## Gold Futures Arbitrage Details

This is how the "cash and carry" arbitrage (long spot gold at 1600, short 6-month gold futures at 1700) would actually work for different futures prices at expiration.

<table><tr><td>Final futures price</td><td>Variation margin</td><td>Proceeds from delivery of gold</td><td>Total Inflow as of Expiration</td></tr><tr><td>1600</td><td>100 (1700 - 1600) =$10,000</td><td>100 x 1600 =$160,000</td><td>$170,000</td></tr><tr><td>1700</td><td>100 (1700 - 1700) = 0</td><td>100 x 1700 =$170,000</td><td>$170,000</td></tr><tr><td>1800</td><td>100 (1700 - 1800) = -$10,000</td><td>100 x 1800 =$180,000</td><td>$170,000</td></tr></table>

The loan of \$160,000 at 10% has to be repaid with interest in 6 months: -\$160,000

This leaves a net arbitrage profit of \$2,000 regardless of the final futures price.

- It doesn't matter which way or how far the market price moves
- It doesn't matter whether the futures position makes a profit or a loss. The total is locked in.
- BUT, the arbitrageur needs a source of cash to meet possible margin calls.

## Arbitrage-Based Futures Fair Values

## Foreign Exchange Forwards and Futures:

The underlying asset for an FX contract is a position in foreign riskless bonds that will produce the deliverable amount of the foreign currency at maturity. The net cost of carry depends on the interest rates in the two countries.

- The domestic rate $r_{\text{DOM}}$ is the financing cost for the funds invested;
- The foreign rate $r_{\text{FOR}}$ is a cash payout earned on the underlying currency position during the holding period, which reduces the net carrying cost.
- If the foreign interest rate exceeds the domestic rate, the forward exchange rate $X_{\mathrm{F}}$ will be at a discount to the spot rate $X_{\mathrm{S}}$. (X here is expressed in units of domestic currency per unit of foreign currency, e.g., dollars per Swiss franc)

The "covered interest parity" equation:

$$
\mathrm{X}_{\mathrm{F}} = \mathrm{X}_{\mathrm{S}} \times \left(\frac{1 + \mathrm{r}_{\mathrm{DOM}} \times \mathrm{T} / 365}{1 + \mathrm{r}_{\mathrm{FOR}} \times \mathrm{T} / 365}\right)
$$

## Foreign Exchange Forwards and Futures

The Trade: You always want to sell what is expensive and buy what is cheap.

1. If the actual forward exchange rate is too high (too many $ per unit FX),

Borrow in the US

- Convert to foreign currency at the current spot rate
- Simultaneously, sell the foreign currency forward (the amount you will have at maturity, including foreign interest earned over the holding period)
- Invest at the foreign riskless rate until the contract matures
- At maturity, convert back to dollars at the (overvalued) forward exchange rate
- Pay off the US dollar loan. There will be an arbitrage profit left over.

2. If the actual forward exchange rate is too low,

- Borrow in the foreign country
- Convert to US dollars at the current spot rate
- Simultaneously, buy foreign currency forward
- Invest at the US riskless rate until the contract matures
- At maturity, convert enough dollars to FX at the (undervalued) forward exchange rate in order to pay off the foreign loan. There will be an arbitrage profit left over.

## Foreign Exchange Forwards and Futures

Suppose for 1 year Euro FX contracts, we have:

$$
\mathrm{X}_{\mathrm{S}} = 1.0000; \mathrm{X}_{\mathrm{F}} = 1.0100; \mathrm{R}_{\mathrm{US}} = 4.00\%; \mathrm{R}_{\mathrm{FOR}} = 2.00\%
$$

At these rates the fair value for the forward exchange rate is $X_{\mathrm{S}}(1 + R_{\mathrm{US}}) / (1 + R_{\mathrm{FOR}}) = 1.0196$

The Trade: You always want to sell what is expensive and buy what is cheap. In this case, buy € forward at 1.0100, sell them (synthetically) at 1.0196.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/05a0e9ac-eef1-40f4-a2fe-d8a83145f0c1/704dfb8979258a122e80f59e452f37e9720c236ce0004c5181873ea31da824f0.jpg)

## Foreign Exchange Forwards and Futures

In the real world, both exchange rates and interest rates differ for buying versus selling and for lending versus borrowing. This produces a pair of arbitrage points: a high price that is high enough to cover the cost of trading, so the cash and carry arbitrage is profitable; and a low price that will just cover the costs of reversing the trade by selling the underlying short. Prices inside the range are not profitable enough to generate trading, but arbitrage will occur if the price should stray outside the price bounds.

To find the arbitrage points, work through the two arbitrage trades you need to do if the forward rate is too high, and too low. Where you have to borrow, put the interest rate for borrowing into the formula, and where you lend, put in the lending rate. Where you sell currency spot or forward, put in the market's bid price and where you buy, put in the market's ask price.

This gives two exchange rates such that if the future/forward rate is below the lower one, you have a profitable arbitrage trade in one direction; if it is above the higher one, there is a profitable trade in the other direction; and if the rate is in between the two, there is no profitable arbitrage in either direction, so the rate is OK.

You should verify that if the following are the relevant rates and prices,

$$
\mathrm{X}_{\text{Sask}} = 1.0010; \mathrm{R}_{\text{US,borrow}} = 4.10\%; \mathrm{R}_{\text{FOR,borrow}} = 2.10\%
$$

$$
\mathrm{X}_{\text{Sbid}} = 0.9990; \mathrm{R}_{\text{US, lend}} = 3.90\%; \mathrm{R}_{\text{FOR, lend}} = 1.90\%
$$

the arbitrage points for the forward exchange rate (\$ per unit FX) are

$$
\mathrm{X}_{\text{Fbid}} = 1.0166; \mathrm{X}_{\text{Fask}} = 1.0226
$$

## SESSION 7

## In-Class Marketmaking Game

Day 1: Your firm is a market maker in FX forwards. A customer wants a 6-month forward contract to (sell, buy) 25 million euro for dollars. The head of trading needs to quote a forward exchange rate to bid for the contract and she wants you to figure out the number. It must be at a level that will allow the firm to make a profit, but you will be competing with other firms for the trade.

Current market data:

Current spot exchange rate: 1.3100 dollars per euro

US 6-month interest rates: $5.100\%$ borrowing rate

4.900% lending rate

Euro-zone 6-month interest: $6.400\%$ borrowing rate

6.200% lending rate

You can assume that the spot exchange rate and the interest rates in the market are firm for substantially larger size than this trade would involve.

Even numbered teams quote an ask price to a customer who wants to buy euro forward. Odd numbered teams quote a bid price to a customer who wants to sell euro forward.

## Cost of Carry Pricing for Gold Futures, Another Example

The spot price of gold is \$1600 per ounce and the interest rate is 10%. The cost of carry price for the 6-month gold futures contract is

$$
\mathrm{F}_{6-\mathrm{month}} = \mathrm{S}_{0} \times (1 + \mathrm{r} \times 6 / 12) = 1600 \times 1.05 = 1680
$$

Suppose the market price for the 6-month future is actually 1650.

What is the arbitrage trade now?

## Cost of Carry Pricing for Gold Futures, Another Example

## Arbitrage from the Short Side

The mispricing is that the futures price is too low. This means you have to buy futures and sell the underlying. This normally would mean selling short the gold.

1. Borrow 100 ounces of gold.
2. Sell it at \$1600 per ounce.
3. Invest the \$160,000 proceeds in riskless securities earning 10% annual return.
4. At the same time, buy one gold futures contract at \$1650.
5. Carry the position until futures expiration, then take delivery of the gold. The price you pay will be equal to the futures price at the time of delivery, call it $F_T$.
6. Variation margin over the life of the contract will total $100 \times (F_T - 1650)$.

Variation margin plus the cost paid at delivery will total a net cash payout of 100 ounces per contract $\times [ (F_{T} - 1650) - F_{T}] = -\$165,000$

7. The riskless investment will return $160,000 \times 1.05 = \$168,000$.
8. Give back the 100 ounces of gold that were borrowed.
9. There will be \$30 per ounce, \$3000 total, left over after the position is fully unwound.

## Gold Futures Arbitrage from the Short Side

Arbitrage from the short side is harder than on the long side in most markets; in some cases it is impossible. In those cases, the futures price can often fall below its fair value without touching off much arbitrage trading. Futures prices in many markets are regularly lower than the theoretical fair values.

What about short arbitrage by those who hold inventories of the underlying asset they could sell in the market without a short sale?

They will do it if the profit opportunity becomes large enough. But physical stocks of commodities are mostly held because they are needed for business activities (e.g., jewelry manufacturers need actual gold, not long gold futures positions).

The arbitrage profit that holders of inventories could make, but choose not to, is commonly referred to as the "convenience yield."

The convenience yield in this example is $30 / 1600 = 1.875\%$ for 6 months. It is as if holding the physical commodity provided a positive yield, like a cash dividend, that offsets some of the carrying costs.

## Arbitrage from the Short Side when there is a Cost to Borrow the Underlying

In markets where short selling is well established, there is often a fee to borrow the underlying: short sales are possible, but only at a cost.

In the gold market, the fee for borrowing gold is called the "gold lease rate."

The lease rate varies according to supply and demand (so do the fees to borrow commodities and securities for the purpose of executing short sales in other markets).

The fee to borrow stock in order to sell short is called the "stock lending fee." Lending out the shares in its portfolio is a good way for an institutional investor to increase its alpha.

High volatility stocks, those involved in special situations like mergers, and others for which there is a large desire in the market to sell them short can be notoriously hard to borrow. They may be essentially unavailable for borrowing at all, or only available if the borrower pays a large rebate rate.

## Gold Futures Arbitrage from the Short Side

Suppose that, in addition to the data given above, the 6 month gold lease rate is a $3.75\%$ annual rate, i.e., $1.875\%$ holding period return over 6 months.

The long "cash and carry" arbitrage is not affected directly by this.

The short arbitrage will now require a cash payment of $1600 \times 0.01875 = \$30$ per ounce to borrow the gold. The apparent \$30 per ounce arbitrage profit at a futures price of 1650 disappears.

The arbitrage trade in gold produces the following price bounds:

$\mathrm{F} \leq 1680$, to prevent arbitrage on the long side;

$1650 \leq F$, to prevent short arbitrage.

This translates to a kind of bid-ask spread for futures (1650 bid, 1680 ask), based on arbitrage.

Question: Where will the actual futures price be within this band?

Answer: It can be anywhere within the band. It is only constrained by arbitrage trading to be above 1650 and below 1680.

## Market Impact ("Bid-Ask Bounce") in a Stock Index Futures Arbitrage

The index is computed from the last price at which each stock in the index traded. These may be "stale" prices from trades that occurred hours earlier. But the bigger problem comes from the bid-ask spreads.

Each individual stock is quoted in the market with a bid price and an ask price, so typically about half of the prices going into the current level of the index are from trades that occurred at the bid price and half at the ask price.

But if the arbitrageur buys the whole index portfolio, she buys all of the stocks at their current ask prices, and if she sells, all stocks are sold at their current bid prices. In effect, there is a bid-ask spread on the index, so buying or selling the whole index portfolio causes a substantial market impact: At the new prices, the index level jumps from about the middle of the range up or down to one of the boundaries.

Assume that for the following example, the index bid-ask spread is 4.00 index points. To buy the index portfolio, with the market impact, the arbitrageur must pay 2.00 index points above the "current" spot index level. If she sells the index portfolio, she receives 2.00 index points below the current index.

## Stock Index Futures Arbitrage

## Previous year midterm exam question:

You are an arbitrageur in the S&P 500 Index futures market. You need to calculate the arbitrage points for the S&P futures contract expiring in 3 months. Because you will buy or sell the index portfolio using program trades in the market, there is a "market impact" when you trade: If you buy the index portfolio, you will typically pay 2.00 index points above the "current" spot index level; if you sell it, you will receive 2.00 index points below the current quoted spot index.

Current spot index level: 1020.00

US 3-month interest rates: $3.000\%$ for both borrowing and lending

Dividends $1.500\%$ annual rate

1. What is the highest the futures price can be without creating a profitable arbitrage? (Give a price to the penny.)
2. What is the lowest the futures price can be without creating a profitable arbitrage?
3. Suppose the price in the futures market is 3.00 points above the price you calculated in question 1. Describe exactly the trades you would make to turn this into a profitable arbitrage.
4. Suppose the price in the futures market is 3.00 points below the price you calculated in question 2. Describe exactly the trades you would make to turn this into an arbitrage.

## Stock Index Futures Fair Value Calculation

$$
\mathrm{F}^{\mathrm{eq}} = \mathrm{I}_{0} (1 + (\mathrm{r - d}) \times \mathrm{T / 365})
$$

Market data:

$$
\begin{array}{l} \mathrm{I}_{0} = 1020.00 \\ \mathrm{r} = 3.000 \% \\ \mathrm{d} = 1.500 \% \\ \mathrm{T} / 365 = 0.25 \mathrm{years} \\ \end{array}
$$

Fair value without market impact:

$$
F^{\mathrm{eq}} = 1020.00 (1 + (0.03000 - 0.01500) \times 0.25) = 1023.82
$$

With market impact of 2.00 to buy or sell the index portfolio:

Buying the index portfolio:

$$
F^{\mathrm{eq}} = 1022.00 (1 + (0.03000 - 0.01500) \times 0.25) = 1025.83 (\text{highest ask})
$$

Selling the index portfolio:

$$
F^{\mathrm{eq}} = 1018.00 (1 + (0.03000 - 0.01500) \times 0.25) = 1021.82 (\text{lowest bid})
$$

## Performing profitable stock index futures arbitrage is an art

## Important details include:

Stock portfolios are traded as units, using "program trades"

Market impact ("bid-ask bounce")

- Execution risk
- "Circuit breaker" restrictions on program trading

## Performing profitable stock index futures arbitrage is an art

Doing the arbitrage when the futures price is too low requires selling short the index portfolio

## Short sales

- need to find shares to short and to pay the lender a "rebate" fee to borrow the stock
- short sales allowed only on an uptick or constrained in some other way
- natural advantage to an institutional investor that already has long positions in all of the stocks

## Performing profitable stock index futures arbitrage is an art

For the trade to be approximately riskless, it may need to be held until futures expiration

Unwinding at expiration, using "market on open" orders

can save one market impact

- leads to the "Triple Witching Hour"

Early unwinding

- take the arbitrage profit as soon as possible
- but unwinding early has execution risk and market impact
- a risky (but common) "arbitrage" strategy: putting on the trade inside the arbitrage bounds

## The risk of a "rogue trader"

Nick Leeson (Barings Bank)

\$1.4 billion loss in 1995 put Barings into bankruptcy

Jérôme Kerviel (Société Générale)

\$7.1 billion loss in 2008

and a more recent star "rogue"

Kweku Adoboli (UBS)

\$2.3 billion loss in 2011

As we have seen, stock index futures are somewhat more complicated than other contracts because the underlying is a portfolio. This feature is very important in hedging and risk management applications, because a broad index portfolio is a proxy for the "market portfolio."

So far, we have looked at hedges using futures contracts based on the same underlying asset. We could ignore basis risk and design a hedge simply using the principle of dollar equivalence, although it is normally more accurate to estimate the minimum risk hedge ratio statistically.

Hedging an equity position with stock index futures inherently involves a "cross-hedge" which, at best, only covers a portion of the total risk exposure. But virtually all stock positions have some market risk, and it is relatively greater for portfolios of stocks because non-market risk is reduced by diversification. A single stock index futures contract based on a broad market portfolio like the S&P 500 can (partially) hedge a wide variety of equity positions. Being able to manage market risk separately from firm specific risk leads to a number of interesting trading strategies.

## Market Risk, Beta and the CAPM

The relationship between the expected return on an individual stock or a portfolio and the broad stock market is expressed in the Capital Asset Pricing Model.

$$
R_{\text{stock}} = r_{\text{riskless}} + \alpha + \beta (R_{\text{market}} - r_{\text{riskless}}) + \varepsilon
$$

Exposure to price risk related to broad market movements is summarized by the stock's beta coefficient ($\beta$).

"Epsilon" ($\varepsilon$) is the random non-market (idiosyncratic) component of return and "alpha" ($\alpha$) measures consistent (nonrandom) excess return above what can be justified as compensation for bearing beta risk. In equilibrium, alpha should be zero. Positive alpha means consistently superior investment performance that is not due to luck.

A hedge with S&P futures can hedge market risk but not non-market or "firm-specific" risk. Non-market risk becomes "basis risk" or "tracking error" risk in a hedging application.

NOTE: The empirical evidence that mean returns of high-beta stocks are higher than mean returns for low-beta stocks is surprisingly (disturbingly!) weak. BUT, there is no question that beta is a good measure of exposure to market risk.

## Beta, Alpha, and Performance Measurement

Money managers focus very heavily on beta and alpha. Beta measures their risk exposure, and clients evaluate a manager's performance in terms of her portfolio's alpha.

Anyone can create a passive portfolio with alpha of zero and whatever beta they want (within limits), by just dividing their funds between cash and the market portfolio.

to make beta $= 0$, put all the funds in T-bills;

to make beta $= 1.0$, put all the funds in the market portfolio;

to make beta $= 0.5$, put $1/2$ the funds in T-bills and $1/2$ in the market;

etc.

- Creating a negative beta requires selling short the market portfolio, and getting beta above 1.0 requires borrowing in order to leverage a long position in the market portfolio. Neither of these is easy. Many institutional investors, such as pension funds, are not permitted to use leverage or to sell short.

Stock index futures and other derivatives make adjusting a portfolio's beta to a target value easier than this, more direct, and much cheaper to do than by trading stocks to change its composition.

## Using Index Futures to Adjust Market Risk Exposure

Suppose we hold a \$100 million stock portfolio whose beta is 0.70.

This has exposure to the stock market like \$70 million in the S&P 500 index portfolio and \$30 million in completely unrelated risky assets.

- To make beta = 0, hedge the full market exposure: Sell S&P futures on \$70 million of the index.
- To make beta = 1.0, increase market exposure to \$100 million by going long index futures on \$30 million of the S&P.
To reduce beta to 0.5, sell S&P futures to hedge \$20 million of the market exposure.
etc.
- Creating a negative beta is easy, just by selling more than \$70 million of futures.
- Similarly, getting beta above 1.0 simply requires going long more than \$30 million in futures.

## Dollar Equivalence in Hedging Equity Risk

Suppose we want to hedge \$100 million of the OEX (S&P 100 index) portfolio with S&P 500 futures. The beta of the OEX is about 1.0

To achieve dollar equivalence we need to trade futures on the same amount of the S&P index as our OEX holding, \$100 million.

Suppose the spot S&P index is at 2250.00. This is a lot like saying the "price" of a "share" of the index is \$2250. The number of index "shares" we want to sell futures on is \$100 million / 2250 = 44,444.

One futures contract is for 250 index shares, so we sell $44,444 / 250 = 178$ S&P futures contracts.

It is somewhat better theoretically to use the level of the cash index rather than the futures price in doing this calculation because beta comes from the relation of the return on the OEX cash portfolio to the return on the S&P index portfolio (rather than to the return on the future). This distinction is a "fine point." It matters very little in practice.

## Hedging to Adjust Beta

General rule: The number of futures contracts to trade to alter the beta of an equity position by a target amount is given by

$$
\# \text{contracts} = \left( \begin{array}{l} \text{desired} \\ \text{change} \\ \text{in beta} \end{array} \right) x \frac {\text{\$ value of position being hedged}}{\text{\$ value of stock underlying 1 futures contract}}
$$

### Example:

To hedge \$100 million of the OEX portfolio fully, we want to reduce the beta from 1.0 to 0. That is, the desired change in beta is -1.0.

When the S&P index is 2250.00, the number of contracts to trade is

$$
\# \text{contracts} = -1.0 \times \$100 \text{ million / (250 x 2250.00)} = -178 \text{ contracts}
$$

## Hedging to Adjust Beta

Very Important: The effect on overall beta from trading futures is completely different from what happens when stocks with different betas are combined in a portfolio.

### Examples:

- Combining \$100 million of a stock with beta = 0.8 and \$100 million of a portfolio with beta = 1.0 yields a \$200 million portfolio with beta = 0.9
- Adding a \$100 million long S&P 500 futures position to a \$100 million portfolio with beta = 0.8 produces a position still worth \$100 million. But its exposure to the market is like \$180 million in the index, so its beta is 1.8.

## Statistical Hedging

Beta is estimated from a regression of returns for the individual stock on the returns on the market. Using the S&P 500 as the market index,

$$
\mathrm{R}_{\text{stock}} = \mathrm{a} + \beta \mathrm{R}_{\mathrm{S\&P 500}} + \varepsilon
$$

The minimum risk hedge ratio $h^*$ is estimated from almost the identical regression,

$$
\mathrm{R}_{\text{stock}} = \mathrm{a} + \mathrm{h}^* \mathrm{R}_{\text{S\&P future}} + \varepsilon
$$

h* is like the beta of the stock relative to the S&P futures contract. This hedge ratio is likely to be a little more accurate than using beta as the hedge ratio because it takes account of the basis risk.

But using the stock's beta as a hedge ratio is often easier, since beta may be known, while running a regression requires data analysis. In practice, the difference in performance between using beta and $h^*$ is rarely worth worrying about.

## Statistical Hedging

This table shows hedging parameters estimated from historical returns from Sept. 2011 – Sept. 2012. Note that Intel is much less correlated to the S&P than are the diversified portfolios. It is hard to hedge a single stock well with index futures.

<table><tr><td></td><td colspan="5">RETURNS</td></tr><tr><td></td><td>SPX</td><td>OEX</td><td>NASDAQ</td><td>INTC</td><td>S&amp;P Futures</td></tr><tr><td>PER DAY</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Mean returns</td><td>0.07%</td><td>0.08%</td><td>0.08%</td><td>0.09%</td><td>0.08%</td></tr><tr><td>Standard devs</td><td>1.19%</td><td>1.14%</td><td>1.29%</td><td>1.54%</td><td>1.21%</td></tr><tr><td>ANNUALIZED</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Mean returns</td><td>17.33%</td><td>19.28%</td><td>21.16%</td><td>23.17%</td><td>19.63%</td></tr><tr><td>Standard devs</td><td>19.03%</td><td>18.20%</td><td>20.68%</td><td>24.59%</td><td>19.38%</td></tr></table>

<table><tr><td></td><td colspan="5">CORRELATION MATRIX</td></tr><tr><td></td><td>SPX</td><td>OEX</td><td>NASDAQ</td><td>INTC</td><td>S&amp;P Futures</td></tr><tr><td>SPX</td><td>1</td><td>0.997</td><td>0.961</td><td>0.748</td><td>0.987</td></tr><tr><td>OEX</td><td>0.997</td><td>1</td><td>0.953</td><td>0.746</td><td>0.983</td></tr><tr><td>NASDAQ</td><td>0.961</td><td>0.953</td><td>1</td><td>0.750</td><td>0.946</td></tr><tr><td>INTC</td><td>0.748</td><td>0.746</td><td>0.750</td><td>1</td><td>0.745</td></tr><tr><td>S&amp;P Futures</td><td>0.987</td><td>0.983</td><td>0.946</td><td>0.745</td><td>1</td></tr></table>

<table><tr><td></td><td colspan="5">HEDGING PARAMETERS</td></tr><tr><td></td><td>SPX</td><td>OEX</td><td>NASDAQ</td><td>INTC</td><td>S&amp;P Futures</td></tr><tr><td>Beta</td><td>1.000</td><td>0.954</td><td>1.044</td><td>0.967</td><td>1.005</td></tr><tr><td>h*</td><td>0.969</td><td>0.923</td><td>1.009</td><td>0.946</td><td>1.000</td></tr></table>

## Tracking Error

An important hedging strategy is to use S&P index futures plus bonds as a substitute for some other portfolio. The objective is to track the value of the target portfolio over time. The discrepancy due to hedging inaccuracy is called tracking error.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/05a0e9ac-eef1-40f4-a2fe-d8a83145f0c1/edbd82fefea687abab4cd11273e4140fbe023a8919a3e1913107d26832fc15fb.jpg)

Tracking: S&P 500 Index and Index Replicating Portfolio using S&P Futures

## Tracking Error with the Other Indexes

Error in tracking the OEX is quite small.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/05a0e9ac-eef1-40f4-a2fe-d8a83145f0c1/c2db5d9cd7a6ac8c294724003e02a557fa7718241a96eaee6057871a9b321ff7.jpg)

Tracking: OEX Index and Index Replicating Portfolio using S&P Futures

## Tracking Error with the Other Indexes

But there is large tracking error in trying to replicate the NDX using S&P 500 futures.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/05a0e9ac-eef1-40f4-a2fe-d8a83145f0c1/91cae2abfaff06d55008a53427e18b3fb926c5025e962e667b153640d27a4adc.jpg)

Tracking: NDX Index and Index Replicating Portfolio using S&P Futures

## Important Risk Management Strategies Using Stock Index Futures

Hedging and general risk management: In many cases, what is needed is less market exposure, but not zero. Use index futures to set beta to a target level. This graph shows a beta $= 0.4$ strategy with the S&P 500 portfolio.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/05a0e9ac-eef1-40f4-a2fe-d8a83145f0c1/a07eb0bad0ebd5452feb9ccc754ce01871e50d39e95a5ec11d66c33c9f50d4bd.jpg)

## Important Risk Management Strategies Using Index Futures

Equitizing Cash. The reverse of hedging is buying futures to obtain market exposure on cash that is held, without investing it in stocks (or in advance of investing it).

- new money received by a portfolio manager
- putting dividends to work immediately
- changing managers

To create a portfolio that "looks" like \$100 million in the S&P 500 portfolio, just hold \$100 million in cash and go long S&P futures on \$100 million.

## Asset Allocation and Market Timing

- Use futures to increase beta (market exposure) when the market is expected to rise and to hedge when it is expected to fall. Note: This isn't hedging.
- A special variant of this strategy called "portfolio insurance" uses futures to adjust market exposure to create a profit profile that looks like a stock portfolio with a protective put option. We will cover portfolio insurance in depth later on, in the options portion of the course.

## Basis Trading

- Combine a position in the stock portfolio for one index like the NDX and use index futures to take an opposite position in a different index to trade on relative performance.

## Portable Alpha

- Alpha is consistent excess return relative to the market. In a "portable alpha" strategy, a fund manager can pursue profit opportunities in a wide range of investment classes and then use futures to create effective market exposure in the market he prefers.
- For example, an equity fund manager might offer an enhanced S&P fund that makes its alpha from currency trades and then uses futures to gain the equity exposure needed to match the S&P index.

Futures based on US Treasury bonds and notes allow hedging medium and long term interest rates. The most important is the Treasury bond contract at the Chicago Board of Trade. The fair value calculation for bond futures is complicated by the fact that many different bonds are deliverable, but only one will be the "cheapest to deliver."

We begin this session by identifying the "Cheapest to Deliver" bond for the T-bond futures contract. The option to decide which of several "grades" of the underlying will be delivered belongs to the short side of the contract. It is a standard feature of most futures contracts that allow delivery. Not surprisingly, it is very important in determining the fair value of the contract.

Then we look at futures based on short term interest rates. These are some of the most important derivative contracts in the market, but using them properly to lock in a specific interest rate turns out to be a lot trickier than one might think.

Futures on short term interest rates are based on the rate itself, converted to a futures price by subtracting the annualized rate from 100. The 90-day Eurodollar futures contract traded at the Chicago Mercantile Exchange is the most important, but other contracts, such as OTC forward rate agreements (FRAs) will have similar properties.

Dollar equivalence in hedging interest rates with a contract like the Eurodollar future requires a couple of subtle adjustments, which we will explore in this session.

## The Cheapest to Deliver T-Bond

1. This problem involves two Treasury bonds and the T-bond futures contract.

Note: For this problem, you should assume that the T-Bond contract is based on a 20-year 6.00% coupon T-Bond.

Bond 1: 8.00% coupon, 20 year maturity.

Bond 2: 5.25% coupon, 27 year maturity

Bond 3: 6.00% coupon, 20 year maturity (Futures quotes are based on this "synthetic" bond)

The Chicago Board of Trade's Treasury bond futures contract allows any Treasury bond with maturity of 15-25 years can be delivered. Delivery must always be \$100,000 face value. To adjust for the price effects of differences in coupon and maturity for the deliverable bonds, the invoice price to be paid when the bonds are delivered is set equal to the futures price in the market times a "Delivery Factor" for the actual bonds.

At a yield of 6.00%, a 6.00% percent coupon bond will sell at par, i.e., a price of 100. At a yield of 6.00 percent a higher coupon bond will be above par and a lower coupon bond will be below par. The delivery factor is set so that when market yields are 6.00 percent, the price paid at delivery equals the value of the particular bond. For example, if a bond's price at 6.00 percent is 120.00, its delivery factor (DF) would be 1.2000. If the bond is delivered when the futures price is 90, the price paid will be $90 \times 1.200 = 108$ and the total dollar amount paid will be \$108,000. (Note that the DF is a fixed number based on 6 percent. It doesn't change when yields in the market change.)

## Homework Problem continued

a) Use the PRICE function in Excel to find the prices these three bonds would have at a yield of 6.00%. Use the Excel DURATION function to find their durations at a 6.00 percent yield. Read about how these functions work in Excel Help.

b) What will the Delivery Factors be for Bonds 1 and 2?

c) Suppose on futures delivery day, market yields are 5.00%. What will the prices of the three bonds be? What will \$100,000 face value of each be worth?

 d) Suppose the price of a 6 percent 20-year bond that you just calculated in part c) is the futures price in the market. You can deliver \$100,000 face value of either of the two Treasury bonds and get paid F x DF x 1000, the futures price times the bond's delivery factor times the size of the futures contract. What are the two possible dollar amounts you could receive for delivering the two bonds? Which one would you pick to deliver?

e) Do parts c) and d) again, this time assuming the market yield is 7.00% for all of the bonds.

f) (harder) From these results, what is the general principle about which bond will become "cheapest to deliver" when yields are below 6%, and above 6%?

g) (harder) Assume these are the only two bonds that can be delivered against the futures contract. What will the futures price be in the market when yields are at 5.00% and at 7.00% so that there is no profitable arbitrage opportunity?

## Sessions 9-10: Implementing Risk Management Strategies

<table><tr><td colspan="2">Today (settlement)</td><td>10/02/2002</td><td></td><td></td><td></td><td></td><td colspan="2"></td></tr><tr><td colspan="2"></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="2"></td><td></td><td>Maturity</td><td>Coupon</td><td></td><td></td><td></td><td></td></tr><tr><td colspan="2">Bond #1</td><td></td><td>10/02/2022</td><td>8.000%</td><td></td><td></td><td></td><td></td></tr><tr><td colspan="2">Bond #2</td><td></td><td>10/02/2029</td><td>5.250%</td><td></td><td></td><td></td><td></td></tr><tr><td colspan="2">Bond #3 (synthetic future)</td><td>10/02/2022</td><td>6.000%</td><td></td><td></td><td></td><td colspan="2"></td></tr><tr><td colspan="2"></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="9">a) Use the PRICE function in Excel to find the prices these three bonds would have at a yield of 6.00%. Use the Excel DURATION function to find their durations at a 6.00 percent yield.</td></tr><tr><td colspan="2"></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Market yield</td><td>6.000%</td><td colspan="5">PRICE(settlement,maturity,rate,yld,redemption,frequency,basis)</td><td colspan="2"></td></tr><tr><td></td><td></td><td></td><td colspan="4">(for Treasuries, frequency = 2, basis = 1)</td><td colspan="2"></td></tr><tr><td colspan="2">Bond #1</td><td></td><td>123.115</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="2">Bond #2</td><td></td><td>90.033</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="2">Bond #3 (synthetic future)</td><td>100.000</td><td></td><td></td><td></td><td></td><td colspan="2"></td></tr><tr><td colspan="2"></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td colspan="6">DURATION(settlement,maturity,coupon yld,frequency,basis)</td></tr><tr><td colspan="2">Bond #1</td><td></td><td></td><td>11.23</td><td></td><td></td><td></td><td></td></tr><tr><td colspan="2">Bond #2</td><td></td><td></td><td>14.06</td><td></td><td></td><td></td><td></td></tr><tr><td colspan="2">Bond #3 (synthetic future)</td><td></td><td>11.90</td><td></td><td></td><td></td><td colspan="2"></td></tr><tr><td colspan="2"></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="9">b) What will the Delivery Factors be for Bonds #1 and #2?</td></tr><tr><td colspan="2"></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td colspan="4">Delivery factor = bond price at 6% yield / 100</td><td></td><td></td><td colspan="2"></td></tr><tr><td colspan="2">Bond #1</td><td>1.2311</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="2">Bond #2</td><td>0.9003</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="2"></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="9">c) Suppose on futures delivery day, market yields are 5.00%. What will the prices of the three bonds be? What will \$100,000 face value of each be worth?</td></tr><tr><td colspan="2"></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Market yield</td><td colspan="2">5.000%</td><td colspan="5">PRICE(settlement,maturity,rate,yld,redemption,frequency,basis)</td><td></td></tr><tr><td></td><td colspan="2"></td><td></td><td colspan="2">\$100,000 face value</td><td></td><td></td><td></td></tr><tr><td>Bond #1</td><td colspan="2"></td><td>137.654</td><td>\$137,654</td><td></td><td></td><td></td><td></td></tr><tr><td>Bond #2</td><td colspan="2"></td><td>103.682</td><td>\$103,682</td><td></td><td></td><td></td><td></td></tr><tr><td colspan="3">Bond #3 (synthetic future)</td><td>112.551</td><td>\$112,551</td><td></td><td></td><td></td><td></td></tr><tr><td></td><td colspan="2"></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="2"></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="9">d) Suppose the price of a 6 percent 20-year bond that you just calculated in part c) is the futures price in the market. You can deliver \$100,000 face value of either of the two Treasury bonds and get paid F x DF x 1000, the futures price times the bond's delivery factor times the size of the futures contract. What are the two possible dollar amounts you could receive for delivering the two bonds? Which one would you pick to deliver?</td></tr><tr><td colspan="2"></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>If we deliver</td><td colspan="2">we receive (F*DF)*1000</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Bond #1</td><td colspan="2">\$138,567</td><td colspan="5">Deliver Bond #1. You receive more than the value in the cash market.</td><td></td></tr><tr><td>Bond #2</td><td colspan="2">\$101,334</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td colspan="2"></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>

# Sessions 9-10: Implementing Risk Management Strategies

<table><tr><td colspan="8">e) Do questions c) and d) again, this time assuming the market yield is 7.00% for all of the bonds.</td></tr><tr><td>Market yield</td><td>7.000%</td><td colspan="5">PRICE(settlement,maturity,rate,yld,redemption,frequency,basis)</td><td></td></tr><tr><td></td><td></td><td></td><td colspan="3">\$100,000 face value</td><td></td><td></td></tr><tr><td>Bond #1</td><td></td><td>110.678</td><td>\$110,678</td><td></td><td></td><td></td><td></td></tr><tr><td>Bond #2</td><td></td><td>78.901</td><td>\$78,901</td><td></td><td></td><td></td><td></td></tr><tr><td>Bond #3 (synthetic future)</td><td></td><td>89.322</td><td>\$89,322</td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>If we deliver</td><td>we receive (F*DF)*1000</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Bond #1</td><td>\$109,969</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Bond #2</td><td>\$80,420</td><td colspan="5">Deliver Bond #2. You receive more than the value in the cash market.</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="8">f) (harder) From these results, what is the general principle about which bond will become &quot;cheapest to deliver&quot; when yields are below 6% and above 6%?</td></tr><tr><td colspan="8">The general principle is that at a yield of 6.000% all bonds are equally good to deliver. When yields go down, all bond prices go up, but shorter duration bonds go up less, so they become relatively less expensive to deliver than longer duration bonds. When yields go up, all bond prices go down, but longer duration bonds go down more, so they become cheaper to deliver than shorter duration bonds.</td></tr></table>

# Sessions 9-10: Implementing Risk Management Strategies

<table><tr><td colspan="8">g) (harder) Assume these are the only two bonds that can be delivered against the futures contract. What will the futures price be in the market when yields are at 5.00% and at 7.00% so that there is no profitable arbitrage opportunity?</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="8">Suppose yields are 5.000%. Based on what we just saw, no one would want to deliver Bond #2. Only Bond #1 would be chosen for delivery. Since Bond #1 is cheapest to deliver, arbitrage will force the futures price to the level such that one would receive the same total amount</td></tr><tr><td colspan="5">whether Bond #1 is delivered against a futures contract or sold in the cash market.</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>At 5.000% yield, Bond #1&#x27;s price is</td><td></td><td></td><td>137.654</td><td></td><td></td><td></td><td></td></tr><tr><td>The equivalent futures price is F = Bond#1 P / DF#1</td><td></td><td></td><td>111.810</td><td></td><td></td><td></td><td></td></tr><tr><td colspan="7">If the actual futures price is higher than this, do an arbitrage by buying Bond #1 and delivering it at a higher price against the future</td><td></td></tr><tr><td colspan="7">If the actual futures price is lower than this, do an arbitrage by selling the bond short, going long futures and taking delivery.</td><td></td></tr><tr><td colspan="7">You will get Bond #1 delivered to you (because it is the only bond that it makes sense to deliver) and you can cover the short sale.</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="8">Suppose yields are 7.000%. Based on what we just saw, no one would want to deliver Bond #1. Only Bond #2 would be chosen for delivery. Since Bond #2 is cheapest to deliver, arbitrage will force the futures price to the level such that one would receive the same total amount</td></tr><tr><td colspan="5">whether Bond #2 is delivered against a futures contract or sold in the cash market.</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>At 7.000% yield, Bond #2&#x27;s price is</td><td></td><td></td><td>78.901</td><td></td><td></td><td></td><td></td></tr><tr><td>The equivalent futures price is F = Bond#2 P / DF#2</td><td></td><td></td><td>87.635</td><td></td><td></td><td></td><td></td></tr><tr><td colspan="7">If the actual futures price is higher than this, do an arbitrage by buying Bond #2 and delivering it at a higher price against the future</td><td></td></tr><tr><td colspan="7">If the actual futures price is lower than this, do an arbitrage by selling the bond short, going long futures and taking delivery.</td><td></td></tr><tr><td colspan="7">You will get Bond #2 delivered to you (because it is the only bond that it makes sense to deliver) and you can cover the short sale.</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="7">BOTTOM LINE: THE FUTURE IS ALWAYS PRICED OFF THE CHEAPEST TO DELIVER BOND.</td><td></td></tr></table>

## The Cost of Carry for CBOT Treasury Bond Futures

Treasury bonds held for delivery against a T-bond futures contract, as in a cash and carry arbitrage, will be financed by "putting them out on repurchase." In a repurchase (a "repo"), the bond is sold but the seller commits to repurchase it at a slightly higher price the following day. (This commitment is actually a kind of forward contract!)

A repurchase is really just an overnight loan, for which the bond serves as collateral. (If the borrower doesn't pay back the loan, the lender can sell the bond to recover the funds.) The difference between the selling price and the repurchase price is the interest on the loan.

The bond also accrues coupon interest over time, so the net cost of carry is the difference between the repo rate and the coupon yield.

## Cost of Carry Pricing for CBOT Treasury Bond Futures

Let $r =$ repurchase rate (quoted on a 360 day year)

$\mathrm{T} =$ days to futures maturity

C = total coupon interest earned (per \$100 face value) as of futures maturity date T. C includes accrued interest as of date T, plus all coupons that will be paid out between now and expiration, reinvested until T at the riskless rate.

$B_0 =$ current price of the deliverable bond, including interest accrued but not paid as of date 0.

DF = Delivery Factor (the contract's delivery factor set by the CBOT for that particular bond and futures expiration date)

Then,

$$
\mathrm{F}^{\mathrm{eq}} = \left(\frac{1}{\mathrm{DF}}\right) \times \left(\mathrm{B}_{0} \times \left(1 + \mathrm{r} \frac{\mathrm{T}}{360}\right) - \mathrm{C}\right)
$$

The actual fair value will be a little lower than this $\mathrm{F^{eq}}$ because there is economic value in the delivery options that the short side of the contract has.

## Cost of Carry Pricing for CBOT Treasury Bond Futures

### Example:

Values on Sept. 26, 1997 for the 11 1/4 coupon bond maturing on 2/15/2015 (this was the cheapest to deliver T-bond at that time for the DEC 1997 futures contract):

repo rate: $r = 5.51\%$

T: $T = 84$ days

Coupon interest: $C = 3.884$ (126 days of accrued interest as of T)

Bond current price: $B_{0} = 1512 / 32 + 42$ days accrued interest

$$
= 152.357
$$

Delivery factor DF = 1.2992

Futures fair value $\mathrm{F}^{\mathrm{eq}} = (1 / 1.2992) \times (152.357 \times (1 + .0551 \times 84 / 360) - 3.884)$

$$
= 115.788
$$

The actual DEC future closed at 115.750 on that date.

Some of the most important and most actively used derivatives are those based on short-term interest rates: interest rate futures, forward rate agreements, swaps, caps and floors, and more.

The most basic such instrument is the forward rate agreement (FRA). A FRA fixes the level of some interest rate, such as 90-day LIBOR, to be paid on the notional principal at a specified strike value. The payment period (the "tenor") begins on the contract's maturity date. If at FRA maturity the market rate for that tenor is above the strike rate, the short FRA counterparty pays the long the difference in interest cost between the two rates. If the market rate is lower than the strike rate, the long pays the difference to the short.

The Eurodollar futures contract is effectively the same thing, except that it is marked to market daily. Setting up a hedge correctly with FRAs or Euro$ futures becomes considerably trickier than one might first imagine because of the potential timing mismatch in the cash flows.

The objective of hedging is to achieve a combined position in which the random change in the value of the thing you are hedging is exactly offset by the change in the value of the hedge instrument(s).

This offset must be in terms of equal numbers of dollars on the same date. Proper hedging with interest rate products requires careful attention to both of these requirements.

First: On what date is the uncertainty going to be resolved? The hedge should be set up so its payoff is determined by the market rate on the date that the rate you are worried about is set.

## Second: What are the DV01s for the item being hedged and for the hedge instrument?

The size of the hedge position should be set so that this rate change produces cash flows that are equal in dollars (and opposite in sign). But this will depend on…

Third: On what date are the cash flows paid? If the cash flows on the hedge vehicle don't occur on the same date, the DV01s must be adjusted to bring them to a common point in time. THEN the number of contracts to produce dollar equivalence can be determined

A FRA fixes the level of some interest rate, such as 90-day LIBOR, to be paid on the notional principal at a specified strike value.

The Eurodollar futures contract is effectively the same thing, except that it is marked to market daily. We will see that setting up a hedge correctly with FRAs can be easy but hedging with Eurodollar futures becomes a little trickier than one might first imagine.

Recall that the Eurodollar futures price is defined by: $\mathrm{F} = 100 -$ Annual Rate, the underlying is 90-day LIBOR, and the notional is \$1 million. This makes the DV01 \$25 per contract, payable immediately, effectively at time 0.

In setting up an interest rate hedge with a forward rate agreement, there are three relevant dates:

- today,
- the date on which the cash flow you are trying to hedge will occur,
- and the date on which the uncertainty over that cash flow is resolved.

Dollar equivalence requires that the cash flow on the hedge position should be equal in size and opposite sign, as of the same date. Getting this right when the cash flow and the resolution of uncertainty are on different dates involves present-valuing or future-valuing the cash flow from the hedge to get it to match up at the same time with the cash flow being hedged.

Futures and forwards are basically the same kind of contract, but because futures are marked to market every day, their cash flows begin immediately as soon as the interest rate changes, while a forward contract does not pay until it reaches maturity. (There might be adjustments in the collateral requirements for the FRA, but this doesn't involve cash payments to the counterparty.)

This key difference leads to different hedge design for the two.

## Sessions 9-10: Implementing Risk Management Strategies

Here are futures quotes for the next 8 quarters and the forward interest rates extracted from those futures quotes. The discount function computed from these rates, PV(\$1), is used for discounting future cash flows.

Spot interest rate: $r_0 = 5.00\%$

Notional: $V = \$100,000,000$

<table><tr><td></td><td>t0</td><td>t1</td><td>t2</td><td>t3</td><td>t4</td><td>t5</td><td>t6</td><td>t7</td><td>t8</td></tr><tr><td rowspan="2">years to maturity interval Dt</td><td>0</td><td>0.25</td><td>0.5</td><td>0.75</td><td>1</td><td>1.25</td><td>1.5</td><td>1.75</td><td>2</td></tr><tr><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td>0.25</td><td></td></tr><tr><td rowspan="2">Futures price rt</td><td>95.00</td><td>94.75</td><td>94.50</td><td>94.25</td><td>94.00</td><td>93.75</td><td>93.50</td><td>93.25</td><td>93.00</td></tr><tr><td>5.00%</td><td>5.25%</td><td>5.50%</td><td>5.75%</td><td>6.00%</td><td>6.25%</td><td>6.50%</td><td>6.75%</td><td>7.00%</td></tr><tr><td>PV(\$1)</td><td>1</td><td>0.98765</td><td>0.97486</td><td>0.96164</td><td>0.94801</td><td>0.93400</td><td>0.91963</td><td>0.90492</td><td>0.88991</td></tr><tr><td>rtplus 1 b.p.</td><td>5.01%</td><td>5.26%</td><td>5.51%</td><td>5.76%</td><td>6.01%</td><td>6.26%</td><td>6.51%</td><td>6.76%</td><td>7.01%</td></tr><tr><td>PV(\$1 at rt+1b.p.)</td><td>1</td><td>0.98763</td><td>0.97481</td><td>0.96157</td><td>0.94792</td><td>0.93388</td><td>0.91949</td><td>0.90477</td><td>0.88973</td></tr></table>

To compute DV01s for a 1 basis point change in the interest rate, we consider two possibilities: either the rate changes for just one future period and all the others stay the same, or else the whole yield curve moves and all future rates go up a basis point.

Notice how discounting works here. When the short rate is different for different periods, it is easiest to discount by $\mathrm{PV}(\$1)$ the price of a pure discount bond that pays \$1 on the date in question.

## Hedging with a FRA

Hedging the quarterly interest payment on a floating rate loan that will occur on date $t_4$.

At $\mathbf{t}_4$ the cash flow will be: (notional) x (rate at $\mathbf{t}_3$) x (interval from $\mathbf{t}_3$ to $\mathbf{t}_4$)

At the current forward rate this is: $100,000,000 \times 5.75\% \times 0.25 = \$1,437,500$

WHEN IS THE UNCERTAINTY RESOLVED? At $\mathbf{t}_{3}$ when the interest rate that determines the size of the interest payment is set. So we need our hedge to mature at $\mathbf{t}_{3}$.

Suppose the rate at $t_3$ goes up 1 b.p.: $100,000,000 \times 5.76\% \times 0.25 = \$1,440,000$

The DV01 as of $t_4$ is therefore: $1,440,000 - \$ 1,437,500 = \$2500$.

To offset the risk, hedge with a \$100 million FRA that fixes a rate for the period from t₃ to t₄. But if the FRA's cash flow occurs at t₃, the timing of the cash flows doesn't match up.

Real world FRAs are often designed so that a perfect hedge of the interest payment is possible. When date $t_3$ arrives, the payoff on the FRA is set equal to the present value of the payoff, $(r_{t3} - s)$, where $s$ is the strike rate on the FRA. The discounting is done at the $t_3$ market rate $r_{t3}$. That way the cash flow on the FRA exactly offsets the extra interest above the strike rate $s$ that is caused by the realized rate $r_{t3}$

## Hedging with Eurodollar Futures

Hedging the quarterly interest payment on a floating rate loan that will occur on date $t_4$.

At $t_4$ the cash flow will be: $100,000,000 \times 5.75\% \times 0.25 = \$1,437,500$

The uncertainty is resolved at $\mathbf{t}_3$ so we use the futures contract that matures at $\mathbf{t}_3$ (or immediately after).

The DV01 on the loan payment as of $t_{4}$ is : $\$2500$.

The DV01 on a Eurodollar futures contract (as of $\mathbf{t_0}$) is: \$25.

If the futures price changes, the futures cash flow begins immediately. To bring the \$2500 loan DV01 back to the present, multiply by the $\mathbf{t}_4$ discount factor 0.94801 to get

The DV01 on the loan payment as of $t_0$ is: $2500 \times 0.98401 = \$2370$.

The DV01 on a Euro \$5 future is (as of $t_{0}$): \$25

Hedge the interest on the \$100 million loan with:

(2370 / 25) = 94.8 => 95 t₃ Eurodollar futures contracts.

The extra discounting needed when hedging with futures is called "tailing the hedge".
---
aliases: Other Swaps
tags:
key_concepts:
parent_directory: Analysis
cssclasses: academia
title: Chapter 8 - Other Swaps
linter-yaml-title-alias: Chapter 8 - Other Swaps
---

# Chapter 8

# Other Swaps

# 8.1 Variance Swap

As its name suggests, a variance swap (or var swap) exchanges one variance measure for another. Usually it is the implied variance swapping for actual variance. Since implied variance reflects an expected variance of the future (for a given tenor), variance swaps can be regarded as expected views versus actual results.

# Investopedia

Similar to a plain vanilla swap, one of the two parties involved in the transaction will pay an amount based upon the actual variance of price changes of the underlying asset. The other party will pay a fixed amount, called the strike, specified at the start of the contract. The strike is typically set at the onset to make the net present value (NPV) of the payoff zero.

At the end of the contract, the net payoff to the counterparties will be a theoretical amount multiplied by the difference between the variance and a fixed amount of volatility, settled in cash.

The variance swap, in mathematical terms, is the arithmetic average of the squared differences from the mean value. The square root of the variance is the standard deviation. Because of this, a variance swap's payout will be larger than that of a volatility swap, as the basis of these products is at variance rather than standard deviation.

Directional traders use variance trades to speculate on future levels of volatility for an asset, spread traders use them to bet on the difference between realized volatility and implied volatility, and hedge traders use swaps to cover short volatility positions.

A variance swap is a pure-play on an underlying asset's volatility. Options also give an investor the possibility to speculate on an asset's volatility. But, options carry directional risk, and their prices depend on many factors, including time, expiration, and implied volatility. Therefore, the equivalent options strategy requires additional risk hedging to complete.

Unlike options that require delta hedging, variance swaps do not require additional hedging. Also, the payoff at maturity to the long holder of the variance swap is always positive when realized volatility is more significant than the strike. The analogy can be made to CDS (which is a swap contract) versus a default protection option.

Buyers and seller of volatility swaps should know that any significant jumps in the price of the underlying asset can skew the variance and produce unexpected results.

According to Bossu and Wasserstein (2016), a term sheet is given in Figure 8.1. The floating leg of the swap pays a historically calculated variance:

$$
\sigma^ {2} = \frac {1 0 , 0 0 0 \times 2 5 2 \times \sum_ {i = 1} ^ {n _ {A}} r _ {i} ^ {2}}{n _ {E}}
$$ where


$$ r _ {i} ^ {2} = \ln {\frac {V _ {i}}{V _ {i - 1}}}
$$ and  $n_A$  is the actual number of trading days,  $n_E$  is the expected number of trading days,  $V_0$  is the closing level of the index on the trade date, and  $V_i$  is the closing level of the on date  $i$ .


The fixed leg pays a fixed amount  $K$ .

As in any swap, the fixed amount of the fixed leg is calculated at inception to render NPV 0.

These sample terms reflect current market practices. In particular:

1. Asset returns are computed on a logarithmic basis rather than arithmetic.
2. The mean return, which appears in the habitual statistics formula for variance, is ditched. This has the benefit of making the payoff perfectly additive (i.e. 1-year variance can be split into two 6-month segments.)
3. The 252 scaling factor corresponds to the standard number of trading days in a year. The  $10,000 = 100^{2}$  scaling factor corresponds to the conversion from decimal (0.01) to percentage point  $(1\%)$ .

4. The notional is specified in volatility terms (here €50,000 per 'vega' or volatility point.) The true notional of the trade, called variance notional or variance units, is given as:

$$

\mathrm {V a r i a n c e N o t i o n a l} = \frac {\mathrm {V e g a N o t i o n a l}}{2 K}

$$

With this convention, if realized volatility is 1 point above the strike at maturity, the payoff will approximately be equal to the vega Notional.

[Structure Finance] The notional for a variance swap can be expressed either as a variance notional or a vega notional. The variance notional represents the P&L per point difference between the strike squared (implied variance) and the subsequent realized variance.

Since most market participants are used to thinking in terms of volatility, trade size is typically expressed in vega notional. The vega notional represents the average P&L for a  $1\%$  change in volatility.

The vega notional  $=$  variance notional  $\times 2\mathrm{K}$

The P&L of a long variance swap can be calculated as:

$$

P \& L = N _ {\mathrm {v e g a}} \left(\frac {\sigma^ {2} - K ^ {2}}{2 K}\right) = N _ {\mathrm {v a r i a n c e}} \left(\sigma^ {2} - K ^ {2}\right)

$$

When the realized variance is close to the strike, the P&L is close to the difference between implied variance and realized variance multiplied by the vega notional.

The variance swap payout, expressed in vega notional, is locally linear around the strike.

For a vega notional of €100k, a gain of €500k is expressed as a profit of 5 Vegas (i.e. 5 times the vega notional).

# 8.1.1 Volatility Swap

The fair strike of a variance swap is slightly higher than that of a volatility swap. This is to compensate for the fact that variance is convex in volatility, as illustrated in Exhibit 2 in the next page. Identical strikes for the two instruments would otherwise lead to an arbitrage.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/96cccc011906a738c67844e382c9400b2124d068779d44b16789370926e74215.jpg)
Exhibit 2—Variance swaps are convex in volatility
Figure 8.2: Variance vs. Volatility Swap

Intuitively, the difference in fair strikes is related to the volatility of volatility: the higher the 'vol of vol', the more expensive the convexity effect of variance. This phenomenon is clearly observed when the implied volatility skew is steep, as skew accounts for the empirical fact that volatility is non constant. In fact, the fair strike of variance is often in line with the implied volatility of the  $30\%$  delta put.

# 8.1.2 Forward Starting Variance Swap

Forward-starting variance swaps can be synthesized with a calendar spread of two spot-starting variance swaps, with appropriate notionals. This is because the variance formula is designed to be perfectly additive. Taking annualization into account, we can indeed write:

$$

3 \times \mathrm {R e a l i z e d} _ {3 Y} = \mathrm {R e a l i z e d} _ {1 Y} + 2 \times \mathrm {F o r w a r d R e a l i z e d} _ {1 Y \times 2 Y}

$$ where  $\mathrm{Realized}_{1Y}$  is the future 1-year realized volatility,  $\mathrm{Realized}_{3Y}$  is the future 3-year realized volatility, and Forward Realized $_{1Y\times 2Y}$  is the future 2-year realized volatility starting in 1 year.

Thus, for a given forward variance notional, we must adjust the spot variance notionals as follows:

$\mathrm{Variance~Notional}_{1Y} = \frac{1\times\mathrm{Forward~Variance~Notional}_{1Y\times 2Y}}{2}$

$\mathrm{Variance~Notional}_{3Y} = \frac{3\times\mathrm{Forward~Variance~Notional}_{1Y\times 2Y}}{2}$

The resulting implicit fair strike for the forward variance swap is:

$$
\sqrt {\frac {3 \times K _ {\mathrm {3 Y v a r}} ^ {2} - 1 \times K _ {\mathrm {1 Y v a r}} ^ {2}}{2}}
$$

For example, with  $K_{1\mathrm{Y}\mathrm{var}} = 18.5$  and  $K_{1\mathrm{Y}\mathrm{var}} = 19.5$ , the fair strike of a 2-year variance swap starting in 1 year would be:

$$
\sqrt {\frac {3 \times 1 9 . 5 ^ {2} - 1 \times 1 8 . 5 ^ {2}}{2}} \approx 2 0
$$

The corresponding replication strategy for a long €h100,000 forward vega notional position (equivalent to 2,500 forward variance units) would be to buy  $3 \times 2,500 / 2 = 3,750$  variance units of the 3-year variance swap and sell  $2,500 / 2 = 1,250$  variance units of the 1-year.

# 8.1.3 S&P 500 Variance Futures http://cfe.cboe.com/education/finaleuromoneyvarpaper.pdf

The CBOE variance futures contracts offer an alternative to variance swaps. They provide an opportunity to gain the same exposure to variance as their OTC counterpart. These products trade on the CBOE Futures Exchange with quarterly expirations and are listed under the futures symbols VT (for three-month variance) and VA (for 12-month variance). Per its contract specifications, the price of a CBOE variance futures contract at maturity is identical to the settlement value for a variance swap under the realisation that N prices map to N-1 yields.

The contract multiplier for the CBOE variance future contracts is US \$50 per futures point change. Thus, at the beginning of the realised variance observation period, trading a single variance futures contract is equivalent to trading a US\$ 50 variance notional variance swap. This identity does not hold once the contract enters its observation period, because the denominator of the futures contract remains fixed throughout the period. For example, trading a 12-month variance contract half way through its observation period is equivalent to trading a US25 variance notional with six months to expiration.

# 8.2 Total Return Swap

Total return swap, or TRS (especially in Europe), or total rate of return swap, or TRORS, or Cash Settled Equity Swap is a financial contract that transfers both the credit risk and market risk of an underlying asset.

By Moorad Choudhry (http://www.yieldcurve.com/Mktresearch/LearningCurve/TRS.pdf):

A total return swap (TRS), sometimes known as a total rate of return swap or TR swap, is an agreement between two parties that exchanges the total return from a financial asset between them. This is designed to transfer the credit risk from one party to the other. It is one of the principal instruments used by banks and other financial instruments to manage their credit risk exposure, and as such is a credit derivative. They are used as credit risk management tools, and also as synthetic repo instruments for funding purposes. One definition of a TRS is given in Francis et al. (1999), which states that a TRS is a swap agreement in which the total return of a bank loan or credit-sensitive security is exchanged for some other cash flow, usually tied to Libor or some other loan or credit-sensitive security.

# 8.3 Index Swap

Wikipedia:

A property derivative is a financial derivative whose value is derived from the value of an underlying real estate asset. In practice, because individual real estate assets fall victim to market inefficiencies and are hard to accurately price, property derivative contracts are typically written based on a real estate property index. In turn, the real estate property index attempts to aggregate real estate market information to provide a more accurate representation of underlying real estate asset performance. Trading or taking positions in property derivatives is also known as synthetic real estate.

Property derivatives usually take the form of a total return swap, forward contract, futures, or can adopt a funded format where the property derivative is embedded into a bond or note structure. Under the total return swap or forward contract the parties will usually take contrary positions on the price movements of a property index.

The only index used for writing property derivative contracts in the UK are the various property indices published by the Investment Property Databank (IPD) now owned by MSCI. The IPD Annual Index covers approximately 12,000 directly held UK property investments, market revalued in December 2015 at just under £202 billion equivalent to  $49\%$  of the UK investment market. IPD indices have also been used in a number of other countries such as Australia, France, Germany, Italy, Japan and Switzerland as the basis for commercial property derivatives. In the United States commercial property utilizes the National Council of Real Estate Investment Fiduciaries (NCREIF) property index the NPI. There are two main residential real estate indices in the United States which trade - Radar Logic's RPX, and the main index - S&P/Case-Shiller Home Price Indices.

- NPI Total Return Swap for Fixed
- NPI Property Type Total Return Swap
Similar products on IPD in U.K

# 8.4 Inflation Swap

An inflation swap is a contract used to transfer inflation risk from one party to another through an exchange of fixed cash flows. In an inflation swap, one party pays a fixed rate cash flow on a notional principal amount while the other party pays a floating rate linked to an inflation index, such as the Consumer Price Index (CPI). The party paying the floating rate pays the inflation adjusted rate multiplied by the notional principal amount. Usually, the principal does not change hands. Each cash flow comprises one leg of the swap.

The advantage of an inflation swap is that it provides an analyst a fairly accurate estimation of what the market considers to be the 'break-even' inflation rate. Conceptually, it is very similar to the way that a market sets the price for any commodity, namely the agreement between a buyer and a seller (between demand and supply), to transact at a specified rate. In this case, the specified rate is the expected rate of inflation.

Simply put, the two parties to the swap come to an agreement based on their respective takes on what the inflation rate is likely to be for the period of time in question. As with interest rate swaps, the parties exchange cash flows based on a notional principal amount (this amount is not actually exchanged), but instead of hedging against or speculating on interest rate risk their focus is solely on the inflation rate.

Inflation swaps are used by financial professionals to mitigate (hedge) the risk of inflation and to use the price fluctuations to their advantage. Many types of institutions find inflation swaps to be valuable tools. Payers of inflation are typically institutions that receive inflation cash flows as their core line of business. A good example might be a utility company because its income is linked (either explicitly or implicitly) to inflation.

Zero coupon swaps are most common, where the cash flows are swapped only at maturity.

An example of an inflation swap would be an investor purchasing commercial paper. At the same time, the investor enters into an inflation swap contract receiving a fixed rate and pays a floating rate linked to inflation. By entering into an inflation swap, the investor effectively turns the inflation component of the commercial paper from floating to fixed. The commercial paper gives the investor real LIBOR plus credit spread and a floating inflation rate, which the investor exchanges for a fixed rate with a counterparty.

Exhibit 5: Inflation swap rate vs. CPI

Figure 8.3: Inflation Swap (JPM)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/e78d3a421e5d514b1229bfd7ce394b28d39579ed15280f7e4419b56d7c364c86.jpg)

Source: Bloomberg and J.P. Morgan Asset Management.

# 8.4.1 Year-on-Year Inflation Swap

Each year, at time  $T_{i}$

Party B pays Party A the fixed amount

$$
N \phi_ {i} K
$$

Party A pays Party B the floating amount

$$
N \psi_ {i} \left[ \frac {\iota (T _ {i})}{\iota (T _ {i - 1})} - 1 \right]
$$ where:


K is the contract fixed rate

N the contract nominal value

M the number of years corresponding to the deal maturity i the number of years  $(0 <   \mathrm{i} <   = \mathrm{M})$


$\phi_{i}$  is the fixed-leg year fractions for the interval  $[T_i - 1,T_i]$

$\psi_{i}$  is the floating-leg year fractions for the interval  $[T_i - 1, T_i]$

$T_{0}$  is the start date

$T_{i}$  is the time of the flow i

$T_{M}$  is the maturity date (end of the swap)

$\iota (T_0)$  is the inflation at start date (time  $T_{0}$ )

$\iota(T_i)$  is the inflation at time of the flow  $i$  (time  $T_i$ )

$\iota (T_M)$  is the inflation at maturity date (time  $T_{M}$ )

# 8.4.2 Zero Coupon Inflation Swap

At time  $T_{M} = \mathrm{M}$  years

Party B pays Party A the fixed amount

$$

N [ (1 + K) ^ {M} - 1 ]

$$

Party A pays Party B the floating amount

$$

N \left[ \frac {\iota (T _ {M})}{\iota (T _ {0})} - 1 \right]

$$

For example, assuming two parties enter into a five-year zero coupon inflation swap with a notional amount of  \$100 million, 2.4\%$  fixed rate, and the agreed upon inflation index, such as CPI, at  $2.0\%$  when the swap is agreed upon. At maturity, CPI is at  $2.5\%$ .

Fixed Leg = 100,000,000 * [(1.024)5 - 1)]
= \ 100,000,000 * [1.1258999 - 1]
= 12,589,990.68

Inflation Leg = 100,000,000 * [(0.025 ÷ 0.020) - 1]

$$

\begin{array}{l} = \$ 100,000,000 * [ 1.25 - 1 ] \\ = \$ 25,000,000.00 \\ \end{array}

$$

Since the compounded inflation rose above  $2.4\%$ , the inflation buyer profited, else the inflation seller would have profited.

The currency of the swap determines the price index that is used to calculate the rate of inflation. For example, a swap denominated in U.S. dollars would be based on the Consumer Price Index (CPI), a proxy for inflation that measures price changes in a basket of goods and services in the United States. A swap denominated in British pounds would typically be based on Great Britain's Retail Price Index (RPI).


Like every debt contract, a zero coupon inflation swap is subject to the risk of default from either party either because of temporary liquidity problems or more significant structural issues, such as insolvency. To mitigate this risk, both parties may agree to put up collateral for the amount due.

Other financial instruments that can be used to hedge against inflation risk are real yield inflation swaps, price index inflation swaps, Treasury Inflation Protected Securities (TIPS), municipal and corporate inflation-linked securities, inflation-linked certificates of deposit, and inflation-linked savings bonds.

# 8.5 Equity Swap

Equity swaps originally refer to exchange physical assets (e.g. real estate). It stemmed from an old business tradition "buy-and-lease-back" which allows the company not to list the equipment/property on their balancesheet. Such a practice gradually grew into swaps and now with a digital world often it refers to just exchange of two streams of cash flows.

Investopedia:

An equity swap is an exchange of future cash flows between two parties that allows each party to diversify its income for a specified period of time while still holding its original assets. An equity swap is similar to an interest rate swap, but rather than one leg being the "fixed" side, it is based on the return of an equity index. The two sets of nominally equal cash flows are exchanged as per the terms of the swap, which may involve an equity-based cash flow (such as from a stock asset, called the reference equity) that is traded for fixed-income cash flow (such as a benchmark interest rate).

Swaps trade over-the-counter and are very customizable, based on what two parties agree to. Besides diversification and tax benefits, equity swaps allow large institutions to hedge specific assets or positions in their portfolios.

Equity swaps should not be confused with a debt/equity swap, which is a restructuring transaction in which the obligations or debts of a company or individual are exchanged for equity.

Because equity swaps trade OTC, there is counterparty risk involved.

For example, one party will pay the floating leg (typically linked to LIBOR) and receive the returns on a pre-agreed-upon index of stocks relative to the notional amount of the contract. Equity swaps allow parties to potentially benefit from returns of an equity security or index without the need to own shares, an exchange-traded fund (ETF), or a mutual fund that tracks an index.


Most equity swaps are conducted between large financing firms such as auto financiers, investment banks, and lending institutions. Equity swaps are typically linked to the performance of an equity security or index and include payments linked to fixed rate or floating rate securities. LIBOR rates are a common benchmark for the fixed income portion of equity swaps, which tend to be held at intervals of one year or less, much like commercial paper.

Assume a passively managed fund seeks to track the performance of the Standard & Poor's 500 index (S&P 500). The asset managers of the fund could enter into an equity swap contract, so it would not have to purchase various securities that track the S&P 500. The firm swaps  \$25 million at LIBOR plus two basis points with an investment bank that agrees to pay any percentage increase in\$ 25 million invested in the S&P 500 index for one year.

Therefore, in one year, the passively managed fund would owe the interest on \$25 million, based on the LIBOR plus two basis points. However, its payment would be offset by \$25 million multiplied by the percentage increase in the S&P 500. If the S&P 500 falls over the next year, then the fund would have to pay the investment bank the interest payment and the percentage that the S&P 500 fell multiplied by 25 million. If the S&P 500 rises more than LIBOR plus two basis points, the investment bank owes the passively managed fund the difference.

Since swaps are customizable based on what two parties agree to, there are many potential ways this swap could be restructured. Instead of LIBOR plus two basis points we could have seen one bp, or instead of the S&P 500, another index could be used.

One can view equity swaps as financing the purchase of an equity index (via e.g. LIBOR). Such swaps are popular for those investors who want run a positive (or negative) carry trade.

# 8.6 Commodity Swap

# Investopedia:

A commodity swap is a type of derivative contract where two parties agree to exchange cash flows dependent on the price of an underlying commodity. A commodity swap is usually used to hedge against price swings in the market for a commodity, such as oil and livestock. Commodity swaps allow for the producers of a commodity and consumers to lock in a set price for a given commodity.


Commodity swaps are not traded on exchanges. Rather, they are customized deals that are executed outside of formal exchanges and without the oversight of an exchange regulator. Most often, the deals are created by financial services companies.

A commodity swap consists of a floating-leg component and a fixed-leg component. The floating-leg component is tied to the market price of the underlying commodity or agreed-upon commodity index, while the fixed-leg component is specified in the contract. Most commodity swaps are based on oil, though any type of commodity may be underlying the swap, such as precious metals, industrial metals, natural gas, livestock, or grains. Because of the nature and sizes of the contracts, typically only large financial institutions engage in commodity swaps, not individual investors.

Generally, the floating-leg component of the swap is held by the consumer of the commodity in question, or the institution willing to pay a fixed price for the commodity. The fixed-leg component is generally held by the producer of the commodity who agrees to pay a floating rate, which is determined by the spot market price of the underlying commodity.

The end result is that the consumer of the commodity gets a guaranteed price over a specified period of time, and the producer is in a hedged position, protecting them from a decline in the commodity's price over the same period of time. Typically, commodity swaps are cash-settled, though physical delivery can be stipulated in the contract.

In addition to fixed-floating swaps, there is another type of commodity swap, called a commodity-for-interest swap. In this type of swap, one party agrees to pay a return based on the commodity price while the other party is tied to a floating interest rate or an agreed-upon fixed interest rate. This type of swap includes a notional principal-a predetermined dollar amount on which the exchanged interest payments are based-a specified duration, and pre-specified payment periods. This type of swap helps protect the commodity producer from the downside risk of a poor return in the event of a downturn in the commodity's market price.

In general, the purpose of commodity swaps is to limit the amount of risk for a given party within the swap. A party that wants to hedge their risk against the volatility of a particular commodity price will enter into a commodity swap and agree, based on the contract set forth, to accept a particular price, one that they will either pay or receive throughout the course of the agreement. Airline companies are heavily dependent on fuel for their operations. Swings in the price of oil can be particularly challenging for their businesses, so an airline company may enter into a commodity swap agreement to reduce their exposure to any volatility in the oil markets.


# Example

As an example, assume that Company X needs to purchase 250,000 barrels of oil each year for the next two years. The forward prices for delivery on oil in one year and two years are  \$50 per barrel and\$ 51 per barrel. Also, the one-year and two-year zero-coupon bond yields are 2\% and 2.5\%. Two scenarios can happen: paying the entire cost upfront or paying each year upon delivery.

To calculate the upfront cost per barrel, take the forward prices, and divide by their respective zero-coupon rates, adjusted for time. In this example, the cost per barrel would be:

$$

\text{Barrel cost} = \50 / (1 + 2\%) + \51 / (1 + 2.5\%)^{2} = \49.02 + \48.54 = \$97.56.

$$

By paying \$97.56 × 250,000, or \$24,390,536 today, the consumer is guaranteed 250,000 barrels of oil per year for two years. However, there is a counterparty risk, and the oil may not be delivered. In this case, the consumer may opt to pay two payments, one each year, as the barrels are being delivered. Here, the following equation must be solved to equate the total cost to the above example:

$$

\mathrm{Barrel~cost} = X / (1 + 2 \%) + X / (1 + 2.5 \%) ^ {2} = \$ 97.56.

$$

Given this, it can be calculated that the consumer must pay 50.49 per barrel each year.

<table><tr><td colspan="2">General Terms</td></tr><tr><td>Swap Buyer (Party A)</td><td>TBD [e.g. Investor]</td></tr><tr><td>Swap Seller (Party B)</td><td>TBD [e.g. Dresdner Bank AG]</td></tr><tr><td>Trade date</td><td>TBD</td></tr><tr><td>Expiration Date</td><td>TBD [e.g. Trade date + 1 year]</td></tr><tr><td>Swap</td><td>Variance Swap on Equity Index</td></tr><tr><td>Index</td><td>.STOXX50E</td></tr><tr><td>Currency</td><td>EUR</td></tr><tr><td>Observation Frequency</td><td>Daily</td></tr><tr><td>Approximate Vega Notional</td><td>EUR 50,000</td></tr><tr><td>Variance Units</td><td>1157.41 (Approximate Vega Notional divided by 2 x Volatility Strike)</td></tr><tr><td>Volatility Strike</td><td>21.6</td></tr><tr><td>Variance Strike</td><td>466.56 (square of the Volatility Strike)</td></tr><tr><td>Cash Settlement Date</td><td>Two business days after the Expiration Date</td></tr><tr><td>Payment Amount</td><td>The Payment Amount is calculated as:
Variance Units × (σ2 - Variance Strike)
If the Payment Amount is positive, the Swap Seller (B) pays to the Swap Buyer (A); if the Payment Amount is negative, the Swap Buyer (A) pays to the Swap Seller (B) the absolute value.</td></tr><tr><td>Variance Calculation</td><td>σ2is the observed realized variance of the Index between the Trade Date and the Expiration Date, given as: σ2= 10,000 × 252 × ∑i=1NActualReturn2i/NExpected
Where:
Returnj = ln(Ej/Ej-1)
NExpected is the expected number of trading days from, but not including, the Trade Date, up to and including the Expiration Date.
NActual is the actual number of trading days on which no market disruption event occurs from, but not including, the Trade Date, up to and including the Expiration Date.
E0is the closing level of the index on Trade Date.
Eiis the closing level of the index on date i or, at Expiration Date, the options final settlement level.</td></tr></table>

Figure 8.1: Variance Swap


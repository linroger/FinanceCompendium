---
aliases: []
tags:
  - derivatives
  - financial_instruments
  - futures
  - forwards
  - options
  - swaps
  - hedging
key_concepts:
  - derivative_instruments
  - risk_management
  - forward_contracts
  - options_pricing
  - swaps
parent_directory: "VI. Derivatives"
cssclasses: academia
title: "Understanding Derivatives in Financial Markets"
---

# Understanding Derivatives

Brian Eales

London Metropolitan University

Derivative instruments have been a feature of modern financial markets for several decades. They play a vital role in managing the risk of underlying securities such as bonds, equity, equity indexes, currency, short-term interest rate asset or liability positions. In the commodity markets they have, in general, been around for a great deal longer. In modern times the Chicago Board of Trade, for example, was set up in 1848 for the exchange trading of agricultural products such as wheat and corn. The Exchange put in place a mechanism that would play an important role in helping the agricultural community to plan for the future by enabling users of derivatives to lock-in the prices they will receive for their goods before they were even ready for harvesting. In 1865 the Chicago Board formally established its General Rules. This opened the floodgates for spot and forward trading of commodities – which ultimately would be delivered to an end user – and in 1870 the New York Cotton Exchange was established.

Financial futures contracts, where in many cases no delivery of a physical security is involved (rather settlement is in the form of a cash payment), had to wait another century before taking off. However, once present they succeeded in generating trading volumes in stock indexes, stocks, foreign exchange, bonds and short-term interest rate instruments to unprecedentedly high levels.

Just what are these derivatives, though, and what role or roles do they play? A working definition of a derivative, which will help lay the foundation of this text, is: "an instrument whose existence and value is contingent upon the existence of another instrument or security". The security on which the derivative is created may itself be a derivative and this can give rise to potentially dangerous inverse financial pyramids.

The major derivative instruments, which in some respects may be regarded as building blocks, can be categorised as follows:

- futures
- forwards
- swaps, and
- options

Each instrument has its own characteristics, which offer advantages in using them but bring with them disadvantages. The disadvantages may not always be apparent to the end user and these days it is crucial that end users are made aware of the risks associated with the derivative contracts they enter into and are made aware of the instrument's appropriateness for the purpose it is to perform.

Why should market participants seek to use derivatives? There are several answers to this question: derivatives may be used to:

- speculate;
- hedge a portfolio of shares, bonds, foreign currency, etc.;
- undertake arbitrage - i.e. benefit from mispricing;
- engineer or structure desired positions.

Each of these functions will be described in detail in later chapters.

One justification for their use in hedging can be found in the domain of portfolio diversification. The classical portfolio allocation methods of Markowitz and Sharpe, and extensions of those methodologies provide accepted, well-documented cases for creating a collection of risky assets and combining them in a portfolio so that the risk of loss is spread, or diversified, over the constituents of that portfolio.<sup>1</sup> Adopting such a strategy will result in risk reduction as illustrated in Figure 1.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/9fa9d42e-ea7b-4acd-95ee-7315392c7b19/38875e308531c4801ecc37af283b10ece19d456ec06e4d6e2e35973e73d9622d.jpg)  
Figure 1. Effects of diversification on portfolio risk

From Figure 1 it can be seen that, up to a point, the inclusion of additional risky assets reduces the overall risk of the portfolio. However, beyond a certain point risk reduction hardly occurs but an identifiable risk still remains. This component of risk is known by several names: market risk, systematic risk and non-diversifiable risk, as indicated on the figure. It is the hedging of this form of risk to which some derivatives are directed.

These days a great deal of effort is directed towards constructing portfolios that mimic the behaviour of a specially constructed index with minimum tracking error. Such portfolios are described as index-tracking portfolios and – in the case of zero-tracking error<sup>2</sup> – enjoy a portfolio beta of one (i.e. $\beta_p = 1$). They replicate market movements up and down exactly. Even if $\beta_p \neq 1$ but is very close derivatives on the appropriate index should be able to serve as very good hedge vehicles.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/9fa9d42e-ea7b-4acd-95ee-7315392c7b19/56b202ea2db03b5505bb1b0aae6bb50570f35c37a946c500bb4c322882fff1dc.jpg)  
Figure 2. Long equity index position

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/9fa9d42e-ea7b-4acd-95ee-7315392c7b19/962b9de35eb620a2f06200e94b30311495cf383eb8c6945f208b19b34ee64d7a.jpg)  
Figure 3: Short equity index position

To demonstrate this idea consider a portfolio's exposure to market risk. For many short-term interest rate, equity, foreign exchange positions, etc., this can be expressed in the form of a simple profit/loss diagram as depicted in Figure 2.

If the current value of the portfolio is based on an index value of 5000 any positive movement in the index will result in an increase in the value of the portfolio while any fall from the value of 5000 will see the value of the portfolio decline. An obvious way of countering the effect of a downward movement in the index is by adding to the portfolio a security whose value will fall when the index rises. The payout of such an instrument is exhibited in Figure 3.

By combining the long position depicted in Figure 2 and the short position in Figure 3 a flat position is obtained, the downside risk has been removed but the upside profit potential has also been eliminated. In other words it does not matter whether the index rises or falls, the value of the portfolio today (5000) is, to a great extent, assured – at least in theory and an ideal world.

# Exchange-based futures contracts

Exchange-based futures contracts can be used to manipulate a portfolio's risk exposure. By adjusting the number of contracts shorted or bought, the portfolio can be made neutral to market moves by creating a zero portfolio beta. The portfolio can be made bullish by increasing the portfolio's beta to a value greater than one, or can be made bearish by reducing the portfolio's beta to a value of less than zero. Being exchange-based derivatives, futures contracts are very tightly defined and regulated to ensure that all parties to a transaction are aware of the instrument's operational characteristics. The use of futures contracts is explained in another "Learning Curve" article.

# Forward contracts

Forward contracts could also be used to hedge the position in the same way as futures contracts. These contracts, however, are off-exchange products (also known as OTCs). They offer far more in the way of flexibility from the end user's point of view. However, despite the fact that British Banker's Association (BBA) and International Swaps and Derivatives Association (ISDA) standardised documentation exists for many OTC instruments, caution in their use on the part of the end user is still of paramount importance. For example, there may be penalty clauses if a contract is wound up before it reaches its maturity date. There may also be large bid-offer spreads when buying and later trying to close the position. And unless some form of monitoring takes place on a periodic basis there is a risk of counterparty default.

Notwithstanding these disadvantages, transactions in forwards in the world's interest rate, foreign exchange, equity, equity index markets run into billions of dollars daily.

In their favour, forward contracts do not suffer from basis risk, they are not restricted by the imposition of standardised contracts, boasts, in many cases 24-hour/day trading, and are not open to potential squeezes.

Pricing of these contracts is similar across all markets and considers two strategies. In the interest rate domain, in setting up a standardised forward rate agreement (FRA) a forward rate will need to be calculated and the results lead to forward/forward interest rates.

# Forward/forward interest rates

The idea of rolling over an investment with its associated reinvestment risk or going for one long investment is one way of examining the problem of "fair" pricing.

The diagram below shows the rollover investment problem:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/9fa9d42e-ea7b-4acd-95ee-7315392c7b19/c53cda7ef7ac1555995ab95062e0a99966112345ea27876fd670cc88d9f1f005.jpg)

The question mark indicates that we do not know with certainty at what rate we will be able to reinvest when the first $n_1$ days have elapsed. Given that the spot rates $r_{01}$ and $r_{02}$ are known, an implied forward rate $\mathrm{r}_{12}$ can be calculated using equation (1.1).

$$
r_{12} = \left[ \left(\frac{1 + r_{o2} \frac{\mathrm{n}_2 \text{days}}{\text{Days in year}}}{1 + r_{o1} \frac{n_1 \text{days}}{\text{Days in year}}}\right) - 1 \right] \left(\frac{\text{Days in year}}{n_2 - n_1}\right) \tag{1.1}
$$

These implied rates play an important role in the valuation of plain vanilla as well as more complex swap structures.

Generally, the pricing of a forward contract can be regarded as the interplay between two strategies. In the case of a forward interest rate derivative, a fair forward price could be obtained by using the strategies in Table 1.

For there to be no profit accruing at some specified forward date to either of the counterparties, the two strategies should have equal values at the maturity of the contract. Thus when the contract is held for $n_1 / 365$ days, the value of Strategy 1 at maturity will be:

$$
S_t - S_0 - S_0 (r - q) \left(n_1 / 365\right) \tag{1.2}
$$

Where

$S_t$ represents the value of $\mathbf{S}_o$ at maturity, T;

$r$ represents all the annualised costs of holding the asset (including the interest on the borrowed funds, storage, deterioration, insurance, etc);

$q$ represents the annualised return on the asset.

Note that both $r$ and $q$ are expressed as proportions.

<table><tr><td>Strategy 1</td><td>Strategy 2</td></tr><tr><td>Borrow funds and buy one unit of the underlying security at price So.</td><td>Buy a forward contract at price F.</td></tr></table>

The value of Strategy 2 at maturity will be the difference between the purchase price of the forward contract at initiation and the realised spot price at maturity as shown in equation (1.3):

$$
S_T - F. \tag{1.3}
$$

Since there is to be no profit, equation (1.2) must be equal to equation (1.3) at maturity.

$$
S_T - F = S_T - S_O - S_O (r - q) \left(n_l / 365\right)
$$

$$
F = S_0 + S_0 (r - q) \left(n_1 / 365\right). \tag{1.4}
$$

This same approach can be adopted for the pricing of a futures contract. Notice that if $r > q$ then $F$ today will be higher than today's spot or cash market quote, and if $r < q$ the reverse is true. In either case this difference between the spot and forward, futures quote is called basis (sometimes raw basis). In the case of futures contracts the basis at some future point in time is, more often than not, unknown - when the contract is closed out before maturity, for example. This leads to the problem of basis risk mentioned earlier.

# Options

Options too come in both exchange-based and OTC varieties. Basically there are two types of option classes available: calls and puts. Buying an option bestows on the purchaser (the holder) a privilege. That privilege is the right but not the obligation to buy (call) or sell (put) a specified underlying security at a specified price (strike or exercise price) on a specified future date (European-style options) or on or before a specified future date (American-style options).

Options bring with them the possibility of creating some interesting structures. The kinked – sometimes described as the "hockey stick" – shape of an option's payoff profile at expiration comes in four shapes: long or short calls, long or short puts as illustrated in Figures 4, 5, 6 and 7.

Figures 4-7 represent the kinked payoff profiles of long call, long put, short call and short put options, respectively. Armed with the profiles and operational characteristics of the derivative instruments discussed in this text, it becomes possible to embark on the creation of derivative-based structured products in virtually any domain. Good examples of this are the introduction of energy derivatives, catastrophe derivatives, property index forwards (PIFs), and weather derivatives.

# Swaps

These instruments are based on an agreement between two counterparties to exchange a series of cash flows. The cash flows are almost always calculated by reference to the behaviour of an index and are scaled by an agreed nominal principal. Swaps are now available on interest rates, currencies, equity, credit, property, weather indices and, of course, many types of commodities.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/9fa9d42e-ea7b-4acd-95ee-7315392c7b19/36cdc09fb8eccf8792e7d789236a83d9297000fbf241e54d5c80f72e43f43cd4.jpg)  
Figure 4: Options only position (long call)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/9fa9d42e-ea7b-4acd-95ee-7315392c7b19/a0d3af028478ec8294ca7ad12708bfc085931fc4e2dd23fcf88272d24cc4911c.jpg)  
Figure 5: Options only position (long put)

Figure 8 gives an idea of the structure of a standard (often called plain vanilla) interest rate swap. The counterparties to the transaction have each raised funds in different markets. Company A has raised funds in the money market and will have an obligation to pay LIBOR on specified dates in the future. Company B has raised funds through the issue of a bond and will need to pay coupons on specified dates in the future. The two parties then agree to swap their periodic commitments. Company A pays Company B a fixed rate when due and receives in return LIBOR. In this way the original commitments will be altered from floating rate to fixed rate and from fixed rate to floating rate.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/9fa9d42e-ea7b-4acd-95ee-7315392c7b19/4a273bc9bc4f5b1490ee4d56887c0255f668f4bb5c6ae9a6abcd87131b0ddb8a.jpg)  
Figure 6: Options only position (short call)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/9fa9d42e-ea7b-4acd-95ee-7315392c7b19/184eeae75888f57a6608fb7c3b468956a9df8f39ee63267de7507aed21fab87f.jpg)  
Figure 7: Options only position (short put)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/9fa9d42e-ea7b-4acd-95ee-7315392c7b19/76051df741343fb488729d0294fe17b41b0dd1a3fa1c2dd16ce8bfc5fe4ed0fd.jpg)  
Figure 8: Structure of a standard interest rate swap

# Example 1

A company with an investment grade credit rating has issued a five-year callable bond paying a fixed income coupon. The bond is callable at the end of Year 3 if interest rates have fallen to a level specified in the bond's term sheet. When interest rates are high the price of the bond is low and the bond is not called. This is illustrated in Figure 9(a). However, at a certain pre-specified level of interest (LIBOR) there will be a comparable bond yield that will provide the issuer with an opportunity to call the bond. When this happens the bond is redeemed and the investor will deposit the funds on an interest-bearing account that now reflects the now lower floating rate. Figure 9(b) illustrates the interest rate differential between the original fixed coupon and the lower floating rate.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/9fa9d42e-ea7b-4acd-95ee-7315392c7b19/325d7587108dcf4ee12e2099de2e859a90b5dd25c45c6ac00e213c7c93706f6b.jpg)  
Figure 9(a): Callable bond

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/9fa9d42e-ea7b-4acd-95ee-7315392c7b19/100f6c54fed2c26b42084be5987da6b3858a89a1945cf1816a2e5669aa935592.jpg)  
Figure 9(b): Bond callable

The profile of the callable bond presented in Figure 9(a) and 9(b) can be synthesised as follows. Buy a five-year bullet bond with the same coupon, maturity and credit rating as the callable bond. The profile of this instrument is depicted in Figure 1.10(a). The second step, carried out simultaneously, is to write a put option on a swap (a put swaption or receiver swaption) for the appropriate future period and strike price. If the put swaption is exercised then the writer of the option will pay fixed and receive floating. There are three scenarios that can be employed to analyse the outcome of the replication process:

1. Interest rates rise and the bond is not called. Replication strategy: the bullet bond pays coupons until maturity, in the absence of default. The put swaption will expire worthless since the holder of the receiver swaption would be contracting to pay higher floating rates and this would be irrational.
2. Interest rates remain unchanged at the point that the bond becomes callable and the bond is not called. Replication strategy: as in 1.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/9fa9d42e-ea7b-4acd-95ee-7315392c7b19/30f3a370c193e393bfc3107ab0405149381e33ee0a8b9128dd012fb745a82208.jpg)
Figure 10(a): Bullet bond

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/9fa9d42e-ea7b-4acd-95ee-7315392c7b19/30a35843c66ea3230fa591aa2b7b516e2722b17012ea0b74180fd4c931580ec2.jpg)
Figure 10(b): Swaption payout

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/9fa9d42e-ea7b-4acd-95ee-7315392c7b19/99e828e5d1501fb88f098efc585962b6503c7031a9590bf704761961df0e5069.jpg)
Figure 10(c): Synthetic

3. Interest rates fall and the bond is called. Replication strategy: the bullet bond continues to pay coupons, but the put swaption is exercised. The holder of the receiver swaption pays low floating rates and receives the contracted strike rate. This is funded by the bullet bond's fixed coupon.

A swap diagrammatic representation of this is shown in Figure 11. Finally there is the counterparty risk aspect. The risk is that the counterparty to a transaction will fail to meet its obligation to pay coupons when due, to pay the redemption value or will fail to honour both of these obligations. If the instrument in question is a bond, the only way to cover that risk is to sell the bond but, of course, if the market recognises the risk of default the bid price is likely to be low. To this end credit derivatives have been introduced, and, despite initial problems concerning definitions for legal purposes, have gained acceptance in financial markets.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/9fa9d42e-ea7b-4acd-95ee-7315392c7b19/62a43b916855ca69c7d02f66c9be7b0940f89318c4ddaaed4f0eaa9b44953a1f.jpg)  
Figure 11: Synthetic callable bond

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/9fa9d42e-ea7b-4acd-95ee-7315392c7b19/6f7f5902cae5310113a137dd5c297a0def6cf6fdacbbb145282b40e8b35f5967.jpg)  
Figure 12: Total return swap (TRS)

There are several types of credit derivatives available. The most common are: credit default swaps and options, total return swaps, credit-linked notes, asset swaps and credit spread instruments. It is interesting to observe that a total return swap can also be used as a means of increasing an asset's liquidity. By way of example consider a financial institution with a loan portfolio that is regarded as being too large. For operational reasons, or pragmatic reasons, it is impossible to recall the loans and hence there is both credit and liquidity risk. In order to reduce the identified risks and increase liquidity the institution embarks on a total return swap for one of its large loans. The institution becomes the total return payer and receives a floating interest rate payment, LIBOR, say, in return.

Figure 12 illustrates the structure of this transaction. The bank will receive interest payments from the reference loan along with any fees or costs associated with the running of the loan and will pass these on to the investor counterparty so long as they are positive. In any period, if the return on the loan becomes negative, that negative return must be paid by the investor to the bank. In addition the bank will receive LIBOR on a period-by-period basis. Thus by entering this transaction the bank has succeeded in reducing its exposure to counterparty risk and has improved its liquidity position.
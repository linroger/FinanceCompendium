---
parent_directory:
title: I General Overview
tags:
aliases:
parent_folder: 2024 Financial Instruments
subfolder:
key_concepts:
cssclasses: academia
linter-yaml-title-alias: I General Overview
---

<toc>
1 GENERAL OVERVIEW 7
2 INTRODUCTION 9
3 PRODUCTS OF INTEREST RATES 12
3.1 Zero Coupon Bonds 12
3.2 Coupon Bonds (Straight Bonds) 13
3.3 Floating Rate Notes (FRNs, Floaters) 14
3.4 Plain Vanilla Swaps 16
3.5 Forward Rate Agreements (FRAs) 17
3.6 Callable/Portable Zero Coupon Bonds 18
3.7 Callable/Portable Coupon Bonds 21
3.8 Putable Floaters 24
3.9 Swaptions 25
3.10 Floors, Caps and Collars 26
3.11 Floored Floating Rate Notes, Capped Floating Rate Notes and collared Floaters 29
3.12 Reverse Floating Rate Notes 31
3.13 Multitranches Bonds 33
3.14 Step-up/Step-down Bonds 34
3.15 Floating Rate/Fixed Rate Notes 36
3.16 Fixed Rate/Zero Coupon Bonds 37
3.17 Fixed to Floating Rate Notes 39
3.18 Digital Ranges 40
3.19 Range Floaters 43
3.20 Barrier Notes 45
3.21 Fixed/Floating Rate Bonds with Put Option 47
3.22 Annex - Product Replication Overview 48

4 PRODUCTS OF EQUITIES DERIVATIVES 50

4.1 Convertible Bonds 50

4.2 High-Yield Products 54

4.2.1 Introduction 54

4.2.3 Cash-or-Share Bonds-Various Currencies 59

4.2.4 High-Yield Index Bonds 61

4.2.5 High-Yield Basket Bonds 63

4.2.6 High-Yield Lookback Bonds 66

4.3 Capital-Guaranteed Products 68
4.3.1 Introduction 68
4.3.2 European Call Options 69
4.3.3 European Put Options 75
4.3.4 Asian Options (Average Rate Options) 81
4.3.5 Capped Call Options 85
4.3.6 Forward Start Call and Put Options 87
4.3.7 Cliqet/Ratchet Options (Series of consecutive Calls/Puts) 91
4.3.8 Binary Barrier Options (Cash-or-Nothing) 95
4.4 Annex 107
4.4.1 Valuating Basket Options 107
4.4.2 Options and Currencies 109

5 PRODUCTS OF FOREIGN CURRENCIES 110

5.1 Foreign Currency Bonds 110

5.2 Dual Currency Bonds 111

5.3 Reverse Dual Currency Bonds 112

5.4 Dual Redemption Bonds 113

5.5 Foreign Currency Dual Redemption Bonds 115

5.6 Step-Up/Step-Down Dual Redemption Bonds 117

5.7 Appearing Dual Redemption Bonds 118

5.8 Callable Digital Deposits 120

5.9 Multistep Callable Digital Deposits 122

5.10 FX-Linked Barrier Notes 124

5.11 FX Barrier Ranges 127

5.12 Callable FX-linked Foreign Currency Coupon Bonds 129

5.13 Dual Currency-Linked Bonds 131

5.14 Triple Currency-Linked Bonds 133

5.15 Variable Redemption Bonds 135

5.16 Range Variable Redemption Bonds 137

5.17 Dual Currency Variable Redemption Bonds 140

5.18 Knock-out/Knock-in Variable Redemption Bonds 144

5.19 FX-Linked Zero Coupon Bonds with Caps 145

5.20 Cumulated FX-Linked Zero Coupon Bonds with Call Options 148

5.21 Asian FX-Linked Zero Coupon Bonds 150

5.22 Currency Basket Bonds with Call Options 152

5.23 Currency Basket Bonds with Caps and Floors 155

5.24Annex-Product Replication Overview 158

6 GLOSSARY AND LITERATURE 161

6.1 Glossary 161

6.2 Literature 164

</toc>

# I General Overview

Structured products refer to combinations of individual financial instruments, such as bonds, stocks and derivatives. At first glance, most of these composite products are very similar to plain vanilla coupon bonds.

Structured products tend to involve periodical "interest payments" and redemption at maturity. What sets them apart from bonds is that both interest payments and redemption amounts depend in a rather complicated fashion on the movement of stock prices, indices, exchange rates or future interest rates.

Since structured products are made up of simpler components, we usually break them down into their integral parts when we need to value them or assess their risk profile and any hedging strategies. This should facilitate the analysis and pricing of the individual components. While this is indeed true in many cases, replication need not automatically entail a considerable simplification.

The first part of this three-volume handbook is dedicated to the presentation and discussion of structured products whose properties depend on interest rate movements. ("Interest Rates")

The second part of the handbook revolves around instruments which are linked to the movement of stock prices and indices. ("Equity Derivatives")

The third part of the handbook deals with instruments whose characteristics depend on the movements of exchange rates. ("Foreign Currency")

For many product groups, no uniform naming conventions have evolved yet, and even where such conventions exist, some issuers will still use alternative names. In the handbook, we use the market names for products which are common; at the same time, we try to be as accurate as possible. As these names can be rather unclear in practice, however, it is not possible to categorize and valuate a product on this basis alone; this is only possible on the basis of the instrument's cash flow structure. Wherever applicable, commonly used alternative names are indicated in each product's description.

In addition, it is also important to bear in mind that not every subtype is described in each product category. In fact, a wide range of variations can be attributed to each category. For example, products are often differentiated by whether the issuer or the bearer is the "seller" of the option. Due to the rapid pace of product innovation, the handbook cannot make any claim to completeness.

The products are presented as follows: First, the General Description provides an in-depth discussion of the specific features of each product as well as a straightforward example. Under the Replication heading, you will find techniques, neatly presented in a decomposition table, for mapping a product into its simpler components ("stripping"). Finally, the Valuation section describes how to determine the fair value of a product.

The Annex of each part comprises a synoptic table which summarizes the replication of the products described in this handbook.

At the end of the handbook a glossary of the most important concepts and references are included.

The replication techniques presented here are designed to serve as examples for treating composite products pursuant to Article 22e Austrian Banking Act (Bankwesengesetz BWG) for determining the regulatory capital requirement according to Article 22h BWG and for reporting interest rate risk statistics according to Part $B_{2}$ of the monthly balance sheet return (Article 74 paragraphs 1 and 4 BWG).

# The Following Conventions Apply:

(1) In the case of stock options, a unit of the underlying asset (a share, a unit of the index) invariably serves as the imputed unit of trading. While this will mostly differ from the actual unit of trading, the valuation process will thus be easier to understand.

(2) In part three, the term "foreign currency" refers to currencies other than the product's issue currency (base currency). In practice, the investor's reference currency determines whether a given currency is foreign or not. In most of the examples described, the euro is the base currency; only some products were issued in other currencies.

(3) Analogously, quantity-adjusting options (quantos) are valued in a standardized fashion so that one unit of the underlying denominated in a foreign currency exactly corresponds to one unit in the reference currency.

(4) Interest rate options are scaled to a face value of 100.

(5) Exchange rates are generally quoted directly, that is, one foreign currency unit is equivalent to Q euro, or "Q EUR/USD" means that 1 USD costs Q EUR. In practice, however, currencies are often quoted indirectly (i.e., as the price of one euro in the foreign currency). Direct quotations are translated into indirect quotations and vice versa by calculating the reciprocal. For the sake of clarity, exchange rates were adjusted to a direct quotation in some examples.

(6) The specific day count conventions (e.g. 30/360, actual/actual, actual/360) are neglected in most presentations of the products.

(7) Sometimes a few days elapse between the expiry date of the option and its delivery. This difference is not accounted for. In concrete cases, the valuation would have to be corrected at the forward rate applicable to this period.

(8) Even though some products cited in examples were originally issued in ATS or DEM, the currency of issuance is given as EUR in order not to have to refer explicitly to the currency conversion when stating the payoffs. The same goes for reference interest rates. As a case in point, the VIBOR was replaced fully by the EURIBOR.

(9) The maturity of the products was not taken into consideration in their names. In general, debt instruments can be classified in the following categories(by maturity):

(a) Commercial paper, deposit: up to 1 year

(b) Note: between 1 and 10 years

(c) Bond: over 10 years

# 2 Introduction

For the purpose of valuation, structured products are generally replicated with simpler instruments. The portfolio of these simpler products must have the same payoff profile as the structured product and, given the (assumed) absence of arbitrage opportunities in financial markets, must thus also have the same market value. The merits of this approach are that, first, simple valuation rules can be used to calculate fair market prices for the simpler products. Second, risk control is more efficient since the replicated parts either are directly tradable or may be hedged more easily.

It is not possible to break all products down into simple components. In cases where the structured product has to be depicted as a combination of instruments which are themselves complex in nature and thus difficult to valuate and to hedge on the capital market, numerical procedures have to be employed in order to valuate the products and assess the risks involved.

For example, in the first part, the following characteristics imply a complex valuation model:

- Constant maturity/secondary market yield (SMY) products: The underlying interest rate does not correspond to the interest rate adjustment period of the structured product. The floating rate may, for instance, be adjusted to a five-year interest rate every six months. Since the average maturity of the bonds used to calculate the secondary market yield generally does not equal the interest rate adjustment period, all SMY products fall into this category.
- In addition, the basket of bonds serving as the basis for calculating the secondary market yield constantly changes in a way which cannot be captured by a model.
- Early redemption option: If a bond is redeemable prior to maturity (i.e. is callable or putable) at several dates, it is important to exercise good judgment in choosing when to redeem the bond. Given this path dependence, the valuation of Bermudan-style options is not trivial.

More advanced term structure modeling strives to capture the stochastic development of the yield curve over time. Such models differ both in the number of stochastic factors and the dynamic pattern.

In one-factor models, the short-term rate usually serves as the stochastic factor driving the term structure. The short rate is assumed to follow a stochastic process

$$ d r = m (r) d t + s (r) d z
$$ where $m$ and $s$ denote the drift and the standard deviation of the change in the short rate. The stochastic term $dz$ refers to the increments of a Wiener process. Depending on the term structure model used, the assumptions about the structure of the parameters $m$ and $s$ differ. Since no single model has so far proved dominant in practice, it is difficult to draw up a quality ranking of the assumptions. The table below summarizes common parameterizations.

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline
Modell & m(r) & s(r) \\ \hline
Rendleman und Bartter & μr & σr \\ \hline
Vasicek & a(b-r) & σ \\ \hline
Cox Ingersoll Ross & a(b-r) & σ√r \\ \hline
Ho and Lee & θ(t) & σ \\ \hline
Hull and White (extended Vasicek) & θ(t) - ar & σ \\ \hline
\end{tabular}
\end{document}
```

Table 2.1

Apart from the models presented in the table, many other one-factor models have been proposed, e.g. the Black, Derman and Toy model where the logarithm of the short rate obeys a stochastic process similar to the above.

With multi-factor models, several sources of uncertainty are accounted for and it is possible not only to adjust the model to the current term structure, but also to capture the current volatility structure. Cases in point are the Longstaff and Schwartz model and the Duffie and Kan model. Under the approach developed by Heath, Jarrow and Morton, any number of stochastic terms may be considered. Multi-factor models have two drawbacks, however. First, it is necessary to precisely calibrate the models to the current market conditions (term and volatility structures) before valuing structured products. Second, they require an enormous computational effort since the valuation must in most cases be based on Monte Carlo simulations. For a good overview of term structure models, see e.g. Hull (2000), Rebonato (1998) and Björk (1998).

In the handbook, concerning the first part, the Hull-White model is our model of choice as it sensibly combines precision and computational/calibration effort.

In the second part of the handbook, the valuation formulas used for embedded options are based on the Black-Scholes model, which makes the following central assumptions:

(1) Changes in the price of the underlying products (stock, index) follow geometric Brownian motions, with volatility constant over time.
(2) Trading is continuous.
(3) No market participant has market power. All participants are price takers, which means that no one can influence an instrument's price.
(4) The short selling of securities is permitted without restriction.
(5) There are no transaction costs or taxes.
(6) The market offers no arbitrage opportunities.
(7) The risk-free interest rate is constant over time.

And in the third part, as an example, in the case of an early redemption option, we have the following: If a bond is redeemable prior to maturity (i.e. is callable or putable) at several dates, it is important to exercise good judgment in choosing when to redeem the bond. The optimum exercise strategy in turn affects the value of the other call/put provisions. Given this path dependence, the valuation of such options ("Bermudan-style options") is not trivial.

In practice, a multitude of methods is used to determine the fair value of such sophisticated products. Simple valuation models are applied even if they are not really appropriate or attempts may be made to replicate structured products in the form of portfolios of simple products which at any time pay off at least as much as the respective structure. In such cases, the price of the structured product is at most as high as the value of the replicating portfolio.

# 3 Products Of Interest Rates

# 3.1 Zero Coupon Bonds

# 3.1.1 General Description

Zero coupon bonds represent the most basic type of interest rate instruments. They do not pay interest periodically but involve only a single cash flow at the end of a fixed maturity. The issuer does not pay any interest up until the bond matures. The investor's income equals the spread between the issue price and the redemption price. The yield on a zero coupon bond is called spot rate. Depending on the compounding technique used, the outcome is either

$$

(1 + s (T)) ^ {T} \cdot P (T) = 100 \%

$$ or

$$

P (T) \cdot e ^ {r (T) T} = 100 \%

$$

Formula 3.1: Discretely and continuously compounded spot rate where $P(T)$ is the present value (in \% of the principal) of a zero coupon bond with a time to maturity of $T$ years. $s(T)$ is the discretely compounded annual spot rate and $r(T)$ is the continuously compounded annual spot rate for an investment of $T$ years. Depending on the issuer's default risk, different spot rates apply to identical times to maturity.

Vice versa, it is possible to value a zero coupon bond based on the spot rate for the relevant time to maturity and the respective default risk. When we consider the annualized spot rates as a function of the time to maturity, we refer to the term structure of interest rates.

Foreign currency-denominated bonds may be valued by using two equivalent techniques.

(1) Use the respective spot rate of the foreign currency for valuation and convert the outcome at the current exchange rate.
(2) Convert the (known) cash flows into euro at forward exchange rates and value the resulting euro cash flows at the euro spot rates.

Both techniques must result in (almost) the same outcome; otherwise, arbitrage opportunities would exist. For some types of structured products, future cash flows are not known at the time of valuation. In such case, we can only use the first technique.

Example: zero coupon bond 2000-2010

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & May 15,2000, to May 15,2010 (10 years) \\ \hline
Interest rate & 0\% \\ \hline
Issue price & 38.55\% \\ \hline
Principal & EUR 100,000,000 \\ \hline
Denomination & EUR 1,000,000 \\ \hline
Early redemption option & No \\ \hline
Redemption & at face value on May 15,2010 \\ \hline
\end{tabular}
\end{document}
```

On the issue day the zero coupon bond went for EUR 385,500 per bond. On the assumption that the issuer is solvent on May 15,2010, the issuer will have to pay back EUR 1 million per bond at maturity. The annual discrete yield is:

$$ s (T) = 10 \sqrt {\frac {100}{38.55}} - 1 = 10 \%
$$

The annual continuous yield is:

$$ r (T) = \frac {1}{1 0} \ln \left[ \frac {100}{3 8.55} \right] = 9.53
$$

# 3.1.2 Replication

We cannot break down zero coupon bonds into simpler components.

# 3.1.3 Valuation

To value a zero coupon bond, it suffices to know the spot rate applicable to the time to maturity and the respective default risk.

# 3.2 Coupon Bonds (Straight Bonds)

# 3.2.1 General Description

The buyer of a coupon bond – as opposed to a zero coupon bond – receives fixed rate interest payments on specific dates (chiefly annually or semiannually). These coupon payments are derived from the interest payable on the bond principal, which should not be confused with the spot rate.

A coupon bond might have the following features:

Example: coupon bond

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Time to maturity & 2 years \\ \hline
Nominal interest rate & 8\% \\ \hline
Coupons & Semiannual \\ \hline
Redemption & 100\% \\ \hline
Denomination & EUR 10,000 \\ \hline
\end{tabular}
\end{document}
```

Straight bonds do not carry any call or conversion provisions.

The buyer of a bond with a face value of EUR 10,000 receives a semiannual payment of EUR 400 (8\% / 2 of 10,000) up until the bond matures. In addition, the principal is redeemed in full at maturity (after two years).

# 3.2.2 Replication

We can map any coupon bond into a set of zero coupon bonds. For the bond in the example, we receive the following:

- 0.5-year zero coupon bond with a face value of EUR 400
- 1-year zero coupon bond with a face value of EUR 400
- 1.5-year zero coupon bond with a face value of EUR 400
- 2-year zero coupon bond with a face value of EUR 10,400

We can also present the decomposition as follows:

$$
- \text {C o u p o n} = + \text {z e r o}
$$ where

$$
- = \text {l o n g p o s i t i o n}
$$ n = number of coupon payments

Maturity of the zero coupon bonds: interest payment dates of the coupon bond Face values of the zero coupon bonds: cash flows of the coupon bond

# 3.2.3 Valuation

As the cash flows of the replicating portfolio fully correspond to those of the original bond, the value of the bond must exactly equal the value of the portfolio. In turn, the value of the portfolio must be equal to the sum of the values of the zero coupon bonds. Applied to our example, this means:

$$

\begin{array}{l} \text {P r e s e n t v a l u e (b o n d)} = \\ = 400 \cdot P (0.5) + 400 \cdot P (1) + 400 \cdot P (1.5) + 1 0.400 \cdot P (2) \\ \end{array}

$$ where $P(t)$ is the present value of a zero coupon bond with a face value of 1 and a time to maturity of $t$ years.

# 3.3 Floating Rate Notes (Frns, Floaters)

# 3.3.1 General Description

Unlike coupon bonds, floating rate notes do not carry a fixed nominal interest rate. The coupon payments are linked to the movement in a reference interest rate (frequently money market rates, such as the EURIBOR) to which they are adjusted at specific intervals, typically on each coupon date for the next coupon period. A typical product could have the following features:

Example: floating rate note

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & 2 years \\ \hline
Nominal interest rate & 6-month EURIBOR \\ \hline
Reset period & every 6 months \\ \hline
Coupons & seminannual, in arrears \\ \hline
Redemption & 100\% \\ \hline
Denomination & EUR 10,000 \\ \hline
\end{tabular}
\end{document}
```

The initial coupon payment to become due in six months' time corresponds to the 6-month EURIBOR as at the issue date. After six months the first coupon is paid out and the second coupon payment is locked in at the then current 6-month EURIBOR. This procedure is repeated every six months.

The coupon of an FRN is frequently defined as the sum of the reference interest rate and a spread of $x$ basis points. As they are regularly adjusted to the prevailing money market rates, the volatility of floating rate notes is very low.

# 3.3.2 Replication

Floating rate notes may be viewed as zero coupon bonds with a face value equaling the sum of the forthcoming coupon payment and the principal of the FRN because their regular interest rate adjustments guarantee interest payments in line with market conditions.

Let us, for instance, take a look at the above FRN after 1.5 years. For each EUR 100 face value, EUR 100 plus half a coupon (semiannual interest) of the 6-month EURIBOR $\mathrm{L}_6$ prevailing 1.5 years after the issue date is to be paid out six months later. Consequently, the time value after 1.5 years immediately following the coupon payment is

$$
T V (1.5) = \frac {100 \cdot \left(1 + \frac {L _ {6}}{2}\right)}{\left(1 + \frac {L _ {6}}{2}\right)} = 100
$$

Note that the EURIBOR must be used for discounting provided it - as is assumed in this example - adequately reflects the default risk of the issuer.

As we continue with this procedure, it becomes clear that at any interest rate adjustment date, the value of the FRN corresponds exactly to the principal amount.

Therefore, a floating rate note with a face value of 100 can be regarded as a zero coupon bond with a face value of 100 plus the next coupon due at the next coupon date.

We can decompose floating rate notes with premiums and discounts of $x$ basis points into an FRN without a premium and a portfolio of zero coupon bonds with a principal equaling the premium and discount, respectively.

$$
\begin{array}{l} + \operatorname {F R N} = + \operatorname {z e r o} \\ \begin{array}{l} \text {p r e m i u m} \\ \text {o r} \\ \text {d i s c o u n t} \end{array} = \begin{array}{l} + \text {z e r o c o u p o n b o n d (2)} +... + \text {z e r o c o u p o n b o n d (n)} \text {o r} \\ - \text {z e r o c o u p o n b o n d (2)} -... - \text {z e r o c o u p o n b o n d (n)} \end{array} \\ \end{array}
$$ where

$$

\begin{array}{l} + = \text {l o n g p o s i t i o n} \\ - = \text {s h o r t p o s i t i o n} \\ \end{array}

$$

Zero coupon bond(1): due at the next interest rate adjustment date; the face value equals the face value of the FRN plus the next coupon

Zero coupon bond(2)...zero coupon bond(n): due at the coupon dates; the face value equals the premium and discount, respectively

# 3.3.3 Valuation

Since we can map the FRN into a portfolio of zero coupon bonds, its valuation – based on the relevant spot rates – is very straightforward.

The caveat is that the valuation proves more difficult if the reference rate does not reflect the default risk of the issuer. It is frequently stated that the premiums granted over the reference rate are meant to compensate for the risk. The claim is that the value of the floating rate note including the premium equals the principal on the interest rate reset dates. According to this approach, it is, however, imperative that the spread represent the risk premium in line with the market during the entire life of the titles.

# 3.4 Plain Vanilla Swaps

# 3.4.1 General Description

Plain vanilla swaps (interest rate swaps) represent a contractual agreement to exchange fixed interest payments for floating interest payments on a specified notional principal. The floating rate equals a reference rate (money market rate, such as the EURIBOR). The fixed interest payments (swap rate) are usually set in such a way that the swap is worth zero initially. The dates on which the payments must be effected are set in advance. An interest rate swap is generally structured such that one side remits the difference between the two payments to the other side. Moreover, the (notional) principal is not exchanged at the end of the life of the swap.

Example: payer's swap

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Term & 10 years \\ \hline
Reference interest rate & 12-month EURIBOR, first payment 4.75\% \\ \hline
Interest payment dates & Annual \\ \hline
Swap rate & 5\% \\ \hline
Principal & EUR 100 \\ \hline
\end{tabular}
\end{document}
```

On each interest payment date the fixed-rate payer must transfer EUR 5 to the fixed-rate receiver. On the first coupon date the fixed-rate payer receives EUR 4.75 (preset first variable payment) from the fixed-rate receiver. At the same time, the successive variable payment is set at the current 12-month EURIBOR.

# 3.4.2 Replication

A swap buyer pays fixed coupons and receives variable interest payments in return (payer's swap). In other words, he or she is long a floating rate note and short a coupon bond (the redemptions of the nominal values at maturity cancel each other out).

$$
- \text {P a y e r} = + \text {F R N} - \text {c o u p o n}
$$ where

$$

\begin{array}{l} + = \text {l o n g p o s i t i o n} \\ - = \text {s h o r t p o s i t i o n} \\ \end{array}

$$

The FRN and the coupon bond can be decomposed further into zero coupon bonds.

The seller pays floating interest and receives fixed interest (receiver's swap), i.e. he or she is long a coupon bond and short a floating rate note.

$$
- \text {R e c e i v e r s} = + \text {c o u p o n b o n d - F R N}
$$ where

$$

\begin{array}{l} + = \text {l o n g p o s i t i o n} \\ - = \text {s h o r t p o s i t i o n} \\ \end{array}

$$

# 3.4.3 Valuation

Since plain vanilla swaps can be mapped into a coupon bond and a floating rate note, valuation is very straightforward. The relevant spot interest rates are used for this purpose.

# 3.5 Forward Rate Agreements (Fras)

# 3.5.1 General Description

A forward rate agreement is an over-the-counter agreement that a certain interest rate (contract rate) will apply to a certain principal (contract amount) during a specified future period of time (contract period). The buyer and seller of an FRA agree on a future money market transaction. The seller guarantees the buyer a future loan at the specified conditions.

Example: 3 vs. 15 FRA

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Contract period & in 3 months&#$x_{27}$; time for a period of 12 months \\ \hline
Reference interest rate & 12-month EURIBOR \\ \hline
Contract rate & 5\% \\ \hline
Contract amount & EUR 100 \\ \hline
\end{tabular}
\end{document}
```

The money market transaction under which the FRA buyer is to receive upfront the principal (contract amount) discounted at the agreed interest rate is not actually carried out; instead, the buyer and the seller exchange only the difference between the principal discounted at the contract rate and at the reference rate. This settlement method does not affect the transaction as such but makes settlement easier.

In our example this means that the FRA buyer will not receive EUR 95.24 (100/1.05) in three months' time and not pay back EUR 100 after one year. Instead, after three months, the buyer and the seller exchange the difference between the principal discounted at the contract rate (EUR 95.24) and the time value of the principal. If, for instance, the 12-month EURIBOR stands at $10\%$ in three months' time, the time value of the principal equals EUR 90.91 ( $= 100 / 1.1$ ), so that the buyer would receive EUR 4.33. At a reference rate of $1\%$, the buyer of the FRA will, by contrast, have to pay EUR 3.77.

The buyer hedges against rising and the seller against falling interest rates.

While the contract rate may, in principle, be chosen at will, it is usually set such that the present value of the FRA is zero at initiation.

# 3.5.2 Replication

Forward rate agreements may be mapped into two zero coupon bonds. At settlement the buyer of the FRA basically receives the nominal discounted at the contract rate, which he or she pays back at the end of the contract period.

$$
- \mathrm {F R A} = + \text {z e r o c o u p o n b o n d (1)} - \text {z e r o c o u p o n b o n d (2)}
$$ where

$$

\begin{array}{l} + = \text {l o n g p o s i t i o n} \\ - = \text {s h o r t p o s i t i o n} \\ \end{array}

$$

Zero coupon bond(1): due at the beginning of the contract period; the principal corresponds to the contract amount discounted at the contract rate

Zero coupon bond(2): due at the end of the contract period; the principal corresponds to the contract amount

Applied to our example, this means: We map the FRA into a zero coupon bond with a maturity of three months and a principal amount of EUR 95.24 on the one hand and a zero coupon bond with a maturity of 15 months and a principal amount of EUR 100 on the other hand.

# 3.5.3 Valuation

Since an FRA may be mapped into zero coupon bonds, valuation, which is based on the spot rate, is uncomplicated.

# 3.6 Callable/Portable Zero Coupon Bonds

# 3.6.1 General Description

Callable (putable) zero coupon bonds differ from zero coupon bonds in that the issuer has the right to buy (the investor has the right to sell) the paper prematurely at a specified price. There are three types of call/put provisions.

- European option:

The bond is callable/putable at a predetermined price on one specified day.

- American option:

The bond is callable/putable during a specified period of time.

- Bermuda option:

The bond is callable/putable at specified prices on a number of predetermined occasions.

A call provision allows the issuer to repurchase the bond prematurely at a specified price. In effect, the issuer of a callable bond retains a call option on the bond. The investor is the option seller.

A put provision allows the investor to sell the bond prematurely at a specified price. In other words, the investor has a put option on the bond. Here, the issuer is the option seller.

Example: callable zero coupon bond

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & September 15,1999, to September 15,2024 (25 years) \\ \hline
Interest & 0\% \\ \hline
Issue price & 20.27146223\% \\ \hline
Total principal & n.a. \\ \hline
Denomination & EUR 1,000,000 \\ \hline
Call provision & see below \\ \hline
Redemption & at par on September 15,2024 \\ \hline
\end{tabular}
\end{document}
```

# Call Provision

The issuer has a Bermuda call option which may be exercised at an annually changing strike price. The strike prices are shown in the table below.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
Call date & Call price & Call date & Call price \\ \hline
September 15,01 & 22.99239925 & September 15,13 & 49.50747176 \\ \hline
September 15,02 & 24.5098976 & September 15,14 & 52.77496489 \\ \hline
September 15,03 & 26.12755084 & September 15,15 & 56.25811257 \\ \hline
September 15,04 & 27.8519692 & September 15,16 & 59.971148 \\ \hline
September 15,05 & 29.69019916 & September 15,17 & 63.92924377 \\ \hline
September 15,06 & 31.64975231 & September 15,18 & 68.14857386 \\ \hline
September 15,07 & 33.73863596 & September 15,19 & 72.64637974 \\ \hline
September 15,08 & 35.96538593 & September 15,20 & 77.4410408 \\ \hline
September 15,09 & 38.3391014 & September 15,21 & 82.55214949 \\ \hline
September 15,10 & 40.8694821 & September 15,22 & 88.00059136 \\ \hline
September 15,11 & 43.56686791 & September 15,23 & 93.80863039 \\ \hline
September 15,12 & 46.4422812 & & \\ \hline
\end{tabular}
\end{document}
```

Table 3.1

# 3.6.2 Replication

We break callable zero coupon bonds down into a zero coupon bond and a call option.

$$
- \text {c a l l a b l e} = + \text {z e r o c o u p o n b o n d} - \text {c a l l o p t i o n}
$$ where

$$

\begin{array}{l} + = \text {l o n g p o s i t i o n} \\ - = \text {s h o r t p o s i t i o n} \\ \end{array}

$$

The decomposed zero coupon bond has the same features as the callable zero coupon bond except for the call provision. The call option can be a European, American or Bermuda option.

Putable zero coupon bonds may be replicated with a zero coupon bond and a put option.

$$
- \text {p u t a b l e z e r o c o u p o n b o n d} = + \text {z e r o c o u p o n b o n d} + \text {p u t o p t i o n}
$$ where

$$
- = \text {l o n g p o s i t i o n}
$$

The decomposed zero coupon bond has the same features like the putable zero coupon bond except for the put provision. The put option can be a European, American or Bermuda option.

In our example, we replicate the EUR 100 principal through:

- the purchase of a zero coupon bond with a principal of 100 and a 25-year maturity
- the sale of a Bermuda put option on a zero coupon bond (principal of 100,25-year maturity), strike dates and prices as shown in the table

# 3.6.3 Valuation

Valuation of the zero coupon bond is based on the spot rate.

In the absence of closed-form valuation formulas for American and Bermuda options, we must apply numerical methods.

With a view to pricing European call/put options on zero coupon bonds, we can derive analytically closed formulas for some standard term structure models (Vasicek, Hull and White). Here, we give the formulas for the Hull-White model of the term structure of interest rates.

$$

\begin{array}{l} c = P (0, \tau) N (h) - X P (0, T) N (h - v (T, \tau)) \\ p = X P (0, T) N (- h + v (T, \tau)) - P (0, \tau) N (- h) \\ v (t, T) ^ {2} = \frac {1}{2 \kappa^ {3}} \sigma^ {2} (1 - e ^ {- \kappa (\tau - T)}) ^ {2} (1 - e ^ {2 \kappa T}) \\ h = \frac {1}{v (T, \tau)} \ln \left(\frac {P (0, \tau)}{X P (0, T)}\right) + \frac {v (T, \tau)}{2} \\ d r = (\theta (t) - \kappa r) d t + \sigma d z \\ \end{array}

$$

Formula 3.2:

The valuation of European call and put options on zero coupon bonds according to the Hull-White model of the term structure.
where

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline c & premium of a European call option on a zero coupon bond with a principal of 1 and a maturity of τ years.
X is the exercise price; the option expires in T years. \\ \hline p & premium of a European put option on a zero coupon bond with a principal of 1 and a maturity of τ years.
X is the exercise price; the option expires in T years. \\ \hline
P(0, t) & price of a zero coupon bond with a maturity of t years and a principal of 1 at time 0 \\ \hline κ,θ,σ & Parameters of the Hull-White model \\ \hline
N(d) & Cumulative standard normal distribution at d \\ \hline τ & Maturity of the underlying zero coupon bond \\ \hline
T & Life of the option \\ \hline
\end{tabular}
\end{document}
```

# 3.7 Callable/ Putchar Coupon Bonds

# 3.7.1 General Description

These instruments are composed of a conventional coupon bond and either a call or a put option, which is difficult to value. Like with callable or putable zero coupon bonds, a distinction is made between three types of call or put options:

# - European Option:

The coupon bond is callable/putable at a predetermined price on one specified day. For bonds the exercise date usually corresponds with a coupon date (following payment of the coupon) and the exercise price equals the principal.

# American Option:

The coupon bond is callable/putable during a specified period of time.

# - Bermuda Option:

The coupon bond is callable/putable at specified prices on a number of predetermined occasions. The exercise dates, as a rule, coincide with the coupon dates. The exercise price equals the principal in most cases.

A call provision allows the issuer to repurchase the bond prematurely at a specified price. In effect, the issuer of a callable bond retains a call option on the bond. The investor is the option seller. The call provision basically enables the issuer to refinance the bond at a lower interest rate should rates fall during the term. The issuer decides on the call date(s) whether it is more favorable to call the coupon bond and refinance it via a floating rate loan. Put differently, the issuer has the right to swap fixed payments (coupons) for variable payments (market rates). Such an option is called receiver's or call swaption.

A put provision allows the investor to sell the bond prematurely at a specified price. In other words, the investor has a put option on the bond. Here, the issuer is the option seller. The put provision practically enables the investor to swap the fixed payments he or she receives for variable ones. Such an option is called payer's or put swaption.

Example: USD 7.25 bond 1995-2005

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & October 11,1995, to October 10,2005 (10 years) \\ \hline
Interest rate & 7.25\% p.a. \\ \hline
Issue price & 100\% \\ \hline
Principal & USD 20,000,000 \\ \hline
Call/put option & Every October 11, starting from October 11,1996, at face value \\ \hline
Redemption & October 11,2005 \\ \hline
\end{tabular}
\end{document}
```

# 3.7.2 Replication

We map callable coupon bonds into a set of zero coupon bonds and a call option on the underlying coupon bond.

$$

\begin{array}{l} + \text {c a l l a b l e c o u p o n b o n d} = + \text {z e r o c o u p o n b o n d (1)} +… + \text {z e r o c o u p o n b o n d (n)} \\ \hskip 2 8.452756 p t - \text {c a l l o p t i o n} \end{array}

$$ where

$$
- = \text {l o n g p o s i t i o n}
$$

$$
- = \text {s h o r t p o s i t i o n}
$$

Due dates of the zero coupon bonds: Coupon dates of the coupon bond

Face values of the zero coupon bonds: cash flows of the coupon bond

The (European, American or Bermuda) call option reflects the issuer's right to redeem the bond early. The underlying is a coupon bond!

We map putable coupon bonds into a set of zero coupon bonds and a put option on the underlying coupon bond.

$$

\begin{array}{l} + \text {p u t a b l e c o u p o n b o n d} = + \text {z e r o c o u p o n b o n d (1)} +… + \text {z e r o c o u p o n b o n d (n)} \\ \qquad + \text {p u t o p t i o n} \end{array}

$$ where

$$
- = \text {l o n g p o s i t i o n}
$$

Maturity dates of the zero coupon bonds: coupon dates of the coupon bond. Face values of the zero coupon bonds: cash flows of the coupon bond.

Note that the underlying of the option again is a coupon bond.

In our example, we replicate the USD 100 principal by using:

- a long position in $\sum_{i=1}^{9}$ zero coupon bond $t$ with a principal of 7.25 and a maturity of $i$ years
- a long position in a zero coupon bond with a principal of 107.25 and a maturity of 10 years
- a short position in a Bermuda option on a coupon bond (principal: 100, annual coupon: $7.25\%$, maturity: 10 years), strike price: 100, exercise dates: every year on the coupon date, life of the option: 9 years

# 3.7.3 Valuation

The valuation of the zero coupon bond is based on the spot rate.

In many interest rate models (e.g. Vasicek, Hull and White), European call/put options on coupon bonds may be broken down into call/put options on zero coupon bonds. When this is possible, we can use closed-form valuation formulas.

Suppose we have a European call option on a coupon bond (nominal interest $c\%$, principal 100, term to maturity on the exercise date of the option $T$ years, annual coupon payments). The strike price is given as $X$.

On the exercise date of the option, the present value $(PV)$ of the bond is

$$

P V = \sum_ {i = 1} ^ {T} c \cdot P (i) + 100 \cdot P (T)

$$

Formula 3.3: Present value of a coupon bond where $P(t)$ is the present value of a zero coupon bond with a principal of 1 and a time to maturity of $t$ years. The option is exercised if $X$ is smaller than $PV$. The option payoff may be described as:

$$

\max (0; P V - X) = \max \left(0; \sum_ {i = 1} ^ {T} c \cdot P (i) + 100 \cdot P (T) - X\right)

$$

Formula 3.4: Payoff function of a call/put option on coupon bonds

In term structure models where the present value of zero coupon bonds can be calculated as a decreasing function of the short rate (e.g. Vasicek, Hull and White) a unique short rate $r^*$ exists so that the bond value on the exercise date equals the strike price. Suppose $X(i)$ is the value on the exercise date of a zero coupon bond with a principal of 1 and a time to maturity of $i$ years if the short rate is precisely $r^*$. In such case, the following equation applies:

$$

\max (0; P V - X) = \sum_ {i = 1} ^ {T} c \cdot \max (0; P (i) - X (i)) + 100 \max (0; P (T) - X (T))

$$

Formula 3.5: Replication of call/put options on coupon bonds with options on zero coupon bonds

The European call option on the coupon bond corresponds to a portfolio of European call options on zero coupon bonds with adjusted strike prices.

Closed-form formulas do not exist for term structure models where such a replication is not possible and for American and Bermuda options. For valuation we must revert to numerical procedures. $^{8}$

Note in this example that the instrument was issued in USD, which is why we must value it at USD interest rates and subsequently apply the current euro exchange rate.

# 3.8 Putable Floaters

# 3.8.1 General Description

Putable floaters are conventional floaters entitling the investor to redeem the bond prior to maturity. Depending on the contract terms, the investor can sell back the bond at one specific date or at several dates or at any given time. These dates typically coincide with the coupon dates.

At first glance, the rationale behind putable floaters may seem strange: why should one retire a product whose value equals the face value at any exercise date?

Note, however, that floaters frequently involve fixed premiums and discounts placed on the reference interest rate.

Of course, an investor would have to immediately sell back a floater paying less than the reference rate once he or she can alternatively invest at the reference rate. If the investor accepts the discount without selling back the bond, he or she may be assumed to have very limited access to the capital market.

In the case of a fixed premium on the reference rate, things differ somewhat. An investor will decide to sell the bond prematurely if the issuer's default risk increases and the interest on the bond (including the premium) thus no longer reflects market conditions. Evidently we are dealing with a credit derivative rather than an interest rate derivative. Hence, valuation of the default risk is the central issue.

Example: putable floater 1999-2009

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & July 11,1999, to July 11,2009 (10 years) \\ \hline
Interest rate & variable; resets semiannually; reference index: 6-month EURIBOR -0.05\% \\ \hline
Coupon dates & Every January 11 and June 11, starting from January 11,2000 \\ \hline
Denomination & EUR 1,000 \\ \hline
Put option & The bond creditor (investor) has the right to redeem the bond at par at any of the coupon dates. \\ \hline
Redemption & July 2009, at face value \\ \hline
\end{tabular}
\end{document}
```

# 3.8.2 Replication

It does not make sense to decompose a putable floater. However, to complete the picture, we show how the sample bond would be replicated.

Assuming a principal of 100, we can replicate this instrument with:

- a long position a in a floater with semiannual reset dates, a principal of 100 and the 6-month EURIBOR as the reference rate
- a short position in $\sum_{t=1}^{20}$ zero coupon bond $t$ with a principal of 0.05 and a maturity of $t = 0.5$ to 10 years (minus EURIBOR)
- a short position in a Bermuda put option on the bond $\mathrm{B}^{\mathrm{b}}$, strike price 100, life of the option 9 years

# 3.8.3 Valuation

It is impossible to use the classical term structure models for valuing the put option. Such models are based on the assumption that the issuer does not default.

# 3.9 Swaptions

# 3.9.1 General Description

A swaption is an option on an interest rate swap. The buyer has the right to become a counterparty to a swap with a fixed swap rate (strike price) at a specified date (exercise date). The swaption allows the buyer to benefit from favorable interest rate movements while protecting him or her against unfavorable developments.

A swap refers to an agreement to exchange a coupon bond with fixed payments for a floater. A swaption is therefore an option to swap a coupon bond against a floater. Put differently, the coupon bond is sold prematurely and refinanced via a floater.

We distinguish between two types of swaptions.

A payer's or put swaption gives the holder the right to swap interest payment streams, i.e. to pay a fixed rate and receive a floating rate. Suppose an investor holds a payer's swaption and a coupon-bearing bond whose coupons equal the swaption's swap rate. Exercising the option means that the investor receives floating-rate payments instead of the coupon payments. In such cases, the coupon bond has been swapped for a floater. Put differently, a payer's swaption is basically the investor's right to prematurely sell a coupon bond at face value: a put option on a coupon bond where the strike price equals the face value. A receiver's or call swaption gives the holder the right to pay a floating interest rate and receive a fixed rate. Thus, an issuer calling a coupon bond refinances this transaction via a floater. In other words, the issuer has a call option on a coupon bond where the strike price equals the face value.

Most swaptions are European-style options, having only one exercise date.

# 3.9.2 Replication

We can map swaptions into options on coupon bonds.

$$
- \text {P a y e r ' s} (\text {p u t}) \text {s w a p t i o n} = + \text {p u t}
$$ where

$$
- = \text {l o n g p o s i t i o n}
$$

The coupon rate equals the strike price of the swaption.

$$
- \text {R e c e i v e r s} (\text {c a l l}) \text {s w a p t i o n} = + \text {c a l l o p t i o n o n c o u p o n b o n d}
$$ where

$$
- = \text {l o n g p o s i t i o n}
$$

The coupon rate equals the swap rate of the swaption.

# 3.9.3 Valuation

European (American, Bermuda) swaptions are equivalent to (European, American, Bermuda) call/put options on coupon bonds. Therefore, the same valuation procedure applies as described in section 3.7.

Black's model is used frequently to value European swaptions, which is why we also present these formulas here:

$$ c = \left[ \frac {1 - \frac {1}{\left(1 + \frac {F}{m}\right) ^ {t _ {1} \times m}}}{F} \right] e ^ {- r T} [ F \cdot N (d _ {1}) - X N (d _ {2}) ]
$$

Formula 3.6: Present value of a receiver's swaption as calculated in Black's model

$$ p = \left[ \frac {1 - \frac {1}{\left(1 + \frac {F}{m}\right) ^ {t _ {1} \times m}}}{F} \right] e ^ {- r T} [ X \cdot N (- d _ {2}) - F N (d _ {1}) ]
$$

Formula 3.7: Present value of a payer's swaption as calculated in Black's model where:

$$ d _ {1} = \frac {l n (F / X) + (\sigma^ {2} / 2) T}{\sigma \sqrt {T}}, d _ {2} = d _ {1} - \sigma \sqrt {T}
$$ given

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
F & forward rate of the underlying swap \\ \hline
X & swap rate of the swaption \\ \hline r & riskfree interest rate \\ \hline
T & term of the swaption, i.e. years until exercise date \\ \hline m & annual payments under the swap agreement \\ \hline
$t_{1}$ & term of the swap, starting at time T \\ \hline σ & volatility of the forward rate \\ \hline
N(x) & cumulative standard normal distribution at x \\ \hline
\end{tabular}
\end{document}
```

# 3.10 Floors, Caps And Collars

# 3.10.1 General Description

A floor is an option which protects the buyer from a fall in interest rates. If the reference interest rate (e.g. EURIBOR) declines below a specified floor rate, the buyer receives the difference between the agreed floor rate and the reference rate. The holder may exercise the option at several predetermined dates. Exercise of the option at a given date is independent of exercise on the other dates. A floor thus does not equal a Bermuda option but a series of European options with constant strike prices and increasing terms. We call the components making up a floor floorlets.

Example: floor

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Term & July 1,2003, to July 1,2007 (4 years) \\ \hline
Reference interest rate & 12-month EURIBOR \\ \hline
Strike rate & 4\% \\ \hline
Exercise dates & July 1,2004; July 1,2005; July 1,2006 \\ \hline
Coupon dates & July 1,2005; July 1,2006; July 1,2007 \\ \hline
Principal & EUR 100 \\ \hline
\end{tabular}
\end{document}
```

At the exercise dates, the buyer of the floor has the right to receive a coupon equaling the floor rate minus the current 12-month EURIBOR $\mathrm{L}_{12}$ (max(strike rate- $\mathrm{L}_{12},0$ ) *principal). This coupon is not paid out immediately but on the successive coupon date. The investor will, of course, exercise this option only if the floor rate has fallen below the reference rate. In other words, the buyer of a floor typically receives payments whenever the reference rate is low. If $\mathrm{L}_{12}$ equals $3.5\%$ on July 1,2004, i.e. is below $4\%$, the buyer of the floorlet will exercise his or her option and receive EUR 0.50 (= (0.04 - 0.035)*100) on July 1,2005. On that date, the floor and reference rates will again be compared. Whether or not the floorlet is then exercised will depend on the level of $\mathrm{L}_{12}$. The decision the investor takes on a given exercise date invariably applies only to one period.

In contrast to a floor, a cap represents an option which protects the buyer from rising interest rates. The holder of a cap has the right to receive a coupon to the amount of the reference rate RR minus the cap rate (max(RR-cap rate,0)*principal). The option is exercised when the reference rate is high. In analogy to the floor, we can map a cap into a set of European options on future spot rates with constant cap rates and increasing maturity (caplets).

A collar equals a portfolio of a floor and a short position in a cap.![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/7e0262c5-38a8-452c-a39e-267c7f9f56ef/bf9870ea0d815a3491fa25d195f26b669148a57a3402f6ba77d6a4255df4ff0b.jpg)
Chart 3.1: Hypothetical example of a floor

During the first year, the reference rate exceeds the strike rate. Consequently, the floor is not exercised. In the second year, the reference rate is close to $3\%$. Exercising the option entails a payment of $1\%$ of the face value in the third year, in which the reference rate is again below the floor rate. The difference is paid out as a coupon in the fourth, i.e. final, year.

# 3.10.2 Replication

As mentioned above, floors and caps represent portfolios of options. We call these individual components floorlets and caplets, respectively.

$$
- \text {F l o o r} = + \text {f l o o r l e t} (1) + \dots + \text {f l o o r l e t} (\mathrm {n})
$$ or

$$
- \operatorname {C a p} = + \operatorname {c a p l e t} (1) + \dots + \operatorname {c a p l e t} (\mathrm {n})
$$ where

$$
- = \text {l o n g p o s i t i o n}
$$

We map collars into floorlets and caplets.

$$
- \operatorname {C o l l a r} = + \operatorname {f l o o r l e t} (1) +… + \operatorname {f l o o r l e t} (\mathrm {n}) - \operatorname {c a p l e t} (1) -… - \operatorname {c a p l e t} (\mathrm {n})
$$ where

$$
- = \text {l o n g p o s i t i o n}
$$

$$
- = \text {s h o r t p o s i t i o n}
$$

Considering a principal of EUR 100, we can replicate this instrument by:

- a long position in a floorlet: principal of 100, $4\%$ floor rate, exercise in one year's time, payoff in two years' time
- a long position in a floorlet: principal of 100, $4\%$ floor rate, exercise in two years' time, payoff in three years' time
- a long position in a floorlet: principal of 100, $4\%$ floor rate, exercise in three years' time, payoff in four years' time

# 3.10.3 Valuation

Floorlets are equivalent to European call options on zero coupon bonds which are due on the day when the coupon of the floorlet is paid out.

To see this equivalence, in the example, take a look at the status after three years. The floorlet is exercised when the reference rate with a one-year lock-in period $(L_{12})$ lies below $4\%$. The payment which is due one year thereafter is discounted accordingly. At the end of the three-year term, the market value of the floorlet thus equals

$$

\max \frac {100}{1 + L _ {1 2}} (0.04 - L _ {1 2}; 0)

$$

Following rearrangement, we obtain:

$$

\begin{array}{l} \max \frac {100}{1 + L _ {1 2}} (0.04 - L _ {1 2}; 0) = \max \left(\frac {104}{1 + L _ {1 2}} - 100; 0\right) = \\ = 1.04 \cdot \max \left(\frac {100}{1 + L _ {1 2}} - 9 6.1538; 0\right) \\ \end{array}

$$

The right-hand side of the equation is the payoff pattern of 1.04 units of European call options on a zero coupon bond with a principal of 100, which can be bought for 96.1538 (strike price) in the third year. It is exercised when the market value of the bond $\frac{100}{(1 + L_{12})}$ exceeds the exercise price $(L_{12} < 4\%)$. Hence, the floorlet is tantamount to the issuer's right to retire the bond.

In general:

$$

\max \frac {100}{1 + R R} (F R - R R; 0) = \max \left(\frac {100 \cdot (1 + F R)}{1 + R R} - 100; 0\right)

$$

Formula 3.8: Floorlets as a European call option on zero coupon bonds (floor rate FR, reference rate RR)

In analogy, we obtain the following equation for caplets:

$$

\max \frac {100}{1 + R R} (R R - C R; 0) = \max \left(100 - \frac {100 \cdot (1 + C R)}{1 + R R}; 0\right)

$$

Formula 3.9: Caplets as European put options on zero coupon bonds (cap rate CR, reference rate RR)

The payoff profile on the right-hand side describes an investor's put option on a zero coupon bond with a principal of $100*(1 + \mathrm{CR})$, which he or she may sell for 100. As floorlets and caplets represent call and put options on zero coupon bonds, we may use the valuation formulas applicable to zero coupon bonds (see section 3.6.3).

# 3. Ii Floored Floating Rate Notes, Capped Floating Rate Notes And Collared Floaters

# 3.11.1 General Description

Floating rate notes with floors, caps and collars on the interest rate are linked to a reference rate (money market rate) that is subject to additional maximum and/or minimum limits. We distinguish between the following types:

# - Floored Frn:

The interest on the floater must not fall below a specified limit.

# Capped Frn:

The interest on the floater must not exceed a specified limit.

# - Collared Floater:

The interest on the floater is subject to both a cap and a floor.

Example: money market floater 1996-2002

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & September 9,1996, to September 9,2002 (6 years) \\ \hline
Interest rate & Variable; resets semiannually
Reference: 6-month EURIBOR +0.05\%
Floor: 4.175\% p.a.
Cap: 7\% p.a. \\ \hline
Redemption & September 9,2002, at par \\ \hline
Principal & EUR 100 \\ \hline
\end{tabular}
\end{document}
```![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/7e0262c5-38a8-452c-a39e-267c7f9f56ef/d03505b84150b64daaaa453ac71843dc6843740ddcdd0b9be8e8ff197d3f65bf.jpg)
Chart 3.2: Hypothetical example of a collar

The next coupon equals the reference rate $+0.05\%$ if the latter is between the cap and the floor rate. The hypothetical reference rate in 1996 is so low that the coupon paid in 1997 corresponds to the floor rate. In 1997, the reference rate is still lower than the floor, but when we add the fixed premium, the rate exceeds the floor limit so that the floorlet is not exercised. In 2001, the reference rate is so high that the coupon has reached the cap rate.

# 3.11.2 Replication

We can map a floored FRN into a standard floater and a long position in a floor.

$$
- \text {F l o o r e d} + \text {F l o o r e d} + \text {f l o o t e} = + \text {f l o a t e r} + \text {f l o o r}
$$ where

$$
- = \text {l o n g p o s i t i o n}
$$

A capped FRN note is composed of a standard floater and a short position in a cap.

$$
- \text {C a p p e d f l o a t i n g r a t e n o t e} = + \text {f l o a t e r - c a p}
$$ where

$$
- = \text {l o n g p o s i t i o n}
$$

$$
- = \text {s h o r t p o s i t i o n}
$$

We can map a collared floater into a standard floater, a long position in a floor and a short position in a cap. The floor and cap rates are frequently chosen such that the value of the cap equals that of the floor.

$$
- \text {C o l l a r e d f l o a t e r} = + \text {f l o a t e r} + \text {f l o o r} - \text {c a p}
$$ where

$$
- = \text {l o n g p o s i t i o n}
$$

$$
- = \text {s h o r t p o s i t i o n}
$$

Premiums and discounts on the reference rate have to be replicated as zero coupon bonds and have to be taken into account when the floor and cap rates are determined. Considering a principal of EUR 100, we can replicate this instrument with:

- a long position in $\sum_{t=1}^{12}$ zero coupon bond $t$ with a principal of 0.05, a maturity $t * 0.5$ (premium on EURIBOR)
- a long position in a floater with semiannual resets
- Floor: a long position in $\sum_{t=1}^{12} floorlet_t(X = 4.125\%, T = t^*0.5)$ on EURIBOR $_{0.5*t-0.5}$, principal of $100^{10}$
Cap: a short position in $\sum_{t=1}^{12} \text{caplet}_t(X = 6.95\%, T = t^*0.5)$ on EURIBOR $_{0.5*t-0.5}$, principal of $100^{11}$

$X =$ floor/cap rate;

$T =$ maturity date

# 3.11.3 Valuation

The valuation of the floater, zero coupon bonds, cap and floor are uncomplicated except for the issuer's default risk.[12]

# 3.12 Reverse Floating Rate Notes

# 3.12.1 General Description

Reverse floaters pay coupons which move in the opposite direction of the reference interest rate. The coupon is set equal to a fixed nominal rate minus $k$ times the reference rate. At a high reference rate, the coupon would be negative, which is principally ruled out. Therefore these instruments guarantee a minimum return of $0\%$ (or more at times).

Example: reverse floater 2002-2005

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Interest rate & 8.5\% p.a. minus 12-month EURIBOR, minimum return: 4\% \\ \hline
Coupon dates & every year on April 12 \\ \hline
Maturity & April 13,2002, to April 12,2005 \\ \hline
Right to early redemption & No \\ \hline
Redemption & At par \\ \hline
Principal & EUR 1,000,000 \\ \hline
\end{tabular}
\end{document}
```

In contrast to a standard floating rate note, an investor benefits from the reverse floater amid falling interest rates. With the EURIBOR at about $4\%$, the investor receives $4.5\%$ p.a. By contrast, if the EURIBOR stands at $8\%$, the minimum return kicks in and the investor receives $4\%$ p.a.

The floor rate of the floor equals $4.125\%$. Given the $0.05\%$ premium, the guaranteed minimum interest is no longer reached at this level.
11 The cap rate of the cap equals $6.95\%$. Given the $0.05\%$ premium, the guaranteed maximum interest is already reached at this level.
12 See sections 3.1,3.3 and 3.10.

# 3.12.2 Replication

First, we split reverse floaters with a coupon equivalent to the nominal interest rate $(NR) - k*$ reference rate $(RR)$, a minimum return $MR$ and a principal of 100 into a long position in a coupon bond with a nominal interest $NR$ and a principal of 100 and a short position in $k$ floaters with a principal totaling $k^{*}100$. The guaranteed minimum return corresponds to a long position in $k$ caps on the reference rate. The cap rate is given as $CR = (NR - MR) / k$. These instruments are a precise replication of the coupon payments. As the redemption payments of this portfolio amount to $100^{*}(1 - k)$, we have to add a zero coupon bond with a principal of $k^{*}100$ and a term up to the maturity of the reverse floater to round off the replication portfolio.

In summary, we get:

$$

\begin{array}{r l} + \text {R e v e r s e f l o a t e r} & = + \text {c o u p o n b o n d - k * f l o a t e r} + \mathrm {k} ^ {*} \text {c a p} - \\ & - \mathrm {k} ^ {*} \text {z e r o c o u p o n b o n d s} \end{array}

$$ where

$$

\begin{array}{l} + = \text {l o n g p o s i t i o n} \\ - = \text {s h o r t p o s i t i o n} \\ \end{array}

$$

Considering a principal of EUR 100, we map the sample instrument into:

- a long position in a coupon bond with a principal of 100 and a 3-year maturity and a nominal interest rate of $8.5\%$
- a short position in a floater with annual coupon payments linked to the 12-month EURIBOR with a principal of 100 and a 3-year maturity
- a long position in a zero coupon bond with a principal of 100 and a 3-year maturity
- a long position in a cap with annual payments linked to the 12-month EURIBOR and a strike rate at $4.5\%$, with a principal of 100 and a 3-year maturity

The first two components of the portfolio pay $8.5\%$ minus the 12-month EURIBOR. If the EURIBOR rises too much, the investor runs the risk of receiving a very small coupon. A minimum return thus protects against substantial EURIBOR increases. To this effect, a cap is used. Let us look at an example:

EURIBOR = 4\%: the coupons of the bonds equal $8.5\% - 4\% = 4.5\%$, the cap pays nothing, which is why the "coupon" of the portfolio comes to $4.5\%$ p.a.

EURIBOR = 8\%: the coupons of the bonds equal 8.5\% - 8\% = 0.5\%, the cap pays the difference between the current EURIBOR and the strike 8\% - 4.5\% = 3.5\%, which is why the "coupon" of the portfolio comes to 0.5\% + 3.5\% = 4\% p.a.

The individual bonds are redeemed at maturity. The fixed income bond yields 100, and an amount of 100 is necessary to close the short position. In addition, the investor receives 100 on the zero coupon bond. In total, we have a credit of $+100$, which also corresponds to the actual redemption of the reverse floater.

# 3.12.3 Valuation

The valuation of the reverse floater is based on the valuation of the components of the replicating portfolio. To determine the market value, the bonds are simply discounted with the current yield curve. For the valuation of caps, see section 3.10.

# 3.13 Multitranche Bonds

# 3.13.1 General Description

Multitranche instruments are coupon bonds which give the issuer the right to deliver further bonds to the investor at preset dates and at a predetermined price.[14] The investor is obliged to buy the bonds offered. Any tranche generally has the same features (coupon, maturity) apart from the date on which additional deliveries may be made.

The issuer will exercise his or her right to issue additional tranches when the present value of the tranches is below the strike price on the exercise date. If the issuer exercises this right once, it does not mean that he or she has to exercise the right again. These rights are equivalent to a portfolio of embedded European put options.

Example: $7.75\%$ multitranche mortgage bond (pfandbrief)

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & November 15,1995 to November 15,2005 (10 years) \\ \hline
Interest rate & 7.75\% p.a. \\ \hline
Total principal & EUR 5 million \\ \hline
Right to issue additional tranches & November 8,1996 / principal EUR 5 million
November 10,1997 / principal EUR 5 million
November 9,1998 / principal EUR 5 million
November 8,1999 / principal EUR 5 million
November 8,2000 / principal EUR 5 million
November 7,2001 / principal EUR 5 million \\ \hline
Redemption & November 15,2005 \\ \hline
\end{tabular}
\end{document}
```

# 3.13.2 Replication

We map multitranche bonds into a portfolio of zero coupon bonds and a portfolio of European put options on the underlying coupon bond.

$$

\begin{array}{c} + \text {M u l t i t r a n c h e b o n d} = + \text {z e r o c o u p o n b o n d (1)} +… + \text {z e r o c o u p o n b o n d (n)} \\ - \text {p u t o p t i o n (1)} -… - \text {p u t o p t i o n (k)} \end{array}

$$ where

$$
- = \text {l o n g p o s i t i o n}
$$

$$
- = \text {s h o r t p o s i t i o n}
$$

Maturity dates of the zero coupon bonds: coupon dates of the coupon bond.

Face values of the zero coupon bonds: cash flows of the coupon bond.

Put options: the exercise dates coincide with the dates on which the issuer has the right to deliver new tranches. The put options are options on coupon bonds which reflect the respective time to maturity and come without the right to make delivery.

Considering a principal of EUR 100, we can replicate this instrument by using:

- a long position in $\sum_{i=1}^{9}$ zero coupon bond $i$ with a principal of 7.75 and a maturity of $i$ years
- a long position in a zero coupon bond with a principal of 107.75 and a 10-year maturity
- a short position in a $\sum_{i=1}^{6}$ European put $i(X, T = i, B(i, 10))$ where

$$

X = 100 \dots (\text {s t r i k e p r i c e})

$$

$$

T = \text {t e r m}

$$

$B(i,10) =$ coupon bond issued at time $i$, maturity 10, coupon 7.75 p.a.

(These bonds could, if necessary, again be broken down into zero coupon bonds).

# 3.13.3 Valuation

The valuation of the zero coupon bond is based on the spot rate.

For the valuation of the European put options, see section 3.7 on callable/putable coupon bonds.

# 3.14 Step-Up/Step-Down Bonds

# 3.14.1 General Description

Like standard coupon-bearing bonds, step-up and step-down bonds pay fixed coupons. The coupon payments do not remain constant throughout the entire maturity, however.

- With step-up bonds, the coupons increase as of a specified date.
- With step-down bonds, the coupons decrease as of a specified date.

These instruments frequently give the issuer the right to buy back bonds: The issuer may call the bonds at preset coupon dates at the face value or at predetermined prices. This buy-back option usually kicks in once the coupon payments remain constant.

Example: Step-up bond 1999-2005

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & September 2,1999, to September 2,2005(6 years) \\ \hline
Interest rate & September 2,1999, to September 2,2004 → 5.125\% p.a.
September 2,2004, to September 2,2005 → 6\% p.a. \\ \hline
Coupon dates & Every September 2, starting September 9,2000 \\ \hline
Call provision & September 2,2004 \\ \hline
Redemption & September 2,2005, at par \\ \hline
Principal & EUR 100 \\ \hline
\end{tabular}
\end{document}
```

# 3.14.2 Replication

We can map step-up and step-down bonds without additional call provision for the issuer into a portfolio of zero coupon bonds. The issuer's rights to retire bonds prematurely correspond to call options. Frequently the only call date coincides with the change of the coupon. In such case, we are dealing with a European call option on a coupon bond.

```txt
- Step-up or step-down bond + zero coupon bond(1) +...+ zero with call options coupon bond(n)-call options
``` where

$$

\begin{array}{l} + = \text {l o n g p o s i t i o n} \\ - = \text {s h o r t p o s i t i o n} \\ \end{array}

$$

Maturity dates of the zero coupon bonds: coupon dates of the bond.

Face values of the zero coupon bonds: cash flows of the bond.

Call option: usually a European call option on a coupon bond (sometimes a Bermuda option)

Considering a principal of EUR 100, we can replicate this instrument by:

- a long position in $\sum_{t=1}^{6}$ zero coupon bond $t$ with a principal of 5.125 and a maturity of $t$ years
- a long position in a zero coupon bond with a principal of 106 and a 6-year maturity
- a short position in 106 European call options with a strike price of $1 / 1.06$ on a zero coupon bond with a principal of 1 and a 6-year maturity. Exercise date of the option is in five years.[15]

# 3.14.3 Valuation

The valuation of the zero coupon bond is based on the spot rate.

For the valuation of the options, see section 3.6 on callable/putable zero coupon bonds and section 3.7 on callable/putable coupon bonds.

# 3.15 Floating Rate/Fixed Rate Notes

# 3.15.1 General Description

These instruments consist of a set of fixed rate coupons and a set of floating rate coupons. The fixed interest rate is set in advance, while the floating rate is linked to a reference rate. Consequently, the investor benefits from rising interest rates during the floating rate period.

Example: floating rate/fixed rate note

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & January 3,1998, to January 3,2013 (15 years) \\ \hline
Interest rate & January 3,1998, to January 2,2003 → floating rate, payable semiannually
January 3,2003, to January 3,2013 → 5.65\% p.a. \\ \hline
Coupon dates during floating rate period & Every six months on January 3 and July 3, starting from July 3,1998 \\ \hline
Coupon dates during fixed rate period & Annual on January 3, starting from January 3,2004 \\ \hline
Redemption (fixed rate) & January 3,2013, at par \\ \hline
Principal & EUR 100 \\ \hline
\end{tabular}
\end{document}
```![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/7e0262c5-38a8-452c-a39e-267c7f9f56ef/dce35492ecb4d393cd9af691d59c852e7caa5218851cd248e7e260c6eadcb983.jpg)
Chart 3.3: Hypothetical payoff profile of a floating rate/fixed rate bond

# 3.15.2 Replication

We replicate the floating rate period by using a floater and map any premiums or discounts effective during this period into zero coupon bonds. We replicate the fixed rate period by using zero coupon bonds. In addition, we go short a zero coupon bond to offset the redemption of the floater.

```python
- Floating rate/fixed = + floater - zero coupon bond(1) rate note + zero coupon bond(2)... + zero coupon bond(k)
``` where

```txt
- = long position
- = short position
```

Floater: has the same properties as the floating rate/fixed rate note during the floating rate period

Zero coupon bond(1): offsets the redemption of the floater

Other zero coupon bonds: cash flows of the fixed rate period

Considering a principal of EUR 100, we can replicate this instrument by using:

- a long position in a floater with semiannual coupon payments and a 5-year maturity
- a short position in a zero coupon bond with a principal of EUR 100 and a 5-year maturity
- a long position in $\sum_{t=6}^{14}$ zero coupon bond $t$ with a principal of EUR 5.65 and a maturity of $t$ years
- a long position in a zero coupon bond with a principal of 105.65 and a maturity of 15 years

With the floater we capture the floating rate payments of the first five years. We offset the redemption of the floater with the second position of the portfolio. As of the sixth year, we can replicate the payments by using zero coupon bonds.

# 3.15.3 Valuation

Given the replication with a floater and zero coupon bonds, the valuation of floating rate/fixed rate notes is uncomplicated (except for the default risk).

# 3.16 Fixed Rate/Zero Coupon Bonds

# 3.16.1 General Description

A fixed rate/zero coupon bond initially pays coupons but is converted into a zero coupon bond for the second part of the maturity period.[16] These instruments frequently carry additional call provisions. The issuer will exercise the call option when, at the exercise date, the present value of the future cash flow exceeds the strike price.

Example: fixed rate/zero coupon bond 1998-2023

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & July 5,1998, to July 4,2023 (25 years) \\ \hline
Interest rate & July 5,1998, to July 4,2001 → 6.5\%
July 5,2001, to July 4,2023 → 0\% \\ \hline
Call provision & See below \\ \hline
Redemption & At 408\% on July 4,2023 \\ \hline
Principal & EUR 100 \\ \hline
\end{tabular}
\end{document}
```

16 This is a special type of step-down bond.

# Call Provision

The issuer has a Bermuda call option on a zero coupon bond with a strike price which is adjusted annually. The strike price amounts to $100\%$ on July 5,2001; as of this date, the strike price increases according to the following formula: $100^{*}(1.066^{\wedge}T)$, where $T$ increases from 1 to 21 in annual increments. $T = 1$ (as at July 5,2002) to $T = 21$ (as at July 5,2022), rounded to five decimal places.

# 3.16.2 Replication

We map fixed rate/zero coupon bonds without additional call provisions into a portfolio of zero coupon bonds. The issuer's rights to retire bonds prematurely correspond to call options.

$$
- \text {F i x e d r a t e / z e r o c o u p o n b o n d} = + \text {z e r o c o u p o n b o n d (1)} +.. + \text {z e r o} \\ \text {with c a l l o p t i o n} \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad c o u p o n b o n d (n) - c a l l o p t i o n
$$ where

$$

\begin{array}{l} + = \text {l o n g p o s i t i o n} \\ - = \text {s h o r t p o s i t i o n} \\ \end{array}

$$

Maturity dates of the zero coupon bonds: coupon dates of the coupon bond, maturity date of the bond

Face values of the zero coupon bonds: cash flows of the coupon bond, redemption of the coupon bond

Call option: its features correspond with the call provisions

Considering a principal of EUR 100, we replicate this instrument by using:

- a long position in $\sum_{i=1}^{3} zero\ coupon\ bond_{i}$ with a principal of 6.5 and a maturity of 1 years,
- a long position in a zero coupon bond with a principal of 408 and a maturity of 25 years,
- a short position in a Bermuda option on a zero coupon bond with a principal of 408 and a 25-year maturity. The strike prices and dates are as described above under "Call provision".

# 3.16.3 Valuation

The valuation of the zero coupon bond is based on the spot rate. We can use closed-form pricing formulas if the issuer's additional provisions are simple, i.e. European, call options. If they are as complex as in the above-mentioned example, we can only resort to numerical procedures for valuation.

# 3.17 Fixed To Floating Rate Notes

# 3.17.1 General Description

This structure represents a bond with a fixed rate period and a period during which the issuer may swap the fixed for a floating rate on one or more exercise dates. Once the issuer has exercised the option, the floating rate is locked in for the residual term to maturity of the bond.[20] The issuer's option to choose the type of interest rate corresponds to a receiver's or call swaption.[21]

Example: fixed to floating rate note 2000-2005

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & August 28,2000, to August 23,2005 (5 years) \\ \hline
Interest rate & August 28,2000, to August 23,2002: 3.7\% p.a.
August 24,2002, to August 23,2005: right to swap on August 23,2002
4.8\% p.a. fixed rate or 6-month EURIBOR \\ \hline
Day count & actual/actual for fixed rate coupons \\ \hline
Coupon dates & Fixed rate payments: every August 24, starting from August 24,2001
Floating rate payments: semiannual, every February 24 and August 24, starting from February 2,2002 \\ \hline
Denomination & EUR 10,000 \\ \hline
Redemption & August 24,2005, at face value \\ \hline
\end{tabular}
\end{document}
```

# 3.17.2 Replication

First, neglect the issuer's right to swap interest rates and map the fixed payments (including the ones after the expiry date of the option) into zero coupon bonds. The right to switch from the fixed to a floating interest rate is a short position (from the investor's perspective) in a receiver's swaption. This two-part portfolio generates cash flows equivalent to those of the original structure: when the receiver's swaption is exercised, the issuer's fixed payments will be covered by the payments made by the receiver's swaption, and only the floating rate payments remain to be added. When the option is not exercised, none of the fixed coupons is replaced by floating rate payments.

$$
- \text {F i x e d t o f l o a t i n g r a t e n o t e} = + \text {z e r o c o u p o n b o n d (1)} +… + \text {z e r o} \quad \text {c o u p o n b o n d (n)} - \text {r e c e i v e r s s w a p t i o n}
$$ where

$$

\begin{array}{l} + = \text {l o n g p o s i t i o n} \\ - = \text {s h o r t p o s i t i o n} \\ \end{array}

$$

Maturity dates of the zero coupon bonds: coupon dates, maturity date of the bond Face values of the zero coupon bonds: cash flows of the coupons, redemption

20 If the issuer has swapped a fixed for a floating rate, he or she will no longer be able to revert to a fixed rate.
21 When the issuer has the right to swap a floating for a fixed rate (floating to fixed rate note), we call that a payer's or put swaption.

Note that the option to swap fixed for floating interest rates is not considered for the zero coupon bonds. Instead, we map it into a receiver's swaption!

Receiver's swaption: its features correspond to the interest rate swaption (European or Bermuda)

Considering a principal of EUR 100, we can replicate this instrument by using:

- a long position in $\sum_{i=1}^{2} zero\ coupon\ bond_{i}$ with a principal of 3.7 and a maturity of $i$ years
- a long position in $\sum_{i=1}^{3} zero\ coupon\ bond_{i}$ with a principal of 4.8 and a maturity of $i+2$ years
- a long position in a zero coupon bond with a principal of 100 and a 5-year maturity
- a short position in a European receiver's swaption on a swap with a life of 3 years and semiannual payments, a swap rate of $4.8\%$, a principal of 100 and an exercise date in 2 years

# 3.17.3 Valuation

The valuation of the zero coupon bonds is uncomplicated. For the valuation of European swaptions, see section 3.9. No term structure model provides closed-form valuation formulas for Bermuda swaptions. We must therefore base their valuation on numerical procedures.[22]

# 3.18 Digital Ranges

# 3.18.1 General Description

Like straight bonds, digital ranges (corridor notes) have a preset fixed interest rate. The actual amount of the coupon depends, however, on the number of days on which a specified reference rate stays within an agreed corridor.

Digital ranges will appeal to investors who anticipate the reference rate to remain broadly stable and mostly within the corridor set by the upper and lower limit.

Example: digital range 1996-2001

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & March 3,1996, to March 3,2001 (5 years) \\ \hline
Redemption rate & 100\% \\ \hline
Upper limit & 6.5\% \\ \hline
Lower limit & 3\% \\ \hline
Coupons & 5.5\% * (T / B) \\ \hline
Coupon dates & Annual, starting March 3,1997 \\ \hline
Issue volume & EUR 500,000,000 \\ \hline
Reference rate & 12-month EURIBOR \\ \hline
\end{tabular}
\end{document}
``` with:
$T =$ Number of days on which the reference rate stays within the range during the coupon period
$B =$ Number of banking days during the coupon period
22 See "Option Pricing Literature" in the Annex.

# 3.18.2 Replication

In a first step, we break down the instrument into the redemption amount and the coupons. We can neatly replicate the redemption amount by using a zero coupon bond. Decomposing the coupons proves more complicated, however. This becomes evident when we look at any given day $t$ between the two future coupon dates $t_1$ and $t_2$. On this day, we check whether the reference rate $RR$ is within the specified range. If the reference rate is within the corridor, payments to the amount of C*nominal interest rate become due on date $t_2$.

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
RR&$l_{t}$;1 & 0 \\ \hline l&$l_{t}$;= RR &$l_{t}$;=u & C* NR*P \\ \hline u&$l_{t}$; RR & 0 \\ \hline
\end{tabular}
\end{document}
```

Table 3.2

# Where Lower Limit Of The Range U Upper Limit Of The Range

RR reference rate on day t for a maturity of q

NR nominal interest rate

P principal

C constant (in example $1 / \mathrm{B}$ )

The multiplication factor $C$ usually equals 1 divided by the number of days between the coupon dates.![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/7e0262c5-38a8-452c-a39e-267c7f9f56ef/04d0c6f56a883c74ce5308807789dc7bad38c2c34a91193d6cd0926eef8c5807.jpg)
Chart 3.4: Payoff diagram of a digital range

We capture this payoff profile as a portfolio that consists of a long position in a digital call option with a strike of $3\%$ and a short position in a digital call option with a strike of $6.5\%$.[23] Note that these digital options differ from standard digital options in that they do not pay off on the exercise date but only at time $t_2$. To replicate this product, we need to construct such a portfolio of digital call options for every single day on which interest accrues. In short, we decompose the product as follows:

23 We could also map this payoff structure into a fixed payment of $P * C$, a short position in a digital put option with a strike equivalent to the lower limit and a short position in a digital call option with a strike equivalent to the upper limit. It is up to the valuator which procedure to choose.

- zero coupon bond
- Digital range = + digital call option(1) digital call options(2)
where
- = long position
- = short position

Zero coupon bond: serves to capture the redemption

Features of the digital call options(1):

- one option for each day which is relevant for calculating the coupon the exercise price equals the lower interest rate limit
- payment of $\mathrm{P}^{*}\mathrm{NR}^{*}\mathrm{C}$ if the reference rate exceeds the lower limit
- payment on the following coupon date

Features of the digital call options(2):

- one option for each day which is relevant for calculating the coupon
- the exercise price equals the upper interest rate limit
- payment of $\mathrm{P}^{*}\mathrm{NR}^{*}\mathrm{C}$ if the reference rate exceeds the upper limit
- payment on the following coupon date

Evidently, decomposing this product is utterly complicated. Given the enormous number of options, an inaccurate valuation can result in a relatively big pricing error.

Considering a principal of EUR 100, we can replicate this instrument by using:

- a long position in a zero coupon bond with a principal of 100 and a 5-year maturity
- a long position in digital call options: one option for each day relevant for calculating the coupon a strike price of $3\%$
- payoff equals $1 / \mathrm{B} * 5.5$
- payoff on the coupon date following the exercise date
- a short position in digital call options: one option for each day relevant for calculating the coupon a strike price of $6.5\%$
- payoff equals $1 / \mathrm{B} * 5.5$
- payoff on the coupon date following the exercise date

# 3.18.3 Valuation

The valuation of the zero coupon bond is uncomplicated. Digital options are, by contrast, rather sophisticated products.

The literature $^{24}$ suggests valuing the options by using the formula for digital options under the Black-Scholes model, according to which the period between expiration and payoff is to be considered via a suitable forward rate. Since the assumptions of the Black-Scholes model poorly reflect the properties of interest rates, we suggest you use this procedure with discretion, which is also why we are not elaborating on it here.

The Hull-White model provides for the derivation of a closed formula for this type of option:

$$ d i g c (t, t ^ {*}, u, q, m) = P \left(t, t _ {1} + \frac {1}{m}\right) \cdot q \cdot N (h)
$$

$$ v (t, T) ^ {2} = \frac {1}{2 \kappa^ {3}} \sigma^ {2} \left(1 - e ^ {- \kappa (T - t ^ {*})}\right) ^ {2} \left(1 - e ^ {- 2 \kappa (t ^ {*} - t)}\right)
$$

$$ h = \frac {1}{v \left(t, t ^ {*} + \frac {1}{m}\right)} \left\{l n \left(\frac {P \left(t, t ^ {*}\right)}{P \left(t, t ^ {*} + \frac {1}{m}\right)}\right) - \frac {u}{m} \right\} + \frac {v \left(t, t ^ {*} + \frac {1}{m}\right)}{2} - v \left(t, t _ {1} + \frac {1}{m}\right)
$$

$$ d r = (\theta (t) - \kappa r) d t + \sigma d z
$$

Formula 3.10 where

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
$digc(t, t^{*}, u, q, m)$ & premium of a digital call option on day t, strike price u, exercise date $t^{*}$, payoff at strike q, m coupon days per year \\ \hline
$t_1$ & last coupon date prior to exercise date \\ \hline
$t_1+1/m$ & first coupon date following exercise date \\ \hline
$P(t, T)$ & price of a zero coupon bond with a maturity of T-t years and a principal of 1 at time t \\ \hline
$\kappa,\theta,\sigma$ & parameters of the Hull-White model \\ \hline
$N(d)$ & cumulative standard normal distribution at d \\ \hline
T & life of the option \\ \hline
\end{tabular}
\end{document}
```

# 3.19 Range Floaters

# 3.19.1 General Description

In analogy to standard floaters, the interest on range floaters is predetermined a certain time in advance for each successive interest payment date (see section 3.3). In addition, the payoff is adjusted by a multiplication factor that reflects the number of days on which the reference rate has remained within a specified range.[25]

Range floaters will appeal to investors who anticipate the reference rate to remain broadly stable and mostly within the corridor set by the upper or lower limits.

Example: accrual note 1996-2001

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & March 3,1996, to March 3,2001 (5 years) \\ \hline
Redemption rate & 100\% \\ \hline
Upper limit & 6.5\% \\ \hline
Lower limit & 3\% \\ \hline
Coupons & semiannual, (6-month EURIBOR + 50 BP) * (T/B) \\ \hline
Issue volume & EUR 500,000,000 \\ \hline
\end{tabular}
\end{document}
``` where

$T =$ Number of days on which the reference rate stays within the specified corridor

$B =$ Number of banking days between the coupon period

# 3.19.2 Replication

We decompose range floaters in analogy to digital ranges. Again, we obtain a portfolio of digital call options for each day which is relevant for calculating the coupon. As we are dealing with a forward start option, we get to know the exact payout only during the life of the option.

We replicate range floaters as follows:

$$
- \text {R a n g e f l o a t e r} = \begin{array}{l} + \text {z e r o c o u p o n b o n d} \\ + \text {for w a r d s t a r t d i g i t a l c a l l o p t i o n s (1)} \\ - \text {for w a r d s t a r t d i g i t a l c a l l o p t i o n s (2)} \end{array}
$$ where

$$
- = \text {l o n g p o s i t i o n}
$$

$$
- = \text {s h o r t p o s i t i o n}
$$

Zero coupon bond: serves to capture the redemption

Features of the forward start digital call options(1):

- one option for each day which is relevant for calculating the coupon
- the exercise price equals the lower interest rate limit
- if the reference rate exceeds the lower limit at strike, a fraction $(\mathrm{C}^{*}\mathrm{P})$ of the reference rate applicable on the most recent coupon date is paid out
- payout on the following coupon date

Features of the forward start digital call options(2):

- one option for each day which is relevant for calculating the coupon
- the exercise price equals the upper interest rate limit
- if the reference rate exceeds the upper limit at strike, a fraction $(\mathrm{C}^{*}\mathrm{P})$ of the reference rate applicable on the most recent coupon date is paid out
- payout on the following coupon date

Evidently, decomposing this product is utterly complicated. Given the enormous number of options, an inaccurate valuation can result in a relatively big pricing error.

Considering a principal of EUR 100, we can replicate this instrument by using:

- a long position in a zero coupon bond with a principal of 100 and a 5-year maturity
- a long position in forward start digital call options: one option for each day relevant for calculating the coupon a strike price of $3\%$
- payout equals $1 / \mathrm{B}^*$ (6-month EURIBOR of the coupon date preceding the exercise date + 50 bp)
- payout on the coupon date following the exercise date
- a short position in forward start digital call options: one option for each day relevant for calculating the coupon a strike price of $6.5\%$ payout equals $1 / \mathrm{B}^*$ (6-month EURIBOR of the coupon date preceding the exercise date $+50$ bp) payout on the coupon date following the exercise date

# 3.19.3 Valuation

The valuation of the zero coupon bond is uncomplicated. To value the forward start options, we must use numerical procedures.[26]

# 3.20 Barrier Notes

# 3.20.1 General Description

Barrier notes differ from digital ranges described in section 3.18 in just one characteristic. Instead of a range, i.e. an upper and a lower limit, within which the reference rate must stay for a digital range to generate a payoff, barrier notes come with only an upper or a lower limit.[27]

Investors will buy barrier notes if they expect the reference rate to move away from the specified limit.

Example: GBP barrier note 1997-2000

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & March 23,1998, to March 23,2001 (3 years) \\ \hline
Total principal & 25,000,000 \\ \hline
Coupon dates & every May 23, August 23, November 23 and February 23 \\ \hline
Issue price & 100\% \\ \hline
Coupons & 3-month LIBOR +1.28\% * T/365 \\ \hline
Redemption & 100\% \\ \hline
Denomination & GBP 500,000 \\ \hline
\end{tabular}
\end{document}
``` where

T = number of banking days in the U. K. during which the 3-month LIBOR is below the limit

Barriers = including May 22,1999, $7.5\%$ including May 22,2000, $7.875\%$ including May 22,2001, $8.25\%$

# 3.20.2 Replication

We decompose barrier notes like digital ranges. Note, however, that there is only either an upper limit or a lower limit. In our example, we are dealing with a floater which generates additional interest payments if the reference rate remains below a specified barrier.

Coupon payments only in case the barrier is not surpassed:

$$
- \text {B a r r i e r n o t e (with a n u p p e r l i m i t)} = + \text {z e r o c o u p o n b o n d} (1) + \text {d i g i t a l c a l l o p o n s}
$$ where

- = long position
- = short position

Zero coupon bond(1): serves to capture the redemption $^{28}$

Features of the zero coupon bonds(2):29

- one bond for each day which is relevant for calculating the coupon

- payout of P*NR*C

- payout on the following coupon date

Features of the digital call options:

- one option for each day which is relevant for calculating the coupon
- the strike price equals the upper interest rate limit
- payout of P*NR*C if the reference rate exceeds the upper limit
- payout on the following coupon date

Coupon payments only in case the reference rate remains above the barrier:

$$
- \text {B a r r i e r n o t e (with l o w e r l i m i t)} = \begin{array}{l} + \text {z e r o c o u p o n b o n d} \\ + \text {d i g i t a l c a l l o p t i o n s} \end{array}
$$ where

$$
- = \text {l o n g p o s i t i o n}
$$

Zero coupon bond: serves to capture the redemption

Features of the digital call options:

- one option for each day which is relevant for calculating the coupon

28 In this example, it would actually capture the floater!
29 With digital ranges, we had digital call options at this place. Since the lower limit is 0, the strike price of these digital options would be zero. In other words, the options would be exercised in any event. This is why we may substitute them with zero coupon bonds in the first place.
the strike price equals the barrier
- payout of P*NR*C if the reference rate exceeds the barrier
- payout on the following coupon date

Since we are dealing with a floater in this example which generates additional interest payments if the reference rate remains below a specified barrier, we must adapt the zero coupon bond(1) accordingly. Considering a principal of GBP 100, we can replicate this instrument by using:

- a long position in a floater with a principal of 100, interest rate fixing at 3-month intervals, the 3-month LIBOR as reference rate and a maturity of 3 years
- a long position in zero coupon bonds: one bond for each date relevant for calculating the coupon principal: $1.28 * \mathrm{T} / 365$ payout on the following coupon date
- a short position in digital call options: one option for each day relevant for calculating the coupon strike price between March 23,1998, and May 22,1999, at $7.5\%$ between May 23,1999, and May 22,2000, at $7.875\%$ between May 23,2000, and May 22,2001, at $8.25\%$ payoff equals $1/365 * 1.28$ payout on the coupon date following the exercise date

# 3.20.3 Valuation

For the valuation of barrier notes, see section 3.18.3 on digital ranges.

# 3.21 Fixed/Floating Rate Bonds With Put Option

# 3.21.1 General Description

This instrument is a coupon bond which may be redeemed either at par or by delivering another bond. In other words, this type of bond carries an embedded put option. The issuer will exercise this option if the value of the bond to be delivered lies below the face value owed.

Example: $5\%$ convertible deposit 1998-1999

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & August 9,1998, to January 18,1999 (155 days) \\ \hline
Interest rate & 5\% p.a \\ \hline
Day count & actual/actual \\ \hline
Coupon date & January 18,1999 \\ \hline
Issue price & 100\% \\ \hline
Denomination & EUR 1,000 \\ \hline
Redemption & due on January 18,1999 see terms of redemption \\ \hline
\end{tabular}
\end{document}
```

# Terms Of Redemption

The instrument is redeemed at the option of the issuer

- fully at par; per EUR 100 principal of the convertible deposit 1998-1999;

$\bigcirc$ by delivery of EUR 100 principal of the German $4.75\%$ sovereign bond plus a payment of EUR 8.05 to the holder of the Bund convertible deposit, or progressively against payment of accrued interest on the EUR 100 principal of the German $4.75\%$ sovereign bond by the holder of the convertible deposit to the issuer.

# 3.21.2 Replication

In general, we can decompose such instruments in a fairly straightforward way. They consist of a coupon bond and a written European put option on another bond.

$$
- \text {C o u p o n b o n d with c o n v e r s i o n r i g h t} = \begin{array}{l} + \text {c o u p o n b o n d} \\ - \text {E u r o p e a n p u t o p t i o n} \end{array}
$$ where

$$
- = \text {l o n g p o s i t i o n}
$$

$$
- = \text {s h o r t p o s i t i o n}
$$

Coupon bond: equivalent to an instrument without a conversion right

Features of the European put option: corresponds to the issuer's right to convert Considering a principal of EUR 100, we can replicate this instrument by using:

- a long position in a zero coupon bond with a principal of 100 and a maturity of 155/365 years
- a long position in a zero coupon bond with a principal of 2.01712329 $(= 5*155 / 365)$ and a maturity of $155 / 365$ years
- a short position in a European put option on the $4.75\%$ sovereign bond with a principal of 100; strike price of the option: 91.95 ( $= 100 - 8.05$ ) plus the interest accrued on the exercise date, life of the option: 155 days

# 3.21.3 Valuation

The valuation of the zero coupon bonds is uncomplicated. For the valuation of European put options on putable bonds, see section 3.7.

# 3.22 Annex - Product Replication Overview

The following table shows the components into which structured products can be mapped from the investor's (long's) perspective. For an in-depth description of how to decompose the individual structured products, see the respective Replication sections in the handbook.

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Product & Replication \\ \hline
Zero coupon bond & Zero coupon bond \\ \hline
Coupon bond (straight bond) & Portfolio of zero coupon bonds \\ \hline
Floating rate note (FRN, floater) & Zero coupon bond \\ \hline
Payer&#$x_{27}$;s swap & Floaterr - coupon bond \\ \hline
Receiver&#$x_{27}$;s swap & Coupon bond - floater \\ \hline
Forward rate agreement (FRA) & Zero coupon bond (initiation of the FRA) Zero coupon bond (end of the FRA) \\ \hline
Callable zero coupon bond & Zero coupon bond - call option \\ \hline
Putable zero coupon bond & Zero coupon bond + put option \\ \hline
Callable coupon bond & Coupon bond - call option \\ \hline
Putable coupon bond & Coupon bond + put option \\ \hline
Payer&#$x_{27}$;s (put) swaption & Put option on coupon bond \\ \hline
Receiver&#$x_{27}$;s (call) swaption & Call option on coupon bond \\ \hline
Floor & Floorlets \\ \hline
Cap & Caplets \\ \hline
Collar & Floor - cap \\ \hline
Floored floating rate note & Floaterr + floor \\ \hline
Capped floating rate note & Floaterr - cap \\ \hline
Collared floater & Floaterr + floor cap \\ \hline
Reverse floating rate note & Coupon bond floater \\ \hline
Multitranche bond & Coupon bond - put options \\ \hline
Step-up/step-down bond (with call provision) & Zero coupon bonds (- call option) \\ \hline
Floating rate/fixed rate note & Floaterr - zero coupon bond + coupon bond \\ \hline
Fixed rate/zero coupon bond (with call provision) & Zero coupon bonds (- call option) \\ \hline
Fixed to floating rate note & Zero coupon bonds - receiver&#$x_{27}$;s swaption \\ \hline
Digital range & Zero coupon bond + portfolio of digital call options \\ \hline
Range floater & Zero coupon bond + portfolio of digital forward start call options \\ \hline
Barrier note & Zero coupon bond + portfolio of digital call options \\ \hline
\end{tabular}
\end{document}
```

# 4 Products Of Equities Derivatives

# 4.1 Convertible Bonds

# 4.1.1 General Description

Convertible bonds are corporate bonds which grant the investor the right to exchange the bond for a certain number of shares in the issuing company (conversion ratio) $^{30}$ on predetermined terms at predetermined conversion dates. $^{31}$ In many cases, convertible bonds can be called by the issuer on certain dates (i.e., call dates) at a predetermined repurchase price, which generally depends on the time to maturity. If the issuer exercises its call privilege, the investor may accept the repurchase price or convert the bond. The call provision can thus be interpreted as a way for the issuer to force the investor to convert the bond earlier than he or she might otherwise choose to do so. $^{32}$

In buying a convertible bond, the investor makes debt capital available to the issuer. Upon conversion, the debt is transformed into equity in the company. Therefore, this type of bond can be regarded primarily as a credit derivative and less as a structured product.

The conversion right can be interpreted as a call option or an exchange option, which in turn can take the form of a European, American or Bermuda option. If the conversion right can be exercised only on the bond's maturity date (European-style), mapping it into simpler components is fairly straightforward. Instead of redeeming the bond (and receiving the accrued interest), the investor can opt to convert it into stock. The investor thus holds a European call option with a known strike price.

If the conversion right corresponds to an American or Bermuda option, two things have to be taken into consideration:

(1) Upon conversion, the investor loses his/her claim to any accrued interest.
(2) The conversion ratio is predetermined, but the applicable strike price is not known in advance, as it always depends on the current value of the convertible bond.

One central problem with convertible bonds is the fact that the price of the underlying asset is affected by the existence of the conversion right. In the case of conventional options, the company which issued the underlying stock is not involved in the transaction in any way. This is not the case with convertible bonds, where the company sells an option on its own stock.[33] If it is profitable for the investor to convert the bond into stock, then the investor's profit constitutes a loss for the issuer. This loss has to be reflected accordingly in the price of the issuing company's stock.

At the same time, one can say that if the value of the company's equity rises, so does the probability that the conversion right will be exercised. As a result, not all of this increase in value will benefit the existing shareholders, which in turn means that the stock price would behave differently in the absence of a conversion right. This characteristic can be illustrated by a simple example:

Let us assume that a company's value on the maturity date of a convertible bond is EUR 100. This amount consists of EUR 80 in equity, which is represented by 80 shares of stock, and of a convertible bond with a face value of EUR 20.[34] If we assume a conversion ratio of 1:45 (45 shares of stock for one bond), it only makes sense to exercise the conversion right in cases where the stock price is above 20/45. However, how does this affect the stock price? The most obvious answer – EUR 1 (EUR 80 in equity divided into 80 shares) – is incorrect. In order to understand this, it is necessary to consider the consequences of conversion.

The company will generally fulfill its obligations to the investor by issuing new shares, $^{35}$ which will affect the stock price. The value of the company, which is completely equity financed after the conversion, is still EUR 100. However, this value has to be divided into 125 shares (80 old and 45 new). The value of each share is thus EUR 100/125 (0.80). If the bond – which is worth EUR 36 – were not convertible, the stock price would obviously be EUR 1.

Instead of issuing new shares, the issuer might also buy the 45 required shares on the stock market and then pass them on to the investor. This raises the question of how much those 45 shares would cost. The value of the company's equity after the conversion would be EUR 100 minus the cost of purchasing the 45 shares.[36] The price (P) of a share (after the conversion) would thus be $\mathrm{P} = (10045 * \mathrm{P}) / 80$, or $\mathrm{P} = 0.80$. The value of the convertible bond is also EUR 36 in this case.

Here we can see that the conversion right has an immediate impact on the price of the underlying asset. The more probable the conversion is, the more "equity-like" the convertible bond becomes.

Example: $3\%$ convertible bond 2002-2007

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & February 10,2002, to February 9,2007 (5 years) \\ \hline
Interest rate & 3\% p.a. paid out on March 20 each year; first payment on February 10,2003 \\ \hline
Total principal & EUR 30 million \\ \hline
Redemption & 100\% redemption at final maturity on February 10,2007, unless converted earlier by the bond holder. \\ \hline
Conversion ratio & 1:3, (each bond can be converted into 3 shares of stock in company XY) \\ \hline
Conversion dates & February 10 and August 10 each year, starting on August 10,2002 \\ \hline
\end{tabular}
\end{document}
```

35 The previously existing shareholders agreed to a contingent capital increase before the convertible bond was issued, which means
36 The stock purchase could also be financed by taking out a loan (debt capital), in which case the company's value of EUR 100 would be preserved. As an alternative, the purchase could be financed from the company's cash flow (i.e., equity), in which case the value of the company would decrease by the amount required for the purchase.

# 4.1.2 Replication

As mentioned above, a conversion right can be interpreted as a call option or as an exchange option. Both approaches involve certain problems, which are exacerbated further in cases where the issuer can exercise a call privilege. Therefore, it may in fact be better not to replicate convertible bonds at all.

If we interpret the conversion right as a call option, then convertible bonds can be broken down into a series of zero coupon bonds and a (European, American or Bermuda) call option. If the bond can only be converted on its maturity date (European-style), then the strike price equals the sum of the redemption amount and coupon payment divided by the conversion ratio. In contrast, the strike price for an American or Bermuda conversion right is not known until the right is exercised. The strike price will be equal to the time value of the convertible bond divided by the conversion ratio. In such cases, the product cannot really be broken down into simpler components.

A European-style conversion right can be replicated as follows:

$$

\begin{array}{r l} + \text {C o n v e r t i b l e b o n d} & = + \text {z e r o c o u p o n b o n d (1)} +… + \text {z e r o c o u p o n b o n d (n)} \\ & \qquad + \times \text {w a r r a n t s o n the i s s u e r ' s s t o c k (c a l l o p t i o n s)} \end{array}

$$ where

$$
- = \text {l o n g p o s i t i o n}
$$

$$

\times = \text {s h o r t p o s i t i o n}

$$

The strike price of the warrants equals the sum of the redemption amount and coupon payment divided by $x$. If we were to replicate the conversion right with normal call options (instead of warrants), we would neglect the price effect stemming from the conversion right and thereby overvalue the conversion right.

Assuming a principal of 100, we can replicate this instrument with:

- the purchase of $\sum_{t=1}^{4} zero\ coupon\ bond_{t}$ with a face value of 3, maturity $t$ and a zero coupon bond with a face value of 103 and maturity $t = 5$ years
- the purchase of a Bermuda option (maturity: 5 years) on 3 shares of company XY's stock. The option's strike prices are determined by the cash values of the coupon bond on the exercise dates. The exercise dates are February 10 and August 10 each year, starting on August 10,2002. Coupon bond data: face value 100, annual coupon $3\%$.

Replicating the product in this example does not make sense, as the Bermuda option described is far from being a standard product. At all times, the value of the option depends on the value of the outstanding cash flows (including the accompanying conversion right) from the convertible bond. This means that replication does not simplify the valuation process.

The conversion right can also be regarded as an exchange option. In order to illustrate this point, let us consider the value of a convertible bond on a given exercise date:

$$

\begin{array}{l} \max (T V (t); x \cdot S (t)) = \\ = T V (t) + \max (0; x \cdot S (t) - T V (t)) = \\ = T V (t) + x \cdot \max \left(0, S (t) - \frac {T V (t)}{x}\right) \\ \end{array}

$$ where

$TV(t)$ time value of the convertible bond

$x$ conversion ratio

$S(t)$ stock price on the exercise date for the conversion right

The last term shown above is equal to $x$ options to exchange one share of stock for $1 / x$ convertible bonds, which correspond to the remaining cash flows and conversion terms. This method of replication is rather elegant, but it brings about a number of problems in valuating the product, as the procedure used for conventional exchange options (one share for another) would only be correct in cases where the time value of the convertible bond follows a geometric Brownian motion.

In summary, it is safe to say that only European-style convertible bonds can be broken down sensibly into simpler products.

# 4.1.3 Valuation

As the value of a convertible bond at time $t$ is independent of the past (this is referred to as path independence), binomial trees make for a highly suitable valuation tool.[37]

For the special case of European-style conversion rights, the replication method given above can be used. The warrant is valuated using the following formula:38

$$

\begin{array}{l} W = \frac {N \cdot x}{N + M \cdot x} \big (Z N (d _ {1}) - X e x p (- r T) N (d _ {2}) \big) \\ Z = S + \frac {M}{N} W \\ d _ {1} = \frac {\ln \left(\frac {Z}{X}\right) + (r + \sigma_ {z} ^ {2} / 2) T}{\sigma_ {Z} \sqrt {T}} \\ d _ {2} = d _ {1} - \sigma_ {Z} \sqrt {T} \\ \end{array}

$$

Formula 4.1: Valuation of European warrants where

$W$ the premium on warrants on the company's own stock

$S$ price of the stock

$Z$ price of the stock plus the proportionate value of the warrants

$X$ strike price

$M$ number of warrants outstanding

$N$ number of shares outstanding

$x$ exercise ratio (shares per warrant)

$T$ option expiration date

$r$ risk-free interest rate

$\sigma_Z$ volatility of $Z$

Here it is important to note that the value of warrant $W$ is a function of itself.[39]

The equation has to be solved numerically.

In the case of a European-style conversion right, the strike price $X$ is equal to the sum of the redemption amount and the last coupon payment divided by the conversion ratio.

37 Cf. K. Tsiveriotis and C. Fernandes, "Valuing Convertible Bonds with Credit Risk," Journal of Fixed Income, 8(2), 1998, p. 95-102.38 Cf. J. C. Hull, "Options, Futures, and Other Derivatives," 4 ed., Prentice Hall, 2000, p. 254.39 $W$ appears on both sides of the equation and cannot be isolated.

# 4.2 High-Yield Products

# 4.2.1 Introduction

Corporate bonds which involve a high level of default risk are generally issued with high yields in order to compensate the investor for the increased risk of default.[40]

This is also the case with high-yield structured products, which pay exceptionally high coupons in comparison to conventional bonds. At the same time, however, redemption at par is not guaranteed. Rather, the issuer has the right to deliver other financial instruments at maturity instead of redeeming the bond. One typical means of doing so is to repay the debt by delivering a predetermined number of shares. This right is exercised in cases where the value of the stock (or other financial products) is lower than the face value of the bond on its maturity date. Usually, the redemption is then settled in cash, not by actual delivery of the securities.

As a rule, high-yield products cannot be called by the issuer or the investor.

# 4.2.2 Cash-Or-Share Bonds - Same Currency

# 4.2.2.1 General Description

Cash-or-share bonds (also called reverse convertibles) are the simplest type of high-yield products. At maturity, the issuer has the right to deliver a certain number of shares instead of redeeming the bond at face value. This means that the investor will not profit from a rise in the stock's price. However, if the price drops, the investor has to bear the loss. The investor is compensated for this risk by means of high coupon payments.

Example: $9.5\%$ Cash-or-share bond 2003-2004

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & January 23,2003, to January 23,2004 (1 year) \\ \hline
Interest rate & 9.5\% p.a. \\ \hline
Day count convention & Act/act \\ \hline
Issue price & 99.50\% \\ \hline
Denomination & EUR 5,000 \\ \hline
Redemption & Issuer can choose between:
100\% of face value, or
51 shares in company XY per EUR 5,000 in principal
The stock is listed in EUR. \\ \hline
\end{tabular}
\end{document}
```

The issuer in this example will deliver the 51 shares if the stock price falls below EUR 98.04 (= 5,000/51).![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/7e0262c5-38a8-452c-a39e-267c7f9f56ef/f4d47ddb54aad80ba088cf63a78b2d4a758f401950c09d6d44efc93060e172d8.jpg)
Figure 4.1: Payoff profile of a cash-or-share bond

# 4.2.2.2 Replication

Assuming a face value of EUR 100, the redemption's payoff profile on the maturity date can be expressed as follows:

$$

\min (x \cdot S (T); 100)

$$ where $x$ is the number of shares and $S(T)$ is the stock's price on the maturity date. The payoff can also be depicted by rearranging the equation as follows:

$$
\begin{array}{l} \operatorname {m i n} (x \cdot S (T); 100) = \\ = 100 + \min (x \cdot S (T) - 100; 0) = \\ = 100 - x \cdot \max \left(\frac {100}{x} - S (T); 0\right) \\ \end{array}
$$

Here we can see that the redemption of a cash-or-share bond with a face value of 100 can be broken down into a zero coupon bond (with a face value of 100) and the sale of $x$ European put options with a strike price of $100 / x$. The regular coupon payments can be depicted as zero coupon bonds.

Cash-or-share bonds can therefore be replicated with zero coupon bonds (coupons and face value) and a short position in European put options.

$$
\begin{array}{l} + \text {C a s h - o r - s h a r e b o n d} = + \text {z e r o c o u p o n b o n d (1)} + \dots + \text {z e r o c o u p o n b o n d (n)} \\ - x \text {p u t} \frac {\text {f a c e v a l u e}}{x} \\ \end{array}
$$ where

$$

\begin{array}{l} + = \text {l o n g p o s i t i o n} \\ - = \text {s h o r t p o s i t i o n} \\ \end{array}

$$

$x =$ number of options (exchange ratio of bonds to shares)

Face values of the zero coupon bonds: Coupon payments and the face value of the bond.

Assuming a principal of 5,000, we can replicate this instrument with:

- the purchase of a zero coupon bond with a principal of 5,475 (including the coupon) and a 1-year maturity
- the sale of $x = 51$ put options with a strike price of 98.04 and a 1-year maturity

# 4.2.2.3 Valuation

Valuating the zero coupon bonds poses no particular problem. Likewise, the options can be valuated without difficulty using the Black-Scholes model.

$$ p = X e ^ {- r T} N (- d _ {2}) - S e ^ {- q T} N (- d _ {1})
$$ where

$$ d _ {1} = \frac {l n (S / X) + (r - q + \sigma^ {2} / 2) T}{\sigma \sqrt {T}}
$$

$$ d _ {2} = d _ {1} - \sigma \sqrt {T}
$$

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline p & premium of a European put option on one share with price S at t = 0; X is the exercise price, and the option expires in T years \\ \hline r & risk-free interest rate (constant) over the period of the option \\ \hline q & dividend yield \\ \hline σ & volatility of the stock \\ \hline
N(d) & cumulative standard normal distribution at d \\ \hline
\end{tabular}
\end{document}
```

Formula 4.1: Premium of a European put option according to Black-Scholes

# 4.2.2.4 Variant: Shares Can Be Delivered For Part Of The Face Value

This variant differs from conventional cash-or-share bonds in that the face value can be divided into parts and the issuer's redemption option can be exercised separately for each part (i.e., by delivering various stocks). Therefore, these products can be regarded as a basket of cash-or-share bonds (in contrast to bonds in which an option on a basket of stocks is embedded).

Example: $8\%$ German basket 1998-2001 with option to deliver Bayer, BMW, or Deutsche Bank AG shares

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & January 2,1998, to January 1,2001 (3 years) \\ \hline
Interest rate & 8\% p.a. paid out on January 2 each year, starting on January 2,1999 \\ \hline
Day count convention & 30/360 \\ \hline
Issue price & 101\% \\ \hline
Total principal & EUR 5,000,000 \\ \hline
Denomination & EUR 1,000 \\ \hline
Redemption & repayment as of November 2,2001, where the issuer can choose to repay the face value or deliver the following against each EUR 1,000: EUR 333.33 or 11 shares of common stock in Bayer, EUR 333.33 or 6 shares of common stock in BMW, EUR 333.34 or 7.14 shares of common stock in Deutsche Bank AG (0.14 is settled in cash) \\ \hline
\end{tabular}
\end{document}
```

As the issuer's redemption option is independent for each part, this product can be broken down into a basket of three cash-or-share bonds.

Assuming a principal of 1,000, we can replicate this instrument with:

- the purchase of $\sum_{t=1}^{2}$ zero coupon bond $t$ with face value 80, maturity in $t$ years, and a zero coupon bond with a face value of 1,080 and maturity in $t = 3$ years
- the sale of 11 European puts on one share of Bayer common stock with a strike price of $333.33 / 11 = 30.3$ and a 3-year maturity
- the sale of 6 European puts on one share of BMW common stock with a strike price of $333.33 / 6 = 55.6$ and a 3-year maturity
- the sale of 7.14 European puts on one share of Deutsche Bank common stock with a strike price of $333.34 / 7.14 = 46.7$ and a 3-year maturity

# 4.2.2.5 Variant: Issuer'S Option Is Not Valid Until The Stock Price Goes Below A Certain Threshold During The Term Of The Product

This variant differs from conventional cash-or-share bonds in that the issuer does not have the right to deliver stocks instead of redeeming the bond at face value until the stock price goes below a certain level at least once during the term of the instrument.

Example: $9.5\%$ Cash-or-share bond with threshold 2003-2004

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & January 23,2003, to January 23,2004 (1 year) \\ \hline
Interest rate & 9.5\% p.a. \\ \hline
Day count convention & act/act \\ \hline
Issue price & 99.50\% \\ \hline
Denomination & EUR 5,000 \\ \hline
Redemption & If XY&#$x_{27}$;s stock price remains above 70\% of the price on the bond&#$x_{27}$;s issue date throughout the entire term of the bond, the bond is redeemed at 100\% of its face value. Otherwise, the issuer can choose between:
100\% of face value, or
51 shares in company XY per EUR 5,000 in principal. The stock is listed in EUR. \\ \hline
\end{tabular}
\end{document}
```

In replicating the instrument, the European put option is to be replaced by a conventional down-and-in put option. This means the following:

$$
\begin{array}{l} + \text {C a s h - o r - s h a r e with} = + \text {z e r o c o u p o n b o n d (1)} + \dots + \text {z e r o c o u p o n b o n d (n)} \\ \text {t h r e s h o l d} \quad - x \text {d o w n - and - i n p u t o p t i o n s with a s t r i k e p r i c e o f} \\ \frac {\text {f a c e v a l u e}}{x} \end{array}
$$ where

$$

\begin{array}{l} + = \text {l o n g p o s i t i o n} \\ - = \text {s h o r t p o s i t i o n} \\ x = \text {n u m b e r o f o p t i o n s (e x c h a n g e r a t i o o f b o n d s t o s h a r s)} \\ \end{array}

$$

Face values of the zero coupon bonds: Coupon payments plus the face value of the bond.

A closed-form valuation formula exists for down-and-in put options:[41]

Case 1: The barrier is lower than the strike price (face value divided by $x$ )

$$ p = B - C + D
$$

Case 2: The barrier is higher than the strike price (a normal European put option)

$$ p = A
$$ where

$$

A = X e ^ {- r T} N \left(\sigma \sqrt {T} - x _ {1}\right) - S e ^ {- q T} N \left(- x _ {1}\right)

$$

$$

B = X e ^ {- r T} N \left(\sigma \sqrt {T} - x _ {2}\right) - S e ^ {- q T} N \left(- x _ {2}\right)

$$

$$

C = X e ^ {- r T} (H / S) ^ {2 \mu} N (y _ {1} - \sigma \sqrt {T}) - S e ^ {- q T} (H / S) ^ {2 (\mu + 1)} N (y _ {1})

$$

$$

D = X e ^ {- r T} (H / S) ^ {2 \mu} N (y _ {2} - \sigma \sqrt {T}) - S e ^ {- q T} (H / S) ^ {2 (\mu + 1)} N (y _ {2})

$$

$$ x _ {1} = \frac {\ln (S / X)}{\sigma \sqrt {T}} + (1 + \mu) \sigma \sqrt {T} \quad x _ {2} = \frac {\ln (S / H)}{\sigma \sqrt {T}} + (1 + \mu) \sigma \sqrt {T}
$$

$$ y _ {1} = \frac {\ln \left(H ^ {2} / S X\right)}{\sigma \sqrt {T}} + (1 + \mu) \sigma \sqrt {T} \quad y _ {2} = \frac {\ln (H / S)}{\sigma \sqrt {T}} + (1 + \mu) \sigma \sqrt {T}
$$

$$
\mu = \frac {r - q - \sigma^ {2} / 2}{\sigma^ {2}}
$$

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline p & premium of a down-and-in put option on one share with price S at t = 0. X is the exercise price, the option expires in T years, and the barrier is H. \\ \hline r & risk-free interest rate (constant) over the period of the option \\ \hline q & dividend yield \\ \hline σ & volatility of the stock \\ \hline
N(d) & cumulative standard normal distribution at d \\ \hline
\end{tabular}
\end{document}
```

Formula 4.2: Premium of a down-and-in European put option

# 4.2.3 Cash-Or-Share Bonds - Various Currencies

# 4.2.3.1 General Description

As in Section 4.2.2, this type of product also gives the issuer the right to deliver a certain number of shares at maturity instead of redeeming the bond at face value. The difference from the products described in Section 4.2.2 is that the currency in which the bond is issued is different from the one in which the stock is listed.

Example: $9.5\%$ Cash-or-share bond 2003-2004

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & January 23,2003, to January 23,2004 (1 year) \\ \hline
Interest rate & 9.5\% p.a. \\ \hline
Day count convention & act/act \\ \hline
Issue price & 99.50\% \\ \hline
Denomination & EUR 5,000 \\ \hline
Redemption & Issuer can choose between:
100\% of face value, or
51 shares in company XY per EUR 5,000 in principal
The stock is listed in USD. \\ \hline
\end{tabular}
\end{document}
```

In this example, the issuer will deliver the 51 shares if the stock price falls below EUR 98.04. In this context, it is important to note that the price change in euro – and not the price change in USD – is relevant.

# 4.2.3.2 Replication

Assuming a face value of EUR 100, the payoff profile for redemption at maturity can be expressed as follows:

$$
\min (x \cdot E (T) \cdot S (T); 100)
$$ where $x$ is the number of shares, $E(T)$ is the exchange rate (domestic against foreign currency), and $S(T)$ is the stock's price in the foreign currency on the maturity date. The payoff can also be depicted by rearranging the equation as follows:

$$

\begin{array}{l} \min (x \cdot E (T) \cdot S (T); 100) = \\ = 100 + \min (x \cdot E (T) \cdot S (T) - 100; 0) = \\ = 100 - x \cdot \max \left(\frac {100}{x} - E (T) \cdot S (T); 0\right) \\ \end{array}

$$

Here we can see that the redemption of such a cash-or-share bond with a face value of 100 can be broken down into a zero coupon bond (face value: 100) and the sale of $x$ European put options at a strike price of $100 / x$. The regular coupon payments can be depicted as zero coupon bonds.

These cash-or-share bonds can thus be replicated with zero coupon bonds (coupon payments plus face value) and a short position in European put options (foreign equity struck in domestic currency) with a strike price equal to the bond's face value divided by the exchange ratio.

$$

\begin{array}{l} + \text {C a s h - o r - s h a r e b o n d} = + \text {z e r o c o u p o n b o n d (1)} + \dots + \text {z e r o c o u p o n b o n d (n)} \\ \hskip 2 8.452756 p t - x \text {for g i n e q u i t y p u t o p t i o n s} \end{array}

$$ where

$$
- = \text {l o n g p o s i t i o n}
$$

$$
- = \text {s h o r t p o s i t i o n}
$$

$$ x = \text {n u m b e r o f o p t i o n s (e x c h a n g e r a t i o o f b o n d s t o s h a r s)}
$$

Face values of the zero coupon bonds: Coupon payments plus the face value of the bond.

Assuming a principal of 5,000, we can replicate this instrument with:

- the purchase of a zero coupon bond with a principal of 5,475 (including the coupon) and a 1-year maturity
- the sale of $x = 51$ "foreign equity struck in domestic currency" put options with a strike price of 98.04 and a 1-year maturity

# 4.2.3.3 Valuation

Valuating the zero coupon bonds poses no particular problem. Likewise, the "foreign equity struck in domestic currency" options can be valuated easily using the Black-Scholes model.[43]

$$ p = X e ^ {- r T} N (- d _ {2}) - E \cdot S \cdot e ^ {- q T} N (- d _ {1})
$$ where

$$

\begin{array}{l} d _ {1} = \frac {l n (E \cdot S / X) + (r - q + \sigma^ {2} / 2) T}{\sigma \sqrt {T}} \\ d _ {2} = d _ {1} - \sigma \sqrt {T} \\ \sigma = \sqrt {\sigma_ {S} ^ {2} + \sigma_ {E} ^ {2} + 2 \cdot \rho \sigma_ {S} \sigma_ {E}} \\ \end{array}

$$

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline p & premium of a European “foreign equity struck in domestic currency” put option on one share with price S in the foreign currency at t = 0. X is the exercise price in domestic currency, the option expires in T years, and the current exchange rate is E. \\ \hline r & risk-free interest rate (constant) over the period of the option \\ \hline q & dividend yield \\ \hline σE & volatility of the exchange rate \\ \hline
σS & volatility of the stock \\ \hline ρ & correlation between changes in the exchange rate and the stock price \\ \hline
N(d) & cumulative standard normal distribution at d \\ \hline
\end{tabular}
\end{document}
```

Formula 4.3: Premium of a European "foreign equity struck in domestic currency" put option

# 4.2.4 High-Yield Index Bonds

# 4.2.4.1 General Description

In contrast to conventional cash-or-share bonds, these bonds are redeemed at a price which depends not on an individual stock but on an index value. The issuer's redemption option is typically defined as follows:

$$

\min \left(f a c e v a l u e; f a c e v a l u e \cdot \frac {S (T)}{S}\right)

$$ where

$S$ value of the index on or shortly before the bond's issue date, in any case known on that date44

$S(T)$ value of the index at maturity

If the index is below $S$ at maturity, then the investor bears the loss. If the value is above that level, the issuer will redeem the bond at face value.

Example: $8.7\%$ Pfandbrief 1998-2003 with issuer's redemption option

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & March 20,1998, to March 21,2003 (5 years) \\ \hline
Interest rate & 8.7\% p.a. paid out on January 20 each year, starting on March 20,1999 \\ \hline
Day count convention & Act/act \\ \hline
Issue price & 100\% \\ \hline
Total principal & n.a. \\ \hline
Denomination & EUR 50,000 \\ \hline
Redemption & min( face value; face value * Eurostoxx50final / Eurostoxx50initial ) \\ \hline
Eurostoxx50initial & March 14,1998 \\ \hline
Eurostoxx50final & March 21,2003 \\ \hline
\end{tabular}
\end{document}
```

4 For more information on products where this value is unknown on the issue date, see Section 4.2.6.

# 4.2.4.2 Replication

In this specific case, the redemption can also be expressed as follows:

$$

\begin{array}{l} \min \left(f a c e v a l u e; f a c e v a l u e \cdot \frac {S (T)}{S}\right) \\ = f a c e v a l u e + \frac {f a c e v a l u e}{S} * \min (0; S (T) - S) = \\ = f a c e v a l u e - \frac {f a c e v a l u e}{S} * \max (0; S - S (T)) \\ \end{array}

$$

The last term describes the payoff of a short position in (face value / S) European put options with a strike price of $S$. Please note that $S$ is already known when the bond is issued.

Here we can see that the replication is completely analogous to that of cash or-share bonds. The products can be broken down into zero-coupon bonds (coupon payments plus redemption amount) and a short position in European put options.

$$

\begin{array}{l} + \text {H i g h - y i e l d i n d e x} = + \text {z e r o c o u p o n b o n d (1)} + \dots + \text {z e r o c o u p o n b o n d (n)} \\ \text {t r a c k e r b o n d} \quad - x \text {E u r o p e a n p u t o p t i o n s} \end{array}

$$ where

$$

\begin{array}{l} + = \text {l o n g p o s i t i o n} \\ - = \text {s h o r t p o s i t i o n} \\ \end{array}

$$

$x =$ number of options (face value of the bond divided by the initial index value $S$ )

Face values of the zero coupon bonds: Coupon payments plus the face value of the bond.

Assuming a principal of 100, we can replicate this instrument with:

- the purchase of $\sum_{t=1}^{4} zero\ coupon\ bond_{t}$ at face value 8.7, maturity $t$ and a zero-coupon bond with a face value of 108.7 and maturity of 5 years
- the sale of $\frac{100}{Eurostoxx50_{initial}}$ European put options with a strike price of Eurostoxx50initial and a period of 5 years

# 4.2.4.3 Valuation

The zero coupon bonds are valuated using the relevant spot interest rates. When valuating the put options, it is necessary to consider the index's calculation method. While the dividend yield is to be set at 0 for total return indexes, it has to be included in the valuation of price indexes. Under the Black-Scholes model, the valuation formula for the put option is as follows:

$$ p = X e ^ {- r T} N (- d _ {2}) - S e ^ {- q T} N (- d _ {1})
$$ where

$$

\begin{array}{l} d _ {1} = \frac {l n (S / X) + (r - q + \sigma^ {2} / 2) T}{\sigma \sqrt {T}} \\ d _ {2} = d _ {1} - \sigma \sqrt {T} \\ \end{array}

$$

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline p & premium of a European put option on a share with price S at t = 0. X is the exercise price, and the option expires in T years. \\ \hline r & risk-free interest rate (constant) over the period of the option \\ \hline q & dividend yield \\ \hline σ & volatility of the stock \\ \hline
N(d) & cumulative standard normal distribution at d \\ \hline
\end{tabular}
\end{document}
```

Formula 4.4: Premium of a European put option on an index

# 4.2.5 High-Yield Basket Bonds

# 4.2.5.1 General Description

High-yield basket bonds give the issuer the right to deliver a certain basket of shares or indexes at maturity instead of redeeming the bond at face value.[45] In this case, the performance of the bond depends on that of multiple underlying objects, which can be various indexes or stocks.

The investor does not profit from increases in the value of the basket. However, if the value drops, the investor has to bear the loss. The investor is compensated for assuming this risk with high coupon payments.

Example: $8\%$ High-yield basket bond 1998-2001

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & January 2,1998, to January 2,2001 (3 years) \\ \hline
Interest rate & 8\% p.a. \\ \hline
Coupon dates & January 2 each year, starting on January 2,1999 \\ \hline
Total principal & EUR 2,000,000 \\ \hline
Denomination & EUR 50,000 \\ \hline
Call/put provisions & None \\ \hline
Redemption & The issuer can choose between the following options on the redemption date:
• Redemption at face value
• Delivery of the stocks indicated in the table below.
In the case of what is called a “potential adjustment event” or in certain cases of mergers, the calculation agent will determine whether the event has a diluting or concentrating effect on the theoretical value of each stock.
If this value is found to have risen/fallen, the composition of the equity basket will be adjusted accordingly. Potential adjustment events include stock splits, reverse splits or reclassifications, dividend payments, or repurchases by the issuer. \\ \hline
\end{tabular}
\end{document}
```

45 While ordinary cash-or-share bonds (Sections 4.2.2 and 4.2.3) depend on one stock only, these instruments use a basket of stocks or indexes, which may well be listed in various currencies.

Provisions regarding "potential adjustment events" define the legal framework in case of takeovers, stock splits or the like. As dividend payments are also considered to be adjustment events,[46] the dividend yield for this product is zero.

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Company & Shares per EUR 50,000 in principal \\ \hline
SBC & 110 \\ \hline
UBS & 24 \\ \hline
CS Group & 190 \\ \hline
Bayrische VB & 650 \\ \hline
Allianz AG & 160 \\ \hline
ING & 850 \\ \hline
Deutsche Bank AG & 630 \\ \hline
\end{tabular}
\end{document}
```

Table 4.1: Sample equity basket

Please note that not all of the stocks in the basket are listed in euro.

# 4.2.5.2 Replication

The issuer will deliver the basket of equities if its value in the bond's issue currency is lower than the face value to be repaid. Therefore, for a face value of 100 the payoff profile for redemption at maturity can be expressed as follows:

$$

\begin{array}{l} \min \left(\sum_ {i = 1} ^ {n} x _ {i} \cdot E _ {i} (T) \cdot S _ {i} (T); 100\right) = \\ = \min \left(\sum_ {i = 1} ^ {n} x _ {i} \cdot S _ {i} ^ {*} (T); 100\right) \\ \end{array}

$$ where number of different stocks

$x_{i}$ number of shares of stock $i$

$E_{i}(T)$ exchange rate of the bond currency against the currency of stock $i$

$S_{i}(T)$ price in the stock's issue currency

$S_{i}^{*}(T)$ price of the stock in the bond's issue currency

We can also express this payoff profile as follows:

$$

\begin{array}{l} \min \left(\sum_ {i = 1} ^ {n} x _ {i} \cdot S _ {i} ^ {*} (T); 100\right) = \\ = 100 + \min \left(\sum_ {i = 1} ^ {n} x _ {i} \cdot S _ {i} ^ {*} (T) - 100; 0\right) = \\ = 100 - \max \left(100 - \sum_ {i = 1} ^ {n} x _ {i} \cdot S _ {i} ^ {*} (T); 0\right) \\ \end{array}

$$

Similar to cash-or-share bonds, high-yield basket bonds can be broken down into a series of zero-coupon bonds (representing the coupons and redemption amount) and a European put option on the equity basket.[47]

$$

\begin{array}{r l} & + \text {H i g h - y i e l d b a s k e t b o n d} = + \text {z e r o c o u p o n b o n d (1)} +… + \text {z e r o c o u p o n b o n d (n)} \\ & \qquad - \text {E u r o p e a n p u t o p t i o n} \end{array}

$$ where

$$

\begin{array}{l} + = \text {l o n g p o s i t i o n} \\ - = \text {s h o r t p o s i t i o n} \\ \end{array}

$$

Face values of the zero coupon bonds: Coupon payments plus the face value of the bond.

# 4.2.5.3 Valuation

The zero coupon bonds are valuated using the relevant spot interest rates.

Valuating the European put option is more complicated. First of all, the volatility structure of an equity basket is highly complex. The correlations between the individual stocks have to be considered in the bond's issue currency. Second, the assumption of geometric Brownian motion in the individual stocks' prices (Black-Scholes) means that changes in the value of the equity basket cannot actually be described by a geometric Brownian motion.

Two solutions are suggested in the relevant literature:[48]

(1) The stock prices can be modeled as correlated geometric Brownian motions and the value calculated using Monte Carlo simulation. Here it is necessary to note that the correlation structure in the bond's issuance currency is relevant. The problem with this solution is that it makes valuation relatively time-intensive.
(2) The option can be interpreted as one on a futures contract on the equity basket with the same expiration date as the option.[49] In addition, it is necessary to assume that the equity basket as such follows a geometric Brownian motion. Then Black's formula can be used for valuation. This formula is as follows:

$$ p = e ^ {- r T} [ X \cdot N (- d _ {2}) - F \cdot N (- d _ {1}) ]
$$ where

$$ d _ {1} = \frac {\ln (F / X) + \sigma^ {2} \cdot T / 2}{\sigma \sqrt {T}}
$$

$$ d _ {2} = d _ {1} - \sigma \sqrt {T}
$$

47 What is relevant here is the value of the basket in the bond's issue currency.

48 Cf. J. C. Hull, "Options, Futures, and Other Derivatives," 4th ed., Prentice Hall, 2000, p. 471.

In order to see that this interpretation is justified, it is necessary to assume that the futures price is the same as the stock price on the expiration date of the option (and of the futures contract).

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline p & premium of a European put option on a futures contract with a futures price of F at t = 0. X is the exercise price, and the option expires in T years. \\ \hline r & risk-free interest rate (constant) over the period of the option \\ \hline σ & volatility of the futures price \\ \hline
N(d) & cumulative standard normal distribution at d \\ \hline
\end{tabular}
\end{document}
```

In order to use the formula, it is necessary to define the parameters $F$ (futures price) and $\sigma$.

$$
\sigma^ {2} = \frac {1}{n} 1 n \left(\frac {M _ {2}}{M _ {1} ^ {2}}\right)
$$

$$
M _ {1} = \sum_ {i = 1} ^ {n} x _ {i} F _ {i}
$$

$$
M _ {2} = \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} w _ {i} w _ {j} F _ {i} F _ {j} e ^ {\rho_ {i j} \sigma_ {i} \sigma_ {j} T}
$$

$$
F = M _ {1}
$$

Formula 4.5: Black's formula for put options

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline n & number of different underlying products \\ \hline xi & number of underlying assets (i) in the basket \\ \hline
Fi & futures price of underlying asset i at t=T in the bond&#$x_{27}$;s issue currency \\ \hline ρij & correlation of the performance of underlying assets i and j in the bond&#$x_{27}$;s issue currency \\ \hline
σi & volatility of underlying asset i in the bond&#$x_{27}$;s issue currency \\ \hline
T & Maturity \\ \hline
\end{tabular}
\end{document}
```

# 4.2.6 High-Yield Lookback Bonds

# 4.2.6.1 General Description

In the case of high-yield lookback bonds, the issuer also has a choice of two redemption methods at maturity. In contrast to high-yield index bonds and cash-or-share bonds, however, the strike price of the option in this product variant is not fixed in advance, rather it is the lowest price of the stock (or index) $^{51}$ in the first phase of the product's term.

The issuer's redemption option is typically defined as follows:

$$
\min \left(\text {f a c e v a l u e}; \text {f a c e v a l u e} \cdot \frac {S (T)}{S ^ {*} (t)}\right)
$$ where

$S^{*}(t)\dots$ lowest price of the stock (or index) in the first phase of the term (up to time $t$ ), unknown on the issue date

$S(T)\dots$ value of the stock/index at maturity

Example: $8.7\%$ Lookback bond 1998-2003 with issuer's redemption option

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & March 20,1998, to March 21,2003 (5 years) \\ \hline
Interest rate & 8.7\% p.a. paid out on March 20 each year, starting on March 20,1999 \\ \hline
Day count convention & act/act \\ \hline
Issue price & 100\% \\ \hline
Denomination & EUR 1,000 \\ \hline
Redemption & min\left( face value; face value* \frac{S(T)}{S*(t)} \right) \\ \hline
S*(t) & lowest DAX value in the first 3 months \\ \hline
S(T) & DAX value on April 19,2003 \\ \hline
\end{tabular}
\end{document}
```

This product can be regarded as a lookback product in the first three months of its term. During that time, the strike price of the embedded option is not yet fixed.

# 4.2.6.2 Replication

In this specific case, the redemption can also be expressed as follows:

$$

\begin{array}{l} \min \left(f a c e v a l u e; f a c e v a l u e \cdot \frac {S (T)}{S ^ {*} (t)}\right) \\ = f a c e v a l u e + \frac {f a c e v a l u e}{S ^ {*} (t)} * \min (0; S (T) - S ^ {*} (t)) = \\ = f a c e v a l u e + \frac {f a c e v a l u e}{S ^ {*} (t)} * m a x (0; S ^ {*} (t) - S (T)) \\ \end{array}

$$

The last term describes the payoff of a short position in $(\text{face value} / S^{*}(t))$ European put options with a strike price of $S^{*}(t)$ on the maturity date $T$.

From time $t$ (the end of the lookback period) the strike price and the number of options are fixed. In other words, we are dealing with a conventional European put option. During the lookback period (up to time $t$ ), the strike price and the number of options are unknown. If at least the latter were known at the time of issue, then the issuer's option would be a "partial-time floating strike lookback" put option.

This means that replication is as follows until the end of the lookback period:

$$

\begin{array}{l} + \text {H i g h - y i e l d i n d e x b o n d} = + \text {z e r o c o u p o n b o n d (1)} + \dots + \text {z e r o c o u p o n b o n d (n)} \\ - \text {v a r i a n t o f a l o o k b a c k p u t o p t i o n} \\ \end{array}

$$ where

$$

\begin{array}{l} + = \text {l o n g p o s i t i o n} \\ - = \text {s h o r t p o s i t i o n} \\ \end{array}

$$

Face values of the zero coupon bonds: Coupon payments plus the face value of the bond.

From time $t$ onward, replication is analogous to that of cash-or-share bonds. They can be broken down into zero-coupon bonds (coupons and redemption amount) and the sale of conventional European put options.

$$

\begin{array}{l} + \text {H i g h - y i e l d i n d e x b o n d} = + \text {z e r o c o u p o n b o n d (1)} +… + \text {z e r o c o u p o n b o n d (n)} \\ \hskip 2 8.452756 p t - x \text {E u r o p e a n p u t o p t i o n s} \end{array}

$$ where

- = long position
- = short position

$x =$ number of options (face value divided by the minimum price during the lookback period)

Face values of the zero coupon bonds: Coupon payments plus the face value of the bond.

Assuming a principal of 100, we can replicate this instrument with:

- the purchase of $\sum_{t=1}^{4} \text{ zero coupon bond } t$ at a face value of 8.7, maturity at $t$ and a zero-coupon bond with a face value of 108.7 and maturity of 5 years
- the sale of a lookback put options with payoff $\frac{100}{S^{*}(t)} \cdot \max(0; S^{*}(t) - S(T))$ and a period of 5 years

# 4.2.6.3 Valuation

The zero coupon bonds are valuated using the relevant spot interest rates. There is no closed-form valuation formula for the lookback option. As the issuer's option can be interpreted as a conventional European put option once the lookback period has passed, Monte Carlo simulation is the simplest solution to the problem.

# 4.3 Capital-Guaranteed Products

# 4.3.1 Introduction

Capital-guaranteed products have three distinguishing characteristics:

- Redemption at a minimum guaranteed percentage of the face value (redemption at face value $(100\%)$ is frequently guaranteed)
No or low nominal interest rates
- Participation in the performance of an underlying asset $^{52}$

The products are typically constructed in such a way that the issue price is as close as possible to the bond's face value (with adjustment by means of the nominal interest rate). It is also common that no payments (including coupons) are made until the product's maturity date.

The investor's participation in the performance of the underlying asset can take an extremely wide variety of forms. In the simplest variant, the redemption amount is determined as the product of the face value and the percentage change in the underlying asset's price during the term of the product. If this value is lower than the guaranteed redemption amount, the instrument is redeemed at the guaranteed amount.

This can also be expressed as the following formula:

$$

\begin{array}{l} R = N \cdot \left(1 + \max \left(0; \frac {S _ {T} - S _ {0}}{S _ {0}}\right)\right) = \\ = N + \frac {N}{S _ {0}} \cdot \max (0; S _ {T} - S _ {0}) \\ \end{array}

$$ where

$R$ redemption amount

$N$ face value

$S_0$ original price of underlying asset

$S_{T}$ price of underlying asset at maturity

Therefore, these products have a number of European call options on the underlying asset embedded in them. The number of options is equal to the face value divided by the initial price (cf. the last term in the formula). The instrument can thus be interpreted as a portfolio of zero coupon bonds (redemption amount and coupons) and European call options.

The possible range of capital-guaranteed products comprises combinations of zero coupon bonds with all conceivable types of options.[53] This means that the number of different products is huge.

The most important characteristics for classifying these products are as follows:

(1) Is the bonus return (bonus, interest) proportionate to the performance of the underlying asset (like call and put options), or does it have a fixed value once a certain performance level is reached (like binary barrier options)?
(2) Are the strike prices or barriers known on the date of issue? Are they calculated as in Asian options or in forward start options?
(3) What are the characteristics of the underlying asset? Is it an individual stock, an index or a basket?
(4) Is the currency of the structured product different from that of the underlying asset?

In the sections that follow, a small but useful selection of products is presented. As there are no uniform names for these products, they are named after the options embedded in them.

# 4.3.2 European Call Options

# 4.3.2.1 General Description

As mentioned above, these are the simplest capital-guaranteed products.

They are distinguished by the fact that the redemption amount is made up of a guaranteed percentage of the instrument's face value (often $100\%$ ) and a bonus return which varies in proportion to the performance of an underlying asset between the issue and maturity dates. The bonus return is calculated as a per centage of the difference by which the underlying asset's price on the maturity date exceeds its price on the issue date. If the price falls, no bonus return is paid out.[54] Thus the investor profits from a rise in the price of the underlying asset. However, if the price drops, the investor does not have to bear the loss.

With capital-guaranteed products, it is often the case that no payments (including coupons) are made until the maturity date.

Example:ATX guarantee certificate 1998-2000

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & November 24,1998, to July 25,2000 (1 year, 8 months) \\ \hline
Redemption rate & Face value * (1 + b * ((ATX_T - ATX_0) / ATX_0)), at least a\% of face value \\ \hline
Participation & b = 50\% \\ \hline
Capital guarantee & a = 95\% \\ \hline
ATX_0 & value of the ATX on November 24,1998 \\ \hline
ATX_T & value of the ATX on July 25,2000 \\ \hline
Issue price & 100\% \\ \hline
Denomination & EUR 1,000 \\ \hline
\end{tabular}
\end{document}
```![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/7e0262c5-38a8-452c-a39e-267c7f9f56ef/d4ec12909df59089fed9870b245e5f0a1f5c9bf331654407123b2b9b90ebff25.jpg)
Figure 4.2: Payment diagram for capital-guaranteed bonds with call options embedded (face value 100, $95\%$ capital guarantee and participation rate $b$ )

# 4.3.2.2 Replication

Capital-guaranteed bonds with an embedded European call option can be broken down into a zero coupon bond and the option described in greater detail below.

In this specific case, the redemption can also be expressed as follows:

$$

\begin{array}{l} R = \max \left(N \cdot a; N \cdot \left(1 + b \cdot \frac {S _ {T} - S _ {0}}{S _ {0}}\right)\right) = \\ = N \cdot a + \frac {N}{S _ {0}} \cdot \max (0; (1 - a) \cdot S _ {0} + b \cdot (S _ {T} - S _ {0})) = \\ = N \cdot a + \frac {N \cdot b}{S _ {0}} \max \left(0; S _ {T} - S _ {0} \left(1 - \frac {1 - a}{b}\right)\right) \\ \end{array}

$$ where

$R$ redemption amount

$N$ face value

$S_0$ original price of underlying asset

$S_{T}$ price of underlying asset at maturity

$a$ guaranteed redemption amount

$b$ participation rate

This product can be replicated as follows:

$$

\begin{array}{l} + \text {C a p i t a l - g u a r a n t e e d b o n d s with} = + \text {z e r o c o u p o n b o n d s} \\ \text {e m b e d d e d E u r o p e a n c a l l o p t i o n} + \frac {\text {f a c e v a l u e} ^ {*} b}{S _ {0}} \text {E u r o p e a n c a l l o p t i o n s} \end{array}

$$ where

$$
- = \text {l o n g p o s i t i o n}
$$

Face values of the zero coupon bonds: Coupon payments and the guaranteed redemption amount of the bond. Please note that cash flows typically do not take place until the maturity date.

The strike price of the option is:

$$

S _ {0} \left(1 - \frac {1 - a}{b}\right)

$$

Assuming a principal of 1,000, we can replicate this instrument with:

- the purchase of a zero coupon bond which reaches maturity on July 25,2000 and has a face value of EUR 950
- the purchase of $1,000 * 0.5 / \mathrm{ATX}_{\mathrm{nov}24,98}$ European call options on the ATX with a strike price of $0.9 (= 1 - (1 - \mathrm{a}) / \mathrm{b}) * \mathrm{ATX}_{\mathrm{nov}24,98}$ and expiring on July 25,2000

In some issue prospectuses, the redemption payment pattern for capital-guaranteed bonds with embedded European call options differs from the description above:

$$

R = N \cdot \left(a + \frac {b}{100} \cdot \max \left(\frac {S _ {T} - S _ {0}}{S _ {0}} \cdot 100; 0\right)\right)

$$ where

$R$ redemption amount

$N$ face value

$S_0$ original price of underlying asset

$S_{T}$ price of underlying asset at maturity a guaranteed redemption amount

$b$ participation rate

Or, expressed differently:

$$

R = N \cdot a + \frac {N \cdot b}{S _ {0}} \cdot m a x (S _ {T} - S _ {0}; 0)

$$

In this case, the investor's participation in the performance of the underlying asset is also equivalent to a European call option, but with a strike price of $S_0$.

# 4.3.2.3 Valuation

The zero coupon bonds are valuated using the relevant spot interest rates. Please note that all payments typically take place at the end of the instrument's term. Under the Black-Scholes model, there is a closed formula for calculating the option premium.

Case 1: The currency of the bond and that of the underlying asset are the same:

$$ c = S e ^ {- q T} N \left(d _ {1}\right) - X e ^ {- r T} N \left(d _ {2}\right)
$$ where

$$ d _ {1} = \frac {\ln (S / X) + (r - q + \sigma^ {2} / 2) T}{\sigma \sqrt {T}}
$$

$$ d _ {2} = d _ {1} - \sigma \sqrt {T}
$$

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline c & premium of a European call option on one share with price S at t = 0. X is the exercise price, and the option expires in T years. \\ \hline r & risk-free interest rate (constant) over the period of the option \\ \hline q & dividend yield \\ \hline σ & volatility of the stock \\ \hline
N(d) & cumulative standard normal distribution at d \\ \hline
\end{tabular}
\end{document}
```

Formula 4.6: Premium of a European call option

This formula applies to individual stocks as well as indexes. If the underlying asset is a basket of equities, then please refer to the explanations in Section 4.2.5.3. The valuation formula is as follows:

$$ c = e ^ {- r T} \left[ F \cdot N \left(d _ {1}\right) - X \cdot N \left(d _ {2}\right) \right]
$$ where

$$ d _ {1} = \frac {\ln (F / X) + (\sigma^ {2} \cdot T / 2)}{\sigma \sqrt {T}}
$$

$$ d _ {2} = d _ {1} - \sigma \sqrt {T}
$$

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline c & premium of a European call option on one futures contract with a price of F at t = 0. X is the exercise price, and the option expires in T years. \\ \hline r & risk-free interest rate (constant) over the period of the option \\ \hline σ & volatility of the futures price \\ \hline
N(d) & cumulative standard normal distribution at d \\ \hline
\end{tabular}
\end{document}
```

Formula 4.7: Black's formula for call options

Case 2: The currencies are different

In this case, we can distinguish three types.

(1) The price of the underlying asset is translated at the current spot rate on the issue date as well as the maturity date. The redemption amount is then calculated as follows:

$$
R = N \cdot \left(a + \frac {b}{100} \cdot \max \left(\frac {E _ {T} S _ {T} - E _ {0} S _ {0}}{E _ {0} S _ {0}} \cdot 100; 0\right)\right)
$$ where

$R$ redemption amount

$N$ face value

$S_0$ original price of underlying asset

$S_{T}$ price of underlying asset at maturity

$a$ guaranteed redemption amount

$b$ participation rate

$E_0$ exchange rate on the issue date

$E_{T}$ exchange rate on the maturity date

Or, expressed differently:

$$

R = N \cdot a + \frac {N \cdot b}{E _ {0} S _ {0}} \cdot \max (E _ {T} S _ {T} - E _ {0} S _ {0}; 0)

$$

The last part of the equation describes a European call option. The option is exercised when the price of the underlying asset in the bond's issue currency $(E_{T}S_{T})$ is greater than the strike price $(E_{0}S_{0})$, which is already known at the time of issue. Such options are referred to as "foreign equity struck in domestic currency" options and can be valuated with a closed formula.[55]

$$ c = E _ {0} S _ {0} e ^ {- q T} N (d _ {1}) - X e ^ {- r T} N (d _ {2})
$$ where

$$ d _ {1} = \frac {l n (E _ {0} S _ {0} / X) + (r - q + \sigma_ {E S} ^ {2} / 2) T}{\sigma_ {E S} \sqrt {T}}
$$

$$ d _ {2} = d _ {1} - \sigma_ {E S} \sqrt {T}
$$

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline c & premium of a European call option (foreign equity struck in domestic currency) on one share with price S at t = 0. X is the exercise price, and the option expires in T years. \\ \hline r & risk-free interest rate (constant) over the period of the option \\ \hline q & dividend yield \\ \hline σES & volatility of the stock in the bond&#$x_{27}$;s issue currency \\ \hline
N(d) & cumulative standard normal distribution at d \\ \hline
\end{tabular}
\end{document}
```

Formula 4.8: Premium of a European "foreign equity struck in domestic currency" call option

The following applies to the volatility of the underlying asset in the bond's issue currency:

$$
\sigma_ {E S} = \sqrt {\sigma_ {E} ^ {2} + \sigma_ {S} ^ {2} + 2 \rho_ {E S} \sigma_ {E} \sigma_ {S}}
$$ where

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline σS & volatility of the underlying asset in its own currency \\ \hline
σE & volatility of the exchange rate \\ \hline ρES & correlation between the underlying asset and the exchange rate \\ \hline
\end{tabular}
\end{document}
```

In the special case in which the option is issued at the money, the valuation formula is simplified to the following:

$$ c = E _ {0} S _ {0} \left(e ^ {- q T} N \left(d _ {1}\right) - X e ^ {- r T} N \left(d _ {2}\right)\right)
$$ where

$$ d _ {1} = \frac {(r - q + \frac {\sigma_ {E S} ^ {2}}{2}) T}{\sigma_ {E S} \sqrt {T}}
$$

$$ d _ {2} = d _ {1} - \sigma_ {E S} \sqrt {T}
$$

(2) The change in price is measured in the original currency but then paid out in the bond's issue currency. The function for calculating the redemption amount then looks as if the currency of the bond and the underlying asset were the same:

$$
R = N \cdot a + \frac {N \cdot b}{S _ {0}} \cdot \max (S _ {T} - S _ {0}; 0)
$$

The difference from the payment function in which the currency of the bond and the underlying asset is the same is very subtle. The expression $\max(S_T S_0,0)$ usually describes a payoff in the underlying asset's currency. In this specific case, however, the payoff is in units of the bond's currency (at a 1:1 ratio to the underlying asset's currency). The options, which are referred to as "fixed exchange rate foreign equity" or quanto options, can also be valuated with a closed formula:[56]

$$ c = S _ {0} e ^ {(b - r) T} N \left(d _ {1}\right) - X e ^ {- r T} N \left(d _ {2}\right)
$$ where

$$ b = r _ {f} - q - \rho \sigma_ {E} \sigma_ {S}
$$

$$ d _ {1} = \frac {l n (S _ {0} / X) + (b + \sigma_ {S} ^ {2} / 2) T}{\sigma_ {S} \sqrt {T}}
$$

$$ d _ {2} = d _ {1} - \sigma_ {S} \sqrt {T}
$$

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline c & premium of a European quanto call option on one share with price S at t = 0. X is the exercise price, and the option expires in T years. The payoff is in the bond&#$x_{27}$;s currency at a ratio of 1:1. \\ \hline rf & risk-free interest rate in the underlying asset&#$x_{27}$;s currency (constant) over the period of the option \\ \hline r & risk-free interest rate in the bond&#$x_{27}$;s currency (constant) over the period of the option \\ \hline q & dividend yield \\ \hline ρ & correlation between the exchange rate and the underlying asset \\ \hline
σE & volatility of the exchange rate \\ \hline σS & volatility of the stock \\ \hline
N(d) & cumulative standard normal distribution at d \\ \hline
\end{tabular}
\end{document}
```

Formula 4.9: Premium of a quanto call option

(3) Finally, there are cases in which the change in price is measured in the original currency and then translated into the bond's currency at the spot rate.[57] In such cases, the function for calculating the redemption amount is as follows:

$$
R = N \cdot a + \frac {N \cdot b}{S _ {0}} \cdot E _ {T} m a x (S _ {T} - S _ {0}; 0)
$$

The option is valuated in the underlying asset's currency using the usual Black-Scholes formula. The value in the bond's currency is then determined by simply translating it at the current spot exchange rate.

# 4.3.3 European Put Options

# 4.3.3.1 General Description

Capital-guaranteed products with embedded European put options are distinguished by the fact that the redemption amount is made up of a guaranteed percentage of the instrument's face value (often $100\%$ ) and a bonus return which varies in proportion to the performance of an underlying asset between the issue and maturity dates. The bonus return is calculated as a percentage of the difference by which the underlying asset's price on the issue date exceeds its price on the maturity date. If the price rises, no bonus return is paid out.[58] The investor can thus profit from a drop in the price of the underlying asset without having to bear losses if the price rises.

With capital-guaranteed products, it is often the case that no payments (including coupons) are made until the maturity date.

Example:ATX guarantee certificate 1998-2000

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & November 24,1998, to July 25,2000 (1 year, 8 months) \\ \hline
Redemption rate & Face value * (1 + b * ((ATX0 - ATXT) / ATX0)), at least a\% of face value \\ \hline
Participation & b = 50\% \\ \hline
Capital guarantee & a = 95\% \\ \hline
ATX0 & value of the ATX on November 24,1998 \\ \hline
ATXT & value of the ATX on July 25,2000 \\ \hline
Issue price & 100\% \\ \hline
Denomination & EUR 1,000 \\ \hline
\end{tabular}
\end{document}
```![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/7e0262c5-38a8-452c-a39e-267c7f9f56ef/aa52f43560915f0cb1493eae9368eacca01f909945b2459b2001bcb0044a2572.jpg)
Figure 4.3: Payment diagram for capital-guaranteed bonds with put options embedded (face value 100, $95\%$ capital guarantee and participation rate $b$ )

# 4.3.3.2 Replication

A capital-guaranteed bond with an embedded European put option can be broken down into a zero coupon bond and the option described in greater detail below.

In this specific case, the redemption can also be expressed as follows:

$$
\begin{array}{l} R = \max \left(N \cdot a; N \cdot \left(1 + b \cdot \frac {S _ {0} - S _ {T}}{S _ {0}}\right)\right) = \\ = N \cdot a + \frac {N}{S _ {0}} \cdot \max (0; (1 - a) \cdot S _ {0} + b \cdot (S _ {0} - S _ {T})) = \\ = N \cdot a + \frac {N \cdot b}{S _ {0}} \max \left(0; \left(1 + \frac {1 - a}{b}\right) \cdot S _ {0} - S _ {T}\right) \\ \end{array}
$$ where

$R$ redemption amount

$N$ face value

$S_0$ original price of underlying asset

$S_{T}$ price of underlying asset at maturity

$a$ guaranteed redemption amount

$b$ participation rate

This product can be replicated then:

- Capital-guaranteed bonds with $= +$ zero coupon bonds embedded European put option $+ \frac{\text{face value}^* b}{S_0}$ European put options where

$$
- = \text {l o n g p o s i t i o n}
$$

Face values of the zero coupon bonds: Coupon payments and the guaranteed redemption amount of the bond. Please note that cash flows typically do not take place until the maturity date.

The strike price of the option is:

$$
S _ {0} \left(1 + \frac {1 - a}{b}\right)
$$

Assuming a principal of 1,000, we can replicate this instrument with:

- the purchase of a zero coupon bond which reaches maturity on July 25,2000, and has a face value of EUR 950
- the purchase of $1,000 * 0.5 / \mathrm{ATX}_{\mathrm{nov}24,98}$ European put options on the ATX with a strike price of $1.1 (= 1 - (1 - \mathrm{a}) / \mathrm{b}) * \mathrm{ATX}_{\mathrm{nov}24,98}$ and expiring on July 25,2000

In some issue prospectuses, the redemption payment pattern for capital-guaranteed bonds with embedded European put options differs from the description above:

$$
R = N \cdot \left(a + \frac {b}{100} \cdot \max \left(\frac {S _ {0} - S _ {T}}{S _ {0}} \cdot 100; 0\right)\right)
$$ where

$R$ redemption amount
$N$ face value
$S_0$ original price of underlying asset
$S_{T}$ price of underlying asset at maturity
$a$ guaranteed redemption amount
$b$ participation rate

Or, expressed differently:

$$
R = N \cdot a + \frac {N \cdot b}{S _ {0}} \cdot m a x (S _ {0} - S _ {T}; 0)
$$

In this case, the investor's participation in the performance of the underlying asset is also equivalent to a European put option with a strike price of $S_0$.

# 4.3.3.3 Valuation

The zero coupon bonds are valuated using the relevant spot interest rates. Please note that all payments typically take place at the end of the instrument's term. Under the Black-Scholes model, there is a closed formula for calculating the option premium.

Case 1: The currency of the bond and that of the underlying asset are the same:

$$ p = X e ^ {- r T} N (- d _ {2}) - S e ^ {- q T} N (- d _ {1})
$$ where

$$ d _ {1} = \frac {l n (S / X) + (r - q + \sigma^ {2} / 2) T}{\sigma \sqrt {T}}
$$

$$ d _ {2} = d _ {1} - \sigma \sqrt {T}
$$

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline p & premium of a European put option on one share with price S at t = 0. X is the exercise price, and the option expires in T years. \\ \hline r & risk-free interest rate (constant) over the period of the option \\ \hline q & dividend yield \\ \hline σ & volatility of the stock \\ \hline
N(d) & cumulative standard normal distribution at d \\ \hline
\end{tabular}
\end{document}
```

Formula 4.10: Premium of a European put option according to Black-Scholes

This formula applies to individual stocks as well as indexes. If the underlying asset is a basket of equities, then please refer to the explanations in Section 4.2.5.3. The valuation formula is as follows:

$$ p = e ^ {- r T} [ X \cdot N (- d _ {2}) - F \cdot N (- d _ {1}) ]
$$ where

$$ d _ {1} = \frac {\ln (F / X) + \sigma^ {2} \cdot T / 2}{\sigma \sqrt {T}}
$$

$$ d _ {2} = d _ {1} - \sigma \sqrt {T}
$$

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline p & premium of a European put option on a futures contract with a price of F at t = 0. X is the exercise price, and the option expires in T years. \\ \hline r & risk-free interest rate (constant) over the period of the option \\ \hline σ & volatility of the futures price \\ \hline
N(d) & cumulative standard normal distribution at d \\ \hline
\end{tabular}
\end{document}
```

Formula 4.11: Black's formula for put options

Case 2: The currencies are different

In this case, we can distinguish three types.

(1) The price of the underlying asset is translated at the current spot rate on the issue date as well as the maturity date. The redemption amount is then calculated as follows:

$$
R = N \cdot \left(a + \frac {b}{100} \cdot m a x \left(\frac {E _ {0} S _ {0} - E _ {T} S _ {T}}{E _ {0} S _ {0}} \cdot 100; 0\right)\right)
$$ where

$R$ redemption amount
$N$ face value
$S_0$ original price of underlying asset
$S_{T}$ price of underlying asset at maturity
$a$ guaranteed redemption amount
$b$ participation rate
$E_0$ exchange rate on the issue date
$E_{T}$ exchange rate on the maturity date

Or, expressed differently:

$$

R = N \cdot a + \frac {N \cdot b}{E _ {0} S _ {0}} \cdot m a x (E _ {0} S _ {0} - E _ {T} S _ {T}; 0)

$$

The last part of the equation describes a European put option. The option is exercised when the price of the underlying asset in the bond's issue currency $(E_{T}S_{T})$ is less than the strike price $(E_{0}S_{0})$, which is already known at the time of issue. Such options are referred to as "foreign equity struck in domestic currency" options and can be valuated with a closed formula.[59]

$$ p = X e ^ {- r T} N (- d _ {2}) - E _ {0} S _ {0} e ^ {- q T} N (- d _ {1})
$$ where

$$

\begin{array}{l} d _ {1} = \frac {\ln (E _ {0} S _ {0} / X) + (r - q + \sigma_ {E S} ^ {2} / 2) T}{\sigma_ {E S} \sqrt {T}} \\ d _ {2} = d _ {1} - \sigma_ {E S} \sqrt {T} \\ \end{array}

$$

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline p & premium of a European put option (foreign equity struck in domestic currency) on one share with price S at t = 0. X is the exercise price, and the option expires in T years. \\ \hline r & risk-free interest rate (constant) over the period of the option \\ \hline q & dividend yield \\ \hline σES & volatility of the stock in the bond&#$x_{27}$;s issue currency \\ \hline
N(d) & cumulative standard normal distribution at d \\ \hline
\end{tabular}
\end{document}
```

Formula 4.12: Premium of a European "foreign equity struck in domestic currency" put option

The following applies to the volatility of the underlying asset in the bond's issue currency:

$$

\sigma_ {E S} = \sqrt {\sigma_ {E} ^ {2} + \sigma_ {S} ^ {2} + 2 \rho_ {E S} \sigma_ {E} \sigma_ {S}}

$$ where

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline σS & volatility of the underlying asset in its own currency \\ \hline
σE & volatility of the exchange rate \\ \hline ρES & correlation between the underlying asset and the exchange rate \\ \hline
\end{tabular}
\end{document}
```

In the special case in which the option is issued at the money, the valuation formula is simplified to the following:

$$ p = E _ {0} S _ {0} \left(e ^ {- r T} N (- d _ {2}) - e ^ {- q T} N (- d _ {1})\right)
$$ where

$$ d _ {1} = \frac {(r - q + \sigma_ {E S} ^ {2} / 2) T}{\sigma_ {E S} \sqrt {T}}
$$

$$ d _ {2} = d _ {1} - \sigma_ {E S} \sqrt {T}
$$

(2) The change in price is measured in the original currency but then paid out in the bond's issue currency. The function for calculating the redemption amount then looks the same as when the currency of the bond and that of the underlying asset are the same:

$$
R = N \cdot a + \frac {N \cdot b}{S _ {0}} \cdot m a x (S _ {0} - S _ {T}; 0)
$$

The difference from the payment function in which the currency of the bond and the underlying asset is the same is very subtle. The expression $\max(S_0 S_T, 0)$ usually describes a payoff in the underlying asset's currency. In this specific case, however, the payoff is in units of the bond's currency (at a 1:1 ratio to the underlying asset's currency). Those options which are referred to as "fixed exchange rate foreign equity" or quanto options can also be valuated with a closed formula:[60]

$$ p = X e ^ {- r T} N (- d _ {2}) - S _ {0} e ^ {(b - r) T} N (- d _ {1})
$$ where

$$ b = r _ {f} - q - \rho \sigma_ {E} \sigma_ {S}
$$

$$ d _ {1} = \frac {l n (S _ {0} / X) + (b + \sigma_ {S} ^ {2} / 2) T}{\sigma_ {S} \sqrt {T}}
$$

$$ d _ {2} = d _ {1} - \sigma_ {S} \sqrt {T}
$$

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline p & premium of a European quanto put option on one share with price S at t = 0. X is the exercise price, and the option expires in T years. The payoff is in the bond&#$x_{27}$;s currency at a ratio of 1:1. \\ \hline rf & risk-free interest rate in the underlying asset&#$x_{27}$;s currency (constant) over the period of the option \\ \hline r & risk-free interest rate in the bond&#$x_{27}$;s currency (constant) over the period of the option \\ \hline q & dividend yield \\ \hline ρ & correlation between the exchange rate and the underlying asset \\ \hline
σE & volatility of the exchange rate \\ \hline σS & volatility of the stock \\ \hline
N(d) & cumulative standard normal distribution at d \\ \hline
\end{tabular}
\end{document}
```

Formula 4.13: Premium of a quanto put option

(3) Finally, there are cases in which the change in price is measured in the original currency and then translated into the bond's currency at the spot rate. In such cases, the function for calculating the redemption amount is as follows:

$$
R = N \cdot a + \frac {N \cdot b}{S _ {0}} \cdot E _ {T} m a x (S _ {0} - S _ {T}; 0)
$$

The option is valuated in the underlying asset's currency using the usual Black-Scholes formula. The value in the bond's currency is then determined by simply translating it at the current spot exchange rate.

# 4.3.4 Asian Options (Average Rate Options)

# 4.3.4.1 General Description

In cases where capital-guaranteed products have an Asian option embedded in them, the amount paid out at maturity depends on the average value of the underlying asset. The average is calculated using values or prices of the underlying asset taken at regular intervals.

Example: Equity-linked bond

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & November 30,1998, to November 29,2003 (5 years) \\ \hline
Redemption rate & face value (N)+bonus return
Bonus return = N × max(0; 60\%* ∅ATXT-ATX0/ATX0) \\ \hline
Participation & b=60\% \\ \hline
Capital guarantee & 100\% \\ \hline
ATX0 & closing value on November 30,1998 \\ \hline
∅ATXT & arithmetic mean of 20 quarterly prices, starting on November 30,1998, plus the price on November 17,2003 (21 observation dates). \\ \hline
Issue price & 100\% \\ \hline
Denomination & EUR 1,000 \\ \hline
\end{tabular}
\end{document}
```

The frequency with which the value of the underlying asset is sampled varies widely from product to product. The averages are usually calculated using daily, weekly or monthly values.[61]

Depending on whether an Asian call or put option is embedded, the redemption amount is calculated using one of the following formulas:

(1) Call option (see example):

$$
R = N + N \cdot \max \left(0; b \cdot \left(\frac {\varnothing S _ {T} - S _ {0}}{S _ {0}}\right)\right)
$$ or

$$

R = N + \frac {N \cdot b}{S _ {0}} \cdot \max (0; \varnothing S _ {T} - S _ {0})

$$

(2) Put option:

$$

R = N + N \cdot \max \left(0; b \cdot \left(\frac {S _ {0} - \varnothing S _ {T}}{S _ {0}}\right)\right)

$$ or

$$

R = N + \frac {N \cdot b}{S _ {0}} \cdot \max (0; S _ {0} - \varnothing S _ {T})

$$ where

$R$ redemption amount

$N$ face value

$S_0$ initial value of underlying asset

$\varnothing S_{T}$ average value at maturity

$b$ participation rate

Asian options involve less risk because the value of the underlying asset is sampled not at a specific point in time but over a longer period of time.![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/7e0262c5-38a8-452c-a39e-267c7f9f56ef/fe6009c8df44ebf5d7ac36ec968f83269ea58612b18869cee16772bf924cfc35.jpg)
Figure 4.4: Daily prices are more volatile than their average

# 4.3.4.2 Replication

Capital-guaranteed bonds with embedded Asian call options can be broken down into the following components:

$$

\begin{array}{l} + \text {C a p i t a l - g u a r a n t e e d b o n d s with} = + \text {z e r o c o u p o n b o n d s} \\ \text {e m b e d d e d A s i a n c a l l o p t i o n} \quad + \frac {\text {f a c e v a l u e} ^ {*} b}{S _ {0}} \text {A s i a n c a l l o p t i o n s} \\ \end{array}

$$ where

$$
- = \text {l o n g p o s i t i o n}
$$

Face values of the zero coupon bonds: Coupon payments and the guaranteed redemption amount of the bond. Please note that cash flows typically do not take place until the maturity date. The strike price of the option is $S_0$.

Capital-guaranteed bonds with embedded Asian put options can be broken down into the following components:

$$

\begin{array}{l} + \text {C a p i t a l - g u a r a n t e e d b o n d s with} = + \text {z e r o c o u p o n b o n d s} \\ \text {e m b e d d e d A s i a n p u t o p t i o n} \quad + \frac {\text {f a c e v a l u e} ^ {*} b}{S _ {0}} \text {A s i a n p u t o p t i o n s} \\ \end{array}

$$ where

$$
- = \text {l o n g p o s i t i o n}
$$

Face values of the zero coupon bonds: Coupon payments and the guaranteed redemption amount of the bond. Please note that cash flows typically do not take place until the maturity date. The strike price of the option is $S_0$.

Assuming a principal of 1,000, we can replicate this instrument with:

- the purchase of a zero coupon bond which reaches maturity on November 29,2003, and has a face value of EUR 1,000
- the purchase of $1,000 * 0.6 / \mathrm{ATX}_{\mathrm{nov} 30,98}$ Asian call options on the ATX with a strike price of $\mathrm{ATX}_{\mathrm{nov} 30,98}$ and expiring on November 29,2003

# 4.3.4.3 Valuation

The zero coupon bonds are valuated using the relevant spot interest rates. Asian options for which payments are based on a geometric average are relatively easy to value. A closed-form valuation formula exists.[62]

However, as the interest on bonds with Asian options generally depends on the arithmetic average value of the underlying asset, this simple formula cannot be used to determine the precise value. As the arithmetic average of a log-normally distributed value is itself not log-normally distributed, these options can only be valuated using numerical procedures or with the help of analytical approximation. Approximations have been developed by Turnbull and Wakeman (1991), Levy (1992) and Curran (1992), for example.[63] In Curran's model, the value of an Asian option can be approximated using the following formula:

$$ c \approx e ^ {- r T} \left[ \frac {1}{n} \sum_ {i = 1} ^ {n} e ^ {\mu_ {i} + \sigma_ {i} ^ {2} / 2} N \left(\frac {\mu - l n (\hat {X})}{\sigma_ {x}} + \frac {\sigma_ {x i}}{\sigma_ {x}}\right) - X N \left(\frac {\mu - l n (\hat {X})}{\sigma_ {x}}\right) \right]
$$

$$
\mu_ {i} = l n (S) + (r - q - \sigma^ {2} / 2) t _ {i}
$$

$$
\sigma_ {i} = \sqrt {\sigma^ {2} [ t _ {1} + (i - 1) \Delta t ]}
$$

$$
\sigma_ {x i} = \sigma^ {2} \{t _ {1} + \triangle t [ (i - 1) - i (i - 1) / (2 n) ] \}
$$

$$
\mu = l n (S) + (r - q - \sigma^ {2} / 2) [ t _ {1} + (n - 1) \triangle t / 2 ]
$$

$$
\sigma_ {x} = \sqrt {\sigma^ {2} [ t _ {1} + \triangle t (n - 1) (2 n - 1) / 6 n ]}
$$

$$
\hat {X} = 2 X - \frac {1}{n} \sum_ {i = 1} ^ {n} e x p \bigg \{\mu_ {i} + \frac {\sigma_ {x i} [ l n (X) - \mu ]}{\sigma_ {x} ^ {2}} + \frac {\sigma_ {i} ^ {2} - \sigma_ {x i} ^ {2} / \sigma_ {x} ^ {2}}{2} \bigg \}
$$

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline c & premium of an Asian call option \\ \hline
S & current value of underlying asset \\ \hline
X & strike price \\ \hline r & risk-free interest rate (constant) over the period of the option \\ \hline q & dividend yield \\ \hline
T & term in years \\ \hline
$t_{1}$ & first observation point \\ \hline t & time between observation points \\ \hline n & number of values sampled \\ \hline σ & volatility of the underlying asset \\ \hline
N(d) & cumulative standard normal distribution at d \\ \hline
\end{tabular}
\end{document}
```

Formula 4.14: Curran's approximation for Asian call options

# 4.3.5 Capped Call Options

# 4.3.5.1 General Description

In principal, the redemption amount for capital-guaranteed bonds with embedded call options can be infinitely high. The issues described in this section place a cap, expressed as a percentage of the instrument's face value, on the redemption amount. The bearer only participates in the relative performance of the underlying asset up to a certain maximum value.[64]

The issuer promises a redemption amount proportionate to the change in the underlying asset's price. In cases where the price of the underlying asset decreases, the issuer guarantees a minimum redemption amount. At the same time, the issuer limits the investor's participation in the instrument's performance by stipulating an upper limit (i.e., the cap).

Example: "Europa" guarantee certificate

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & December 15,1998, to December 13,2002 (4 years) \\ \hline
Redemption rate & The redemption rate (expressed as a percentage of the face value) is proportionate to the change in the underlying asset&#$x_{27}$;s price (ST/$S_{0}$); minimum 100\%, maximum 109\%; or, expressed as a formula:
T = face value*(100\% + min(9\%; max(0\%; (ST - $S_{0}$)/ST))) \\ \hline
SO & closing price of XY stock on December 15,1998 \\ \hline
ST & closing price of XY stock on December 13,2002 \\ \hline
Issue price & 100\% \\ \hline
Denomination & EUR 1,000 \\ \hline
\end{tabular}
\end{document}
```

A capped call is the combination of a long position in a call option $(c_{1})$ with a low strike price $(X_{1})$ and a short position in a call option $(c_{2})$ with a higher strike price $(X_{2})$. As soon as the value of the underlying asset reaches the upper limit $X_{2}$, the holder of option $c_{2}$ will exercise his/her right and claim any further increase in the value of the underlying asset.

If the price of the underlying asset increases between the issue date and the maturity date, then the investor will participate up to a rate of $9\%$.![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/7e0262c5-38a8-452c-a39e-267c7f9f56ef/9d291fb9623eaf1494d46de3b78607351fe3f64d453153bee206c63339cf1df7.jpg)

Figure 4.5: Guaranteed redemption at $100\%$, participation in positive changes in the underlying asset's price, maximum redemption rate $109\%$. (The payoff pattern in the illustration precisely reflects the redemption in the example.)

# 4.3.5.2 Replication

In order to replicate these products, it is necessary to express the formula for calculating the redemption amount in a different manner.

$$
\begin{array}{l} R = N \cdot \left(1 + \min \left(a; \max \left(\frac {S _ {T} - S _ {0}}{S _ {0}}; 0\right)\right)\right) = \\ = N + N \cdot \max \left(\frac {S _ {T} - S _ {0}}{S _ {0}}; 0\right) - N \cdot \max \left(\frac {S _ {T} - S _ {0}}{S _ {0}} - 0,0 9; 0\right) = \\ = N + \frac {N}{S _ {0}} m a x (S _ {T} - S _ {0}; 0) - \frac {N}{S _ {0}} m a x (S _ {T} - (1 + a) \cdot S _ {0}; 0) \\ \end{array}
$$

Where $a$ is the maximum value (9\% in the example) expressed as a decimal. The figure above clearly shows that capital-guaranteed products with an embedded European capped call option can be broken down into a portfolio consisting of a zero coupon bond, the purchase of a European call option with a strike price of $S_0$, and a short position in a European call option with a strike price of $(1 + a)^*S_0$.

This product can thus be replicated as follows:

- Capital-guaranteed bonds with = + zero coupon bonds embedded European capped $+\frac{facevalue^{*}b}{S_{0}}$ European call options 1 call option call option - face value\*b European call options 2 where

$$
\begin{array}{l} + = \text {l o n g p o s i t i o n} \\ - = \text {s h o r t p o s i t i o n} \\ \end{array}
$$

Face values of the zero coupon bonds: Coupon payments and the guaranteed redemption amount of the bond. Please note that cash flows typically do not take place until the maturity date.

The strike price of option 1 is $S_0$, while that of option 2 is $(1 + a)S_0$.

Assuming a principal of 1,000, we can replicate this instrument with:

- the purchase of a zero coupon bond which reaches maturity on December 13,2002, and has a face value of EUR 1,000
- the purchase of $1,000 / S_{0}$ European call options on the underlying asset with a strike price of $S_{0}$, expiring on December 13,2002
- the sale of $1,000 / S_{0}$ European call options on the underlying asset with a strike price of $1.09S_{0}$, expiring on December 13,2002

# 4.3.5.3 Valuation

As this product can be broken down into zero coupon bonds and European call options, their valuation is analogous to the explanations in Section 4.3.2.3.

# 4.3.6 Forward Start Call And Put Options

# 4.3.6.1 General Description

Whereas the strike price of conventional options is known from the beginning, that of forward start options is not determined until later in the option period. Naturally, this does not happen at random. Typically, a percentage of the underlying asset's price on a certain date during the option period is set as the strike price. The percentage and the date are defined at the time of issue.

It is entirely common practice to embed such options in capital-guaranteed products.

Example: "Europa" guarantee certificate

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & December 15,1998, to December 13,2002 (4 years) \\ \hline
Redemption rate & The redemption rate (expressed as a percentage of the face value) is proportionate to the change in the underlying asset&#$x_{27}$;s price (ST/$S_{0}$); minimum 100\%, maximum 109\%; or, expressed as a formula: R = face value*(100\% + min(9\%; max(0\%; (ST - St)/St))) \\ \hline
ST & closing price of XY stock on December 13,1998 \\ \hline
ST & closing price of XY stock on December 13,2002 \\ \hline
Issue price & 100\% \\ \hline
Denomination & EUR 1,000 \\ \hline
\end{tabular}
\end{document}
```

If the price of the underlying asset increases between December 13,1999, and the maturity date, then the investor will earn up to a maximum of $9\%$. This example differs from the one in Section 4.3.5 only in that the actual strike price is not defined until one year into the term of the instrument.

In practice, we see products with European forward start call and put options and with Asian forward start call options embedded.

# 4.3.6.2 Replication

In order to find a suitable way to replicate these products, it is first necessary to establish how the redemption rate depends on the underlying asset. Is a put or a call option embedded? Is it a European-style or Asian-style option? Once this step has been completed, it is only necessary to ensure that the forward start characteristic is depicted accurately.

This product can be replicated as follows:

$$
- \text {C a p i t a l - g u a r a n t e e d b o n d s with} = + \text {z e r o c o u p o n b o n d s}
$$

$$
\text {e m b e d d e d for w a r d s t a r t o p i o n s} \quad + \text {p o r t f l o i o o f for w a r d s t a r t o p i o n s}.
$$ where

$$
- = \text {l o n g p o s i t i o n}
$$

Once the strike price has been set, the options can be interpreted as conventional European (Asian) options. Replication can then be performed as in Sections 4.3.2,4.3.3 and 4.3.4.

The analysis of the product in our example is similar to that in Section 4.3.5. The redemption amount can be expressed as follows:

$$

\begin{array}{l} R = N \cdot \left(1 + \min \left(a; \max \left(\frac {S _ {T} - S _ {t}}{S _ {t}}; 0\right)\right)\right) = \\ = N + N \cdot \max \left(\frac {S _ {T} - S _ {t}}{S _ {t}}; 0\right) - N \cdot \max \left(\frac {S _ {T} - S _ {t}}{S _ {t}} - 0,0 9; 0\right) = \\ = N + \frac {N}{S _ {t}} m a x (S _ {T} - S _ {t}; 0) - \frac {N}{S _ {t}} m a x (S _ {T} - (1 + a) \cdot S _ {t}; 0) \\ \end{array}

$$

The redemption can be broken down into a zero coupon bond and two European forward start call options. The portfolio of forward start options is thus composed of the following:

$$

\begin{array}{l} + \text {P o r t f o l i o o f for w a r d} = + \frac {\text {f a c e v a l u e}}{S _ {t}} \text {E u r o p e a n for w a r d s t a r k c a l l o p t i o n s 1} \\ \text {s t a r k o p t i o n s} - \frac {\text {f a c e v a l u e}}{S _ {t}} \text {E u r o p e a n for w a r d s t a r k c a l l o p t i o n s 2} \end{array}

$$ where

$$

\begin{array}{l} + = \text {l o n g p o s i t i o n} \\ - = \text {s h o r t p o s i t i o n} \\ \end{array}

$$

The strike price of option 1 is $S_{t}$, while that of option 2 is $(1 + a)S_{t}$.

This manner of replication cannot be used as the number of options $(= \text{face value} / S_t)$ is unknown at the time of issue. Only after time $t$ it is possible to replicate the product with this portfolio. As we will see below, there is a very simple valuation formula for options of the following type:

$$

\frac {1}{S _ {t}} \max (0; S _ {T} - b \cdot S _ {t}) \mathrm {b z w.} \frac {1}{S _ {t}} \max (0; b \cdot S _ {t} - S _ {T})

$$

If we call these special options "relative" forward start options, the portfolio of forward start options can be broken down as follows:

$$

\begin{array}{l} + \text {P o r t f l o s i o o f for w a r d} = + \text {f a c e v a l u e * " r e l a t i v e" E u r p e a n for w a r d s t a r t} \\ \text {s t a r t o p o n t s} \qquad \qquad \qquad \qquad \text {c a l l o p o n t s 1} \\ \qquad \qquad - \text {f a c e v a l u e * " r e l a t i v e" E u r p e a n for w a r d s t a r t} \\ \qquad \qquad \qquad \text {c a l l o p o n t s 2} \end{array}

$$

Assuming a principal of 1,000, we can replicate this instrument with:

- the purchase of a zero coupon bond which reaches maturity on December 13,2002, and has a face value of EUR 1,000
- the purchase of 1,000 "relative" European forward start call options on the underlying asset with a strike price of $S_{t}$ (= the price on December 13,1998), expiring on December 13,2002
- the sale of 1,000 "relative" European forward start call options on the underlying asset with a strike price of $1.09 S_{t}$, expiring on December 13,2002

# 4.3.6.3 Valuation

The zero coupon bonds are valuated using the relevant spot interest rates. There is no closed-form valuation formula for Asian forward start options. Therefore, they have to be valuated using numerical procedures.

For "relative" European forward start options, however, there is a neat closed-form valuation formula. In the first step, let us look at the value of a conventional European option at time $t$.

$$ c \left(S _ {t}, t, X, T\right) = S _ {t} e ^ {- q (T - t)} N \left(d _ {1}\right) - X e ^ {- r (T - t)} N \left(d _ {2}\right)
$$

$$ p (S _ {t}, t, X, T) = X e ^ {- r (T - t)} N (d _ {2}) - S _ {t} e ^ {- q (T - t)} N (d _ {1})
$$ where

$$ d _ {1} = \frac {l n (S / X) + (r - q + \sigma^ {2} / 2) (T - t)}{\sigma \sqrt {T - t}}
$$

$$ d _ {2} = d _ {1} - \sigma \sqrt {T - t}
$$

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline c(St, t, X, T) or p(St, t, X, T) & premium of a European call (put) option on one share with price St at t. X is the exercise price, and the option expires at time T. \\ \hline r & risk-free interest rate (constant) over the period of the option \\ \hline q & dividend yield \\ \hline σ & volatility of the stock \\ \hline
N(d) & cumulative standard normal distribution at d \\ \hline
\end{tabular}
\end{document}
```

For this "relative" European forward start option, this means that its value at the time the strike price is set $(= t)$ is as follows:

$$ r f s c \left(S _ {t}, t, \alpha, T\right) = e ^ {- q (T - t)} N \left(d _ {1}\right) - \alpha e ^ {- r (T - t)} N \left(d _ {2}\right)
$$

$$ r f s p \left(S _ {t}, t, \alpha, T\right) = \alpha e ^ {- r (T - t)} N (- d _ {2}) - e ^ {- q (T - t)} N (- d _ {1})
$$ where

$$ d _ {1} = \frac {\ln (1 / \alpha) + (r - q + \sigma^ {2} / 2) (T - t)}{\sigma \sqrt {T - t}}
$$

$$ d _ {2} = d _ {1} - \sigma \sqrt {T - t}
$$

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline rfsc(St, t,α, T) or rftpSt, t,α, T) & premium of a “relative” European forward start call (put) option at time t. αSt is the exercise price, and the option expires at time T. \\ \hline r & risk-free interest rate (constant) over the period of the option \\ \hline q & dividend yield \\ \hline σ & volatility of the stock \\ \hline
N(d) & cumulative standard normal distribution at d \\ \hline
\end{tabular}
\end{document}
```

The formulas make it clear that the value of the "relative" forward start options at time $t$ is not dependent on the price of the underlying asset.[65] The value at time 0 can thus be calculated easily by discounting it with the spot interest rate.

This means the following:

$$ r f s c (S _ {t}, 0, \alpha, T) = e ^ {- r t} \left(e ^ {- q (T - t)} N (d _ {1}) - \alpha e ^ {- r (T - t)} N (d _ {2})\right)
$$

$$ r f s p \left(S _ {t}, 0, \alpha, T\right) = e ^ {- r t} \left(\alpha e ^ {- r (T - t)} N \left(- d _ {2}\right) - e ^ {- q (T - t)} N \left(- d _ {1}\right)\right)
$$ where

$$ d _ {1} = \frac {\ln (1 / \alpha) + (r - q + \sigma^ {2} / 2) (T - t)}{\sigma \sqrt {T - t}}
$$

$$ d _ {2} = d _ {1} - \sigma \sqrt {T - t}
$$

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline rfsc(St,0,α, T) or rftp(St,0,α, T) & premium of a “relative” European forward start call (put) option at time t. αSt is the exercise price, and the option expires at time T. \\ \hline r & risk-free interest rate (constant) over the period of the option \\ \hline q & dividend yield \\ \hline σ & volatility of the stock \\ \hline
N(d) & cumulative standard normal distribution at d \\ \hline
\end{tabular}
\end{document}
```

Formula 4.15: Premium of "relative" European forward start options

From time $t$ (= fixing of the strike price) onward, the options can be regarded as conventional European (Asian) options. Valuation is then analogous to that described in Sections 4.3.2,4.3.3 and 4.3.4.

# 4.3.7 Cliquet / Ratchet Options (Series Of Consecutive Calls / Puts)

# 4.3.7.1 General Description

In many cases, the redemption amount paid out on capital-guaranteed products does not depend exclusively on the performance of the underlying asset between the dates of issue and maturity. It is not uncommon to lock in gains made on an option at specific dates and to reset the strike price to the underlying asset's price level as of the resetting date. At maturity, the lock-in amounts are added to the guaranteed redemption amount and paid out to the investor.[66]

When looking at these products, it is necessary to bear three things in mind:

(1) How are the lock-in amounts calculated?

(2) Are the strike prices known on the date of issue, or are they fixed at a later point during the term of the instrument?

(3) When do the cash flows take place? What is to be done in cases where the resetting date is not the same as the payment date?

# Ad (1)

The issue prospectuses examined for the purposes of this handbook described lock-in amounts which can be replicated with European call and put options, Asian call options, and binary barrier options. Calculating the lock-in amounts can therefore involve very heterogeneous procedures.

# Ad (2)

Both variants occur and naturally have to be depicted accurately. For more information, please refer to the examples.

# Ad (3)

As mentioned above, the lock-in amounts are typically paid out at maturity. When this is the case, each amount has to be discounted at the interest rate for the period between the calculation and payment of the lock-in amount. For the purpose of illustration, two examples of capital-guaranteed products with embedded ratchet options are given here.

Example 1: Series of European call options

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & December 15,1999, to December 13,2002 (3 years) \\ \hline
Redemption rate
(as \% of face value) & R = 100 + 3/4 · [∑i=13max(0; Si - $S_{0}$/$S_{0}$)] \\ \hline
$S_{0}$ & closing value of the ATX on December 13,1999 \\ \hline
Si & $S_{1}$: closing value of the ATX on December 13,2000
$S_{2}$: closing value of the ATX on December 13,2001
$S_{3}$: closing value of the ATX on December 13,2002 \\ \hline
Issue price & 100\% \\ \hline
Denomination & EUR 1,000 \\ \hline
\end{tabular}
\end{document}
```

An analysis on the basis of the points mentioned above yields the following: ad (1)

The lock-in amounts are calculated independently of one another at yearly intervals. The formula for each individual amount is as follows:

$$
\frac {3}{4} \max \left(0; \frac {S _ {i} - S _ {0}}{S _ {0}}\right) = \frac {3}{4 S _ {0}} \max (0; S _ {i} - S _ {0})
$$

This is an embedded European call option.

ad (2)

The strike prices are known at the time of issue.

ad (3)

The lock-in amounts are paid out at maturity, not when the options expire. The cash flow indicated under No. 1 thus has to be discounted using the applicable spot interest rate. Therefore, the correct value of the payoff at $t = i$ is:

$$ e ^ {- r _ {i} (4 - i)} \frac {3}{4 S _ {0}} \max (0; S _ {i} - S _ {0})
$$ where $r_i$ is the spot interest rate at time $i$ for an investment from time $i$ to time 4. If we assume that the (stochastic) development of spot interest rates is independent of the underlying asset's performance, then the following applies to the value of the cash flow at time $t$:

$$ v a l u e (t) = e ^ {- f [ t; i, 4 ] \cdot (4 - i)} \cdot \frac {3}{4 S _ {0}} c (S _ {t}, t, S _ {0}, i)
$$ where $f(t; i, 4)$ is the forward interest rate at time $t$ for the period from $i$ to 4, and $c(S_t, t, S_0, i)$ is the value at time $t$ of a European call option with a strike price of $S_0$ and expiration at time $i$.

Example 2: Series of European forward start call options

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & December 15,1999, to December 13,2002 (3 years) \\ \hline
Redemption rate
(as \% of face value) & R = 100 + 3/4 · [∑i=13max(0; Si - Si-1/Si-1)] \\ \hline
Si & $S_{0}$: closing value of the ATX on December 13,1999
$S_{1}$: closing value of the ATX on December 13,2000
$S_{2}$: closing value of the ATX on December 13,2001
$S_{3}$: closing value of the ATX on December 13,2002 \\ \hline
Issue price & 100\% \\ \hline
Denomination & EUR 1,000 \\ \hline
\end{tabular}
\end{document}
```

An analysis of this product yields a similar result to that of the first example. The only difference is that this example involves a forward start option.[67]

# 4.3.7.2 Replication

The replication of these products is derived directly from the analysis above.

Case 1: Ratchet call or put options for which the strike prices are known and the lock-in amounts are paid out immediately after calculation (regular ratchet options)

This product can be replicated as follows:

```txt
- Capital-guaranteed bonds with regular ratchet $= +$ zero coupon bonds call or put options and known strike prices $+\sum \frac{b}{S_0}$ call or put options
``` where

$$
- = \text {l o n g p o s i t i o n}
$$

$$ b = \text {P a r t i c i p a t i o n}
$$

The strike price of the options is $S_0$.

Case 2: Ratchet call or put options whose strike prices are known and the lock-in amounts are paid out when the bond reaches maturity (compound ratchet options)

This product can be replicated as follows:

```txt
- Capital-guaranteed bonds with $= +$ zero coupon bonds compound ratchet call or put $+\sum b\cdot \frac{e^{-f(t;i, T)(T - i)}}{S_0}$ call or put options
``` where

$$
\begin{array}{l} + \quad = \text {l o n g p o s i t i o n} \\ b \quad = \text {P a r t i c i p a t i o n} \\ \end{array}
$$

$f(t;i, T) =$ forward interest rate at time $t$ $(= \mathrm{time}$ of valuation and replication) for investments between time $i$, the option's expiration $(= \mathrm{cal}$ culation of lock-in amount), and time $T$, the maturity of the bond

The strike price of the option is $S_0$. Please note that the number of options required for replication depends on the forward interest rate and is therefore not constant over the term of the bond.

Case 3: Ratchet forward start call or put options The lock-in amounts are paid out immediately after calculation (regular ratchet options).

This product can be replicated as follows:

- Capital-guaranteed bonds with $= +$ zero coupon bonds regular ratchet forward start call $+\sum b$ relative forward start call or put options or put options where
- = long position

$b =$ Participation rate

The strike price of the relative options $(i)$ is $S_{i - 1}$.

Case 4: Ratchet forward start call or put options The lock-in amounts are paid out when the bond reaches maturity (compound ratchet options).

This product can be replicated as follows:

- Capital-guaranteed bonds with $= +$ zero coupon bonds compound ratchet call or put $+\sum x_{i}$ relative call or put options options and known strike prices where
- = long position

$b$ = participation rate

$x_{i}$ $= \mathrm{number}$ of options $(i)$ $(x_{i} = b\cdot e^{-f(t;i;T)(T - i)})$

$f(t;i, T) =$ Forward interest rate at time $t$ $(= \mathrm{time}$ of valuation and replication) for investments between time $i$, the option's expiration $(= \mathrm{calculation}$ of lock-in amount), and time $T$, the maturity of the bond.

The strike price of the relative option $(i)$ is $S_{i-1}$. Please note that the number of options required for replication depends on the forward interest rate and is therefore not constant over the term of the bond.

Assuming a principal of 1,000, we can replicate the instrument from Example 1 on the issue date $(t = 0)$ with:

- the purchase of a zero coupon bond which reaches maturity on December 13,2002, and has a face value of EUR 1,000
- the purchase of $1000 \cdot \frac{3}{4} \cdot e^{-f(0;1,3)2} \cdot \frac{1}{S_0}$ European call options on the underlying asset with a strike price of $S_0$, expiring on December 13,2000
- the purchase of $1000 \cdot \frac{3}{4} \cdot e^{-f(0;2,3)} \cdot \frac{1}{S_0}$ European call options on the underlying asset with a strike price of $S_{1}$, expiring on December 13,2001
- the purchase of $1000 \cdot \frac{3}{4} \cdot \frac{1}{S_0}$ European call options on the underlying asset with a strike price of $S_2$, expiring on December 13,2002

Assuming a principal of 1,000, we can replicate the instrument from Example 2 on the issue date $(t = 0)$ with:

- the purchase of a zero coupon bond which reaches maturity on December 13,2002, and has a face value of EUR 1,000
- the purchase of $1000 \cdot \frac{3}{4} \cdot e^{-f(0;1,3)^2} \cdot \frac{1}{S_0}$ European call options on the underlying asset with a strike price of $S_0$, expiring on December 13,2000
- the purchase of $1000 \cdot \frac{3}{4} \cdot e^{-f(0;2,3)}$ "relative" European forward start call options on the underlying asset with a strike price of $S_{1}$, expiring on December 13,2001
- the purchase of $1000 \cdot \frac{3}{4}$ "relative" European forward start call options on the underlying asset with a strike price of $S_{2}$, expiring on December 13,2002

# 4.3.7.3 Valuation

The zero coupon bonds are valuated using the relevant spot interest rates; the valuation of the options is analogous to that described in Sections 4.3.2,4.3.3 and 4.3.4.[68] In cases where the lock-in amounts are not paid until the bond reaches maturity (compound ratchet options), the replication examples above include discounting at the appropriate forward interest rate in the number of options.

# 4.3.8 Binary Barrier Options (Cash-Or-Nothing)

# 4.3.8.1 General Description

The bonus returns for capital-guaranteed products with embedded binary barrier options (cash-or-nothing) are calculated as follows: If the underlying asset's price is above (below) a specified barrier at any time during the term of the product, a fixed percentage of the face value is credited to the investor.[69] The performance of the underlying asset is reflected in the bond not by a continuous curve but by a sudden jump in the redemption amount. The bonus returns on these products are also typically paid out at maturity. As discussed earlier, these products can also involve predetermined strike prices or forward start options.

For the purpose of illustration, three examples of capital-guaranteed products with embedded binary barrier options are given here.

Example 1: Down-and-out cash-or-nothing with known barrier

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & December 15,1999, to December 13,2002 (3 years) \\ \hline
Redemption rate & 100\% \\ \hline
Interest rate & DAX in observation year i never falls below 90\% of its level at t = 0: 10\%
DAX in observation year i never falls below 85\% of its level at t = 0: 7\%
DAX in observation year i never falls below 75\% of its level at t = 0: 4\% otherwise: 0\% observation year 1: December 15,1999, to December 13,2000 observation year 2: December 14,2000, to December 13,2001 observation year 3: December 14,2001, to December 13,2002 t = 0: December 13,1999 \\ \hline
Coupon date & December 13,2002 \\ \hline
$S_{0}$ & closing value of the DAX at t = 0 \\ \hline
Si & $S_{1}$: closing value of the DAX on December 13,2000
$S_{2}$: closing value of the DAX on December 13,2001
$S_{3}$: closing value of the DAX on December 13,2002 \\ \hline
Issue price & 100\% \\ \hline
Denomination & EUR 1,000 \\ \hline
\end{tabular}
\end{document}
```

Each year the performance of the underlying asset is evaluated in relation to its initial value on December 13,1999. If the value falls below a certain level, the bonus return (interest) is reduced by a fixed percentage of the face value. All bonus returns are paid out when the bond reaches maturity.![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/7e0262c5-38a8-452c-a39e-267c7f9f56ef/51997cc533eeedfb36e56fd8d4cc9ca93d49d1e42ecacb0d5f4a5dc43f80912a.jpg)

Figure 4.6: Possible price development over an observation year: The price falls to $87\%$ of the original value, thus the interest paid on the bond is $7\%$.![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/7e0262c5-38a8-452c-a39e-267c7f9f56ef/ab7d16e6386fd2657a5c2eec756cee1f7b8f7c7f1767a92b674b903b52c1986c.jpg)

Figure 4.7: The bonus return (interest) depends on the underlying asset's lowest price in each observation period relative to the initial value.

Example 2: Down-and-out cash-or-nothing forward start

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & December 15,1999, to December 13,2002 (3 years) \\ \hline
Redemption rate & 100\% \\ \hline
Interest rate & DAX in observation year i never falls below 90\% of its level at t = i - 1: 10\%
DAX in observation year i never falls below 85\% of its level at t = i - 1: 7\%
DAX in observation year i never falls below 75\% of its level at t = i - 1: 4\% otherwise: 0\% observation year 1: December 15,1999, to December 13,2000 observation year 2: December 14,2000, to December 13,2001 observation year 3: December 14,2001, to December 13,2002 t = 0: December 13,1999 \\ \hline
Coupon date & December 13,2002 \\ \hline
$S_{0}$ & closing value of the DAX at t = 0 \\ \hline
Si & $S_{1}$: closing value of the DAX on December 13,2000
$S_{2}$: closing value of the DAX on December 13,2001
$S_{3}$: closing value of the DAX on December 13,2002 \\ \hline
Issue price & 100\% \\ \hline
Denomination & EUR 1,000 \\ \hline
\end{tabular}
\end{document}
```

The only difference from the first example is that the underlying asset's performance is measured in relation to the initial value of each observation year.

Example 3: Down-and-in cash-or-nothing with known barrier

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & December 15,1999, to December 13,2002 (3 years) \\ \hline
Redemption rate & 100\% \\ \hline
Interest rate & DAX in observation year i never falls below 90\% of its level at t = 0: 6\%
DAX in observation year i never falls below 85\% of its level at t = 0: 8\%
DAX in observation year i never falls below 75\% of its level at t = 0: 11\% otherwise: 1.5\% observation year 1: December 15,1999, to December 13,2000 observation year 2: December 14,2000, to December 13,2001 observation year 3: December 14,2001, to December 13,2002 t = 0: December 13,1999 \\ \hline
Coupon date & December 13,2002 \\ \hline
$S_{0}$ & closing value of the DAX at t = 0 \\ \hline
Si & $S_{1}$: closing value of the DAX on December 13,2000
$S_{2}$: closing value of the DAX on December 13,2001
$S_{3}$: closing value of the DAX on December 13,2002 \\ \hline
Issue price & 100\% \\ \hline
Denomination & EUR 1,000 \\ \hline
\end{tabular}
\end{document}
```

In this example, the investor profits from the poor performance of the underlying asset. The further its price drops, the higher the bonus return is.

Example 4: Digital range forward start

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & December 15,1999, to December 13,2002 (3 years) \\ \hline
Redemption rate & 100\% \\ \hline
Interest rate & 3\% fixed additional bonus
DAX in observation year i remains between 90\% ans 120\% of its level at t = i - 1: 7.5\% observation year 1: December 15,1999, to December 13,2000 observation year 2: December 14,2000, to December 13,2001 observation year 3: December 14,2001, to December 13,2002 t = 0: December 13,1999 \\ \hline
Coupon date & December 13,2002 \\ \hline
$S_{0}$ & closing value of the DAX at t = 0 \\ \hline
Si & $S_{1}$: closing value of the DAX on December 13,2000
$S_{2}$: closing value of the DAX on December 13,2001
$S_{3}$: closing value of the DAX on December 13,2002 \\ \hline
Issue price & 100\% \\ \hline
Denomination & EUR 1,000 \\ \hline
\end{tabular}
\end{document}
```

In the case of digital ranges, the investor profits when the price of the underlying asset shows little volatility. In this specific example, the price has to remain between $90\%$ and $120\%$ of the initial value.

# 4.3.8.2 Replication

Because the bonus return calculations for each observation period are independent of one another, it is sufficient to examine one such calculation. As soon as a bonus return has been fixed, it can be interpreted as a zero coupon bond.

No useful general replication method can be given for capital-guaranteed bonds with embedded binary barrier options, thus the replication is explained on the basis of examples.

Example 1: Down-and-out option with known barrier

The bonus return is calculated as follows:

DAX in observation year i never falls below $90\%$ of its level at $t = 0$: $10\%$

DAX in observation year i never falls below $85\%$ of its level at $t = 0$: $7\%$

DAX in observation year i never falls below $75\%$ of its level at $t = 0$: $4\%$

Otherwise: $0\%$

This product can also be depicted as follows:

$$
\begin{array}{l} + \text {bonus return} = + 3 \% \text {if MinDAX(i)} > 0.9 * \mathrm {DAX} _ {0} \\ + 3 \% \text {if} \operatorname {MinDAX} (\mathrm {i}) > 0.85 * \mathrm {DAX} _ {0} \\ + 4 \% \text {if} \operatorname {MinDAX} (\mathrm {i}) > 0.75 * \mathrm {DAX} _ {0} \\ \end{array}
$$

# Where

MinDAX(i) lowest value of the DAX in observation period $i$

These three products are variants of down-and-out cash-or-nothing options.[70]

However, they are different two respects:

(1) Bonus returns are paid out not upon expiration of the option but upon maturity of the bond. This is taken into account by discounting the value of the option using the relevant forward interest rates.[71]

(2) The lowest price between the issue date of the bond (the option) and the expiration date of the option (= overall term) is not relevant. The bonus return is calculated only on the basis of the lowest price in each observation period. In particular, it is not important whether the barrier is breached or not. What matters is whether the lowest price falls below the reference value.[72] Options of this type are referred to as partial binary barrier options.[73]

70 The payoff could also be interpreted as a short position in down-and-in options.

71 Cf. the explanations in Section 3.7.2.

For example, if the price is already below the reference value at the beginning of an observation period, it follows that the option is worthless. Of course, other variants in which the option is worthless only if the price breaches the barrier during the observation period are also conceivable.

73 Cf. L. Clelow and C. Strickland, "Exotic Options," 1997, International Thompson Business Press, p. 128ff.

The bonus return calculations for this product can therefore not be broken down into conventional down-and-out cash-or-nothing options.

For the purpose of replication, this means that the structured product has to be broken down into a portfolio of zero coupon bonds and partial binary barrier options with delayed payoff.

$$
\begin{array}{l} \text {C a p i t a l g u a r e a n e d b o n d s with d o w n - = + z e r o c o u p o n b o n d s} \\ \text {and - o u t c a s h - o r - n o t h i n g o p t i o n s} \quad + \text {p o r t f o l i o o f p a r t i a l b i n a r y b a r r i e r} \\ \quad \text {o p t i o n s} \end{array}
$$

Assuming a principal of 1,000, we can replicate the instrument from Example 1 on the issue date $(t = 0)$ with:

- the purchase of a zero coupon bond which reaches maturity on December 13,2002, and has a face value of EUR 1,000
- the purchase of 30 down-and-out cash-or-nothing options on the underlying asset with: barrier: ${0.9} * {\mathrm{{DAX}}}_{0}$; bonus return: EUR 1; term: December 15,1999, to December 13,2000;payoff on December 13,2002
- the purchase of 30 down-and-out cash-or-nothing options on the underlying asset with: barrier: $0.85 * \mathrm{DAX}_0$; bonus return: EUR 1; term: December 15,1999, to December 13,2000; payoff on December 13,2002
- the purchase of 40 down-and-out cash-or-nothing options on the underlying asset with: barrier: $0.75 * \mathrm{DAX}_0$; bonus return: EUR 1; term: December 15,1999, to December 13,2000; payoff on December 13,2002
- the purchase of 30 partial down-and-out cash-or-nothing options on the underlying asset with: barrier: $0.9 * \mathrm{DAX}_0$; bonus return: EUR 1; term: December 15,1999, to December 13,2001; observation period: December 14,2000, to December 13,2001; payoff on December 13,2002
- the purchase of 30 partial down-and-out cash-or-nothing options on the underlying asset with: barrier: $0.85 * \mathrm{DAX}_0$; bonus return: EUR 1; term: December 15,1999, to December 13,2001; observation period: December 14,2000, to December 13,2001; payoff on December 13,2002
- the purchase of 40 partial down-and-out cash-or-nothing options on the underlying asset with: barrier: $0.75 * \mathrm{DAX}_0$; bonus return: EUR 1; term: December 15,1999, to December 13,2001; observation period: December 14,2000, to December 13,2001; payoff on December 13,2002
- the purchase of 30 partial down-and-out cash-or-nothing options on the underlying asset with: barrier: $0.9 * \mathrm{DAX}_0$; bonus return: EUR 1; term: December 15,1999, to December 13,2002; observation period from December 14,2001, to December 13,2002
- the purchase of 30 partial down-and-out cash-or-nothing options on the underlying asset with: barrier: $0.85 * \mathrm{DAX}_0$; bonus return: EUR 1; term: December 15,1999, to December 13,2002; observation period from December 14,2001, to December 13,2002
- the purchase of 40 partial down-and-out cash-or-nothing options on the underlying asset with: barrier: $0.75 * \mathrm{DAX}_0$; bonus return: EUR 1; term: December 15,1999, to December 13,2002; observation period from December 14,2001, to December 13,2002

# Example 2: Down-And-Out Forward Start Option

As above, the bonus return calculation in this example can also be broken down into down-and-out cash-or-nothing options. The barrier is not defined until the beginning of each observation period. As we will see below, this yields a very simple valuation formula. This product can thus be replicated as follows:

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Capital guaranteed bonds with = + zero coupon bonds & \\ \hline down-and-out cash-or-nothing & + portfolio of down-and-out cash-or-nothing \\ \hline forward start options & forward start options \\ \hline
\end{tabular}
\end{document}
```

Assuming a principal of 1,000, we can replicate the instrument from Example 2 on the issue date $(t = 0)$ with:

- the purchase of a zero coupon bond which reaches maturity on December 13,2002, and has a face value of EUR 1,000
- the purchase of 30 down-and-out cash-or-nothing options on the underlying asset with: barrier: ${0.9} * {\mathrm{{DAX}}}_{0}$; bonus return: EUR 1; term: December 15,1999, to December 13,2000;payoff on December 13,2002
- the purchase of 30 down-and-out cash-or-nothing options on the underlying asset with: barrier: $0.85 * \mathrm{DAX}_0$; bonus return: EUR 1; term: December 15,1999, to December 13,2000; payoff on December 13,2002
- the purchase of 40 down-and-out cash-or-nothing options on the underlying asset with: barrier: $0.75 * \mathrm{DAX}_0$; bonus return: EUR 1; term: December 15,1999, to December 13,2000; payoff on December 13,2002
- the purchase of 30 down-and-out cash-or-nothing forward start options on the underlying asset with: barrier: $0.9 * \mathrm{DAX}_1$; bonus return: EUR 1; term: December 15,1999, to December 13,2001; observation period: December 14,2000, to December 13,2001; payoff on December 13,2002
- the purchase of 30 down-and-out cash-or-nothing forward start options on the underlying asset with: barrier: $0.85 * \mathrm{DAX}_1$; bonus return: EUR 1; term: December 15,1999, to December 13,2001; observation period: December 14,2000, to December 13,2001; payoff on December 13,2002
- the purchase of 40 down-and-out cash-or-nothing forward start options on the underlying asset with: barrier: $0.75 * \mathrm{DAX}_1$; bonus return: EUR 1; term: December 15,1999, to December 13,2001; observation period: December 14,2000, to December 13,2001; payoff on December 13,2002
- the purchase of 30 down-and-out cash-or-nothing forward start options on the underlying asset with: barrier: $0.9 * \mathrm{DAX}_2$; bonus return: EUR 1; term: December 15,1999, to December 13,2001; observation period from December 14,2001, to December 13,2002
- the purchase of 30 down-and-out cash-or-nothing forward start options on the underlying asset with: barrier: $0.85 * \mathrm{DAX}_2$; bonus return: EUR 1; term: December 15,1999, to December 13,2001; observation period from December 14,2001, to December 13,2002
- the purchase of 40 down-and-out cash-or-nothing forward start options on the underlying asset with: barrier: $0.75 * \mathrm{DAX}_2$; bonus return: EUR 1; term: December 15,1999, to December 13,2001; observation period from December 14,2001, to December 13,2002

Example 3: Down-and-in (at expiry) cash-or-nothing

The bonus return is calculated as follows:

DAX in observation year i falls below $90\%$ of its level at $t = 0$: $6\%$

DAX in observation year i falls below $85\%$ of its level at $t = 0$: $8\%$

DAX in observation year i falls below $80\%$ of its level at $t = 0$: $11\%$

Otherwise: $1.5\%$

This product can also be depicted as follows:

$$
\begin{array}{l} + \text {bonus return} = + 1.5 \% \\ +4.5\% \text{if}\operatorname {MinDAX}(\mathrm{i}) < 0.9*\operatorname {DAX}_{0} \\ +2\% \text{if}\operatorname {MinDAX}(\mathrm{i}) < 0.85*\operatorname {DAX}_{0} \\ +3\% \text{if}\operatorname {MinDAX}(\mathrm{i}) < 0.75*\operatorname {DAX}_{0} \\ \end{array}
$$ where

MinDAX(i) lowest value of the DAX in observation period $i$

The bonus return in this example can be broken down into a fixed part and three down-and-in cash-or-nothing options.[74] In contrast to conventional binary options, the following applies to this example:

(1) Bonus returns are paid out not upon expiration of the option but upon maturity of the bond. This is taken into account by discounting the value of the down-and-in cash-or-nothing (at expiry) $^{75}$ options using the relevant forward interest rates. $^{76}$

(2) The lowest price between the issue date of the bond (the option) and the expiration date of the option (= overall term) is not relevant. The bonus return is calculated only on the basis of the lowest price in each observation period. In particular, it is not important whether the barrier is breached or not. What matters is whether the lowest price falls below the reference value.[77] Options of this type are referred to as partial binary barrier options.[78]

Therefore, the bonus return calculations for this product cannot be broken down into conventional down-and-in cash-or-nothing options.

For the purpose of replication, this means that the structured product has to be broken down into a portfolio of zero coupon bonds and partial binary barrier options with delayed payoff.

Capital guaranteed bonds with $= +$ zero coupon bonds down-and-out cash-or-nothing $^+$ portfolio of partial binary barrier options options

74 The payoff could also be interpreted as a short position in down-and-out options.
There are two types in the case of down-and-in options: The bonus returns are either paid immediately when the barrier is reached (at hit), or at the end of the observation period (at expiry).
76 Cf. the explanations in Section 4.3.7.2.
For example, if the price is already below the reference value at the beginning of an observation period, it follows that the bonus returns will have to be paid out. Of course, other variants in which the bonus returns are only paid if the price breaches the barrier during the observation period are also conceivable.
78 Cf. L. Clewlow and C. Strickland, "Exotic Options," 1997, International Thompson Business Press, p. 128ff.

If these had been forward start options, it would have been necessary to break the product down into a portfolio of down-and-in cash-or-nothing forward start options.

Assuming a principal of 1,000, we can replicate the instrument from Example 3 on the issue date $(t = 0)$ with:

- the purchase of a zero coupon bond which reaches maturity on December 13,2002, and has a face value of EUR 1,045 (redemption amount and coupons)
- the purchase of 45 down-and-in cash-or-nothing (at expiry) options on the underlying asset with: barrier: $0.9 * \mathrm{DAX}_0$; bonus return: EUR 1; term: December 15,1999, to December 13,2000; payoff on December 13,2002
- the purchase of 20 down-and-in cash-or-nothing (at expiry) options on the underlying asset with: barrier: $0.85 * \mathrm{DAX}_0$; bonus return: EUR 1; term: December 15,1999, to December 13,2000; payoff on December 13,2002
- the purchase of 30 down-and-in cash-or-nothing (at expiry) options on the underlying asset with: barrier: $0.75 * \mathrm{DAX}_0$; bonus return: EUR 1; term: December 15,1999, to December 13,2000; payoff on December 13,2002
- the purchase of 45 partial down-and-in cash-or-nothing (at expiry) options on the underlying asset with: barrier: $0.9 * \mathrm{DAX}_0$; bonus return: EUR 1; term: December 15,1999, to December 13,2001; observation period: December 14,2000, to December 13,2001; payoff on December 13,2002
- the purchase of 20 partial down-and-in cash-or-nothing (at expiry) options on the underlying asset with: barrier: $0.85 * \mathrm{DAX}_0$; bonus return: EUR 1; term: December 15,1999, to December 13,2001; observation period: December 14,2000, to December 13,2001; payoff on December 13,2002
- the purchase of 30 partial down-and-in cash-or-nothing (at expiry) options on the underlying asset with: barrier: $0.75 * \mathrm{DAX}_0$; bonus return: EUR 1; term: December 15,1999, to December 13,2001; observation period: December 14,2000, to December 13,2001; payoff on December 13,2002
- the purchase of 45 partial down-and-in cash-or-nothing (at expiry) options on the underlying asset with: barrier: $0.9 * \mathrm{DAX}_0$; bonus return: EUR 1; term: December 15,1999, to December 13,2002; observation period from December 14,2001, to December 13,2002
- the purchase of 20 partial down-and-in cash-or-nothing (at expiry) options on the underlying asset with: barrier: $0.85 * \mathrm{DAX}_0$; bonus return: EUR 1; term: December 15,1999, to December 13,2002; observation period from December 14,2001, to December 13,2002
- the purchase of 30 partial down-and-in cash-or-nothing (at expiry) options on the underlying asset with: barrier: $0.75 * \mathrm{DAX}_0$; bonus return: EUR 1; term: December 15,1999, to December 13,2002; observation period from December 14,2001, to December 13,2002

# Example 4: Digital Range Forward Start

The bonus return is calculated as follows:

7.5\% if the DAX never falls below 90\% and never rises above 120\% of its level at $t = i - 1$ during observation year $i$

Otherwise: $3\%$

This product can also be depicted as follows:

$$

\begin{array}{l} + \text {bonus return} = + 3 \% (\text {fixed}) \\ +4.5\% \text{if} 1,2 > \operatorname {MinDAX}(\mathrm{i}) > 0.9*\operatorname {DAX}_{\mathrm{t - 1}} \\ \end{array}

$$ where

MinDAX(i) lowest value of the DAX in observation period $i$

The bonus return in this example can be broken down into a fixed part and double barrier binary options, where the barriers were known at the time of issue. In this specific case, the barriers are functions of a future price, thus making it possible to interpret them as forward start double barrier binary options.

Assuming a principal of 1,000, we can replicate the instrument from Example 4 on the issue date $(t = 0)$ with:

- the purchase of a zero coupon bond which reaches maturity on December 13,2002, and has a face value of EUR 1,090 (redemption amount and coupons)
- the purchase of 45 up-and-down out binary options on the underlying asset with: lower barrier: $0.9 * \mathrm{DAX}0$; upper barrier: $1.2 * \mathrm{DAX}_0$, bonus return: EUR 1; term: December 15,1999, to December 13,2000; payoff on December 13,2002
- the purchase of 45 up-and-down out binary forward start options on the underlying asset with: lower barrier: $0.9 * \mathrm{DAX}_1$; upper barrier: $1.2 * \mathrm{DAX}_1$, bonus return: EUR 1; term: December 15,1999, to December 13,2001; observation period: December 14,2000, to December 13,2001; payoff on December 13,2002
- the purchase of 45 up-and-down out binary barrier forward start options on the underlying asset with: lower barrier: $0.9 * \mathrm{DAX}_1$; upper barrier: $1.2 * \mathrm{DAX}_1$; bonus return: EUR 1; term: December 15,1999, to December 13,2002; observation period from December 14,2001, to December 13,2002

In summary, we can say that three aspects have to be noted when replicating capital-guaranteed products with embedded binary barrier options:

(1) How are the bonus returns calculated? There are almost always several ways to depict these calculations.
(2) Is the specific barrier already known? If so, then it is necessary to consider the fact that the period of the option is not always the same as the observation period. If not, then it is a forward start option.
(3) Is the bonus return paid out only when the bond reaches maturity? This delay is to be taken into account by discounting the bonus returns with the relevant forward interest rate.

# 4.3.8.3 Valuation

The guaranteed redemption amount, fixed coupons and already fixed bonus returns are valuated using the relevant spot interest rates.

There are closed formulas for the types of binary barrier options embedded in the products examined here.[79] If we consider the fact that a portfolio consisting of a knock-in cash-or-nothing (at expiry) option and a knock-out cash-or-nothing option with otherwise similar features (expiration, barrier, bonus return, observation period) will certainly yield a payment in the amount of the bonus return, then it becomes clear that the value of this portfolio will correspond precisely to the discounted value of the bonus return. In other words:

$$

\text {V a l u e} (\text {k n o c k - i n}) + \text {V a l u e} (\text {k n o c k - o u t}) = \text {P r e s e n t v a l u e} (\text {b o u n s} \text {r e t u r n})

$$

If the value of one of these options is known, the other value can be calculated quite easily. For this reason, only the valuation formulas for knock-out options are given. In this context, the delayed payoff is not taken into consideration. This is taken into account by discounting the values with the forward interest rate applicable to the period between the expiration of the option and the maturity of the product.

Type 1: Conventional knock-out cash-or-nothing option

If the price of the underlying asset never rises above (up-and-out) or never falls below the known barrier (down-and-out) during the observation period, then a fixed bonus return is paid out at maturity. The observation period coincides with the period of the option.

$$

\begin{array}{l} D O C N (S _ {0}, 0, H, T) = e ^ {- r T} \left(N (x) - \left(\frac {H}{S _ {0}}\right) ^ {2 \mu} N (y)\right) \\ U O C N (S _ {0}, 0, H, T) = e ^ {- r T} \bigg (N (- x) - \left(\frac {H}{S _ {0}}\right) ^ {2 \mu} N (- y) \bigg) \\ \end{array}

$$ where

$$

\begin{array}{l} x = \frac {l n (S _ {0} / H)}{\sigma \sqrt {T}} + \mu \sigma \sqrt {T} \\ y = \frac {l n (H / S _ {0})}{\sigma \sqrt {T}} + \mu \sigma \sqrt {T} \\ \mu = \frac {r - q - \sigma^ {2} / 2}{\sigma^ {2}} \\ \end{array}

$$

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
$DOCN(S_0,0, H, T)$ or $UOCN(S_0,0, H, T)$ & Value of a down-and-out (up-and-out) cash-or-nothing option on one share with a price of $S_0$ at $t = 0$. The payoff (bonus return) is one unit, the barrier is $H$, and the expiration date is in $T$ years. \\ \hline
$r$ & risk-free interest rate (constant) over the period of the option \\ \hline
$q$ & Dividend yield \\ \hline
$\sigma$ & Volatility of the stock \\ \hline
$N(d)$ & cumulative standard normal distribution at $d$ \\ \hline
\end{tabular}
\end{document}
```

Formula 4.16: Value of a conventional knock-out option

Type 2: Partial knock-out cash-or-nothing option

This option differs from Type 1 in that the observation period begins during the option period and lasts until the option's expiration date.

$$

P D O C N \left(S _ {0}, t _ {1}, H, T\right) =

$$

$$ e ^ {- r T} \left(N \left[ x _ {1}, x _ {2}; \sqrt {t _ {1} / T} \right] - \left(\frac {H}{S _ {0}}\right) ^ {2 \mu} N \left[ y _ {1}, - y _ {2}; - \sqrt {t _ {1} / T} \right]\right)
$$

$$
P U O C N \left(S _ {0}, t _ {1}, H, T\right) =
$$

$$ e ^ {- r T} \left(N \left[ x _ {1}, - x _ {2}; \sqrt {t _ {1} / T} \right] - \left(\frac {H}{S _ {0}}\right) ^ {2 \mu} N \left[ - y _ {1}, y _ {2}; - \sqrt {t _ {1} / T} \right]\right)
$$ where

$$ x _ {1} = \frac {\ln (S _ {0} / H)}{\sigma \sqrt {T}} + \mu \sigma \sqrt {T}
$$

$$ x _ {2} = \frac {\ln (S _ {0} / H)}{\sigma \sqrt {t _ {1}}} + \mu \sigma \sqrt {t _ {1}}
$$

$$ y _ {1} = \frac {\ln \left(S _ {0} / H\right)}{\sigma \sqrt {T}} + \mu \sigma \sqrt {T}
$$

$$ y _ {2} = \frac {\ln (S _ {0} / H)}{\sigma \sqrt {t _ {1}}} + \mu \sigma \sqrt {t _ {1}}
$$

$$
\mu = \frac {r - q - \sigma^ {2} / 2}{\sigma^ {2}}
$$

$N[a, b;\rho]$ is the cumulative bivariate standard normal distribution with the integration limits $a$ and $b$ and the correlation coefficient $\rho$.

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
PDOCN($S_{0}$,$t_{1}$, H, T) or PUOCN($S_{0}$,$t_{1}$, H, T) & Value of a partial down-and-out (up-and-out) cash-or-nothing option on one share with a price of $S_{0}$ at t = 0. The payoff (bonus return) is one unit, the barrier is H, and the expiration date is in T years, and the observation period begins at $t_{1}$. \\ \hline r & risk-free interest rate \\ \hline q & Dividend yield \\ \hline σ & Volatility of the stock \\ \hline
N(d) & cumulative standard normal distribution at d \\ \hline
\end{tabular}
\end{document}
```

Formula 4.17: Value of a partial knock-out option

Type 3: Forward start knock-out cash-or-nothing option

In contrast to Type 2, the barrier for this option is fixed once the option period begins, as a function of the then-current price of the underlying asset. The observation period also begins at that point in time.

If the barrier $(H)$ is a multiple of $S(H = \alpha S)$, then $x$ and $y$ from formula 5.11 and thus also the value of the option at the beginning of the observation period are independent of $S$. The present value can be calculated by discounting the value at $t_1$.

$$
F S D O C N \left(S _ {0}, 0, \alpha, t _ {1}, T\right) = e ^ {- r T} \left(N (x) - \alpha^ {2 \mu} N (y)\right)
$$

$$
F S U O C N \left(S _ {0}, 0, \alpha, t _ {1}, T\right) = e ^ {- r T} \left(N (- x) - \alpha^ {2 \mu} N (- y)\right)
$$ where

$$

\begin{array}{l} x = \frac {l n (1 / \alpha)}{\sigma \sqrt {T - t _ {1}}} + \mu \sigma \sqrt {T - t _ {1}} \\ y = \frac {l n (\alpha)}{\sigma \sqrt {T - t _ {1}}} + \mu \sigma \sqrt {T - t _ {1}} \\ \mu = \frac {r - q - \sigma^ {2} / 2}{\sigma^ {2}} \\ \end{array}

$$

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
FSDOCN($S_{0}$,0,α,$t_{1}$, T) or FSUOCN($S_{0}$,0,α,$t_{1}$, T) & Value of a down-and-out (up-and-out) cash-or-nothing forward start option on one share with a price of $S_{0}$ at t = 0. The payoff (bonus return) is one unit, the observation period begins at $t_{1}$, the barrier is H = αS($t_{1}$), and the expiration date is in T years. \\ \hline r & risk-free interest rate \\ \hline q & Dividend yield \\ \hline σ & Volatility of the stock \\ \hline
N(d) & cumulative standard normal distribution at d \\ \hline
\end{tabular}
\end{document}
```

Formula 4.18: Value of a forward start knock-out option

In the case of digital ranges (double barrier binary options) there exist valuation formulas. $^{80}$ Given that these formulas involve infinite sums it is reasonable to solve the valuation using numerical techniques.

# 4.4 Annex

# 4.4.1 Valuating Basket Options

Basket options are options on an underlying asset (basket) consisting of various indexes and individual securities.[81] The components of such a basket are very often listed in various currencies. It hardly needs to be emphasized that the valuation of such options is difficult. First of all, the volatility structure of an equity basket is highly complex. The correlations between the individual stocks have to be taken into account (in the bond's issue currency). Second, the assumption that changes in individual stock prices follow geometric Brownian motion (Black Scholes) means that changes in the value of the equity basket cannot be described by geometric Brownian motion.

Two solutions are suggested in the relevant literature:[82]

(1) The stock prices can be modeled as correlated geometric Brownian motions and the value of the option calculated using Monte Carlo simulation. Note that what is relevant here is the correlation structure in the bond's issue currency. In principal, this method can be used for all possible types of options. Its disadvantage is that valuation becomes relatively time-intensive.

$^{80}$ Cf. C. H. Hui, "One-touch double barrier binary option values," Applied Financial Economics, 1996,6, p. 343-346.81 Actually, any option on an index is a basket option.
82 Cf. J. C. Hull, "Options, Futures, and Other Derivatives," 4 ed., Prentice Hall, 2000, p. 471.

(2) The following method can be used for European call and put options: The option can be interpreted as one on a futures contract on the equity basket with the same expiration date as the option.[83] In addition, it is necessary to assume that the equity basket as such follows a geometric Brownian motion. Then Black's formulas can be used for valuation. The formulas are as follows:

$$ c = e ^ {- r T} \left[ F \cdot N \left(d _ {1}\right) - X \cdot N \left(d _ {2}\right) \right]
$$

$$ p = e ^ {- r T} \left[ X \cdot N \left(- d _ {2}\right) - F \cdot N \left(- d _ {1}\right) \right]
$$ where

$$ d _ {1} = \frac {l n (F / X) + \sigma^ {2} \cdot T / 2}{\sigma \sqrt {T}}
$$

$$ d _ {2} = d _ {1} - \sigma \sqrt {T}
$$

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline c(p) & premium of a European call (put) option on one futures contract with a price of F at t = 0. X is the exercise price, and the option expires in T years. \\ \hline r & risk-free interest rate (constant) over the period of the option \\ \hline σ & volatility of the futures price \\ \hline
N(d) & cumulative standard normal distribution at d \\ \hline
\end{tabular}
\end{document}
```

Formula 4.19: Black's formulas for European call and put options

In order to use the formula, it is necessary to define the parameters $F$ (futures price) and $\sigma$.

$$
\sigma^ {2} = \frac {1}{n} \ln \left(\frac {M _ {2}}{M _ {1} ^ {2}}\right)
$$

$$
M _ {1} = \sum_ {i = 1} ^ {n} x _ {i} F _ {i}
$$

$$
M _ {2} = \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {n} w _ {i} w _ {j} F _ {i} F _ {j} e ^ {\rho_ {i j} \sigma_ {i} \sigma_ {j} T}
$$

$$
F = M _ {1}
$$

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline n & number of different underlying assets \\ \hline xi & number of underlying asset i in the basket \\ \hline
Fi & futures price of underlying asset i in bond&#$x_{27}$;s issue currency at t = T \\ \hline ρij & correlation of the performance of underlying assets i and j in the bond&#$x_{27}$;s issue currency \\ \hline
σi & volatility of underlying asset i in the bond&#$x_{27}$;s issue currency \\ \hline
T & Maturity \\ \hline r & risk-free interest rate over the period \\ \hline
\end{tabular}
\end{document}
```

# 4.4.2 Options And Currencies

In many structured products, the currency in which payments are made is different from that in which the underlying asset is issued. In some cases, the underlying asset itself is a portfolio of instruments listed in various currencies. This gives rise to the question of how to take this feature into account when replicating these instruments. For simplicity's sake, let us assume that the product was issued in EUR and that the underlying asset is listed in USD.

We can distinguish between three types:

(1) On the expiration date (T), the performance of the underlying asset in the foreign currency is multiplied by the exchange rate applicable at T. The valuation of the implied option can be performed in the foreign currency and then translated into EUR.

EXAMPLE: European call option on one share in company XY, listed in USD, with a strike price of USD 100. If the stock price is above USD 100 then the option will be exercised and the payoff will then be translated into EUR at the spot exchange rate as of the expiration date.

Payoff in EUR: $E_{T} \cdot \max(S_{T} - 100; 0)$

$E_{T}$ is the spot exchange rate for EUR/USD and $S_{T}$ is the price of the underlying asset at expiration.

(2) The performance of the underlying asset is determined by translating the prices into EUR at $t = 0$ as well as $t = T$. The embedded option is equivalent to an option on shares listed in a foreign currency but with a strike price in EUR. In many cases, closed-form valuation formulas can be used.

EXAMPLE: European call option on one share in company XY, listed in USD, with a strike price of EUR 100. If the stock's price is above EUR 100, the option will be exercised.

Payoff in EUR: $\max (E_T \cdot S_T - 100; 0)$

$E_{T}$ is the spot exchange rate for EUR/USD at expiration and $S_{T}$ is the price of the underlying asset at expiration.

(3) The performance of the underlying asset is determined in foreign currency and translated into EUR at a predefined rate. The embedded option is a quanto product. Closed-form valuation formulas can be used for some of these options.

EXAMPLE: European call option on one share in company XY, listed in USD, with a strike price of USD 100. If the stock price is above USD 100, then the option will be exercised and the payoff will then be translated into EUR at the fixed exchange rate $\mathbf{E}^*$ on the expiration date.

Payoff in EUR: $E^{*} \cdot \max (S_{T} - S_{0};0)$

$E^{*}$ is the fixed exchange rate for EUR/USD, and $S_{T}$ is the price of the underlying asset at expiration.

# 5 Products Of Foreign Currencies

# 5.1 Foreign Currency Bonds

# 5.1.1 General Description

Conventional foreign currency bonds are coupon bonds (i.e., straight bonds) issued in a currency other than the domestic currency. The annual coupon as well as the redemption amount are paid out in the foreign currency on each payment date. Thus the value of the payments in EUR fluctuates along with the exchange rate.

The bearer of a foreign currency bond therefore assumes the risk of exchange rate fluctuations.

Example: $4\%$ USD bond

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & 10 years \\ \hline
Total principal & n.a. \\ \hline
Base currency & USD \\ \hline
Issue price & 100\% \\ \hline
Coupon dates & annual \\ \hline
Coupons & 4\% p.a., payable in USD \\ \hline
Redemption & 100\% \\ \hline
\end{tabular}
\end{document}
```

# 5.1.2 Replication

The instrument in the example is a coupon bond. For valuation purposes, coupon bonds can be broken down into a portfolio of zero coupon bonds (cf. Part A – Interest Rates, p. 14). The fact that the bond was issued in a foreign currency has no effect on replication.

In summary, we get:

$$
\begin{array}{r l} + \text {for e i g n c u r r e n c y b o n d} & = + \text {F X z e r o c o u p o n b o n d (1)} + \dots \\ & \dots + \text {F X z e r o c o u p o n b o n d (n)} \end{array}
$$ with:

$$
- = \text {l o n g p o s i t i o n}
$$

$$ n = \text {n u m b e r o f c o u p o n d a t e s}
$$

Maturity dates of the zero coupon foreign currency bonds: coupon dates of the bond.

Face values of the zero coupon foreign currency bonds: cash flows from the coupon bond in the foreign currency.

Assuming a face value of EUR 100, we can replicate this instrument with:

- the purchase of an FX zero coupon bond with a face value of USD 100 and a maturity of 10 years
- the purchase of $\sum_{t=1}^{10}$ zero coupon foreign currency bond $t$ with a face value of USD 4 and a maturity of $t$ years

# 5.1.3 Valuation

The fundamentals of valuating zero coupon bonds were already discussed in Chapter 3 of the product handbook.

There are generally two possible ways to valuate (zero) coupon bonds issued in a foreign currency (cf. Chapter 3):

(1) Use the respective spot interest rate of the foreign currency for valuation and convert the outcome at the current exchange rate.

(2) Translate the known cash flows into EUR at forward exchange rates and value the resulting euro cash flows at euro spot rates.

Both techniques must result in (almost) the same outcome; otherwise, arbitrage opportunities would exist. If the future cash flows are not yet known at the time of valuation, then only the first technique can be used.

# 5.2 Dual Currency Bonds

# 5.2.1 General Description

In the case of dual currency bonds, the coupon payments are made in the issue currency, while the redemption amount is paid out in a foreign currency. For the purpose of redemption, the face value of the bond is converted into the foreign currency at an exchange rate specified at the time of issue (usually the exchange rate applicable at the time of issue).

The risk associated with dual currency bonds lies in the repayment amount, which will fluctuate in base currency along with the exchange rate.

At the same time, however, the bearer of the bond is not exposed to any exchange risk with regard to the coupons.

Example: Dual currency bond

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & 5 years \\ \hline
Total principal & n.a. \\ \hline
Base currency & EUR \\ \hline
Issue price & 100\% \\ \hline
Coupon dates & Annual \\ \hline
Coupons & 5\% p.a. \\ \hline
Redemption & 100\%, payable in USD \\ \hline
\end{tabular}
\end{document}
```

# 5.2.2 Replication

For the purpose of valuation, it is necessary to split the product up into its redemption amount and coupons. The coupon payments are replicated by a series of zero coupon bonds in base currency. The redemption can be depicted by a zero coupon bond in the foreign currency.

In summary, we get:

$$
\begin{array}{r l} & + \text {D u a l c u r r e n c y b o n d} = + \text {z e r o c o u p o n b o n d (1)} +... + \text {z e r o c o u p o n b o n d (n)} \\ & \qquad + \text {z e r o c o u p o n for g i n c u r r e n c y b o n d} \end{array}
$$ where

$$
- = \text {l o n g p o s i t i o n}
$$

$$ n = \text {P a r t i c i p a t i o n}
$$

Maturity dates of the zero coupon bonds: coupon dates of the bond.

Face values of the zero coupon bonds: coupon payments of the bond.

The FX zero coupon bond is used to replicate the redemption, and its face value is equivalent to the redemption amount in the foreign currency.

Assuming a face value of EUR 100, we can replicate this instrument with:

- the purchase of $\sum_{t=1}^{5}$ zero coupon foreign currency bond $t$ with a face value of USD 5 and maturity in $t$ years
- the purchase of an FX zero coupon bond with a face value of USD $100*\mathrm{S}_0$ and maturity in 5 years where $S_0 =$ USD/EUR exchange rate at the time of issue

# 5.2.3 Valuation

The FX zero coupon bond is valuated using the applicable spot rate.

# 5.3 Reverse Dual Currency Bonds

# 5.3.1 General Description

The interest paid on bonds can depend on exchange rate developments in a wide variety of ways. In this context, one of the simplest forms is the payment of fixed interest in a foreign currency. In this case, the annual coupon payment is converted into foreign currency at the exchange rate applicable at the time of the coupon payment. Thus the value of the payments made on the successive coupon dates in the base currency fluctuates along with the exchange rate.

Example: EUR 7.6\% rand bond

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & July 28,1998, to July 27,2008 (10 years) \\ \hline
Total principal & n.a. \\ \hline
Base currency & EUR \\ \hline
Issue price & 100.25\% \\ \hline
Coupon dates & annual, starting on July 28,1999 \\ \hline
Coupons & 7.60\% p.a. of the face value translated into ZAR \\ \hline
Redemption & 100\% \\ \hline
Denomination & EUR 727 \\ \hline
\end{tabular}
\end{document}
```

# 5.3.2 Replication

For the purpose of valuation, it is necessary to split the product up into its redemption amount and coupons. The redemption can be depicted by a zero coupon bond denominated in the base currency. The coupon payments are replicated by a series of zero coupon bonds in the foreign currency.

In summary, we get:

$$
\begin{array}{r l} + \text {R e v e r s e d u a l c o u r r e n c y b o n d} & = + \text {z e r o c o u p o n b o n d} + \text {F X z e r o c o u p o n b o n d (1)} \\ & + \dots + \text {F X z e r o c o u p o n b o n d (n)} \end{array}
$$ where

$$

\begin{array}{l} + = \text {l o n g p o s i t i o n} \\ - = \text {s h o r t p o s i t i o n} \\ \end{array}

$$

A conventional zero coupon bond is used to replicate the redemption.

Maturity dates of the zero coupon foreign currency bonds: coupon dates of the bond.

Face values of the zero coupon foreign currency bonds: Cash flows from the bond translated into the foreign currency at each applicable exchange rate.

Assuming a face value of EUR 100, we can replicate this instrument with:

- the purchase of a euro-denominated zero coupon bond with a face value of 100 and a maturity of 10 years
- the purchase of $\sum_{t=1}^{10}$ zero coupon foreign currency bond $t$, face value EUR 7.6 translated into ZAR, maturity in $t$ years (current translation rate $= 6.88$ ZAR/EUR $= >$ EUR $7.6 =$ ZAR 52.3)

# 5.3.3 Valuation

The FX zero coupon bond is valuated using the applicable spot rate.

# 5.4 Dual Redemption Bonds

# 5.4.1 General Description

In the case of dual redemption bonds (also called dual currency redemption notes or currency switch deposits), the issuer has the right to pay or the bearer has the right to receive the redemption amount in a foreign currency at maturity. In such cases, the face value of the instrument is converted into the foreign currency at an exchange rate defined at the time of issue.

The issuer will exercise the right to redeem the bond in a foreign currency if the value of the foreign currency has fallen in relation to the base currency. Conversely, the bearer of the bond will only exercise this right if the value of the foreign currency has risen.

This option to pay (or receive payment) in a foreign currency can involve the coupon payments as well as the redemption amount.

Example: $6.93\%$ dual redemption bond

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & 120 days \\ \hline
Total principal & EUR 4,500,000 \\ \hline
Base currency & EUR \\ \hline
Issue price & 100\% \\ \hline
Coupon dates & at maturity \\ \hline
Coupons & 6.93\% p.a. \\ \hline
Redemption & 100\% \\ \hline
Redemption option & see below \\ \hline
Denomination & EUR 100,000 \\ \hline
\end{tabular}
\end{document}
```

Redemption option: This issuer has the option of paying the redemption amount plus coupons in EUR or USD. If the bond is redeemed in USD, the total amount will be converted into USD at an exchange rate of 1.0708 USD/EUR.

# 5.4.2 Replication

Dual currency redemption bonds in which the issuer has the right to choose the redemption currency can be replicated with the purchase of a straight (coupon) bond and the sale of a put option on the foreign currency.![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/7e0262c5-38a8-452c-a39e-267c7f9f56ef/fbd78052c796e17767dbdf0743b9b5dd84672dd7ec3df7c575558818a2ce89cd.jpg)
Figure 5.1: Payoff profile of a dual redemption bond at maturity

Depending on the type of redemption option, the notional amount of the option can either be equal to the bond's face value or the face value plus the coupon payments.

In summary, we get:

$$

\begin{array}{l} + \text {D u a l} = + \text {c o u p o n} \\ - \text {p u t} \\ \end{array}

$$ where

$$

\begin{array}{l} + = \text {l o n g p o s i t i o n} \\ - = \text {s h o r t p o s i t i o n} \\ \end{array}

$$

The notional amount of the put option is equal to the amount to which the redemption option applies (translated into USD).

Assuming a face value of EUR 100, we can replicate this instrument with:

- the purchase of a coupon bond with a face value of 100, a 120-day maturity and a nominal interest rate of $6.93\%$
- the purchase of a premium bond with a face value of 100, a 120-day maturity and a nominal interest rate of $7.5\%$.
- the sale of a put option on $\left(100 + 6.93 * \frac{120}{360}\right)^{*} 1.0708 = \text{USD} 109.55$, expiration in 120 days, strike price $\frac{1}{1.0708}$ EUR/USD

# 5.4.3 Valuation

The fundamentals of valuating coupon bonds were already discussed in Part A of the product handbook (cf. Part A – Interest Rates, p. 12 ff.). The spot interest rate applicable to EUR is used for the purpose of discounting.

European call or put options on foreign currencies can be valuated with M. B. Garman und S. W. Kohlhagen's extended Black-Scholes formula, for example.

$$ c = e ^ {- r T} \left[ F _ {0} N \left(d _ {1}\right) - X \cdot N \left(d _ {2}\right) \right]
$$

Formula 5.1: Price of a currency call option according to the Black-Scholes model

$$ p = e ^ {- r T} \left[ X \cdot N (- d _ {2}) - F _ {0} N (- d _ {1}) \right]
$$

Formula 5.2: Price of a currency put option according to the Black-Scholes model where

$$ d _ {1} = \frac {l n (F _ {0} / X) + (\sigma^ {2} / 2) T}{\sigma \sqrt {T}}, d _ {2} = d _ {1} - \sigma \sqrt {T} \quad \text {and}
$$

$$
F _ {0} = S _ {0} e ^ {(r - r _ {f}) T}
$$ where

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
$S_{0}$ & current exchange rate (the value of one unit of a currency, expressed in base currency) \\ \hline x & agreed exchange rate = strike price \\ \hline r & risk-free interest rate in the base currency \\ \hline rf & risk-free interest rate in the foreign currency \\ \hline
T & period of the option, i.e., years until the exercise date \\ \hline σ & volatility of the reference rate \\ \hline
N(x) & cumulative standard normal distribution at x \\ \hline
$F_{0}$ & futures price \\ \hline
\end{tabular}
\end{document}
```

# 5.5 Foreign Currency Dual Redemption Bonds

# 5.5.1 General Description

Like any bond, a dual redemption bond can also be issued in a foreign currency. In this case, the only difference in valuation is that the entire bond is valuated in the foreign currency first, then translated into EUR.

If, for example, the bond is issued in a foreign currency and the issuer has the option of redeeming the bond in the foreign currency or in EUR, the bearer is then the seller of a put option on EUR.

Example: $8.3\%$ unfunded dual redemption notes with the coupon date September 21,1998

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & June 19,1998, to September 20,1998 (94 days) \\ \hline
Total principal & USD 4,000,000 \\ \hline
Base currency & USD \\ \hline
Issue price & 100\% \\ \hline
Coupon dates & September 21,1998 \\ \hline
Coupon & 8.3\% p.a. \\ \hline
Redemption & 100\% \\ \hline
Redemption option & see below \\ \hline
Denomination & USD 100,000 \\ \hline
\end{tabular}
\end{document}
```

Redemption option: This issuer has the option of paying the redemption amount plus coupons in USD or EUR. If the bond is redeemed in USD, the total amount will be converted into USD at an exchange rate of 0.9375 EUR/USD.

# 5.5.2 Replication

Replication of this type of instrument was already discussed in the previous section. Because the only change pertains to the base currency, it is not necessary to explain this procedure again here.

In summary, this example can also be broken down as follows:

$$
- \text {for g i n c y} = + \text {c o u p o n}
$$

$$
- \text {p u t}
$$ where

$$
- = \text {l o n g p o s i t i o n}
$$

$$
- = \text {s h o r t p o s i t i o n}
$$

The notional amount of the put option is equal to the amount to which the redemption option applies. In this case, it applies to both the redemption amount and the coupon.

Assuming a face value of EUR 100, we can replicate this instrument with:

- the purchase of a coupon bond with a face value of 100, a 94-day maturity and a nominal interest rate of $8.3\%$
- the purchase of a premium bond with a face value of 100, a 94-day maturity and a nominal interest rate of $10\%$.
- the sale of a put option on $\left(100 + 8.3 * \frac{94}{365}\right)^{*} 0.9375 = \text{EUR} 95.75$, expiration in 94 days, strike price $\frac{1}{0.9375}$ USD/EUR

# 5.5.3 Valuation

The valuation of dual redemption bonds issued in a foreign currency is analogous to that of dual redemption bonds issued in EUR.

However, the individual products are valuated in the foreign currency and then converted into the desired currency at the current exchange rate.

# 5.6 Step-Up/Step-Down Dual Redemption Bonds

# 5.6.1 General Description

Step-up und step-down bonds feature fixed coupon payments which can be increased (stepped up) or decreased (stepped down) at certain times during the term of the bond. If they feature an option to redeem the bond in a currency other than the base currency, then they are a variant of the dual redemption bond. The conversion rate is set when the bond issued in this case as well.

Step-up/step-down dual redemption bonds can also be issued in a different base currency. As there is no substantial difference in the valuation of such products, they will not be described here in any further detail (cf. previous section).

Example: $4\% / 5\%$ step-up/step-down bond 1997-2002/5

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & May 7,1997, to May 6,2002 (5 years) \\ \hline
Total principal & EUR 18,168,208 \\ \hline
Base currency & EUR \\ \hline
Issue price & 100.50\% \\ \hline
Coupon dates & annual, starting on May 7,1998 \\ \hline
Coupons & 4\% p.a. in the 1st, 2ndand 3rdyears
5\% p.a. in the 4thand 5thyears \\ \hline
Redemption & 100\% \\ \hline
Redemption option & See below \\ \hline
Denomination & EUR 727 \\ \hline
\end{tabular}
\end{document}
```

Redemption option: The bearer has the option of receiving the redemption amount plus coupons in EUR or USD. If the bond is redeemed in USD, the total amount will be converted at an exchange rate of 0.9084 EUR/USD.

In practice, the bearer will only exercise his/her right to demand redemption of the bond in USD, however, if the actual exchange rate on the reference date is higher than the agreed price.

# 5.6.2 Replication

We can map step-up and step-down bonds into a portfolio of zero coupon bonds. The creditor's redemption option is equivalent to the purchase of a call option on USD.

In summary, we get:

$$

\begin{array}{l l} + \text {S t e p - u p d u a l} & = + \text {z e r o c o u p o n b o n d (1) +… + z e r o c o u p o n b o n d (n)} \\ \text {r e d e m e p t i o n b o n d} & + \text {c a l l o p t i o n} \end{array}

$$ where

$$

\begin{array}{l} + = \text {l o n g p o s i t i o n} \\ - = \text {s h o r t p o s i t i o n} \\ \end{array}

$$

Maturity dates of the zero coupon bonds: coupon dates of the bond.

Face values of the zero coupon bonds: cash flows of the bond.

Call option: The notional amount of the call option is equal to the amount to which the redemption option applies (translated into the foreign currency).

Assuming a face value of EUR 100, we can replicate this instrument with:

- the purchase of a zero coupon bond with a face value of 100 and a 5-year maturity
- the purchase of $\sum_{t=1}^{3} zero\ coupon\ bond_{t}$ with a face value of USD 4 and maturity in $t$ years
- the purchase of $\sum_{t=4}^{5}$ zero coupon bond $t$ with a face value of 5, and maturity in $t$ years
- the purchase of a call option on USD 110.08, expiration in 5 years, strike price 0.9084 EUR/USD

# 5.6.3 Valuation

The valuation of the zero coupon bond is based on the spot rate. For information on valuating the call option, please see Section 5.7, Dual Redemption Bonds.

# 5.7 Appearing Dual Redemption Bonds

# 5.7.1 General Description

In contrast to a conventional dual redemption bond, the issuer's redemption option in an appearing dual redemption bond does not arise until the exchange rate reaches a certain predefined limit (called the trigger or barrier) during the term of the instrument.

Example: Appearing dual redemption bond in EUR

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & 6 months \\ \hline
Total principal & n.a. \\ \hline
Base currency & EUR \\ \hline
Issue price & n.a. \\ \hline
Coupon dates & at maturity \\ \hline
Coupons & 4.55\% p.a. \\ \hline
Redemption & 100\% \\ \hline
Redemption option & see below \\ \hline
\end{tabular}
\end{document}
```

Redemption option: If the exchange rate exceeds the trigger of 1.065 USD/EUR (i.e., if it goes below 0.939 EUR/USD in direct quotation), then the issuer has the right to redeem the bond and pay the coupon amount in EUR or USD. If the bond is redeemed in USD, the total amount will be converted at an exchange rate of 1.093 USD/EUR.

# 5.7.2 Replication

Apparing dual currency bonds can be replicated with the purchase of a coupon bond and the sale of a barrier option.

In the given example, the redemption option is equivalent to the sale of a down- and-in put option on USD.

In summary, we get:

$$
- \text {A p p e a r i n g d u a l r e d e m p t i o n b o n d} = + \text {c o u p o n b o n d} - \text {b a r r i e r p u t o p t i o n}
$$ where

$$

\begin{array}{l} + = \text {l o n g p o s i t i o n} \\ - = \text {s h o r t p o s i t i o n} \\ \end{array}

$$

Features of the barrier put option:

The notional amount of the put option is equal to the amount to which the redemption option applies (translated into the foreign currency).

The following variants are possible for barrier put options:

- Down-and-in options come are activated when the underlying asset (in this case the exchange rate) goes below an agreed limit during the period of the option.
- Down-and-out options are deactivated when the underlying asset goes below an agreed limit during the period of the option.
- Up-and-in options are activated when the underlying asset exceeds an agreed limit during the period of the option.
- Up-and-out options are deactivated when the underlying asset exceeds an agreed limit during the period of the option.

Assuming a face value of EUR 100, we can replicate this instrument with:

- the purchase of a zero coupon bond with a face value of 102.275 and a 6-month maturity
- the sale of a down-and-in put option on USD 1.093*102.275, expiration in 6 months, barrier 1/1.065 EUR/USD, strike price 1/1.093 EUR/USD

# 5.7.3 Valuation

The valuation of the coupon bond is based on the spot rate.

Barrier options have to be valuated using numerical procedures.

In this example of a down-and-in put option, the barrier is higher than the strike price. Therefore, it has no effect on the price of the option because it will only be exercised if the exchange rate is lower than the strike price. Thus the option in the example can be valuated using the standard formula for European put options as presented in Section 5.4, Dual Redemption Bonds.

# 5.8 Callable Digital Deposits

# 5.8.1 General Description

Like straight bonds, digital deposits have a preset fixed interest rate. The actual amount of the coupon, however, depends on the level of a given exchange rate on the coupon date.

The call provision enables the issuer to redeem the bond early if the exchange rate or interest rate levels change to his disadvantage.

Example: Callable CHF/EUR-linked bond 1998-2013

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & May 18,1998, to May 18,2013 (15 years) \\ \hline
Total principal & EUR 7,267,283 \\ \hline
Base currency & EUR \\ \hline
Issue price & 99.90\% \\ \hline
Coupon dates & June 18 each year, starting on June 18,1999 \\ \hline
Coupons & 7\% if St ≤ B or
4\% if St &$g_{t}$; B \\ \hline
Call provision & at face value each year, starting on June 18,2001 \\ \hline
Denomination & EUR 72,672.83 \\ \hline
\end{tabular}
\end{document}
``` where

$S_{t} = \mathrm{EUR / CHF}$ exchange rate on each coupon date

$B =$ barrier of 0.6541 EUR/CHF

# 5.8.2 Replication

Digital deposits can be replicated with a coupon bond and a portfolio of digital options.

The nominal interest rate of the coupon bond is equivalent to the lower coupon payment $k_{1}$, which the bearer of the bond receives in any case. If the barrier ( $B$ ) is exceeded, the digital option pays an amount equal to the difference between the higher coupon $k_{2}$ and the lower coupon $k_{1}$.

Depending on whether the option pays off when the exchange rate goes above or below the barrier, the option is either a digital call or put:

- Digital call options pay a certain amount when the value of the foreign currency increases in relation to the base currency
- Digital put options pay a certain amount when the value of the foreign currency decreases in relation to the base currency

In the given example, the payoff pattern of the coupons is equivalent to a digital put option.![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/7e0262c5-38a8-452c-a39e-267c7f9f56ef/14a4b9a27bfac7f652a30b578dcac106d192ca839a401dedf053042b923d8f22.jpg)
Figure 5.2: Payoff pattern for the coupon payments in a digital deposit

The issuer's call privilege is equivalent to a Bermuda call option on the digital deposit with a strike price equal to the bond's face value. The exercise dates are the same as the coupon dates.

In summary, we get:

$$

\begin{array}{l} + \text {C a l l a b l e d i g i t a l} = + \text {c o u p o n b o n d} + \text {d i g i t a l o p t i o n (1)} \dots + \text {d i g i t a l o p t i o n (n)} \\ \text {d e p o s i t} \quad - \text {c a l l o p t i o n} \end{array}

$$ where

$$
- = \text {l o n g p o s i t i o n}
$$

$$
- = \text {s h o r t p o s i t i o n}
$$

The nominal interest rate of the coupon bond is equivalent to the lower coupon payment, which will be paid out in any case. The coupon dates match the dates specified in the bond's terms of issue.

Features of the digital options:

- One option for each coupon calculation date
Exchange rate barrier
- Payoff of $(k_{2} - k_{1})^{*}N$ In the case of a call: if the reference rate is above the barrier In the case of a put: if the reference rate is below the barrier
- The notional amount of the option is equal to the amount to which the redemption option applies (translated into the foreign currency, in this case CHF).

Assuming a face value of EUR 100, we can replicate this instrument with:

- the purchase of a coupon bond with a face value of 100, a 15-year maturity and a nominal interest rate of $4\%$
- the purchase of $\sum_{t=1}^{15}$ digital put option $t$, expiring in $t$ years, barrier 0.6541 EUR/CHF, payoff: EUR 3
- the sale of a Bermuda call option on the bond $B^{b}$ with a strike price of EUR 100

# 5.8.3 Valuation

The valuation of the coupon bond is based on the spot rate.

In order to valuate the call provision, which is equivalent to a Bermuda option, numerical procedures have to be used.

Digital options can be valuated using the following formula:

$$ c = K e ^ {- r T} N \left(d _ {2}\right)
$$

Formula 5.3: Price of a digital currency call option

$$ p = K e ^ {- r T} N (- d _ {2})
$$

Formula 5.4: Price of a digital currency put option where

$$
\frac {d _ {2} = \ln (S _ {0} / X) + (r - r _ {f} - \sigma^ {2} / 2) T}{\sigma \sqrt {T}}
$$ where

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
$S_{0}$ & current exchange rate (the value of one unit of the foreign currency, expressed in base currency) \\ \hline
X & Payoff amount \\ \hline x & Agreed exchange rate = strike price \\ \hline r & risk-free interest rate in the base currency \\ \hline rf & risk-free interest rate in the foreign currency \\ \hline
T & Period of the option, i.e., years until the exercise date \\ \hline σ & volatility of the forward rate \\ \hline
N(x) & cumulative standard normal distribution at x \\ \hline
\end{tabular}
\end{document}
```

# 5.9 Digital Dual Redemption Bonds

# 5.9.1 General Description

The payoff profile of a digital deposit was explained in the previous section. The extra feature of a digital dual redemption bond (deposit) is that it provides the issuer also with the option to redeem the bond in the base currency or another currency.

If the issuer decides to redeem the bond in the foreign currency, the bond's face value is converted at an exchange rate defined when the bond is issued.

Example: Digital dual deposit

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & 12 months \\ \hline
Total principal & n.a. \\ \hline
Base currency & EUR \\ \hline
Issue price & 100\% \\ \hline
Coupon dates & at maturity \\ \hline
Coupons & 2.10\% if St&$l_{t}$; B, or
4.165\% if St≥B \\ \hline
Redemption option & see below \\ \hline
Denomination & EUR 72,673 \\ \hline
\end{tabular}
\end{document}
``` where

$S_{T} = \mathrm{EUR / CHF}$ exchange rate at maturity

$B =$ barrier of 0.6410 EUR/CHF

Redemption option: The issuer has the option of redeeming the bond in EUR or CHF. If the bond is redeemed in CHF, its face value will be converted into CHF at an exchange rate of 1.62 CHF/EUR.

The coupons are paid out in EUR regardless of the redemption currency.

# 5.9.2 Replication

For the purpose of valuation, digital dual deposits are first broken down into the coupon and the redemption amount.

The coupon can then be subdivided into a zero coupon bond and a digital call option. The face value of the coupon bond is equal to the lower coupon payment $k_{1}$, which the bearer of the bond receives in any case. If the barrier is exceeded, the digital call option pays an amount equal to the difference between the higher coupon $k_{2}$ and the lower coupon $k_{1}$.![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/7e0262c5-38a8-452c-a39e-267c7f9f56ef/2a9ed09b984e2da80ff27f00c8e0c223b9556cb6f2aaa76e9889902e0d358c4c.jpg)
Figure 5.3: Payoff pattern for the coupon payments in a digital deposit

The issuer can choose to redeem the bond in CHF or EUR. If the face value is paid back in CHF, it is converted at a rate of 1.62 CHF/EUR (i.e., 0.617 EUR/CHF). Therefore, the issuer will redeem the bond in CHF only if the exchange rate is below 0.617 EUR/CHF at the time of redemption. The redemption option can be replicated with the purchase of a conventional zero coupon bond and the sale of a (European-style) CHF put option with a strike price of 0.617 EUR/CHF.

In summary, we get:

$$

\begin{array}{c} + \text {D i g i t a l d u a l d e p o s i t} = + \text {c o u p o n b o n d} + \text {d i g i t a l c a l l o p t i o n (1)} +… + \text {d i g i t a l} \\ \text {c a l l o p t i o n (n)} - \text {p u t o p t i o n} \end{array}

$$ where

$$

\begin{array}{l} + = \text {l o n g p o s i t i o n} \\ - = \text {s h o r t p o s i t i o n} \\ \end{array}

$$

The nominal interest rate of the coupon bond is equivalent to the lower coupon payment, which will be paid out in any case.

The notional amount of the put option is equal to the amount to which the redemption option applies.

Features of the digital call options:

- One option for each coupon calculation date
- Payment of $(k_{1} - k_{2})^{*}N$ if the reference rate exceeds the barrier

Assuming a face value of EUR 100, we can replicate this instrument with:

- the purchase of a coupon bond with a face value of 100, a 1-year maturity and a nominal interest rate of $2.10\%$
- the purchase of a premium bond with a face value of 100, a 1-year maturity and a nominal interest rate of $2.10\%$.
- the purchase of a digital call option, with a barrier 0.614 EUR/CHF payoff: EUR 2.065
- the sale of a (European-style) put option on CHF 162 with a strike price of 0.617 EUR/CHF, expiring in 1 year

# 5.9.3 Valuation

The valuation of the zero coupon bond is based on the spot rate.

For information on valuating the digital call option, please refer to Section 5.8, Callable Digital Deposits.

The valuation of put options on foreign currencies was explained in Section 5.4, Dual Redemption Bonds.

# 5.10 Multi-Step Callable Digital Deposits

# 5.10.1 General Description

A multi-step digital deposit involves several levels of prespecified interest rates. The coupon that is actually paid out depends on the level of a reference exchange rate on each coupon date.

The level of the nominal interest rate on a previous coupon date, however, has no effect on the ensuing coupon payments.

Example: $7\%$ CHF/EUR-linked bond 1998-2018

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & December 10,1998, to December 9,2018 (20 years) \\ \hline
Total principal & EUR 7,267,283 \\ \hline
Issue price & 100\% \\ \hline
Base currency & EUR \\ \hline
Coupon dates & December 10 each year, starting on December 10,1999 \\ \hline
Coupons & 7\% if St ≤ Bl
5\% if Bl &$l_{t}$; St ≤ Bu
3\% if St &$g_{t}$; Bu \\ \hline
Early redemption right & callable annually by the issuer at face value, starting on December 10,2001 \\ \hline
Redemption & 100\% \\ \hline
Denomination & EUR 726.73 \\ \hline
\end{tabular}
\end{document}
``` where

$S_{t} = \mathrm{EUR / CHF}$ exchange rate at time $t$ (coupon date 1 to 20)

$B_{l}$ = lower barrier of 0.6541 EUR/CHF

$B_{u} =$ upper barrier of 0.6698 EUR/CHF

# 5.10.2 Replication

For the purpose of valuation, a multi-step digital deposit can be broken down into a conventional coupon bond (which, in turn, consists of a series of zero coupon bonds) and a portfolio of digital options. As in this example the instrument's coupon payment increases if the exchange rate drops, what we are looking at here is a series of digital put options.![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/7e0262c5-38a8-452c-a39e-267c7f9f56ef/bdb34fbab5d5d751fbd6b8dff169f81fe336f1cbcc65a95c14df2dd8d37971d5.jpg)
Figure 5.4: Payoff pattern for the coupon payments in a multi-step digital deposit

In order to replicate the annual coupon, we use a portfolio consisting of a zero coupon bond with a face value equaling the lowest interest rate $k_{1}$, a digital put option with barrier $B_{u}$ (the upper exchange rate barrier) and a digital put option with barrier $B_{l}$ (the lower exchange rate barrier). If one of the barriers is exceeded, the digital option pays an amount equal to the difference between the higher and the lower coupon for that step.

The number of steps in the digital deposit with which the coupon payment rises can be increased as desired. Depending on whether the coupon payments increase or decrease with the reference rate, the portfolio of digital options will consist of put or call options.

The issuer's call privilege is equivalent to a Bermuda call option on the multistep digital deposit described above, with a strike price equal to the bond's face value. The exercise dates are the same as the annual coupon dates.

In summary, we get:

```txt
- Multi-step digital deposit $= +$ coupon bond + digital call options (1) +...+ digital put option (n) - Bermuda call option
``` where
- = long position
- = short position

The nominal interest rate of the coupon bonds is equivalent to the lowest coupon payment, which will be paid out in any case. The coupon dates match the dates specified in the bond's issue terms.

Features of the digital put options (1):

- One option for each coupon calculation date
- Payment of $(k_{2} - k_{1})^{*}N$ if the reference rate goes below the upper exchange rate barrier $B_{u}$

Features of the digital put options (2):

- One option for each coupon calculation date
- Payment of $(k_{3} - k_{2})^{*}N$ if the reference rate goes below the lower exchange rate barrier $B_{o}$

Assuming a face value of EUR 100, we can replicate this instrument with:

- the purchase of a coupon bond with a face value of 100, a nominal interest rate of $3\%$ and a 20-year maturity
- the purchase of digital put options: One option for each day relevant for calculating the coupon, barrier: 0.6698 EUR/CHF payoff: EUR 2
- the purchase of digital put options:One option for each day relevant for calculating the coupon, barrier: 0.6541 EUR/CHF payoff: EUR 2
- the sale of a Bermuda call option on bond $B^{b}$ with a strike price of EUR 100

Bond $\mathbf{B}^{\mathrm{b}}$

# 5.10.3 Valuation

The zero coupon bond is valuated using the relevant spot interest rate.

The valuation of digital options was discussed in Section 1.8, Callable Digital Deposits.

There are no closed-form valuation formulas for Bermuda options. Therefore, numerical procedures have to be used.

# 5. Ii Fx-Linked Barrier Notes

# 5.11.1 General Description

The buyer of an FX-linked barrier note benefits from the appreciation of the reference currency as long as the exchange rate remains above or below a defined barrier. If the exchange rate breaches the barrier even once during the term of the instrument, however, the bearer of the bond will receive a lower coupon payment.

Investors will thus buy barrier notes if they do not expect the exchange rate to breach the specified barrier.

Example: USD/EUR-linked note

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & September 30,1998, to December 29,1998 (3 months) \\ \hline
Total principal & EUR 7,267,283 \\ \hline
Base currency & EUR \\ \hline
Issue price & 100\% \\ \hline
Coupon dates & December 30,1998 \\ \hline
Coupon & see below \\ \hline
Redemption & 100\% \\ \hline
Denomination & EUR 72,672.83 \\ \hline
\end{tabular}
\end{document}
```

Coupon: The nominal interest rate depends on the development of the EUR/USD exchange rate during the term of the instrument.

- If the EUR/USD exchange rate does not exceed the 0.9203 EUR/USD barrier at any time between September 30,1998, and December 28,1998 (the knock-out period), then the nominal interest rate is calculated using the following formula:

Nominal interest rate $= 0.01 + 1.5647^{*}max(S_{T} - 0.8436;0)$ where

$S_{t} = \mathrm{EUR / USD}$ exchange rate at maturity

- If the exchange rate barrier of 0.9203 EUR/USD is exceeded even once during the knock-out period, then the interest rate is $1\%$.

# 5.11.2 Replication

Barrier notes can be replicated with a coupon bond and a barrier option.

Barrier options generally have the same payoff profile as conventional options, but they are activated or deactivated when the value of the underlying asset goes above or below an agreed limit. On the basis of their features, barrier options can be subdivided into two categories:

- Knock-in options expire worthless unless the value of the underlying asset breaches a predefined barrier.
- Knock-out options only pay off if the value of the underlying asset breaches a predefined barrier.

The payoff profile in the example above is that of an up-and-out call option. As the issuer retains $80\%$ of the exchange rate increase, the value of the option is multiplied by the corresponding participation rate $(k)$.

In summary, we get:

$$
- \mathrm {F X} \text {b a r r i e r n o t e} = + \text {c o u p o n b o n d (1)} + \mathrm {k} ^ {*} \text {b a r r i e r o p t i o n}
$$ where

$$

\begin{array}{l} + = \text {l o n g p o s i t i o n} \\ - = \text {s h o r t p o s i t i o n} \\ k = \text {m u l t i p l i e r} \\ \end{array}

$$

Features of the barrier option:

- One option for each coupon calculation date
- Depending on the agreement made, the option might be a knock-in or a knock-out option.
- If the bearer of the bond profits from an appreciation of the foreign currency, then it is a barrier call option.
- If the bearer of the bond profits from a depreciation of the exchange rate, then it is a barrier put option.

Assuming a face value of EUR 100, we can replicate this instrument with:

- the purchase of a coupon bond with a face value of 100, a 3-month maturity and a nominal interest rate of $1\%$
- the purchase of a premium bond with a face value of 100, a 3-month maturity and a nominal interest rate of $2\%$.
- the purchase of an up-and-out call option on USD 1, expiration in 3 months, barrier 0.9203 EUR/USD, strike price 0.8436 EUR/USD, base currency EUR

In order to calculate the coupon, the value of the option is to be multiplied by $1.5647 *$ face value.

# 5.11.3 Valuation

The coupon bond is valuated using the relevant spot interest rate.

Barrier options cannot be valuated using closed-form valuation formulas. Merton (1973) as well as Reiner and Rubinstein (1991a) offer the appropriate formulas for each subtype of barrier option. For more information, please refer to: Espen Gaarder Haug, "The Complete Guide to Option Pricing Formulas," McGraw-Hill, 1997, p. 69

As an alternative, numerical methods can be used (cf. DeRosa, "Currency Derivatives," 1998, p. 275 ff., among others).

# 5.12 Fx Barrier Ranges

# 5.12.1 General Description

In FX barrier ranges, also called corridor notes or range protected deposits, a fixed nominal interest rate is defined as in the case of a coupon bond, but coupon is only paid out if the specified exchange rate remains within a certain range.

Investors will thus buy digital ranges if they expect the exchange rate to change very little and thus remain within the specified limits.

Example: FX range deposit EUR/USD

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & 6 months \\ \hline
Total principal & n.a. \\ \hline
Base currency & EUR \\ \hline
Issue price & 100\% \\ \hline
Coupon dates & at maturity \\ \hline
Coupons & see below \\ \hline
Redemption & 100\% \\ \hline
\end{tabular}
\end{document}
```

Coupon payments: The nominal interest rate is $4.985\%$ if the EUR/USD exchange rate does not breach any of the following limits during the term of the instrument (knock-out period):

Trigger 1: 0.885 EUR/USD
Trigger 2: 0.990 EUR/USD

If one of the above triggers is breached even once during the term of the instrument, an interest rate of $1.95\%$ is applied.

# 5.12.2 Replication

For the purpose of valuation, it is necessary to split the instrument up into its redemption amount and coupon. The redemption can be replicated easily with a zero coupon bond.

The coupon is further broken down into a zero coupon bond with a face value of $k_{1}$ * face value (1.95\%*N) and a digital range option.

The higher interest rate, $k_{2} - k_{1}$ (4.985\%–1.95\%), is paid out if the reference rate remains within the agreed limits over the entire term of the instrument. If one of the triggers is touched or breached even once, the option is rendered worthless from that time onward.![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/7e0262c5-38a8-452c-a39e-267c7f9f56ef/fe66315775c07a99a1f7457c5c794121ce9a7bccef33c3b6fa4c33477b40711d.jpg)
Figure 5.5: Payoff profile of a digital range

Digital ranges can be further broken down into the purchase of a down-and-out binary barrier option with a lower barrier $B_{l}$ and the sale of an up-and-in binary barrier option with the upper barrier $B_{u}$.

In summary, we get:

$$

\begin{array}{r l} + \text {F X b a r i e r r a n g e} & = + \text {c o u p o n b o n d} + \text {d o w n - and - o u t b i n a r y b a r i e r o p t i o n s} \\ & - \text {u p - and - i n b i n a r y b a r i e r o p t i o n s} \end{array}

$$ where

- = long position
- = short position

The nominal interest rate of the coupon bonds is equivalent to the lowest coupon payment, which will be paid out in any case. The coupon dates are the same as those in the bond's issue terms.

Features of the down-and-out binary barrier options:

- One option for each coupon calculation date
- The barrier equals the lower exchange rate trigger.
- Payoff of $(k_{2} - k_{1})^{*}N$ if the reference rate remains above the barriers

Features of the up-and-in binary barrier options:

- One option for each coupon calculation date
- The barrier equals the upper exchange rate trigger.
- Payment of $(k_{2} - k_{1})^{*}N$ if the reference rate exceeds the barrier even once

Assuming a face value of EUR 100, we can replicate this instrument with:

- the purchase of a coupon bond with a face value of 100, a 6-month maturity and a nominal interest rate of $1.95\%$
- the purchase of a premium bond with a face value of 100, a 6-month maturity and a nominal interest rate of $2.00\%$.
- the purchase of a down-and-out binary barrier option, expiration in 6 months, barrier 0.885 EUR/USD, payoff of EUR 3.035 if the exchange rate remains above the barrier
- the sale of an up-and-in binary barrier option, expiration in 6 months, barrier 0.990 EUR/USD, payoff of EUR 3.035 if the exchange rate exceeds the barrier

# 5.12.3 Valuation

The coupon bond is valuated using the relevant spot interest rate.

Binary barrier options cannot be valuated using closed-form valuation formulas. Reiner and Rubinstein (1991b) offer the appropriate formulas for each subtype of binary barrier option. For more information, please refer to: Espen Gaarder Haug, "The Complete Guide to Option Pricing Formulas," McGraw-Hill, 1997, p. 92

The numerical procedures for barrier option pricing are based in part on trinomial models. (cf. DeRosa, "Currency Derivatives," 1998, p. 304 ff.).

# 5.13 Callable Fx-Linked Foreign Currency Coupon Bonds

# 5.13.1 General Description

In the case of FX-linked foreign currency coupon bonds, the coupon paid depends on exchange rate developments. The coupon is reset for each interest period and continually rises or falls along with the reference exchange rate. This can happen at the beginning or the end of each interest period. The risk of extreme fluctuations in the interest rate paid can be reduced by defining upper and lower limits for the coupon.

Additional characteristics such as early call provisions enable issuers to redeem the bond if the exchange rate develops to their disadvantage.

Example: Foreign exchange-linked note

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & June 17,1998, to June 17,2008 (10 years) \\ \hline
Total principal & JPY 1,000,000,000 \\ \hline
Base currency & JPY \\ \hline
Issue price & 100.35\% \\ \hline
Coupon dates & semiannual, starting on December 17,1998 \\ \hline
Fixed interest & 3\% p.a.
June 17,1998, to June 16,1999 \\ \hline
Variable interest & June 17,1999, to June 16,2008
See below for calculation \\ \hline
Call provision & Callable on each coupon date, starting on June 17,1999 \\ \hline
Denomination & JPY 100,000,000 \\ \hline
\end{tabular}
\end{document}
```

Interest rate: The variable interest rate is calculated on each coupon date using the following formula:

$$

\max (U S D 4 6,153.84 ^ {*} F X _ {t} - J P Y 4,500,000; 0)

$$ where

$FX_{t} = \mathrm{JPY / USD}$ middle rate at time $t$ ( $t =$ first day of interest periods 3 to 20)

# 5.13.2 Replication

First the product has to be broken down into its redemption and coupon.

The fixed coupon payments can be replicated with the corresponding number of zero coupon bonds. A few simple rearrangements show which products can be used to replicate the variable coupon payments:

$$

\begin{array}{l} K = \max (U S D 4 6,153.84 ^ {*} F X _ {t} - J P Y 4,500,000; 0) = \\ = U S D 4 6,153.84 ^ {*} \max \left(F X _ {t} - 9 7.5 J P Y / U S D; 0\right) \\ \end{array}

$$

The payoff profile of the variable coupons is equivalent to a call on USD 46,153.84 with a strike price of 97.5 JPY/USD. In valuating the coupons, please note that they are not paid out at the time the option is exercised, but 6 months later.

The redemption can be replicated with another zero coupon bond. The issuer's call privilege is equivalent to the sale of a Bermuda call option on the bond with a strike price equal to the bond's face value and semiannual exercise dates.

In summary, we get:

- FX-linked foreign currency coupon = + zero coupon bond (1) bond

- zero coupon bonds (2)
- call options - Bermuda call option where
- = long position
- = short position

Zero coupon bond (1) is used to replicate the redemption.

Features of zero coupon bonds (2):

- One zero coupon bond for each coupon date with fixed interest
- Face value in the amount of the fixed coupon payment

Features of the call options:

One option for each coupon calculation date
- Strike price 97.5 JPY/USD
Face value USD 46,153.84
- Payoff on the following coupon date

Assuming a face value of JPY 100,000, we can replicate this instrument with:

- the purchase of a zero coupon bond with a face value of 100,000 and a 10-year maturity
- the purchase of $\sum_{t=1}^{2} zero\ coupon\ bond_{t}$ with a face value of 3,000 and maturity in $0.5 * t$ years
- the purchase of $\sum_{t=1}^{19}$ call option $t$ call options on USD 4.615384, expiration in $0.5 \times t$ years, strike price 97.50 JPY/USD, payoff 6 months later
- the sale of a Bermuda call option on the bond $B^{b}$ with a strike price of 100

# 5.13.3 Valuation

The valuation of the zero coupon bond is based on the spot rate.

The valuation of put options on foreign currencies was explained in Section 5.4, Dual Redemption Bonds.

There are no closed-form valuation formulas for Bermuda options, thus numerical procedures have to be used.

As the bond was issued in JPY, it is best to valuate the individual products in JPY using the appropriate interest rates and then convert the result (if desired) into EUR at the current exchange rate.

# 5.14 Dual Currency-Linked Bonds

# 5.14.1 General Description

The variant of a dual currency-linked bond (FX-linked foreign currency coupon bonds with an embedded currency option) described here is issued in a foreign currency. When paying the annual coupon, the issuer has the right to pay this amount, as predefined, in two currencies other than the base currency.

This option can be exercised on each coupon date. The decision made on one coupon date does not restrict the issuer's option on the ensuing coupon dates.

The coupon payment in each currency is determined by the applicable interest rate. For this purpose, the face value is translated at a predefined exchange rate and multiplied by the corresponding nominal interest rate.

Example: JPY 10 billion reverse dual currency bond

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & March 18,1996, to March 18,2026 (30 years) \\ \hline
Total principal & JPY 10 billion \\ \hline
Base currency & JPY \\ \hline
Issue price & 100.50\% \\ \hline
Coupon dates & annual, starting on March 18,1997 \\ \hline
Coupons & See below \\ \hline
Redemption & 100\% \\ \hline
\end{tabular}
\end{document}
```

Coupon: On each coupon date, the issuer can choose between the following coupon payments:

- $6.23\%$ in AUD, that is, AUD 8,057,423.69
- $5.83\%$ in SEK, that is, SEK 38,608,827.40

Thus the issuer will choose the more favorable currency on each coupon date. The bearer of the bond therefore bears the risk of exchange rate losses.

# 5.14.2 Replication

First the instrument has to be broken down into its redemption and coupons. The redemption can then be replicated with a conventional zero coupon bond.

Regarding the coupon payments, it is necessary to select those in one currency as base coupon $B$ and then to valuate them as a series of zero coupon bonds in that foreign currency.

If the issuer has the right to choose between two foreign currencies, this right can be seen as a short position in an exchange option from the investor's perspective. A European exchange option gives the bearer the right to exchange an underlying asset with the value $U_{T}$ for another underlying asset with the value $V_{T}$ at time $T$. The payoff profile of this option is as follows:

$$ m a x (V _ {T} - U _ {T}, 0)
$$

Therefore, if the issuer has the right to pay, for example, a coupon in the amount of AUD 80 or SEK 386, this is equivalent to the right to exchange the value of AUD 80 expressed in base currency $(V_T)$ for the value of SEK 386 expressed in base currency $(U_T)$. The base coupon in this notation is the amount in AUD.

In summary, we get:

$$
\begin{array}{l} + \text {D u a l c r e m e n c y - l i n k e d b o n d} = + \text {z e r o c o u p o n b o n d (1)} + \\ + \text {z e r o} \\ - \text {e x c h a n g e} \\ \end{array}
$$ where

$$

\begin{array}{l} + = \text {l o n g p o s i t i o n} \\ - = \text {s h o r t p o s i t i o n} \\ \end{array}

$$

Zero coupon bond (1) is used to replicate the redemption.

Features of zero coupon bonds (2):

- One bond for each coupon date
- Face value in the amount of the selected base coupon in the corresponding foreign currency

Features of the exchange options:

- One option for each coupon date
- The option gives the holder the right to exchange base coupon $B$ in one currency for coupon $K$ in another currency on the expiration date. The value of each coupon payment is expressed in the base currency. The payoff profile of this option is thus as follows: $\max (B - K;0)$

Assuming a face value of JPY 100,000, we can replicate this instrument with:

- the purchase of a zero coupon bond with a face value of 100,000 and a 30-year maturity
- the purchase of $\sum_{t=1}^{30}$ zero coupon foreign currency bonds $t$ zero coupon foreign currency bonds with a face value of AUD 8.057 and maturity in $t$ years
- the sale of $\sum_{t=1}^{30}$ exchange option $t$ granting the right to exchange SEK 38.609 for AUD 8.057.

Expiration of the option: $t$ years

# 5.14.3 Valuation

The valuation of the zero coupon bond is based on the spot rate.

For exchange options, there are closed-form valuation formulas based on the assumption that the exchange rates of the reference currencies each follow a geometric Brownian motion.

At time $t = 0$, the value of an option which enables the holder to purchase one foreign currency ( $V$ ) with another foreign currency ( $U$ ) is as follows:

$$

V _ {0} e ^ {- r _ {V} T} N \left(d _ {1}\right) - U _ {0} e ^ {- r _ {U} T} N \left(d _ {2}\right)

$$

Formula 3.5: Value of an exchange option where

$$ d _ {1} = \frac {l n (V _ {0} / U _ {0}) + (r _ {V} - r _ {U} + \hat {\sigma} ^ {2} / 2) T}{\hat {\sigma} \sqrt {T}}
$$

$$ d _ {2} = d _ {1} - \hat {\sigma} \sqrt {T}
$$

$$
\hat {\sigma} = \sqrt {\sigma_ {U} ^ {2} + \sigma_ {V} ^ {2} - 2 \rho \sigma_ {U} \sigma_ {V}}
$$ where

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
$V_{0}$ & current exchange rate of a reference currency (the value of one unit of the foreign currency, expressed in base currency) \\ \hline
$U_{0}$ & current exchange rate of the other reference currency \\ \hline ρ & correlation between the two reference currencies \\ \hline rV & risk-free interest rate in the first reference currency \\ \hline rU & risk-free interest rate in the other reference currency \\ \hline
T & period of the option, i.e., years until the exercise date \\ \hline σ & volatility of each reference rate \\ \hline
N(x) & cumulative standard normal distribution at x \\ \hline
\end{tabular}
\end{document}
```

# 5.15 Triple Currency-Linked Bonds

# 5.15.1 General Description

In the variant of triple currency-linked bonds described here, the issuer has the right to choose among three currencies other than the base currency when paying the annual coupon.

This option can be exercised on each coupon date. The decision made on one coupon date does not restrict the issuer's option on the ensuing coupon dates.

The coupon payment in each currency is determined by the applicable interest level. For this purpose, the face value is translated at a predefined exchange rate and multiplied by the corresponding nominal interest rate.

Example: JPY 10 billion reverse dual currency bond

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & November 20,1995, to November 20,2015 (20 years) \\ \hline
Total principal & JPY 10 billion \\ \hline
Base currency & JPY \\ \hline
Issue price & 100.50\% \\ \hline
Coupon dates & annual, starting on November 20,1996 \\ \hline
Coupons & See below \\ \hline
Redemption & 100\% \\ \hline
\end{tabular}
\end{document}
```

Coupon: On each coupon date, the issuer can choose between the following coupon payments:

- $5.80\%$ in AUD, that is, AUD 7,631,578.95
- $5.30\%$ in SEK, that is, SEK 35,222,661.20
- $6.00\%$ in USD, that is, USD 5,956,517.42

Thus the issuer will choose the more favorable currency on each coupon date. The bearer of the bond therefore bears the risk of exchange rate losses.

# 5.15.2 Replication

First the instrument has to be broken down into its redemption and coupons. The redemption can then be replicated with a conventional zero coupon bond.

Regarding the coupon payments, it is necessary to select those in one currency as base coupon B and then to valuate them as a series of zero coupon bonds in that foreign currency.

The issuer's right to choose among three currencies on the coupon date is equivalent to an option on the minimum of three underlying assets. In other words, the issuer has the right to exchange the base coupon for the lower of the two coupons in the additional currencies.

The issuer's option thus corresponds to the following payoff profile:

$$

\max \left(B _ {T} - \min \left(K _ {1, T}; K _ {2, T}\right); 0\right)

$$

From the investor's perspective, this right is equivalent to the sale of a put option. If the holder of the option (the issuer) exercises this right, then he/she can choose between two coupon currencies when delivering the underlying asset. The strike price to be paid by the seller of the option (i.e., the investor) is equal to the value of the base coupon $B$ at time $T$.

In summary, we get:

$$
- \text {T r i p l e c u r r e n c y - l i n k e d b o n d} = + \text {z e r o c o u p o n b o n d (1) + z e r o c o u p o n} \quad \text {b o n d s (2) - p u t o p t i o n o n the l o w e r o f t w o} \quad \text {u n d e r l y i n g a s s e t s}
$$ where

$$

\begin{array}{l} + = \text {l o n g p o s i t i o n} \\ - = \text {s h o r t p o s i t i o n} \\ \end{array}

$$

Zero coupon bond (1) is used to depict the redemption.

Features of zero coupon bonds (2):

- One bond for each coupon date
- Face value in the amount of the selected base coupon in the corresponding foreign currency

Features of the put option on the lower of two underlying assets

- One option for each coupon date
- The option gives the holder the right to exchange base coupon B in one currency for coupon $K_{1}$ or $K_{2}$, each paid in another currency, on the expiration date. The value of each coupon payment is expressed in EUR. The payoff profile of this option is thus as follows:

$$ m a x (B _ {T} - m i n (K _ {1, T}; K _ {2, T}); 0)
$$

Assuming a face value of JPY 100,000, we can replicate this instrument with:

- the purchase of a zero coupon bond with a face value of 100,000 and a 20-year maturity
- the purchase of $\sum_{t=1}^{20}$ zero coupon foreign currency bond $t$ with a face value of AUD 7.632 and maturity in $t$ years
- the sale of $\sum_{t=1}^{20}$ put options $t$ put options granting the right to exchange AUD 7.632 for the lower of SEK 35.223 and USD 5.957. Expiration of the option: $t$ years

# 5.15.3 Valuation

The zero coupon bonds can be valuated using the relevant spot interest rate.

Closed-form valuation formulas exist for the option on the minimum or maximum of two underlying assets. For more information, please refer to: Espen Gaarder Haug, "The Complete Guide to Option Pricing Formulas," McGraw-Hill, 1997, p. 56

For the instrument in this example, another factor is that the strike price is not a risk-neutral, fixed amount but also a risky asset.

# 5.16 Variable Redemption Bonds

# 5.16.1 General Description

Variable redemption bonds pay a fixed coupon during their term, but the final redemption amount paid out at maturity depends on exchange rate developments. As a rule, the redemption amount is calculated on the basis of the gain or loss in the exchange rate (expressed as a percentage).

In many cases, upper and/or lower limits are defined for the redemption amount in order to avoid the effects of extreme fluctuations. Depending on the bond's terms of issue, however, the investor could even lose the principal amount.

Example: $5\%$ CHF/EUR-linked bond 1998-2002/2003

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & April 02,1998, to April 1,2002 (4 years) \\ \hline
Total principal & 100.50\% \\ \hline
Base currency & EUR \\ \hline
Coupon dates & annual, starting on April 2,1999 \\ \hline
Interest rate & 5\% p.a. \\ \hline
Redemption & see below \\ \hline
Denomination & EUR 727 \\ \hline
\end{tabular}
\end{document}
```

Redemption: The redemption rate (in percent) is calculated using the following formula

$$
T = 100 ^ {*} \left(1 + \frac {0.654 - F X}{0.654}\right)
$$ where

$\mathrm{FX} = \mathrm{EUR / CHF}$ exchange rate on March 27,2002

However, the redemption rate must be at least $80\%$ of the bond's face value. The bearer of the bond thus bears the risk that the value of the CHF will increase against the EUR. If the exchange rate drops, the investor receives a higher return than that on the capital market.

# 5.16.2 Replication

This product can be replicated with a conventional coupon bond and a combination of a forward contract and a call option.![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/7e0262c5-38a8-452c-a39e-267c7f9f56ef/41fb770af4fc87553d359851012b750db4eea77a98c229289864004e65f1cd0e.jpg)
Figure 5.6: Payoff pattern for the coupon payments in a digital deposit

In order to make the individual products more recognizable, the formula for calculating the redemption amount can be simplified as follows:

$$

\begin{array}{l} T = \max \left(8 0; 100 ^ {*} (1 + \frac {0.654 - F X}{0.654})\right) = \\ = \max \left(8 0; 100 + \frac {100}{0.654} ^ {*} (0.654 - F X)\right) = \\ = 100 + \max \left(- 2 0; \frac {100}{0.654} (0.654 - F X)\right) = \\ = 100 - \frac {100}{0.654} ^ {*} (F X - 0.654) + \max \left(- 2 0 - \frac {100}{0.654} ^ {*} (0.654 - F X); 0\right) = \\ = 100 - \frac {100}{0.654} ^ {*} (F X - 0.654) + \frac {100}{0.654} ^ {*} \max (F X - 0.785; 0) \\ \end{array}

$$

This simplification makes it clear that the bearer of the bond holds a short position in a forward contract on CHF 100/0.654.

Payoff profile of a forward contract: Long position: $S_{T} - X$

Short position: $X - S_{T}$ where

$S_{T} =$ exchange rate at maturity

$X =$ strike price

As the redemption rate is subject to a lower limit of $80\%$, the investor also holds 100/0.654 call options on the CHF with a strike price of 0.785 EUR/CHF, in addition to the forward contracts.

In summary, we get:

+Variable redemption bond $=$ +coupon bond

$$

\begin{array}{l} - k ^ {*} \text {for w a r d c o n t r a c t} \\ + k ^ {*} \text {c a l l o p t i o n} \\ \end{array}

$$ where

- = long position
- = short position

$k =$ multiplier

Assuming a face value of 100, we can replicate this instrument with:

- the purchase of a coupon bond with a face value of 100, a 4-year maturity and a nominal interest rate of $5\%$
- the purchase of a premium bond with a face value of 100, a 5-year maturity and a nominal interest rate of $5\%$.
- the sale of $k$ forward contracts on CHF 1 with a strike price of 0.654, expiration in 4 years
- the purchase of $k$ call options on CHF 1 with a strike price of 0.785, expiration in 4 years where $k = 100 / 0.654$

# 5.16.3 Valuation

The valuation of the coupon bond is based on the spot rate. For information on valuating call options on foreign currencies, please refer to Section 1.4, Dual Redemption Bonds. The value of a forward contract is calculated using the following formula:

$$ f = S _ {0} e ^ {- r _ {f} T} - K e ^ {r t}
$$

Formula 8.6: Value of a forward contract where

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
$S_{0}$ & current exchange rate (the value of one unit of the foreign currency, expressed in base currency) \\ \hline r & risk-free interest rate in the base currency \\ \hline rf & risk-free interest rate in the foreign currency \\ \hline
T & term of the forward contract \\ \hline
K & agreed price \\ \hline
\end{tabular}
\end{document}
```

# 5.17 Range Variable Redemption Bonds

# 5.17.1 General Description

This form of variable redemption bond is a fixed-interest bond which is redeemed at face value when the reference exchange rate lies within a certain range on the redemption date.

If the reference rate is above the upper limit of the range on the redemption date, the redemption rate will be higher than $100\%$. The exact redemption amount depends on the percentage increase of the reference rate over the upper exchange rate limit.

If the reference rate is below the lower limit of the range on the redemption date, the redemption rate will be lower than $100\%$. In such cases, the bearer of the bond loses part of the principal amount. The exact redemption amount depends on the percentage decrease of the reference rate below the lower exchange rate limit.

The bearer of a range variable redemption bond thus generally participates in the performance of a reference currency; however, the investor does not lose any of the principal amount until the reference exchange rate falls below a certain value. At the same time, however, the investor only profits from an increase in the reference exchange rate once it has exceeded a certain upper limit.

Example: FX-linked $4.42\%$ note

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & May 5,1998, to May 11,1999 (1 year) \\ \hline
Total principal & USD 10,000,000 \\ \hline
Issue price & 100\% payable in JPY at an exchange rate of 131.5 JPY/USD \\ \hline
Base currency & USD \\ \hline
Coupon dates & at maturity \\ \hline
Interest rate & 4.42\% p.a. \\ \hline
Redemption & see below \\ \hline
Denomination & USD 1,000,000 \\ \hline
\end{tabular}
\end{document}
```

Redemption: The redemption amount is

- $100\%$ of the face value $\left(2 - \frac{131.50}{FX_T}\right)$ if $FX_{T} \geq 131.50$.
- $100\%$ of the face value if $131.5 > FX_{T} \geq 116.5$
- $100\%$ of the face value $\left(2 - \frac{116.50}{FX_T}\right)$ if $FX_{T} < 116.5$ where $\mathrm{FX_T} = \mathrm{JPY / USD}$ exchange rate 10 banking days before the maturity date

The redemption amount cannot be a negative number.

The fact that the face value has to be paid in JPY when the bond is issued has no effect on replication. If the translation rate does not match the actual exchange rate on the date of issue, the issue price need only be adjusted from the $100\%$ level.

# 5.17.2 Replication

For the purpose of valuation, it is first necessary to split the instrument up into its redemption amount and coupon. The fixed coupon is the equivalent of a zero coupon bond with a face value equaling the amount of the interest rate.

The redemption payoff profile can be depicted schematically as follows:![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/7e0262c5-38a8-452c-a39e-267c7f9f56ef/0287f71b5edab0438da02153b925654ae39f84cb50faf06e96099bc4b741719b.jpg)

Figure 5.7: Schematic payoff diagram for a range FX-linked note

If the rate exceeds the upper barrier of 131.50 on the redemption date, the bearer of the bond will receive $100\%$ face value $\left(2 - \frac{131.50}{FX_T}\right)$.

This formula can also be expressed as follows:

Redemption amount $= 100\%$ face value $+ \frac{100\%\text{face value}}{FX_T} * (FX_T - 131.50)$ where $FX_{T} = \mathrm{JPY / USD}$ exchange rate on the reference date

This formula is only used in cases where $FX_{T} \geq 131.50$. Thus the expression " $FX_{T} - 131.50"$ is equivalent to a call on USD 1 with a strike price of 131.50 JPY/USD. However, please note that in the notation above the JPY is regarded as the base currency of the option. This is not ideal because the bond's base currency is USD.

A call option on one currency, however, can always be seen as a put option on the other currency. On the basis of this fact, the following rearrangements can be made:

$$
\begin{array}{l} \frac {100 \% \text {face value}}{F X _ {T}} * \max \left(F X _ {T} - 131.50; 0\right) = \\ = \frac {100 \% \text {face value}}{F X _ {T}} * 131.50 ^ {*} \max \left(\frac {F X _ {T}}{131.50} - 1; 0\right) = \\ = \frac {100 \% ^ {*} \text {face value}}{F X _ {T}} * 131.50 ^ {*} F X _ {T} ^ {*} \max \left(\frac {1}{131.50} - \frac {1}{F X _ {T}}; 0\right) = \\ = 100 \% \text {face value} ^ {*} 131.50 ^ {*} \max \left(\frac {1}{131.50} - \frac {1}{F X _ {T}}; 0\right) \\ \end{array}
$$

Thus the formula can also be regarded as a put option on JPY. In order to replicate the bond's payoff profile, the value of this option has to be multiplied by "100\% * face value * 131.5."

If the lower limit of 116.50 JPY/USD is breached, the bearer of the bond receives $100\%$ *face value\* $\left(2 - \frac{116.50}{FX_T}\right)$.

In this case as well, the formula can also be expressed as follows:

Redemption amount $= 100\%$ face value $+ \frac{100\%\text{face value}}{FX_T} * (FX_T - 116.50)$ where $FX_{T} = \mathrm{JPY / USD}$ exchange rate on the reference date

As this formula is only applied if $FX_{T} < 116.50$, the expression " $FX_{T} - 116.50"$ always results in a negative value. Therefore, the payoff profile is equivalent to a short position in a put option on USD 1 with a strike price of 116.50 JPY/USD. Here it is also necessary to note that the JPY is regarded as the base currency. After some rearrangement, the case of $FX_{T} < 116.50$ results in the following:

$$
100 \% \text {face value} ^ {*} 116.50 ^ {*} \min \left(\frac {1}{116.50} - \frac {1}{F X _ {T}}; 0\right)
$$

Thus the formula can be depicted as the sale of a call option on JPY 1. In this case as well, the value of the option has to be multiplied by $100\%$ * face value * 116.5 in order to replicate the payoff profile of the bond.

As the value of the bond cannot be a negative number, this floor has to be accounted for in the replication of the redemption amount. The formula applied to reflect a reference exchange rate that is below the lower barrier yields a negative value once the exchange rate has dropped to 58.25 JPY/USD or below. Therefore, a short position in a call option on JPY with a strike price of 1/58.25 USD/JPY also has to be included. The value of the option is to be multiplied by " $100\%$ * face value * 116.5."

However, as the option is far out of the money, its value approaches zero in this case.

In summary, we get:

- Range variable redemption bond = + Zero coupon bond (1)

$$
- Z e r o c o u p o n b o n d (2)
$$

$$
- k _ {P} ^ {*} \text {p u t o p t i o n}
$$

$$
- k _ {C} ^ {*} \text {c a l l o p t i o n (1)}
$$

$$
- k _ {C} ^ {*} \text {c a l l o p t i o n (2)}
$$ where

$$

\begin{array}{l} + = \text {l o n g p o s i t i o n} \\ - = \text {s h o r t p o s i t i o n} \\ \end{array}

$$

$$

\begin{array}{l} k _ {P} = 100 \% * \text {face value} \left(\frac {1}{\text {put option strike price}}\right) \\ k _ {C} = 100 \% * \text {face value} \left(\frac {1}{\text {call option (1) strike price}}\right) \\ \end{array}

$$

The zero coupon bonds (1) and (2) serve to replicate the fixed coupon and the redemption at $100\%$ of face value.

The put option and call option (1) reflect the bond creditor's participation in the performance of the exchange rate. The second call option (2) is used to depict the lower limit of the redemption amount.

Assuming a face value of USD 100, we can replicate this instrument with:

- the purchase of a zero coupon bond with a face value of 104.42 and a 1-year maturity
- the purchase of 13,150 put options on JPY 1, expiration in 1 year, strike price $\frac{1}{131.50}$ USD/JPY
- the sale of 11,650 call options on JPY 1, expiration in 1 year, strike price $\frac{1}{116.50}$ USD/JPY
- the purchase of 11,650 call options on JPY 1, expiration in 1 year, strike price $\frac{1}{58.25}$ USD/JPY

# 5.17.3 Valuation

The zero coupon bond is valuated using the spot interest rate applicable to USD.

For more information on valuating European options on foreign currencies, please refer to 5.4, Dual Redemption Bonds.

# 5.18 Dual Currency Variable Redemption Bonds

# 5.18.1 General Description

A dual currency variable redemption bond is a fixed-interest bond whose redemption amount depends on the performance of two reference currencies. Depending on lower limits that may have been defined for the redemption amount, the interest paid on such a bond is more or less below the market level.

Example: Investment-guaranteed market-linked notes 1996-1999/5

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & November 8,1996, to November 7,1999 (3 years) \\ \hline
Total principal & EUR 1,454,000 \\ \hline
Issue price & 100\% \\ \hline
Base currency & EUR \\ \hline
Coupon dates & annual, starting on November 8,1997 \\ \hline
Interest rate & 2\% p.a. \\ \hline
Redemption & see below \\ \hline
Denomination & EUR 727 \\ \hline
\end{tabular}
\end{document}
```

Redemption: Redemption is carried out on November 8,1999, according to the following formula:

$$

T = 100 + S

$$

$$

S = \frac {P}{100} * \frac {A + (- B)}{2}

$$

$$

A = \frac {\mathrm {U S D} / \mathrm {E U R} \text {e x c h a n g e r a t e o f N o v e m b e r 3,1999} - \mathrm {U S D} / \mathrm {E U R} \text {e x c h a n g e r a t e o f N o v e m b e r 6,1996}}{\mathrm {U S D} / \mathrm {E U R} \text {e x c h a n g e r a t e o f N o v e m b e r 6,1996}}

$$

Should the formula above yield a negative value, A is equal to zero.

$$

B = \frac {\text {S F R / E U R e x c h a n g e r a t e o f N o v e m b e r 3,1999} - \text {S F R / E U R e x c h a n g e r a t e o f N o v e m b e r 6,1996}}{\text {S F R / E U R e x c h a n g e r a t e o f N o v e m b e r 6,1996}}

$$

Should the formula above yield a positive value, B is equal to zero.
where

$T =$ redemption rate as a percentage of the face value $P =$ participation rate $(= 100)$

The minimum redemption rate is $100\%$ of face value.

# 5.18.2 Replication

As both of the components have their own lower limit for the calculation of the redemption rate, the formula for calculating the redemption amount can be split into two separate components.

$$

\begin{array}{l} S = P ^ {*} \frac {A + (- B)}{2} = \frac {P ^ {*} A}{2} + \frac {P ^ {*} (- B)}{2} \\ A = \frac {1}{S _ {0}} \max \left(0; S _ {T} - S _ {0}\right) \text {and} \\ - B = \frac {- 1}{S _ {0}} \min (0; S _ {T} - S _ {0}) = \frac {1}{S _ {0}} \max (0; S _ {0} - S _ {T}) \\ \end{array}

$$ where

$S_0 =$ exchange rate on the bond's issue date

$S_{T} =$ exchange rate on the redemption date

For the purpose of valuation, therefore, the instrument can be replicated with a conventional coupon bond, a USD call option and an SFR put option. The strike price of both options $(X)$ equals $S_0$.

In summary, we get:

```txt
- Dual currency variable redemption bond $= +$ Coupon bond $+k_{1}*$ call option $+k_{2}*$ put option
``` where

- = long position
- = short position

$k_{1}, k_{2} =$ multipliers

Assuming a face value of EUR 100, we can replicate this instrument with:

- the purchase of a coupon bond with a face value of 100, a 3-year maturity and a nominal interest rate of $2\%$
- the purchase of a premium bond with a face value of 100, a 5-year maturity and a nominal interest rate of $4\%$.
- the purchase of $k_{1}$ call options on USD 1 with a strike price of $S_{0}$ EUR/USD and expiration in 3 years
- the purchase of $k_{2}$ put options on SFR 1 with a strike price of $S_{0}$ EUR/SFR and expiration in 3 years where

$S_0 = \mathrm{EUR} / \mathrm{USD}$ or EUR/SFR exchange rate on the bond's issue date

# 5.18.3 Valuation

The coupon bond can be valuated using the relevant spot rate.

The valuation of European options was discussed in Section 1.4, Dual Redemption Bonds.

# 5.19 Knock-Out/Knock-In Variable Redemption Bonds

# 5.19.1 General Description

Knock-out/knock-in variable redemption bonds pay a fixed coupon during the term of the instrument. In addition, the bearer of the bond has the opportunity to participate in the performance of a reference currency in relation to the base currency.

The expressions "knock-out" and "knock-in" typically refer to events during a specified period of time in the context of financial instruments. In the example given here, they refer to events on given reference dates.

In the case of knock-out bonds, the investor benefits from an appreciation of the exchange rate if the latter is below a predefined limit on the maturity date. If the exchange rate exceeds this limit on the redemption date, the redemption rate will only be $100\%$.

Knock-in bonds are generally redeemed at $100\%$ of face value. If the exchange rate exceeds a certain limit on the redemption date, the bearer of the bond will also benefit from the appreciation of the reference currency.

Example: Knock-out FX-linked note – 1\% EUR/USD option bond 95/1

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & March 14,1995, to March 26,1996 (1 year) \\ \hline
Issue price & 100\% \\ \hline
Base currency & EUR \\ \hline
Coupon dates & at maturity \\ \hline
Interest rate & 1\% p.a. \\ \hline
Redemption & see below \\ \hline
Denomination & EUR 51.13 \\ \hline
\end{tabular}
\end{document}
```

Redemption: The redemption rate is $100\%$ plus $110\%$ of the increase in the value of the USD in relation to the EUR in the period from March 10,1995, to March 18,1996, if the EUR/USD exchange rate is no higher than EUR/USD 0.7925 on March 18,1996.

Redemption rate $= 100\% + 110\%\left(\frac{S_T - S_0}{S_0}\right)$, if $S_T \leq 0.7925$ EUR/USD

# 5.19.2 Replication

The guaranteed redemption amount of $100\%$ and the fixed coupon can be replicated with conventional coupon bonds.

The possibly higher redemption amount can be replicated with a portfolio of options. The value of this portfolio has to be multiplied by the corresponding participation rate $k$ where applicable. In the example above, $k = 1.1 / S_0$.![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/7e0262c5-38a8-452c-a39e-267c7f9f56ef/c156a636d7b0698dab562835c5ba3e86fba7df99c0b1064c95417f163c67f14a.jpg)
Figure 5.8: Payoff profile for the redemption of a knock-out bond

The payoff profile of the knock-out bond is equivalent to a portfolio consisting of a capped call option and the sale of a digital call option. The capped call, in turn, consists of a long position in a call option with a low strike price and a short position in a call option with a higher strike price. As the cash flows from the two options offset each other when the higher strike price is reached, the maximum the holder of this portfolio will receive is the difference between the upper and lower strike price.

As the additional redemption amount falls to zero in a knock-out bond, the portfolio has to be supplemented with a short position in a digital call option which pays an amount equal to the cap when the upper limit is reached.

In contrast to the example above, the redemption amount of a knock-in bond does not increase unless the exchange rate exceeds a certain rate on the reference date. Thus the following payoff profile results:![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/7e0262c5-38a8-452c-a39e-267c7f9f56ef/c42643ca24eba024a4f7e9738f355308424711621632395bc83a2ad181b0a0a6.jpg)
Figure 5.9: Payoff profile for the redemption of a knock-in bond

The payoff profile of a knock-in bond can be replicated with the purchase of a call option with a strike price equal to the defined exchange rate barrier $S_{Barrier}$ and with the purchase of a digital call option which pays the difference between $S_{Barrier}$ and the exchange rate at the time of issue ( $S_0$ ) if the exchange rate barrier $S_{Barrier}$ is reached.

In summary, we get:

+Knock-out variable redemption bond $= +$ coupon bond
- $k^{*}$ call option (1)
- $k^*$ call option (2)
- $k^{*}$ digital call option

+Knock-in variable redemption bond $= +$ coupon bond
- $k^{*}$ call option (2)
- $k^{*}$ digital call option where

$$
- = \text {l o n g p o s i t i o n}
$$

- = short position

$k =$ multiplier

The strike price of call option (1) is the same as the exchange rate on the bond's issue date.

The strike price of call option (2) is the same as the exchange rate barrier.

If the barrier is exceeded, the digital call option pays an amount equal to the difference between the exchange rate barrier and the exchange rate on the bond's issue date.

Assuming a face value of EUR 51.13, we can replicate this instrument with: the purchase of a coupon bond with a face value of 51.13, a 1-year maturity and a nominal interest rate of $1\%$
- the purchase of $k$ call options on USD 1 with a strike price of 0.7158 and expiration in 1 year
- the sale of $k$ call options on USD 1 with a strike price of 0.7925 and expiration in 1 year
- the sale of $k$ digital call options which pay 0.0767 if the 0.7925 EUR/USD barrier is exceeded.
where $k =$ face value* $\frac{\text{participation factor}}{S_0} = 100 * \frac{110\%}{0.7158}$

# 5.19.3 Valuation

The valuation of the coupon bond is based on the spot rate.

Closed formulas for the valuation of call options on foreign currencies were discussed in Section 5.4, Dual Redemption Bonds.

For information on valuating digital options, please refer to Section 5.8, Callable Digital Deposits.

# 5.20 Fx-Linked Zero Coupon Bonds With Caps

# 5.20.1 General Description

Like a conventional zero coupon bond, an FX-linked zero coupon bond does not pay a coupon during its term. In contrast to the standard case, however, the face value here is not discounted with a fixed interest rate upon issue, but the redemption amount is increased accordingly. The final redemption rate depends on the development of an exchange rate up to the time of the bond's maturity. Frequently, the redemption rate is calculated on the basis of the gain or loss in the exchange rate (expressed as a percentage).

In some cases, upper and/or lower limits are defined for the redemption amount in order to avoid the effects of extreme fluctuations.

Example: Zero coupon notes due July 16,1996

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & January 16,1996, to July 16,1996 (6 months) \\ \hline
Total principal & USD 12,200,000 \\ \hline
Issue price & 100.50\% \\ \hline
Base currency & USD \\ \hline
Redemption & see below \\ \hline
Denomination & USD 5,000 \\ \hline
\end{tabular}
\end{document}
```

Redemption: The redemption rate (in percent) is calculated using the following formula:

$$

T = 100\% +100\%\left(\frac{FX_{T} - 102}{FX_{T}}\right)^{*}1.50

$$ where

$FX_{T} = \mathrm{JPY / USD}$ exchange rate on July 12,1996

The redemption rate is at least $100\%$ and at most $110.43\%$ of the bond's face value.

# 5.20.2 Replication

For the purpose of valuation, the product can be broken down into a conventional zero coupon bond and a capped call.![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/7e0262c5-38a8-452c-a39e-267c7f9f56ef/fd5bccd842c831ffe751e9f1dd5f827e4a13f00609c4cf2179002fee909f856a.jpg)
Figure 5.10: Payoff profile for the redemption of an FX-linked zero coupon bond with cap

As the redemption amount has a lower limit of $100\%$, the expression " $FX_{T} - 102"$ in the redemption rate's calculation formula is equivalent to a capped call on USD 1 with a strike price of 102 JPY/USD. However, please note that in the notation above the yen is regarded as the base currency.

A call option on one currency can always be seen as a put option on the other currency. On the basis of this fact, the following rearrangements can be made:

$$

\begin{array}{l} \frac{150\%}{FX_{T}}{}^{*}max(FX_{T} - 102;0) = \frac{150\%}{FX_{T}}{}^{*}102^{*}max\left(\frac{FX_{T}}{102} -1;0\right) = \\ = \frac {150 \%}{F X _ {T}} * 102 ^ {*} F X _ {T} ^ {*} \max \left(\frac {1}{102} - \frac {1}{F X _ {T}}; 0\right) = 150 \% * 102 ^ {*} \max \left(\frac {1}{102} - \frac {1}{F X _ {T}}; 0\right) \\ \end{array}

$$

Thus the formula can also be regarded as a put option on JPY. In order to replicate the bond's payoff profile, the value of this option has to be multiplied by $150\% * 102$ face value.

The upper limit of the redemption rate (cap) can be replicated with the sale of a call option on USD 1 with a strike price of 109.62 JPY/USD. The strike price of the option is determined by a simple reverse calculation. After rearrange- ments analogous to the ones above, the following formula results to account for the cap:

$$
-150\% *102^{*}min\left(\frac{1}{109.62} -\frac{1}{FX_{T}};0\right)
$$

This is equivalent to the sale of a put option on JPY. In this case as well, the value of the put option still has to be multiplied by $150\% * 102$ face value in order to replicate the payoff profile of the bond.

In summary, we get:

$$

\begin{array}{l} + \text {F X - l i n k e d z e r o with c a p} = + \text {Z e r o c o u p o n b o n d} \\ + k ^ {*} \text {p u t} (1) \\ - k ^ {*} \text {p u t} (2) \\ \end{array}

$$ where

$$

\begin{array}{l} + = \text {l o n g p o s i t i o n} \\ - = \text {s h o r t p o s i t i o n} \\ k = \text {m u l t i p l i e r} \\ \end{array}

$$

Assuming a face value of USD 100, we can replicate this instrument with:

- the purchase of a zero coupon bond with a face value of 100 and a 6-month maturity
- the purchase of $k$ put options on JPY 1 with a strike price of $\frac{1}{102}$ USD/JPY and expiration in 6 months
- the sale of $k$ put options on JPY 1 with a strike price of $\frac{1}{109.62}$ USD/JPY and expiration in 6 months where $k = 150\% * 102$ face value

# 5.20.3 Valuation

The valuation of the coupon bond is based on the spot rate.

For information on valuating European options on foreign currencies, please refer to Section 5.4, Dual Redemption Bonds.

# 5.21 Cumulated Fx-Linked Zero Coupon Bonds With Call Options

# 5.21.1 General Description

Like a conventional zero coupon bond, an FX-linked zero coupon bond does not pay a coupon during its term. In contrast to the standard case, however, the face value here is not discounted with a fixed interest rate upon issue, but the redemption amount is increased by an amount which depends on an exchange rate and includes compound interest.

Example: Callable EUR/CHF-linked zero

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & August 6,1999, to August 6,2029 (30 years) \\ \hline
Total principal & EUR 11,000,000 \\ \hline
Issue price & 100\% \\ \hline
Coupons & none \\ \hline
Early redemption right & on August 6 each year (starting in 2002) at a rate of initialvalue Πi=1n(1 + yieldi) \\ \hline
Redemption & initialvalue Πi=130(1 + yieldi) \\ \hline
Denomination & EUR 500,000 \\ \hline
\end{tabular}
\end{document}
``` where

$n$ $=$ redemption date, $n = 3\dots 30$

Yield $i =$ yield for year $i$

The yield for each year is calculated as follows:

Yield for years 1 to 3: $9.25\%$ (fixed)

Yield for years 4 to 30: (0.6864 EUR/CHF minus FX) * 100, minimum 4\%, maximum 9.25\%.

# 5.21.2 Replication

First, the instrument can be broken down into one part with a predefined yield and one part with a variable yield. The redemption amount arising from the fixed yield in years 1 to 3 is the equivalent of a zero coupon bond with a face value of $100 * (1.925)^{3}$ and maturity in 30 years.

The yield for years 4 to 30 is calculated on the basis of the EUR/CHF exchange rate and added to the principal annually. The annual yield in the example above is calculated using the following formula: 0.6864 EUR/CHF - FX.![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/7e0262c5-38a8-452c-a39e-267c7f9f56ef/bb6b9991b8daaf16dda2d4783c15151a9d307ca74858f8883e25d477e3daaa81.jpg)
Figure 5.11: Annual yield from the 4th year

While this payoff profile can be replicated with the purchase of a call option and the sale of a put option in the $4^{\text{th}}$ year, this is no longer possible from the $5^{\text{th}}$ year onward due to the fact that the variable yield is added to the principal.

The issuer's early redemption option is equivalent to the sale of a Bermuda call option on the entire bond.

# 5.21.3 Valuation

As the product cannot be replicated with simple components, valuation must be performed using numerical procedures.

# 5.22 Asian Fx-Linked Zero Coupon Bonds

# 5.22.1 General Description

In the case of an Asian FX-linked zero coupon bond, the redemption rate depends on the average performance of a reference currency. The average is calculated at regular intervals, for example monthly, or semiannually. The amount of interest paid out at maturity is generally calculated using the following formula, where $\mathrm{P}$ is the participation rate:

$$ y i e l d = \sum_ {t = 1} ^ {T} P ^ {*} \max \left(\frac {S _ {\text {a v e r a g e}, t} - S _ {t - 1}}{S _ {t - 1}}\right)
$$

The frequency with which rates are sampled for the average depends on the individual instrument. The averages are usually calculated using daily, weekly or monthly values.

Asian options involve less risk because the value of the underlying asset is sampled not at a specific point in time but over a longer period of time.

Of course, Asian FX-linked zero coupon bonds can also be issued with caps or floors for the redemption rate in order to avoid the effects of extreme fluctuations.

Example: Bank Austria PlusGarantie 1995-1997

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & October 25,1995, to May 8,1997 \\ \hline
Total principal & EUR 21,801,850 \\ \hline
Issue price & 100\% \\ \hline
Coupons & None \\ \hline
Redemption & See below \\ \hline
Denomination & EUR 727 \\ \hline
\end{tabular}
\end{document}
```

Redemption: The redemption rate $T$ (in percent) is calculated using the following formula:

$$
T = 100 + \frac {P ^ {*} A}{100} \text {and} A = \frac {S _ {D} - S _ {0}}{S _ {0}} * 100
$$ where

$$

P = \text {p a r t i c i p a t i o n} (= 5 0)

$$

$$

S _ {0} = \text {E U R / U S D}

$$

$$

S _ {D} = \text {a r i t h m e t i c m e a n o f the E U R / U S D m i d d l e r a t e s s a m p l e d d a l y from} \tag {April 1 to 30,1997}

$$

The minimum redemption rate is $102\%$.

# 5.22.2 Replication

For the purpose of valuation, the product can be broken down into a conventional zero coupon bond and an Asian option.

At expiration, Asian options pay an amount equal to the difference between the average exchange rate of the reference currency and the agreed strike price. The average rate can be calculated as a geometric or arithmetic mean.

If a lower limit (floor) is defined for the redemption amount, the minimum redemption amount can be regarded as the face value of the zero coupon bond. The strike price of the Asian call option then has to be increased accordingly so that the payoff only takes place when the guaranteed interest level is exceeded.

Any agreed upper limits (caps) on the redemption amount can be replicated with the sale of an Asian call option.

In summary, we get:

+Asian FX-linked zero coupon bond $= +$ zero coupon bond

$$

\begin{array}{l} + k ^ {*} \text {A s i a n o p t i o n} \\ + \operatorname {c a p} \quad = - k ^ {*} \text {c a l l o p t i o n} \\ \end{array}

$$ where

- = long position
- = short position

$k =$ multiplier

In order to take the minimum redemption rate of 102 into account in this example, the strike price has to be set equal to $S_0 * 1.04$. This results from the following rearrangements:

Minimum interest $= 2\% \Rightarrow 2 = P^{*}A = 50^{*}\frac{S_{D} - S_{0}}{S_{0}}\Rightarrow S_{D} = 1.04^{*}S_{0}$

Assuming a face value of EUR 100, we can replicate this instrument with:

- the purchase of a zero coupon bond with a face value of 102 and a 1.5-year maturity
- the purchase of $k$ Asian options, expiration in 1.5 years, based on the arithmetic mean of rates from $t = 1.4$ to $t = 1.5$ years, strike price $S_0 * 1.04$, notional amount USD 1 where

$$ k = \text {face value} ^ {*} \frac {P}{S _ {0}} = 100 ^ {*} \frac {50 \%}{S _ {0}}
$$

$S_0 = \mathrm{EUR} / \mathrm{USD}$ exchange rate on the bond's issue date

# 5.22.3 Valuation

The zero coupon bond is valuated using the relevant spot interest rate.

Asian options whose payoff is based on the arithmetic mean of the underlying price can only be valuated using numerical procedures or using analytical approximations because the arithmetic mean $\left( \frac{x_1 + \ldots + x_n}{n} \right)$ of a log-normally distributed price is itself not log-normally distributed.[85]

However, the assumption of log-normal distribution does provide a good approximation for the value of the options. For the purpose of this approximation, it is first necessary to calculate the first two risk-neutral moments of the arithmetic average's probability distribution and to assume that this distribution is log-normally distributed.

The following formulas by Turnbull and Wakeman can be used to approximate the value of a geometric Asian option.[86]

$$ c = S e ^ {(b _ {A} - r) T _ {2}} N (d _ {1}) - X e ^ {- r T _ {2}} N (d _ {2})
$$

Formula 5.7: Price of a geometric Asian call option

$$ p = X e ^ {- r T _ {2}} N (- d _ {2}) - S e ^ {(b _ {A} - r) T _ {2}} N (- d _ {1})
$$

Formula 5.8: Price of a geometric Asian put option where

$$ d _ {1} = \frac {\ln (S / X) + (b _ {A} + \sigma_ {A} ^ {2} / 2) T _ {2}}{\sigma_ {A} \sqrt {T}} \text {and} d _ {2} = d _ {1} - \sigma_ {A} \sqrt {T}
$$

$$ b _ {A} = \frac {\ln (M _ {1})}{T} \text {and} \sigma_ {A} ^ {2} = \frac {\ln (M _ {2})}{T} - 2 b _ {A}
$$

$$
M _ {1} = \frac {e ^ {b T} - e ^ {b \tau}}{(b) T - \tau}
$$

$$
M _ {2} = \frac {2 e ^ {[ 2 b + \sigma^ {2} ] T}}{(b + \sigma^ {2}) (2 b + \sigma^ {2}) (T - \tau) ^ {2}} + \frac {2 e ^ {(2 b + \sigma^ {2}) \tau}}{b (T - \tau) ^ {2}} \left[ \frac {1}{2 b + \sigma^ {2}} - \frac {e ^ {b (T - \tau)}}{b + \sigma^ {2}} \right]
$$ and

$$ b = r - r _ {f}
$$ where

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
$S_{0}$ & current exchange rate (the value of one unit of the foreign currency, expressed in base currency) \\ \hline
X & strike price \\ \hline r & risk-free interest rate in the base currency \\ \hline rf & risk-free interest rate in the foreign currency \\ \hline
T & period of the option, i.e., years until the exercise date \\ \hline
$T_{2}$ & time to maturity \\ \hline τ & time until the start of the observation period \\ \hline
σ & Volatility \\ \hline
N(x) & cumulative standard normal distribution at x \\ \hline
\end{tabular}
\end{document}
```

# 5.23 Currency Basket Bonds With Caps And Floors

# 5.23.1 General Description

Currency basket bonds are zero coupon bonds whose redemption amount is notionally paid out in several currencies. The redemption amount is spread evenly across the reference currencies and paid out at the respective exchange rate applicable on the redemption date.

Defined caps and floors generally apply to the entire redemption amount, not to the individual currencies.

Example: Quattro bond

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Maturity & October 22,1997, to April 21,2002 (4.5 years) \\ \hline
Total principal & EUR 14,534,567 \\ \hline
Base currency & EUR \\ \hline
Coupons & None \\ \hline
Redemption & April 22,2002 \\ \hline
Redemption rate & see below \\ \hline
Denomination & EUR 726.73 \\ \hline
\end{tabular}
\end{document}
```

Redemption: In order to calculate the redemption rate, $25\%$ of a bank bond is translated into EUR, $25\%$ into SEK, $25\%$ into GBP and $25\%$ into NOK at the Vienna exchange's official middle exchange rate on October 20,1997. Toward the end of the bond's term, the amounts in each currency are multiplied by a redemption factor of 1.2631 and the resulting amounts are translated into EUR at the Vienna exchange's official middle exchange rate on April 18,2002.

The redemption rate must be between $110\%$ and $139\%$ of the bond's face value.

# 5.23.2 Replication

The quattro bond's redemption amount depends on a portfolio of currencies whose development cannot be considered independently of one another. As the interest on the principal depends on the joint development of the various currencies and the cap and floor is defined for the entire portfolio, the instrument can only be valuated using basket options.

The formula calculating the return on the principal invested can be rearranged as follows:

$$ r = \max (m i n (0.25 ^ {*} 1.2631 ^ {*} (1 + r (S E K) + r (G B P) + r (N O K)); 1.39); 1.1) \Rightarrow
$$

$$ r = \frac {1.2631 ^ {*} 3}{4} + \frac {1.2631 ^ {*} 3}{4} * \max \left(\min \left(\frac {r (S E K)}{3} + \frac {r (G B P)}{3} + \frac {r (N O K)}{3}; \frac {1.39 ^ {*} 4}{1.2631 ^ {*} 3} - \frac {1}{3}\right); \frac {1.1 ^ {*} 4}{1.2631 ^ {*} 3} - \frac {1}{3}\right)
$$

At maturity, the bond is redeemed at a rate of at least $110\%$. This minimum redemption amount can be replicated with a zero coupon bond with a face value equaling $110\%$ of the bond's face value.

If the exchange rates develop in the bearer's favor, he/she will then participate in the positive performance of the three reference currencies. This payoff profile is equivalent to a call option on the currency basket with a strike price

$$
\frac {1.1 ^ {*} 4}{1.2631 ^ {*} 3} - \frac {1}{3} = 0.828.
$$

As the underlying asset of the option, the currency basket has a standardized initial value of 1; its value at time $T$ is calculated using the formula

$$
1 + \frac {1}{3} \left(r _ {S E K} + r _ {G B P}\right) + r _ {N O K})
$$ as the arithmetic mean of the changes in the component exchange rates in the currency basket.

The redemption rate cap of $139\%$ limits the payoff of the call on the currency basket. This cap is equivalent to the sale of a call option on the currency basket with a strike price of

$$

\frac {1.39 ^ {*} 4}{1.2631 ^ {*} 3} - \frac {1}{3} = 1.134.

$$

In summary, we get:

- Currency basket bonds with caps and floors $= +$ Zero coupon bond
- $k^{*}$ basket call option (1)

$- k^{*}$ basket call option (2) where

- = long position
- = short position

$k =$ number of options

The face value of the zero coupon bond is equal to the minimum redemption amount.

Assuming a face value of EUR 100, we can replicate this instrument with:

- the purchase of a zero coupon bond with a face value of 110 and a 4.5-year maturity

- the purchase of $k$ call options on a currency basket consisting of $\frac{1}{3}$ SEK, GBP and NOK, strike price 0.828, expiration in 4.5 years
- the sale of $k$ call options on a currency basket consisting of $\frac{1}{3}$ SEK, GBP and NOK, strike price 1.134, expiration in 4.5 years where $k = \frac{3^{*}1.2631}{4} * 100$

# 5.23.3 Valuation

Zero coupon bonds are valuated using the relevant spot interest rate.

Options on currency baskets present the problem of that a sum (or the average) of log-normally distributed time series is not itself log-normally distributed. Basket options can be valuated with Monte Carlo simulation assuming correlated Brownian motions.

# 5.24 Annex - Product Replication Overview

The table below gives a short description of the structured products and lists alternative names for each product. Product replication is presented schematically from the investor's perspective (long position). For an in-depth description of how to replicate the individual structured products, see the respective Replication sections in the handbook.

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Name & Description of replication \\ \hline
• Foreign currency bond & Coupon and redemption in foreign currency
Replication: Series of zero coupon bonds \\ \hline
• Dual currency bond & Coupon in issue currency and redemption in foreign currency
Replication: Series of zero coupon bonds \\ \hline
• Reverse dual currency bonds & Coupon in foreign currency, redemption in issue currency
Replication: Series of zero coupon bonds \\ \hline
• Dual redemption bond
• Currency switch bond & Coupon bond with option on redemption in a foreign currency
Replication: Coupon bond - put option \\ \hline
• Foreign currency dual redemption bond & Coupon bond in foreign currency with redemption option in EUR
Replication: Coupon bond - put option \\ \hline
• Step-up/step-down dual redemption bond & Step-up/step-down bond with redemption option
Replication: Series of zero coupon bonds + call option \\ \hline
• Appearing dual redemption bond & Redemption option arises when trigger is touched
Replication: Coupon bond - put option \\ \hline
• Callable/putable digital deposit & Coupon bond with two different coupons (depending on exchange rate)
(with call privilege)
Replication: Coupon bond + series of digital options - call option \\ \hline
• Digital dual redemption bond & Replication: Coupon bond + series of digital options - put option \\ \hline
• Multi-step callable digital deposit & Coupon bond with more than two different coupons (depending on exchange rate)
(with call privilege)
Replication: Coupon bond + series of digital options - Bermuda call option \\ \hline
• FX-linked barrier note & Higher coupon if the reference exchange rate remains above/below a certain limit (barrier) during the observation period
Replication: Coupon bond + barrier option \\ \hline
FX barrier range
Range protected deposit
Corridor note & Higher coupon if the reference exchange rate remains within a certain range during the observation period
Replication: Coupon bond + combination of two barrier options \\ \hline
Callable FX-linked foreign currency coupon bonds
FX-linked coupon & Foreign currency bond with coupon dependent on reference exchange rate
Replication: Series of zero coupon bonds + call option - Bermuda call option \\ \hline
Dual currency-linked bond & Coupon can be paid in two currencies other than the instrument's base currency
Replication: Series of zero coupon bonds - series of exchange options \\ \hline
Triple currency-linked bond & Coupon can be paid out in three different foreign currencies
Replication: Series of zero coupon bonds - put option on the lower of two underlying assets \\ \hline
Variable redemption bond & Coupon bond with redemption amount dependent on reference exchange rate
Replication: Coupon bond - forward contract + call option \\ \hline
Range variable redemption bonds & Coupon bond with redemption rate dependent on the range in which the reference exchange rate lies
Replication: Series of zero coupon bonds + put option - call option (1) + call option (2) \\ \hline
Dual currency variable redemption bonds & Redemption rate dependent on two reference currencies
Replication: Coupon bond + call option + put option \\ \hline
Knock-out variable redemption bond & Investor participates in positive performance of the exchange rate if the rate is below a certain limit on the reference date
Replication: Coupon bond + call option (1) - call option (2) - digital option \\ \hline
Knock-in variable redemption bond & Investor participates in positive performance of the exchange rate if the rate is below a certain limit on the reference date
Replication: Coupon bond + call option + digital option \\ \hline
FX-linked zero with cap & Zero coupon bond with redemption amount dependent on reference exchange rate at maturity
Replication: Zero coupon bond + put option (1) - put option (2) \\ \hline
● Cumulated callable FX-linked zero & Zero coupon bond with redemption amount dependent on reference exchange rate on several reference dates
Replication: Cannot be replicated with simple components. \\ \hline
● Asian FX-linked zero coupon bond & Zero coupon bond with redemption amount dependent on average exchange rate
Replication: Zero coupon bond + Asian option \\ \hline
● FX-linked basket bond with cap and floor & Zero coupon bond with redemption amount dependent on several currencies
Replication: Zero coupon bond + basket option (1) – basket option (2) \\ \hline
\end{tabular}
\end{document}
```
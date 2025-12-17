
# Static Term Structure Modeling in Discrete and Continuous Time

DAVID AUDLEY, PhD

Senior Lecturer, The Johns Hopkins University

RICHARD CHIN

Investment Manager, New York Life Investments

PETER C. L. LIN

PhD Candidate, The Johns Hopkins University

SHRIKANT RAMAMURTHY

Consultant, New York, NY

Abstract: The term structure of interest rates represents the cost of (return from) borrowing (lending/investing) for different terms at any one moment in time. The term structure is most often specified for a specific market such as the U.S. Treasury market, the bond market for double-A rated financial institutions, the interest rate market for LIBOR and swaps, and so on. The term structure is usually specified via a rate or yield for a given term or the discount to a cash payment at some time in the future. These are often summarized mathematically through a wide variety of models. In addition, term structure models are fundamental to expressing value and risk, and establishing relative value across the spectrum of instruments found in the various interest-rate or bond markets. Static models of the term structure are characterizations that are devoted to relationships based on a given market and do not serve future scenarios where there is uncertainty. Standard static models include those known as the spot yield curve, discount function, par yield curve, and the implied forward curve. Instantiations of these models may be found in both a discrete- and continuous-time framework. An important consideration is establishing how these term structure models are constructed and how to transform one model into another.

The objective of this entry is to describe the principles and approaches for a deterministic model of the term structure of interest rates. This is done first in a discrete-time setting, followed by a more analytical development in a continuous time setting. We provide an eclectic mixture of ideas from the academic literature in concert with adaptations well known to practitioners.


Computational implementation of anything as complex as interest rate term structure models naturally engenders the rigorous adherence to, yet clever application of, some arcane ideas from software/system engineering. These are beyond the scope of this introduction, but such topics include numerical recipes; mechanisms to ensure internal consistencies during development and build-up; tests for internal consistency, verification, and validation of completed applications (e.g., put-call parity, cash-and-carry arbitrage, and others); parameterization of models and applications from the markets; and the utility of advanced computer architectures.


A deterministic approach to the term structure of interest rates (or simply, the term structure) may be appropriately thought of as a static modeling approach. This is distinguished from a dynamic model of term structure. The chief distinction is that in a static term structure model, no accommodation is made of the course of interest rates over time. On the other hand, a dynamic model explicitly incorporates how interest rates change over time and therefore needs to admit a notion of uncertainty in considering the future course of interest rates. The following discussion will concentrate on static models. First, we address a taxonomy for term structure models in some additional detail.

# INTRODUCTION TO TERM STRUCTURE MODELING

The term structure of interest rates (or term structure) is simply a price or yield relationship among a set of securities that differ only in the timing of their cash flows or their term until maturity. These securities invariably have a specified set of other attributes in common so that the study of the term relationship is meaningful.

It is common to think of the term structure as consisting of the current-coupon U.S. Treasury issues only. This restriction is not necessary since it is possible to define other term structures derived from other securities. For exam- ple, it is meaningful to define the term structure of sets of coupon or principal Treasury strips. Other examples include off-the-run Treasury issues, agency debentures, LIBOR/interest-rate swaps, or the notes of single-A rated banks and finance companies. The set of securities used to define a term structure is called the reference set. A market sector (sometimes referred to as a market or a sector) consists of all those instruments described by a specific term structure. There is the market sector of coupon or principal Treasury strips, off-the-run Treasuries, agency debentures, interest-rate swaps, and single-A rated banks and finance companies, and so forth. Very often, the reference set for a market sector may have restrictions on the structure (noncallable only), liquidity (recent issues only), or price (close to par only) of the securities that make up the set.


The relationship expressed by the term structure is traditionally the par-coupon yield relationship, hence the terminology: yield curve. This also is not a necessary restriction. In general, the term structure could be the discount function, the spot-yield curve, or some other expression of the price or yield relationship between the securities. Given the widespread usage of the (par) yield curve for the Treasury market, it is not surprising that many market sectors are defined from a reference set derived from the Treasury market. For example, the reference set that defines the agency debenture market is a set of yield spreads to the on-the-run Treasuries, so that a 5-year debenture issued by an agency may be priced at par to yield 15 basis points more than the current 5-year Treasury issue. If the Treasury issue is trading at a  $6.60\%$  yield to maturity, the par priced agency issue has a  $6.75\%$  coupon. By inference, from the spread quote of 15 basis points, the reference yield for the 5-year term is  $6.75\%$ . Similar statements can be made for the interest-rate swap and the corporate bond markets.

It needs to be emphasized that the reference set of bonds used to define the term structure of interest rates and the resulting term structure itself are not one and the same. Indeed, the term structure, as a complete description of the entire yield curve, ultimately can be used to analyze all manner of option-laden, index-amortizing swaps or debentures that are in the same market sector. The "vanilla" reference set consists of individual bonds that are used mainly to define the term structure or to derive its defining relationships—spot-yield curve, spot-rate process, discount function, and the like.


Theories about the term structure of interest rates fall into two categories:

- Qualitative theories seek to explain the shape of the yield curve based on economic principles. Three theories attract the widest attention: the expectations, liquidity preference, and preferred habitat (or hedging pressure) theories.
- Quantitative theories seek to mathematically characterize the term structure (often in harmony with one of the qualitative theories).

Usually, a quantitative theory about the term structure of interest rates culminates in a mathematical model, a term structure model that exhibits useful properties. Specifically, a term structure model is the mathematical representation of the relationship among the securities in a market sector. This formalizes the distinction between the reference set used to define a market sector and a term structure model.

# TERM STRUCTURE MODELS

The simplest and most familiar term structure model is the (semilogarithmic) graph of the U.S. Treasury yield curve (once found daily in the Wall Street Journal and in the business section of many newspapers). This model is useful mainly as a visualization of the yield relationship between the most recently issued shorter-term Treasury instruments and bonds. The graph can be characterized by a mathematical equation and is one example of the set of interpolation models of the term structure.

These "connect-the-dots" models can be useful in providing a quantitative way to price bonds outside the current-coupon Treasury issues, but their utility is rather limited. Bonds that are valued through a linear-interpolation technique may not be "fairly" valued in the sense that an average yield may not be equal to the "parcoupon" yield corresponding to the same date. Later we provide a discussion of how the parcoupon curve is constructed to be fairly valued in comparison to the set of reference (Treasury) issues.

The term structure model as described above simply provides a snapshot of the relationship between the yields for selected Treasury maturities on a given day. It is often required that term structure models exhibit additional "analytic" properties. One such property is the consistency associated with the preclusion of riskless arbitrage when the term structure model is used for pricing. More will be said about this later. For now, it is intended merely to indicate that the "visualization" of the yield relationship to term may be neither completely useful nor adequate.

More generally, term structure models are called on to describe the evolution of a set of interest rates over time. This motivates the following distinction in classifying term structure models:

Static models of the term structure offer a mechanism to establish the "present value of a future dollar" in a deterministic economy. That is, no allowance for uncertainty or interest-rate volatility is explicitly incorporated into the model.
- Dynamic models of the term structure, in contrast to static models, explicitly allow for uncertainty in the future course of interest rates.

Ideally, a dynamic model of the term structure should have useful static models embedded within. That is, with no contingency on the receipt of a future cash payment or when there is an assumption of negligible volatility, a dynamic model should correspond to a consistent static model.


The essence of term structure modeling is the process of converting the market description of a sector's reference set (the data) into a mathematical set of relationships that characterizes all issues in a sector. This is by no means trivial to do correctly. For example, the same model that correctly values a note in the Treasury market should also correctly value an option on that note, the futures contract into which that note may be deliverable, and an option on that futures contract. It should also reveal if the traded basis on that note is rich or cheap relative to the cash, futures, and options markets. It should also be able to describe any stripping or reconstitution opportunities between coupon and principal strips and the cash market. These analyses should not be the result of several models, but of a single term structure model.

A key element of the modeling process is to eliminate distinguishing characteristics associated with each constituent of the reference set. For example, in the on-the-run set of Treasury issues, there are bills as well as notes and bonds. The bills have different conventions for day counting, pricing, and yield expression from those of the coupon-paying issues of the sector. These characteristics need to be removed prior to developing the mathematical relation of the term structure model (as do the distinguishing characteristics for notes and bonds). In this simple example, a model of the Treasury term structure might be the spot curve or the discount function, as opposed to a "connect-the-dots" model to which no yield adjustments have been made.

The mathematical relationship of a term structure model can be used to characterize all issues in a sector. As is the case for the Treasury sector, every instrument can be considered a collection of zero-coupon bonds (the maturities of which correspond to the coupon/principal payment dates, the denominations of which correspond to the amount of coupon/principal paid). Accordingly, the discount function or equivalently, its corresponding spot-yield curve, furnishes a pricing technique for each zero-coupon bond and, therefore, for each of the instruments. With this insight, the utility of equivalence between the spot-yield curve and discount function, which are derived from the original reference set, is readily apparent.


We begin with the familiar, discrete-time modeling approach. That is, units of time quanta are defined (usually in terms of compounding frequency) and financial manipulations are indexed with integer, multiple periods. We continue to build on the discussion by introducing the continuous-time analogies to the concepts developed for discrete-time modeling. Continuous-time modeling allows financial manipulations to be freed from discretization artifacts (such as compounding frequency) and provides an algebraic framework that more naturally and rigorously accommodates "rate" as a concept of change. In addition, this approach opens up a huge field of applicable mathematics with the attendant opportunity for abstraction. For example, continuous-time models free the analyst from artificial a priori assumptions about interest-rate lattices; allow concentration on the financial analyses at hand; defer time-step issues to final implementation of an algorithm; and let the analyst choose an approach based on convenience, speed, and accuracy.

# DISCRETE-TIME MODELS OF THE TERM STRUCTURE

In the discrete-time framework, we introduce some fundamental concepts in term structure theory. These include the discount function, the spot rate and spot yield, and the forward rate. While these initially may appear to be esoteric in nature, they are in fact closely interrelated quantities that directly represent the term structure, or act to influence the course of future interest rates in an arbitrage-free environment. In this section these concepts are shown to be incorporated into the different expressions that describe the various qualitative term structure theories, such as the expectation, preferred habitat, and liquidity preference hypotheses. The continuous-time term structure model is evolved next from the same underlying premises as found in discrete time, thereby speeding the exposition.


# DISCOUNT FUNCTION

The discount function incorporates market yield-curve information to express the present value of a future dollar as a function of the term to its receipt. As such, the discount function is a valid expression of the term structure of interest rates by virtue of the price/yield relationship. Since the discount function is used to quantify the value of a future dollar, the discount function also provides a direct means to value a coupon-paying bond since the coupon and principal payments are simply scalar multiples of a single dollar. As a result, the discount function can be used as a reference check for other quantitative term structure models.

Quantitative term structure models ultimately deal with the analysis of pure discount bonds. (Discount bonds, or zero-coupon bonds, are the simplest types of bonds to analyze as there is only the repayment of par at maturity. Further, all other bonds can be built from a series of discount bonds and options on discount bonds.) As a consequence of modeling the yield movements of discount bonds, term structure models describe their price movements since the price/yield relationship allows the term structure to be analyzed in terms of either price or yield.

This relationship is addressed further later in this entry, in which the term structure model is expressed in terms of price as a function of rate and time.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/66256f4b-1176-4bdd-adf3-458dec1636a0/07b604c6dc1eaa3f582d8e65076923f8b670bb78bac5af7b99dc834001f24225.jpg)
Figure 1 Discount Function

If it is assumed that the discount bond pays one dollar at maturity, then the present value of the bond is some decimal fraction less than one. For a set of discount bonds of increasing maturities, there is the corresponding set of present values starting from approximately 0.999 and decreasing thereafter. This set of present values is called the discount function and is shown in Figure 1.

The discount function is the term-to-maturity relationship of the present value of a future unit of cash flow. More formally, for a cash flow,  $CF$ , received after a term,  $T$ , from today,  $t$ , the present value,  $PV$ , of that cash flow is discounted,  $d$ , from the future value  $CF$  as expressed by the relation

$$
P V (t, T) = d (t, T) \times C F (t, T) \tag {1}
$$ where


$$
\begin{array}{c} P V (t, T) = \text {p r e s e n t v a l u e o f t h e c a s h f l o w} \\ \text {a t} t \end{array}
$$

$$
\begin{array}{c} d (t, T) = \text {d i s c o u n t a t} t \text {f o r a c a s h f l o w} \\ \text {r e c e i v e d} T \text {a f t e r} t \end{array}
$$

$$
C F (t, T) \mathrm {c a s h} = \text {f l o w} t + T
$$

As we are able to generate the discount function,  $d$ , for all terms-to-maturity,  $T$ , this can be a valid representation of the term structure of interest rates. Indeed, the discount function reflects the Treasury term structure when the discount function exactly reprices the current-coupon Treasury issues.

# Deriving the Discount Function for On-the-Run Treasuries

More generally, let  $P(t,i) = P_{i}(t)$  be the set of closing prices on (date)  $t$  for the set of current-coupon Treasury bonds (where the index,  $i$ , associates a specific issue among several)

$P(t,3\text{-month})$  : price of the 3-month

(13-week) bill, at time  $t$

$P(t, 6\text{-month})$  : price of the 6-month

(26-week) bill, at time  $t$

$P(t,52\text{-week})$  : price of the 1-year

(52-week) bill, at time  $t$

$P(t,2$  -year):price of the 2-year

note, at time  $t$

.

$P(t, 30\text{-year})$  : price of the 30-year bond, at time  $t$


Each of these instruments has its own time series of cash flows, each with its own individual term-to-maturity (or better, term-to-payment). For the Treasury bills, the cash flows and associated terms-to-maturity are

3-month bill:  $CF(t, T(3-month, 1))$ ,

6-month bill:  $CF(t, T(6-month, 1))$ , and for the periodic instruments,


2-year note:  $CF(t, T(2-year, 1))$ ,

$CF(t,T(2$  -year,2)),...，  $CF(t,T(2$  -year,4))

.

30-year bond:  $CF(t, T(30 - year, 1))$ ,

$CF(t,T(30 - year,2))$ $CF(t,T(30 - year,60))$

The term to each of the cash flows,  $T(i,j) = T_{i,j}$ , is specific to the instrument and the context of the notion of "today,"  $t$  for the purpose of establishing a present value. (In this sense, the dependence on  $t$  has been suppressed and it might be more precise to specify  $T$  as  $T(t;i,j)$ , but we believe this to be unnecessary.) The index  $j$  is the sequence of the cash flow in the time series for security  $i$ . Finally, in general, cash flows only exist in a futures sense. If  $T(i,j)$  is less than zero (the cash flow has already been paid), then those  $j$ -cash flows are not included in the series (although this is not an issue for the current-coupon Treasury issues).


The present value of a coupon-paying instrument is simply the sum of the discounted present values of the cash flows that make up the coupon payments and the payment of principal. Accordingly, for the discount function to model the Treasury term structure (i.e., the market sector defined by the on-the-run Treasury reference set), the following equations must be simultaneously satisfied. In this way, the discount function will reprice the current-coupon Treasury issues.

$$
\begin{array}{l} P (t, 3 - \text {m o n t h}) = d (t, T (3 - \text {m o n t h}, 1)) \\ \times C F (t, T (3 - m o n t h, 1)) \\ = d (t, T _ {1, 1}) \times C F (t, T _ {1, 1}) \\ \end{array}
$$

$$
\begin{array}{l} P (t, 6 - \text {m o n t h}) = d (t, T (6 - \text {m o n t h}, 1)) \\ \times C F (t, T (6 - m o n t h, 1)) \\ = d (t, T _ {2, 1}) \times C F (t, T _ {2, 1}) \\ \end{array}
$$

$$
P (t, 2 - y e a r) = P (t, 3) = \sum_ {j = 1} ^ {4} d (t, T _ {3, j}) \times C F (t, T _ {3, j})
$$

.

$$
P (t, 3 0 - y e a r) = P (t, 8) = \sum_ {j = 1} ^ {6 0} d (t, T _ {8, j}) \times C F (t, T _ {8, j})
$$

The last cash flow of each series consists of the principal payment and, for the notes and bond, one coupon payment. The solution to these simultaneous equations furnishes many distinct points of term in which the discount function is defined; the long bond alone may have as many as 60 term points. Depending on the circumstances surrounding each auction, there may be as many as over 90 distinct points of term defining the discount function.

As with the earlier "connect-the-dots" model for the yield curve, in which the yield points were connected to generate intermediate values for the term structure, similar ideas can be used to accommodate the cash flows that do not fall on one of the terms,  $T(i,j)$ , enumerated above. In fact, interpolation techniques using spline functions may be applied to create a continuous discount-function curve, as in Oldrich and Fong (1982).


The discount function forms the basis for the development of a term structure model, as will be developed further in later sections. As the discount function is an expression of the term structure based on price, there is no ambiguity of compounding periodicity, as with yield-based term structure models. The discount function simply expresses the nondimensional, fractional, present value of a unit cash flow to be received after some term. The term may be specified in a unit of time (e.g., years, months, or days) or in periods, in which the period length is a unit of time.

# SPOTYIELDCURVE

With the assumption of a compounding convention (usually semiannual), the discount function can be used to derive the equivalent Treasury zero-coupon structure—sometimes referred to as the spot-yield curve. In this case, the spot-yield curve is an equivalent term structure representation based on yield that provides a view of the term structure that is more familiar. The equivalence between these two forms of the term structure is used later in this entry.

The spot yield,  $R$ , is related to the discount function,  $d$ , through a price/yield relation. By definition, the present value at  $t$ ,  $PV(t, n)$ , of a cash flow received  $n$  periods in the future,  $CF(t, n)$ , has the spot yield,  $R(t, n)$ , through the relation

$$
P V (t, n) = \frac {C F (t , n)}{\left[ 1 + R (t , n) \right] ^ {n}} \tag {2}
$$

We use the discrete notion of integer periods, with each period of length  $P$ , to keep the math simple at this point. The more general case of a noninteger world is treated when a continuous time model is introduced.

Comparing equations (2) and (1) provides the relation between the spot yield and the discount function

$$ d (t, n) = \frac {1}{[ 1 + R (t , n) ] ^ {n}} \tag {3}
$$ where


$$
\begin{array}{l} d (t, n) = \text {d i s c o u n t} \\ n \text {p e r i o d s a f t e r} t \\ \end{array}
$$

$$
R (t, n) = n \text {p e r i o d s p o t y i e l o n} t
$$

The spot-yield curve is just the set of spot yields for all terms-to-maturity. In contrast, the spot rate is simply the one-period rate prevailing on  $t$  for repayment one period later. In the above notation, the spot rate is denoted  $R(t,1)$ .

We can generalize the earlier comment about coupon-paying bonds in terms of the set of spot yields. The present value of a coupon-paying instrument is simply the sum of the discounted (present value) of the cash flows that make up the coupon payments and the payment of principal. The analogy to equation (2) for a coupon-paying bond using spot yields is

$$
\begin{array}{l} P V (t, n) = \frac {C F (t , 1)}{[ 1 + R (t , 1) ]} + \frac {C F (t , 2)}{[ 1 + R (t , 2) ] ^ {2}} \\ + \dots + \frac {C F (t , n)}{\left[ 1 + R (t , n) \right] ^ {n}} \tag {2a} \\ \end{array}
$$

Similarly, the analogy to equation (1) for a coupon-paying bond using the discount function is given by

$$
\begin{array}{l} P V (t, n) = d (t, 1) \times C F (t, 1) + d (t, 2) \times C F (t, 2) \\ + \dots + d (t, n) \times C F (t, n) \tag {1a} \\ \end{array}
$$

# IMPLIED FORWARD RATE

A consequence of the discount function, spot yield, and spot rate is the immediate relation to the (implied) forward rates. The implied forward rate is the spot rate embodied in today's yield curve for some period in the future. The forward rate generally is regarded as an indication of future spot rates in an arbitrage-free economy. In the absence of arbitrage and uncertainty, the future spot rate, by definition, is equal to the forward rate. In the arbitrage-free term structure model discussed later, it can be shown that the future spot rate continuously converges toward the forward rate as the spot rate evolves over time.

Specifically, the one-period forward rate,  $F$ , can be determined from the spot yields as follows. Consider the one-period and two-period spot yields; the forward rate,  $F$ , may be found from

$$
(1 + R (t, 2)) ^ {2} = (1 + R (t, 1)) \times (1 + F (t, 1, 1)) \tag {4}
$$ where


$R(t,2) =$  two-period spot yield on  $t$

$R(t,1) =$  one-period spot rate on  $t$

$F(t,1,1) =$  one-period forward rate one period from  $t$

This relation follows from the no-arbitrage assumption intrinsic in the concept of forward rates. The calculation of the forward rate presumes that an investment today for two periods provides the same return as a one-period investment today immediately rolled into another one-period investment one period from now. That is

$$
P V (t) = \frac {C F (t , 2)}{\left[ 1 + R (t , 2) \right] ^ {2}} \tag {5}
$$

$$
P V (t) = \frac {C F (t , 2)}{\left[ 1 + R (t , 2) \right] \times \left[ 1 + F (t , 1 , 1) \right]} \tag {6}
$$

By equating equations (5) and (6), equation (4) results.

# Deriving Forward Rates from Spot Yields

Implied from the term structure, through the spot-yield curve, is a set of forward rates. These forward rates may be iteratively defined from the above and written as follows

$$
\begin{array}{l} (1 + R (t, n)) ^ {n} = (1 + R (t, n - 1)) ^ {n - 1} \\ \times (1 + F (t, 1, n - 1)) \\ \end{array}
$$ where in addition to the earlier notation,  $F(t, 1, n-1) =$  one-period forward rate  $n-1$  periods from  $t$ , and noting, through substitution, that


$$
\begin{array}{l} (1 + R (t, n)) ^ {n} = (1 + R (t, 1)) \times (1 + F (t, 1, 1)) \\ \times (1 + F (t, 1, 2)) \times \dots \\ \times (1 + F (t, 1, n - 1)) \tag {7} \\ \end{array}
$$ this furnishes the first  $n - 1$  one-period forward rates.


The relation among spot yield, spot rate, and forward rates, equation (7), can be combined with equation (2) to furnish a method for calculating the present value, at  $t$ , of a single  $n$ -period future cash flow based on a series of one-period forward rates

$$
P V (t, n) = \frac {C F (t , n)}{\left[ 1 + R (t , 1) \right] \times \cdots \times \left[ 1 + F (t , 1 , n - 1) \right]} \tag {8}
$$

Since the present value of a coupon-paying security is simply the sum of the discounted present value of the cash flows that make up the coupon payments and the payment of principal (see equations (1a) and (2a)), the analogy to equation (8) for determining the present value of a coupon-paying bond is

$$
\begin{array}{l} P V (t, n) = \frac {C F (t , 1)}{[ 1 + R (t , 1) ]} \\ + \frac {C F (t , 2)}{\left[ 1 + R (t , 1) \right] \times \left[ 1 + F (t , 1 , 1) \right]} + \dots \\ + \frac {C F (t , n)}{[ 1 + R (t , 1) ] \times \cdots \times [ 1 + F (t , 1 , n - 1) ]} \\ \end{array}
$$

This equation may be used to define multi-period forward rates.

# Deriving Forward Rates from the Discount Function

The discount function provides a direct method for generating forward rates. The one-period forward return  $n - 1$  periods from  $t$  is obtained through the following

$$
1 + F (t, 1, n - 1) = \frac {d (t , n - 1)}{d (t , n)} \tag {9}
$$

Equation (9) may be derived from earlier equations, or from the following argument that creates a synthetic forward position. For each unit of cash delivered  $n$  periods from today,  $t$ , we pay  $d(t, n)$ . We take a long position in this zero. We also short  $d(t, n) / d(t, n - 1)$  units of cash to be delivered  $n - 1$  periods from  $t$ . For this we receive  $d(t, n - 1)$  times  $d(t, n) / d(t, n - 1)$  or simply  $d(t, n)$ , units. There is no net change in our cash position today. After  $n - 1$  periods we pay out  $d(t, n) / d(t, n - 1)$  and after  $n$  periods receive one unit of cash. Thus the forward price per unit,  $FP$ , to be paid  $n - 1$  periods from now is


$$
F P (t, 1, n - 1) = \frac {d (t , n - 1)}{d (t , n)}
$$ where


$FP(t, 1, n - 1) = \text{forward price of a one-period unit of cash } n - 1$  periods from now

The forward price then gives the forward one-period rate,  $n - 1$  periods from  $t$  as

$$
F P (t, 1, n - 1) = \frac {1}{1 + F (t , 1 , n - 1)}
$$

Equating these results in equation (9).

# TERM STRUCTURE IN A CERTAIN ECONOMY

As discussed earlier, term structure models describe the evolution of interest rates over time. Often, future interest rates are expressed in terms of the future spot rate. If the future spot rate (or equivalently, the future rate of return on a bond) is known, the future term structure of interest rates may be found from the previously established interrelationships between the spot rate and the discount function or spot yield. In fact, it is this relationship between the spot rate and the discount function that is used to motivate the formulation of the term structure models described later as a function of the spot rate. As a precursor to a generalized term structure theory, we first discuss the ramifications for a term structure in a certain economy. (In this context, "certain" refers to an economy with a lack of randomness, in other words, a lack of uncertainty.)

If the future course of interest rates is known with certainty, then arbitrage arguments demand that future spot rates be identical to forward rates. In the notation presented in equation (7), this is equivalent to noting that

$$
R (t + n P, 1) = F (t, 1, n) \tag {10}
$$ for  $n = 1,2,3,\ldots$  and where  $P$  is the term of the period. If this condition were violated, say, for example,


$$
F (t, 1, n) > R (t + n P, 1)
$$ then the same arbitrage argument may be made as before: If we buy the synthetic forward (this is a long position in a unit zero to be delivered  $n + 1$  periods from today,  $t$ ); and short  $d(t, n + 1) / d(t, n)$  units of cash to be delivered  $n$  periods from today,  $t$ , no cash changes hands today. However, after  $n$  periods, we pay the forward price,  $FP$ ,


$$
F P (t, 1, n - 1) = \frac {1}{1 + F (t , 1 , n - 1)}
$$ to receive one unit of cash after  $n + 1$  periods. Also, after  $n$  periods, at  $t + nP$ , we sell the one-period unit zero for a price of


$$
\frac {1}{1 + R (t + n P , 1)}
$$

We know we can do this since there is no uncertainty in the economy. If, as assumed,  $F(t,1,n) > R(t + nP,1)$ , then after  $n$  periods the long and short positions yield a positive net cash flow, or a riskless arbitrage, of

$$
\frac {1}{1 + R (t + n P , 1)} - \frac {1}{1 + F (t , 1 , n)} > 0
$$ after  $n$  periods with no uncertainty and with no net investment. Arbitrageurs will exploit the imbalance of the  $n$ -period forward rate with the spot rate  $n$  periods from now by continuing to buy the synthetic forward until demand outstrips supply. In this scenario, the synthetic forward price goes up, and the forward rate,  $F(t, 1, n)$ , goes down to  $R(t + nP, 1)$  with predictable effect on  $d(t, n + 1)$  and/or  $d(t, n)$ . On the other hand, if  $F(t, 1, n) < R(t + nP, 1)$ , we may reverse our positions, and the same argument shows that  $F(t, 1, n)$  will increase to  $R(t + nP, 1)$ .


Using the no-arbitrage condition in a certain economy, equation (10), in the present value expression from the implied forward-rate expression, equation (8) (which always holds irrespective of assumptions about the economy), we have,


$$
\begin{array}{l} P V (t, n) \\ = \frac {C F (t , n + 1)}{[ 1 + R (t , 1) ] \times [ 1 + R (t + P , 1) ] \times \dots \times [ 1 + R (t + n P , 1) ]} \\ = \frac {C F (t , n + 1)}{\left[ 1 + R (t , n + 1) \right] ^ {n + 1}} \tag {11} \\ \end{array}
$$

This means that the certain return of holding an  $n + 1$  period zero until maturity is the same as the total return on a series of one-period bonds over the same period. Later we will discuss the various forms of equation (11) from various qualitative term structure theories.

Given equation (11), we have, at time  $P$  (one period) later,

$$
\begin{array}{l} P V (t + P, n) \\ = \frac {C F (t , n + 1)}{[ 1 + R (t + P , 1) ] \times \cdots \times [ 1 + R (t + n P , 1) ]} \\ \end{array}
$$ so we find that the single-period return on a long-term zero is


$$
\frac {P V (t + P)}{P V (t)} = 1 + R (t, 1) \tag {12}
$$

Since the term-to-maturity was not specified, equation (12) must be true for zeros of any maturity. That is, the return realized on every discount bond over any period is equal to one plus the prevailing spot rate over that period. This will be expanded upon later.

Alternatively, we can use our relation for the discount function in equation (1), noting

$$
P V (t + T, n) = d (t + P, n) \times C F (t, n + 1)
$$ and


$$
P V (t, n) = d (t, n + 1) \times C F (t, n + 1)
$$ and restate equation (12) in its discount-function based form:


$$
\frac {d (t + P , n)}{d (t , n + 1)} = 1 + R (t, 1)
$$

While these developments for the certain economy may appear trivial and obvious, they serve as a guide for modeling the term structure under uncertainty as well.

# TERM STRUCTURE IN THE REAL WORLD—NOTHING IS CERTAIN

In the real-world economy, the future course of interest rates contains uncertainty. In attempting to deal with uncertainty, however, it would not be inconceivable that a belief in the efficiency of the market would prompt one to use the term structure and the relation between forward rates and spot rates as indicators of expectation about the future. Indeed, market efficiency states that prices reflect all available information bearing on the valuation of the instrument. Equilibrium supply and demand for fixed-income instruments reflect a market-cleared consensus of the economic future. As uncertainty represents a departure from this consensus, the expected equilibrium offers a natural starting point for analysis.

# Expectations Hypothesis

The expectations theory of the term structure of interest rates offers a good starting point for dealing with an uncertain future. Actually, there is a whole family of expectations theories. Broadly, the expectations theory states that the expected one-period rate of return on an investment is the same, regardless of the maturity of the investment. That is, if the investment horizon is one year, it would make no difference to invest in a one-year instrument, a two-year instrument sold after one year, or two sequential six-month instruments.

The most common form of this statement uses equation (10) as the basis for the theory. This is referred to as the unbiased expectations hypothesis, which states that the expected future spot rate is equal to the forward rate, or

$$
E \left[ R (t + n P, 1) \right] = F (t + k P, 1, n - k)
$$ for  $k = 0,1,\ldots ,n - 1$  , and where  $E[\cdot ]$  is the expectation operator.


Using this relation, we find from equation (8) that the present value in an economy characterized by unbiased expectations is


$$
\begin{array}{l} P V (t, n) = \frac {C F (t , n + 1)}{[ 1 + R (t , 1) ] \times \left\{1 + E [ R (t + P , 1) ] \right\}} \tag {13} \\ \times \dots \times \left\{1 + E [ R (t + n P, 1) ] \right\} \\ \end{array}
$$

Therefore, the unbiased expectations hypothesis concludes that the guaranteed return from buying an  $(n + 1)$  period bond and holding it to maturity is equivalent to the product of the expected returns from holding one-period bonds using a strategy of rolling over a series of one-period bonds until maturity.

Alternatively, the return-to-maturity expectations hypothesis is based on equation (11). Here we find that present value in such an economy is

$$
\begin{array}{l} P V (t, n) = \frac {C F (t , n + 1)}{E \left\{\left[ 1 + R (t , 1) \right] \times [ 1 + R (t + P , 1) ] \right.} \tag {14} \\ \times \dots \times [ 1 + R (t + n P, 1) ] \} \\ \end{array}
$$

The return-to-maturity expectations hypothesis assumes that an investor would expect to earn the same return by rolling over a series of one-period bonds as buying an  $(n + 1)$ -period bond and holding it to maturity.

The last version of the expectations hypothesis that we will mention (there are others) is the local-expectations hypothesis (or risk-neutral hypothesis). This hypothesis is based on equation (12), or equivalently, its associated discount function-based equation. Under this hypothesis, the expected rate of return over a single period is equal to the prevailing spot rate of interest. Applying these expressions recursively gives

$$
\begin{array}{l} P V (t) = \frac {E [ P V (t + P) ]}{[ 1 + R (t , 1) ]} \\ = E \left\{\frac {P V (t + 2 P)}{[ 1 + R (t + P , 1) ] \times [ 1 + R (t , 1) ]} \right\} \\ = C F (t, n + 1) \times E \left\{\frac {1}{[ 1 + R (t , 1) ] \times [ 1 + R (t + P , 1) ]} \times \dots \times [ 1 + R (t + n P, 1) ] \right\} \tag {15} \\ \end{array}
$$

Equations (13), (14), and (15) are clearly different in that the coefficient of the cash flow,

$CF(t,n + 1)$ , received  $n + 1$  periods in the future is a different expression in each case. Furthermore, by the principle from mathematical analysis known as Jensen's inequality, only one of the expressions can be true if the future course of interest rates is uncertain.

In fact, in discrete time, we find that bond prices given by the unbiased and return-to-maturity hypotheses are equal but less than that given by the expectations hypothesis. Although the three hypotheses are different, in discrete time, any of these hypotheses is an acceptable description of equilibrium.

In the next section, term structure modeling in continuous time is developed. Equations (13), (14), and (15) have continuous-time analogs, which (as in discrete time) are different from one another. This is again due to Jensen's inequality. Unlike in discrete time, however, only the local expectations hypothesis is acceptable as a statement of equilibrium because the expected returns under each of these hypotheses are not consistent with those implied in a general equilibrium, as noted by Cox et al. (1981).

# Preferred Habitat Hypothesis

Crucial alternatives to the expectations theory of the term structure of interest rates are theories that add an element of risk when conferring the expected rate of return for bonds of different maturities; that is, the indifference assumption that was stated earlier no longer holds. If the investment horizon is one year, it does make a difference whether to invest in a one-year instrument, a two-year instrument sold after one year, or two sequential six-month instruments. The preferred habitat theory argues that we first must know the investment horizon to determine relative risk among bonds. In the simple example, the horizon is one year. The one-year instrument is safest for this horizon. Under the preferred habitat theory, the investor would require a higher rate of return on both the two-year and six-month instrument.

# Liquidity Preference Hypothesis

The liquidity preference theory can be considered a special case of the preferred habitat theory. Here, it is held that investors demand a risk premium as compensation for holding longer-term bonds. In addition, since the variability of price increases with maturity, the risk premium demanded by investors increases. As a special instance of the preferred habitat theory, the liquidity preference theory says that as all investors have a habitat of a single period, the shortest-term bond is judged safest.

With each of these theories, one can assess their efficacy only in the context of the general economy. Specifically, we assume that the economy is one in which investors have an inclination to consume, as well as to invest (in fact, even in a diverse set of risky investments). With a specification of utility of consumption and wealth, as well as a formal expression for risk aversion, the risk-based term structure theories can be viewed in the context of markets. Given that risk-based term structure theories can be viewed in the context of a defined market, the following conclusions can be made.

Term premiums are monotonic in maturity (or term). Interest-rate risk is inherently intertemporal. That is, it is a multiperiod phenomenon, in which an unexpected interest-rate change at any period affects all future returns and risk compounds over time. The traditional notion of preferred habitat seems difficult to reconcile with real markets. As it turns out, the traditional notion omits the importance of risk aversion. As we incorporate a varying need to hedge against interest-rate changes, the theory converges to a more acceptable view of markets. The generalization of these economic analyses has led to what has been called an eclectic theory of the term structure that recognizes and accommodates the many factors that play a role in shaping the term structure. Expectations of future events, risk preferences, and the characteristics of a variety of investment alternatives are all important, as are the individual preferences (habitats) of market participants about the timing of their consumption. It is this eclectic theory that one needs to embrace in the development of the dynamic term structure.


# CONTINUOUS-TIME MODELS OF THE TERM STRUCTURE

Now we discuss how the earlier concepts of discount function, spot rate, spot yield, and forward rate have their analogies in the continuous-time domain. It will be seen that while the mathematics are slightly more complex, the roles that each of these quantities play in the term structure of interest rates remain unchanged.

In summary, the priced-based representation of the term structure, or the discount function, facilitates both the mathematical formulation of the problem and its subsequent solution. Once the term structure equation is solved explicitly in terms of price, the price/yield equation (in continuous time) is used to convert the term structure to its equivalent representation in terms of yield.

Given the intertemporal nature of the term structure and the apparent efficiency of the market to incorporate information, it is assumed that the market acts instantaneously, and that a period in time is but an instant. This is the underlying premise for continuous-time models in economics and finance.

Traditional fixed-income analysis assumes that compounding occurs at discrete points or over finite intervals, typically on a semiannual basis. However, as the compounding period grows ever shorter, discrete compounding is replaced by continuous compounding. We expand our original equation (2) for the present value (at  $t$ ),  $PV(t,T)$ , of a cash flow received  $T$  years from today,  $CF(t,T)$ , which is invested at the spot yield,  $R(t,T)$ , to be

$$
P V (t, T) = C F (t, T) e ^ {- T R (t, T)} \tag {16}
$$

Equation (16) is the fundamental price/yield relationship for the case of continuous compounding of a discount bond and is the direct analog of the price/yield relationship shown in equation (2) for discrete compounding.


# DISCOUNT FUNCTION

For a pure discount bond that pays one dollar at maturity,  $CF(t,T) = 1$ . Let  $P$  be the price of the pure discount bond. Thus equation (16) becomes

$$
P (t, T) = e ^ {- T R (t, T)} \tag {17}
$$

Combining the above with equation (16), which equates the price of a discount bond to the discount function, we obtain

$$
P (t, T) = e ^ {- T R (t, T)} = d (t, T) \tag {18}
$$

Equation (18) provides an expression for the relationship between the discount function  $d$  and the spot yield  $R$ , and is the continuous-time analogy to equation (3).

# Spot Rate

In the previous section, the spot rate was defined as the one-period rate of return. Under continuous compounding, the spot rate  $r$  is defined as the continuously compounded instantaneous rate of return. Stated another way, the spot rate is the return on a discount bond that matures in the next instant. The spot rate is really an expression of the concept that a discount bond with a specified term-to-maturity and yield is equivalent to a series of instantaneously maturing discount bonds that are continuously reinvested at a rate  $r$  until the final term  $T$ . This is discussed in the following section.

# Spot Yield

If the spot rate is a known function of time, then a loan amount  $W$  that is invested at the spot rate  $r$  will grow by an increment  $dW$  that is given by

$$ d W (t) = W (t) r (t) d t \tag {19}
$$ where


$$
\begin{array}{c} d W (t) = \text {i n c r e m e n t a l i n c r e a s e i n t h e v a l u e o f} \\ \text {t h e l o a n f r o m t i m e t t o t i m e t + d t} \end{array}
$$

$$
W (t) = \text {v a l u e} t
$$

$$ r (t) = \text {s p o t r a t e} t
$$

To find the value of the loan  $W$  at maturity, integrate equation (19)

$$
\int_ {t} ^ {t + T} \frac {D W (\tau)}{W (\tau)} = \int_ {t} ^ {t + T} r (\tau) d \tau
$$

$$
W (t) = W (t + T) \exp \left(- \int_ {t} ^ {t + T} r (\tau) d \tau\right) \tag {20}
$$

If  $W$  is a discount bond,  $W(t)$  is equal to the present value  $P(t,T)$  and the value of  $W(t + T)$  is one. Equation (20) is rewritten as

$$
P (t, T) = \exp \left(- \int_ {t} ^ {t + T} r (\tau) d \tau\right) \tag {21}
$$

From equation (17), the price  $P$  is expressed in terms of its spot yield  $R$ . By equating (17) and (21), we obtain the following expression for the spot yield in terms of the spot rate

$$
R (t, T) = \frac {1}{T} \int_ {t} ^ {t + T} r (\tau) d \tau \tag {22}
$$

Equation (22) is a general expression that always holds.

Another view of the relationship between the spot yield and the spot rate is that instead of continuously reinvesting at the spot rate  $r$  for a fixed maturity  $T$  to obtain the spot yield  $R$ , if the term-to-maturity grows ever shorter, the spot yield  $R$  approaches the spot rate  $r$  "in the limit."  $r$  may be stated as

$$ r (t) = R (t, T = 0) = \lim  _ {T \rightarrow 0} R (t, T) \tag {23}
$$

Graphically, the spot rate at  $t = 0$  may be visualized as the yield corresponding to the point at which the spot-yield curve intercepts the yield axis.

# FORWARD RATE

The forward rate,  $F(t_0,t)$  is the marginal rate of return for extending an investment to an additional increment of term at  $t > t_0$ . The forward rate is defined by

$$
R (t, T) = \frac {1}{T} \int_ {t} ^ {t + T} F (t, \tau) d \tau \tag {24}
$$

Comparing the above notations for the forward rate with that in equation (4), note that the parameter "1" from the previous parameter set (denoting one time period) is no longer present. In the continuous-time domain, one time period collapses to just an instant.

Rearranging and applying Leibniz's rule, the above becomes

$$
\begin{array}{l} \frac {d}{d T} [ T R (t, T) ] = \frac {d}{d T} \int_ {t} ^ {t + T} F (t, \tau) d \tau \\ = F (t, t + T) \\ = F (t, s) \tag {25} \\ \end{array}
$$ where  $s$  is the maturity date. The above equations relate the forward rate to the spot yield  $R$ . As with the case of discrete compounding, the forward rate may be expressed similarly in terms of the discount function  $d(t,T)$  or the spot rate  $r(t)$ .


From equations (17), (18), and (25),

$$
F (t, t + T) = \frac {- d}{d T} \ln [ d (t, T) ] \tag {26}
$$ where  $\ln[]$  is the natural logarithm.


Separately, from equations (22) and (24),

$$ r (t) = \lim  _ {T \rightarrow 0} R (t, T)
$$

$$
\begin{array}{l} r (t) = \lim  _ {T \rightarrow 0} R (t, T) \frac {1}{T} \int_ {t} ^ {t + T} F (t, \tau) d \tau \\ = \lim  _ {T \rightarrow 0} \frac {1}{T} F (t, \hat {t}) T (t <   \hat {t} <   t + T) \\ = F (t, t) \tag {27} \\ \end{array}
$$

Under a certain economy, equations (22) and (27) show that the spot rate needs to be equal to the forward rate to preclude arbitrage. In the case in which the spot-yield curve  $R(t,T)$  (and consequently the term structure) is defined, it follows that the spot rate needs to be equal to the instantaneous forward rate over the term of the discount bond for equation (27) to hold true (see equation (7) for the analogy in the case of discrete compounding).


Since  $R$  is the yield of a discount bond and the term structure of interest rates is the set of spot yields as a function of maturity, equation (22) defines the term structure when the evolution of the spot rate is a known function of time. However, in general, the spot rate is not known; only the current spot rate is known from the current spot-yield curve. Nevertheless, term structure theory expands the basic relationship that is shown in equation (22), namely that the yield of a discount bond is a function of the spot rate. This is discussed in more detail in the next section when the spot rate assumes the form of a stochastic differential equation.

# TERM STRUCTURE IN CONTINUOUS TIME

As stated in the previous section, the term structure of interest rates describes the relationship between the yields of default-free, zero-coupon securities as a function of maturity. Consequently, the term structure may be envisioned as a continuous set of yields for zero-coupon securities over a range of maturities.

Equation (18) describes the price/yield relationship for a single zero-coupon bond of a given maturity. As the term-to-maturity  $T$  spans the range of possible maturities within the term structure, the associated spot yields are generated for each maturity point, that is,  $R$  is a function of the term  $T$ . Furthermore, for any one value of  $T$ , the spot yield will vary as a function of the time  $t$ . In general, the spot yield  $R$  is a function of the term-to-maturity  $T$ , the time  $t$  and the spot rate  $r$  (as shown by equation (22)).  $R$  may be expressed as

$$
R = R (r, t, T) \tag {28}
$$

Equation (28) describes the functional form of the term structure in terms of the spot yield  $R$ . In order to describe the term structure completely, an equation is needed that mathematically specifies the form of the relationship between the spot yield  $R$  and the term  $T$  over time  $t$ .


Such an equation for the term structure may be found by considering that the term structure may be expressed equivalently in terms of the prices of discount bonds (i.e., through the discount function). Thus equation (17) may be rewritten as

$$
R (r, t, T) = - \frac {1}{T} \ln [ P (r, t, T) ] \tag {29}
$$ where  $\ln[]$  is the natural logarithm.


If an expression for  $P(r, t, T)$  can be found that defines the value of a zero-coupon bond at different points in time and for varying terms  $T$ , then the term structure of interest rates has been defined fully. Alternatively, equation (29) provides an equivalent description of the evolution of the term structure over time in terms of the spot yield.

# KEY POINTS

- There are three main static models for the term structure of interest rates: the spot yield curve, the discount function, and the curve of implied forward rates; straightforward trans formations allow moving from one model to the other.


- These representations exist in both discrete-time and continuous-time versions and may be readily constructed from market data.
- Static models of the term structure suit valuation and comparisons of fixed-income instruments for which there is no dependency (contingency) on future events.
- Even though implied forward rates provide an arbitrage-free forecast for the future course of interest rates, static models do not admit uncertainty about the future.
- There are three main explanations for the future course of interest rates in equilibrium: the expectations hypothesis, the preferred habitat hypothesis, and the liquidity preference hypothesis.

# REFERENCES

Cox, J. C., Ingersoll, J. E., Jr., and Ross, S. A. (1981). Re-examination of traditional hypotheses about the term structure of interest rates. Journal of Finance (September): 769-799.

Vasicek, O. A., and Fong, H. G. (1982). Term structure modeling exponential spline. Journal of Finance (May): 339-348.

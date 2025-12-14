---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Chapter 18
linter-yaml-title-alias: Chapter 18
---

# Chapter 18

# xVAs

As explained in Chapter 6, there are two ways in which over-the-counter derivatives transactions are cleared: through central clearing parties (CCPs) and through bilateral agreements. As a result of regulations introduced since the Global Financial Crisis, transactions between financial institutions in standardized derivatives have to be cleared through CCPs. Transactions in nonstandard derivatives between financial institutions are cleared bilaterally, but regulations require a great deal of collateral to be posted so that there is very little credit risk. This chapter focuses on bilaterally cleared over-the-counter derivatives transactions. These include transactions with non-financial end users and transactions with other counterparties that were entered into before the new rules came into effect.

Assessing the credit risk for derivatives transactions is much more complicated than assessing the credit risk for loans because the future exposure (i.e., the amount that could be lost in the event of a default) is not known. If a bank makes a  $10 million uncollateralized five-year loan to a client with repayment of principal at the end, the bank knows that its exposure is approximately$ 10 million at all times during the five-year period. If the bank instead enters into a five-year uncollateralized interest rate swap with the client, the future exposure is much less certain. This is because the future value of the swap depends on movements in interest rates. If the value of the interest rate swap to the bank becomes positive, the exposure is equal to the value of the swap (because this is what the bank could lose in the event of a counterparty default). If the value becomes negative, the exposure is zero (because in that case the bank would not lose anything in the case of a counterparty default).

This chapter discusses what are known as the xVAs. These quantify different aspects of the costs (or benefits) of the credit risks associated with derivatives. The most important xVA is credit value adjustment (CVA), which is the present value of the expected loss from default by the derivatives dealer. Debit (or debt) value adjustment is the present value of the expected gain to the dealer (loss to the counterparty) from a default by the dealer. Examples of other xVAs are funding value adjustment (FVA), margin value adjustment (MVA), and capital value adjustment (KVA).

# 18.1 Credit Exposure on Derivatives

We start by quickly reviewing the nature of a dealer's exposure to a counterparty created by derivatives transactions. Consider first the simple case where there is only one derivatives transaction outstanding between a derivatives dealer and a counterparty. We assume that the transaction is cleared bilaterally and no collateral is posted by either the dealer or the counterparty.

Three possible situations can be distinguished:

1. The derivative is always a liability to the dealer.
2. The derivative is always an asset to the dealer.
3. The derivative can become either an asset or a liability to the dealer.

An example of a derivative in the first category is a short position in an option; an example in the second category is a long position in an option; an example in the third category is a forward contract or an interest rate swap transaction.

In the first case, the dealer has no credit exposure to the counterparty. If the counterparty defaults (e.g., because it is bankrupt), the transaction is terminated. $^{1}$  The dealer will be required to pay the negative value of the derivative (adjusted to reflect the bid-ask spread costs that the dealer will incur in replacing the transaction) to the estate of the defaulting counterparty. There should therefore be neither a gain nor a loss to the dealer.

In the second case, the dealer always has credit exposure to the counterparty. If the counterparty defaults, the dealer is liable to experience a loss. The dealer is an unsecured creditor for the value of the derivative (adjusted to reflect the bid-ask spread costs that the dealer will incur in replacing the transaction). The amount of the loss depends on the value of the derivative at the time of the bankruptcy and the recovery made.

The third case is more complicated. The dealer may or may not have credit exposure to the counterparty in the future. If the counterparty defaults when the value of the derivative is positive to the dealer, the dealer is an unsecured creditor, as in the second case. If the counterparty defaults when the value is negative to the dealer, no loss or gain to the dealer results, as in the first case.

When calculating their exposures, dealers typically do not allow for the bid-ask spread they would face in replacing the transaction. In the simple example we have been considering, the dealer's net exposure is therefore

$$
\max  (V, 0)
$$ where the variable,  $V$ , is the market value of the derivative at the time of the default.


When there are many derivatives transactions outstanding between the dealer and the counterparty, the bilateral agreement between the dealer and its counterparties usually means that they are netted (see Section 6.2.4). The dealer's exposure at any given time, assuming no collateral is posted, is therefore  $\max(V, 0)$ , with  $V$  equal to the net mark-to-market value of all outstanding transactions.

In calculating its credit risk, the dealer is interested in both its credit exposure today and what that exposure might be in the future. In the next few sections, we focus on CVA, the quantification of the cost to the dealer.

# 18.2 CVA

A dealer calculates what is known as a credit value adjustment or CVA for each counterparty with which it has bilaterally cleared OTC derivatives. This is an estimate of its expected loss from a default by the counterparty. CVA reduces the value of the derivatives on the balance sheet, and an increase (decrease) in the total CVA during a period leads to a decrease (or increase) in profits for the period.

Suppose that  $T$  is the life of the longest derivative outstanding with a counterparty. To calculate CVA, the period of time between time zero (today) and time  $T$  is divided into a number of intervals (e.g., zero to one month, one to three months, etc.).

Suppose that the  $i$ th time interval runs from  $t_{i-1}$  to  $t_i$  ( $t_0 = 0$ ) and there are  $n$  intervals. Define

$q_{i}$ : the probability of a loss from a default by the counterparty during the  $i$ th time interval. As explained in Chapter 17, because we are engaged in valuation this should be the "risk-neutral" probability of default calculated from credit spreads.

$\nu_{i}$ : the present value of the expected net exposure of the dealer to the counterparty (after taking account of any collateral posted by the counterparty) at the midpoint of the  $i$ th time interval, conditional on a default

$R$ : the estimated recovery rate of the dealer in the event of a default by the counterparty when it is an unsecured creditor

Assuming that the net exposure is independent of the probability of default, the present value of the expected loss from a default during the  $i$ th interval can be estimated as

$$

(1 - R) q _ {i} \nu_ {i}

$$ and the total expected loss is


$$

\mathrm {C V A} = \sum_ {i = 1} ^ {n} (1 - R) q _ {i} v _ {i} \tag {18.1}

$$

The  $q_{i}$  are estimated from the counterparty's credit spreads, as discussed in Chapter 17. Suppose that  $s_{i}$  is an estimate of the counterparty's credit spread for a maturity of  $t_{i}$ . From equation (17.3), an estimate of the average hazard rate between time zero and time  $t_{i}$  is

$$

\bar {\lambda} _ {i} = \frac {s _ {i}}{1 - R} \tag {18.2}

$$ and the probability of no default between times zero and  $t_i$  is

$$ e ^ {- \bar {\lambda} _ {i} t _ {i}}
$$ so that


$$ q _ {i} = e ^ {- \overline {{\lambda}} _ {i - 1} t _ {i - 1}} - e ^ {- \overline {{\lambda}} _ {i} t _ {i}}
$$ or, substituting from equation (18.2)


$$ q _ {i} = \exp \left(- \frac {s _ {i - 1} t _ {i - 1}}{1 - R}\right) - \exp \left(- \frac {s _ {i} t _ {i}}{1 - R}\right) \tag {18.3}
$$

The  $\nu_{i}$  are usually calculated using Monte Carlo simulation. The market variables determining the future value of the transactions that the dealer has with the counterparty are simulated in a risk-neutral world between time zero and time  $T$ . On each simulation trial the exposure of the dealer to the counterparty at the midpoint of each interval is calculated. These exposures are averaged and  $\nu_{i}$  is set equal to the present value of the average exposure at the midpoint of the  $i$ th interval. Dealers may have transactions with thousands of counterparties so that the calculation of the  $\nu_{i}$  for all of them can be computationally quite time consuming.

# 18.2.1 Collateral and Cure Periods

Collateral agreements must be incorporated into the calculation of the  $\nu_{i}$ . A collateral agreement between two sides is generally in the credit support annex (CSA) of their ISDA master agreement. This gives the details on how the collateral posted by each side is calculated and specifies haircuts on noncash collateral. Suppose that  $C$  is defined as the collateral posted by the counterparty at the time of a default. (If  $C$  is negative,  $-C$  is the collateral posted by the dealer with the counterparty at the time of the default.) The exposure,  $E$ , of the dealer to the counterparty is in all situations

$$
E = \max  (V - C, 0) \tag {18.4}
$$ where  $V$  is the market value of outstanding transactions to the dealer at the time of the default.


Equation (18.4) reflects the fact that collateral posted by the counterparty can be used to reduce (and possibly eliminate) an exposure from a positive  $V$ . If the dealer has posted collateral with the counterparty ( $C < 0$ ), to the extent that it is greater than the value  $-V$  of the transactions to the counterparty, there is an exposure. (As mentioned, exposure is usually defined in terms of the mid-market value of transactions so that bid-ask spreads are not taken into account.)

It is usually the case that a period of time elapses between the time when a counterparty stops posting collateral and the close-out of transactions. This period of time is known as the cure period (or margin period of risk). It is typically assumed to be 10 days. The effect of the cure period is that the collateral at the time of a default does not reflect the value of the portfolio at the time of the default. It reflects the value 10 days earlier.

Suppose that the midpoint of the  $i$ th interval is  $t_i^*$  so that  $t_i^* = (t_{i-1} + t_i)/2$  and  $c$  is the cure period. The Monte Carlo simulation to calculate the  $\nu_i$  must be structured so that the value of the derivatives portfolio with the counterparty is calculated at times  $t_i^* - c$  as well as at time  $t_i^*$  ( $i = 1, 2, \ldots, n$ ). On each simulation trial the value at time  $t_i^* - c$  is used in conjunction with the CSA to calculate the collateral available at time  $t_i^*$ . The net exposure at time  $t_i^*$  is then calculated using equation (18.4). The calculations are illustrated in Example 18.1.

# Example 18.1

Suppose there is a two-way zero threshold collateral agreement between a bank and its counterparty. This means that the total collateral to be posted by one side with the other side on a day is specified as  $\max(V, 0)$ , where  $V$  is the value of the outstanding transactions to the other side. The cure period is assumed to be 10 days. This means that the collateral posted by one side at the time of a default can be assumed to equal  $\max(V, 0)$  where  $V$  is the value to the other side 10 days earlier. Suppose that time  $\tau$  is the midpoint of one of the intervals used in the bank's CVA calculation.

1. On a particular simulation trial, the value of outstanding transactions to the bank at time  $\tau$  is 50 and their value 10 days earlier is 45. The calculation assumes that the bank has collateral worth 45 in the event of a default at time  $\tau$ . The bank's exposure is therefore 5, the uncollateralized value it has in the derivatives transactions.
2. On a particular simulation trial, the value of outstanding transactions to the bank at time  $\tau$  is 50 and their value 10 days earlier is 55. In this case, it is assumed that the bank will have adequate collateral and its exposure is zero.
3. On a particular simulation trial, the value of outstanding transactions to the bank at time  $\tau$  is  $-50$  and the value 10 days earlier is  $-45$ . In this case, the bank is assumed to have posted less than 50 of collateral with the counterparty in the event of a default at time  $\tau$  and its exposure is zero.


4. On a particular simulation trial, the value of outstanding transactions to the bank at time  $\tau$  is  $-50$  and the value 10 days earlier is  $-55$ . In this case, it is assumed that 55 of the bank's collateral is held by the counterparty 10 days before time  $\tau$  and, in the event of a default at time  $\tau$ , none of it is returned. The bank's exposure is therefore 5, the excess collateral it has posted.

# 18.2.2 Peak Exposure

In addition to calculating CVA, dealers usually calculate the peak exposure at the midpoint of each interval. This is a high percentile of the exposures given by the Monte Carlo simulation trials. Suppose for example that the percentile chosen is  $97.5\%$  and there are 10,000 Monte Carlo simulation trials. The peak exposure at time  $t_i^*$  is the 250th highest exposure recorded at that time. The maximum peak exposure is the maximum of the peak exposures across all the  $t_i^*$ .

There is a theoretical issue here (which is often ignored in practice). To calculate CVA, we simulate the behavior of market variables in the risk-neutral world and discount at the risk-free rate. (As explained in Chapter 10, it is correct to do this when a valuation is being carried out.) When we calculate peak exposure, we are carrying out a scenario analysis. We are in effect asking, "How bad can our exposure to the counterparty get in the future?" For this purpose we should in theory simulate the behavior of market variables in the real world, not the risk-neutral world.

# 18.2.3 Downgrade Triggers

Netting and collateral agreements are important ways in which credit risk is reduced in bilaterally cleared derivatives transactions. Sometimes the credit support annex to an ISDA master agreement also includes a downgrade trigger. This is a clause stating that if the credit rating of one side falls below a certain level, the other side has the right to ask for more collateral or to terminate transactions.

AIG provides an example of the operation of a downgrade trigger. Many of AIG's transactions stated that AIG did not have to post collateral provided its credit rating remained above AA. However, once it was downgraded below AA, collateral was required. AIG was downgraded below AA by all three rating agencies on September 15, 2008. This led to collateral calls, which AIG was unable to meet. Its bankruptcy was avoided by a massive government bailout.

Other companies that have run into problems because of downgrade triggers include Enron, Xerox, and Ambac. Downgrade triggers do not provide protection to a company's counterparties from a big jump in a company's credit rating (for example, from AA to default). Also, downgrade triggers work well for a company's counterparties only when the company is making relatively little use of them. If a company has many downgrade triggers in its contracts, an AIG-type situation can arise where a downgrade below a specified credit rating can lead to huge cash demands on the company. If these cash demands cannot be met, an immediate bankruptcy follows.


# 18.3 The Impact of a New Transaction

When a new derivatives transaction is being negotiated by a dealer with a counterparty, its incremental effect on CVA may influence the terms offered. If the value of the new transaction is positively correlated with other transactions entered into by the dealer with the counterparty, the incremental effect on CVA is likely to be positive. If this correlation is negative, the new transaction can have the effect of reducing CVA.

Suppose, for example, that a dealer has one transaction outstanding with a counterparty: a five-year forward foreign currency transaction where the counterparty is buying the currency. If the counterparty then expresses interest in entering into a three-year forward foreign currency transaction, the competitiveness of the dealer's quote might depend on which side of the transaction the counterparty wants to take. If the counterparty wants to buy the currency, the new transaction would have the effect of increasing CVA (making the transaction less attractive to the dealer). On the other hand, if the counterparty wants to sell the currency, it would be netted with the existing transaction and have the effect of reducing CVA (making the transaction more attractive to the dealer). These CVA/netting considerations suggest that when transactions are cleared bilaterally and are not fully collateralized, a company will sometimes get the most favorable quotes from a dealer with whom it already has transactions outstanding rather than from a dealer with whom it has done no previous business.

Calculating CVA can be computationally intensive. Often dealers have hundreds or thousands of transactions outstanding with a counterparty. Calculating the incremental effect of a new transaction on CVA by recomputing CVA is not usually feasible. Luckily there is a computationally efficient approach for calculating incremental CVA.

When the CVA calculations in Section 18.2 are carried out, the paths followed by market variables on each simulation trial and the value of the portfolio on each simulation trial are stored. When a potential new transaction is being considered, its value at future times is calculated for the values of the market variables that were obtained on the simulation trials. This gives the incremental impact of the transaction on the future portfolio value for each of the last-used Monte Carlo simulation trials at all future times. The incremental impact on the exposure at each time for each Monte Carlo trial can then be calculated. From this, the incremental effect on the average exposure at each time can be calculated and equation (18.1) can then be used to calculate the incremental effect on CVA.


To illustrate this, suppose that a portfolio with a counterparty depends only on the price of gold and that the price of gold at time 2.5 years on the 545th simulation trial when CVA is calculated is $1,572, with the value of the portfolio to the dealer being $2.4 million. Assuming no collateral is posted, this is also the value of the exposure. If 2.5 years is the midpoint of the 20th time step, this means that  $\nu_{20}$  is the present value of $2.4 million received at time 2.5 years. We suppose that this is $2.3 million.

Suppose that, shortly after CVA is calculated, a potential new transaction with the counterparty, dependent on the price of gold, is contemplated. This transaction is valued at all times for the paths followed by the price of gold on all simulation trials. Suppose that, on the 545th simulation trial, it is calculated that the value of the new transaction will be -\ 4.2$ million at time 2.5 years (when the price of gold is 1,572). This means that the portfolio value reduces from \$ 2.3 million to -\ 1.9$ million at time 2.5 years on the 545th simulation trial as a result of the new transaction. This reduces the exposure to zero so that the new v_{20} is zero. The new transaction therefore has the effect of reducing v_{20} by \ 2.3 million. Similar calculations are carried out for all simulation trials and all times. Define  \Delta v_{i}  as the average change in  v_{i}  across all the simulation trials. The incremental effect on CVA of the new transaction is estimated as

$$

\sum_ {i = 1} ^ {n} (1 - R) q _ {i} \Delta v _ {i}

$$

# 18.4 CVA Risk

A dealer has one CVA for each counterparty. These CVAs can themselves be regarded as derivatives. They are particularly complex derivatives. Indeed, the CVA for a counterparty is more complex than any of the transactions between the dealer and the counterparty because it is contingent on the net value of all the transactions between the dealer and the counterparty.

When CVA increases (decreases), the income reported by a derivatives dealer decreases (increases). For this reason, many dealers consider it prudent to try to hedge CVAs in the same way that they hedge other derivatives. This means that they must calculate the Greek letters (delta, gamma, vega, etc.) discussed in Chapter 15.

The variables affecting the  $\nu_{i}$  are market variables such as interest rates, exchange rates, commodity prices, and so on. Calculating Greek letters for these is liable to be computationally quite time consuming. For example, to calculate the delta of CVA with respect to an exchange rate, it is necessary to make a small change to the exchange rate and recompute CVA. A technique known as adjoint differentiation can be used to ease the computational burden. $^7$


The variables affecting the  $q_{i}$  are the credit spreads of the counterparty for different maturities. From equation (18.3)

$$ q _ {i} = \exp \left(- \frac {s _ {i - 1} t _ {i - 1}}{1 - R}\right) - \exp \left(- \frac {s _ {i} t _ {i}}{1 - R}\right)
$$

From equation (18.1)

$$
\mathrm {C V A} = \sum_ {i = 1} ^ {n} (1 - R) q _ {i} \nu_ {i}
$$

Using a delta/gamma approximation, the change in CVA resulting from a small parallel shift,  $\Delta s$ , in the term structure of credit spreads (with all the market variables determining the  $\nu_{i}$  being assumed to remain fixed) is therefore

$$
\begin{array}{l} \Delta (\mathrm {C V A}) = \sum_ {i = 1} ^ {n} \left[ t _ {i} \exp \left(- \frac {s _ {i} t _ {i}}{1 - R}\right) - t _ {i - 1} \exp \left(- \frac {s _ {i - 1} t _ {i - 1}}{1 - R}\right) \right] \nu_ {i} \Delta s \\ + \frac {1}{2 (1 - R)} \sum_ {i = 1} ^ {n} \left[ t _ {i - 1} ^ {2} \exp \left(- \frac {s _ {i - 1} t _ {i - 1}}{1 - R}\right) - t _ {i} ^ {2} \exp \left(- \frac {s _ {i} t _ {i}}{1 - R}\right) \right] v _ {i} (\Delta s) ^ {2} \tag {18.5} \\ \end{array}
$$

This can be calculated without difficulty once the  $\nu_{i}$  are known.

Regulators require dealers to use this equation to incorporate the risks arising from changes in credit spreads into market risk capital calculations.[8]

# 18.5 Wrong-Way Risk

Up to now we have assumed that the probability of default is independent of the exposure. A situation where there is a positive dependence between the two, so that the probability of default by the counterparty tends to be high (low) when the dealer's exposure to the counterparty is high (low), is referred to as wrong-way risk. A situation where there is negative dependence, so that the probability of default by the counterparty tends to be high (low) when the dealer's exposure to the counterparty is low (high), is referred to as right-way risk.

A subjective evaluation of the amount of wrong-way or right-way risk in transactions with a counterparty requires a good knowledge of the counterparty's business, in particular the nature of the risks facing the business. It also requires knowledge of the transactions the counterparty has entered into with other dealers. The latter is difficult to know with any precision.

One situation in which wrong-way risk tends to occur is when a counterparty is using a credit default swap to sell protection to the dealer. When a dealer buys protection from the counterparty and the credit spread of the reference entity increases, the value of the protection to the dealer becomes positive. However, because the credit spreads of different companies tend to be correlated, it is likely that the credit spread of the counterparty has increased so that the counterparty's calculated probability of default has also increased. Similarly, right-way risk tends to occur when a counterparty is buying credit protection from the dealer.

A situation in which a company is speculating by entering into many similar trades with one or more dealers is likely to lead to wrong-way risk for these dealers. This is because the company's financial position and therefore its probability of default is likely to be affected adversely if the trades move against the company.

If a company enters into transactions with a dealer to partially hedge an existing exposure, there should in theory be right-way risk. This is because, when the transactions move against the counterparty, it will be benefiting from the unhedged portion of its exposure so that its probability of default should be relatively low.[9]

A simple way of dealing with wrong-way risk is to use what is termed the "alpha" multiplier to increase  $\nu_{i}$  in the model in equation (18.1) where the  $\nu_{i}$  and  $q_{i}$  are assumed to be independent. The effect of this is to increase CVA by the alpha multiplier. Regulators set alpha equal to 1.4, but allow banks to use their own models, with a floor for alpha of 1.2. This means that, at minimum, the CVA has to be  $20\%$  higher than that given by the model where the  $\nu_{i}$  and  $q_{i}$  are assumed to be independent. If a bank does not have its own model for wrong-way risk, it has to be  $40\%$  higher. Estimates of alpha reported by banks range from 1.07 to 1.10.

Some models have been developed to capture the dependence of the probability of default on the exposure. For example, Hull and White (2012) propose a simple model where the hazard rate at time  $t$  is a function of variables observable at that time. $^{10}$  Their parameter describing the extent of the dependence can be either estimated subjectively or estimated by relating past credit spreads for the counterparty to what the value of the current portfolio would have been in the past. Implementing the model involves relatively minor modifications to the calculations outlined in Section 18.2.

# 18.6 DVA

Debit value adjustment (DVA) is the mirror image of CVA.11 Whereas CVA is the expected cost to the dealer from a possible default by the counterparty, DVA is the expected cost to the counterparty because the dealer might default. It is the counterparty's CVA. If DVA is a cost to the counterparty, it must be a benefit to the dealer. (This is because derivatives are zero sum games: the gain to one side always equals the loss to the other side.) The benefit arises from the fact that the dealer when it defaults avoids payments that would otherwise be required on outstanding derivatives. Accounting standards recognize both CVA and DVA. The book value of the derivatives outstanding with a counterparty to be calculated is

$$ f _ {\mathrm {n d}} - \mathrm {C V A} + \mathrm {D V A}
$$ where  $f_{\mathrm{nd}}$  is the value of the derivatives assuming neither side will default.


DVA can be calculated at the same time as CVA. Equation (18.1) gives DVA rather than CVA if  $R$  is the recovery rate of the counterparty in the event of a default by the dealer,  $\nu_{i}$  is the present value of the counterparty's exposure to the dealer at the midpoint of the  $i$ th interval, and  $q_{i}$  is the probability of a default by the dealer during the  $i$ th interval. The counterparty's net exposure to the dealer takes account of collateral posted by the dealer with the counterparty in the same way that the dealer's net exposure to the counterparty takes account of the collateral posted by the counterparty with the dealer.

One surprising effect of DVA is that when the credit spread of a derivatives dealer increases, DVA increases. This in turn leads to an increase in the reported value of the derivatives on the books of the dealer and a corresponding increase in its profits. Some banks reported several billion dollars of profits from this source in the third quarter of 2011. Regulators are uncomfortable with this and have excluded DVA gains and losses from the definition of common equity in the determination of regulatory capital.

# 18.7 Some Simple Examples

To illustrate the ideas presented so far in this chapter, we now present some simple examples.

# 18.7.1 Single Transaction with Positive Value

Suppose first that a dealer has a single derivatives transaction with a counterparty that is bound to have a positive value to the dealer and a negative value to the counterparty at all future times. (An example would be the situation where the dealer has bought an option from the counterparty.) We suppose that no collateral has to be posted by the counterparty and, for ease of exposition, assume that payoffs on the derivatives transaction occur only on its expiration date.

The exposure of the dealer to the counterparty at a future time is the value of the transaction at that time. The present value of the expected exposure at time  $t_i$ , which we have denoted by  $\nu_i$ , is therefore the present value of the expected value of the transaction at time  $t_i$ . Because we are assuming no payoffs before maturity, the present value of the expected value of the transaction at time  $t_i$  is always equal to its value today.

Equation (18.1) therefore becomes

$$

\mathrm {C V A} = (1 - R) f _ {0} \sum_ {i = 1} ^ {n} q _ {i}

$$ where  $f_0$  is the value of the derivative today, assuming no defaults. If  $f_0^*$  is the value after defaults are taken into account:

$$ f _ {0} ^ {*} = f _ {0} - \mathrm {C V A}
$$ or


$$ f _ {0} ^ {*} = f _ {0} \left[ 1 - (1 - R) \sum_ {i = 1} ^ {n} q _ {i} \right] \tag {18.6}
$$

This means that the effect of defaults is to reduce the value of the derivative by a proportional amount equal to the cumulative risk-neutral probability of default during the life of the derivative times one minus the recovery rate.

Now consider an unsecured zero-coupon bond issued by the counterparty that promises  $1,000 at time T$ . Define  $B_0$  as the value of the bond assuming no possibility of default and  $B_0^*$  as the actual value of the bond. Assuming that the bond ranks equally with the derivative in the event of a default, it will have the same recovery rate. Similarly to equation (18.6)

$$
B _ {0} ^ {*} = B _ {0} \left[ 1 - (1 - R) \sum_ {i = 1} ^ {n} q _ {i} \right] \tag {18.7}
$$

From equations (18.6) and (18.7)

$$
\frac {f _ {0} ^ {*}}{f _ {0}} = \frac {B _ {0} ^ {*}}{B _ {0}} \tag {18.8}
$$

If  $\gamma$  is the yield on a risk-free zero-coupon bond maturing at time  $T$  and  $\gamma^{*}$  is the yield on a zero-coupon bond issued by the counterparty that matures at time  $T$ , then  $B_{0} = e^{-\gamma T}$  and  $B_{0}^{*} = e^{-\gamma^{*}T}$  so that equation (18.8) gives

$$ f _ {0} ^ {*} = f _ {0} e ^ {- \left(\gamma^ {*} - \gamma\right) T} \tag {18.9}
$$

This shows that the derivative can be valued by increasing the discount rate that is applied to the expected payoff by  $\gamma^{*} - \gamma$ .

# Example 18.2

Consider a two-year uncollateralized over-the-counter option sold by a company with a value, assuming no possibility of default, of 3. Suppose that two-year zero-coupon bonds issued by the company have a yield that is 1.5\% greater than a similar risk-free zero-coupon bond. The value of the option is

$$
3 e ^ {- 0. 0 1 5 \times 2} = 2. 9 1
$$ or 2.91.


![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/dea3ed0da66102760a6b455d1b9d8f28a00c436a93e4a31bb232bbcd926447ef.jpg)
Figure 18.1 Expected Exposure on a Matched Pair of Offsetting Interest Rate Swaps and a Matched Pair of Offsetting Currency Swaps

# 18.7.2 Interest Rate Swaps vs. Currency Swaps

Consider next the situation where the dealer has entered into a pair of swaps that offset each other with two different counterparties. Figure 18.1 compares the total expected future exposure on the two transactions when they are (a) currency swaps and (b) interest rate swaps. The expected exposure on the interest rate swaps starts at zero, increases, and then decreases. By contrast, expected exposure on the currency swaps increases steadily with the passage of time. The main reason for the difference is that principals are exchanged at the end of the life of a currency swap and there is uncertainty about the exchange rate at that time. By contrast, toward the end of the life of the interest rate swap, very little is still to be exchanged. The impact of default risk for a dealer in currency swaps is therefore much greater than for a dealer in interest rate swaps. The  $q_{i}$  that the dealer calculates for counterparties in equation (18.1) are the same regardless of the transaction, but the  $\nu_{i}$  are on average greater for currency swaps.

# 18.7.3 Single Forward Transaction

For another example, we suppose that a dealer has a single forward transaction with a counterparty giving the dealer the right to buy an asset from the counterparty at time  $T$  for a price  $K$ . No collateral has to be posted. Suppose that the forward price of the asset today is  $F_0$  (which is known) and at time  $t$  ( $t \leq T$ ) it is  $F_t$  (which is unknown). As explained in Appendix C, the value of the transaction at time  $t$  is

$$

(F _ {t} - K) e ^ {- r (T - t)}

$$ where  $r$  is the risk-free interest rate (assumed constant).

The exposure at time  $t$  is

$$
\max  \left[ \left(F _ {t} - K\right) e ^ {- r (T - t)}, 0 \right] = e ^ {- r (T - t)} \max  \left[ \left(F _ {t} - K\right), 0 \right] \tag {18.10}
$$

The present value of the exposure is therefore  $e^{-r(T - t)}$  times the value of a derivative that pays off  $\max[(F_t - K), 0]$  at time  $t$ . This is an option on a forward price. From Appendix E, the value of the derivative is

$$ e ^ {- r t} [ F _ {0} N (d _ {1}) - K N (d _ {2}) ]
$$ where


$$ d _ {1} = \frac {\ln (F _ {0} / K) + \sigma^ {2} t / 2}{\sigma \sqrt {t}}
$$ and


$$ d _ {2} = \frac {\ln (F _ {0} / K) - \sigma^ {2} t / 2}{\sigma \sqrt {t}}
$$ and  $\sigma$  is the volatility of the forward price of the asset. It follows from equation (18.10) that the present value of the exposure at time  $t$  is


$$ e ^ {- r T} [ F _ {0} N (d _ {1}) - K N (d _ {2}) ]
$$

The exposure,  $\nu_{i}$ , at a possible default time,  $t_i$ , is therefore

$$
\nu_ {i} = e ^ {- r T} \left[ F _ {0} N \left(d _ {1, i}\right) - K N \left(d _ {2, i}\right) \right] \tag {18.11}
$$ where


$$ d _ {1, i} = \frac {\ln (F _ {0} / K) + \sigma^ {2} t _ {i} / 2}{\sigma \sqrt {t _ {i}}}
$$ and


$$ d _ {2, i} = \frac {\ln (F _ {0} / K) - \sigma^ {2} t _ {i} / 2}{\sigma \sqrt {t _ {i}}}
$$

# Example 18.3

Suppose that a bank has entered into a forward contract to buy 1 million ounces of gold from a mining company in two years for  $1,500 per ounce. The current forward price for the contract is$ 1,600 per ounce. The probability of the company defaulting during the first year is 2\% and the probability of the company defaulting during the second year is 3\%. Defaults are assumed to happen at the midpoints of the years. The risk-free rate is 5\% per annum. The financial institution anticipates a 30\% recovery in the event of a default. The volatility of the forward price of gold when the forward contract expires in two years is 20\%.

In this case, from equation (18.11)

$$
\nu_ {1} = e ^ {- 0. 0 5 \times 2} [ 1, 6 0 0 N (d _ {1, 1}) - 1, 5 0 0 N (d _ {2, 1}) ]
$$ where


$$ d _ {1, 1} = \frac {\ln (1 , 6 0 0 / 1 , 5 0 0) + 0 . 2 ^ {2} \times 0 . 5 / 2}{0 . 2 \sqrt {0 . 5}} = 0. 5 2 7 1
$$

$$ d _ {2, 1} = \frac {\ln (1 , 6 0 0 / 1 , 5 0 0) - 0 . 2 ^ {2} \times 0 . 5 / 2}{0 . 2 \sqrt {0 . 5}} = 0. 3 8 5 6
$$ so that  $\nu_{1} = 132.38$ . Also, from equation (18.11)


$$

\nu_ {2} = e ^ {- 0. 0 5 \times 2} [ 1, 6 0 0 N (d _ {1, 2}) - 1, 5 0 0 N (d _ {2, 2}) ]

$$ where


$$ d _ {1, 2} = \frac {\ln (1 , 6 0 0 / 1 , 5 0 0) + 0 . 2 ^ {2} \times 1 . 5 / 2}{0 . 2 \sqrt {1 . 5}} = 0. 3 8 6 0
$$

$$ d _ {2, 2} = \frac {\ln (1 , 6 0 0 / 1 , 5 0 0) - 0 . 2 ^ {2} \times 1 . 5 / 2}{0 . 2 \sqrt {1 . 5}} = 0. 1 4 1 0
$$ so that  $\nu_{2} = 186.65$


Other variables are:  $q_{1} = 0.02$ ,  $q_{2} = 0.03$ , and  $R = 0.3$  so that

$$

\mathrm {C V A} = (1 - 0. 3) \times (0. 0 2 \times 1 3 2. 3 8 + 0. 0 3 \times 1 8 6. 6 5) = 5. 7 7

$$

The no-default value of the forward contract is (1,600 - 1,500)e^{-2\times 0.05} = 90.48 or \90.48. The value after the possibility of defaults has been taken into account is therefore

$$

9 0. 4 8 - 5. 7 7 = 8 4. 7 1

$$ or 84.71.


This example can be extended to the situation where the mining company can default more frequently or to calculate DVA (see Problems 18.13 and 18.14).

# 18.8 Other xVAs

Consider the situation in Figure 18.2. Bank A has entered into an uncollateralized interest rate swap transaction with a corporate end user and an offsetting transaction with another bank, Bank B. The latter is cleared through a CCP and collateralized with initial and variation margin. It appears that Bank A has locked in a profit of  $0.1\%$  because it receives  $3\%$  from Bank B and pays  $2.9\%$  to the corporate end user. However, the transaction with Bank B is liable to lead to incremental initial margin, which must be funded. The interest paid by the CCP on the initial margin is likely to be less than the cost of funding it. The excess of the funding cost over the interest received from the CCP gives rise to a margin value adjustment (MVA) and reduces the value of the transactions to Bank A.

Figure 18.2 Swaps Entered into by Bank A; The Transaction with Bank B Is Cleared through a CCP
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/01ba359af58f2f53054dadbb952bb9b04fae3cdab1deb99cec1deb1b6b86c3b3.jpg)
The transaction with the end user is cleared bilaterally with no collateral being posted.

The variation margin on Bank A's transaction with Bank B is not offset by the other transaction with the corporate end user because the latter is uncollateralized. When variation margin has to be paid to Bank B it has to be funded and, assuming that the funding cost is greater than the interest received from the CCP on variation margin, there is a cost; when variation margin is received from Bank B and the interest paid to the CCP is less than Bank A's normal funding cost, it is a source of funding. The net funding cost associated with variation margin is referred to as funding value adjustment (FVA). Because variation margin can be a use of funding or a source of funding, FVA can be positive or negative.

The capital valuation adjustment (KVA) is a charge to a derivatives transaction for the incremental capital requirements that the derivative gives rise to. In theory, equity capital is not a cost to a financial institution. In practice, financial institutions tend to regard equity capital as a cost because the expected return required by shareholders is higher than that required by debtholders.[12]

# Summary

A derivatives dealer's credit value adjustment (CVA) for its bilaterally cleared derivatives with a counterparty is the present value of the expected future loss from the possibility of the counterparty defaulting. A derivatives dealer typically has systems in place for calculating the credit value adjustments (CVAs) for all the counterparties with which it has bilaterally cleared derivatives. The systems must simulate the market variables underlying outstanding transactions with each counterparty so that the expected net exposure at future times conditional on a default can be estimated. The calculations take account of netting and collateral agreements. The simplest assumption is that the probability of default is independent of the exposure. Procedures can be developed to incorporate wrong-way risk (where there is positive dependence between the two) and right-way risk (where there is negative dependence between the two).

CVAs are complex derivatives, and many dealers hedge them in the same way that they hedge other derivatives. There are two types of risks associated with CVAs: the risk that the counterparty's credit spread will change and the risk that there will be movements in the values of the underlying market variables. Once a CVA has been calculated, it is relatively easy to quantify the first risk, and regulators require dealers to keep market risk capital for this risk. Calculating the sensitivity of CVA to movements in the underlying market variables is more difficult, but regulatory capital has been proposed for this risk as well.


A dealer's debit value adjustment (DVA) for its bilaterally cleared derivatives with a counterparty is the present value of the expected future loss to the counterparty from the possibility of the dealer defaulting. This is a gain to the dealer. It can be calculated at the same time as CVA. Other xVAs discussed in this chapter are margin value adjustment (MVA), funding value adjustment (FVA), and capital value adjustment (KVA).

# Further Reading

Basel Committee on Banking Supervision. "Basel III: A Global Regulatory Framework for More Resilient Banks and Banking Systems," www.bis.org/publ/bcbs189dec1810.pdf, December 2010.
Canabarro, E., and D. Duffie. "Measuring and Marking Counterparty Risk." Chapter 9 in Asset/Liability Management for Financial Institutions, edited by L. Tilman. New York: Institutional Investor Books, 2003.
Gregory, J. Counterparty Credit Risk: The New Challenge for Financial Markets. 2nd ed. Hoboken, NJ: John Wiley & Sons, 2012.
Hull, J., and A. White. "The Impact of Default Risk on the Prices of Options and Other Derivative Securities." Journal of Banking and Finance 19 (1995): 299-322.
Pengelley, M. "CVA Melee." Risk 24, no. 2 (2011): 37-39.
Picault, E. "Calculating and Hedging Exposure, CVA, and Economic Capital for Counterparty Credit Risk." In _Counterparty Credit Risk Modeling_, edited by M. Pykhtin. London: Risk Books, 2005.
Sokol, A. "A Practical Guide to Monte Carlo CVA." Chapter 14 in Lessons from the Crisis, edited by A. Berd. London: Risk Books, 2010.

# Practice Questions and Problems (Answers at End of Book)

18.1 Explain why a new transaction by a bank with a counterparty can have the effect of increasing or reducing the bank's credit exposure to the counterparty.
18.2 A company offers to post its own equity as collateral. How would you respond?
18.3 Suppose that a financial institution has two derivatives transactions outstanding with different counterparties, X and Y. Which of the following is/are true?
(a) The total expected exposure in one year on the two transactions is the sum of the expected exposure on the transaction with X and the expected exposure on the transaction with Y.
(b) The total present value of the cost of defaults is the sum of the present value of the cost of defaults on the transaction with X plus the present value of the cost of defaults on the transaction with Y.

(c) The 95th percentile for the total exposure in one year on both transactions is the sum of the 95th percentile for the exposure in one year on the transaction with X and the 95th percentile for the exposure in one year on the transaction with Y.

Explain your answers.

18.4 "In the absence of collateral and other transactions between the parties, a long forward contract subject to credit risk is a combination of a short position in a no-default put and a long position in a call subject to credit risk." Explain this statement.
18.5 Suppose that the spread between the yield on a three-year riskless zero-coupon bond and a three-year zero-coupon bond issued by a corporation is 120 basis points. By how much do standard option pricing models such as Black-Scholes-Merton overstate the value of a three-year option sold by the corporation? Assume there is only this one transaction between the corporation and its counterparty and no collateral is posted.
18.6 Can the existence of default triggers increase default risk? Explain your answer.
18.7 Give two examples of when (a) wrong-way risk and (b) right-way risk can be expected to be observed.
18.8 Explain the term "cure period."
18.9 "Netting means that CVA cannot be calculated on a transaction-by-transaction basis." Explain this statement.
18.10 "DVA can improve the bottom line when a bank is experiencing financial difficulties." Explain why this is so.
18.11 What part of CVA risk is considered a component of market risk by regulators?
18.12 A CSA between a dealer and one of its counterparties states that collateral has to be posted by both sides with zero thresholds. If the cure period is assumed to be 10 days, under what circumstances will the dealer's CVA model lead to losses?

# Further Questions

18.13 Extend Example 18.3 to calculate CVA when default can happen in the middle of each month. Assume that the default probability during the first year is 0.001667 per month and the default probability during the second year is 0.0025 per month.
18.14 Calculate DVA for the bank in Example 18.3. Assume that the bank can default in the middle of each month and that the default probability is 0.001 per month for the two years. Assume that the recovery rate for the counterparty when the bank defaults is  $40\%$ .
18.15 Consider a European call option on a non-dividend-paying stock where the stock price is  $52, the strike price is$ 50, the risk-free rate is 5\%, the volatility is 30\%, and the time to maturity is one year. Answer the following questions assuming no recovery in the event of default, that the probability of default is independent of the option valuation, no collateral is posted, and no other transactions between the parties are outstanding.


(a) What is the value of the option, assuming no possibility of a default?
(b) What is the value of the option to the buyer if there is a  $2\%$  chance that the option seller will default at maturity?
(c) Suppose that, instead of paying the option price up front, the option buyer agrees to pay the option price (with accumulated interest) at the end of the option's life. By how much does this reduce the cost of defaults to the option buyer in the case where there is a  $2\%$  chance of the option seller defaulting?
(d) If in case (c) the option buyer has a  $1\%$  chance of defaulting at the end of the life of the option, what is the default risk to the option seller? Discuss the two-sided nature of default risk in the case and the value of the option to each side.

18.16 Suppose that the spread between the yield on a three-year riskless zero-coupon bond and a three-year zero-coupon bond issued by a bank is 210 basis points. The Black-Scholes-Merton price of an option is 4.10. How much should you be prepared to pay for it if you buy it from a bank?


# Chapter 9: Exchange Traded Derivatives

# 9.1 Introduction

Exchange traded interest rate derivatives have provided a great way for investors (institutions) to hedge short and long term interest rate risks. Thanks to exchanges, these derivatives are very liquid and provide great hedges and investment opportunities. Some of these derivatives (e.g. T bond futures) are even much more liquid than their underlying assets.

MarketsWiki (CME-CBOT merger):

The merger between cross-town rivals Chicago Mercantile Exchange and the Chicago Board of Trade was approved by shareholders and completed on July 12, 2007. The plan for the merger was announced on October 17, 2006, and it was far more hard fought and expensive than originally intended.

Ultimately, the CBOT stockholders received  \$11.3 billion for the exchange[1]. The CME's initial proposal valued CBOT at\$ 7 billion.

Earlier attempts between the two exchanges to reach a merger agreement had been stonewalled by floor traders, who at the time owned each of the exchanges. However, CME became a publicly held for-profit corporation in 2002, the CBOT in 2005, creating a common currency for valuing the exchanges and the interests of members thus paving the way for a merger.

More history about CME-CBOT merger and ICE can be found on the website.

# 9.2 T Bond Futures

T bond/note futures are futures contracts written on U.S. Treasury bonds/notes. Similar to commodity futures contracts, actual T bonds/notes will be delivered. Also similar to commodity futures, several delivery options are present. One of such options is a quality option. In commodities, goods are not so easy to control their quality when they are harvested (due to weather, pests, etc.) and as a result, exchanges must allow the short side the flexibility to deliver whatever quality upon delivery. To avoid any loss for the buy side, exchanges then allow more (or less) quantity for lower (or higher) quality of the goods. There are also timing options (again due to the uncertainty of harvest) to allow the short side to delivery successfully.

T bond and T note futures have similar flexibilities. But given that T bond futures are more liquid and those delivery flexibilities are more valuable, the discuss of this section limits to T bond futures, although those flexibilities apply to T note futures as well.

# 9.2.1 Delivery Process

T bond futures are traded on CBOT/CME in Chicago. It is a physically delivered contract (i.e. at the settlement day of the futures contract, an actual Treasury note or bond must be delivered at the futures price). To facilitate delivery, any bond that is at least 15 years to first call or maturity can be used for delivery. Hence the futures contract is not on a specified bond, but rather on a basket of bonds. Currently there are more than 2 dozens of such Treasury bonds that can be chosen for delivery.

The choice belongs the short side of the futures contract. It is reasonable to assume that the short side will deliver the cheapest bond possible. This is known as the cheapest-to-deliver option, or quality option. The long side is fully aware of such an option and hence will lower the futures price accordingly (i.e. the market futures price reflects the quality option).

To further facilitate delivery, a flexible delivery time is considered. First, the delivery time is not a day but a whole month. Delivery of T note or bond can take place at any day of the settlement month. Delivery is a three-day process:

1. position day
2. notice of intention day
3. delivery day and as a result, the earliest position day can be 2 days before the first day of the delivery month.


This particular delivery process creates a few interesting delivery options, known as timing options. Figure 9.1 demonstrates what these timing options are.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/b7bef30612bfff4155909448127e4fe303309bce4dec910decbb2f4c26dbc105.jpg)
Figure 9.1: Derlivery Time Line

Due to this specially designed delivery process, in most of the delivery month (nearly 17 days), delivery takes place as the futures contract is being traded. In other words, one can sell a futures contract and delivers immediately. As imagined, the futures price cannot be different from the underlying T bond price.

However, in the last 7 business days (as Figure 9.1 demonstrates), the futures market is closed and only delivery can take place. In other words, the futures price cannot change but the underlying deliverable bonds can still trade and their prices fluctuate. This is known as the end-of-month timing option. Throughout the chapter we use  $v$  for the starting time and  $T$  for the ending time of this period.

For the rest of the delivery month, there are two sections of each day, the accrued interest period and the wild card period. For a regular futures trading day i between 7:20 a.m. and 2 p.m. Chicago time, both bond and futures markets are open simultaneously. The futures market closes at 2 p.m. but there is no official closing time for the bond market. Since the short has till 8 p.m. to make the delivery decision, the wild card period is defined over 3 p.m.  $(u_{i})$  to 8 p.m.  $(u_{i} + h)$  Eastern time.

# 9.2.2 Quotes

Similar to the underlying T bond quotes, T bond futures are quoted by clean price. The long side of the futures contract will have to pay: quoted futures price × conversion factor + accrued interest


where the accrued interest is computed from last coupon date to the settlement date. In return, the long side will receive the underlying bond whose value is:

$$ \text{dirty price} = \text{clean} + \text{accrued} $$ where the accrued interest of the bond is the computed from the last coupon date till the purchase date of the bond.


The delivery profit (or loss) is the difference of the two. Note that if the bond is purchased the same date as the settlement date (i.e. delivery date) of the futures contract, then the accrued interests on both sides are equal.

$$
\text {q u o t e d f u t u r e s p r i c e} \times \text {c o n v e n s i o n f a c t o r - q u o t e d b o n d p r i c e} \tag {9.1}
$$

This situation happens in the first 17 (roughly) days of the delivery month where both futures and bonds are traded (and hence the settlement date is the same as the purchase date). However, in the last 7 days, the futures contracts are not traded and the settlement date is fixed but the purchase date of the bond will vary. (Note the in the conversion factor calculation, this is ignored.)

# 9.2.3 Quality Option and Conversion Factor

As explained earlier, the quality option gives the short side of the futures contract a flexibility to deliver the cheapest of dozens of T bonds. To overcome such unfairness, CBOT/CME adopts the same practice of the commodity futures and allow for a conversion factor to trade quality of the delivery (T bond) for the futures price received by the short side. That is, a lower quality bond is accompanied by lower a futures price. In other words, the exchange hopes to eliminate the quality option.

Unfortunately, the conversion factor is formula-based and will not change with the market condition. As a result, it fails to successfully negate the quality option. Empirically, literature has documented substantial value for the quality option.

The conversion factor can be computed easily by the following process:

1. round the time to maturity down to the nearest quarter,
2. use 6% (or semi-annual 3%) to discount to the next coupon date, $^{1}$
3. use 1.4889% ($= \sqrt{1.03} - 1$) to discount for any quarter left (simply divide the above result by $\sqrt{1.03}$

# 4. (natural) round the result to 4 digits

As a result of this process, 6%, 20 year is the standard bond. Deliver 1 unit if it is standard bond and deliver proportionally if it is other bond. An example:

| **i = 6%** | | | | | |
|---|---|---|---|---|---|
| cpn | mat | cf | QBP | Φ×cf | payoff |
| 0.05 | 20 | 0.8844 | 0.8844 | 0.8844 | 0 |
| 0.06 | 15 | 1 | 1 | 1 | 0 |
| 0.06 | 20 | 1 | 1 | 1 | 0 |
| 0.08 | 20 | 1.2311 | 1.2311 | 1.2311 | 0 |
| 0.08 | 25 | 1.2573 | 1.2572 | 1.2572 | 0 |

where futures price, $\Phi$ (= standard bond price) = 1 (par).


**Table 9.1: Conversion Factor and 6% Flat Yield Curve**

| **i = 8%** | | | | | |
|---|---|---|---|---|---|
| cpn | mat | cf | QBP | Φ×cf | payoff |
| 0.05 | 20 | 0.8844 | 0.703108 | 0.709374 | 0.006265 |
| 0.06 | 15 | 1 | 0.82708 | 0.802072 | -0.02501 |
| 0.06 | 20 | 1 | 0.802072 | 0.802072 | 0 |
| 0.08 | 20 | 1.2311 | 1 | 0.987469 | -0.01253 |
| 0.08 | 25 | 1.2573 | 1 | 1.008444 | 0.008444 |

where $\Phi = 0.8021$. Note that the conversion factors stay the same regardless of the yield curve. Also note that the QBP's (quoted bond prices which is clean prices) are observable in the marketplace (but here they are computed using flat discount rate).

**Table 9.2: Conversion Factor and 8% Flat Yield Curve**


CBOT (later merged into CME in 2007) has decided that beginning with the March 2000 contract, Treasury futures will equalize the deliverable bonds by pricing them to a 6% yield. All that means is that the same rule applies relative to the  $6\%$  yield level: When yields are below 6%, the cheapest-to-deliver bond will have a short duration; when they are above 6%, a long-duration bond will be cheapest to deliver.

# 9.2.4 CTD Bond

If the conversion factor did the job, then the quality option would have been eliminated and the futures price would be the same regardless of which bond is delivered.

Unfortunately, the conversion factor does not do a good job and hence which bond will be actually delivered matters a lot and will affect the futures price.

In other words, the futures price traded today is a function of which bond is expected to be delivered. It is no surprise that today's futures price is closely related to today's cheapest-to-deliver bond (with the expectation that today's cheapest is the settlement day cheapest).

Besides the CTD bond today, traders also consider the Second CTD bond in that while small there is still a chance that the second cheapest will become the first cheapest in the near future. Hence they follow the second cheapest closely as well and adjust the futures price accordingly (not as much as the first cheapest). To be really comprehensive, traders consider the third CTD bond. But the likelihood for the third cheapest to become the first cheapest is really small.

# Jone's Extreme Duration Rule

To monitor the first, second, and third CTD bonds, Robert Jones provides a simple rule of thumb, known as the extreme duration rule.2 He proves that the cheapest bond is the shortest-duration bond. However, the proof is valid under flat yield curve (the only situation where yield has meaning). Under a stochastic environment, his argument is an approximation.

# Exchange Option Idea

A more accurate method than Jone's duration rule is the exchange option idea. We can think of the futures contract is written on the CTD bond today but is accompanied by an exchange option that allows the trader to switch to another bond should that bond becomes the cheapest on settlement.

The exchange option formula for the stocks is:

$$
\begin{align}
C &= \hat{\mathbb{E}}\left[e^{-r(T-t)} \max\{X(T) - Y(T), 0\}\right] \tag{9.2} \\
&= X(t) N(d_+) - Y(t) N(d_-)
\end{align}
$$

where

$$
\begin{align}
d_{\pm} &= \frac{\ln X(t) - \ln Y(t) \pm \frac{1}{2} v^2 (T-t)}{v \sqrt{T-t}} \\
v^2 &= \sigma_X^2 + \sigma_Y^2 - 2\rho\sigma_X\sigma_Y
\end{align}
$$

and $X$ and $Y$ are two stocks and $\sigma_X, \sigma_Y$, and $\rho$ are their respective volatilities and correlation. Note that in the final equation, the risk-free rate is not present (although it is in the valuation).


In the case of Treasuries, unfortunately, this result does not hold exactly. First, the discounting in the first line of equation (9.2) is stochastic and correlated with  $X$  and  $Y$  because they are bonds. Hence, it does not disappear as in the case of stocks. Secondly, these stocks do not pay dividends but here they pay coupons. As a result, the log-normal assumption will not hold for Treasuries.

Nevertheless, this idea is widely used in practice due to its simplicity and empirically it has shown certain reliability. This idea clearly includes the likelihood of second CTD bond to become the first cheapest. One can extend this idea to exchange option on multiple assets so even the third CTD bond today can be included.

# Option on Min/Max

Clearly, the exchange option model does not do a perfect job. It can take care of the second cheapest to deliver but when the volatility is large and the probability of the third cheapest to suddenly becomes the cheapest increases, then the exchange option model will miss some option value.

The min/max option was derived by Rene Stulz in 1982. The pricing formula involves multi-variate normal probabilities. Interested readers can find the lengthy equation in the original paper. Multi-variate normal probabilities cannot be evaluated easily. Often times we rely on Monte Carlo with importance sampling (if probabilities are too small (options are too way out-of-money)).

However, the Stulz formula is for equity options and fails to consider the term structure of interest rates. As a result, it cannot estimate the correlations (comovements) among bonds accurately. Nevertheless, it is a convenient approximation.

Note that the probability for the third cheapest to become the cheapest is really small in reality. Unless experiencing abnormal volatility in term structure, the exchange option formula provides a good enough approximation.

# The Dry Spell

The dry spell refers to the 1994-1999 period where the only deliverable option is the 11¼% 2015 bond, which had been the shortest duration bond for the period. It has not changed for the entire duration of 5 years.

# 9.2.5 Timing options

As described in Figure 9.1, there are three periods for timing option. The first and also most valuable option is the last week (7 business days) of the delivery month. This is the period where the futures market is closed but bonds are still traded. As a result, the short side of the futures contract can wait for the best moment to buy the bond and make the delivery and make a profit:

$$
\max \{\Phi (v) \times C F _ {j} - B _ {j} (t) \}
$$ where  $v < t < T$  is the end-of-month period.


Then, there is a 6 hour window (from 3 to 9) that futures market is closed and bond market is open. This happens daily at the beginning (roughly 17 days) of the delivery month, known as the wild card timing option (or wild card play). This option value is small as the next day the futures market resets and will wipe out all the gain in the wild card option. The only situation where the wild card option can be valuable is the CTD bond swings in price hugely. In this situation, the delivery profit from the wild card period will not be eliminated as the bond price swings back high in the next day.

Lastly is the daily normal day time window when both futures and bonds are traded. In this window, there is no possibility of arbitrage as one can easily buy or sell bonds (and reverse in futures) should any discrepancies exist. This is known as the accrued-interest timing option for the sake of the possibility of any discrepancy in two accrued interests. Other than liquidity, this option has no real economic value.

# 9.3 Valuation of T Bond Futures

In this section, I shall demonstrate in details how each method of valuation (i.e. computing futures price) is carried out. We first must notice that futures price is not the price of the futures contract, but rather the price to be paid in the future in order to exchange for the underlying asset (in our case a Treasury bond).

The classical risk-neutral pricing theory states that the futures price is the risk-neutral expectation of future asset price as:


$$
\begin{align}
\Phi(t, T_f, \underline{T}) &= \hat{\mathbb{E}}_t[\Pi(T_f, \underline{T}; c)] \\
&= \hat{\mathbb{E}}_t\left[c \sum_{j=1}^n P(T_f, T_j) + P(T_f, T_n)\right] \\
&= c \sum_{j=1}^n \hat{\mathbb{E}}_t[P(T_f, T_j)] + \hat{\mathbb{E}}_t[P(T_f, T_n)] \tag{9.3} \\
&= c \sum_{j=1}^n \Phi(t, T_f, T_j) + \Phi(t, T_f, T_n)
\end{align}
$$ where $P(\cdot, \cdot)$ is the zero coupon bond price, $\Pi(\cdot, \cdot; \cdot)$ is the coupon bond with a coupon rate $c$, $\underline{T} = \langle T_1, \dots, T_n \rangle$ is a vector of coupon payment dates between $T_f$ the settlement date of the futures contract and the maturity of the bond $T_n$.


Note that in theory these are actual values and hence dirty prices. In reality, future prices and bond prices are quoted without accrued interests (i.e. clean prices). The accrued interests are important and will be discussed later.

T bond futures is more complex than this. The payoff upon delivery (at settlement time  $T_f$ ) is:

$$ \max_j \left\{\Phi(T_f) \times q_j - \Pi_j(T_f)\right\} \tag{9.4} $$

where $q_j$ is the conversion factor of the $j$-th bond. The futures price is set so that the expected value should be 0. The notation here is simplified.


If there is no timing option so the futures contract is marked to market every day, then there is no discounting necessary. And the futures price is the solution to the above equation when it is 0 value:

$$ \hat{\mathbb{E}}_t\left[\max_j \left\{\Phi(T_f) \times q_j - \Pi_j(T_f)\right\}\right] = 0 $$

$$ \hat{\mathbb{E}}_t\left[\max_j \left\{\Phi(T_f) - \frac{\Pi_j(T_f)}{q_j}\right\}\right] = 0 \tag{9.5} $$

$$ \Phi(t) = \hat{\mathbb{E}}_t\left[\min_j \left\{\frac{\Pi_j(T_f)}{q_j}\right\}\right] $$

However, there are timing options! Hence discounting is necessary and will complicate the computation. I will discuss this later with a proper interest rate model.

# 9.3.1 Cost of Carry

An industry popular method without employing a complex interest rate model is the cost-of-carry (CoC) method. This method is standard in commodity futures contracts. The standard CoC method assumes that there is an arbitrage between the underlying spot and its futures. If the futures price is too high relative to spot, then anyone can sell the futures and buy the spot, store the commodity till settlement date, and then make the delivery. Hence the futures price can never exceed the spot price and its "cost of carry". If the reverse is true (i.e. futures price is too low), usually it is not easy to short-sell the spot (not easy to short-sell commodities) and hence the arbitrage is not as easy.


Similar to commodity futures, we do not know which bond will be delivered and need to assume that the current cheapest is the cheapest at settlement.

$$
\pi_ {i} = [ \Phi (t) \times q _ {i} + a _ {i} (T _ {f}) ] - [ \Pi (t) + a _ {i} (t) ] \times (1 + r _ {f}) ^ {T _ {f} - t}
$$ where  $r_f$  is the risk-free rate,  $q_i$  is the conversion factor of the  $i$ -th bond,  $a_i(t)$  is the accrued interest of the  $i$ -th bond evaluated at time  $t$ ,  $\Phi$  is the futures price,  $\Pi$  is the bond price.


For a chosen bond $(i)$ to deliver, the delivery profit is $\pi_i$. As a result, to choose the cheapest bond to delivery, one must maximize the profit over all bonds (i.e. loop over all $i$'s). Once the cheapest bond is chosen, then we can use its forward price  $\Psi(t)$  to approximate the futures price (but note that the forward price is higher than the futures price, and hence the market futures price should be lower than the CoC estimate).

Clearly, this method is very crude. First it ignores the probability of the other bond (second cheapest or the third cheapest) to become the cheapest at settlement. Secondly, the compounding  $(r_f)$  is applied outside of the expectation.

mini HW

# 9.3.2 Using the Exchange Option Model

As shown in equation (9.2), we can implement this "Black-Scholes" type equation by simply assuming the coupon bonds (CTD and next CTD) follow a log-normal distribution with a constant volatility. Given that there is no discounting in the formula, one can easily obtain an option value and subtract it from the futures price without the option, i.e. equations (9.2) and (9.5):

$$
\begin{array}{l} \Phi (t, u) = \hat {\mathbb {E}} _ {t} \left[ \min \left\{\frac {X (u)}{q _ {X}}, \frac {Y (u)}{q _ {Y}} \right\} \right] \\ = \hat {\mathbb {E}} _ {t} \left[ \frac {Y (u)}{q _ {Y}} - \max  \left\{\frac {X (u)}{q _ {X}} - \frac {Y (u)}{q _ {Y}}, 0 \right\} \right] \tag {9.6} \\ = \frac {\Phi_ {Y} (t , u)}{q _ {Y}} - \left[ \frac {X (u)}{q _ {X}} N (d _ {+}) - \frac {Y (u)}{q _ {Y}} N (d _ {-}) \right] \\ \approx \frac {\Psi_ {Y} (t , u)}{q _ {Y}} - \left[ \frac {X (u)}{q _ {X}} N (d _ {+}) - \frac {Y (u)}{q _ {Y}} N (d _ {-}) \right] \\ \end{array}
$$ where  $\Phi$  is the futures price and  $\Psi$  is the forward price, and  $d_{+}$  and  $d_{-}$  are similar to equation (9.2) but with the adjustment of the conversion factors, i.e.  $X(t)\rightarrow X(t) / q_{X}$  and  $Y(t)\rightarrow Y(t) / q_{Y}$ . Note that the last line of equation (9.6) is to approximate the futures price (which is the result of the risk-neutral expectation) by the forward price which requires no model. $^4$


There are two approximations. The first approximation is  $\hat{\mathbb{E}}_t[Y(u)] = \Phi_Y(t,u)\approx$ $\Psi_{Y}(t,u)$ , since the futures price of bond  $Y$  does not exist (but the forward does). Here we approximate the futures price by the forward price (which is higher than the futures price). The second approximation is the exchange option. We understand from equation (9.2) that only with discounting we can apply the formula. Here, we ignore the discounting but apply the formula anyway. So we are under-subtracting.

Given that we are over-estimating the futures price for bond Y and subtracting the option value, the futures price computed using the exchange option formula is over-estimated. Note that this evaluation only considers CTD and the second CTD bonds. To include the third CTD bond, we lose the close-form solution and must employ a numerical method. Then it might be better to pursue a full term structure model without approximation errors.

mini HW

# 9.3.3 Using an Interest Rate Model

It is quite straightforward to use a lattice model such as he Ho-Lee model to evaluate the quality options and all the timing options.

For notation and symbols used here, please refer back to Chapter 1. In addition,

$$ a _ {i} (t) = \text {a c c r u e d i n t e r e s t o f t h e i t h b o n d}
$$

$q_{i} =$  conversion factor of the ith bond

$Q_{i}(t) =$  quoted coupon bond price of the ith bond

$\Phi(t) = \text{quoted futures price with all delivery options}$

$\Phi^{*}(t) =$  futures price with the quality option and continuous marking to market

$\Phi^{**}(t) =$  futures price with the quality option at the absence of continuous MTM

Note that the transaction price of a coupon bond is the quoted price plus the accrued interest. In other words, for the  $i$ -th coupon bond in the delivery set for the futures contract,  $Q_{i}(t) = \Pi(t, \underline{T}; c_{i}) - a_{i}(t)$  where  $\Pi(t, \underline{T}; c_{i})$  is the coupon bond notation defined in Notation that has the coupon and maturity of the  $i$ -th bond. Also note that  $\Phi(t)$  is the quoted futures price of the cheapest-to-deliver bond. The actual futures price needs to be adjusted by the conversion factor and the accrued interest of the cheapest-to-deliver bond.

# 9.3.4 Quality Option under no Marking to Market

The above evaluation of the quality is correct only if marking to market is applied continuously throughout the life of the futures contract. Unfortunately, in the last 7 business days of the delivery month, the futures market is not open and the futures contract is not marked to market. The futures price used for settlement in this period is the last settlement price at the beginning of the 7-day period. Since the futures price is already determined, the actual payoff at the last delivery day,  $\mathrm{T}$ , is not necessarily 0. The short can actually gain or lose. To avoid arbitrage, the futures price at the beginning of the 7-day period should be set so that the expected present value of payoffs at maturity is 0. Under this circumstance, the futures price at the beginning of the 7-day period is a forward price, not a futures price. Formally, label the futures price as  $\Phi^{**}(v)$  to represent the futures price at the beginning of the end-of-month period,  $v$ , should be so set that:

$$
\hat {\mathbb {E}} _ {v} \left[ \exp \left(- \int_ {v} ^ {T} r (u) d u\right) \max  \left\{\Phi^ {* *} (v) q _ {i} - Q _ {i} (T) \right\} \right] = 0 \tag {9.7}
$$ where  $r(u)$  is the instantaneous rate. Using the forward measure, we can then rewrite the above equation as:


$$
\tilde {\mathbb {E}} _ {v} ^ {(T)} \left[ \max  \left\{\Phi^ {* *} (v) q _ {i} - Q _ {i} (T) \right\} \right] = 0 \tag {9.8}
$$ which can be expanded as follows:


$$
\begin{array}{l} 0 = \tilde {\mathbb {E}} _ {v} ^ {(T)} \left[ \max  \left\{\Phi^ {* *} (v) q _ {i} - Q _ {i} (T) \right\} \right] \\ 0 = \tilde {\mathbb {E}} _ {v} ^ {(T)} \left[ \Phi^ {* *} (v) q _ {1} - Q _ {1} (T) + \max  \left\{\Phi^ {* *} (v) \left(q _ {i} - q _ {1}\right) - \left(Q _ {i} (T) - Q _ {1} (T)\right), 0 \right\} \right] \tag {9.9} \\ 0 = \Phi^ {* *} (v) q _ {1} - \Psi_ {1} (v) + \tilde {\mathbb {E}} _ {v} ^ {(T)} [ \max  \left\{Q _ {1} (T) - Q _ {i} (T) - \Phi^ {* *} (v) \left(q _ {1} - q _ {i}\right), 0 \right\} ] \\ \end{array}
$$ and the futures price at time  $v$  can be written as:


$$
\Phi^ {* *} (v) = \frac {\Psi_ {1} (v)}{q _ {1}} - \frac {1}{q _ {1}} \tilde {\mathbb {E}} _ {v} ^ {(T)} [ \max  \left\{Q _ {1} (T) - Q _ {i} (T) - K _ {i} ^ {* *} \right\} ] \tag {9.10}
$$ where  $K_{i}^{**} = (q_{1} - q_{i})\Phi^{**}(v)$ . Note that  $\Psi_{1}(v) = \tilde{\mathbb{E}}_{v}^{(T)}[Q_{1}(T)]$  is the forward price of the first bond. The interpretation of this result is similar to that of (9.6), except that the risk neutral measure is replaced by the forward measure and the futures price becomes the forward price. However, unlike (9.6), the futures price at time  $v$  has no easy solution, because it appears on both sides of the equation. This futures price has to be solved recursively using a numerical method. In a lattice framework suggested by Boyle (1989), we first choose an initial value for the futures price at time  $v$ , calculate payoffs at various states at maturity  $T$ , and then work backwards along the lattice. We adjust the futures price until the discounted payoff computed from the lattice is 0. Once the futures price at time  $v$  is set, we can then travel back along the lattice and use the risk neutral probabilities till the end of the last wild card period,  $u_{n} + h$ . Then the similar procedure for the end-of-month period is repeated for the last wild card period to arrive at the futures price at the beginning of the wild card period  $u_{n}$ . Again, the risk neutral expectation is taken at  $u_{n-1} + h$  and a recursive search is to compute the futures price at  $u_{n-1}$ . The process is repeated until the delivery month is over. Since the futures price becomes a forward price which cannot be obtained without a recursive search. The search for the "forward price" takes place at every node at all the times (i.e.,  $u_{1}, u_{2}, \dots, u_{n}, v$ ). As a result, to compute the futures price with the quality option is prohibitively expensive.


# 9.3.5 Timing Options

Besides the quality option, there are three timing options embedded in the Treasury bond futures price. The most valuable one is the end-of-month (EOM) timing option. Without the EOM timing option, we know that the futures price should be set according to (9.5). With the EOM timing option, deliveries can occur any time in the end-of-month period as long as the current delivery payoff is more than the present value of the expected payoff. This is similar to the early exercise decision of an American option. There is no closed-form solution to compute American option prices. Precisely as Boyle (1989) has observed, the pricing of quality and timing options would need a lattice model.


As in an American option, early delivery (i.e. early exercise) is activated if the delivery payoff is larger than the continuation value (expected value of future payoffs). However, this delivery decision is intertwined with the recursive process in computing the quality option value. That is, every time we start with a trial value for the futures price at the beginning of the EOM period. This futures price will not change throughout the EOM period since the futures market is closed. We then work backwards from the end of the EOM period with an early delivery decision checked at every node until we reach the beginning of the EOM period. If the expected payoff computed via this backward induction at the beginning of the EOM period is not 0, then the trial futures price must be revised. The process continues until the payoff at the beginning of the EOM period is 0. The computation cost of such a recursive algorithm in a two-dimensional lattice is high.

In addition to the EOM timing option that refers the last 7 trading days of the delivery month, there are two other timing options in the rest 15 days of the delivery month - the accrued interest timing option and the wild card timing option. The accrued interest timing option refers to the flexibility for the short to deliver the cheapest bond any time in the delivery month when both futures and spot markets are open. This is everyday from 7:20 a.m. to 2:00 p.m. (Chicago time) from the first day of the delivery month to right before the end-of-month period. Since the futures market is open, the futures contract is marked to market and deliveries can take place any time. As a result, the futures price can never be greater than the cheapest-to-deliver bond price. If the futures price were greater than the cheapest bond price, then deliveries would take place instantly. The short will sell the futures, buy the cheapest bond, make the delivery, and earn an arbitrage profit. Formally, for  $t < v$ ,

$$
\Phi (t) > \min  \left\{\frac {Q _ {i} (t)}{q _ {i}} \right\} \Leftrightarrow \max  \left\{\Phi (t) q _ {i} - Q _ {i} (t) \right\} > 0 \tag {9.11}
$$

Therefore, the futures price in the period where both markets are open must be less than the cheapest-to-deliver bond price to avoid arbitrage. On the other hand, if the futures price is lower, one can long futures and short spot but the delivery will not occur because the short position of the futures contract will lose money if he makes a delivery. Consequently, the delivery will be postponed and there is no arbitrage profit to be made. If the futures price is always less than the cheapest-to-deliver bond price (adjusted by its conversion factor), the delivery payoff now is negative as opposed to 0 at the end. As a result, the short will never deliver until the last day. Consequently, the accrued interest timing option has no value. We restate this result in the following proposition.


# Proposition.

The accrued interest timing option without the wild card and end-of-month options has no value. The existence of the other timing options will lower the current futures price, further reducing the incentive for the short to deliver early. We state this result in the following Corollary.

□

# Corollary.

The accrued interest timing option with the end-of-month options has no value.

□

While the accrued interest timing option is worthless, the wild card timing option is not. When the futures market is closed, there is no marking to market in the futures market and the futures contract becomes a forward contract. Boyle (1989) has demonstrated that in a case of forward contracts timing options will have value. We shall extend Boyle's analysis to the wild card option in Treasury bond futures. Similar to the end-of-month option, the wild card option refers to the flexibility in delivery in a 5-hour period every day for about 15 days where the futures market is closed but the bond market is open. However, the wild card option is different from the end-of-month option in that the futures market will reopen after each wild card period and the futures contract will be marked to market. If bond prices drop in the wild card period, given that the futures price is fixed, the short can benefit from delivering the cheapest bond. However, the short can equally benefit from the marking to market when the futures market reopens on the next day. As a result, the incentive for the short to deliver in the wild card period is minimal. Delivery can take place in a wild card period only when the payoff from immediate delivery exceeds the expected present value of marking to market on the next day.

The modeling of the wild card period requires a very fine grid. To model the wild card option properly, we need at least two steps in each wild card period to allow for early exercise. As a result, it requires a minimum of four steps per day. Given that practically the wild card option has very little value due to the next-day marking-to-market, we will not evaluate the wild card option in this chapter.

# 9.4 T Bond Futures Options

Given the complexity of the T bond futures, their options are even more difficult to evaluate. As a result, the numerical lattice used for T bond futures in the previous section, will be used for T bond futures options. Chen and Yeh (2002) have provided closed-form upper bonds for these options. A quick sketch is given below. The basic idea is that we use futures-style options as upper bounds of American option bounds.

American options require numerical methods, namely lattice models, to provide accurate price estimates. The computations can become expensive when more than one state variable is involved. Analytical upper bounds can therefore provide a useful guideline for how high the American values can reach. In this paper, we derive analytical (closed-form) upper bounds for American option prices under stochastic interest rates, stochastic volatility, and jumps where American option prices are difficult to compute with accuracy. In a stochastic volatility model (Heston (1993) and Scott (1997)) that has two random factors, we demonstrate that the upper bound only needs a very small fraction of the time of the American option to compute.

We find that An American option is bounded from above by the risk neutral expectation of its maturity payoff if this expectation is greater than the intrinsic value at all times. To show that we shall prove this theorem using a discrete approximation similar to the lattice approach. Let  $\mathrm{T}$  be the maturity of the option contract. At  $\mathrm{T}$ , the payoff is given by  $X(T)$ . At  $T - \Delta t$ , the payoff is either the discounted terminal value:

$$
\hat {\mathbb {E}} _ {T - \Delta t} [ \delta (T - \Delta t, T) X (T) ] \tag {9.12}
$$ or the intrinsic value:


$$
X (T - \Delta t) \tag {9.13}
$$ whichever is larger where  $\delta(t, s)$  represents the discount factor from time  $t$  to time  $s$ . At  $T - 2\Delta t$ , the larger quantity of the above result is discounted and compared with the early exercise value, i.e. the payoff is either the continuation American value:


$$
\hat {\mathbb {E}} _ {T - 2 \Delta t} [ \delta (T - 2 \Delta t, T - \Delta t) \max  \{\hat {\mathbb {E}} _ {T - \Delta t} [ \delta (T - \Delta t, T) X (T) ], X (T - \Delta t) \} ] \quad (9. 1 4)
$$ or the intrinsic value:


$$
X (T - 2 \Delta t) \tag {9.15}
$$ whichever is larger. This process is repeated until the current time is reached and the American option value is obtained. Now, consider a function at time  $T - \Delta t$ ,  $\hat{\mathbb{E}}_{T - \Delta t}[X(T)]$ . It is certainly true that:


$$
\hat {\mathbb {E}} _ {T - \Delta t} [ X (T) ] > \hat {\mathbb {E}} _ {T - \Delta t} [ \delta (T - \Delta t, T) X (T) ] \tag {9.16}
$$ provided that the values of the discount factor are less than one for all sample paths. If  $\hat{\mathbb{E}}_{T - \Delta t}[X(T)] > X(T - \Delta t)$  is also true, then at  $T - 2\Delta t$ , it is true that this expected payoff is greater than the continuation value, i.e.:


$$
\begin{array}{l} \hat {\mathbb {E}} _ {T - 2 \Delta t} [ X (T) ] = E _ {T - 2 \Delta t} [ \hat {\mathbb {E}} _ {T - \Delta t} [ X (T) ] ] \\ > \hat {\mathbb {E}} _ {T - 2 \Delta t} [ \delta (T - 2 \Delta t, T - \Delta t) \max  \left\{E _ {T - \Delta t} [ \delta (T - \Delta t, T) X (T) ], X (T - \Delta t) \right\} ] \tag {9.17} \\ \end{array}
$$

As a result, as long as we can show that  $\hat{\mathbb{E}}_t[X(T)] > X(t)$  for all  $t$ , then  $\hat{\mathbb{E}}_t[X(T)]$  is an upper bound of the American value. The result will hold in continuous time as  $\Delta t$  reaches a limit.

# 9.5 Ultra T Bond Futures (and Options)

In 2015, the CME Group (former CBOT and CME) introduced a new T bond futures contract known as Ultra T bond futures. The key feature distinguishing the Ultra T-Bond from the existing T-Bond futures contract is the relatively narrow range of deliverable securities. The deliverable basket for Ultra T-Bond futures comprises cash Treasury bonds with at least 25 years of remaining term to maturity. By comparison, deliverable securities for the existing T-Bond contract are bonds with remaining terms to maturity of 15 years or more.

# 9.6 Eurodollar Futures

Eurodollar futures are futures contracts settled on LIBOR. A three-month LIBOR is a money market account rate that can be translated a discount bond as:

$$ L = 4\left(\frac{1}{P(t, t + 1/4)} - 1\right) \tag{9.18} $$

# 9.6.1 Quote

The Eurodollar futures quotes can be converted to the futures price as:

$$ \Phi^{\text{ED}} = 100 - \frac{100 - \text{QFP}}{4} \tag{9.19} $$

where QFP is quoted futures price.


# 9.6.2 Delivery

The delivery of Eurodollar futures is cash equal to:

$$
1 - \frac {L _ {3 m}}{4} \tag {9.20}
$$ where  $L_{3m}$  is a 3-month LIBOR. Given the relationship between LIBOR and discount factor in equation (9.18), we know it is:


$$
1 - \left(\frac {1}{P (t , t + ^ {1} / 4)} - 1\right) = 2 - \frac {1}{P (t , t + ^ {1} / 4)}
$$

ED futures are cash settled and hence no delivery options to be evaluated.

# 9.6.3 Pricing

Recall that the futures price is the risk-neutral expectation of the underlying payoff. Hence, ED futures price must be:

$$
\Phi^ {\mathrm {E D}} = \hat {\mathbb {E}} \left[ 2 - \frac {1}{P (t , t + \frac {1}{4})} \right] \tag {9.21}
$$ which needs a pricing model for LIBOR before we can evaluate ED futures.


Please be reminded that  $\Phi(t, T, T + 1/4) = \hat{\mathbb{E}}[P(T, T + 1/4)]$  and readers should not be confused between the two. Equation (9.21) is the pricing formula for ED futures and the latter is the futures for pure discount bond.

We can use the simple Vasicek or CIR model to evaluate ED futures or lattice models like the Ho-Lee model to evaluate ED futures.

# 9.7 Euro Dollar Futures Options

These options are quite straight for evaluate. Given that the underlying futures have no complex embedded options, the same lattice used for ED futures can be used for options. One can also work out the closed-form formula under the Vasicek model (CIR model is more difficult) but note that the option is written on the reciprocal of the zero coupon bond as opposed to the zero coupon bond.

For example, a call option on ED futures:

$$
\begin{array}{l} C ^ {\mathrm {E D}} = \hat {\mathbb {E}} _ {t} \left[ \exp \left(- \int_ {t} ^ {T _ {C}} r (u) d u\right) \max  \left\{\Phi^ {\mathrm {E D}} - K, 0 \right\} \right] \\ = \hat {\mathbb {E}} _ {t} \left[ \exp \left(- \int_ {t} ^ {T _ {C}} r (u) d u\right) \max  \left\{\left(2 - \frac {1}{P \left(T _ {C} , T _ {C} + 1 / 4\right)}\right) - K, 0 \right\} \right] \\ = \hat {\mathbb {E}} _ {t} \left[ \exp \left(- \int_ {t} ^ {T _ {C}} r (u) d u\right) \min  \left\{2 - K - \frac {1}{P \left(T _ {C} , T _ {C} + 1 / 4\right)}, 0 \right\} \right] \\ \end{array}
$$ which is a put option on bond.


Note that if the bond price is log-normally distributed, so is its reciprocal. Hence, a similar formula to the Vasicek bond option formula can be derived.

# 9.8 Relationship between Futures and Forward Prices

We do not have a specific place to discuss forward contracts. Rather, forward contracts are discussed in various places when they are relevant. Here we address very important characteristics of forward contracts and how they are different/similar from/to futures contracts.

Contractually, forward and futures are identical. They both allow long and short sides of the contract to lock in an agreed price (the price can be a rate such as in the forward rate agreement (FRA) contract but for the sake of consistency we only use price) for a given time horizon. However, due to their differences in trading, the agreed price can vary quite substantially between the two contracts. The differences can be roughly summarized as follows:

1. exchange traded vs. over-the-counter traded
2. fixed maturity vs. rolling maturity
3. risk-neutral expectation vs. forward expectation (medium)

# 4. marking-to-market vs. no marking-to-market

In this section, we discuss how the above differences cause potentially large price differences. The first item contributes to larger bid/offer spreads in forward contracts (than in the futures contracts). Such a liquidity impact not only is reflected in bid/offer spreads, but can also lower the mid price. Discussions on how liquidity can lower the mid price can be found in Chen (2012). The second item causes difficulties to build an interest rate curve using futures contracts. A brief discussion of how to reconcile the two contracts for the curve-cooking purpose can be found in Section 2.6.1 in Chapter 2 (known as convexity adjustment). The third difference is purely theoretical. These expectations are important in model building which is beyond the scope of this book.

Last and the most important is the impact of marking-to-market. The pioneer work of Cox, Ingersoll, and Ross (1981) sets up the foundation of why futures price and forward price differ. An example is given in Figure 9.2.

| 0 | 1 | 2 | 3 |
|---|---|---|---|
| Φ₀,₃ | Φ₁,₃ - Φ₀,₃ | Φ₂,₃ - Φ₁,₃ | (Φ₁,₃ - Φ₀,₃)(1+r)²<br>(Φ₂,₃ - Φ₁,₃)(1+r)<br>S₃ - Φ₂,₃ |
| | [r]Φ₁,₃ | [r](Φ₂,₃ - Φ₁,₃) | [r](Φ₂,₃ - Φ₁,₃)(1+r)<br>[r](S₃ - Φ₂,₃) |
| | | [r(1+r)]Φ₂,₃ | [r(1+r)](S₃ - Φ₂,₃) |
| -(1+r)²S₀ | | | -(1+r)²S₃ |
| Φ₀,₃/(1+r) | | | (1+r)²Φ₀,₃ |
| | | | |
| Ψ₀,₃ | | | S₃ - Ψ₀,₃ |

Figure 9.2: Marking to Market

In Figure 9.2,  $\Phi_{0,3} = S_0(1 + r)^3$ ; or  $\Phi_{0,3} = S_0 \prod_{i=1}^3 (1 + r_i)$ ; or  $\Phi_{t,T} = S_t \exp \left\{ \int_t^T r_u du \right\}$  [must know how many shares of stock to short].

In Figure 9.2, a three-period equity example is provided. When the interest rate is deterministic (known at current time), the futures price and the forward price are equal. When interest rate is random, there is no such guarantee. Then the futures price does not necessarily link to the forward price.

Note that:

$$
S _ {t} = \mathbb {E} _ {t} \left[ \exp \left\{- \int_ {t} ^ {t} r _ {u} d u \right\} S _ {T} \right] = P _ {t, T} \Psi_ {t, T} = P _ {t, T} \Phi_ {t, T} + \mathrm {c o v} [ D _ {t, T}, S _ {T} ]
$$

This leads to:

$$
P _ {t, T} [ \Psi_ {t, T} - \Phi_ {t, T} ] = \mathrm {c o v} [ D _ {t, T}, S _ {T} ]
$$

Hence we know:

$$
\begin{align}
\Psi_{t,T} &> \Phi_{t,T} \quad \text{cov}[D_{t,T}, S_T] > 0 \\
\Psi_{t,T} &< \Phi_{t,T} \quad \text{cov}[D_{t,T}, S_T] < 0
\end{align}
$$

In the case of interest rates, $S_T$ is the bond price at time $T$, which is $P_{T,s}$ where $s$ is the maturity date of the bond. When rates are high, discounting $D_{t,T}$ is low (i.e. severe) and so is the bond price $P_{T,s}$ usually. Reversely, when rates are low, discounting  $D_{t,T}$  is high and so is bond price  $P_{T,s}$ . Given that the future bond price and discounting move in the same direction, the covariance is positive, and hence the forward price is larger than the futures price.



# No-Arbitrage Price Relations for Options

ROBERT E. WHALEY, PhD

Valere Blair Potter Professor of Management and Co-Director of the Financial Markets Research

Center, Owen Graduate School of Management, Vanderbilt University

Abstract: For derivative instruments, in the absence of costless arbitrage price relations can be developed. In the case of options (calls and puts), there are three types of price relations that can be obtained. The first is the lower bound on the option's price. The second, and perhaps most important, no-arbitrage price relation is the one between the price of a put and the price of a call. This relation is called the put-call parity relation and arises from simultaneous trades in the call, the put, and the asset. The third price relation is the intermarket relation, which is the link between the prices of asset options and the prices of futures options. The price relations exist for European-style and American-style options and under both the continuous rate and discrete flow net cost of carry assumptions. Price relations are important for risk management strategies using options. Option pricing models go beyond these price relations to provide a fair value for an option.

The purpose of this entry is to develop no-arbitrage price relations for option contracts assuming that two perfect substitutes have the same price. In the absence of costless arbitrage opportunities, options have three types of no-arbitrage price relations—lower bounds, put-call parity relations, and intermarket relations. Each type of relation is developed in turn, for both European- and American-style options and under both the continuous rate and discrete flow net cost of carry assumptions. Before deriving the no-arbitrage price relations for options, however, we focus on clearly distinguishing between the characteristics of option and forward contracts.

# OPTIONS AND FORWARDS

Options differ from forwards in two key respects. First, the net cost of carry of a forward contract is zero since it involves no investment outlay. An option, on the other hand, involves investment. An option buyer pays the option premium for the right to buy or sell the underlying asset, and, like the buyer of any other asset, faces carry costs. For an option, however, the only carry cost is interest. Holding an option neither produces income like a dividend-paying stock nor requires storage costs like a commodity (i.e., a physical asset).

The effects of carry costs on the terminal profit functions of forward and option contracts are shown in Figures 1 through 3. The profit from a long forward position at expiration is

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/53f0e11afa03586ac3e7752a6deea501de7cb506622313d467724d8b62535f3c.jpg)
Figure 1 Terminal Profit of Long and Short Forward Positions

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/9d97ad34c7353b1c19988fda0fb08b0f1255a5f544397654dc06599d2b544ee8.jpg)


$$
\pi_ {\text {l o n g f o r w a r d}, T} = S _ {T} - f \tag {1}
$$ where  $S_{T}$  denotes the future price of the asset and  $f$  denotes the forward price.


On the other hand, the profit from a long call position is

$$
\pi_ {\text {l o n g c a l l} T} = \left\{ \begin{array}{l l} S _ {T} - X - c e ^ {r T}, & \text {i f} S _ {T} \geq X \\ - c e ^ {r T}, & \text {i f} S _ {T} <   X \end{array} \right. \tag {2}
$$ and from a long put position is


$$
\pi_ {\text {l o n g p u t}, T} = \left\{ \begin{array}{l l} - p e ^ {r T}, & \text {i f} S _ {T} \geq X \\ X - S _ {T} - p e ^ {r T}, & \text {i f} S _ {T} <   X \end{array} \right. \tag {3}
$$ where  $c$  and  $p$  are the prices of a European-style call and put, respectively;  $X$  is the exercise


price or strike price of the option. The opportunity cost of funds (i.e., the risk-free rate of interest) is denoted by  $r$ . Note that the profit functions for the long call and the long put (2) and (3) reflect the fact that the initial option premiums,  $c$  and  $p$ , are carried forward until the option's expiration at the risk-free interest rate. We have lost the opportunity cost of the funds we tied up in buying the option. Conversely, short call and short put positions (i.e.,  $\pi_{\text{short call}}, T = -\pi_{\text{long call}}, T$  and  $\pi_{\text{short put}}, T = -\pi_{\text{long put}}, T$ ) reflect the fact that the option seller receives the premium payment and invests the cash at the risk-free interest rate. The profit function of a long forward position (1) has no interest component since the forward price is a promised payment on day  $T$  rather than a cash outlay today.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/1f69ca951f14224b5b5732001c5198c539913e59f1772813f7fd6c6acdd5739a.jpg)
Figure 2 Terminal Profit of Long and Short Call Positions

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/14d28bd0d7bc7601c42ec7bc096510751e0e7fbea7c2cba0697f7ce505c57b05.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/1ffc70b38fcd2cdaa65c0c2b6b56159456e91ad18959e7fd3ab4fa1821e567ef.jpg)
Figure 3 Terminal Profit of Long and Short Put Positions

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/7c3d8980e09e078387d67391487fb02617a584677f0a29513d3c9ed7f4ba213c.jpg)

The second key difference between forwards and options is that the buyer of a forward is obliged to buy the underlying asset at expiration, independent of whether or not the terminal asset price is greater than or less than the initial forward price. The buyer of an option, on the other hand, is not obliged to buy or sell the underlying asset, but will do so only when it is profitable. The profit function for the long call position (2), for example, shows that the option is exercised only when  $S_{T} \geq X$ . If  $S_{T} < X$ , the call option buyer chooses not to exercise, forfeiting only his original investment plus carry costs,  $ce^{rT}$ . The limited liability feature of the long call and long put positions are illustrated in Figures 2a and 3a, respectively. In the interest of completeness, the short positions in the respective instruments are illustrated in Figures 1b through 3b.

The profit functions of the call and the put show a certain complementarity to the profit function of a forward. Suppose we buy a call and sell a put at the same exercise price. The profit function for the overall position is

$$
\begin{array}{l} \pi_ {c, T} - \pi_ {p, T} = \left\{ \begin{array}{l l} S _ {T} - X - c e ^ {r T} + p e ^ {r T} & \text {i f} S _ {T} \geq X \\ S _ {T} - X - c e ^ {r T} - p e ^ {r T} & \text {i f} S _ {T} <   X \end{array} \right. \\ = S _ {T} - X - c e ^ {r T} - p e ^ {r T} \\ \end{array}
$$

Now, suppose that we chose the exercise price of the options such that  $X = f - ce^{rT} + pe^{rT}$ . The profit functions of the option portfolio and the long forward position will be exactly the same. If we buy the option portfolio and sell the forward contract, the terminal value of the overall position must be 0. In the absence of costless arbitrage opportunities, the current value of the position must also be equal to 0, and, therefore, the call and put prices must be equal. Buying the call and selling the put (with the exercise price defined as above) is a perfect substitute for buying a forward. Viewed in this way, we can construct virtually any derivatives contract from any of the following pairs of basic instruments: (1) a forward and a call, (2) a forward and a put, and (3) a call and a put.


# CONTINUOUS RATES

The net cost of carry refers to the difference between the costs and the benefits of holding an asset. One carry cost common to all assets is the opportunity cost of funds. We assume this cost is incurred at the risk-free rate of interest. Beyond interest cost, however, carry costs vary depending upon the nature of the asset. For a physical asset or commodity, we incur storage costs (e.g., rent and insurance). At the same time, certain benefits may accrue. By storing wheat we may avoid some costs of possible running out of our regular inventory before two months are up and having to pay extra for emergency deliveries. This is called convenience yield. Thus, the net cost of carry for a commodity equals interest cost plus storage costs less convenience yield.

Table 1 Arbitrage Portfolio Trades Supporting Lower Price Bound of European-Style Call Option Where the Underlying Asset Has a Continuous Net Carry Rate,  $c \geq Se^{-iT} - Xe^{-rT}$

<table><tr><td rowspan="2">Trades</td><td rowspan="2">Initial Investment</td><td colspan="2">Value on Day T</td></tr><tr><td>ST&lt;X</td><td>ST≥X</td></tr><tr><td>Sell asset</td><td>Se-iT</td><td>-5T</td><td>-5T</td></tr><tr><td>Buy call option</td><td>-c</td><td>0</td><td>-5T-X</td></tr><tr><td>Buy risk-free bonds</td><td>-Xe-rT</td><td>X</td><td>X</td></tr><tr><td>Net portfolio value</td><td>Se-iT - Xe-rT - c</td><td>X - 5T</td><td>0</td></tr></table>

For a financial asset or security such as a stock or a bond, the carry costs/benefits are different. While borrowing costs remain, securities do not require storage costs and do not have convenience yields. What they do have, however, is income (yield) that accrues in the form of quarterly cash dividends or semiannual coupon payments. Thus, the net cost of carry for a security is equal to the cost of funds reduced by income. Carry costs and benefits are modeled either as continuous rates or as discrete flows. Some costs/benefits such as the cost of funds (i.e., the risk-free interest rate) are best modeled as continuous rates.

Under the continuous rate assumption, both interest cost and noninterest costs/benefits are modeled as continuous rates. Under the discrete flow assumption, interest cost is modeled as a continuous rate but noninterest costs/benefits are modeled as discrete cash flows. This section relies on the continuous rate assumption. The interest carry cost rate is represented by the notation  $r$ , and the noninterest carry benefit/cost rate is  $i$ . If the asset holder receives income from holding the asset such as the dividend yield on a stock portfolio or interest on a foreign currency investment, the income rate is positive (i.e.,  $i > 0$ ). If the asset holder pays costs in addition to interest in order to hold the asset (e.g., storage costs of holding a physical commodity), the income rate is negative (i.e.,  $i < 0$ ). Where  $i = 0$ , the only cost of carry is interest. As noted earlier in this section, the net cost of carry of an option is simply the interest rate.

# Lower Price Bound of European-Style Call

Under the continuous rate assumption, the lower price bound of a European-style call option is

$$ c \geq \max  \left(0, S e ^ {- i T} - X e ^ {- r T}\right) \tag {4}
$$

The reason that the call price must be greater or equal to 0 is obvious—we do not have to be paid to take on a privilege. The reason the call price must exceed  $Se^{-iT} - Xe^{-rT}$  is less obvious and is derived by means of an arbitrage portfolio. Suppose we form a portfolio by selling  $e^{-iT}$  units of the underlying asset $^2$  and buying a European-style call. In addition, to make sure that we have enough cash on hand to exercise the call at expiration, we buy  $Xe^{-rT}$  in risk-free bonds. The initial investment and terminal values of these positions are shown in Table 1. On day  $T$ , the net terminal value of the portfolio depends on whether the asset price is above or below the exercise price. If the asset price is less than the exercise price (i.e.,  $S_T < X$ ), we let the call expire worthless. We then use the risk-free bonds to buy one unit of the asset to cover the short sale obligation. What remains is  $X - \tilde{S}_T$  which we know is greater than 0. If the asset price is greater than or equal to the exercise price (i.e.,  $S_T \geq X$ ), we exercise the call. This requires a cash payment of  $X$ . Fortunately we have exactly that amount on hand in the form of risk-free bonds. The unit of the asset that we receive upon exercising the call is used to retire the short sale obligation. In this case, the net terminal value is certain to be 0.


What are the implications of this strategy? Well, we have formed a portfolio that is certain to have a terminal value of at least 0. In the absence of costless arbitrage opportunities, this implies that the greatest initial value is 0. More simply, we cannot reasonably expect to collect money at the outset without risk of loss. In the absence of costless arbitrage opportunities,  $Se^{-iT} - Xe^{-rT} - c \leq 0$ . Hence, a lower price bound for the European-style call is  $c \geq Se^{-iT} - Xe^{-rT}$ .

In general, the lower price bound of an option is called its intrinsic value, and the difference between the option's market value (price) and its intrinsic value is called its time value. Thus a European-style call has an intrinsic value of  $\max(0, Se^{-iT} - Xe^{-rT})$  and a time value of  $c - \max(0, Se^{-iT} - Xe^{-rT})$ . This entry deals with identifying intrinsic values by virtue of no-arbitrage arguments. Option pricing models uncover the determinants of time value.

To illustrate, suppose a three-month European-style call option written on a stock index portfolio has an exercise price of 70 and a market price of 4.25. Suppose also the current index level is 75, the portfolio's dividend yield rate is  $4\%$ , and the risk-free rate of interest is  $5\%$ . Is a costless arbitrage profit possible?

To test for the possibility of a costless arbitrage profit, substitute the problem parameters into the lower price bound (4), that is,

$$
4. 2 5 <   \max  [ 0, 7 5 e ^ {- 0. 0 4 (3 / 1 2)} - 7 0 e ^ {- 0. 0 5 (3 / 1 2)} ] = 5. 1 2
$$

Since the lower bound relation is violated, a costless arbitrage profit of at least  $5.12 - 4.25 = 0.87$  is possible. Since the violation may result from either the call being underpriced or the asset being overpriced, the arbitrage requires buying the call and selling the asset. The appropriate arbitrage trades are provided in Table 1. Substituting the prices and rates,

<table><tr><td rowspan="2">Trades</td><td rowspan="2">Initial Investment</td><td colspan="2">Value at Time T</td></tr><tr><td>ST &lt; 70</td><td>ST ≥ 70</td></tr><tr><td>Sell index portfolio</td><td>74.25</td><td>- S_T</td><td>- S_T</td></tr><tr><td>Buy call option</td><td>-4.25</td><td>0</td><td>S_T - 70</td></tr><tr><td>Buy risk-free bonds</td><td>-69.13</td><td>70</td><td>70</td></tr><tr><td>Net portfolio value</td><td>0.87</td><td>70 - S_T</td><td>0</td></tr></table>

In examining the net portfolio value, note that you (a) earn an immediate profit of 0.87, and (b) have the potential of earning even more if the index level is below 70 at the option's expiration. If prices in the market were actually configured at such levels, you should expect that buying pressure on the call and selling pressure on the index portfolio would very quickly return the market to equilibrium. In the absence of costless arbitrage opportunities,  $c \geq Se^{-iT} - Xe^{-rT}$ .

# Lower Price Bound of American-Style Call

American-style options are like European-style options except that they can be exercised at any time up to and including the expiration day. Since this additional right cannot have a negative value, the relation between the prices of American-style and European-style call options is

$$
C \geq c \tag {5}
$$ where the uppercase  $C$  represents the price of an American-style call option with the same exercise price and time to expiration and on the same underlying asset as the European-style call. The lower price bound of an American-style call option is


$$
C \geq \max  (0, S e ^ {- i t} - X e ^ {- r t}, S - X) \tag {6}
$$

This is the same as the lower price bound of the European-style call (4), except that the term  $S - X$  is added within the maximum value operator on the right-hand side. The reason is, of course, that the American-style call cannot sell for less than its immediate early exercise proceeds,  $S - X$ . If  $C < S - X$ , a costless arbitrage profit of  $S - X - C$  can be earned by simultaneously buying the call (and exercising it) and selling the asset.


As an illustration, suppose a three-month American-style call option written on a stock index portfolio has an exercise price of 70 and a market price of 4.25. Suppose also the current index level is 75, the portfolio's dividend yield rate is  $4\%$ , and the risk-free rate of interest is  $5\%$ . Is a costless arbitrage profit possible?

To test for the possibility of a costless arbitrage profit, substitute the problem information into (6), that is,

$$
\begin{array}{l} 4. 2 5 <   \max  [ 0, 7 5 e ^ {- 0. 0 4 (3 / 1 2)} \\ - 7 0 e ^ {- 0. 0 5 (3 / 1 2)}, 7 5 - 7 0 ] \\ = \max  (0, 5. 1 2, 5) = 5. 1 2 \\ \end{array}
$$

At the current call price of 4.25, two types of arbitrage are possible. A costless arbitrage profit of  $5.00 - 4.25 = 0.75$  is possible simply by buying the call, exercising it, and selling the asset. The amount of this arbitrage profit, however, is less than the arbitrage profit of at least  $5.12 - 4.25 = 0.87$  that can be earned by buying the call, selling the asset, buying risk-free bonds, and holding the portfolio until the call's expiration, as was shown in the previous arbitrage table. Under this second alternative, you earn an immediate profit of 0.87, and have the potential of earning even more if the asset price is below 70 at the option's expiration.

# Early Exercise of American-Style Call Options

The structure of the lower price bound of the American-style call (6) can be used to provide important insight regarding the possibility of early exercise. The second term in the squared brackets,  $Se^{-iT} - Xe^{-rT}$ , is the minimum price at which the call can be sold in the marketplace. The third term is the value of the American-style if it is exercised immediately. If the value of the second term is greater than the third term (for a certain set of call options), the call's price in the marketplace will be always exceed its exercise proceeds so it will never be optimal to exercise the call early.


To identify this set of calls, we must examine the conditions under which the relation

$$
S e ^ {- i t} - X e ^ {- r t} > S - X
$$ holds. The job is easier if we rearrange the relation to read


$$
S \left(e ^ {- i T} - 1\right) > - X \left(1 - e ^ {- r T}\right) \tag {7}
$$

Since the risk-free interest rate is positive, the expression of the right-hand side is negative. If the left-hand side is positive or zero, the call option holder can always get more by selling his option in the marketplace than by exercising it; so early exercise will never be optimal and the value of the American-style call is equal to the value of the European-style call,  $C = c$ . This condition is met for calls whose underlying asset has a negative or zero noninterest carry rate,  $i \leq 0$ .

The intuition for this result can be broken down into two components—interest cost,  $r$ , and noninterest benefit (i.e.,  $i > 0$ ) or cost (i.e.,  $i < 0$ ). With respect to interest cost, recognize that exercising the call today requires that we pay  $X$  today. If we defer exercise until the call's expiration, on the other hand, we have the opportunity to earn interest (i.e., our liability is only the present value of the exercise cost,  $Xe^{-rT}$ ). So, holding other factors constant, we always have an incentive to defer exercise. With respect to the noninterest costs, recall that assets with  $i < 0$  are typically physical assets that require storage. If we exercise a call written on such an asset, we must take delivery, whereupon we immediately begin to incur storage costs. If we defer exercise, on the other hand, and continue to hold the claim on the asset rather than the asset itself, we avoid paying storage costs. Thus, where  $i < 0$ , there are two reasons not to exercise early. But even if storage costs are zero (i.e., with  $i = 0$ ), condition (7) holds since the interest cost incentive remains.


For American-style call options on assets with  $i > 0$  (e.g., stock index portfolio with a nonzero dividend yield and foreign currencies with a nonzero foreign interest rate), on the other hand, early exercise may be optimal. The intuition is that, while there remains the incentive to defer exercise and earn interest on the exercise price, deferring exercise means forfeiting the income on the underlying asset (e.g., the dividend yield on a stock index portfolio). The only way to capture this income is by exercising the call and taking delivery of the asset. For American-style call options on assets with  $i > 0$ , early exercise may be optimal and, therefore,  $C > c$ .

# Lower Price Bound of European-Style Put

The lower price bound of a European-style put option is

$$ p \geq \max  \left(0, X e ^ {- r T} - S e ^ {- i T}\right) \tag {8}
$$

Again, the reason that the option price must be greater or equal to 0 is obvious—we do not have to be paid to take on a privilege. The reason the put price must exceed the bound,  $Xe^{-rT} - Se^{-iT}$ , is given by the arbitrage trade portfolio in Table 2. If we buy  $e^{-iT}$  units of the asset and a put, and sell  $Xe^{-rT}$  risk-free bonds, the net terminal value of the portfolio is certain to be greater than or equal to 0. If the asset price is less than or equal to the exercise price at the option's expiration (i.e.,  $S_T \leq X$ ), we will exercise the put, delivering the asset and receiving  $X$  in cash. We will then use the exercise proceeds  $X$  to cover our risk-free borrowing obligation. In the event the asset price is greater than the exercise price (i.e.,  $S_T \leq X$ ), we will consider the put expire worthless. We still need to cover our risk-free borrowing, which we do by selling the asset. After repaying our debt, we have  $\tilde{S}_T - X$  remaining.


For example, a three-month European-style put option written on a stock index portfolio has an exercise price of 70 and a market price of 8.80. Suppose also the current index level is 61, the portfolio's dividend yield rate is  $4\%$ , and the risk-free rate of interest is  $5\%$ . Is a costless arbitrage profit possible?

To test for the possibility of a costless arbitrage profit, substitute the problem parameters into the lower price bound (8),

$$
8. 8 0 > \max  [ 0, 7 0 e ^ {- 0. 0 5 (3 / 1 2)} - 6 1 e ^ {- 0. 0 4 (3 / 1 2)} ] = 8. 7 4
$$

At the current price of 8.80, the no-arbitrage condition (8) holds, so no costless arbitrage opportunity exists.

# Lower Price Bound for American-Style Put

An American-style put has an early exercise privilege, which means that the relation between the prices of American-style and European-style put options is

$$
P \geq p \tag {9}
$$

Table 2 Arbitrage Portfolio Trades Supporting Lower Price Bound of European-Style Put Option Where the Underlying Asset Has a Continuous Net Carry Rate,  $p \geq Xe^{-rT} - Se^{-iT}$

<table><tr><td></td><td></td><td colspan="2">Value on Day T</td></tr><tr><td>Trades</td><td>Initial Investment</td><td>ST&lt;X</td><td>ST≥X</td></tr><tr><td>Sell asset</td><td>-SE-iT</td><td>ST</td><td>ST</td></tr><tr><td>Buy call option</td><td>-p</td><td>X-ST</td><td>0</td></tr><tr><td>Buy risk-free bonds</td><td>Xe-rT</td><td>-X</td><td>-X</td></tr><tr><td>Net portfolio value</td><td>Xe-rT - SE-iT - p</td><td>0</td><td>ST-X</td></tr></table> where uppercase  $P$  represents the price of an American-style put option with the same exercise price, time to expiration, and underlying asset as the European-style put. The lower price bound of an American-style put option is


$$ p \geq \max  \left(0, X e ^ {- r T} - S e ^ {- i T}, X - S\right) \tag {10}
$$

This is the same as the lower price bound of the European-style put (8), except that, because the American-style put may be exercised at any time including now, the exercise proceeds,  $X - S$ , is added within the maximum value operator on the right-hand side. If  $P < X - S$ , a costless arbitrage profit of  $X - S - P$  can be earned by simultaneously buying the put (and exercising it) and buying the asset.

To illustrate, assume that a three-month American-style put option written on a stock index portfolio has an exercise price of 70 and a market price of 8.80. Suppose also the current index level is 61, the portfolio's dividend yield rate is  $4\%$ , and the risk-free rate of interest is  $5\%$ . Is a costless arbitrage profit possible?

To test for the possibility of a costless arbitrage profit, substitute the problem information into (10), that is,

$$
\begin{array}{l} 8. 8 0 <   \max  [ 0, 7 0 e ^ {- 0. 0 5 (3 / 1 2)} \\ \left. - 6 1 e ^ {- 0. 0 4 (3 / 1 2)}, 7 0 - 6 1 \right] \\ = \max  (0, 8. 7 4, 9. 0 0) = 9. 0 0 \\ \end{array}
$$

At the current price of 8.80, the no-arbitrage relation (10) is violated, indicating the presence of a costless arbitrage opportunity. Since it is the early exercise condition (third term) on the right-hand side that is violated, you should buy the put (and exercise it) and buy the index portfolio. You would pay 8.80 for the put and 61 for the index portfolio, and receive 70 when you deliver the index portfolio upon exercising the put. The amount of the arbitrage profit is 0.20 and is earned immediately.

# Early Exercise of American-Style Put Options

In the case of an American-style call, we found that if the underlying asset had carry costs and above interest (e.g., storage), the call option holder would never (rationally) exercise early. In the case of an American-style put, no comparable condition exists. There is always some prospect of early exercise, so the American-style put is always worth more than the European-style put, that is,  $P > p$ . The intuition is straightforward. Suppose, for whatever reason, the asset price falls to 0. The put option holder should exercise immediately. There is no chance that the asset price will fall further, so delaying exercise means forfeiting the interest income that can be earned on the exercise proceeds of the put, X. The interest-induced, early-exercise incentive works in exactly the opposite way for the put than it did for the call. For the put, we want to exercise early to get the cash and let it begin to earn interest. For the call, we want to defer exercise and let the cash continue to earn interest.

# Put-Call Parity for European-Style Options

Perhaps the most important no-arbitrage price relation for options is put-call parity. The put-call parity price relation arises from the simultaneous trades in the call, the put, and the asset. Put-call parity for European-style options is given by

$$ c - p = S e ^ {- i T} - X e ^ {- r T} \tag {11}
$$

The composition of the put-call parity arbitrage portfolio is given in Table 3. A portfolio that consists of a long position of  $e^{-iT}$  units of the asset, a long put, a short call, and a short position of  $Xe^{-rT}$  in risk-free bonds is certain to have a net terminal value of 0. If the terminal asset price is less than or equal to the exercise price of the options (i.e.,  $S_T \leq X$ ), we exercise the put and deliver the asset. The cash proceeds

Table 3 Arbitrage Portfolio Trades for European-Style Put-Call Parity Where the Underlying Asset Has a Continuous Net Carry Rate,  $c - p = Se^{-iT} - Xe^{-rT}$

<table><tr><td rowspan="2">Trades</td><td rowspan="2">Initial Investment</td><td colspan="2">Value at Time T</td></tr><tr><td>ST&lt;X</td><td>ST≥X</td></tr><tr><td>Buy asset</td><td>-SE-iT</td><td>ST</td><td>ST</td></tr><tr><td>Buy put option</td><td>-p</td><td>X-ST</td><td>0</td></tr><tr><td>Sell call option</td><td>c</td><td>0</td><td>-(ST-X)</td></tr><tr><td>Sell risk-free bonds</td><td>Xe-rT</td><td>-X</td><td>-X</td></tr><tr><td>Net portfolio value</td><td>Xe-rT-SE-iT-p+c</td><td>0</td><td>0</td></tr></table> from exercise are used to repay our debt. The call option is out-of-the-money, so the call option holder will let it expire worthless. On the other hand, if the terminal asset price exceeds the exercise price (i.e.,  $S_T > X$ ), we will let our put expire worthless. The call option holder will exercise, requiring that we deliver a unit of the asset, which we just happen to have.[10] The call option holder pays us  $X$ , which we use to retire our risk-free borrowings. Since the net terminal portfolio value is zero, the cost of entering into such a portfolio today must also be 0, otherwise costless arbitrage would be possible. If the initial investment is 0, the put-call parity relation (11) holds.


The set of arbitrage trades spelled out in Table 3 (i.e., buy the asset, buy the put, sell the call, and sell risk-free bonds) is called a conversion. If all of the trades are reversed (i.e., sell the asset, sell the put, buy the call, and buy risk-free bonds), it is called a reverse conversion. These names arise from the fact that we can create any position in the asset, options, or risk-free bonds by trading (or converting) the remaining secu rities, in the same manner we used a call and a put to create a forward contract at the beginning of the entry. Table 4 provides a complete list of the conversions that are possible using the put-call parity relation for European-style options. The first row says that buying the asset, buying a put, and selling a call is equivalent to buying risk-free bonds. We can check this by creating an arbitrage trade table, or by simply working through it mentally. If the asset price is less than the exercise price at expiration, we will exercise our put and sell the asset. If the asset price is greater than the exercise price, the call option holder will exercise, requiring that we deliver the asset. In both cases, we are certain to have X in cash when all is said and done. This is the same as the amount we would have had if we bought risk-free bonds.


Let's see how put-call parity is applied for European-style options. Suppose that a three-month call and put with an exercise price of 70 have prices of 5.00 and 4.50, respectively. Suppose also that the current level of the index

Table 4 Perfect Substitutes Implied by European-Style Put-Call Parity

<table><tr><td>Position 1</td><td></td><td>Position 2</td></tr><tr><td>Buy asset/buy put/sell call</td><td>=</td><td>Buy risk-free bonds (lend)</td></tr><tr><td>Buy asset/buy put/sell risk-free bonds</td><td>=</td><td>Buy call</td></tr><tr><td>Sell asset/buy call/buy risk-free bonds</td><td>=</td><td>Buy put</td></tr><tr><td>Sell put/buy call/buy risk-free bonds</td><td>=</td><td>Buy asset</td></tr><tr><td>Sell asset/sell put/buy call</td><td>=</td><td>Sell risk-free bonds (borrow)</td></tr><tr><td>Sell asset/sell put/buy risk-free bonds</td><td>=</td><td>Sell call</td></tr><tr><td>Buy asset/sell call/sell risk-free bonds</td><td>=</td><td>Sell put</td></tr><tr><td>Buy put/sell call/sell risk-free bonds</td><td>=</td><td>Sell asset</td></tr></table> portfolio underlying the options is 70, the index portfolio has a dividend yield rate of  $3\%$ , and the risk-free rate of interest is  $5\%$ . Is a costless arbitrage profit possible?


To test for the possibility of a costless arbitrage profit, substitute the problem parameters into the put-call parity relation (11),

$$
\begin{array}{l} 5. 0 0 - 4. 5 0 = 0. 5 0 > 7 0 e ^ {- 0. 0 3 (3 / 1 2)} \\ - 7 0 e ^ {- 0. 0 5 (3 / 1 2)} = 0. 3 4 \\ \end{array}
$$

Since the equation does not hold, a costless arbitrage profit is possible. Since the violation may result from either the call being overpriced, the put being underpriced, or the asset being underpriced, the arbitrage will require all three trades: selling the call, buying the put, and buying the asset. Using the trades as set out in Table 3, we get:

<table><tr><td rowspan="2">Trades</td><td rowspan="2">Initial Investment</td><td colspan="2">Value at Time T</td></tr><tr><td>ST&lt;70</td><td>ST≥70</td></tr><tr><td>Buy asset</td><td>-69.48</td><td> \tilde{S}_{T} </td><td> \tilde{S}_{T} </td></tr><tr><td>Buy put option</td><td>-4.50</td><td> \tilde{S}_{T}-70 </td><td>0</td></tr><tr><td>Sell call option</td><td>5.00</td><td>0</td><td> -( \tilde{S}_{T}-70) </td></tr><tr><td>Sell risk-free bonds</td><td>69.13</td><td>-70</td><td>-70</td></tr><tr><td>Net portfolio value</td><td>0.16</td><td>0</td><td>0</td></tr></table>

By forming this portfolio, we generate a costless arbitrage profit of 0.16. The buying pressure on the index portfolio and the put will cause their prices to rise, and the selling pressure on the call will cause its price to fall. The arbitrage trading will stop when the initial value investment column sums to zero (i.e., the costless ar bitrage opportunity ceases to exist), or where  $c - p = Se^{-iT} - Xe^{-rT}$ .


# Put-Call Parity for American-Style Options

The early exercise feature of American-style options complicates the put-call parity relation. The nature of the relation depends on the level of noninterest costs/benefits,  $i$ . Specifically, the put-call parity relations are

$$
S - X \leq C - P \leq S e ^ {- i T} - X e ^ {- r T} \quad \text {i f} i = 0 \tag {12a}
$$ and


$$
S e ^ {- i T} - X \leq C - P \leq S - X e ^ {- r T} \quad \text {i f} i > 0 \tag {12b}
$$

Each inequality in (12a) and in (12b) has a separate set of arbitrage trades. To illustrate, consider (12b), the case in which the asset pays some form of income, say, a stock index portfolio with a constant dividend yield rate, or a foreign currency with a constant foreign risk-free rate of interest. To establish the left-hand side inequality of (12b), consider the arbitrage portfolio trades in Table 5. To generate the table entries, assume the left-hand side inequality of (12b) is reversed. This means the asset price is overpriced, the put is overpriced, and/or the call is underpriced. Thus, the arbitrage portfolio must account for all three possibilities. We should sell the asset, sell the put, buy the call, and buy some risk-free bonds. At the options' expiration, the portfolio is certain to have

Table 5 Arbitrage Portfolio Trades Supporting American-Style Put-Call Parity Where the Underlying Asset Has a Continuous Net Carry Rate,  $Se^{-iT} - X < C - P$

<table><tr><td rowspan="2">Trades</td><td rowspan="2">Initial Investment</td><td rowspan="2">Early Exercise at t</td><td colspan="2">Value on Day T</td></tr><tr><td>ST&lt;X</td><td>ST≥X</td></tr><tr><td>Sell asset</td><td>-Se-iT</td><td>-˜t e-(T-t)</td><td>-˜T</td><td>-˜T</td></tr><tr><td>Sell put option</td><td>P</td><td>-(X -˜t)</td><td>-(X -˜T)</td><td>0</td></tr><tr><td>Buy call option</td><td>-C</td><td>-˜Ct</td><td>0</td><td>˜T-X</td></tr><tr><td>Buy risk-free bonds</td><td>-X</td><td>Xerrt</td><td>Xerrt</td><td>Xerrt</td></tr><tr><td>Net portfolio value</td><td>Se-iT + P - C - X</td><td>˜t[1 - e-(T-t)] +˜Ct + X(erT - 1)</td><td>X(erT - 1)</td><td>X(erT - 1)</td></tr></table> positive value  $X(e^{rT} - 1)$ . If  $S_T < X$ , the put option holder exercises, requiring that we pay  $X$  in return for a unit of the underlying asset. We pay the exercise price using a portion of our risk-free bonds, and use the delivered asset to cover our short position. On the other hand, if  $S_T \geq X$ , we exercise the call and receive the asset. The asset delivered on the call is used to cover the short position. We use some of the risk-free bonds to pay for the exercise price of the call.


The early exercise feature of the American-style options requires that we consider one other contingency within the arbitrage table, that is, what happens if the put option holder decides to exercise early at some arbitrary time  $t$  between now and expiration. Looking at Table 5, we see that our obligation should the put be exercised early is  $-(X - \tilde{S}_t)$ . But since we have  $Xe^{rt}$  in risk-free bonds, we have more than enough to cover the payment of  $X$  to the put option holder. In return, we receive  $\tilde{S}_t$ , which is more than enough to cover our short asset position in the asset that has value  $-\tilde{S}_te^{-i(T - t)}$ . In addition, we have a long position in the call with value  $\tilde{C}_t$ . Because the net portfolio value is positive at expiration and also in the event the put is exercised early, the initial investment must be negative (since if it were zero or positive, there would be a certain arbitrage). And, if  $Se^{-iT} - X - C + P < 0$ , then  $Se^{-iT} - X < C + P$ .

To establish the right-hand side inequality of (12b), consider the arbitrage portfolio trades in Table 6. To generate the table entries, again assume the right-hand side inequality of (9b) is reversed. This means the asset price is underpriced, the put is underpriced, and/or the call is overpriced. The arbitrage portfolio trades must account for all possibilities. We should buy the asset, buy the put, sell the call, and sell some risk-free bonds. At the options' expiration, the portfolio is certain to have positive value  $\tilde{S}_T(e^{i\tilde{T}} - 1)$ . If  $S_T < X$ , we exercise the put and sell the asset. The long asset position has a value  $\tilde{S}_Te^{iT}$ , which is more than enough to pay for the unit of the asset owed on the put. The cash received from exercising the put is used to cover our risk-free bond obligation. On the other hand, if  $S_T \geq X$ , the call option holder exercises, implying that we receive  $X$  in return for delivering one unit of the asset. We use the call received from the call option holder to retire the risk-free bond position. The value of our asset position,  $\tilde{S}_Te^{iT}$ , is more than we need to deliver on the put.


The early exercise feature of the American-style call must also be considered, that is, what happens if the call option holder decides to exercise early on day  $t$ ? Looking at Table 6, we see that the call exercise obligation is  $-(\tilde{S}_t - X)$ . But, if we receive  $X$ , that is more than enough to cover the balance of  $-Xe^{-r(T - t)}$  in risk-free bonds. We must pay  $\tilde{S}_t$ , but we have more than one unit of the asset, that is,  $\tilde{S}_t e^{i(T - t)}$ . In addition, we have a long position in the put with value  $\tilde{P}_t$ . Since the net portfolio value is positive at expiration and in the event the call is exercised early, the initial investment must be negative. And, if  $-S + Xe^{-rT} + C - P < 0$ ,  $C - P < S - Xe^{-rT}$ .

Table 6 Arbitrage Portfolio Trades Supporting American-Style Put-Call Parity Where the Underlying Asset Has a Continuous Net Carry Rate,  $C - P < S - Xe^{-rT}$

<table><tr><td rowspan="2">Trades</td><td rowspan="2">Initial Investment</td><td rowspan="2">Early Exercise at t</td><td colspan="2">Value on Day T</td></tr><tr><td>ST&lt;X</td><td>ST≥X</td></tr><tr><td>Buy asset</td><td>-S</td><td> \tilde{S}_{t}e^{iT} </td><td> \tilde{S}_{T}e^{iT} </td><td> \tilde{S}_{T}e^{iT} </td></tr><tr><td>Buy put option</td><td>-P</td><td> \tilde{P}_{t} </td><td>X-  \tilde{S}_{T} </td><td>0</td></tr><tr><td>Sell call option</td><td>C</td><td>-( \tilde{S}_{t}-X )</td><td>0</td><td>-( \tilde{S}_{T}-X )</td></tr><tr><td>Sell risk-free bonds</td><td> Xe^{rt} </td><td>-Xe-r(T-t)</td><td>-X</td><td>-X</td></tr><tr><td>Net portfolio value</td><td>-S-P+Xer^T+C</td><td> \tilde{S}_{t}(e^{-it}-1)+\tilde{P}_{t}+X[1-e^{-r(T-t)}] </td><td> \tilde{S}_{T}(e^{iT}-1) </td><td> \tilde{S}_{T}(e^{iT}-1) </td></tr></table>

Table 7 No-Arbitrage Price Relations For European- and American-Style Options Where the Underlying Asset Has a Continuous Net Carry Rate

<table><tr><td>Description</td><td>European-Style Options</td><td>American-Style Options</td></tr><tr><td>Lower price bound for call</td><td>c ≥ max(0, Se-iT - Xe-rT)</td><td>C ≥ max(0, Se-iT - Xe-rT, S - X)</td></tr><tr><td>Lower price bound for put</td><td>p ≥ max(0, Xe-rT - Se-iT)</td><td>P ≥ max[0, Xe-rT - Se-iT, X - S]</td></tr><tr><td>Put-call parity relation</td><td>c - p = Se-iT - Xe-rT</td><td>S - X &lt; C - P &lt; Se-iT - Xe-rT, if i ≤ 0</td></tr><tr><td></td><td></td><td>Se-iT - X &lt; C - P &lt; S - Xe-rT, if i &gt; 0</td></tr></table>

# Summary

This completes the derivations of no-arbitrage price relations for European-style and American-style options on assets with a continuous net carry rate. For convenience, a summary of the no-arbitrage relations is provided in Table 7.

# DISCRETE FLOWS

With the no-arbitrage price relations for an underlying asset with a continuous carry cost rate in hand, the focus now turns to developing the same set of relations for an asset that has interest cost modeled as a continuous rate but noninterest costs/benefits modeled as a discrete flow. If the noninterest flow is income such as in the case of a cash dividend payment on a share of stock or a coupon payment on a bond, the income is represented as a positive value, that is,  $I_{t} > 0$ . If the flow is a cost such as, say, warehouse rent from storing an inventory of wheat, the income is represented as a negative value, that is,  $I_{t} < 0$ . Again, since this book deals primarily with financial assets, most of the illustrations will have  $I_{t}$  discussed as being a positive value. Although  $I_{t}$  represents a cash payment on any type of asset, we will call  $I_{t}$  a dividend payment throughout this section for expositional convenience.


# Lower Price Bound of European-Style Call

The lower price bound of a European-style call option on an asset that makes a single, discrete cash dividend payment during the option's life is

$$ c \geq \max  \left(0, S - I _ {t} e ^ {- r t} - X e ^ {- r T}\right) \tag {13}
$$

In this relation,  $I_{t}e^{-rt}$  is the present value of the promised dividend to be received at time  $t$ , where  $t < T$ . The arbitrage trading strategy that supports (13) is: sell the asset, buy a call, and buy risk-free bonds. The initial investment and terminal values are shown in Table 8. The first row in the table represents the short asset position. Today, we collect  $S$ , and, at the option's expiration, the short position must be covered at a cost of  $\tilde{S}_{t}$ . Shorting an asset, however, requires that we pay any dividends on the underlying asset. If we are short a stock and the stock pays a dividend, for example, we are obliged to pay the dividend out of our own pocket. Since the dividend is made during the option's life

Table 8 Arbitrage Portfolio Trades Supporting Lower Price Bound of European-Style Call Option Where the Underlying Asset Pays a Discrete Cash Dividend,  $C - P < S - Xe^{-rT}$

<table><tr><td rowspan="2">Trades</td><td rowspan="2">Initial Investment</td><td rowspan="2">Cash Flow at t</td><td colspan="2">Value on Day T</td></tr><tr><td>ST&lt;X</td><td>ST≥X</td></tr><tr><td>Buy asset</td><td>S</td><td>-It</td><td>-ST</td><td>-ST</td></tr><tr><td>Buy call option</td><td>-c</td><td></td><td>0</td><td>ST-X</td></tr><tr><td>Buy risk-free bonds</td><td>-Xe-rT-It e-rt</td><td>It</td><td>X</td><td>X</td></tr><tr><td>Net portfolio value</td><td>S - It e-rt - Xe-rT - c</td><td>0</td><td>X - ST</td><td>0</td></tr></table>

(i.e.,  $t < T$ ), the first row has a cash outflow of  $-I_{t}$  paid on day  $t$ . The second row shows the long call position. On day  $t$ , the call is worth nothing if  $S_{T} < X$  and  $\tilde{S}_{T} - X$  if  $S_{T} \geq X$ . Finally, we buy some risk-free bonds. The amount necessary must be sufficient to cover the payment of the exercise price,  $X$ , on day  $T$  and the payment of the cash dividend,  $I_{t}$ , on day  $t$ , that is,  $-Xe^{-rT} - I_{t}e^{-rt}$ . Since the portfolio is certain to have a nonnegative net value on day  $t$ , the net portfolio value today must be less than or equal to 0, which implies  $c > S - I_{t}e^{-rt} - Xe^{-rT}$ .

# Lower Price Bound of American-Style Call

A discrete cash dividend payment on the underlying asset affects the early exercise behavior of American-style call options differently than in the continuous carry rate case. In the case of an American-style call written on a stock, it may be optimal to exercise either just prior to the ex-dividend date (when the stock price falls by  $I_{t}$ ) or at expiration. Early exercise between today and the ex-dividend instant and between the ex-dividend instant and expiration are not optimal because the call is worth more alive than dead.[11] The lower price bound of an American-style call is therefore the lower bound of a call expiring at the ex-dividend instant,  $\max(0, S - Xe^{-rt})$ , and the lower bound of the call expiring at expiration,  $\max(0, S - I_{t}e^{-rt} - Xe^{-rT})$ . Combining these two results,

$$ c \geq \max  \left(0, S - X e ^ {- r t}, S - I _ {t} e ^ {- r t} - X e ^ {- r T}\right) \tag {14}
$$

# Early Exercise of American-Style Call Options

The last two terms on the right-hand side of (14) provide important guidance in deciding whether to exercise the American call option early, just prior to the ex-date. The second term in the parentheses is the present value of the early proceeds of the call. If this amount is less than the lower price bound of the call that ex pires normally, that is, if


$$
S - X e ^ {- r t} <   S - I _ {t} e ^ {- r t} - X e ^ {- r T}
$$ an American-style call will not be exercised early. To understand why, rewrite the expression as


$$
I _ {t} <   X [ 1 - e ^ {- r (T - t)} ] \tag {15}
$$

The American-style call will not be exercised early if the cash flow (e.g., dividend or coupon payment) captured by exercising prior to the ex-date is less than the interest implicitly earned by deferring exercise from the ex-date until expiration.

The logic underlying the relation (15) also applies to the case where there are multiple known dividends paid during the call option's life. Take a stock option, for example. If the  $i$ th dividend is less than the present value of the interest income that can be implicitly earned as a result of deferring the payment of the exercise price until the next dividend payment, that is, if

$$
I _ {i} <   X \left[ 1 - e ^ {- r \left(t _ {i + 1} - t _ {i}\right)} \right] \tag {16}
$$ exercising just prior to the ith dividend payment will not be optimal. This relation proves useful for simplifying the valuation of long-term stock options. The following example shows that dividend-induced early exercise on a long-term American-style call is most likely to occur just prior to the last dividend payment during the option's life.


Let's identify whether an American-style call option with an exercise price of 50 and one year remaining to expiration may be exercised early just prior to any of the dividend payments. Assume that the stock pays a quarterly dividend of 0.50 in 70 days, 161 days, 252 days, and 343 days. Assume the risk-free rate of interest is  $5\%$ .

Whether or not the call may be exercised early depends on the amount of the dividend payment in relation to the present value of the interest income implicitly received by deferring the payment of the exercise price. For the first dividend, compute the values in expression (16) and find


$$
0. 5 0 <   5 0 [ 1 - e ^ {- 0. 0 5 (1 6 1 / 3 6 5 - 7 0 / 3 6 5)} ] = 0. 6 1 9 4
$$

Hence, the call will not optimally be exercised just prior to the first dividend payment. The same is true for the second and third dividend payments, as shown in the table below.

<table><tr><td>Quarter</td><td>Cash Dividend</td><td>Days to Dividend Payment</td><td>Years to Dividend Payment</td><td>PV of Interest Income</td></tr><tr><td>1</td><td>0.50</td><td>70</td><td>0.1918</td><td>0.6194</td></tr><tr><td>2</td><td>0.50</td><td>161</td><td>0.4411</td><td>0.6194</td></tr><tr><td>3</td><td>0.50</td><td>252</td><td>0.6904</td><td>0.6194</td></tr><tr><td>4</td><td>0.50</td><td>343</td><td>0.9397</td><td>0.1505</td></tr></table>

For the last dividend payment in 353 days, condition (13) is violated, that is,

$$
0. 5 0 > 5 0 [ 1 - e ^ {- 0. 0 5 (3 6 5 - 3 4 3) / 3 6 5} ] = 0. 1 5 0 5
$$

This implies that exercise just prior to the last dividend payment during this option's life may be optimal.

# Lower Price Bound of European-Style Put

The lower price bound for the European-style put option is

$$ p \geq \max  \left(0, X e ^ {- r T} - S + I _ {t} e ^ {- r t}\right) \tag {17}
$$

Again, the asset price is reduced by the present value of the promised cash dividend on the asset. Unlike the call, however, the dividend payment increases the lower price bound of the European-style put. Because the put option is the right to sell the underlying asset at a fixed price, a discrete drop in the asset price such as one induced by the payment of a dividend on a stock serves to increase the value of the option. The arbitrage trades driving this relation are buy a put, buy a share of stock, and sell  $I_{t}e^{-rt} + Xe^{-rT}$  risk-free bonds.

# Lower Price Bound of American-Style Put

The lower price bound of the American-style put is

$$
P \geq \max  (0, X e ^ {- r t} - S + I _ {t} e ^ {- r t}, X - S) \tag {18}
$$

The second term on the right-hand side is the present value of the exercise proceeds if the put is exercised just after the dividend payment. This lower price bound is supported by the arbitrage trades listed above for the European-style put. The third term on the right is the exercise proceeds if the put is exercised immediately. If  $P < X - S$ , a costless arbitrage profit can be earned by buying the put and the asset, and then exercising the put. The arbitrage profit is  $X - S - P > 0$ .

# Early Exercise of American-Style Put Options

The early exercise behavior induced by the discrete cash dividend on the asset is different for the American-style put that it was for the call. If the third term exceeds the second in (18), the put will not be exercised early prior to the payment date. In that period the interest earned on the exercise proceeds of the option is less than the drop in the stock price from the payment of the dividend. For the third term to be larger than the second, that is,

$$
X e ^ {- r t} - S + I _ {t} e ^ {- r t} > X - S
$$ it must be the case that


$$
I _ {t} > X \left(e ^ {r t} - 1\right) \tag {19}
$$

In other words, if the amount of the dividend amount exceeds the interest income that will accrue on the cash received if the put is exercised immediately, the put will not optimally be exercised early.

As in the case of the call, this argument can be generalized to handle the multiple dividends during the life of an American-style put. Again, consider a stock option. If the  $i$ th dividend is greater than the interest that will accrue over the period.


$$
I _ {t} > X \left[ e ^ {r \left(t _ {i} - t _ {i - 1}\right)} - 1 \right] \tag {20}
$$ the put will not be exercised before the dividend payment, as the illustration below shows.


We'll use an example to identify whether an American-style put option with an exercise price of 50 and one year remaining to expiration may be exercised early just after any of the dividend payments. Assume that the stock pays a quarterly dividend of 0.50 in 70 days, 161 days, 252 days, and 343 days. Assume the risk-free rate of interest is  $5\%$ .

Whether or not the put may be exercised early depends on the amount of the dividend payment in relation to the interest income that could be earned if the put were exercised immediately. For the first dividend, compute the values in expression (20), that is,

$$
0. 5 0 > 5 0 \left[ e ^ {0. 0 5 (7 0 / 3 6 5)} - 1 \right] = 0. 4 8 1 8
$$

This implies that the put will not be exercised before the first dividend payment in 70 days.

The computation for the second dividend is

$$
0. 5 0 > 5 0 \left[ e ^ {0. 0 5 (1 6 1 / 3 6 5 - 7 0 / 3 6 5)} - 1 \right] = 0. 6 2 7 2
$$

This implies that the put may be exercised in the period between the first and second dividends. The same is true between the second and third dividends, and the third and fourth dividends, as indicated below. Early exercise after the fourth dividend is paid may also be optimal since no more dividends are paid during the option's life.


<table><tr><td>Quarter</td><td>Cash Dividend</td><td>Days to Dividend Payment</td><td>Years to Dividend Payment</td><td>Accrued Interest</td></tr><tr><td>1</td><td>0.50</td><td>70</td><td>0.1918</td><td>0.4818</td></tr><tr><td>2</td><td>0.50</td><td>161</td><td>0.4411</td><td>0.6272</td></tr><tr><td>3</td><td>0.50</td><td>252</td><td>0.6904</td><td>0.6272</td></tr><tr><td>4</td><td>0.50</td><td>343</td><td>0.9397</td><td>0.6272</td></tr></table>

# Put-Call Parity for European-Style Options

Put-call parity for European-style options on assets with discrete noninterest cash flows is

$$ c - p = S - I _ {t} e ^ {- r t} - X e ^ {- r T} \tag {21}
$$

To see this, assume the left-hand side of (21) is less than the right-hand side. If such is the case, an arbitrage profit can be made by selling the asset, selling the put, buying the call, and buying some risk-free bonds. The arbitrage is shown in Table 9. On day  $t$ , the net portfolio value is certain to be 0. The same is true on day  $t$ , when the cash dividend is made. Thus the value at time  $0$ ,  $S - I_{t}e^{-rt} - Xe^{-rT} + p - c$ , represents the arbitrage profit and is positive if the left-hand side of (21) is less than the right-hand side. Since the market cannot be in equilibrium, arbitrage will continue until the net portfolio value goes to 0. When it does, the market is in equilibrium and (21) holds.

Table 9 Arbitrage Portfolio Trades Supporting European-Style Put-Call Parity Where the Underlying Asset Pays a Discrete Cash Dividend,  $c - p = S - {I}_{t}{e}^{-{rt}} - X{e}^{-{rT}}$

<table><tr><td rowspan="2">Trades</td><td rowspan="2">Initial Investment</td><td rowspan="2">Cash Flow at t</td><td colspan="2">Value on Day T</td></tr><tr><td>ST&lt;X</td><td>ST≥X</td></tr><tr><td>Sell asset</td><td>S</td><td>-It</td><td>-3T</td><td>-3T</td></tr><tr><td>Sell put option</td><td>p</td><td></td><td>-(X-3T)</td><td>0</td></tr><tr><td>Buy call option</td><td>-c</td><td></td><td>0</td><td>3T-X</td></tr><tr><td>Buy risk-free bonds</td><td>-Xe-rT-Ite-rT</td><td>It</td><td>X</td><td>X</td></tr><tr><td>Net portfolio value</td><td>S-Ite-rT-Xe-rT+p-c</td><td>0</td><td>0</td><td>0</td></tr></table>

Table 10 Arbitrage Trades Supporting American-Style Put-Call Parity Where the Underlying Asset Pays a Discrete Cash Dividend,  $S - {I}_{t}{e}^{-{rt}} - X < C - P$

<table><tr><td rowspan="2">Trades</td><td rowspan="2">Initial Value</td><td rowspan="2">Ex-Day Value (t)</td><td rowspan="2">Put Exercised Early, Intermediate Value (τ)</td><td colspan="2">Put Exercised Normally, Terminal Value (T)</td></tr><tr><td>\tilde{S}_T \leq X</td><td>\tilde{S}_T &lt; X</td></tr><tr><td>Buy call</td><td>-C</td><td></td><td>\tilde{C}_{\tau}</td><td>0</td><td>\tilde{S}_T - X</td></tr><tr><td>Sell put</td><td>P</td><td></td><td>-(X - \tilde{S}_{\tau})</td><td>-(X - \tilde{S}_T)</td><td>0</td></tr><tr><td>Sell asset</td><td>S</td><td>-I_t</td><td>-\tilde{S}_{\tau}</td><td>-\tilde{S}_T</td><td>-\tilde{S}_T</td></tr><tr><td>Buy risk-free bonds</td><td>-I_t e^{-rt} - X</td><td>I_t</td><td>Xe^{r\tau}</td><td>Xe^{rT}</td><td>Xe^{rT}</td></tr><tr><td rowspan="2">Net portfolio value</td><td>-C + P + S</td><td>0</td><td>\tilde{C}_{\tau} + X(e^{r\tau} - 1)</td><td>X(e^{rT} - 1)</td><td>X(e^{rT} - 1)</td></tr><tr><td>-I_t e^{-rt} - X</td><td></td><td></td><td></td><td></td></tr></table>

# Put-Call Parity for American-Style Options

The put-call parity for American-style options on assets with discrete cash dividends is

$$
S - I _ {t} e ^ {- r t} - X \leq C - P \leq S - I _ {t} e ^ {- r t} - X e ^ {- r T} \tag {22}
$$

To understand why, we consider each inequality in (22) in turn. The inequality on the left can be derived by considering the values of a portfolio that consists of buying a call, selling a put, selling the stock, and buying  $X + I_{t}e^{-rt}$  in risk-free bonds. Table 10 contains these trades as well as the net portfolio value.

In Table 10, we see that, if all positions stay open until expiration, the net portfolio value is positive independent of whether the terminal asset price is above or below the exercise price of the options. If the terminal asset price is above the exercise price, the call option is exercised, and the asset acquired at exercise price

$X$  is used to deliver, in part, against the short asset position. If the terminal asset price is below the exercise price, the put is exercised. The asset received in the exercise of the put is used to cover the short stock position. In the event the put is exercised early at time  $\tau$ , the investment in the risk-free bonds is more than sufficient to cover the payment of the exercise price, and the asset received upon delivery can be used to cover the short asset position. In addition, the call position remains open and has a nonnegative value. In other words, the combination of securities described in Table 10 will never have a negative future value. And, if the future value is certain to be nonnegative, the sum of the initial investment column must be nonpositive. In the absence of costless arbitrage opportunities, the left-hand inequality of (22) must hold.

The right inequality of (19) may be derived using the same portfolio used to prove European-style put-call parity. Table 11 contains the

Table 11 Arbitrage Trades Supporting American-Style Put-Call Parity Where the Underlying Asset Pays a Discrete Cash Dividend,  $C - P < S - {I}_{t}{e}^{-{rt}} - X{e}^{-{rT}}$

<table><tr><td rowspan="2">Trades</td><td rowspan="2">Initial Value</td><td rowspan="2">Ex-Day Value (t)</td><td rowspan="2">Call Exercised Early, Intermediate Value (τ)</td><td colspan="2">Call Exercised Normally, Terminal Value (T)</td></tr><tr><td> \tilde{S}_T \leq X </td><td> \tilde{S}_T &lt; X </td></tr><tr><td>Sell call</td><td>C</td><td></td><td> -( \tilde{S}_{\tau} - X) </td><td>0</td><td> -( \tilde{S}_{T} - X) </td></tr><tr><td>Buy put</td><td>-P</td><td></td><td> \tilde{P}_{\tau} </td><td> X - \tilde{S}_{\tau} </td><td>0</td></tr><tr><td>Buy stock</td><td>-S</td><td> I_t </td><td> \tilde{S}_{\tau} </td><td> -\tilde{S}_{T} </td><td> \tilde{S}_{T} </td></tr><tr><td>Sell risk-free bonds</td><td> -I_{t}e^{-rt} + Xe^{-rt} </td><td> -I_t </td><td> -Xe^{-r(T-\tau)} </td><td>-X</td><td>-X</td></tr><tr><td>Net portfolio value</td><td>C-P-S+  I_{t}e^{-rt} + X </td><td>0</td><td> \tilde{P}_{\tau} + X(1-e^{r(T-\tau)}) </td><td>0</td><td>0</td></tr></table>

Table 12 No-Arbitrage Price Relations For European- and American-Style Options on Assets Where the Underlying Asset Pays a Discrete Cash Dividend

<table><tr><td>Description</td><td>European-Style Options</td><td>American-Style Options</td></tr><tr><td>Lower price bound for call</td><td>c ≥ max(0,S - Ite-rt - Xe-rt)</td><td>c ≥ max[0,S - Xe-rt, S - Ite-rt - X]</td></tr><tr><td>Lower price bound for put</td><td>p ≥ max(0,Xe-rt - S + Ite-rt)</td><td>P ≥ max(0,X - S, Xe-rt - S + Ite-rt)</td></tr><tr><td>Put-call parity relation</td><td>c - p = S - Ite-rt - Xe-rt</td><td>S - Ite-rt - X ≤ C - P</td></tr><tr><td></td><td></td><td>≤ S - Ite-rt - Xe-rt</td></tr></table> arbitrage portfolio trades. In this case, the net portfolio value at expiration is certain to be 0 should the option positions stay open until that time. In the event the American call option holder decides to exercise early, the portfolio holder delivers his share of stock, receives cash in the amount of the exercise price, and then uses the cash to retire his outstanding debt. After these actions are taken, the portfolio holder still has an open long put position and cash in the amount of  $X[1 - e^{-r(T - \tau)}]$ . Since the portfolio is certain to have nonnegative outcomes, the initial value must be negative or the right-hand inequality of (22) must hold.


# Summary

This completes our derivations of arbitrage relations for European-style and American-style options on assets with discrete cash dividends. Options on dividend-paying stocks and on coupon-bearing bonds fall into this category. Before proceeding with a discussion of arbitrage relations for futures options, we summarize our results in Table 12.

# NO-ARBITRAGE FUTURES OPTIONS RELATIONS

A futures option is like an asset option, except that if the option is exercised, a futures po sition is entered. Exercising a call option on a futures contract, for example, means that the holder will receive a long position in the futures at a price equal to the exercise price of the call.


Developing the lower bounds and put-call parity for European- and American-style futures options follows directly from the previous discussions. All we need to do is recall the prepaid version of the net cost of carry relations for futures:  $Fe^{-rT} = Se^{-iT}$  where noninterest costs are modeled as a continuous rate, and  $Fe^{-rT} = S - Ie^{-rt}$  where noninterest costs are modeled as a discrete flow. Substituting  $Fe^{-rT} = Se^{-iT}$  into the no-arbitrage price relations summarized in Table 7 or  $Fe^{-rT} = S - Ie^{-it}$  in the relations summarized in Table 12 produces the no-arbitrage price relations for futures options summarized in Table 13. The arbitrage portfolios supporting each of these relations are the same as those used to derive the relations for the asset throughout the entry.

# NO-ARBITRAGE INTERMARKET RELATIONS

In many cases, both asset options and futures options trade concurrently. The Chicago Board Options Exchange, for example, lists options on the S&P 500 index, while the Chicago Mercantile Exchanges lists options on the S&P 500

Table 13 No-Arbitrage Price Relations For European- and American-Style Options on Futures Contracts

<table><tr><td>Description</td><td>European-Style Options</td><td>American-Style Options</td></tr><tr><td>Lower price bound for call</td><td>c ≥ max[0, e-rT(F-X)]</td><td>C ≥ max(0,F-X)</td></tr><tr><td>Lower price bound for put</td><td>p ≥ max[0, e-rT(X-F)]</td><td>P ≥ max(0,X-F)</td></tr><tr><td>Put-call parity relation</td><td>c - p = e-rT(F-X)</td><td>Fe-rT-X &lt; C - P &lt; F - Xe-rT</td></tr></table> futures (which, in turn, is written on the S&P 500 index). The prices of asset options are inextricably linked to the prices of futures options. Under the assumption that the futures and options expire simultaneously and that the exercise prices of the asset and futures options are the same, a number of no-arbitrage price relations may be derived. Next we present such relations for European-style and American-style options.


# European-Style Options

The price of a European-style asset option is equal to the price of the corresponding futures option, that is,

$$ c (S) = c (F) \tag {23a}
$$ and


$$ p (S) = p (F) \tag {23b}
$$

The reason is that at expiration the payoffs of the asset option and the futures option are identical. Suppose, for the sake of illustration, that the price of a call on a futures exceeds the price of a call on an asset. In such a situation, costless arbitrage profits may be earned by buying the asset call and selling the futures call, as is shown in Table 14. The long asset option position pays nothing at expiration if the terminal asset price is less than the exercise price and pays  $\tilde{S}_T - X$  if the terminal asset price exceeds the exercise price. At the same time, the short futures option position expires worthless at expiration if the terminal futures (asset) price is less than the exercise price and costs  $-( \tilde{F}_T - X)$  if the terminal futures (asset) price exceeds the exercise price. But, since  $\tilde{F}_T = \tilde{S}_T$ , the net port folio value is certain to be zero. A portfolio that is certain to pay nothing on day  $T$  must cost nothing. Hence, in the absence of costless arbitrage opportunities, European-style asset options and European-style futures options have the same price.


# American-Style Options

The relation between the price of an American-style asset option and the price of the corresponding futures option depends on whether the futures price is greater than the asset price or not. If  $F > S$ ,

$$
C (S) <   C (F) \tag {24a}
$$ and


$$
P (S) > P (F) \tag {24b}
$$

To see this, consider the American-style call options. Since both the call on the futures and the call on the asset may be exercised early, we can compare the early exercise proceeds to establish which has greater value. The call on the asset has immediate early exercise proceeds of  $S - X$  and the call on the futures has early exercise proceeds of  $F - X > S - X$ . Thus as long as there is some chance of early exercise, the call on the futures is worth more than the call on the asset and the put on the asset is worth more than the put on the futures.

For cases where futures price is less than the asset price, the opposite results hold, that is,

$$
C (S) > C (F) \tag {25a}
$$ and


$$
P (S) <   P (F) \tag {25b}
$$

Table 14 Arbitrage Portfolio Trades Demonstrating the Equivalence of Prices of European-Style Call Options on an Asset and a Futures,  $c(F) = c(S)$

<table><tr><td></td><td></td><td colspan="2">Value on Day T</td></tr><tr><td>Trades</td><td>Initial Investment</td><td>ST&lt;X</td><td>ST≥X</td></tr><tr><td>Buy call option on asset</td><td>-c(S)</td><td>0</td><td> \tilde{S}_{T} - X </td></tr><tr><td>Sell call option on futures</td><td>c(F)</td><td>0</td><td> -(F_{T} - X) = -(S_{T} - X) </td></tr><tr><td>Net portfolio value</td><td>c(F) - c(S)</td><td>0</td><td>0</td></tr></table>

Table 15 No-Arbitrage Relations Between the Prices of Asset Options and Futures Options

<table><tr><td>Description</td><td>European-Style Options</td><td>American-Style Options</td></tr><tr><td>Call</td><td>c(S) = c(F)</td><td>C(S) &lt; C(F) if F &gt; S
C(S) &gt; C(F) if F &lt; S</td></tr><tr><td>Put</td><td>p(S) = p(F)</td><td>P(S) &gt; P(F) if F &gt; S
P(S) &lt; P(F) if F &lt; S</td></tr></table>

The previous arbitrage argument is merely reversed. Table 15 summarizes the results.

# KEY POINTS

- Under the assumption that no costless arbitrage (i.e., free money) opportunities are available in the marketplace, no-arbitrage price relations for European- and American-style options can be developed.
- The net cost of carry of the underlying asset plays an important role. Consequently, it is necessary to model interest cost as a constant continuous rate and the noninterest cost as a continuous rate or as a discrete flow, depending on the nature of the underlying asset.

For options on stock indexes, currencies, and some commodities, the continuous rate assumption is most appropriate. For options on stocks, bonds, and other commodities, the discrete flow assumption is preferred.

- With the assumptions regarding net cost of carry, lower price bounds, put-call parity price relations, and intermarket price relations can be derived for both European-style and American-style options on an asset and on a forward/futures.
- For American-style options, there is always the prospect of early exercise. Under certain circumstances regarding the cost of carry, the holder of an American-style call option would never (rationally) exercise early. In the case of an American-style put, there is always some prospect of early exercise, so the American-style put is always worth more than the European-style put.

- Perhaps most important is the no-arbitrage price relation between the price of a put and the price of a call. This relation, called the put-call parity relation, arises from simultaneous trades in the call, the put, and the asset.
- With respect to intermarket price relations, the prices of asset options are inextricably linked to the prices of futures options. Under the assumption that the futures and options expire simultaneously and that the exercise prices of the asset and futures options are the same, a number of no-arbitrage price relations may be derived.


---
title: "Introduction to Contingent Claims Analysis"
parent_directory: "III. Markets and Institutions/Encyclopedia of Financial Models/Volume I/Bond Valuation"
formatted: 2025-12-21 09:25:00 AM
formatter_model: claude-sonnet-4-5-20251001
cli-tool: claude-code
primary_tags:
  - contingent claims analysis
  - financial instrument valuation
  - states of the world
  - option pricing theory
  - risk management strategies
secondary_tags:
  - arrow-debreu securities
  - utility maximization
  - incomplete markets
  - derivative instruments
  - convertible securities
  - market completeness
cssclasses: academia
---

# Introduction to Contingent Claims Analysis

EDWIN H. NEAVE, PhD

Professor Emeritus, School of Business, Queen's University, Kingston, Ontario

Abstract: Contingent claims are a tool for valuing securities and for analyzing the effects of risky financial decisions. Contingent claims analysis can be used to value any kind of financial instrument, including such apparently exotic instruments as put and call options and convertible securities. Contingent claim analysis defines risky outcomes relative to states of the world, and uses claims to represent and value state outcomes. Thus given a definition of risky states, all financial instruments and arrangements can be represented as combinations of contingent claims on those states. Theoretically complete markets assume claims can be traded on every state of the world, but in practice markets are not likely to be complete at any point in time. Since in practice market incompleteness will inhibit certain risk management strategies, in so doing it also provides incentives to create new instruments that can be used to manage and to value claims on additional states of the world.

Contingent claims analysis is used in financial modeling to value any financial instrument, including such apparently exotic instruments as put and call options and convertible securities. In this entry, we discuss this important tool. We begin by explaining the notion of states of the world, a way of classifying risky outcomes whose value can then be represented using contingent claims. After providing examples of valuation using contingent claims, we introduce the concept of incomplete markets and consider its importance for modeling real-world financial arrangements. We then examine some financial instruments and arrangements that can be used to trade or to manage risks.

## STATES OF THE WORLD

The idea of states of the world is useful for thinking about convenient ways to model risky payoffs. In a two-time-point model, states of the world are defined as those future events that matter to the decision problem being considered. These states of the world are defined by the decision maker to be mutually exclusive and collectively exhaustive. Using an example given by Savage (1951), if one is about to break a ninth egg into a bowl already containing eight other eggs, the relevant states of the world could be whether the ninth egg is rotten and would hence spoil the others. (Here we presume the rottenness of an egg is not discernible until the egg has been broken and fallen into the bowl.)


In a second example more closely related to finance, an investor might be concerned with the future price of a share of stock, and this price might in turn depend on economic conditions. Suppose the investor defines (1) "states" to represent economic conditions, and (2) "future prices" to be the following list of possible share prices that may obtain at the time a given state is actually realized:

<table><tr><td>State</td><td>Future Price</td></tr><tr><td>1</td><td>$10</td></tr><tr><td>2</td><td>$8</td></tr><tr><td>3</td><td>6</td></tr></table>

For example, state 1 might mean that the industry in which the firm operates faces buoyant market conditions; state 2, conditions that are neither good nor bad; and state 3, conditions that are depressed. In each state, the effect is registered on the stock price.

We shall usually associate probabilities with the states; for example,  $p_i$  might represent the probability that state  $i$  will actually occur; that is,  $i = 1, 2, 3$ . Because the states are mutually exclusive, only one can actually occur; because they are collectively exhaustive, one of the three must occur. Hence  $\Sigma_i p_i = 1$ .

Note that although in this chapter we make less use of multiperiod models using contingent claims, we can also define states at different points in time, for example, the states of the world at different times.

## CONTINGENT CLAIMS AND THEIR VALUE

A unit contingent claim is a security that will pay an amount of \$1 if a certain state of the world is actually realized, but nothing otherwise. A claim that pays \$1 if state i is realized is frequently called a unit claim on state i. A unit contingent claim is also referred to as a primary security or Arrow-Debreu security (so named after the economists who introduced them—Arrow [1964] and Debreu [1959]).


Accordingly, the future stock price described earlier may be regarded as equivalent to a package containing all of the following:

Ten unit claims on state 1
Eight unit claims on state 2
Six unit claims on state 3

The idea of a contingent claim is thus useful for expressing, in terms of fundamental units, exactly what a given security's payoff may be in different possible states of the world.

It may take a little imagination to come up with real-world examples of claims, and those real-world examples are not numerous. (A ticket to win on a horse race is an example of a claim; a fire insurance policy is another. One example of a unit claim is an option that pays off 1 if the value of some underlying asset exceeds a fixed dollar value.) But packages of unit claims represent perfect substitutes for the more ordinary types of securities such as stocks or bonds, and we shall frequently find it useful to employ claims to help understand price relations between securities. For example, if we assume a perfectly competitive financial market along with a description of future events in terms of states of the world, certain price relationships between securities and contingent claims must obtain. This means in turn that certain predictable relationships between securities prices must also obtain.

To see these relationships, suppose that we can describe the world using two states and that two stocks are available, stock A and stock B. We assume the stocks' future prices have the following distributions:

<table><tr><td></td><td>Stock A</td><td>Stock B</td></tr><tr><td>1</td><td>$10</td><td>$7</td></tr><tr><td>2</td><td>$8</td><td>$9</td></tr></table>

Let  $A(0) =$  denote the time 0 price of stock A and  $B(0) =$  the time 0 price of stock B, and suppose these prices admit no arbitrage opportunities. Now if we let  $C_1$  and  $C_2$  represent the time 0 prices of unit claims on states 1 and 2, we can use the foregoing information about stock prices and payoffs to find the time 0 prices  $C_1$  and  $C_2$ . Purchasing stock A for  $\$ 6$ is equivalent to buying a package of 10 unit claims on state 1 and 8 unit claims on state 2, while buying stock B for  $\$ 5$ is equivalent to buying a package of 7 unit claims on state 1 and 9 unit claims on state 2. Since the unit claims comprising the two stocks are perfect substitutes, they must sell for the same prices in a perfect market. Hence we can write


$$
10 C_{1} + 8 C_{2} = \$ 6
$$

$$
7 C_{1} + 9 C_{2} = \$ 5
$$ which can be solved to obtain


$$
C_{1} = \mathrm{\$} \frac{7}{17}, \quad C_{2} = \mathrm{\$} \frac{4}{17}
$$

We can use the same reasoning to find the risk-free rate of return that must obtain in this market. Since a risk-free instrument is one that offers the same payoff irrespective of which state of the world obtains, we wish to find a combination of the two stocks that gives the same time 1 payoff, here denoted  $k$ , in either state of the world. That is, the following equation must be solved for  $\alpha$ :

$$
\alpha \left( \begin{array}{c} 10 \\ 8 \end{array} \right) + (1 - \alpha) \left( \begin{array}{c} 7 \\ 9 \end{array} \right) = \left( \begin{array}{c} k \\ k \end{array} \right)
$$

We can write the payoff  $k$  as equal to either of the following payoffs:

$$
10 \alpha + 7 (1 - \alpha) = 8 \alpha + 9 (1 - \alpha)
$$ which implies that


$$
2 \alpha = 2 (1 - \alpha)
$$ so that α = 1/2. The riskless payoff is then 1/2(10) + 1/2(7) = \$8.50, and this can be obtained for a price equal to 1/2(6) + 1/2(5) = \$5.50, since a portfolio composed of equal proportions of the two stocks creates the riskless investment. Accordingly, the risk-free rate of return is


$$
\frac{\$ 8.50 - \$ 5.50}{\$ 5.50} = \frac{6}{11} = 54.55
$$

Of course, this is not necessarily a realistic number for a risk-free rate of interest. (Whether it is realistic or not depends on the length of the time period under consideration, a matter we have left unspecified.) However, our purpose here is to develop illustrative calculations to display relations between contingent claims, and for this purpose particular sizes of numbers are not really important.

Another way of making a riskless investment is to buy one of each available unit claim, that is, one claim on state 1 and one claim on state 2. Such a portfolio gives a certain payoff of 1 for an investment cost of

$$
\$ \frac{4}{17} + \$ \frac{7}{17} = \$ \frac{11}{17}
$$

The rate of return on this investment is then

$$
\frac{\$1 - \$ \frac{11}{17}}{\$ \frac{11}{17}} = \frac{17 - 11}{11} = \frac{6}{11} = 54.55 \%
$$
\$ 800 = a - \$ 1,000b
$$ while for the time 1 price of stock B we have


$$
\$ 1,080 = a = \$ 840b
$$

Solving these two simultaneous equations, we find  b = 0.175  and  a = \2,550 . Thus, when  w_{1} = 0 ,  w_{2} = \2,550 , while when  w_{2} = 0 ,  w_{1} = \1,457 , which are the two intercepts of the line on their respective axes in Figure 1.

Now if  $w_{2} = 0$ , we have the case of a claim (primary security) on state 1. (The security pays \$1,457 in state 1 and nothing otherwise.) The price of this claim can be calculated by dividing initial wealth by the maximum wealth obtained if state 1 occurs, or $600/$1,457 = 0.41 (= 7/17). Similarly, the price of primary security 2 is \$600/2,550 = 0.24 (= 4/17), and our earlier results are confirmed.

Note that in Figure 1 the investor's time 1 position is some point on the line from  $A$  to  $B$ . How could the investor obtain a terminal wealth position lying beyond these points? The investor could engage in short sales, that is, selling shares not currently owned, for delivery when the unknown future state of the world is revealed. In this transaction the investor obtains cash from the time 0 sale of one security and uses it to buy the other. In so doing, the investor promises later to buy the security sold short at whatever price will be prevailing and deliver it. Note that there is a potential for large gains or losses in such transactions. Here the initial wealth will be used as a constraint and we shall require that at worst the investor will have zero terminal wealth if he or she guesses incorrectly. That is, no net borrowing is permitted at the end of the period so that the investor cannot go beyond the intercepts in Figure 1.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/36ecf129fa23b3601fd229c340fa6524897a9215ac5b07349d4f9d3bf3421065.jpg)
Figure 1 Market Opportunity Line, Showing Implied Prices of Unit Claims. Note:  $w_{1}$  represents wealth if state 1 occurs and correspondingly for  $w_{2}$ .


To illustrate, consider point  w_{1} = \1,457 ,  w_{2} = 0 . Let  n_{A}  be the number of shares of stock  A  and  n_{B}  the number of shares of stock  B  purchased. If state 1 occurs, the terminal wealth will be

$$
10 n_{A} + 7 n_{B} = \$ 1,457
$$ while if state 2 occurs, we must have


$$
8 n_{A} + 9 n_{B} = 0
$$

Solving these equations simultaneously, we find nB = 343. If the investor sells short 343 shares of stock B at the current price of \$5, he or she will receive \$1,715. Combining this with the initial wealth of \$600 gives \$2,315, so this investor may buy $2,315/$6 = 386 nA at \$6 per share. If state 1 eventuates, the investor will receive $3,860 ($10 for the 386 shares) but now must pay $2,401 ($7 for 343 shares) for stock B shares to cover the short position. The net terminal wealth is $3,860 - $2,401 = \$1,459 (difference due to rounding), as required. In state 2, the terminal wealth will be equal to \$3,088 (386 shares times \$8 per share) reduced by the cost to repurchase stock B to cover the short position, 343 shares at \$9 per share or \$3,087. Therefore, the net terminal wealth is equal to zero (the calculations show it is 1 but that is due to rounding).

Note that none of the points we have considered will necessarily be a utility-maximizing point. To determine this point, it is necessary to know the investor's utility function in  $(w_{1}, w_{2})$  space. The optimal portfolio for the investor satisfies the tangency condition that the slope of the wealth constraint (the ratio of the prices of the unit claims) equals the slope of the indifference curve (marginal rate of substitution of state 1 consumption for state 2 consumption).

The point of the foregoing demonstration is to show first that every security can be viewed as a bundle of unit claims and thus represents a combination of positions regarding future states of the world. Moreover, in these circumstances an investor can attain any point along the market opportunity line. If, on the other hand, there are fewer securities than the number of distinct states, the individual's optimal consumption choices may not be attainable. The significance of this will be explored in the next section.


Although we do not discuss it here, the real power of the contingent claim analysis is in providing the basis for valuing complex financial instruments and financial arrangements.

## INCOMPLETE MARKETS FOR CONTINGENT CLAIMS

A market is said to be a complete market when economic agents can structure any set of future state payoffs by investing in a portfolio of unit contingent claims (i.e., primary securities). A financial market is said to be incomplete if the number of (linearly) independent securities traded in it is smaller than the number of distinct states of the world. Clearly, market incompleteness depends on how states of the world are defined. However, since the number of states of the world needed to describe a typical financial market is likely to be large, the possibility that real-world financial markets will be incomplete is a very real one.

The importance of market incompleteness is best introduced by an example. Let us consider an economy with three possible states of the world and suppose only two securities (taking the form of unit claims for ease of exposition) are traded in it. We describe the securities in terms of their time 1 market value, for each state of the world, as in Table 2. It is apparent from the table that weighted averages of the two unit claims can be used to create packages with time 1 distributions of values ranging between zero and unity, the actual outcome depending on whether state 1 or state 2 obtains. However, an investor cannot create an income claim of other than zero in state 3 by using just the existing two unit claims. Moreover, no

Table 2 Market Values of Two Securities at Time 1

<table><tr><td></td><td colspan="3">States of the World</td></tr><tr><td>Security</td><td>1</td><td>2</td><td>3</td></tr><tr><td>1</td><td>1</td><td>0</td><td>0</td></tr><tr><td>2</td><td>0</td><td>1</td><td>0</td></tr></table> investor can arrange a risk-free investment in this example, because it is not possible to guarantee the same return in every state of the world by using just the available securities.


The situation is quite different if a third unit claim worth 1 in state 3 and zero in the other states becomes available. Now the number of claims equals the number of distinct states, and a risk-free investment can now be arranged.

We are now ready to discuss some practical implications of market incompleteness. It is obvious from the foregoing example that investor choice is restricted in incomplete markets. Moreover if investor choices are restricted, the investors will never be better off, and are likely to be worse off, than would be the case if markets were complete (i.e., if the restrictions were removed). In such situations, it is to be expected that if ways of completing the market can be found, those possibilities are likely to be utilized. That is, in the context of incomplete financial markets the appearance of new instruments might be regarded as attempts to provide investors with financial opportunities not otherwise available. The appearance of derivatives (options, futures, and swaps) might be examples of such attempts. Mossin (1977) argues that the preference existing firms show for organizing new activities as separate corporations may be another indication of attempts to deal with market incompleteness.

## FINANCIAL INSTRUMENTS AS CONTINGENT CLAIMS

Most financial instruments can be bought or sold, but not all of them are actively traded in financial markets. For example, a common form of contingent claim (and one that is close in concept to a unit claim) is a lottery ticket. In its simplest form this claim results in its holder winning either a positive prize or zero. Accordingly, this lottery ticket represents a claim that can be valued using two states of the world. Obviously, if a lottery has several different prizes, several states of the world may need to be defined in order to describe it completely. But lottery tickets, once issued, are rarely traded again. The same is true of such other contingent claims as the tickets obtained when betting on horse races or similar contests.


An insurance policy is a contingent claim that comes closer to our usual notions of a financial instrument, but again it is rarely traded in the financial markets. On the other hand, put or call options, representing contingent claims for selling or buying securities or financial indexes at prespecified prices, trade actively on such organized exchanges. Rights and warrants are other examples of contingent claims in that they permit, but do not require, the holder to buy securities on prespecified terms.

There are also securities that have embedded derivatives in them, derivatives that are not traded separately from the instrument itself. For example, a callable bond is a bond that grants the issuer the right to redeem the bond at some time in the future and at a specified price. That is, a callable bond can be viewed as a straight bond with an embedded call option granted to the issuer. A putable bond is a bond that grants the investor the right to sell (i.e., put) the bond to the issuer in the future at a specified price. Hence, the bond structure can be viewed as a straight bond with an embedded put option. Convertible securities, which include convertible bonds or convertible preferred stocks, represent contingent claims in that they typically allow the owner to exchange the original issue for other securities, usually common stock, and they are callable. Some convertible securities even include an embedded put option.

## KEY POINTS

Contingent claims analysis and contingent strategies are tools for dealing with risk in financial decision making.
Contingent claims analysis uses the notion of states of the world in assessing future risky payoffs.
- A unit contingent claim (also known as a primary security or Arrow-Debreu security) is a security that has a payoff of 1 if a certain state of the world is actually realized, but nothing in all other states.
- A contingent claim that pays off \$1 if state  $i$  is realized is also referred to as a unit claim on state  $i$ .
- Although few unit contingent claims exist in reality, claims represent a useful tool to employ in valuing securities and in understanding relations among them.
- An investor may solve the utility maximization problem when facing risk in a market for contingent claims.
- Using contingent claims analysis, an investor can obtain a terminal wealth position beyond what can be obtained by simply buying securities with initial wealth by engaging in short sales (i.e., selling shares not currently owned, for delivery when the unknown future state of the world is revealed). The outcomes in this case are more risky than they would be in the absence of short selling.

- Every security can be viewed as representing a bundle of unit claims and thereby further represents a combination of positions (long and short) regarding future states of the world.
- If the number of (linearly) independent securities traded is smaller than the number of distinct states of the world, the financial market is said to be incomplete.
- Because the number of states of the world necessary to describe a well-functioning financial market is likely to be large, the possibility that real-world financial markets will be incomplete is a very real one.
- Although most financial instruments representing contingent claims can be bought or sold, there are financial instruments or financial arrangements that are not actively traded in financial markets.


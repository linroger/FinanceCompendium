---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Pricing Fixed-Income Securities and Derivatives Using an Arbitrage-Free Binomial Tree
linter-yaml-title-alias: Pricing Fixed-Income Securities and Derivatives Using an Arbitrage-Free Binomial Tree
---

# Pricing Fixed-Income Securities and Derivatives Using an Arbitrage-Free Binomial Tree

In Chapter 27, we demonstrated the Heath-Jarrow-Morton arbitrage-free model for the evolution of the term structure. Recall that the tree is specified in terms of continuously compounded forward rates. We showed how the technique of Grant and Vora (1999, 2006) could be used to discretize the model and develop a binomial tree, which we repeat here as Figure 28.1.

First, recall the notation, in which  $f(x,y)$  is the continuously compounded forward rate at time  $x$  for a one-period transaction to start at time  $y$ . Thus,  $f(0,0)$  is the current spot rate (0.068),  $f(0,1)$  is the forward rate observed at time 0 for a one-period loan to start at time 1 (0.072),  $f(0,2)$  is the forward rate observed at time 0 for a one-period loan to start at time 2 (0.08), and  $f(0,3)$  is the forward rate observed at time 0 for a one-period loan to start at time 3 (0.082). The + and - signs in the superscripts indicate the number of up and down moves that have accumulated since time 0 to the current state. Hence, the top number at each node is the current one-period spot rate, with the forward rates below. As an example, the rate  $f(2,3)^{+-}$  rate of 0.0826 means that 8.26% is the continuously compounded forward rate when the spot rate has gone up and then down, so we are at time 2, and the rate applies to a one-period transaction to start at time 3.

In this chapter, we are going to use this model to determine the prices of a very large set of financial instruments. We will first price the simplest instruments, zero-coupon bonds. Then we will price the following instruments: coupon bonds, options on zero-coupon bonds, options on coupon bonds, callable bonds, FRAs, interest rate swaps, interest rate options, interest rate swaptions, and interest rate futures.

# 28.1 ZERO-COUPON BONDS

At time 0, the price of a one-period zero-coupon bond with face value 1 is easily found as

$$
B (0, 1) = B (1) = e ^ {- 0. 0 6 8} = 0. 9 3 4 3.
$$

Note that we suppress the 0 here for notational simplicity. The argument in parentheses is the maturity of the bond. Again, we do not include an argument for the time point we are at, as we shall use the  $+$  and  $-$  superscripts to indicate where we are. This will cut down on notational clutter. $^{1}$  There are no superscripts in this case, so we know we are at time 0.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/80cdac6cd97680c6d7d6b90187443bafddb1f743d52a8bf287cd03d1e667eae5.jpg)  
FIGURE 28.1 Heath-Jarrow-Morton Arbitrage-Free Binomial Tree Using the Method of Grant-Vora

We also need the prices at time 0 of zero-coupon bonds with maturities of two, three, and four periods. We can obtain these values by successively discounting at the forward rates as follows:

$$
B (2) = e ^ {- 0. 0 6 8 - 0. 0 7 2} = 0. 8 6 9 4
$$

$$
B (3) = e ^ {- 0. 0 6 8 - 0. 0 7 2 - 0. 0 8} = 0. 8 0 2 5
$$

$$
B (4) = e ^ {- 0. 0 6 8 - 0. 0 7 2 - 0. 0 8 - 0. 0 8 2} = 0. 7 3 9 3.
$$

If we want to fill in the entire tree of all zero-coupon bond prices, we need only go up through time 3, because the four-period bond will have a price of 1 at time 4. The prices of the four-period bond at time 3 are found by discounting the 1.0 payoff at time 4 at the spot rates in the forward rate tree:

$$
B (4) ^ {+ + +} = e ^ {- 0. 1 1 2 6 5} = 0. 8 9 3 5
$$

$$
B (4) ^ {+ + -} = e ^ {- 0. 0 9 2 6 5} = 0. 9 1 1 5
$$

$$
B (4) ^ {- - +} = e ^ {- 0. 0 7 2 6 5} = 0. 9 2 9 9
$$

$$
B (4) ^ {- - -} = e ^ {- 0. 0 5 2 6 5} = 0. 9 4 8 7.
$$

For example, we read these as the prices of the four-period bond when the rate has gone up three times, up twice and down once, down twice and up once, and down three times, respectively.

Stepping back to time 2, let us obtain the prices of the three-period bond:

$$
B (3) ^ {+ +} = e ^ {- 0. 1 1 0 5 2 5} = 0. 8 9 5 4
$$

$$
B (3) ^ {+ -} = e ^ {- 0. 0 8 0 5 2 5} = 0. 9 2 2 6
$$

$$
B (3) ^ {- -} = e ^ {- 0. 0 5 0 5 2 5} = 0. 9 5 0 7.
$$

Now, let us obtain the prices of the two-period bond as represented by the four-period bond at time 2. We can discount by the successive spot and forward rates. For example, for the prices of two-period bonds at time 2, we have

$$
B (4) ^ {+ +} = e ^ {- 0. 1 1 0 5 2 5 - 0. 1 0 2 6} = 0. 8 0 8 1
$$

$$
B (4) ^ {+ -} = e ^ {- 0. 0 8 0 5 2 5 - 0. 0 8 2 6} = 0. 8 4 9 5
$$

$$
B (4) ^ {- -} = e ^ {- 0. 0 5 0 5 2 5 - 0. 0 6 2 6} = 0. 8 9 3 0.
$$

Of course, this is a bond that matures at time 4, and there have been two time steps so far.

And there is yet another and most important way to get the price of any such bond: We use the binomial valuation formula that weights the next two outcomes and then discounts at the one-period rate. Let us note that discounting at the one-period rate is the same as multiplying by the one-period bond price. So, again, to get the prices of two-period bonds at time 2, we do the following, using the price  $B(2)$  in the appropriate state to discount:

$$
B (4) ^ {+ +} = \left[ 0. 5 (0. 8 9 3 5) + 0. 5 (0. 9 1 1 5) \right] 0. 8 9 5 4 = 0. 8 0 8 1
$$

$$
B (4) ^ {+ -} = \left[ 0. 5 (0. 9 1 1 5) + 0. 5 (0. 9 2 9 9) \right] 0. 9 2 2 6 = 0. 8 4 9 5
$$

$$
B (4) ^ {- -} = \left[ 0. 5 (0. 9 2 9 9) + 0. 5 (0. 9 4 8 7) \right] 0. 9 5 0 7 = 0. 8 9 3 0.
$$

If we continue and fill in the tree, we obtain Figure 28.2.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/0d82066eaa0ec244712f38b0b1529a4c6483253c18adafcedaaf5f64d971b5ba.jpg)  
FIGURE 28.2 Binomial Tree of Zero-Coupon Bond Prices

The litmus test to determine if the tree is properly fit is to price each bond by rolling through the tree backwards using the binomial formula, but we already know the prices at time 1. So, let us see if we can obtain them from the prices at time 2:

$$
B (2) = \left[ 0. 5 (0. 9 1 1 9) + 0. 5 (0. 9 4 9 1) \right] 0. 9 3 4 3 = 0. 8 6 9 4
$$

$$
B (3) = \left[ 0. 5 (0. 8 2 8 9) + 0. 5 (0. 8 8 9 0) \right] 0. 9 3 4 3 = 0. 8 0 2 5
$$

$$
B (4) = \left[ 0. 5 (0. 7 5 5 8) + 0. 5 (0. 8 2 6 9) \right] 0. 9 3 4 3 = 0. 7 3 9 3.
$$

Because these prices match the ones we had already obtained, we know the tree is done correctly.

# 28.2 COUPON BONDS

Coupon bonds make a series of payments of interest and a final payment of principal. As such, they can be viewed as combinations of zero-coupon bonds. That is, each payment is a zero-coupon bond in and of itself.

Consider, for example, a four-period coupon bond with a  $5\%$  coupon per period. Its price at time 0 can be found by discounting the individual coupons and the principal at the appropriate zero-coupon bond rate. Thus, it can be viewed as zero-coupon bonds with face value 0.05, maturing at times 1, 2, and 3, and a zero-coupon bond maturing at time 4 with face value 1.05. The discounting can be done by multiplying by the time 0 zero-coupon bond prices for the various maturities in the following manner:

$$
C B (4, 0. 0 5) = 0. 0 5 (0. 9 3 4 3) + 0. 0 5 (0. 8 6 9 4) + 0. 0 5 (0. 8 0 2 5) + 1. 0 5 (0. 7 3 9 3) = 0. 9 0 6 6,
$$

where we use the notation  $CB(4,0.05)$  to be the price at time 0 of a coupon bond that matures at time 4 and has a coupon of 0.05. We take as the standard case a 1.0 principal.

Now, let us fill in the entire tree for this bond. We shall omit time 4 because we know the bond pays off 1.05 in each state. At time 3, we can discount the payment of 1.05 that comes up in time 4 at the respective one-period rate for the appropriate state.<sup>2</sup> Note, however, that we also have to add the coupon paid at time 3. As such,

$$
C B (4, 0. 0 5) ^ {+ + +} = 1. 0 5 e ^ {- 0. 1 1 2 6 5} + 0. 0 5 = 0. 9 8 8 1
$$

$$
C B (4, 0. 0 5) ^ {+ + -} = 1. 0 5 e ^ {- 0. 0 9 2 6 5} + 0. 0 5 = 1. 0 0 7 1
$$

$$
C B (4, 0. 0 5) ^ {+ - +} = 1. 0 5 e ^ {- 0. 0 7 2 6 5} + 0. 0 5 = 1. 0 2 6 4
$$

$$
C B (4, 0. 0 5) ^ {- - -} = 1. 0 5 e ^ {- 0. 0 5 2 6 5} + 0. 0 5 = 1. 0 4 6 1.
$$

We can continue to step back and obtain the prices at times 2 and 1. And we know that at time 1, the price should equal the 0.9066, the value we previously obtained. Indeed, it will. The tree of coupon bond prices is shown in Figure 28.3.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/9e97492d81b93e43c57de62d00717cc222edde4880b5e0744d3ff112c8bb2c54.jpg)  
FIGURE 28.3 Binomial Tree of Coupon Bond Prices

# 28.3 OPTIONS ON ZERO-COUPON BONDS

Now, let us use the tree to price our first options. Specifically, we are going to price European call and put options that expire at time 3 on a four-period zero-coupon bond. Note that we do not care about four-period options on this bond, because the face value of the bond has no uncertainty at time 4: it is 1 for sure. Let us arbitrarily choose an exercise price of 0.9. The prices of the underlying zero-coupon bond are shown in Figure 28.2. They are the prices  $B(4)$  in the respective nodes. To introduce options, however, we are going to have to add to the notation a bit, because with options we have two additional parameters to put in parentheses—the expiration of the option and the exercise price. In addition, we need to show information about the underlying.

Let us start at the top node of time 3, where we want the option prices, designated as  $cZCB(3,0.9,4)$  and  $pZCB(3,0.9,4)$  for calls and puts, respectively. This notation stands for the price of a call or put expiring at time 3 with an exercise price of 0.9 on a zero-coupon bond maturing at time 4. Let us calculate the prices in this top node:

$$
c Z C B (3, 0. 9, 4) ^ {+ + +} = \max  (0, 0. 8 9 3 5 - 0. 9) = 0. 0 0 0 0
$$

$$
p Z C B (3, 0. 9, 4) ^ {+ + +} = \max  (0, 0. 9 - 0. 8 9 3 5) = 0. 0 0 6 5.
$$

Stepping down to the three lower nodes, we follow the same pattern. To illustrate the calculation at time 2, we shall need the values:

$$
c Z C B (3, 0. 9, 4) ^ {+ + -} = \max  (0, 0. 9 1 1 5 - 0. 9) = 0. 0 1 1 5
$$

$$
p Z C B (3, 0. 9, 4) ^ {+ + -} = \max  (0, 0. 9 - 0. 9 1 1 5) = 0. 0 0 0 0.
$$

Now, we shall price the option at time 2 using the binomial discounting method:

$$
c Z C B (3, 0. 9, 4) ^ {+ +} = \left[ 0. 5 (0. 0 0 0 0) + 0. 5 (0. 0 1 1 5) \right] 0. 8 9 5 4 = 0. 0 0 5 2
$$

$$
p Z C B (3, 0. 9, 4) ^ {+ +} = \left[ 0. 5 (0. 0 0 6 5) + 0. 5 (0. 0 0 0 0) \right] 0. 8 9 5 4 = 0. 0 0 2 9.
$$

We fill in the rest of the tree and obtain Figure 28.4.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/5523c088de193ff3e018a82c803380e83e441ed9ac2b71f3bbe570fef8883dd0.jpg)  
FIGURE 28.4 Binomial Tree of Options on Zero-Coupon Bond Prices

Notice that when interest rates go up, the price of the underlying goes down so puts are more highly valued in the up states, and calls are more highly valued in the down states.

If these options were American style, they could be exercised early. In each node, we would evaluate whether the exercise value would exceed the unexercised value in the node.

# 28.4 OPTIONS ON COUPON BONDS

Now, we shall look at options on the four-period coupon bond we analyzed in Section 28.2. Recall that its pricing tree is Figure 28.3. Let us examine an option expiring at time 3 with an exercise price of 1.0. We shall assume that at expiration, the exercise of the option would occur an instant before the coupon is paid. In other words, we would exercise in time to receive the coupon. Thus, the values in Figure 28.3 are the relevant values to compare with the exercise price. Let us illustrate the calculated values at time 3:

$$
c C B (3, 1. 0, 4, 0. 0 5) ^ {+ + +} = \max  (0, 0. 9 8 8 1 - 1) = 0. 0 0 0 0
$$

$$
p C B (3, 1. 0, 4, 0. 0 5) ^ {+ + +} = \max (0, 1 - 0. 9 8 8 1) = 0. 0 1 1 9
$$

$$
c C B (3, 1. 0, 4, 0. 0 5) ^ {+ + -} = \max (0, 1. 0 0 7 1 - 1) = 0. 0 0 7 1
$$

$$
p C B (3, 1. 0, 4, 0. 0 5) ^ {+ + -} = \max (0, 1 - 1. 0 0 7 1) = 0. 0 0 0 0
$$

$$
c C B (3, 1. 0, 4, 0. 0 5) ^ {- + -} = \max (0, 1. 0 2 6 4 - 1) = 0. 0 2 6 4
$$

$$
p C B (3, 1. 0, 4, 0. 0 5) ^ {- + -} = \max (0, 1 - 1. 0 2 6 4) = 0. 0 0 0 0
$$

$$
c C B (3, 1. 0, 4, 0. 0 5) ^ {- - -} = \max (0, 1. 0 4 6 1 - 1) = 0. 0 4 6 1
$$

$$
p C B (3, 1. 0, 4, 0. 0 5) ^ {- - -} = \max  (0, 1 - 1. 0 4 6 1) = 0. 0 0 0 0.
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/d1fc407fc22dfb46cee6adc95b56775afddd1c401ae60efb3448ac2cf6b4dfe5.jpg)  
FIGURE 28.5 Binomial Tree of Options on Coupon Bond Prices

Now, let us go to the top node at time 2 and illustrate how the call and put values are calculated using the binomial formula:

$$
\begin{array}{l} c C B (3, 1. 0, 4, 0. 0 5) ^ {+ +} = \left[ 0. 5 (0. 0 0 0 0) + 0. 5 (0. 0 0 7 1) \right] 0. 8 9 5 4 = 0. 0 0 3 2 \\ p C B (3, 1. 0, 4, 0. 0 5) ^ {+ +} = \left[ 0. 5 (0. 0 1 1 9) + 0. 5 (0. 0 0 0 0) \right] 0. 8 9 5 4 = 0. 0 0 5 3. \\ \end{array}
$$

Continuing in that manner gives us Figure 28.5, the tree of European option prices for the underlying coupon bond.

If these were American options, we would compare the exercise values with the unexercised values and replace the latter with the former if early exercise were justified.

# 28.5 CALLABLE BONDS

A callable bond is a bond in which the issuer can choose to retire the bond early. This is sometimes done because interest rates have fallen, and a new bond can be issued at a lower rate. There are naturally some costs associated with retiring one bond and issuing another, but these costs can often be far less than the savings from issuing a bond at a lower interest rate. Firms might also retire bonds when they have unexpected available cash that can be used to pay off the remaining amount owed. A callable bond has a call price embedded in it, which is represented by the amount that is paid off to retire it. This price will often be the face value plus some additional interest, which compensates the bond holders for the inconvenience of having their investment prematurely terminated. In addition, the bondholder has to find another investment in an environment in which rates are lower. A callable bond will also have a call period, which means that it cannot be called before one date, nor after another, though the latter might simply be the maturity.

Evaluating the pricing of a callable bond is relatively simple in a binomial framework. Let us price a callable bond using the coupon bond we have previously priced, a four-year bond with a coupon of 0.05. Recall that the tree of its prices is Figure 28.3. We shall now assume the bond is callable as of time 1 at a price of 1.025. Starting off at maturity, time 4, the bond is not callable, and the issuer would not call it anyway, because it has to pay some additional interest, and there are no savings in the future. It would simply pay off the bond by paying the principal, 1.00, and the last period's interest of 0.05. So all outcomes for the callable and noncallable bond at time 4 are 1.05. Stepping back to time 3, we see that the noncallable bond values are 0.9881, 1.0071, 1.0264, and 1.0461 in the four possible outcomes. Recall that these values include the interest payment at time 3.

Now let us determine the callable bond values in each of these four states. First, for the top state, we can see that the bond is worth 0.9881, so there is no reason to call it and pay 1.025:

$$
c C B (1, 1. 0 2 5, 4, 0. 0 5) ^ {+ + +} = \min \big [ C B (4, 0. 0 5) ^ {+ + +}, 1. 0 2 5 \big ] = \min (0. 9 8 8 1, 1. 0 2 5) = 0. 9 8 8 1.
$$

Of course, you may wonder whether the value of the bond means anything to the issuer. It certainly means something to the holder. Remember that to the issuer it is the present value of the remaining payments. Thus, in this case, if not called, the firm is obligated to make remaining payments with a value in that state of 0.9881. If it calls the bond, it must pay 1.025 immediately. So clearly, it is not optimal to call the bond. It will also not be optimal to call it in the state in which the bond value is 1.0071. It will, however, be optimal to call it in the bottom two outcomes at time 3, as 1.025 is below 1.0264 and 1.0461:

$$
\begin{array}{l} c C B (1, 1. 0 2 5, 4, 0. 0 5) ^ {+ + -} = \min  \left[ C B (4, 0. 0 5) ^ {+ + -}, 1. 0 2 5 \right] = \min  (1. 0 0 7 1, 1. 0 2 5) = 1. 0 0 7 1 \\ c C B (1, 1. 0 2 5, 4, 0. 0 5) ^ {- - +} = \min  \left[ C B (4, 0. 0 5) ^ {- - +}, 1. 0 2 5 \right] = \min  (1. 0 2 6 4, 1. 0 2 5) = 1. 0 2 5 0 \\ c C B (1, 1. 0 2 5, 4, 0. 0 5) ^ {- - -} = \min  \left[ C B (4, 0. 0 5) ^ {- - -}, 1. 0 2 5 \right] = \min  (1. 0 4 6 1, 1. 0 2 5) = 1. 0 2 5 0. \\ \end{array}
$$

Now, let us step back to time 2. At the very top state, where the bond value is 0.9432, it is clearly not optimal to call the bond and pay 1.025. Thus,  $cCB(1,1.025,4,0.05)^{++} = 0.9432$ . Now, in the middle state, the price of the bond is 0.9881, and it is not optimal to call it and pay 1.025, but 0.9881 is not the value of the callable bond. At this point, the next two outcomes are 1.0071 and 1.0250, the latter a result of the call at time 3. Thus, we have to take a weighted average of the next two outcomes and discount by the appropriate one-period factor,  $B(3)^{+-} = 0.9226$ . In addition, we have to add the interest payment at time 3 of 0.05, and we have to again check and see if all of this exceeds 1.025, in which case it would be called. The remaining results for time 2 are

$$
\begin{array}{l} c C B (1, 1. 2 5, 4, 0. 0 5) ^ {+ -} = \min  \left\{\left[ 0. 5 (1. 0 0 7 1) + 0. 5 (1. 0 2 5) \right] 0. 9 2 2 6 + 0. 0 5, 1. 0 2 5 \right\} = 0. 9 8 7 4 \\ c C B (1, 1. 2 5, 4, 0. 0 5) ^ {- -} = \min  \left\{\left[ 0. 5 (1. 0 2 5 0) + 0. 5 (1. 0 2 5) \right] 0. 9 5 0 7 + 0. 0 5, 1. 0 2 5 \right\} = 1. 0 2 4 5. \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/adbd4af8e2bda2f93093f0595817a5e98821fe6ef313f5fb77a5b64a1fc40d7a.jpg)  
FIGURE 28.6 Binomial Tree of Noncallable and Callable Bond Prices

So clearly it would not be called at time 2. We would then step back to time 1 and apply the same procedure, and we would obtain callable bond prices of 0.9303 and 1.0048, and of course, the bond would not be called at time 1. At time 0, the bond is not callable at all and the callable bond price would be 0.9039, which is lower than the price of the bond if it were not callable, 0.9066. The lower price compensates the buyer for the risk of having it called. That risk is realized when the bond is called, the bondholder is paid back the principal, and then has to invest it elsewhere in a lower interest rate environment. The full tree is presented in Figure 28.6.

# 28.6 FORWARD RATE AGREEMENTS (FRAS)

Recall that an FRA, or forward rate agreement, is a forward contract on an interest rate. Let us assume that we are interested in an FRA on the one-period spot rate. Let the FRA expire at time 3. Recall that the equilibrium fixed rate that the long agrees to pay would be the forward rate. From Figure 28.1, that rate would be  $8.2\%$ . There is a slight inconsistency, however, in that  $8.2\%$  is a continuously compounded rate, inasmuch as the HJM model is based on the evolution of continuously compounded rates. FRA payoffs are always based on add-on rates. Thus, we need to respecify the term structure in terms of one-period add-on rates. Let us take the one-period continuously compounded spot rate at time 0 of  $6.8\%$ . Thus, the present value of 1.0 in one period would be  $e^{-0.068} = 0.9343$ , a number we have previously used as the price of a one-period zero-coupon bond at time 0. The one-period add-on rate, denoted simply as  $r$ , would, therefore, be  $0.9343(1 + r) = 1$ , which gives us  $r = 7.0365\%$ . We can get this rate directly, however, as  $e^{0.068} - 1$ . From Figure 28.1, we know that the one-period spot rates are the top numbers in each cell, so

we can convert each to its add-on equivalent. With the FRA expiring at time 3, we would need the four possible one-period rates at time 3, which would be

$$
\begin{array}{l} e ^ {0. 1 1 2 6 5} - 1 = 0. 1 1 9 2 4 0 \\ e ^ {0. 0 9 2 6 5} - 1 = 0. 0 9 7 0 7 8 \\ e ^ {0. 0 7 2 6 5} - 1 = 0. 0 7 5 3 5 4 \\ e ^ {0. 0 5 2 6 5} - 1 = 0. 0 5 0 4 6 1. \\ \end{array}
$$

We learned in Chapter 26 that we price the FRA as the forward rate. We can actually use zero-coupon bond prices instead of forward rates. We would have the price of a three-period bond,  $B(3)$ , divided by the price of a four-period bond,  $B(4)$ , minus 1:

$$
\frac {B (3)}{B (4)} - 1 = \frac {0 . 8 0 2 5}{0 . 7 3 9 3} - 1 = 0. 0 8 5 4 5 6.
$$

Thus, the parties would reach an agreement at time 0 that at time 3, the long would pay this rate and receive the one-period spot rate at time 3, with the difference discounted by the current spot rate. Thus, the four possible payoffs of the FRA at time 3 are their values at time 3, as follows:

$$
\begin{array}{l} V F R A (3, 0. 0 8 5 4 5 6) ^ {+ + +} = (0. 1 1 9 2 4 0 - 0. 0 8 5 4 5 6) 0. 8 9 3 5 = 0. 0 3 0 2 \\ V F R A (3, 0. 0 8 5 4 5 6) ^ {+ + -} = (0. 0 9 7 0 7 8 - 0. 0 8 5 4 5 6) 0. 9 1 1 5 = 0. 0 1 0 6 \\ V F R A (3, 0. 0 8 5 4 5 6) ^ {- - +} = (0. 0 7 5 3 5 4 - 0. 0 8 5 4 5 6) 0. 9 2 9 9 = - 0. 0 0 9 4 \\ V F R A (3, 0. 0 8 5 4 5 6) ^ {- - -} = (0. 0 5 4 0 6 1 - 0. 0 8 5 4 5 6) 0. 9 4 8 7 = - 0. 0 2 9 8. \\ \end{array}
$$

Now, we step back to time 2 and calculate the possible values of the FRA based on the next two payments,

$$
\begin{array}{l} V F R A (3, 0. 0 8 5 4 5 6) ^ {+ +} = \left[ 0. 5 (0. 0 3 0 2) + 0. 5 (0. 0 1 0 6) \right] 0. 8 9 5 4 = 0. 0 1 8 3 \\ V F R A (3, 0. 0 8 5 4 5 6) ^ {+ -} = \left[ 0. 5 (0. 0 1 0 6) + 0. 5 (- 0. 0 0 9 4) \right] 0. 9 2 2 6 = 0. 0 0 0 6 \\ V F R A (3, 0. 0 8 5 4 5 6) ^ {- -} = \left[ 0. 5 (- 0. 0 0 9 4) + 0. 5 (- 0. 0 2 9 8) \right] 0. 9 5 0 7 = - 0. 0 1 8 6. \\ \end{array}
$$

Usually, we would just show the remaining values in the tree, but it is important to see the following result. Let us step back to time 1 and calculate the possible values of the FRA:

$$
\begin{array}{l} V F R A (3, 0. 0 8 5 4 5 6) ^ {+} = \left[ 0. 5 (0. 0 1 8 3) + 0. 5 (0. 0 0 0 6) \right] 0. 9 1 1 9 = 0. 0 0 8 6 \\ V F R A (3, 0. 0 8 5 4 5 6) ^ {-} = \left[ 0. 5 (0. 0 0 0 6) + 0. 5 (- 0. 0 1 8 6) \right] 0. 9 4 9 1 = - 0. 0 0 8 6. \\ \end{array}
$$

Notice the symmetry of these values. This result ensures us that the value at time 1 will be zero, which is precisely what we know has to be true for an FRA priced at the equilibrium forward rate. Thus, to summarize, Figure 28.7 shows the tree of values of the FRA.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/e4ca8f7869636934e22c9b91abfcdbd1f88be1f46e8936b38ed3e257364895e2.jpg)  
FIGURE 28.7 Binomial Tree of FRA Values

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/7f7901dcf07d111a23551ee4e8ea7d797b83c38429ef4a2c682492222bf26fc1.jpg)  
FIGURE 28.8 Tree of One-Period Add-on Spot Rates Through Time 2

# 28.7 INTEREST RATE SWAPS

Let us price and value a swap that expires at time 2 in which the underlying is the one-period rate. We shall now need to create the tree of one-period add-on rates. In the previous section covering FRAs, we showed how the one-period continuously compounded rate converts to the add-on rate, but FRAs have only one payment so we did not need the entire tree. Swaps have multiple payments, so we do need the full tree. Following the conversion procedure as we did in the previous section, we obtain Figure 28.8.

In Chapter 26, we covered how to obtain the equilibrium swap rate. For a swap that expires at time 3, the rate will be given from the prices of oneand two-period zero-coupon bonds.

$$
\frac {1 - 0 . 8 6 9 4}{0 . 9 3 4 3 + 0 . 8 6 9 4} = 0. 0 7 2 4 3 3.
$$

We know that the first swap payment, which occurs at time 1, is based on the starting spot rate of  $7.0365\%$ . That payment will be

$$
0. 0 7 0 3 6 5 - 0. 0 7 2 4 3 3 = - 0. 0 0 2 0 6 8.
$$

Note that the rate, 0.070365, is the continuous equivalent of the discrete rate 0.068 (i.e.,  $e^{0.068} - 1 = 0.070365$ ). This payment will occur in each of the next two states. Interest rates go up to where the one-period rate is  $9.6584\%$ . The swap payment of  $-0.002068$  is made and the swap payment in the next period will be

$$
0. 0 9 6 5 8 4 - 0. 0 7 2 4 3 3 = 0. 0 2 4 1 5 1.
$$

This payment will occur regardless of which of the next two outcomes occurs. Now, stepping back to time 1 with the one-period rate at  $5.3586\%$ , the next swap payment will be

$$
0. 0 5 3 5 8 6 - 0. 0 7 2 4 3 3 = - 0. 0 1 8 8 4 7.
$$

Now, let us step back and value the swap at time 1. We can do that by taking a discounted weighted average of the next two swap values. Except we know that the next two values are 0.024151 for certain, because they were determined at the last period, meaning that we do not have to take a weighted average. We simply discount that value back to the present and add the current payment:

$$
\begin{array}{l} V I R S (2, 0. 0 7 2 4 3 3) ^ {+} = 0. 0 2 4 1 5 1 (0. 9 1 1 9) - 0. 0 0 2 0 6 8 = 0. 0 1 9 9 5 6 \\ V I R S (2, 0. 0 7 2 4 3 3) ^ {-} = - 0. 0 1 8 8 4 7 (0. 9 4 9 1) - 0. 0 0 2 0 6 8 = - 0. 0 1 9 9 5 6. \\ \end{array}
$$

The symmetry of these two values guarantees that the value at time zero will be zero, as it should for a swap priced at the equilibrium rate. The tree of swap values is shown in Figure 28.9.

You will note that here we valued the swap a bit differently from the way we did in Chapter 26, where we added the notional to the fixed and floating sides. That was a necessary trick that helped us avoid having to value specific outcomes. But with a binomial tree, we can value specific outcomes. Just to show you that we obtain the same results, let us verify the value of 0.019956 that appears in the top state at time 1 in Figure 28.9. Remember that in Chapter 26 we showed that the present value of the remaining floating payments plus the notional is 1. The present value of the remaining fixed payment plus notional of 1 is easily found by discounting 1 plus the upcoming fixed payment at the one-period rate, which would be done by multiplying by the one-period zero-coupon bond

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/1a74320c20414dd08c42faf06776e081bdb1475f43b7f92711a9d1b0afb34e78.jpg)  
FIGURE 28.9 Binomial Tree of Swap Values

price of 0.9119. Subtracting the present value of the fixed payments plus notional from the present value of the floating payments plus notional, which is equal to 1, gives the value of the swap:

$$
1. 0 - 1. 0 7 2 4 3 3 (0. 9 1 1 9) - 0. 0 0 2 0 6 8 = 0. 0 1 9 9 5 6.
$$

And this is the same value we obtained by discounting the values as in the tree.

# 28.8 INTEREST RATE OPTIONS

With the tree of one-period add-on rates that we showed in Figure 28.8, we can easily value interest rate options. Remember that when interest rate options expire, the payoff is determined but not actually made until the next period.<sup>4</sup>

To illustrate, let us value three-period interest rate calls and puts with an exercise rate of 0.09. Following the conversion method we described previously, Figure 28.10 shows the tree of one-period add-on rates through time 3.

The values of the interest rate calls and puts at time 3 are, therefore,

$$
V I R C (3, 0. 0 9) ^ {+ + +} = \max  (0, 0. 1 1 9 2 4 0 - 0. 0 9) 0. 8 9 3 5 = 0. 0 2 6 1
$$

$$
V I R P (3, 0. 0 9) ^ {+ + +} = \max  (0, 0. 0 9 - 0. 1 1 9 2 4 9) 0. 8 9 3 5 = 0. 0 0 0 0
$$

$$
V I R C (3, 0. 0 9) ^ {+ + -} = \max  (0, 0. 0 9 7 0 7 8 - 0. 0 9) 0. 9 1 1 5 = 0. 0 0 6 5
$$

$$
V I R P (3, 0. 0 9) ^ {+ + -} = \max  (0, 0. 0 9 - 0. 0 9 7 0 7 8) 0. 9 1 1 5 = 0. 0 0 0 0
$$

$$
V I R C (3, 0. 0 9) ^ {- - +} = \max  (0, 0. 0 7 5 3 5 4 - 0. 0 9) 0. 9 2 9 9 = 0. 0 0 0 0
$$

$$
V I R P (3, 0. 0 9) ^ {- - +} = \max  (0, 0. 0 9 - 0. 0 7 5 3 5 4) 0. 9 2 9 9 = 0. 0 1 3 6
$$

$$
V I R C (3, 0. 0 9) ^ {- - -} = \max  (0, 0. 0 5 4 0 6 1 - 0. 0 9) 0. 9 4 8 7 = 0. 0 0 0 0
$$

$$
V I R P (3, 0. 0 9) ^ {- - -} = \max  (0, 0. 0 9 - 0. 0 5 4 0 6 1) 0. 9 4 8 7 = 0. 0 3 4 1.
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/a3c989f182e8bba9caa80656448a95e831804ac18b75c4e840ecfafc8f9459ae.jpg)  
FIGURE 28.10 Binomial Tree of One-Period Add-on Spot Rates Through Time 3

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/62431d7cfc33445ab0ab991e8369be778e8542917887243a5e0f123a99419726.jpg)  
FIGURE 28.11 Binomial Tree of Interest Rate Option Values

Now, stepping back to time 2, we simply do the binomial weighted-average discounted value,

$$
V I R C (3, 0. 0 9) ^ {+ +} = \left[ 0. 5 (0. 0 2 6 1) + 0. 5 (0. 0 0 6 5) \right] 0. 8 9 5 4 = 0. 0 1 4 6
$$

$$
V I R P (3, 0. 0 9) ^ {+ +} = \left[ 0. 5 (0. 0 0 0 0) + 0. 5 (0. 0 0 0 0) \right] 0. 8 9 5 4 = 0. 0 0 0 0
$$

$$
V I R C (3, 0. 0 9) ^ {+ -} = \left[ 0. 5 (0. 0 0 6 5) + 0. 5 (0. 0 0 0 0) \right] 0. 9 2 2 6 = 0. 0 0 3 0
$$

$$
V I R P (3, 0. 0 9) ^ {+ -} = \left[ 0. 5 (0. 0 0 0 0) + 0. 5 (0. 0 1 3 6) \right] 0. 9 2 2 6 = 0. 0 0 6 3
$$

$$
V I R C (3, 0. 0 9) ^ {- -} = \left[ 0. 5 (0. 0 0 0 0) + 0. 5 (0. 0 0 0 0) \right] 0. 9 5 0 7 = 0. 0 0 0 0
$$

$$
V I R P (3, 0. 0 9) ^ {- -} = \left[ 0. 5 (0. 0 1 3 6) + 0. 5 (0. 0 3 4 1) \right] 0. 9 5 0 7 = 0. 0 2 2 7.
$$

We would then continue back to time 1 and time 0 in the same manner. The results are shown in Figure 28.11.

Again, if these options were American, at each node of the tree, the exercise values would be compared to each market value, and the greater value would be used.

# 28.9 INTEREST RATE SWAPTIONS

Swaptions, which we briefly mentioned in Chapter 26, are options to enter into a swap. If the underlying swap is a pay-fixed swap, then the swaption is called a payer swaption. If it is a receive-fixed swap, then the swaption is called a receiver swaption. In either case, the swaption has a designated fixed or strike rate that plays the role of an exercise price. The underlying swap has a specific set of terms that are specified in the swaption contract. Say the strike rate is  $7\%$ , and the underlying swap is a five-year swap with semiannual payments on January 30 and July 30. Let us assume that at expiration of the swaption, the equilibrium rate on the underlying swap is more than  $7\%$ . Then a payer swaption is

in-the-money, because it allows the holder to enter into the underlying swap and pay  $7\%$  fixed to receive floating, while that same swap in the market would require paying more than  $7\%$  fixed to receive floating. The swaption holder can either maintain the  $7\%$  swap or can offset it by going into the market and entering into the opposite swap with the same counterparty, thereby paying floating and receiving more than  $7\%$  fixed. The floating sides effectively cancel and what remains is an annuity of the difference between the market rate and  $7\%$ . If that swaption were structured to settle in cash, the seller of the swap would pay the buyer the present value of that annuity. Letting the market rate at expiration of the swaption be less than  $7\%$  would result in a receiver swaption being in the money, and a similar process would apply.

Using our binomial model, let us create a swaption with a  $7\%$  strike and expiration of time 1 with the underlying swap being a three-period swap with payments made at each time step. In order to price this swap, we shall need to know the possible rates on three-year swaps at time 1. We have already covered how swap rates are determined. Now, consider the top state at time 1 where the prices of one-, two-, and three-year zero-coupon bonds were shown in Figure 28.2 as 0.9119, 0.8289, and 0.7558. Thus, the rate on a three-year swap at that point in the tree would be

$$
S R (3) ^ {+} = \frac {1 - 0 . 7 5 5 8}{0 . 9 1 1 9 + 0 . 8 2 8 9 + 0 . 7 5 5 8} = 0. 0 9 7 8 2 2.
$$

In the bottom state at time 1, the three zero-coupon bond prices are 0.9491, 0.8890, and 0.8269. Thus, the swap rate would be

$$
S R (3) ^ {-} = \frac {1 - 0 . 8 2 6 9}{0 . 9 4 9 1 + 0 . 8 8 9 0 + 0 . 8 2 6 9} = 0. 0 6 4 9 3 2.
$$

So, assuming we are in the top state at time 1, the rate on three-year swaps would be  $9.7822\%$ , which is above the strike rate, so the payer swaption would be exercised and the receiver swaption would expire unexercised. Now, let us determine the value of the payer swaption on exercise. We are creating a swap to pay  $7\%$  and receive the floating rate, but we can offset that swap by entering into a swap in the market to pay the floating rate and receive  $9.7822\%$ . This process creates a three-year annuity of  $0.097822 - 0.07 = 0.027822$ . The value of this payer swap is easily derived by finding the present value of this annuity:

$$
V p S W (1, 0. 0 7, 3) ^ {+} = (0. 0 9 7 8 2 2 - 0. 0 7) (0. 9 1 1 9 + 0. 8 2 8 9 + 0. 7 5 5 8) = 0. 0 6 9 5.
$$

The receiver swaption is worth nothing, because it is out-of-the-money. That is,  $VpSW(1,0.07,3)^{+} = 0.0000\$ . In the bottom state, it should be apparent that the payer swaption is worth nothing,  $VpSW(1,0.07,3)^{-} = 0.0000\$ , and the receiver swaption is worth

$$
V r S W (1, 0. 0 7, 3) ^ {-} = (0. 0 7 - 0. 0 6 4 9 3 2) (0. 9 4 9 1 + 0. 8 8 9 0 + 0. 8 2 6 9) = 0. 0 1 3 5.
$$

Now we roll back to time 0 and discount the weighted-average of the next two possible swaption values:

$$
V p S W (1, 0. 0 7, 3) = \left[ 0. 5 (0. 0 6 9 5) + 0. 5 (0. 0 0 0 0) \right] 0. 9 3 4 3 = 0. 0 3 2 4
$$

$$
V r S W (1, 0. 0 7, 3) = \left[ 0. 5 (0. 0 0 0 0) + 0. 5 (0. 0 1 3 5) \right] 0. 9 3 4 3 = 0. 0 0 6 3.
$$

This information is summarized in Figure 28.12.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/bd08352f4065a3ad1600caf9d51f92a2296d76035fde9f7aad59c245cf1b2015.jpg)  
FIGURE 28.12 Binomial Tree of Swaption Values

# 28.10 INTEREST RATE FUTURES

We could price a futures on any underlying that we have already covered, such as add-on interest rates, continuously compounded rates, zero-coupon bonds, and coupon bonds. We shall illustrate how futures pricing works in a binomial framework by pricing a futures on the one-period add-on interest rate. This process will be very similar to how Eurodollar futures, the most widely traded futures contract, work in practice.

Let us specify that we are interested in a two-period futures on the add-on rate. At expiration, the futures price will automatically settle to the one-period add-on spot rate. The tree of one-period add-on spot rates was given in Figure 28.8. Hence, the futures will settle at either  $11.6864\%$ ,  $8.3856\%$ , or  $5.1823\%$ . The final mark-to-market or settlement will be the difference between that price and the previous price.

Recall that a futures is marked-to-market, and that mark-to-market value is the value of the futures. Once the mark-to-market value is paid from one party to the other, the contract resets itself to the current futures price so that its value is pulled back to zero. At that point, the expected gain from the futures must be zero, because there is no money invested. Because a futures contract must have zero expected gain, the following conditions must hold to determine the futures price at time 1:

$$
0. 5 \left[ 0. 1 1 6 8 6 4 - f (2) ^ {+} \right] + 0. 5 \left[ 0. 0 8 3 8 5 6 - f (2) ^ {+} \right] = 0. 0 0 0 0
$$

$$
0. 5 \left[ 0. 0 8 3 8 5 6 - f (2) ^ {-} \right] + 0. 5 \left[ 0. 0 5 1 8 2 3 - f (2) ^ {-} \right] = 0. 0 0 0 0.
$$

Notice that we do no discounting of the weighted average settlement, because it would have no effect. The terms on the left-hand sides must equal zero without discounting. It is also easy to see that the futures price at time 1 in either state will be the average of the next two possible futures prices. Thus,

$$
f (2) ^ {+} = 0. 5 (0. 1 1 6 8 6 4) + 0. 5 (0. 0 8 3 8 5 6) = 0. 1 0 0 3 6
$$

$$
f (2) ^ {-} = 0. 5 (0. 0 8 3 8 5 6) + 0. 5 (0. 0 5 1 8 2 3) = 0. 0 6 7 8 4.
$$

And the futures price at time 0 will be the weighted average of these two prices:

$$
0. 5 (0. 1 0 0 3 6) + 0. 5 (0. 0 6 7 8 4) = 0. 0 8 4 1.
$$

Now let us determine the mark-to-market value of the futures as it evolves through the tree. We use an asterisk  $(^{*})$  in the exponent to indicate that this is the value before the settlement:

$$
v f (2) ^ {+ + *} = 0. 1 1 6 8 6 4 - 0. 1 0 0 3 6 = 0. 0 1 6 5 0 4
$$

$$
v f (2) ^ {+ - *} = 0. 0 8 3 8 5 6 - 0. 1 0 0 3 6 = - 0. 0 1 6 5 0 4
$$

$$
v f (2) ^ {- + *} = 0. 0 8 3 8 5 6 - 0. 0 6 7 8 4 = 0. 0 1 6 0 1 6
$$

$$
v f (2) ^ {- - *} = 0. 0 5 1 8 2 3 - 0. 0 6 7 8 4 = - 0. 0 1 6 0 1 6.
$$

Note in particular that the outcome in which rates go up then down is not the same as when rates go down first and then up. These four amounts are the payouts from the settlement at expiration. Now, let us back up to time 1 and compute the value before the settlement:

$$
v f (2) ^ {+ *} = 0. 1 0 0 3 6 - 0. 0 8 4 1 = 0. 0 1 6 2 6
$$

$$
v f (2) ^ {- *} = 0. 0 6 7 8 4 0 - 0. 0 8 4 1 = - 0. 0 1 6 2 6.
$$

Now, let us verify that all of these values are correct by determining the expectation of the next-period values through the tree:

$$
v f (2) ^ {+} = 0. 5 (0. 0 1 6 5 0 4) + 0. 5 (- 0. 0 1 6 5 0 4) = 0. 0 0 0 0
$$

$$
v f (2) ^ {-} = 0. 5 (0. 0 1 6 0 1 6) + 0. 5 (- 0. 0 1 6 0 1 6) = 0. 0 0 0 0
$$

$$
v f (2) = 0. 5 (0. 0 1 6 2 6) + 0. 5 (- 0. 0 1 6 2 6) = 0. 0 0 0 0.
$$

Technically these values should be discounted, but clearly that is unnecessary. These results are summarized in Figure 28.13.

With the methodology learned here, we would be able to price virtually any futures following the same procedure.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/67840f52555d4668145410bb6d783641d9dec318251790dd0fa43bf88da47b0f.jpg)  
FIGURE 28.13 Binomial Tree of Futures Prices and Values

# 28.11 RECAP AND PREVIEW

In this chapter, we showed how to use the binomial version of the one-factor Heath-Jarrow-Morton model to price almost every type of interest rate derivative. We showed that the technique involves discounting the risk-neutral expected value at the upcoming nodes, with discounting at the risk-free rate.

This material completes Part VI on the pricing of interest rate derivatives. Part VII is a collection of miscellaneous topics. In Chapter 29, we show how option prices are related to the prices of state contingent claims.

# QUESTIONS AND PROBLEMS

1 Based on material in Chapter 28 and within the discretized version of the Heath-Jarrow-Morton forward rate stochastic process, compute the appropriate forward rate tree and bond price tree at times 1, 2, and 3, based on the following inputs. The next four problems build on these results.

$$
f (0, 0) = 0. 0 3 0 \quad \sigma (0, 1) = 0. 0 2
$$

$$
f (0, 1) = 0. 0 2 9 \text {a n d} \sigma (0, 2) = 0. 0 3
$$

$$
f (0, 2) = 0. 0 2 8 \quad \sigma (0, 3) = 0. 0 1.
$$

$$
f (0, 3) = 0. 0 2 7
$$

2 Based on your results in Problem 1, build the coupon bond price tree assuming a  $1.5\%$  stated coupon and four-year maturity. Assume 1.0 par.  
3 Based on your results in Problems 1 and 2, build the call and put option on coupon bond price tree assuming a 1.0 exercise price, three-year option expiration,  $1.5\%$  stated coupon, and four-year maturity. Assume 1.0 par and expiration occurs an instant before the coupon is paid.  
4 Based on your results in Problem 1 and 3, build the callable coupon bond price tree assuming a  $1.5\%$  stated coupon, four-year maturity, callable starting in year 1, and the call price is par (1.0).  
5 Based on your results in Problem 1, compute the at-market fixed FRA rate expiring at time 3 for a one-period spot rate. Further, illustrate the receive floating FRA value tree and thus verify your results.

# NOTES

1. The notation is going to get a bit messy later on when we have to put the arguments for both the characteristics of the underlying and derivative in parentheses.  
2. Alternatively, we could simply multiply by the price of a one-period zero-coupon bond, and we shall do it this way later in this chapter.  
3. Recall that with FRAs, the payoff is subject to discounting, because the payoff is made at expiration, but is based on a rate that represents interest that would be paid later if it were a loan.  
4. Of course, that is also what we did with swaps.

# Miscellaneous Topics


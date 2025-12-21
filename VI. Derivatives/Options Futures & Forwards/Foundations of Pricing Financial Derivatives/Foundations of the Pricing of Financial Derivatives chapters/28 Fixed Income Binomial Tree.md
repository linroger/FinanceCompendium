---
title: "Pricing Fixed-Income Securities and Derivatives Using an Arbitrage-Free Binomial Tree"
parent_directory: "Foundations of the Pricing of Financial Derivatives"
formatted: "2025-12-20 07:15:00 PM"
formatter_model: "claude-sonnet-4"
cli-tool: "opencode"
primary_tags:
  - fixed income pricing
  - binomial tree models
  - arbitrage free valuation
  - interest rate derivatives
secondary_tags:
  - zero coupon bonds
  - coupon bonds
  - bond options
  - callable bonds
  - forward rate agreements
  - interest rate swaps
  - interest rate options
  - swaptions
  - interest rate futures
  - term structure modeling
cssclasses: academia
---

# Pricing Fixed-Income Securities and Derivatives Using an Arbitrage-Free Binomial Tree

In Chapter 27, we demonstrated the Heath-Jarrow-Morton arbitrage-free model for the evolution of the term structure. Recall that the tree is specified in terms of continuously compounded forward rates. We showed how the technique of Grant and Vora (1999, 2006) could be used to discretize the model and develop a binomial tree, which we repeat here as Figure 28.1.

First, recall the notation, in which  $f(x,y)$  is the continuously compounded forward rate at time  $x$  for a one-period transaction to start at time  $y$ . Thus,  $f(0,0)$  is the current spot rate (0.068),  $f(0,1)$  is the forward rate observed at time 0 for a one-period loan to start at time 1 (0.072),  $f(0,2)$  is the forward rate observed at time 0 for a one-period loan to start at time 2 (0.08), and  $f(0,3)$  is the forward rate observed at time 0 for a one-period loan to start at time 3 (0.082). The + and - signs in the superscripts indicate the number of up and down moves that have accumulated since time 0 to the current state. Hence, the top number at each node is the current one-period spot rate, with the forward rates below. As an example, the rate  $f(2,3)^{+-}$  rate of 0.0826 means that 8.26% is the continuously compounded forward rate when the spot rate has gone up and then down, so we are at time 2, and the rate applies to a one-period transaction to start at time 3.

In this chapter, we are going to use this model to determine the prices of a very large set of financial instruments. We will first price the simplest instruments, zero-coupon bonds. Then we will price the following instruments: coupon bonds, options on zero-coupon bonds, options on coupon bonds, callable bonds, FRAs, interest rate swaps, interest rate options, interest rate swaptions, and interest rate futures.

## 28.1 Zero-Coupon Bonds

At time 0, the price of a one-period zero-coupon bond with face value 1 is easily found as

$$
B(0,1) = e^{-0.068} = 0.9343.
$$

Note that we suppress the 0 here for notational simplicity. The argument in parentheses is the maturity of the bond. Again, we do not include an argument for the time point we are at, as we shall use the  $+$  and  $-$  superscripts to indicate where we are. This will cut down on notational clutter. $^{1}$  There are no superscripts in this case, so we know we are at time 0.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/80cdac6cd97680c6d7d6b90187443bafddb1f743d52a8bf287cd03d1e667eae5.jpg)  
FIGURE 28.1 Heath-Jarrow-Morton Arbitrage-Free Binomial Tree Using the Method of Grant-Vora

We also need the prices at time 0 of zero-coupon bonds with maturities of two, three, and four periods. We can obtain these values by successively discounting at the forward rates as follows:

$$
B(2) = e^{-0.068 - 0.072} = 0.8694
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

## 28.2 Coupon Bonds

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

## 28.3 Options on Zero-Coupon Bonds

## 28.4 Options on Coupon Bonds

## 28.5 Callable Bonds

## 28.6 Forward Rate Agreements (FRAs)

## 28.7 Interest Rate Swaps

## 28.8 Interest Rate Options

## 28.9 Interest Rate Swaptions

## 28.10 Interest Rate Futures

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


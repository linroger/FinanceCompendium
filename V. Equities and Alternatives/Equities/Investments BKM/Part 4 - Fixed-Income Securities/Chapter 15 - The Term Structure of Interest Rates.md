# The Term Structure of Interest Rates

# 15

IN CHAPTER 14 we assumed for the sake of simplicity that the same interest rate is appropriate to discount cash flows of any maturity. In reality, however, this is rarely the case. For example, Figure 14.1 showed that in mid-2021, short-term Treasury bonds and notes carried yields to maturity around  $.4\%$ , while the longest-term bonds offered yields of about  $1.9\%$ . At the time that these bond prices were quoted, anyway, the longer-term securities had higher yields. This, in fact, is a typical pattern, but as we shall see below, the relationship between time to maturity and yield to maturity can vary dramatically from one period to another. In this chapter, we explore the pattern of interest rates for different-term assets. We attempt to identify the factors that account for that pattern and determine what information may be gleaned from an analysis of the so-called term structure of interest rates, the structure of interest rates for discounting cash flows of different maturities.


We demonstrate how the prices of Treasury bonds may be derived from prices and yields of stripped zero-coupon Treasury securities. We also examine the extent to which the term structure reveals market-consensus forecasts of future interest rates and how the presence of interest rate risk may affect those inferences. Finally, we show how traders can use the term structure to compute forward rates that represent interest rates on "forward," or deferred, loans, and consider the relationship between forward rates and future interest rates.

# 15.1 The Yield Curve

In the last chapter, Figure 14.1 demonstrated that while yields to maturity on bonds of similar maturities are reasonably close, they do differ. When these bond prices and yields were compiled, long-term bonds sold at higher yields than short-term bonds. Practitioners commonly summarize the relationship between yield and maturity graphically in a yield curve, which is a plot of yield to maturity as a function of time to maturity. The yield curve is one of the key concerns of fixed-income investors. It is central to bond valuation and, in addition, allows investors to gauge their expectations for future interest rates against those of the market. Such a comparison is often the starting point in the formulation of a fixed-income portfolio strategy.

Figure 15.1 Treasury yield curves
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/9130a2f47596ef1a82de7348d471f34ec180b3d4254d91bb2f741cecf17e18fb.jpg)
Source: Various editions of The Wall Street Journal.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/4638a7ac140494c394092d67a9565319c9441617ad0e0562feccbe1ff171563d.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/ec583f21bf8f86ec8685994fe90477c5c44d92675db652439871fb16e87e34b1.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/a4479a8dc06eca9dc4038729ae7f94ec384d08e886fa393524da847836025e69.jpg)

In 2021, the yield curve was rising, with long-term bonds offering yields higher than those of short-term bonds. But the relationship between yield and maturity can vary widely. Figure 15.1 illustrates yield curves of several different shapes. Panel A is the almost-flat curve of early 2006. Panel B is a more typical upward-sloping curve from 2012. Panel C is a downward-sloping or "inverted" curve, and Panel D is hump-shaped, first rising and then falling.

# Bond Pricing

If yields on different-maturity bonds are not all equal, how should we value coupon bonds that make payments at many different times? For example, suppose that yields on zero-coupon Treasury bonds of different maturities are as given in Table 15.1. Zero-coupon bonds with 1-year maturity sell at a yield to maturity of  $y_{1} = 5\%$ , 2-year zeros sell at yields of  $y_{2} = 6\%$ , and 3-year zeros sell at yields of  $y_{3} = 7\%$ . Which of these rates should we use to discount bond cash flows? The answer: all of them. The trick is to consider each bond cash flow—either coupon or principal payment—as at least potentially sold off separately as a stand-alone zero-coupon bond.

Recall the Treasury STRIPS program we introduced in the last chapter (Section 14.4). Stripped Treasuries are zero-coupon bonds created by selling each coupon or principal

Table 15.1

<table><tr><td>Prices and yields to maturity on zero-coupon bonds (1,000 face value)</td></tr></table>

<table><tr><td>Maturity (years)</td><td>Yield to Maturity (\%)</td><td>Price</td></tr><tr><td>1</td><td>5\%</td><td>$952.38 = $1,000/1.05</td></tr><tr><td>2</td><td>6</td><td>$890.00 = $1,000/1.062</td></tr><tr><td>3</td><td>7</td><td>$816.30 = $1,000/1.073</td></tr><tr><td>4</td><td>8</td><td>$735.03 = $1,000/1.084</td></tr></table> payment from a whole Treasury bond as a separate cash flow. For example, a 1-year-maturity T-bond paying semiannual coupons can be split into a 6-month maturity zero (by selling the first coupon payment as a stand-alone security) and a 12-month zero (corresponding to payment of final coupon and principal). Treasury stripping suggests exactly how to value a coupon bond. If each cash flow can be (and in practice often is) sold off as a separate security, then the value of the whole bond should equal the total value of its cash flows bought piece by piece in the STRIPS market.


What if it weren't? Then there would be easy profits to be made. For example, if investment bankers ever noticed a bond selling for less than the amount at which the sum of its parts could be sold, they would buy the bond, strip it into stand-alone zero-coupon securities, sell off the stripped cash flows, and profit by the price difference. If the bond were selling for more than the sum of the values of its individual cash flows, they would run the process in reverse: buy the individual zero-coupon securities in the STRIPS market, reconstitute (i.e., reassemble) the cash flows into a coupon bond, and sell the whole bond for more than the cost of the pieces. Both bond stripping and bond reconstitution offer opportunities for arbitrage—the exploitation of mispricing among two or more securities to clear a riskless economic profit. Any violation of the Law of One Price, that identical cash flow bundles must sell for identical prices, gives rise to arbitrage opportunities.

To value each cash flow, we simply look up its appropriate discount rate in the stripped Treasury market. Because each coupon payment matures at a different time, we discount by using the yield appropriate to its particular maturity—this is the yield on a Treasury strip maturing at the time of that cash flow. We can illustrate with an example.

# Example 15.1 Valuing Coupon Bonds

Suppose the yields on stripped Treasuries are as given in Table 15.1, and we wish to value a  $10\%$  coupon bond with a maturity of three years. For simplicity, assume the bond makes its payments annually. Then the first cash flow, the  $\$ 100$ coupon paid at the end of the first year, is discounted at  $5\%$ ; the second cash flow, the  $\$ 100$ coupon at the end of the second year, is discounted for two years at  $6\%$ ; and the final cash flow consisting of the final coupon plus par value, or  $\$ 1,100$ , is discounted for three years at  $7\%$ . The value of the coupon bond is therefore

$$
\frac {1 0 0}{1 . 0 5} + \frac {1 0 0}{1 . 0 6 ^ {2}} + \frac {1 , 1 0 0}{1 . 0 7 ^ {3}} = 9 5. 2 3 8 + 8 9. 0 0 0 + 8 9 7. 9 2 8 = \$ 1, 0 8 2. 1 7
$$

Calculate the yield to maturity of the coupon bond in Example 15.1, and you may be surprised. It is  $6.88\%$ ; so while the bond's maturity matches that of the 3-year zero in Table 15.1, its yield is a bit lower. This reflects the fact that the 3-year coupon bond may usefully be thought of as a portfolio of three implicit zero-coupon bonds, one corresponding to each cash flow. The yield on the coupon bond therefore reflects the yields on each of the three components of the "portfolio." Think about what this means: If their coupon rates differ, bonds of the same maturity generally will not have the same yield to maturity.

What then do we mean by "the" yield curve? In fact, in practice, traders refer to several yield curves. The pure yield curve refers to the curve for stripped, or zero-coupon,

Treasuries. In contrast, the on-the-run yield curve refers to the plot of yield as a function of maturity for recently issued coupon bonds selling at or near par value. As we've just seen, these curves may differ significantly. The yield curves published in the financial press, like those, in Figure 15.1, are typically on-the-run curves. On-the-run Treasuries have the greatest liquidity, so traders have keen interest in their yield curve.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/d1f3e7ff9d07b70bf66893f97bb63d3bb7caf186d9b491a476daecc190b6d7d2.jpg)

# Concept Check 15.1

Using the data in Table 15.1, calculate the price and yield to maturity of a 3-year bond with a coupon rate of  $4\%$  making annual coupon payments. Does its yield match that of either the 3-year zero or the  $10\%$  coupon bond considered in Example 15.1? Why is the yield spread between the  $4\%$  bond and the zero smaller than the yield spread between the  $10\%$  bond and the zero?

# 15.2 The Yield Curve and Future Interest Rates

We've told you what the yield curve is, but we haven't yet had much to say about where it comes from. For example, why is the curve sometimes upward-sloping and other times downward-sloping? How do expectations for the evolution of interest rates affect the shape of today's yield curve?

These questions do not have simple answers, so we will begin with an admittedly idealized framework, and then extend the discussion to more realistic settings. To start, consider a world with no uncertainty, specifically, one in which all investors already know the path of future interest rates.

# The Yield Curve under Certainty

If interest rates are certain, what should we make of the fact that the yield on the 2-year zero coupon bond in Table 15.1 is greater than that on the 1-year zero? It can't be that one bond is expected to provide a higher rate of return than the other. This would not be possible in a certain world—with no risk, all bonds (in fact, all securities!) must offer identical returns, or investors will bid up the price of the high-return bond until its rate of return is no longer superior to that of other bonds.

Instead, the upward-sloping yield curve is evidence that short-term rates are going to be higher next year than they are now. To see why, consider two 2-year bond strategies. The first strategy entails buying the 2-year zero offering a 2-year yield to maturity of  $y_{2} = 6\%$ , and holding it until maturity. The zero has face value  \$1,000, so it is purchased today for$ 1,000/1.06^2 = $890 and matures in two years to \$1,000. The total 2-year growth factor for the investment is therefore  $1,000 / $890 = 1.06^2 = 1.1236.$

Now consider an alternative 2-year strategy. Invest the same 890 in a 1-year zero-coupon bond with a yield to maturity of 5\%. When that bond matures, reinvest the proceeds in another 1-year bond. Figure 15.2 illustrates these two strategies. The interest rate that 1-year bonds will offer next year is denoted as r_2.

Remember, both strategies must provide equal returns—neither entails any risk. Therefore, the proceeds after two years to either strategy must be equal:

$$
\text {B u y a n d h o l d 2 - y e a r z e r o} = \text {R o l l o v e r 1 - y e a r b o n d s}
$$

$$
\$ 8 9 0 \times 1. 0 6 ^ {2} = \$ 8 9 0 \times 1. 0 5 \times (1 + r _ {2})
$$

We find next year's interest rate by solving  $1 + r_{2} = 1.06^{2} / 1.05 = 1.0701$ , or  $r_2 = 7.01\%$ . So while the 1-year bond offers a lower yield to maturity than the 2-year bond (5\% versus 6\%), we see that it has a compensating advantage: It allows you to roll over your funds into another short-term bond next year when rates will be higher. Next year's interest rate is higher than today's by just enough to make rolling over 1-year bonds equally attractive as investing in the 2-year bond.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/5646887587dead66dd8a6c0640a9d1d2b90a05f09e9b54ebf8906d56642a7e31.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/4650230c4b70329a9bd50fffd3b29e4aa51d5c7957929f6beb875360cbb9d1a3.jpg)
Figure 15.2 Two 2-year investment programs


To distinguish between yields on long-term bonds versus short-term rates that will be available in the future, practitioners use the following terminology. They call the yield to maturity on zero-coupon bonds the spot rate, meaning the rate that prevails today for a time period corresponding to the zero's maturity. In contrast, the short rate for a given time interval (e.g., one year) refers to the interest rate for that interval available at different points in time. In our example, the short rate today is  $5\%$ , and the short rate next year will be  $7.01\%$ .

Not surprisingly, the 2-year spot rate is an average of today's and next year's short rates. But because of compounding, that average is a geometric one. We see this by again equating the total return on the two competing 2-year strategies:

$$
\begin{array}{l} (1 + y _ {2}) ^ {2} = (1 + r _ {1}) \times (1 + r _ {2}) \\ 1 + y _ {2} = \left[ \left(1 + r _ {1}\right) \times \left(1 + r _ {2}\right) \right] ^ {1 / 2} \\ \end{array}
$$

Equation 15.1 begins to tell us why the yield curve might take on different shapes at different times. When next year's short rate,  $r_2$ , is greater than this year's short rate,  $r_1$ , the average of the two rates is higher than today's rate, so  $y_2 > r_1$  and the yield curve slopes upward. If next year's short rate were less than  $r_1$ , the yield curve would slope downward.

Thus, at least in part, the yield curve reflects the market's assessments of coming interest rates. The following example uses a similar analysis to find the short rate that will prevail in year 3.

# Example 15.2 Finding a Future Short Rate

Now we compare two 3-year strategies. One is to buy a 3-year zero, with a yield to maturity from Table 15.1 of  $7\%$ , and hold it until maturity. The other is to buy a 2-year zero yielding  $6\%$  and roll the proceeds into a 1-year bond in year 3, at the short rate  $r_3$ . The growth factor for the invested funds under each policy will be:

Buy and hold 3-year zero = Buy 2-year zero; roll proceeds into 1-year bond

$$
(1 + y _ {3}) ^ {3} = (1 + y _ {2}) ^ {2} \times (1 + r _ {3})
$$

$$
1. 0 7 ^ {3} = 1. 0 6 ^ {2} \times (1 + r _ {3})
$$ which implies that  $r_3 = 1.07^3 / 1.06^2 - 1 = .09028 = 9.028\%$ . Again, notice that the yield on the 3-year bond reflects a geometric average of the discount factors for the next three years:


$$
1 + y _ {3} = \left[ (1 + r _ {1}) \times (1 + r _ {2}) \times (1 + r _ {3}) \right] ^ {1 / 3}
$$

$$
1. 0 7 = [ 1. 0 5 \times 1. 0 7 0 1 \times 1. 0 9 0 2 8 ] ^ {1 / 3}
$$

We conclude that the yield or spot rate on a long-term bond reflects the anticipated path of short rates over the life of the bond.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/fe1ca7ccfa22e321d4019c807a6d86015f79c2090ed1cbbd29b4be9c3dfed2cc.jpg)

# Concept Check 15.2

Use Table 15.1 to find the short rate in the fourth year. Confirm that the discount factor on the 4-year zero is a geometric average of  $1 +$  the short rates in the next four years.

Figure 15.3 summarizes the results of our analysis and emphasizes the difference between short rates and spot rates. The top line presents the short rates for each year. The lower lines present spot rates—or, equivalently, yields to maturity on zero-coupon bonds for different holding periods—extending from the present to each relevant maturity date.

# Holding-Period Returns

We've argued that the multiyear cumulative returns on all of our competing bonds ought to be equal. What about holding-period returns over shorter periods such as a year? You might think that bonds selling at higher yields to maturity will offer higher 1-year returns, but this is not the case. In fact, once you stop to think about it, it's clear that this cannot be true. In a world of certainty, all bonds must offer identical returns, or investors will flock to the higher-return securities, bidding up their prices, and reducing their returns. We can illustrate by using the bonds in Table 15.1.

# Example 15.3 Holding-Period Returns on Zero-Coupon Bonds

The 1-year bond in Table 15.1 can be bought today for 1,000/1.05 = \952.38 and will mature to its par value in one year. It pays no coupons, so total investment income is just its price appreciation, and its rate of return is (\1,000 - \952.38)/\952.38 = .05 The 2-year bond can be bought for 1,000 / 1.06^2 = \890.00. Next year, the bond will have a remaining maturity of one year and the 1-year interest rate will be 7.01\%. Therefore, its price next year will be \$ 1,000 / 1.0701 = \934.49, and its 1-year holding-period rate of return will be (\934.49 - \890.00)/\890.00 = .05, for an identical 5\% rate of return.


![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/5f5fd231f222e3d81e9367e01c99276acdebfb5e4bbcbdf9bd85b5d399862647.jpg)

# Concept Check 15.3

Show that the rate of return on the 3-year zero in Table 15.1 also will be  $5\%$ . (Hint: Next year, the bond will have a maturity of two years.) Use the short rates derived in Figure 15.3 to compute the 2-year spot rate that will prevail a year from now.

# Forward Rates

We can generalize our approach to inferring a future short rate from the yield curve of zero-coupon bonds. The idea is to equate the total return on two  $n$ -year investment strategies: buying and holding an  $n$ -year zero-coupon bond versus buying an  $(n - 1)$ -year zero and rolling over the proceeds into a 1-year bond.

$$
(1 + y _ {n}) ^ {n} = (1 + y _ {n - 1}) ^ {n - 1} \times (1 + r _ {n}) \tag {15.2}
$$ where  $y_{n}$  is the yield to maturity of a zero-coupon bond with an  $n$ -period maturity. Given the observed yield curve, we can solve Equation 15.2 for the short rate in the last period:


$$
\left(1 + r _ {n}\right) = \frac {\left(1 + y _ {n}\right) ^ {n}}{\left(1 + y _ {n - 1}\right) ^ {n - 1}} \tag {15.3}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/10567874d139176c5a78743ac1a21074b7ada76053a87cd5e5437fc9e19f0df6.jpg)
Figure 15.3 Short rates versus spot rates

Equation 15.3 has a simple interpretation. The numerator on the right-hand side is the cumulative growth of an investment in an  $n$ -year zero held until maturity. Similarly, the denominator is the growth of an investment in an  $(n - 1)$ -year zero. Because the former investment lasts for one more year than the latter, the difference in these growth multiples must be the gross rate of return available in year  $n$  when the  $(n - 1)$ -year zero can be rolled over into a 1-year investment.

Of course, when future interest rates are uncertain, there is no meaning to inferring "the" future short rate. No one knows today what that rate will be. At best, we can speculate as to its expected value and associated uncertainty. Nevertheless, it still is common to use Equation 15.3 to investigate the implications of the yield curve for future interest rates. Recognizing that future interest rates are uncertain, we call the interest rate that we infer in this matter the forward interest rate rather than the future short rate.

If the forward rate for period  $n$  is denoted  $f_{n}$ , then

$$
\left(1 + f _ {n}\right) = \frac {\left(1 + y _ {n}\right) ^ {n}}{\left(1 + y _ {n - 1}\right) ^ {n - 1}} \tag {15.4}
$$

Equivalently, we may rewrite Equation 15.4 as

$$
(1 + y _ {n}) ^ {n} = (1 + y _ {n - 1}) ^ {n - 1} (1 + f _ {n}) \tag {15.5}
$$

We see that the forward rate is defined as the "break-even" interest rate that equates the return on an  $n$ -period zero-coupon bond to that of an  $(n - 1)$ -period zero-coupon bond rolled over into a 1-year bond in year  $n$ . The actual total returns on the two  $n$ -year strategies will be equal if the short interest rate in year  $n$  turns out to equal  $f_{n}$ .

# Example 15.4 Forward Rates

Consider the data in Table 15.1. The forward rate for year 4 is found from

$$
1 + f _ {4} = \frac {\left(1 + y _ {4}\right) ^ {4}}{\left(1 + y _ {3}\right) ^ {3}} = \frac {1 . 0 8 ^ {4}}{1 . 0 7 ^ {3}} = 1. 1 1 0 6
$$

Therefore, the forward rate is  $f_{4} = .1106$ , or  $11.06\%$ .

We emphasize again that the interest rate that actually will prevail in the future need not equal the forward rate, which is calculated from today's data. Indeed, the forward rate may not even equal the expected value of the future short interest rate. We address this issue in the next section. For now, however, we note that forward rates equal future short rates in the special case of interest rate certainty.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/2c2c806d3dcd20157d876c1a477e13b72e626db9a64f8f227c8052945eca8fbd.jpg)

# Concept Check 15.4

You've been exposed to many "rates" in the last few pages. Explain the differences among spot rates, short rates, and forward rates.

The spreadsheet below (available in Connect or through your course instructor) can be used to estimate prices and yields of coupon bonds and to calculate the forward rates for both single-year and multiyear periods. Spot yields are derived for the yield curve of bonds that are selling at their par value, also referred to as the current coupon or "on-the-run" bond yield curve.

The spot rates for each maturity date are used to calculate the present value of each period's cash flow. The sum of these cash flows is the price of the bond. Given its price, the bond's yield to maturity can then be computed. If you were to err and use the yield to maturity of the on-the-run bond to discount each of the bond's coupon payments, you would find a significantly different price. That difference is calculated in the worksheet.


# Excel Questions

1. Change the spot rate in the spreadsheet to  $8\%$  for all maturities. The forward rates will all be  $8\%$ . Why is this not surprising?
2. The spot rates in column B decrease for longer maturities, and the forward rates decrease even more rapidly with maturity. What happens to the pattern of forward rates if you input spot rates that increase with maturity? Why?

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td><td>H</td></tr><tr><td>56</td><td></td><td colspan="3">Forward Rate Calculations</td><td></td><td></td><td></td><td></td></tr><tr><td>57</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>58</td><td></td><td>Spot Rate</td><td>1-yr for.</td><td>2-yr for.</td><td>3-yr for.</td><td>4-yr for.</td><td>5-yr for.</td><td>6-yr for.</td></tr><tr><td>59</td><td>Period</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>60</td><td>1</td><td>8.0000\%</td><td>7.9792\%</td><td>7.6770\%</td><td>7.2723\%</td><td>6.9709\%</td><td>6.8849\%</td><td>6.7441\%</td></tr><tr><td>61</td><td>2</td><td>7.9896\%</td><td>7.3757\%</td><td>6.9205\%</td><td>6.6369\%</td><td>6.6131\%</td><td>6.4988\%</td><td>6.5520\%</td></tr><tr><td>62</td><td>3</td><td>7.7846\%</td><td>6.4673\%</td><td>6.2695\%</td><td>6.3600\%</td><td>6.2807\%</td><td>6.3880\%</td><td>6.1505\%</td></tr><tr><td>63</td><td>4</td><td>7.4537\%</td><td>6.0720\%</td><td>6.3065\%</td><td>6.2186\%</td><td>6.3682\%</td><td>6.0872\%</td><td>6.0442\%</td></tr><tr><td>64</td><td>5</td><td>7.1760\%</td><td>6.5414\%</td><td>6.2920\%</td><td>6.4671\%</td><td>6.0910\%</td><td>6.0387\%</td><td>5.8579\%</td></tr><tr><td>65</td><td>6</td><td>7.0699\%</td><td>6.0432\%</td><td>6.4299\%</td><td>5.9413\%</td><td>5.9134\%</td><td>5.7217\%</td><td>5.6224\%</td></tr><tr><td>66</td><td>7</td><td>6.9227\%</td><td>6.8181\%</td><td>5.8904\%</td><td>5.8701\%</td><td>5.6414\%</td><td>5.5384\%</td><td>5.3969\%</td></tr><tr><td>67</td><td>8</td><td>6.9096\%</td><td>4.9707\%</td><td>5.3993\%</td><td>5.2521\%</td><td>5.2209\%</td><td>5.1149\%</td><td>5.1988\%</td></tr></table>

# 15.3 Interest Rate Uncertainty and Forward Rates

The term structure is harder to interpret when future interest rates are uncertain. In a certain world, different investment strategies with common terminal dates must provide equal rates of return. For example, two consecutive 1-year investments would need to offer the same total return as an equal-sized investment in a 2-year zero. Therefore, under certainty,

$$
(1 + r _ {1}) (1 + r _ {2}) = (1 + y _ {2}) ^ {2} \tag {15.6}
$$

But what if  $r_2$  is not known today?

For example, suppose that today's rate is  $r_1 = 5\%$  and that the expected short rate for the following year is  $E(r_2) = 6\%$ . If investors cared only about the expected value of the interest rate, then the yield to maturity on a 2-year zero would be determined by using the expected short rate in Equation 15.6:

$$
(1 + y _ {2}) ^ {2} = (1 + r _ {1}) \times [ 1 + E (r _ {2}) ] = 1. 0 5 \times 1. 0 6
$$

The price of a 2-year zero would be  $\1,000 / (1 + y_2)^2 = \$ 1,000 / (1.05 \times 1.06) = \$898.47.

But consider short-term investors who wish to invest only for one year. They can purchase the 1-year zero for  $\ 1,000 / 1.05 = \$  952.38  and lock in a riskless  $5\%$  return because they know that at the end of the year, the bond will be worth its maturity value of  \$1,000. They also can purchase the 2-year zero. Its expected rate of return also is 5\%$ : Next year, the bond will have one year to maturity, and we expect that the 1-year interest rate will be  $6\%$ , implying a price of 943.40 and a holding-period return of  $5\%$ .


But the rate of return on the 2-year bond is risky. If next year's interest rate turns out to be above expectations, that is, greater than  $6\%$ , the bond price will be below  \$943.40; conversely if r_2\$  turns out to be less than  $6\%$ , the bond price will exceed 943.40. Why should these short-term investors buy the risky 2-year bond when its expected return is  $5\%$ , no better than that of the risk-free 1-year bond? If they demand a higher expected rate of return as compensation for that risk, the 2-year bond must sell at a lower price than the 898.47 value we derived when we ignored risk.

# Example 15.5 Bond Prices and Forward Rates with Interest Rate Risk

Suppose that most investors have short-term horizons and therefore are willing to hold the 2-year bond only if its price falls to 881.83. At this price, the expected holding-period return on the 2-year bond is 7\% (because 943.40 / 881.83 = 1.07). The risk premium of the 2-year bond, therefore, is 2\%; it offers an expected rate of return of 7\% versus the 5\% risk-free return on the 1-year bond. At this risk premium, investors are willing to bear the price risk associated with interest rate uncertainty.

When bond prices reflect a risk premium, however, the forward rate,  $f_{2}$ , no longer equals the expected short rate,  $E(r_{2})$ . Although we have assumed that  $E(r_{2}) = 6\%$ , it is easy to confirm that  $f_{2} = 8\%$ . The yield to maturity on a 2-year zero selling at 881.83 is 6.49\%, and

$$
1 + f _ {2} = \frac {(1 + y _ {2}) ^ {2}}{1 + y _ {1}} = \frac {1 . 0 6 4 9 ^ {2}}{1 . 0 5} = 1. 0 8
$$

The result in Example 15.5—that the forward rate exceeds the expected short rate—should not surprise us. We defined the forward rate as the interest rate in the second year required to make the long- and short-term investments equally attractive, ignoring risk. But when we account for risk, short-term investors will shy away from the long-term bond unless its expected return is higher. Therefore, the expected value of the short rate must be less than the break-even value,  $f_{2}$ , because the lower the expectation of  $r_{2}$ , the greater the anticipated return on the long-term bond.

Therefore, if most individuals are short-term investors,  $f_{2}$  must be greater than  $E(r_{2})$ . The forward rate will embody a premium compared with the expected future short-interest rate. This liquidity premium compensates short-term investors for the uncertainty about the price at which they will be able to sell their long-term bonds at the end of the year.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/e24a56f470debf5966c85b801491eb8a2feffbc190d9a30309581d9ac02f902d.jpg)

# Concept Check 15.5

Suppose that the required liquidity premium for the short-term investor is  $1\%$ . What must  $E(r_{2})$  be if  $f_{2}$  is  $7\%$ ?

Perhaps surprisingly, we also can imagine scenarios in which long-term bonds can be perceived by investors to be safer than short-term bonds. To see how, we now consider "long-term" investors who wish to invest for a full 2-year period. Suppose they can purchase a  \$1,000 par value 2-year zero-coupon bond for\$ 890 and lock in a guaranteed yield to maturity of  $y_{2} = 6\%$ . Alternatively, they can roll over two 1-year investments. In this case, an investment of \$890 would grow in two years to  $890 \times 1.05 \times (1 + r_{2})$ , which is an uncertain amount today because  $r_{2}$  is not yet known. The break-even year 2 interest rate is, once again, the forward rate,  $7.01\%$ .

The expected value of the payoff of the rollover strategy is  $890 \times 1.05 \times [1 + E(r_2)]$ . If  $E(r_2)$  equals the forward rate,  $f_2$ , then the expected value of the payoff from the rollover strategy will equal the known payoff from the 2-year-maturity-bond strategy.

Is this a reasonable presumption? Once again, it is reasonable only if the investor does not care about the uncertainty surrounding the final value of the rollover strategy. But if that risk is important, the long-term investor will not be willing to engage in the rollover strategy unless its expected return exceeds that of the 2-year bond. In this case, the investor would require that

$$
(1. 0 5) [ 1 + E (r _ {2}) ] > (1. 0 6) ^ {2} = (1. 0 5) (1 + f _ {2})
$$ which implies that  $E(r_2)$  exceeds  $f_2$ .


Therefore, if all investors were long-term investors, no one would be willing to hold short-term bonds unless rolling over those bonds offered a reward for bearing interest rate risk. This would cause the forward rate to be less than the expected future spot rate.

For example, suppose that in fact  $E(r_2) = 8\%$ . The liquidity premium therefore is negative:  $f_2 - E(r_2) = 7.01\% - 8\% = -.99\%$ . This is exactly opposite from the conclusion that we drew in the first case of the short-term investor. Clearly, whether forward rates will equal expected future short rates depends on investors' readiness to bear interest rate risk, as well as their willingness to hold bonds that do not correspond to their investment horizons.

# 15.4 Theories of the Term Structure

# The Expectations Hypothesis

The simplest theory of the term structure is the expectations hypothesis. A common version states that the forward rate equals the market consensus expectation of the future short interest rate; that is,  $f_{2} = E(r_{2})$ , and liquidity premiums are zero. If  $f_{2} = E(r_{2})$ , yields on long-term bonds depend only on expectations of future short rates. Therefore, we can use forward rates to infer market expectations of future short rates. For example, with  $(1 + y_{2})^{2} = (1 + r_{1}) \times (1 + f_{2})$  from Equation 15.5, the expectations hypothesis would imply that  $(1 + y_{2})^{2} = (1 + r_{1}) \times [1 + E(r_{2})]$ . The yield to maturity would thus be determined solely by current and expected future one-period interest rates. An upward-sloping yield curve would be clear evidence that investors anticipate increases in interest rates.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/a4ece8a5b662d7e4685ef5e28d79e30c8e629cdc22fe810e3afe501485281e49.jpg)

# Concept Check 15.6

If the expectations hypothesis is valid, what can we conclude about the premiums necessary to induce investors to hold bonds of different maturities from their investment horizons?

# The Expectations Hypothesis and Forward Inflation Rates

Forward rates derived from conventional bonds are nominal interest rates. But by using price-level-indexed bonds such as TIPS, we can also calculate forward real interest rates. Recall that the difference between the real rate and the nominal rate is approximately the expected inflation rate. Therefore, comparing real and nominal forward rates might give us a glimpse of the market's expectation of future inflation rates. The real versus nominal spread is a sort of forward inflation rate.

As part of its monetary policy, the Federal Reserve Board periodically reduces its target federal funds rate in an attempt to stimulate the economy. The following page captures from a Bloomberg screen shows the minute-by-minute spread between the 5-year forward nominal interest rate and forward real rate on one day the Fed announced such a policy change. The spread immediately widened at the announcement, signifying that the market expected the more expansionary monetary policy to eventually result in a higher inflation rate. The increase in the inflation rate implied by the graph is fairly mild, about .05\%, from about 2.53\% to 2.58\%, but the impact of the announcement is very clear, and the speed of adjustment to the announcement was impressive.


![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/2fea450f8ea79529092e3807f322744e5d4e450aec2ca486c18cbeb6f78e5672.jpg)

By the way, nothing limits us to nominal bonds when using the expectations hypothesis. The nearby box points out that we can apply the theory to the term structure of real interest rates as well, and thereby learn something about market expectations of coming inflation rates.

# Liquidity Preference Theory

We've seen that short-term investors will be unwilling to hold long-term bonds unless the forward rate exceeds the expected short interest rate,  $f_{2} > E(r_{2})$ , whereas long-term investors will be unwilling to hold short bonds unless  $E(r_{2}) > f_{2}$ . In other words, both groups of investors require a premium to hold bonds with maturities different from their investment horizons. Advocates of the liquidity preference theory of the term structure believe that short-term investors dominate the market so that the forward rate will generally exceed the expected short rate. The excess of  $f_{2}$  over  $E(r_{2})$ , the liquidity premium, is predicted to be positive.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/77e1f02cb91e04093a052488682302ecce6b2cce452ef86c27c6f0dc131536ef.jpg)

# Concept Check 15.7

The liquidity premium hypothesis also holds that issuers of bonds prefer to issue long-term bonds to lock in borrowing costs. How would this preference contribute to a positive liquidity premium?

To illustrate the differing implications of these theories, suppose the short interest rate is expected to be constant indefinitely. Specifically, suppose that  $r_1 = 5\%$  and that  $E(r_2) = 5\%$ ,  $E(r_3) = 5\%$ , and so on. Under the expectations hypothesis, the 2-year yield to maturity could be derived from the following:

$$
\begin{array}{l} (1 + y _ {2}) ^ {2} = (1 + r _ {1}) [ 1 + E (r _ {2}) ] \\ = (1. 0 5) (1. 0 5) \\ \end{array}
$$ so that  $y_{2}$  equals  $5\%$ . Similarly, yields on bonds of all maturities would equal  $5\%$ .


In contrast, under the liquidity preference theory,  $f_{2}$  would exceed  $E(r_{2})$ . For example, suppose the liquidity premium is  $1\%$ , so  $f_{2}$  is  $6\%$ . Then, for 2-year bonds:

$$
\begin{array}{l} (1 + y _ {2}) ^ {2} = (1 + r _ {1}) (1 + f _ {2}) \\ = 1. 0 5 \times 1. 0 6 = 1. 1 1 3 \\ \end{array}
$$ implying that  $1 + y_{2} = 1.055$ . Similarly, if  $f_{3}$  also equals  $6\%$ , then the yield on 3-year bonds would be determined by


$$
\begin{array}{l} (1 + y _ {3}) ^ {3} = (1 + r _ {1}) (1 + f _ {2}) (1 + f _ {3}) \\ = 1. 0 5 \times 1. 0 6 \times 1. 0 6 = 1. 1 7 9 7 8 \\ \end{array}
$$ implying that  $1 + y_{3} = 1.0567$ . The plot of the yield curve in this situation would be given as in Figure 15.4, Panel A. Such an upward-sloping yield curve is commonly observed in practice.


![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/12b9323ec5d0ec8874cea938312898fe0b826dda0552e1506d50d5fea67c34cc.jpg)

Figure 15.4 Yield curves. Panel A: Constant expected short rate. Constant liquidity premium. Result: a rising yield curve. Panel B: Declining expected short rates. Increasing liquidity premiums. Result: a rising yield curve despite falling expected interest rates.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/fda9395c1feed019c656008e2feeda8c4b9f700db496a52869cb2aa039638dc2.jpg)
(continued)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/6154a177bf16d73ae7569888de59418399a75495799ccc6fc8e193384bdac301.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/0e43033d8faa3f90e90f9a37e38299e42040a41cd2d713facc72fc13eb2ee49c.jpg)
Figure 15.4 (Concluded) Panel C: Declining expected short rates. Constant liquidity premiums. Result: a hump-shaped yield curve. Panel D: Increasing expected short rates. Increasing liquidity premiums. Result: a sharply rising yield curve.

If interest rates are expected to change over time, then the liquidity premium may be overlaid on the path of expected short rates to determine the forward interest rate. Then the yield to maturity for each date will be an average of the single-period forward rates. Several such possibilities for increasing and declining interest rates appear in Figure 15.4, Panels B-D.

# Market Segmentation

Both the liquidity premium and expectations hypotheses treat bonds of various maturities as potential substitutes for each other. An investor considering bonds of one maturity can be lured into bonds of another by the prospect of earning a risk premium. In this sense, the markets for bonds of all maturities are linked, with yields on short- and long-term bonds determined jointly in market equilibrium. Forward rates cannot differ by expected short rates by more than a "fair" liquidity premium, or else investors will reallocate their portfolios to exploit what they perceive as abnormal profit opportunities.

In contrast, the market segmentation theory holds that long- and short-maturity bonds trade in essentially distinct and unconnected markets, each of which finds its own equilibrium independently. The term structure in this view is determined by the rates set in these segmented markets. This view of the market is less common today, as it seems clear that investors must compare long and short rates as well as expectations of future rates before deciding where to invest.

On the other hand, some investors may face binding limitations on their ability to shift from one maturity to another. For example, money market funds, a huge component of the fixed-income universe, must invest only in very-short-term securities regardless of current and expected rates in the rest of the fixed-income market. If these sorts of restrictions affect a large enough portion of the market, they can at least potentially lead to segmentation across maturity levels. And, in fact, it does appear that very-short-maturity instruments are characterized by rates consistently lower than those at longer ends of the term structure, consistent with a segmented market.

# 15.5 Interpreting the Term Structure

If the yield curve reflects expectations of future short rates, then it offers a potentially powerful tool for fixed-income investors. If we can use the term structure to infer the expectations of other investors in the economy, we can use those expectations as benchmarks for our own analysis. For example, if we are relatively more optimistic than other investors that interest rates will fall, we will be more willing to extend our portfolios into longer-term bonds. Therefore, in this section, we will take a careful look at what information can be gleaned from a careful analysis of the term structure. Unfortunately, while the yield curve does reflect expectations of future interest rates, it also reflects other factors such as liquidity premiums. Moreover, forecasts of interest rate changes may have different investment implications depending on whether those changes are driven by changes in the expected inflation rate or the real rate, and this adds another layer of complexity to the interpretation of the term structure.

We have seen that under certainty, 1 plus the yield to maturity on a zero-coupon bond is simply the geometric average of 1 plus the future short rates that will prevail over the life of the bond. This is the meaning of Equation 15.1, which we give in general form here:

$$
1 + y _ {n} = \left[ \left(1 + r _ {1}\right) \left(1 + r _ {2}\right) \dots \left(1 + r _ {n}\right) \right] ^ {1 / n}
$$

When future rates are uncertain, we modify Equation 15.1 by replacing future short rates with forward rates:

$$
1 + y _ {n} = \left[ \left(1 + r _ {1}\right) \left(1 + f _ {2}\right) \left(1 + f _ {3}\right) \dots \left(1 + f _ {n}\right) \right] ^ {1 / n} \tag {15.7}
$$

Thus, there is a direct relationship between yields on various maturity bonds and forward interest rates.

First, we ask what factors can account for a rising yield curve. Mathematically, if the yield curve is rising,  $f_{n+1}$  must exceed  $y_n$ . In words, the yield curve is upward-sloping at any maturity date,  $n$ , for which the forward rate for the coming period is greater than the yield at that maturity. This rule follows from the notion of the yield to maturity as an average (albeit a geometric average) of forward rates.

If the yield curve rises as one moves to longer maturities, the extension to a longer maturity must result in the inclusion of a "new" forward rate higher than the average of the previously observed rates. This is analogous to the observation that if a new student's test score increases the class average, that additional score must exceed the class's average without it. Similarly, to increase the yield to maturity, an above-average forward rate must be added to the other rates already included in the average.


# Example 15.6 Forward Rates and the Slopes of the Yield Curve

If the yield to maturity on 3-year zero-coupon bonds is  $7\%$ , then the yield on 4-year bonds will satisfy the following equation:

$$
(1 + y _ {4}) ^ {4} = (1. 0 7) ^ {3} (1 + f _ {4})
$$

If  $f_4 = .07$ , then  $y_4$  also will equal .07. (Confirm this!) If  $f_4$  is greater than  $7\%$ ,  $y_4$  will exceed  $7\%$ , and the yield curve will slope upward. For example, if  $f_4 = .08$ , then  $(1 + y_4)^4 = (1.07)^3 (1.08) = 1.3230$ , and  $y_4 = .0725$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/ddd2217c2f34b5ad42f84020fead439b66705e4d1c8fb220fa1c68ba6e7f09ea.jpg)

# Concept Check 15.8

Look back at Table 15.1. Show that  $y_{4}$  will exceed  $y_{3}$  if and only if the forward interest rate for period 4 is greater than  $7\%$ , which is the yield to maturity on the 3-year bond,  $y_{3}$ .

Given that an upward-sloping yield curve implies a forward rate higher than the spot, or current, yield to maturity, we ask next what can account for that higher forward rate. The challenge is that there always are two possible answers to this question. Recall that the forward rate can be related to the expected future short rate according to

$$ f _ {n} = E \left(r _ {n}\right) + \text {L i q u i d i t y p r e m i u m} \tag {15.8}
$$ where the liquidity premium might be necessary to induce investors to hold bonds of maturities that do not correspond to their preferred investment horizons.


By the way, the liquidity premium need not be positive, although that is the prediction of the liquidity premium hypothesis. We saw previously that if most investors have long-term horizons, the liquidity premium could be negative.

In any case, Equation 15.8 shows that there are two reasons that the forward rate could be high. Either investors expect rising interest rates, meaning that  $E(r_{n})$  is high, or they require a premium for holding longer-term bonds. Although it is tempting to infer from a rising yield curve that investors believe that interest rates will eventually increase, this does not necessarily follow. Indeed, Panel A in Figure 15.4 provides a simple counterexample. There, the short rate is expected to stay at  $5\%$  forever. Yet there is a constant  $1\%$  liquidity premium so that all forward rates are  $6\%$ . The result is that the yield curve continually rises, starting at a level of  $5\%$  for 1-year bonds, but eventually approaching  $6\%$  for long-term bonds as more and more forward rates at  $6\%$  are averaged into the yields to maturity.

Therefore, while expectations of increases in future interest rates can result in a rising yield curve, the converse is not true: A rising yield curve does not in and of itself imply expectations of higher future interest rates. Potential liquidity premiums complicate attempts to extract market expectations from the term structure. Nevertheless, you have to compare your own expectations to those reflected in market prices to determine whether you are relatively bullish or bearish on interest rates.

One very rough approach to deriving expected future spot rates is to assume that liquidity premiums are constant. An estimate of that premium can be subtracted from the forward rate to obtain the market's expected interest rate. For example, again making use of the example plotted in Panel A of Figure 15.4, the researcher would estimate from historical data that a typical liquidity premium in this economy is  $1\%$ . After calculating the forward rate from the yield curve to be  $6\%$ , the expectation of the future spot rate would be determined to be  $5\%$ .


This approach has little to recommend it for two reasons. First, it is next to impossible to obtain precise estimates of a liquidity premium. The general approach to doing so would be to compare forward rates and eventually realized future short rates and to calculate the average difference between the two. However, as an empirical matter, deviations between the two values can be large and unpredictable. The data are too noisy to calculate a reliable estimate of the expected premium. Second, there is no reason to believe that the liquidity premium should be constant. Figure 15.5 shows the rate of return variability of prices of long-term Treasury bonds since 1971. Interest rate risk fluctuated dramatically during the period. So we should expect risk premiums on various maturity bonds to fluctuate, and empirical evidence suggests that liquidity premiums do in fact fluctuate over time.

Still, very steep yield curves are interpreted by many market professionals as warning signs of impending rate increases. In fact, the yield curve is a good predictor of the business cycle as a whole because long-term rates tend to rise in anticipation of an expansion in economic activity.

The usually observed upward slope of the yield curve, especially for short maturities, is the empirical basis for the liquidity premium doctrine that long-term bonds offer a positive liquidity premium. Because the yield curve normally has an upward slope, a downward-sloping yield curve is taken as a strong indication that yields are more likely than not to fall. The prediction of declining interest rates is, in turn, often interpreted as a signal of a coming recession. For this reason, it is not surprising that the slope of the yield curve is one of the key components of the index of leading economic indicators.

Figure 15.6 presents a history of yields on 90-day Treasury bills and 10-year Treasury bonds. Yields on the longer-term bonds generally exceed those on the bills, meaning that the yield curve generally slopes upward. Moreover, the exceptions to this rule do seem to precede episodes of falling short rates, which, if anticipated, would induce a downward-sloping yield curve. For example, the figure shows that 1980-1981 were years in which 90-day yields exceeded long-term yields. These years preceded both a drastic drop in the general level of rates and a steep recession. (One notable exception to this typical pattern is the COVID-19 recession in 2020. The onset of this


![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/fbb67b095f3075d4061e75455a2250167d1ff7aeef4d6bfee5797051cfe94205.jpg) recession resulted from an initial shock independent of the economic system and, therefore, unsurprisingly, it was not forecast by the yield curve in prior months.)
Figure 15.5 Price volatility of long-term Treasury bonds

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/e8b545aca8be7e5992f1035553c6c83291884f98cbc01cac2e2cf5f4090b7267.jpg)
Figure 15.6 Term spread: Yields on 10-year versus 90-day Treasury securities


Why might interest rates fall? There are two factors to consider: the real rate and the inflation premium. Recall that the nominal interest rate is composed of the real rate plus a factor to compensate for the effect of inflation:

$$
1 + \text {N o m i n a l r a t e} = (1 + \text {R e a l r a t e}) (1 + \text {I n f l a t i o n r a t e})
$$ or, approximately,


$$
\text {N o m i n a l r a t e} \approx \text {R e a l r a t e} + \text {I n f l a t i o n r a t e}
$$

Therefore, an expected change in interest rates can be due to changes in either expected real rates or expected inflation rates. Usually, it is important to distinguish between these two possibilities because the economic environments associated with them may vary substantially. High real rates may indicate a rapidly expanding economy, high government budget deficits, and tight monetary policy. Although high inflation rates can arise out of a rapidly expanding economy, inflation also may be caused by rapid expansion of the money supply or supply-side shocks to the economy such as interruptions in energy supplies. These factors have very different implications for investments. Even if we conclude from an analysis of the yield curve that rates will fall, we need to analyze the macroeconomic factors that might cause such a decline.

# 15.6 Forward Rates as Forward Contracts

We have seen that forward rates may be derived from the yield curve, using Equation 15.5. In general, they will not equal the eventually realized short rate, or even today's expectation of what that short rate will be. But there is still an important sense in which the forward rate is a market interest rate.

Suppose that you wanted to arrange now to make a loan at some future date. You would agree today on the interest rate that will be charged, but the loan would not commence until some time in the future. How would the interest rate on such a "forward loan" be determined? Perhaps not surprisingly, it would be the forward rate of interest for the period of the loan. Let's use an example to see how this might work.


# Example 15.7 Forward Interest Rate Contract

Suppose the price of 1-year-maturity zero-coupon bonds with face value  \$1,000 is\$ 952.38 and the price of 2-year zeros with  \$1,000 face value is\$ 890. The yield to maturity on the 1-year bond is therefore 5\%, while that on the 2-year bond is 6\%. The forward rate for the second year is thus

$$ f _ {2} = \frac {\left(1 + y _ {2}\right) ^ {2}}{\left(1 + y _ {1}\right)} - 1 = \frac {1.06 ^ {2}}{1.05} - 1 = .0701, \text {or} 7.01 \%
$$

Now consider the strategy laid out in the following table. In the first column, we present data for this example, and in the last column we generalize. We denote by  $B_0(T)$  today's price of a zero-coupon bond with face value \$1,000 maturing at time  $T$ .

<table><tr><td></td><td>Initial Cash Flow</td><td>In General</td></tr><tr><td>Buy a 1-year zero-coupon bond</td><td>-952.38</td><td>-B0(1)</td></tr><tr><td>Sell 1.0701 2-year zeros</td><td>+890 × 1.0701 = 952.38</td><td>+B0(2) × (1 + f2)</td></tr><tr><td></td><td>0</td><td>0</td></tr></table>

The initial cash flow (at time 0) is zero. You pay 952.38, or in general B_{0}(1), for a zero maturing in one year, and you receive \$890, or in general B_{0}(2), for each zero you sell maturing in two years. By selling 1.0701 of these bonds, you set your initial cash flow to zero.^{4}

At time 1, the 1-year bond matures and you receive 1,000. At time 2, the 2-year-maturity zero-coupon bonds that you sold mature, and you have to pay 1.0701 \times 1,000 = \$1,070.10. Your cash flow stream is shown in Figure 15.7, Panel A. Notice that you have created a "synthetic" forward loan: You effectively will borrow \$1,000 a year from now and repay 1,070.10 a year later. The rate on this forward loan is therefore 7.01\%, precisely equal to the forward rate for the second year.

In general, to construct the synthetic forward loan, you sell  $(1 + f_{2})$  2-year zeros for every 1-year zero that you buy. This makes your initial cash flow zero because the prices of the 1- and 2-year zeros differ by the multiple  $(1 + f_{2})$ ; notice that

$$
B _ {0} (1) = \frac {\mathbb {S} 1 , 0 0 0}{\left(1 + y _ {1}\right)}, \text {w h i l e} B _ {0} (2) = \frac {\mathbb {S} 1 , 0 0 0}{\left(1 + y _ {2}\right) ^ {2}} = \frac {\mathbb {S} 1 , 0 0 0}{\left(1 + y _ {1}\right) \left(1 + f _ {2}\right)}
$$

Therefore, when you sell  $(1 + f_2)$  2-year zeros, you generate just enough cash to buy one 1-year zero. Both zeros mature to a face value of \$1,000, so the difference between the cash inflow at time 1 and the cash outflow at time 2 is the same factor,  $1 + f_2$ , as illustrated in Figure 15.7, Panel B. As a result,  $f_2$  is the rate on the forward loan.

Obviously, you can construct a synthetic forward loan for periods beyond the second year, and you can construct such loans for multiple periods. For example, if you want to obtain a forward loan that begins in year 3 and ends in year 5, you would issue a 5-year zero-coupon bond (thus borrowing for five years) and buy a 3-year zero (thus lending for three years). Your borrowing and lending positions cancel out for the first three years, effectively leaving you with a borrowing position that starts after year 3 and continues until the end of year 5. Problems 18 and 19 at the end of the chapter lead you through the details of some of these variants.

A: Forward Rate = 7.01\%

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/738b54992879ac1b7626d424fb52549b7ad5a89678ef6336fe9a07056262f5f8.jpg)

B: For a General Forward Rate. The short rates in the two periods are  $r_1$  (which is observable today) and  $r_2$  (which is not). The rate that can be locked in for a one-period-ahead loan is  $f_2$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/13a9be5b0f0842f23fce93b507a53204d8f693a1a3df7e52ebb325f333a5cd15.jpg)
Figure 15.7 Engineering a synthetic forward loan

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/ecd96db36e45ca6215ab97d4c8b38fab326e3d00f90fb19ecef4316e6d60c478.jpg)

# Concept Check 15.9

Continuing Example 15.7, now suppose that the price of 3-year zero-coupon bonds is 816.30. What is the forward rate for the third year? How would you construct a synthetic 1-year forward loan that commences at  t = 2  and matures at  t = 3 ?

# SUMMARY

1. The term structure of interest rates refers to the interest rates for various terms to maturity embodied in the prices of default-free zero-coupon bonds.
2. In a world of certainty, all investments must provide equal total returns for any investment period. Short-term holding-period returns on all bonds would be equal in a risk-free economy; all returns would be equal to the rate available on short-term bonds. Similarly, total returns from rolling over short-term bonds over longer periods would equal the total return available from long-maturity bonds.
3. The forward rate of interest is the break-even future interest rate that would equate the total return from a rollover strategy to that of a longer-term zero-coupon bond. It is defined by the equation

$$
(1 + y _ {n - 1}) ^ {n - 1} (1 + f _ {n}) = (1 + y _ {n}) ^ {n}
$$ where  $n$  is a given number of periods from today. This equation can be used to show that yields to maturity and forward rates are related by the equation


$$
(1 + y _ {n}) ^ {n} = (1 + r _ {1}) (1 + f _ {2}) (1 + f _ {3}) \dots (1 + f _ {n})
$$

4. A common version of the expectations hypothesis holds that forward interest rates are unbiased estimates of expected future interest rates. However, there are good reasons to believe that forward rates differ from expected short rates because of a risk premium known as a liquidity premium. A positive liquidity premium can cause the yield curve to slope upward even if no increase in short rates is anticipated.
5. The existence of liquidity premiums complicates attempts to infer expected future interest rates from the yield curve. Such an inference would be made easier if we could assume the liquidity premium remained reasonably stable over time. However, both empirical and theoretical considerations cast doubt on the constancy of that premium.


6. Forward rates are market interest rates in the important sense that commitments to forward (i.e., deferred) borrowing or lending arrangements can be made at these rates.

term structure of interest rates yield curve bond stripping
bond reconstitution pure yield curve

on-the-run yield curve spot rate
short rate forward interest rate
liquidity premium expectations hypothesis liquidity preference theory market segmentation theory


KEY TERMS

Forward rate of interest:  $1 + f_{n} = \frac{(1 + y_{n})^{n}}{(1 + y_{n - 1})^{n - 1}}$

KEY EQUATIONS

Yield to maturity given sequence of forward rates:  $1 + y_{n} = \left[(1 + r_{1})(1 + f_{2})(1 + f_{3})\dots (1 + f_{n})\right]^{1 / n}$  Liquidity premium  $=$  Forward rate - Expected short rate

1. What is the relationship between forward rates and the market's expectation of future short rates? Explain in the context of both the expectations hypothesis and the liquidity preference theory of the term structure of interest rates.
2. Under the expectations hypothesis, if the yield curve is upward-sloping, the market must expect an increase in short-term interest rates. True/false/uncertain? Why?
3. Under the liquidity preference theory, if inflation is expected to be falling over the next few years, long-term interest rates will be higher than short-term rates. True/false/uncertain? Why?
4. If the liquidity preference hypothesis is true, what shape should the term structure curve have in a period where interest rates are expected to be constant?

a. Upward-sloping b. Downward-sloping
c. Flat

5. Which of the following is true according to the pure expectations theory? Forward rates:

$a$ . Exclusively represent expected future short rates.
$b$ . Are biased estimates of market expectations.
$c$ . Always overestimate future short rates.

6. Assuming the pure expectations theory is correct, an upward-sloping yield curve implies:

$a$ . Interest rates are expected to increase in the future.
$b$ . Longer-term bonds are riskier than short-term bonds.
$c$ . Interest rates are expected to decline in the future.

7. The following is a list of prices for zero-coupon bonds of various maturities.

<table><tr><td>Maturity (years)</td><td>Price of Bond</td></tr><tr><td>1</td><td>943.40</td></tr><tr><td>2</td><td>898.47</td></tr><tr><td>3</td><td>847.62</td></tr><tr><td>4</td><td>792.16</td></tr></table>

PROBLEM SETS

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/27e67278d2157b32cc41d3dd2d2ca450b261e5deaa62d73ab62efd2bd726a623.jpg)
SCHWESER

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/f5f43b97001d75ec791d9cf135356a2e4aafd9b49d026dca39da8da6aded3553.jpg)
SCHWESER

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/8669112b8ac873bd5e711bc9d97f73aa4dd380f7deb86bd0f94c4fcdff8b63d9.jpg)
SCHWESER eXcel


Please visit us at www.mhhe.com/Bodie13e


8.  $a$ . Assuming that the expectations hypothesis is valid, compute the expected price of the 4-year bond in Problem 7 at the end of (i) the first year; (ii) the second year; (iii) the third year; (iv) the fourth year.

b. What is the rate of return of the bond in years 1, 2, 3, and 4? Conclude that the expected return equals the forward rate for each year.

9. Consider the following 1,000 par value zero-coupon bonds:

<table><tr><td>Bond</td><td>Years to Maturity</td><td>YTM (\%)</td></tr><tr><td>A</td><td>1</td><td>5\%</td></tr><tr><td>B</td><td>2</td><td>6</td></tr><tr><td>C</td><td>3</td><td>6.5</td></tr><tr><td>D</td><td>4</td><td>7</td></tr></table>

According to the expectations hypothesis, what is the market's expectation of the yield curve one year from now? Specifically, what are the expected values of next year's yields on bonds with maturities of  $(a)$  one year?  $(b)$  two years?  $(c)$  three years?

10. The term structure for zero-coupon bonds is currently:

<table><tr><td>Maturity (years)</td><td>YTM (\%)</td></tr><tr><td>1</td><td>4\%</td></tr><tr><td>2</td><td>5</td></tr><tr><td>3</td><td>6</td></tr></table>

Next year at this time, you expect it to be:

<table><tr><td>Maturity (years)</td><td>YTM (\%)</td></tr><tr><td>1</td><td>5\%</td></tr><tr><td>2</td><td>6</td></tr><tr><td>3</td><td>7</td></tr></table> a. What do you expect the rate of return to be over the coming year on a 3-year zero-coupon bond?

b. Under the expectations theory, what yields to maturity does the market expect to observe on 1- and 2-year zeros at the end of the year?
$c$ . Is the market's expectation of the return on the 3-year bond greater or less than yours?

11. The yield to maturity on 1-year zero-coupon bonds is currently  $7\%$ ; the YTM on 2-year zeros is  $8\%$ . The Treasury plans to issue a 2-year maturity coupon bond, paying coupons once per year with a coupon rate of  $9\%$ . The face value of the bond is 100.

$a$  .At what price will the bond sell?
$b$ . What will the yield to maturity on the bond be?
c. If the expectations theory of the yield curve is correct, what is the market expectation of the price for which the bond will sell next year?
d. Recalculate your answer to part  $(c)$  if you believe in the liquidity preference theory and you believe that the liquidity premium is  $1\%$ .

12. Below is a list of prices for zero-coupon bonds of various maturities.

Excel

Please visit us at www.mhhe.com/Bodie13e


<table><tr><td>Maturity (years)</td><td>Price of 1,000 Par Bond
(zero-coupon)</td></tr><tr><td>1</td><td>\$943.40</td></tr><tr><td>2</td><td>873.52</td></tr><tr><td>3</td><td>816.37</td></tr></table> a. An  $8.5\%$  coupon \$1,000 par bond pays an annual coupon and will mature in three years. What should the yield to maturity on the bond be?

b. If at the end of the first year the yield curve flattens out at  $8\%$ , what will be the 1-year holding-period return on the coupon bond?

13. Prices of zero-coupon bonds reveal the following pattern of forward rates:

<table><tr><td>Year</td><td>Forward Rate</td></tr><tr><td>1</td><td>5\%</td></tr><tr><td>2</td><td>7</td></tr><tr><td>3</td><td>8</td></tr></table>

In addition to the zero-coupon bond, investors also may purchase a 3-year bond making annual payments of  \$60 with par value\$ 1,000.

a. What is the price of the coupon bond?
$b$ . What is the yield to maturity of the coupon bond?
c. Under the expectations hypothesis, what is the expected realized compound yield of the coupon bond?
d. If you forecast that the yield curve in one year will be flat at  $7\%$ , what is your forecast for the expected rate of return on the coupon bond for the 1-year holding period?

14. You observe the following term structure:

Effective Annual YTM

<table><tr><td>1-year zero-coupon bond</td><td>6.1\%</td></tr><tr><td>2-year zero-coupon bond</td><td>6.2</td></tr><tr><td>3-year zero-coupon bond</td><td>6.3</td></tr><tr><td>4-year zero-coupon bond</td><td>6.4</td></tr></table> a. If you believe that the term structure next year will be the same as today's, calculate the return on (i) the 1-year zero and (ii) the 4-year zero.

$b$ . Which bond provides a greater expected 1-year return?
c. Redo your answers to parts  $(a)$  and  $(b)$  if you believe in the expectations hypothesis.

15. The yield to maturity (YTM) on 1-year zero-coupon bonds is  $5\%$ , and the YTM on 2-year zeros is  $6\%$ . The YTM on 2-year-maturity coupon bonds with coupon rates of  $12\%$  (paid annually) is  $5.8\%$ .

a. What arbitrage opportunity is available for an investment banking firm?
$b$ . What is the profit on the activity?

16. Suppose that a 1-year zero-coupon bond with face value \$100 currently sells at \$94.34, while a 2-year zero sells at \$84.99. You are considering the purchase of a 2-year-maturity bond making annual coupon payments. The face value of the bond is \$100, and the coupon rate is 12\% per year.

a. What is the yield to maturity of the 2-year zero?
$b$ . What is the yield to maturity of the 2-year coupon bond?
c. What is the forward rate for the second year?
d. According to the expectations hypothesis, what are (i) the expected price of the coupon bond at the end of the first year and (ii) the expected holding-period return on the coupon bond over the first year?
e. Will the expected rate of return be higher or lower if you accept the liquidity preference hypothesis?

17. The current yield curve for default-free zero-coupon bonds is as follows:

<table><tr><td>Maturity (years)</td><td>YTM (\%)</td></tr><tr><td>1</td><td>10\%</td></tr><tr><td>2</td><td>11</td></tr><tr><td>3</td><td>12</td></tr></table> excel


Please visit us at www.mhhe.com/Bodie13e


![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/ee87fa12c540be572df690d21699e5e4a54a3523573336784e83e1d6f0a901de.jpg) c. What about the yield on 2-year zeros?

d. If you purchase a 2-year zero-coupon bond now, what is the expected total rate of return over the next year? (Hint: Compute the current and expected future prices.) Ignore taxes.
e. What is the expected total rate of return over the next year on a 3-year zero-coupon bond?
$f$ . What should be the current price of a 3-year maturity bond with a  $12\%$  coupon rate paid annually?
$g$ . If you purchased the coupon bond at the price you computed in part  $(f)$ , what would your total expected rate of return be over the next year (coupon plus price change)? Ignore taxes.

18. Suppose that the prices of zero-coupon bonds with various maturities are given in the following table. The face value of each bond is 1,000.

<table><tr><td>Maturity (years)</td><td>Price</td></tr><tr><td>1</td><td>925.93</td></tr><tr><td>2</td><td>853.39</td></tr><tr><td>3</td><td>782.92</td></tr><tr><td>4</td><td>715.00</td></tr><tr><td>5</td><td>650.00</td></tr></table>

$a$ . Calculate the forward rate of interest for each year.
b. How could you construct a 1-year forward loan beginning in year 3? Confirm that the rate on that loan equals the forward rate.
c. Repeat part  $(b)$  for a 1-year forward loan beginning in year 4.

19. Use the data from Problem 18. Suppose that you want to construct a 2-year maturity forward loan commencing in 3 years.

a. Suppose that you buy today one 3-year maturity zero-coupon bond with face value 1,000. How many 5-year maturity zeros would you have to sell to make your initial cash flow equal to zero (specifically, what must be the total face value of those 5-year zeros)?
$b$ . What are the cash flows on this strategy in each year?
c. What is the effective 2-year interest rate on the effective 3-year-ahead forward loan?
d. Confirm that the effective 2-year forward interest rate equals  $(1 + f_4) \times (1 + f_5) - 1$ . You therefore can interpret the 2-year loan rate as a 2-year forward rate for the last two years.
$e$ . Alternatively, show that the effective 2-year forward rate equals

$$
\frac {(1 + y _ {5}) ^ {5}}{(1 + y _ {3}) ^ {3}} - 1
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/671ed89c-9f15-4f1f-83ef-906b19e5f9bf/51fa9d6297356bcb1e862b138b2f6601294eb3d602c0fec1219ea222533d5155.jpg)

1. Briefly explain why bonds of different maturities might have different yields according to the expectations and liquidity preference hypotheses. Briefly describe the implications of each hypothesis when the yield curve is (1) upward-sloping and (2) downward-sloping.
2. Which one of the following statements about the term structure of interest rates is true?

a. The expectations hypothesis predicts a flat yield curve if anticipated future short-term rates exceed current short-term rates.
$b$ . The expectations hypothesis contends that the long-term spot rate is equal to the anticipated short-term rate.
c. The liquidity premium theory indicates that, all else being equal, longer maturity bonds will have lower yields.
$d$ . The liquidity preference theory contends that lenders prefer to buy securities at the short end of the yield curve.

3. The following table shows yields to maturity of zero-coupon Treasury securities.

<table><tr><td>Term to Maturity (years)</td><td>Yield to Maturity (\%)</td></tr><tr><td>1</td><td>3.50\%</td></tr><tr><td>2</td><td>4.50</td></tr><tr><td>3</td><td>5.00</td></tr><tr><td>4</td><td>5.50</td></tr><tr><td>5</td><td>6.00</td></tr><tr><td>10</td><td>6.60</td></tr></table>

$a$ . Calculate the forward 1-year rate of interest for year 3.
$b$ . Describe the conditions under which the calculated forward rate would be an unbiased estimate of the 1-year spot rate of interest for that year.
c. Assume that a few months earlier, the forward 1-year rate of interest for that year had been significantly higher than it is now. What factors could account for the decline in the forward rate?

4. The 6-month Treasury bill spot rate is  $4\%$ , and the 1-year Treasury bill spot rate is  $5\%$ . What is the implied 6-month forward rate for six months from now?
5. The tables below show, respectively, the characteristics of two annual-coupon bonds from the same issuer with the same priority in the event of default, as well as spot interest rates on zero-coupon bonds. Neither coupon bond's price is consistent with these spot rates. Using the information in these tables, recommend either bond  $A$  or bond  $B$  for purchase.

Bond Characteristics

<table><tr><td></td><td>Bond A</td><td>Bond B</td></tr><tr><td>Coupons</td><td>Annual</td><td>Annual</td></tr><tr><td>Maturity</td><td>3 years</td><td>3 years</td></tr><tr><td>Coupon rate</td><td>10\%</td><td>6\%</td></tr><tr><td>Yield to maturity</td><td>10.65\%</td><td>10.75\%</td></tr><tr><td>Price</td><td>98.40</td><td>88.34</td></tr></table>

Spot Interest Rates

<table><tr><td>Term (years)</td><td>Spot Rates (zero-coupon)</td></tr><tr><td>1</td><td>5\%</td></tr><tr><td>2</td><td>8</td></tr><tr><td>3</td><td>11</td></tr></table>

6. Sandra Kapple is a fixed-income portfolio manager who works with large institutional clients. Kapple is meeting with Maria VanHusen, consultant to the Star Hospital Pension Plan, to discuss management of the fund's approximately 100 million Treasury bond portfolio. The current U.S. Treasury yield curve is given in the following table. VanHusen states, "Given the large differential between 2- and 10-year yields, the portfolio would be expected to experience a higher return over a 10-year horizon by buying 10-year Treasuries, rather than buying 2-year Treasuries and reinvesting the proceeds into 2-year T-bonds at each maturity date."

<table><tr><td>Maturity</td><td>Yield</td><td>Maturity</td><td>Yield</td></tr><tr><td>1 year</td><td>2.00\%</td><td>6 years</td><td>4.15\%</td></tr><tr><td>2</td><td>2.90</td><td>7</td><td>4.30</td></tr><tr><td>3</td><td>3.50</td><td>8</td><td>4.45</td></tr><tr><td>4</td><td>3.80</td><td>9</td><td>4.60</td></tr><tr><td>5</td><td>4.00</td><td>10</td><td>4.70</td></tr></table> a. Indicate whether VanHusen's conclusion is correct, based on the pure expectations hypothesis.

b. VanHusen discusses with Kapple alternative theories of the term structure of interest rates and gives her the following information about the U.S. Treasury market:

<table><tr><td>Maturity (years)</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td></tr><tr><td>Liquidity premium (\%)</td><td>0.55</td><td>0.55</td><td>0.65</td><td>0.75</td><td>0.90</td><td>1.10</td><td>1.20</td><td>1.50</td><td>1.60</td></tr></table>

Use this additional information and the liquidity preference theory to determine what the slope of the yield curve implies about the direction of future expected short-term interest rates.

7. A portfolio manager at Superior Trust Company is structuring a fixed-income portfolio to meet the objectives of a client. The portfolio manager compares coupon U.S. Treasuries with zero-coupon stripped U.S. Treasuries and observes a significant yield advantage for the stripped bonds:

<table><tr><td>Term</td><td>Coupon U.S. Treasuries</td><td>Zero-Coupon Stripped U.S. Treasuries</td></tr><tr><td>3 years</td><td>5.50\%</td><td>5.80\%</td></tr><tr><td>7</td><td>6.75</td><td>7.25</td></tr><tr><td>10</td><td>7.25</td><td>7.60</td></tr><tr><td>30</td><td>7.75</td><td>8.20</td></tr></table>

Briefly discuss why zero-coupon stripped U.S. Treasuries could have higher yields to maturity than coupon U.S. Treasuries with the same final maturity.

8. The shape of the U.S. Treasury yield curve appears to reflect two expected Federal Reserve reductions in the federal funds rate. The current short-term interest rate is  $5\%$ . The first reduction of approximately 50 basis points (bp) is expected six months from now, and the second reduction of approximately 50 bp is expected one year from now. The current U.S. Treasury term premiums are 10 bp per year for each of the next three years (out through the 3-year benchmark).

However, the market also believes that the Federal Reserve reductions will be reversed in a single 100-bp increase in the federal funds rate  $2^{1/2}$  years from now. You expect liquidity premiums to remain 10 bp per year for each of the next three years (out through the 3-year benchmark).

Describe or draw the shape of the Treasury yield curve out through the 3-year benchmark. Which term structure theory supports the shape of the U.S. Treasury yield curve you've described?

9. U.S. Treasuries represent a significant holding in many pension portfolios. You decide to analyze the yield curve for U.S. Treasury notes.

a. Using the data in the table below, calculate the 5-year spot and forward rates assuming annual compounding. Show your calculations.

U.S. Treasury Note Yield Curve Data

<table><tr><td>Years to Maturity</td><td>Par Coupon Yield to Maturity</td><td>Calculated Spot Rates</td><td>Calculated Forward Rates</td></tr><tr><td>1</td><td>5.00</td><td>5.00</td><td>5.00</td></tr><tr><td>2</td><td>5.20</td><td>5.21</td><td>5.42</td></tr><tr><td>3</td><td>6.00</td><td>6.05</td><td>7.75</td></tr><tr><td>4</td><td>7.00</td><td>7.16</td><td>10.56</td></tr><tr><td>5</td><td>7.00</td><td>?</td><td>?</td></tr></table>

$b$ . Define and describe each of the following three concepts: i. Short rate


ii. Spot rate iii. Forward rate


Explain how these concepts are related.

c. You are considering the purchase of a zero-coupon U.S. Treasury note with four years to maturity. On the basis of the above yield-curve analysis, calculate both the expected yield to maturity and the price for the security. Show your calculations.

10. The spot rates of interest for five U.S. Treasury securities are shown in the following table. Assume all securities pay interest annually.

Spot Rates of Interest

<table><tr><td>Term to Maturity</td><td>Spot Rate of Interest</td></tr><tr><td>1 year</td><td>13.00\%</td></tr><tr><td>2</td><td>12.00</td></tr><tr><td>3</td><td>11.00</td></tr><tr><td>4</td><td>10.00</td></tr><tr><td>5</td><td>9.00</td></tr></table> a. Compute the 2-year implied forward rate for a deferred loan beginning in three years.

b. Compute the price of a 5-year annual-pay Treasury security with a coupon rate of  $9\%$  by using the information in the table.

# E-INVESTMENTS EXERCISES

Go to stockcharts.com/freecharts/yieldcurve.php, where you will find a dynamic or "living" yield curve, a moving picture of the yield curve over time. Hit theAnimate button to start the demonstration. Is the yield curve usually upward- or downward-sloping? What about today's yield curve? How much does the slope of the curve vary? Which varies more: short-term or long-term rates? Can you explain why this might be the case?

# SOLUTIONS TO CONCEPT CHECKS

1. The price of the 3-year bond paying a 40 coupon is

$$
\frac {4 0}{1 . 0 5} + \frac {4 0}{1 . 0 6 ^ {2}} + \frac {1 . 0 4 0}{1 . 0 7 ^ {3}} = 3 8. 0 9 5 + 3 5. 6 0 0 + 8 4 8. 9 5 0 = \$ 9 2 2. 6 5
$$

At this price, the yield to maturity is  $6.945\%$ $[n = 3; \mathrm{PV} = (-)922.65; \mathrm{FV} = 1,000; \mathrm{PMT} = 40]$ . This bond's yield to maturity is closer to that of the 3-year zero-coupon bond than is the yield to maturity of the  $10\%$  coupon bond in Example 15.1. This makes sense: This bond's coupon rate is lower than that of the bond in Example 15.1. A greater fraction of its value is tied up in the final payment in the third year, and so it is not surprising that its yield is closer to that of a pure 3-year zero-coupon security.

2. We compare two investment strategies in a manner similar to Example 15.2:

Buy and hold 4-year zero  $=$  Buy 3-year zero; roll proceeds into 1-year bond

$$
(1 + y _ {4}) ^ {4} = (1 + y _ {3}) ^ {3} \times (1 + r _ {4})
$$

$$
1. 0 8 ^ {4} = 1. 0 7 ^ {3} \times (1 + r _ {4})
$$ which implies that  $r_4 = 1.08^4 / 1.07^3 - 1 = .11056 = 11.056\%$ . Now we confirm that the yield on the 4-year zero reflects the geometric average of the discount factors for the next 3 years:


$$
1 + y _ {4} = \left[ \left(1 + r _ {1}\right) \times \left(1 + r _ {2}\right) \times \left(1 + r _ {3}\right) \times \left(1 + r _ {4}\right) \right] ^ {1 / 4}
$$

$$
1. 0 8 = [ 1. 0 5 \times 1. 0 7 0 1 \times 1. 0 9 0 2 5 \times 1. 1 1 0 5 6 ] ^ {1 / 4}
$$

3. The 3-year bond can be bought today for $1,000/1.07³ = $816.30. Next year, it will have a remaining maturity of two years. The short rate in year 2 will be 7.01\% and the short rate in year 3 will be  $9.025\%$ . Therefore, the bond's yield to maturity next year will be related to these short rates according to


$$
(1 + y _ {2}) ^ {2} = 1. 0 7 0 1 \times 1. 0 9 0 2 5 = 1. 1 6 6 7
$$ and its price next year will be 1,000 / (1 + y_2)^2 = \ 1,000 / 1.1667 = \ 857.12. The 1-year holding-period rate of return is therefore (\ 857.12 - \$ 816.30)/\$ 816.30 = .05, or 5\%


4. The  $n$ -period spot rate is the yield to maturity on a zero-coupon bond with a maturity of  $n$  periods. The short rate for period  $n$  is the one-period interest rate that will prevail in that period. Finally, the forward rate for period  $n$  is the short rate for that period that would satisfy a "break-even condition" equating the total returns on two  $n$ -period investment strategies. The first strategy is an investment in an  $n$ -period zero-coupon bond; the second is an investment in an  $(n - 1)$ -period zero-coupon bond "rolled over" into an investment in a one-period zero. Spot rates and forward rates are observable today, but because interest rates evolve with uncertainty, future short rates are not. In the special case in which there is no uncertainty in future interest rates, the forward rate calculated from the yield curve would equal the short rate that will prevail in that period.

5.  $7\% - 1\% = 6\%$ .
6. The risk premium will be zero.
7. If issuers prefer to issue long-term bonds, they will be willing to accept higher expected interest costs on long bonds over short bonds. This willingness combines with investors' demands for higher rates on long-term bonds to reinforce the tendency toward a positive liquidity premium.
8. In general, from Equation 15.5,  $(1 + y_{n})^{n} = (1 + y_{n - 1})^{n - 1} \times (1 + f_{n})$ . In this case,  $(1 + y_{4})^{4} = (1.07)^{3} \times (1 + f_{4})$ . If  $f_{4} = .07$ , then  $(1 + y_{4})^{4} = (1.07)^{4}$  and  $y_{4} = .07$ . If  $f_{4}$  is greater than .07, then  $y_{4}$  also will be greater, and conversely if  $f_{4}$  is less than .07, then  $y_{4}$  will be as well.
9. The 3-year yield to maturity is  $\left(\frac{1,000}{816.30}\right)^{1/3} - 1 = .07 = 7.0\%$

The forward rate for the third year is therefore

$$ f_{3} = \frac{(1 + y_{3})^{3}}{(1 + y_{2})^{2}} -1 = \frac{1.07^{3}}{1.06^{2}} -1 = .0903 = 9.03\%
$$

(Alternatively, note that the ratio of the price of the 2-year zero to the price of the 3-year zero is  $1 + f_{3} = 1.0903$ .) To construct the synthetic loan, buy one 2-year maturity zero and sell 1.0903 3-year maturity zeros. Your initial cash flow is zero, your cash flow at time 2 is  $+\$ 1,000$ , and your cash flow at time 3 is  $-\$ 1,090.30$ , which corresponds to the cash flows on a 1-year forward loan commencing at time 2 with an interest rate of  $9.03\%$ .


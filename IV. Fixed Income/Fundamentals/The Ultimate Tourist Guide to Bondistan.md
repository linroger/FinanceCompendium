![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/48dbe13e3e3904ebc9f2875ec836d1c3cd4b386e481cd5dcdb66578fb7b341f1.jpg)

# The Ultimate Tourist Guide to Bondistan

Formerly titled Beep Beepe Trade Bonds Boop

by Efficient Market Hype

1st Ed. © 2022

Favor

# Introduction

This is a primer of sorts, a haphazard manual of fixed income trading cobbled together from the things I have learned from teachers, mentors, bosses and of course the market. I can certainly tell you that the market is a tougher but better teacher than most and if you are careless and unknowledgeable, with the highest of fees. Yet there is no better classroom with a more objective grading system than financial markets.

The most valuable commodity in markets is knowledge, the rarest is time. I urge you to trade the rare for the valuable.

Equipped with knowledge, you are empowered with the ability but not the right to succeed. Knowledge is a universal option with no expiry and a strike that gets closer to being in the money the more of it you add. It's just a matter of applying it and hopefully this book can be a starting point. You won't find trade advice here, you won't find trade ideas, just some tools and examples on what trading fixed income involves.

This book started out as a thread on Twitter about a tiny portion of the Treasury futures market, but the reception was strong enough to warrant more threads on fixed income topics that not only told you what and how, but why. And the hungriest minds are always looking for the answers to the 'why'. The twitter threads (The Bond Basics with Bloomberg Series – "The BBB Series") continue to be free for all to access and will continue to be unless removed at no choice of my own! This book is free as well. While the information in this book is much the same as the threads, this format allows me to add more information, emphasise key knowledge points that I think you should pay attention to, structure the material in a more cohesive manner and convey my thoughts more effectively. The biggest problem I've always found with most textbooks is that they're bound by theory, academic assumptions and focus on the what but not the how and why. I hope this book provides a practitioner's view on how the orderly theory of fixed income meets the chaos of actual markets. Any trading-related information contained herein is not financial advice, just opinions and educational examples.

In the following pages we will cover the basics of fixed income using examples and real-world applications with the Bloomberg terminal. The Bond Basics with Bloomberg Series – The BBB Series. Using market experience, education and the help of other professionals on twitter, we've put together a comprehensive but introductory primer on fixed income that explores the conventions, explains the mechanics and most importantly provides real world examples. The fixed income waters are as deep as they are wide, but the shallows can be just as fun. Jump in!

If you're looking for a resource that lays out the foundations from bond math to swaps, this will be what I hope is a good starting point. All you need is some time and a willingness to learn. Enjoy, and welcome to the world of bonds.

# Efficient Market Hype

Authors:

Efficient Market Hype

Macropotamus

Thomas D.D. Graff

@effmkthype

@macropotamus

@tdgraff

Special Mentions:

Rishi Mishra

@aRishisays

Short End Trader

@shortendtrader

# Contents

# Introduction 3

1. Bond Math 7

1.1 Discounting, Compounding and The Time Value of Money 8  
1.2 Accrued Interest 11  
1.3 Topic Question 11

2. Interest Rate Risk, Its Calculation and Application 12

2.1 Duration 17  
2.2 Topic Question 19

3. Money Markets and Forward Rates 20

3.1 T-Bills 21  
3.2 Short Term Interest Rates (STIR) and Risk 22  
3.3 Repos 25  
3.4 Topic Question 26

4. The Yield Curve (Authored by @macropotamus) 27

4.1 What is a Yield Curve? 27  
4.2 Breaking Down the Curve - Curve and Butterfly Spreads 30  
4.3 Carry & Rolldown - How the Curve Affects Your Investment 31  
4.4 Trading the Yield Curve - Steepeners & Flatteners 34  
4.5 Trading the Yield Curve - Butterflies 37  
4.6 Recap 40  
4.7 Topic Question 41

5. Futures (STIRs, Notes and Bonds) 42

5.1 Introduction to Interest Rate Futures 42  
5.2 Eurodollar Futures 46  
5.3 Futures Rolls and Generic/Continuous Contracts 47  
5.4 Note and Bond Futures 50  
5.5 Futures Risk 55  
5.6 Trading Strategies Using Futures 56  
5.7 Observing Open Interest and Market Activity 58  
5.8 Topic Question 60

6. Options on Futures 61

6.1 What are Options? 61  
6.2 Finding Options on Bloomberg 62  
6.3 Breaking Down an Option 64

6.4 Constructing a Trade 66  
6.5 Option Value Considerations - Delta and Implied Volatility 69  
6.6 Scenario Analysis 71  
6.7 Topic Question 77

# 7. Bootstrapping the Yield Curve 78

7.1 Meet the Curves - Par, Spot & Forward 79  
7.2 Stripping the Yield Curve 80  
7.3 Implied Forward Rates 83  
7.4 Topic Question 87

# 8. Credit - Introduction to Corporate Bonds 88

8.1 Key Characteristics of a Bond 88  
8.2 Trade terms 90  
8.3 Bond Structures 93  
8.4 Topic Question 97

# 9. Credit Risk 98

9.1 What is Credit Risk? 99  
9.2 Z-Spread 101  
9.3 Callable Bond Risk - Option Adjusted Spread (OAS) 103  
9.4 Asset Swap Spread (ASW) 108  
9.5 Topic Question 109

# 10. Floating Rate Notes 110

10.1 Characteristics of FRNs. 111  
10.2 Valuation of FRNs 112  
10.3 Risk 115  
10.4 One of the Few Times I Made Money 116  
10.5 Topic Question 118

# 11. Treasury Inflation Protected Securities (TIPS). 119

11.1 What is Inflation and Why Does It Matter? 120  
11.2 Inflation vs Nominal Bonds 121  
11.3 Just the TIPS 122  
11.4 The P&L of TIPS 126  
11.5 Market-Based Measures of Inflation Expectations 127  
11.6 Topic Question 131

# 12. Mortgage Backed Securities (by Tom Graff @tdgraf). 132

12.1 Introduction 133  
12.2 The To-Be-Announced (TBA) Market 134

12.3 Analyzing MBS 136  
12.4 Collateralized Mortgage Obligations (CMOs) 140  
12.5 Appendix - Some Other Terms MBS Traders Use Not Mentioned Yet 143

13. Introducing Interest Rate Swaps 144

13.1 Plain Vanilla Interest Rate Swap 146  
13.2 SWAP PARTS 1 & 2: The Fixed And Floating Coupon 148  
13.3 SWAP PART 3: Dual Curve Stripping 149  
13.4 SWAP PART 4 & 5: The Fixed & Floating NPV 149  
13.5 SWAP PART 6: The Premium 150  
13.6 PnL and Risk of a Swap 152  
13.7 Special Consideration of the risk profile surrounding Fixings 153  
13.8 Final Points and Ancillary Notes 154

14. Exploring Other Swap Types 158

14.1 OIS 159  
14.2 Asset Swaps 160  
14.3 Total Return Swaps 165  
14.4 Basis Swaps 167  
14.5 Cross Currency Basis Swap XCCY 170  
14.6 Topic Question (courtesy of @shortendtrader): 177

15. Appendix 1: The Cheapest to Deliver Bond of a Futures Contract 178  
16. Disclaimer 183

# 1. Bond Math

$$
\left(\div \times + -\right)
$$

# 1.1 DISCOUNTING, COMPOUNDING AND THE TIME VALUE OF MONEY

The fundamental principle of financial valuation is rooted in determining the value of something today in exchange for the hope of something tomorrow.

"Higher risk [is required for the possibility of] higher reward."

So, if I know the value of something today and with certainty its value the next day/month/year - without threat of that changing - that difference in value is "risk-free". And if the possibility of its value changing is high, that difference in value is "risky".

Bonds are great because right from the start they lay out the potential outcome. You buy at X price; it will pay you Y coupon and at the end you also receive Z principal back. If you are certain those are never in jeopardy, it's risk free. If not, it's risky. So how do we determine the rate at which that outcome plays out? Enter the concept of yield. The easiest to understand is the Simple Yield.

If you invested \$100 today and earned \$5 on that every year, after 5 years you would have \$125.

FutureValue = PresentValue * [1 + (y x N)]

Before you say simple yield is dumb, just know that's the convention for how it is quoted in Japan, one of the largest fixed income markets in the world.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/2a436fb646f6eb11eea5047cc34d055075c1afd0a22f0293195b3edf633a1a0e.jpg)

But bond people are meant to be smart! That \$5 I get, I'm going to reinvest it! This is called compounding. In practice we ASSUME we can reinvest at the same original rate (5%)

On Bloomberg there's an ancient screen called PFI<GO> that lets you look at compounded rates.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/ef24aa26089bbb7a2a9c72850222ca62dc5e70e01bc216d8e0f276d2b71c2963.jpg)

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td><td>G</td><td></td></tr><tr><td>1</td><td>Interest Rate</td><td>5%</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>2</td><td>Principal</td><td>100</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>3</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>4</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>5</td><td>Year</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>End Total</td><td></td></tr><tr><td>6</td><td>Coupon</td><td>$ 5.00</td><td>$ 5.00</td><td>$ 5.00</td><td>$ 5.00</td><td>$ 5.00</td><td>$ 25.00</td><td></td></tr><tr><td>7</td><td>Reinvested Coupon 1</td><td></td><td>$ 0.25</td><td>$ 0.26</td><td>$ 0.28</td><td>$ 0.29</td><td>\$ 1.08</td><td></td></tr><tr><td>8</td><td>Reinvested Coupon 2</td><td></td><td></td><td>$ 0.25</td><td>$ 0.26</td><td>$ 0.28</td><td>$ 0.79</td><td></td></tr><tr><td>9</td><td>Reinvested Coupon 3</td><td></td><td></td><td></td><td>$ 0.25</td><td>$ 0.26</td><td>\$ 0.51</td><td></td></tr><tr><td>10</td><td>Reinvested Coupon 4</td><td></td><td></td><td></td><td></td><td>$ 0.25</td><td>$ 0.25</td><td></td></tr><tr><td>11</td><td></td><td></td><td></td><td></td><td></td><td></td><td>\$ 27.63</td><td></td></tr><tr><td>12</td><td colspan="2">Total Income + Principal</td><td></td><td></td><td></td><td></td><td>\$127.63</td><td></td></tr><tr><td>13</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>

Compounding means one cashflow is grown at an assumed rate for the remaining life of the investment.

$$
F V = P V ^ {*} [ 1 + (y / f) ] ^ {n}
$$

y = annual percentage yield

$f =$  frequency of payouts (annual = 1, semi = 2, etc)

$n =$  number of periods to reinvest. This is directly affected by f.

Note: The higher f is, the higher n is, meaning the compounding effect increases the higher the frequency. This is why in the previous screen Semi-Annual and continuous have higher FVs than 1Y. We'll come back to this formula later!

# Now entertain 2 rules:

Rule 1: All money earned in an investment will be compounded

Rule 2: There is no free lunch

Combining these two gives us the underpinning of forward rates. A forward rate is simply "the rate necessary in order to be indifferent between two investments"

For example:

1. A 12-month investment  $(S_{1})$  at  $1\%$  p.a.  
2. 2 consecutive 6-month investments

Assuming the first 6-month rate  $(S_{0.5})$  is  $0.5\%$  p.a., what is the 2nd 6-month rate  $(F_{0.5,1})$  required for the two investments to be equivalent?

1.  $\mathsf{S}_1 = \mathsf{S}_{0.5}^*\mathsf{F}_{0.5,1}$  
2. 12month = 1.01  
3.  $2 \times 6$ -month = [(1 + (.005 / 2)) * (1 + F_{0.5,1} / 2)] → 2 × 6-month = [1.0025 * (1 + F_{0.5,1} / 2)]

To be equivalent  $>> (1 + F_{0.5,1} / 2) = 1.01 / 1.0025 = 1.00748$

2nd 6-month rate  $= 0.00748 \times 2$  (to make it a yearly figure)

2nd 6-month rate = 0.01496 or 1.49%

Any more or any less, and there's a free lunch.

The process of determining forward rates is called "gapping". On Bloomberg you can use the function (another ancient screen) to conduct Gap breakeven analysis on money market rates.

GA1<GO>

Separate but important to know - T-Bills (short term govt bills  $< 1$ yr maturity) are quoted in annualised discount.

The price of a bill  $= 100 - [Annualised\ discount \times (Days \ to \ maturity / 360)]$

Don't confuse this with "discounting", "discount factor" and the "discount rate" (discussed below).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/e7e9659897ddd5d1bc76b2b1182ef2c04357e8fa089d52e4d61b86fabc63efaa.jpg)

So now we've covered two key points:

1. Compounding - the idea of reinvesting cashflows from investments  
2. Forward rates - the idea of finding investment rates between two differing opportunities such that they are equal in value.

Now, we turn the formula around. So far, we've looked at what my money today becomes in the future, but the question of "what is it worth?" is really "what is the future worth TODAY?"

This is the basis of all capital allocation decisions - where do I put my money today?

Let's first take the compounding formula and flip it around:

$$
F V = P V ^ {*} [ 1 + (y / f) ] ^ {n} \text {f l i p s a r o u n d t o b e c o m e} P V = F V / [ 1 + (y / f) ] ^ {n}
$$

If I know a future cashflow amount (FV) and the rate I'm reinvesting my money in (y), I can figure out what that future cashflow is in today's terms. This is basically how you derive a bond's price based on yield.

The term  $[1 + (y / f)]^n$  is what I am DISCOUNTING the future cashflows by.

If you assume the future cashflow is \(1, then discounting it to present gives me a DISCOUNT FACTOR for every future dollar. We can then easily use this DF to then discount whatever notional value of cashflows we have (i.e., quickly discount any number of bonds we have in a portfolio).

Discount Factor  $(\mathrm{DF}) = 1 / [1 + (\mathrm{y} / \mathrm{f})]^{\mathrm{n}}$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/2e198c4d65f09f9248bd496afa32a31418635d2ba41dbd8c2cf2d57abfdd44b3.jpg)

If you haven't realized by now, y is the discount rate and if you use that to determine bond price then by logic, a bond's Yield to Maturity (YTM) is simply the bond's internal rate of return (IRR) and Price is simply the NPV.

Yes, DCF experts are just wannabe bond guys.

Now let's bring these concepts together:

1. By assuming we reinvest cashflows at a certain CONSTANT rate...  
2. we can use that rate to discount future cashflows to present, so...  
3. this is how we determine the value of cashflows in today's terms.

# 1.2 ACCRUED INTEREST

I think it's worth including this small but important feature of bonds. Most theoretical material assume even cashflow periods out of convenience (no different in this handbook) but most of the time, you're not going to be buying or selling bonds on the  $1^{\text{st}}$  day of the accrual period, and when you don't there is something called accrued interest.

Let's say you buy a bond for 100.00 on Jan 1, and it pays a  $4 \%$ coupon, semi- annually starting from  $1 ^ {\text {st }}$ January each year. That's  $4 \%$ split into 2 payments a year, once on Jan 1 and another time on July 1.

$4\% / 2 = 2\%$ . If you bought  \$250,000 face value of bonds you would receive\$ 5,000 every 6 months.

Every day that you own that bond, you are accruing interest. Assuming 360 days in a year, that's  $\$ 27.78$ a day in coupons you are entitled to. So, what happens if you sold the bond for 101.00 at the end of March? You would be entitled to  $101 \%$ of 250,000 and the coupon you accrued from Jan 1 to Mar 31. That’s 3 out of 6 months or 90 days.

$2\% \times (90 / 180) = 1\% >> \$ 250,000 \times 1\% = 2,500$ in Accrued Interest.

The thing is, you're selling on Mar 31 while the coupon isn't paid till June 30 so there's no way for you to receive the coupon. Instead, the buyer of the bond will receive the full  $2\%$  coupon, even though  $1\%$  is owed to you. So, what happens? The buyer pays you for the bond (101.00) and then also pays you your share of the coupon earned – the accrued interest of  $1\%$ . In total, you will receive  $101 + 1 = 102.00$  from the buyer of the bond.

101.00 is what is called the Clean Price.

102.00 is what is called the Dirty Price.

# 1.3 TOPIC QUESTION

If YTM assumes a constant rate of investment, is the bond price derived from that methodology a true reflection of its value? Hint: think of the shape of the yield curve.

Because YTM assumes a constant discount rate while the yield curve is typically curved, the cashflows of a bond should actually be discounted at different discount rates implied by the yield curve. YTM provides you with a convenient and quick value of a bond but is not the most accurate.

# 2. Interest Rate Risk, Its Calculation and Application

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/5b0962c80917c19c51b04ab6ee4c9e9fc7a0f083c2318cd135e4f35d4422c3d8.jpg)

In this topic we discuss interest rate risk and how to measure it. What is interest rate risk?

Simply put, it is the risk of a change in the present value of a bond caused by the change in interest rates. In order to understand risk, we must first look at how a bond is valued. We just covered the PV formula and how to discount cashflows to present value.

$$
P V = F V / [ 1 + (y / f) ] ^ {n}
$$

Because a bond is a series of future cashflows, the value is simply a sum of all cashflow PVs. So, let's use this approach and back out bond prices using the Yield to Maturity concept.

*Bonus tip: you can use HCS<GO> function on Bloomberg to quickly calc stuff!

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/15eb2f85726a06ba0d945ceeeb10ce68860ed439033d5236ffec08a297ff0400.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/7576985b4d142201c5b9991e58fc47518ffebad3f7123bbd1a4c31d5fbe7a812.jpg)

We mentioned that YTM assumes reinvestment of the coupons at the same rate. But isn't YTM used to DISCOUNT the cashflows? Why is reinvestment of coupons a key assumption here? Basically, to close a loop in the YTM formula.

If I invest at  $5\%$  and discount at  $5\%$  the cashflow value at  $t = 0$  will remain consistent. This is why the part about forward rates is important – any other rate results in a differing investment proposition. Often, this logic is not mentioned in conjunction with the assumptions, but it should be a mandatory piece of bond math education.

Let's use an example:

1. Suppose a 2-year UST pays a  $0.125\%$  coupon and matures exactly 2y from now.  
2. 2y yields trading in the market are at  $0.25\%$ .  
3. Because USTs pay semi-annual coupons, we will receive 2 coupons a year >> 0.125% / 2 = 0.0625%

We will receive a total of 4 payments  $>> 2 * 2 = 4$  with the final coupon coming with the principal.

Now, we can compute the value ourselves using the formulas and then we can also use a system like Bloomberg to calculate it for us and see that they are the same.

What is the value of the 2y UST using a formula?

1st Cashflow  $= 0.000625 / (1 + 0.00125)$

2nd Cashflow  $= 0.000625 / (1 + 0.00125)^{2}$

3rd Cashflow  $= 0.000625 / (1 + 0.00125)^{3}$

4th Cashflow  $= (1 + 0.000625) / (1 + 0.00125)^{4}$

Sum of Cashflows  $= 0.997508$  which in percent terms is 99.7508

Using Bloomberg, on PRPL<GO> you can create your own custom bond. We set the maturity to be 2 years from today (in the screenshot the first settle date is 06/22/2021 and the maturity is 06/22/2023. Once done, just save the security.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/59825adcfb8fdbf6d81cabb772d44a6805d1e9d786cf6b1a588cb33a913cefa8.jpg)

We can take the custom bond we created and pull it up on YAS<GO> to see the price is the same. So here we have a practical example of how real-world systems are built using the same bond math introduced to you thus far.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/944c82f9fba780911001344479123680dbb6c05a6e58f7ce95d551a7663072c2.jpg)

Now let's take a step further and see how the value of a bond changes if the yield changes. If I change the yield to  $0.26\%$ , I get a price of 99.730875; a difference of  $-0.019904$ . If I change it to  $0.24\%$ , I get a price of 99.770688; a  $+0.019909$  difference.

Between a 1bp change up and down, there is a range of (99.770688 - 99.730875) = 0.039813

The range of 0.039813 over 2bps (1bp up, 1bp down) equates to a change of 0.0199065 per 1bp.

Using that rate of change per 1bp, if I change the yield to  $0.22\%$  (3bps lower) I should get a price of roughly 99.8105  $[99.750779 + (0.0199065 * 3)]$ . Indeed, it matches what we see on Bloomberg!

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/5a2c31950fd5d75f15e3251bb7e6dc50d174fe03b3d2356426c2e64cab1fcc37.jpg)

Let's say I change the yield by  $+1\%$  (i.e., 100bps) to  $1.25\%$ . Price should be roughly [99.750779 - (0.0199065 * 100) = 97.76013] but in reality, we can see Bloomberg calculates it as 99.784722. We're off by 0.0247 now – our previous estimate on 3bps change in yield was only off by 0.000021. What happened to cause our estimate to get less accurate?

You see, when we discount the cashflows it's this sucker

$$
1 / (1 + y / f) ^ {n}
$$

that plays a big part. The denominator (lower part of equation) is what changes the value but increases in it have a marginally smaller impact on it than decreases in it. This is known as convexity. You can see in the graph that the change in price does not have a linear relationship – it is curved.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/aa66b629ec63ca2a4800e9755369434b99a78dbcc59511e0e50dfbf4be3878ea.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/04f3df053d8330f8f5ced3e99209e377617aa7ad76de425a7a5de7eeded0913d.jpg)

We'll touch on convexity later but for now just know that this curvature in the relationship of prices and yields is why the difference in estimates grows with a larger change in yield.

Something I observe in my career in finance is that market conventions are often built around maximum efficiency with acceptable accuracy, YTM is one example. Another is the concept of measuring IR risk through duration and PV01 or DV01.

The average daily change over the last 21 years in the US 10y yield is -0.0844 BASIS POINTS. My risk today, is largely confined to reasonably expected changes and is why linear approximations like DV01 and duration are market standard for day-to-day risk management despite the existence of convexity.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/0b27c07c648e0d83165cb20dd47d8c1da1137eeccf78eb799ecf54307ba4e09a.jpg)

# 2.1 DURATION

When we talk about duration, we really mean Modified Duration. It's the percent change in Price for a  $1 \%$ change in yield. Macaulay duration is pretty much useless in everyday bond trading. However, you'll often hear people say something like “I'm running x number of years duration”

$$
\text {M a c a u l e y D u r a t i o n} = \frac {\sum_ {t = 1} ^ {n} \mathrm {P V} \left(\mathrm {C F} _ {t}\right) \times t}{\text {M a r k e t B o n d P r i c e}} = \frac {\sum_ {t = 1} ^ {n} \frac {t \times C}{(1 + Y) ^ {t}} + \frac {n \times M}{(1 + Y) ^ {t}}}{\text {M a r k e t B o n d P r i c e}}
$$

This is a general reference to the risk of your portfolio. The simplest (and still somewhat wrong) way I can describe Macaulay duration is "the number of years until your investment breaks even at current yields".

- Because you earn coupons that you reinvest, Mac. Dur. is always lower than maturity. (You breakeven sooner)  
- And because zero coupon bonds give zero coupons, Mac.Dur is always equal to maturity.  
- And because negative yielding debt means you LOSE money, negative yielding bonds have GREATER Mac.Dur than maturity!!

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/defc77489abbec1c3441b912c07ed6232e96babc4229a3f548f5d4526c873bdf.jpg)

If you think about it this 'time to investment breakeven' perspective, it makes sense then that a higher coupon means lower duration, a higher yield (lower starting price) means lower duration and vice versa.

To get modified duration, you simply take the Macaulay duration and divide it by  $(1 + y / f)$ :

# This is the derivative of  $P$  with respect to  $y$ :  $dP/dy$

Modified duration is the delta of a bond. Graphically, it is the tangential line on the curve that represents that specific point's slope. It is an approximation of the rate at which a bond's price changes with a change in its yield.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/0be5e3721e77682aad1b1ba784b86e82328012c9c7359a3527b090c67d9730a3.jpg)

But remember, bond yields typically move in basis points not percentages each day. If I know the  $\%$  change I just multiply the Mod.Dur with Price and divide by  $100(1\% = 100bps)$  to get the PV01.

PV01 stands for the Price Value of 1 basis point change. PV01 = (Price x Mod. Dur) / 100. This is the unit risk in bond price for every 1bp change in yield.

Take the PV01 and multiply by the notional amount of your investment to get the DV01 = PV01 × Face. DV01 stands for

Dollar Value of 1 Basis Point Change. This is the dollar unit risk in bond value for every 1bp change in yield.

Face in the bond world means the notional amount of bonds you are buying. \$1 million face at a price of 101 is equal to a principal value of \$1,010,000. So, a PV01 of 0.01942 results in a DV01 of $194.2 per $1 million face. DV01 is useful because while the price may be 101.50 my actual investment could be \$250,000 worth. It's more meaningful to me to know that for my \$250k bond, I have \$48.55 at risk for every 1bp move in interest rates.

When you see a comment about DV01, know now that they're talking about how much money will be made or lost with each basis point change in rates.

Convexity is the last part, and hardly touched on in everyday conversation about bonds. However, it is vastly important in portfolio management of a fixed income portfolio. In fact, convexity is a bond investor's BEST FRIEND (most of the time). Why? I covered earlier how the price to yield relationship is convex.

Recall: Increases in yield decreases price LESS than decreases in yield increases price. This is why people “pay for convexity”. In a large enough shock to rates, duration will overestimate drops in price and underestimate gains due to convexity. This is the reason why when running a bond portfolio, you need to dynamically hedge your interest rate exposure. As interest rates don’t move a huge amount in short periods, day traders would be less concerned about convexity than someone running a fixed income portfolio.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/a0e40fd1396a994016adfea0c84fa72a50cb1877a14d112720b68fcdd52c2d74.jpg)

The last point is that if you look at the payoff curve, the convexity effect results in higher yields with lower duration (the tangential line is less steep) and lower yields have higher duration. This is partially the reason why high yield bonds don't hurt as much as investment grade bonds do when rates shift violently (assuming spreads don't change a lot).

Lastly, let's wrap it up in the YAS<GO> screen where you can see a bond's risk characteristics. The PV01 field can be toggled to DV01 which will then display the DV01 per Face value denoted in the invoice section.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/45950310695fdda4d5a436f33a32ea4c0d90b6368c0f6aea2ac9edc03156ac1e.jpg)

That's about it for Bond Math. It's one of the dryer parts but knowing your bond math to the core is essential to understanding how things move in the bond market and why. Once you understand how to price and quantify risk in bonds, the day-to-day movements as well as trade construction starts to make sense.

# 2.2 TOPIC QUESTION

In the Bloomberg screen, what is the Risk value listed under Modified Duration and how is it calculated?

Risk = Modified Duration x Dirty Price. The important distinction here is to use Dirty Price. Yield to Maturity assumes dirty pricing which is Clean Price + Accrued Interest. So, the idea of Risk is to give you the $risk to bond price of a 1% change in rates. In the simplest sense, it is PV01 x 100.

# 3. Money Markets and Forward Rates

Now that we're done with bond math, we can start moving into actual products that are traded in the market. Keep the math in your back pocket though because it's an essential part of understanding the mechanics involved.

Simply put, the money market is any instrument in the fixed income space that trades with a maturity of 1 year or less. Things like Treasury bills, commercial paper, certificate of deposits, banker's acceptances, Forward Rate Agreements and FinTwit's favourite – Repos.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/4aef6a77ac973be3fdcd7acc89e501f9958900498b9e46c91eaefa2da95ad46e.jpg)

There are many other people that are massively more informed than me on money markets, any pro out there trading STIRs is already miles ahead as I am just a tourist.

Some names to follow on Twitter are @arishisays, @magnusmacro, @stirboi, @shortendtrader, @joegilster

# 3.1 T-BILLS

Let's start with T-Bills. As previously mentioned, bills are quoted on a discount basis. So,  $1\%$  is not a  $1\%$  yield but it is an annualized discount:

$$
P = 1 0 0 - \left[ \left(D a y s t o m a t u r i t y / 3 6 0\right) ^ {*} D i s c u n t ] \right.
$$

On the current 3-month T-bill there are 90 days to maturity:  $90 / 360 = 0.25$

The discount quoted is 0.0325:  $0.25 * 0.0325 = 0.008125$

$$
\begin{array}{r l} \text {P r i c e} & = 1 0 0 - 0. 0 0 8 1 2 5 \\ & = 9 9. 9 1 8 7 5 \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/bf6794a9f292b295263f3333ab3ca62a56862e90d0fb124930c88f873068f49e.jpg)

You may have noticed date conventions like 30/360, Act/360, ACT/ACT. What do they mean? They're date conventions for how you calculate yield and interest earned. The first part is how you count the days in a month (actual vs 30), the 2nd part is days in a year (actual vs 360).

Fun Fact: In general, commonwealth counties (UK, Singapore, Australia) follow ACT/365 while non-commonwealth countries like the US follow ACT/360 convention when it comes to bills.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/b72792e3195caeb6549b57ebc89f8b31115f0b349b2f2a7034a3318d4a30e9ec.jpg)

Commercial paper is also quoted on discount, typically in lots of 100,000 USD. They can be dealer placed via banks or directly placed by the issuer themselves. Think: Ford issuing a CP where you lend money to them in return for interest. There is no collateral.

# 3.2 SHORT TERM INTEREST RATES (STIR) AND RISK

The Fed Funds Rate is unsecured lending costs between banks on excess reserves on an OVERNIGHT basis. The Target Rate is the Fed's objective, and the Effective rate comes from actual transactions between banks. As they're on reserves at the Fed and lent overnight – they're super safe.

The ECB has three traditional tools they use to set policy rates – the refinancing rate which are set via weekly auctions of 2-week repos, the deposit facility rate in which banks make overnight deposits with the central bank and the marginal lending facility which is somewhat equivalent to the Fed's discount window. You don't want to be seen anywhere near that window.

In the very first topic I defined the risk-to-reward relationship as "Higher risk [is required for the possibility of] higher reward." Risk exists in many forms: interest rate, credit, reinvestment, liquidity, FX, inflation, political, etc.

In just about every instance time increases each and every one of these risks. You don't worry about inflation tomorrow; you worry about its effects next year and onwards. You don't worry about rates rising enormously if your investment matures in a week, but you would if it had 10 years left. The shorter the maturity, generally the lower the potential risks. This is why money markets are considered "safe" and effectively cash or "cash-plus". But what happens when they're not? That's where it gets interesting!

Yeah, you know what I'm talking about. That day in September. Seems like it was just yesterday, right? Yeah, that's right I'm talking abou- what? No, not repo madness. I'm talking about Lehman collapsing you idiot.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/45a0b8678f77cde6fec0e5f4a16a2873d7aad594358ed3e8ddecb526df9430db.jpg)

That is the 1-year basis swap between 3M LIBOR and 6M LIBOR. To me, it perfectly encapsulates how the financial industry has never been the same since GFC (admittedly, there a number of reasons and interbank risk is just one). What is it saying? Simply, banks were worried about lending to each other in '07 but once Lehman collapsed in September 2008 no one was safe.

You see, in the past the probability of one bank surviving the next 6 months was the same as them surviving the next 3 months. In 2008, that was not the case. This meant a bank getting funding for 6 months suddenly became much more expensive than getting funding for 3 months.

What is LIBOR? The London InterBank Offer Rate (LIBOR) is basically derived from a ratchet-survey of reasonable rates that one bank would eellude with lend to another on the London money market. It effectively captures interbank credit risk. The higher the risk, the higher the banks are going to quote the interest rate in the survey. This is what Eurodollars are based on. It is being replaced by other rates, such as SOFR in the U.S.

Why are they called Eurodollars? It has zero to do with euros & everything to do with USD. A Eurodollar is any USD debt instrument issued OUTSIDE the US. A USD bill in Japan is technically, a Eurodollar as is a USD bond issued in China that everyone is waiting for to default.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/eee9af9c848ca4e9fa8e04afd480c2b151f6de9cfef08df827740bd3de6d9ee6.jpg)

So, if LIBOR is captures interbank risk, we can look at its spread against a risk-free rate like the 3-month T-Bill. There's very little chance right now where the US collapses in the next 3 months. Assuming that, I can track the spread between Libor and T-Bills: the TED Spread

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/21804a78ab0f8035a34556a1a4788e4abb677b3bb18a41da517b613c8f6f082f.jpg)

The TED spread still gets quoted but most of the market now quotes the LOIS, aka LIBOR-OIS spread & the FRA-OIS. What is the difference between the two? LIBOR-OIS is just the spread between current 3M LIBOR and current 3M OIS rates whereas FRA-OIS is traded via swap and is the spread over the OIS leg of the swap. Don't worry about mechanics now but essentially, it's current risk of the interbank market (LOIS) vs expected risk of the interbank market (FRA-OIS).

Remember in the first topic we talked about forward rates? That's what an FRA is – a Forward Rate Agreement.

Example:  $\mathsf{FRA}_{3 \times 6} =$  to borrow at 3 months from now, maturing 6 months from today. So,  $6 - 3 = 3$  months. You are striking a deal for the 3-month rate, 3 months forward.

What is OIS? It stands for Overnight Index Swap. What is it based on? The Fed Funds Rate. Because Fed Funds is for unsecured overnight lending, you can enter into a swap agreement whereby you pay a fixed coupon in return for receiving the overnight rate. Because it's based on FF, which are overnight, it's very safe. The OIS swap also sees no exchange of notionals, so the counterparty risk is also very low. This is why OIS is considered risk-free, but we'll get into swaps at a later stage.

We covered how to calculate forward rates under a no-arbitrage scenario – if you have the 6-month lending rate and the 3-month lending rate, you can calculate the 3 month rate, 3 months forward such that investing for 6 months vs

[3months X 3months] are equivalent.

Use SWPM -FRA<GO> to price an FRA on the terminal.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/8b57aa29b7edd0e129fab2f92b927183174a82f5b011981f5382bdc0ca23776e.jpg)

Most of you would be more familiar with Eurodollar futures (ED). Eurodollar futures are futures contracts on LIBOR fixings for future dates. The quote on an ED contract is 100 - yield. So EDZ1 as of Friday June 25th, 2021, was 99.790, indicating a yield for Dec '21 LIBOR of  $0.210\%$ .

In this case, buying(selling) an ED contract means you think the yield will go down(up). Thus, buying an ED future is the same as to lend FRA and to sell ED is akin to borrowing on FRA. You are aiming to lock in future yields higher(lower) than you are lending(borrowing).

As EDs get phased out due to the retirement of LIBOR, the market will shift to SOFR futures. Perhaps in a future revision we will cover them more but for the most part, they are functionally the same as ED in design. The same goes for Fed Funds 30-day futures contracts; all three are quoted in price as 100 – yield.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/c41fd41605d31bdda3c26a21761654240981a9594f4f5d96fc3297d3598d7490.jpg)

# 3.3 REPOS

Repo is short for repurchase agreement. You give collateral in return for cash, agreeing to repurchase your collateral later on. It is, therefore, a SECURED lending rate.

Because it's a temporary arrangement, ownership is not transferred - repos are thus treated as loans.

The way it works is like this: You have  \$1MM of US Treasury Bonds (UST) but you want cash instead. You go to the repo market and post your UST as collateral, receiving\$ 1MM of cash and 1wk later you buy back the UST but at a higher price. The %diff btw selling and buying back the UST is the repo rate.

The opposite way is a Reverse Repo (RRP) where you lend cash in return for collateral with the agreement to sell the collateral back to get cash in the future. They are two sides of the same coin.

Recent example? The Fed's reverse repo facility that you hear about so much about. In this scenario the Fed is counterparty and institutions like money market funds are the dealers in the RRP – they are lending cash for treasuries and selling them back to the Fed for a gain.

The Fed recently set the RRP rate at  $5bps^{iv}$ . Why? So that the theoretical floor for short term rates is  $0.05\%$  - any lower than that and you would go to RRP. The lack of demand elsewhere should push up those rates to at least  $0.05\%$ .

For a much better explanation on the Fed's RRP, look for Rishi Mishra's excellent breakdown.

https://twitter.com/aRishisays/status/1392211076687667202

When you need cash and go to repo, your counterparty could say your UST sucks. If you want \$1MM in cash, you need to give more than 1MM worth of UST. That is called over-collateralization. The other method is called a haircut, where the market value of your UST is discounted.

Over-collateralization and haircuts are the inverse of the other.  $1\%$  overcollateralization  $= 1 / 1.01$  haircut on the collateral. So, a  $1\%$  haircut means 1MM all-in market value of UST gets you 990k of cash. If you wanted 1MM in cash, you would need to post 1.01MM market value of UST.

What is when a bond goes "special"? Remember, if you have UST and you want cash you have to pay interest on that loan. But what if there is HUGE demand for USTs? In that case, there is a ton of cash looking for bonds and are willing to receive a lower interest rate.

At some point the demand for UST gets to a stage where the interest rate becomes negative. You get give 1MM of UST, get 1MM of cash and later on buy back the bond for less than 1MM.

# When the rate is negative, the bond used as collateral trades "special".

I don't want to go much further into money markets - Any deeper and it gets somewhat esoteric & there are better-equipped people than me that understand this market much better. I implore you to follow the twitter accounts I listed in the earlier part of this chapter.

Money markets are essential to financial markets and underpin everything from fed policy to the swaps market. Understanding how this area of the market works hopefully puts some context into a lot of what you read here on finwtit and the all-too-often doomsday headlines :)

# 3.4 TOPIC QUESTION

If you are going to trade a view on LIBOR and have to choose between an FRA on 3M LIBOR or ED futures - what is the key difference you must factor in between the two? Hint: I'm looking for answers on VALUATION between the two, not technical (OTC vs Exchange)

You must consider the convexity (or lack thereof) between the two instruments. ED futures are linear instruments with a fixed DV01 of \$25 per bp. FRAs on the other hand are discounted cashflows and therefore subject to convexity as yield changes. Depending on your view of changes in rates and/or whether or not you are hedging using these two instruments, the convexity effect must be considered.

# 4. The Yield Curve (Authored by @macropotamus)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/febf0adebf47ddb7983511cca4c6ebaa0f8147cfc9ac0acb385c928cda0ac5b0.jpg)

# 4.1 WHAT IS A YIELD CURVE?

We often hear people talk about the yield curve, and even more often when it is inverted. But why is it important? What does a normal yield curve look like? What drives the shape of the curve?

Simply, a yield curve is a line showing the yields of bonds of different maturities. The bonds used to construct the yield curve have the similar credit equality (e.g., BBB curve) or come from the same issuer (e.g., US Treasury). In Bloomberg, you can load the US treasury active curve with GT10 Govt GC<GO>. Typically, a yield curve is upward sloping. It can also be flat, inverted, or twisted (rare). We typically divide the yield curve by three major buckets: front-end (0-3y), belly (3-7y), and long-end  $(7y^{+})$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/42456ed152ef69b0fd5878489cd65aa7db645cc2a934140e965a51ee2488fb2f.jpg)

<table><tr><td>Curve Id</td><td>1M</td><td>3M</td><td>2Y</td><td>5Y</td><td>10Y</td><td>20Y</td><td>30Y</td></tr><tr><td>1) I25 Last</td><td>0.047</td><td>0.049</td><td>0.265</td><td>0.921</td><td>1.527</td><td>2.084</td><td>2.155</td></tr><tr><td>1) I25 1M</td><td></td><td>0.010</td><td>0.143</td><td>0.800</td><td>1.596</td><td>2.198</td><td>2.284</td></tr><tr><td>1) I25 1EOY</td><td>0.043</td><td>0.072</td><td>0.122</td><td>0.362</td><td>0.916</td><td>1.442</td><td>1.646</td></tr><tr><td>1) I25 (Last-1M)</td><td></td><td>3.9</td><td>12.2</td><td>12.0</td><td>-6.9</td><td>-11.4</td><td>-12.9</td></tr><tr><td>1) I25 (Last-1EOY)</td><td>0.4</td><td>-2.3</td><td>14.3</td><td>55.9</td><td>61.1</td><td>64.2</td><td>50.8</td></tr></table>

The yield of a longer-term bond (e.g., 5y) reflects short-term spot and forward yields (1y, 1y1y, 2y1y, 3y1y, 4y1y) and thus the (market) expectations for the short-term interest rate path. Currently, interest rates are expected to increase over time which you can observe through forward implied rates on

# FWCM<GO>

As maturity increases, interest rate (duration/volatility) risk increases as well. To compensate for the increasing risk, investors earn a risk premium (higher yields) by holding longer-term bonds. On the other hand, increasing positive convexity

(noncallable/make-whole), better investors demand for longer bonds (10y, 20y, 30y) lower the long-term bond yields. That is why a yield curve is typically steeper in the front and flatter in the back.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/aced789cb53ce764972b6597e3d1a24df7dc60fc98d4050d7e0270012b957e7b.jpg)

If you are long bonds, positive convexity means you make more when interest rate decline by a certain amount (e.g., 20bps) than you would lose when rate goes up by the same amount. And you want to own convexity if you expect rate volatility to exceed market expectations.

To quickly gauge the market expectations for volatility, you can look at MOVE or SMOVE index, which is the curve-weighted *normalized* 1M implied volatility.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/9302035e35d4347507552ca8794788367854969f45c7bd9d977f13379a72cb6f.jpg)

You can also enter VCUB<GO> to look at the ATM normalized implied volatility of the interest rate swaptions of different expiry (vertical) for different bond tenors (horizontal). As you can see, as bond maturity increases (left to right), volatility increases. And as the option maturity (up to down) increases, volatility increases up to a point before market expectations for mean-reversion kicks in.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/13c43c235fd0fc953b18ff47198f37226a6f1e61b27c4b383fdb818fd08e8cf5.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/419f857f1dfd0e5189da2aa89f40b89b7bd81fd46198dd2ba19d7800ef896466.jpg)  
4.2 BREAKING DOWN THE CURVE - CURVE AND BUTTERFLY SPREADS

OK, so the yield curve is typically upward-sloping, so what? Well, investors love to look at the yield curve to understand (and sometimes predict) economic cycles. They typically look at different term spreads, for example, between 10y and

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/08a94614c716c91efac61cd138e07736d7f0f67d535291c58312ed34184ff74a.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/ecd072626c6c830e6f545906a6766693593b72270efc68c22894de687d20ae31.jpg)

2y bonds (2s10s, BBG: USYC2Y10 Index), to look at economic cycles. You can see the reason why an inverted curve gets so much attention as inversion typically happened before a recession in the past.

Investors also evaluate the evolution of the yield curve by looking at the butterflies, which comprises of three maturities/tenors. For example, a 2y5y10y fly (BBG: BF020510 Index) is the yield spread of 5y (x2) - 2y - 10y. In this case, the 5y is the body, and 2y and 10y are the wings. The chart below shows 3 different butterflies. When the butterfly spread goes up, the body underperform the wings.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/f174954a6b75ded6d6a5824a18981d067e63e1cfbb0892a61a18e2132672a339.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/d0ab1c7cef3352739c674504f976f07113d791907a43a3aee81fecff9fcf0683.jpg)

# 4.3 CARRY & ROLLDOWN - HOW THE CURVE AFFECTS YOUR INVESTMENT

So, what does the shape of yield curve mean for your bond investment? When the yield curve is steep, long bonds are very attractive because of the carry and rolldown. Carry is simply the income return of your long bonds over cash or short-term securities (T-Bills). When the yield curve is steep, the financing or opportunity cost (LIBOR + spread, repo, T-Bills) is lower than the yields of longer bonds, and you can earn excess returns by "carrying" the longer bonds.

However, when we talk about carry in practice, we look at it as a breakeven measure in yield terms. It tells us how much yield can go up before we lose money on a financed bond position over our holding period, e.g., a year. In this

example, your 1Y carry is 21.7bps. This carry in yield term is the difference between the forward (1Y4Y) and settlement rates ("Yield Drop" in FPA <GO>), derived with arbitrage-free assumption.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/914b0c4f881eb3b72cca9ea3a4e657188720b35aa1b62d946be114251928fc30.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/3ce3d18aa0a45bfc9c87fba26195220ecf8cac94d9e16aba94f92e41c88b7b53.jpg)

The forward rate is your breakeven yield, assuming no shift in curves, and over the next year, the yield on your bond has to exceed the breakeven level (1.109%) in order for you to lose money.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/a281f915752b2d4badefa3282dc81e33296d8e6cdfce6b7dfbd0316ef92858e8.jpg)

Rolldown is your return as your long bonds get shorter on an upward sloping yield curve. Here, a 5y bond yielding  $0.893\%$  will become a 4y bond in a year, and if the yield curve stays the same in a year, you can sell your bond at  $0.682\%$  (higher price) with a rolldown of 21.1bps.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/a4af52f279ffb9d75e8c4c12726c15889a85f749113d24d98d25dc6b84ac58c0.jpg)

You are "rolling down" the curve as you sell the shorter bond at a higher price and reinvest the proceeds in a longer bond at a lower price. You can also think of rolldown as the rise in yields over the holding period that would eliminate the rolldown effect.

So, carry & rolldown are powerful. Where can we easily see them? We can use CARY <GO> to look at the swap curves. Typically, the levels and shapes are not meaningfully different from the govt curves, with differences (swap spreads) driven by demand for hedging, credit risks, etc.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/83df120e49f6e8321f0c4459cc219bb9a1ffb2d0196211914d7ffdc62935522e.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/e2fc71bdd3bb8f4cb59f4f7619750eb3bb8da6612625b34a2936ff35d22f99c6.jpg)  
Additionally, you can see Carry and Roll of sovereign bonds through the GOYy<GO> function on Bloomberg

# 4.4 TRADING THE YIELD CURVE - STEEPENERS & FLATTENERS

So how do we trade the yield curve? Say if you think the 5s10s curve (56bps) is still too steep and expect it to flatten more than the forwards (44bps). How do you structure the trade? You can be buying the 10-year and selling the 5-year, either with cash bonds or futures. And typically, we want to take out the interest rate risk (DV01/duration neutral), and there is an easy Bloomberg function for this: FIHG<GO>.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/6999a39111100d7bb44a9962bb54cf425bc00b06c34e6c62f14aa91c3d5c5bec.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/b18ff0dc7a52b6d866b62685f62698918572f68b0d0d0b8044dff97a1ca690d3.jpg)

Here, say you want to buy 10MM Par of the OTR 10y, to hedge the duration, you will borrow and sell short about 18.97MM Par of the OTR 5y. Your spread DV01 (BPV) is about \$9,255. Or you can sell 5y futures (FV) instead.

In practice, I prefer using futures for short positions if there is no dislocation in basis (DLV <GO>) making futures unusually cheap compared to cash. The disadvantage is that you need to keep rolling your futures to maintain a position. We also consider capital efficiency.

Here is long cash 10y and short 5y (FV futures) - the BPV does not match perfectly (\(22/bps), you can match the futures DV01 by entering (9,277) in the BPV field, and it will show you the exact par amount for the cash 10y.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/c54569ee368e7d68c220d82a5c68d69a02db237070b20c9f7f974da3744974c9.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/c5335ed89f8d9f52cec57a8d9a89837698a85b393039aaff86da9ef96debfb9f.jpg)

Here, we are trading the curve with futures only. I use the ultra 10y UXY futures instead of 10y TY futures because it better expresses my view (5s10s) instead of (5s7s). The CTD bond of UXY is a 2031 bond (10y). The CTD bond for TY is a 2028 bond (7y)

<table><tr><td>TYU1 ↓132-16+ + 08 γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γγ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ γ δ</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>At 11:45 Vol 789091 Op 132-09 Hi 132-17+ Lo 132-06 OpenInt 4296033</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>TYU1 Comdty Export Settings Cheapest-to-Deliver US 10YR NOTE (CBT)Sep21 Price 132-16+ Trade 06/30/21 Delivery 09/30/21 Sort By Settle 07/01/21 Cheapest IRP -0.002 Implied Repo Decreasing Prices in Decimals Days 91 Act / 360</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="9">Cash Security Source Conven GRO/Bas Implied↓ Repo% Actual Repo% Net/Bas (32nds)</td></tr><tr><td colspan="9">Adjust Value</td></tr><tr><td>1) T 2 7s 05/15/28</td><td>111-06+ BGN</td><td>1.1733</td><td>0.8338</td><td>22.771</td><td>-0.002</td><td>0.061</td><td>0.572</td><td></td></tr><tr><td>2) T 2 7s 08/15/28</td><td>111-10+ BGN</td><td>1.2105</td><td>0.8286</td><td>48.822</td><td>-2.865</td><td>0.061</td><td>26.436</td><td></td></tr><tr><td>3) T 1 1s 05/31/28</td><td>100-1114 BGN</td><td>1.1968</td><td>0.7474</td><td>41.900</td><td>-3.932</td><td>0.061</td><td>32.451</td><td></td></tr><tr><td>4) T 1 1s 04/30/28</td><td>100-1334 BGN</td><td>1.1843</td><td>0.7474</td><td>44.400</td><td>-4.239</td><td>0.061</td><td>35.006</td><td></td></tr><tr><td>5) T 1 1s 03/31/28</td><td>100-16 BGN</td><td>1.1727</td><td>0.7474</td><td>46.650</td><td>-4.501</td><td>0.061</td><td>37.202</td><td></td></tr><tr><td>6) T 3 1s 11/15/28</td><td>113-07+ BGN</td><td>1.2408</td><td>0.8376</td><td>71.657</td><td>-5.106</td><td>0.061</td><td>47.490</td><td></td></tr><tr><td>7) T 1 1s 06/30/28</td><td>100-0814 BGN</td><td>1.2115</td><td>0.7395</td><td>72.400</td><td>-7.708</td><td>0.061</td><td>63.004</td><td></td></tr><tr><td>8) T 2 5s 02/15/29</td><td>109-25 BGN</td><td>1.2746</td><td>0.8039</td><td>104.062</td><td>-9.333</td><td>0.061</td><td>83.663</td><td></td></tr><tr><td>9) T 2 3s 05/15/29</td><td>108-01+ BGN</td><td>1.2964</td><td>0.7836</td><td>134.644</td><td>-13.218</td><td>0.061</td><td>116.385</td><td></td></tr><tr><td>10) T 1 5s 08/15/29</td><td>102-13 BGN</td><td>1.3117</td><td>0.7320</td><td>172.954</td><td>-19.277</td><td>0.061</td><td>160.496</td><td></td></tr><tr><td>11) T 1 3s 11/15/29</td><td>103-11+ BGN</td><td>1.3247</td><td>0.7331</td><td>198.789</td><td>-22.073</td><td>0.061</td><td>185.453</td><td></td></tr><tr><td>12) T 1 1s 02/15/30</td><td>101-04 BGN</td><td>1.3612</td><td>0.7105</td><td>223.125</td><td>-25.767</td><td>0.061</td><td>211.658</td><td></td></tr><tr><td>13) T 0 5s 05/15/30</td><td>93-19+ BGN</td><td>1.3932</td><td>0.6462</td><td>255.289</td><td>-33.034</td><td>0.061</td><td>250.806</td><td></td></tr><tr><td>14) T 0 5s 08/15/30</td><td>93-10 BGN</td><td>1.4086</td><td>0.6382</td><td>279.713</td><td>-36.368</td><td>0.061</td><td>275.188</td><td></td></tr><tr><td>15) T 0 7s 11/15/30</td><td>95-0734 BGN</td><td>1.4189</td><td>0.6476</td><td>301.602</td><td>-38.205</td><td>0.061</td><td>295.149</td><td></td></tr><tr><td>16) T 1 1s 02/15/31</td><td>97-07+ BGN</td><td>1.4336</td><td>0.6577</td><td>322.523</td><td>-39.809</td><td>0.061</td><td>314.028</td><td></td></tr></table>

What happens now that you have initiated your trade, what would your PnL look like? Let's take a look at it. In FISA<GO>, we look at what happens in 3M, 6M and 12M. In the FISA chart, "Target Horizon Yields" assume a parallel shift in the yield curve. For example, in the -20bps scenario, it assumes your 10y and 5y bond yields decline by 20bps. The High/Average/Low "Historical Spreads" are calculated over the past year.

This is how your PnL look like if you put on a flattener over the next 3, 6, and 12M. Especially interesting is that if the spread stays about the same, you are going to lose money after 6M and a year as you can see under "Historical Spread" – Low Scenario.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/cc9c9ab2455a34e8f47a39231b8ac8d7f27ddf4490f4e16fe6c0ad836ecbcdbc.jpg)

And in “Target Horizon Yield” scenario, you need the curve to flatten  $>16$  bps in a year to breakeven as your position becomes a 4s9s flattener. The whole curve is effectively flatter assuming little decline in yields in the front end.

Another important point is that when you put on a bond trade, you will have to be right on both your direction, magnitude, and timing because you have to overcome the carry and rolldown of your trade. In the case of 5s10s flattener over a one-year horizon, you have a negative carry of 4.2bps, and negative rolldown of 12.9bps.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/4adfb20e1b64a70428e75c8f260a2c0222e9f6d5bfffbcc0ba2488457417a641.jpg)

Another function you can find your hedging need for your curve trade is FIHR<GO>. It gives the hedge amount you need to trade to match primary position. Here, we assume a yield beta of 1, that means you expect the movement between your primary and hedge positions to be 1:1.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/e7baa63d2585e88d2147f25b8588262a9992db212951f12c805d0d1b54c293b6.jpg)

Assuming yield beta of 1 is typical when you are considering a curve trade. Here is the look at the cash bond hedges.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/694e7096f42c8bb905b81830e1362a5f25b1c1b8f2c81d10727c34ef4eaffeaa.jpg)

# 4.5 TRADING THE YIELD CURVE - BUTTERFLIES

OK, now let's say you think the yield curve is going to twist and do a positive butterfly, i.e., you expect yield in the belly to outperform the front- and back- ends. For example, you believe the 5y to outperform 2y and 10y, and that

2y5y10y (BBG: BF020510) will decline, and you want to structure a trade to express a view, you can run BFLY<GO>. You can trade them with cash bonds or futures.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/720bb9de9758c860c3b19a32c9b8549d83eee3b7c95dadebf62c42336120c9bd.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/e22980cb5a0e79d0551e2d9c41b6032db1a81c4c68f5e56da3486e365008d281.jpg)

Here, you are buying  \$10MM 5y and selling\$ 12.3MM 2y and  $\$ 2.6MM$ 10y at a yield spread of 5.2bps. Your DV01 is about  $\$ 4,880$ . Here are the PnL scenarios for parallel shifts and spread move. Because of carry and roll, you will be fine with parallel shifts with better PnL on the way down.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/2bcfd8dd39c682c712a1741386a379d3211cbf41f27ed31dfd0b1a600f4d8b17.jpg)

Let's say the butterfly does a positive shift (more negative spreads), you will make money. Conversely, you lose money if there is a negative shift (more positive spreads).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/eb912e2b3e41707ee42ff1dae53030cd35fe4f47bfd3c375e1e6a1f975edec4c.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/cf6ec0687c443685e9f99fbcf2097ab2c5cf34858eb8a0572401d1dcef5bea1b.jpg)

# 4.6 RECAP

Why do we care about the yield curve? It tells you something about the economic cycles and central bank policy. It also gives you an idea about the carry and roll of the bonds. Buying a bond on the steepest part of the curve when the curve is also steep is a nice positive carry trade.

Why do we want to do all these curve trades? Mainly, because you have a view on the yield curve, or you have a higher confidence about the curve movement (relative to expectations) than the yield movement.

How do we want to do the curve trade properly? We want to keep interest rate risk to the minimum and take only curve risk. If you want a view on duration, consider it as a separate trade and manage its risk separately. You also want to check your duration trade against the curve trade, so you are not doubling on the same bet. Simply go to BETA<GO> to look at the relationship between your curve trade and the key rate (say 10y or 5y).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/d3f476ddd6be6c5789018da80f367d17dc00fbb3daf5b359591e9f553fc2b8e7.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/c8091f3f7295614af7395653a9a37bcb1b45f167fd2fe2f7542f9a0e9c826f39.jpg)

# 4.7 TOPIC QUESTION

if you want to express on the relative steepness between the US and European curves, how would you structure the trade? What do you need to do to remove unintended risks? What macro scenarios will be favourable for your trades? Or conversely, when will your trade not work?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/8112d13294b53085583a509fb2eeabc106d44536bf18e925ffaf5b4469cd86e4.jpg)

# 5. Futures (STIRs, Notes and Bonds)

# 5.1 INTRODUCTION TO INTEREST RATE FUTURES

Interest rates futures extend from short term (money market futures or Short-Term Interest Rate Futures, STIR Futures for short) out to longer dated rates such as US treasuries, German bunds, Italian BTPs, Australian Govt bonds, etc.

They're a huge part of the fixed income space and by retail traders and large institutions alike. Like other derivatives, they're capital light and therefore provide a lot of leverage. In fact, leverage for a speculator on TY (CME ticker: ZN) is around 79x vs ES which is about 18x!

Our first stop is WIR<GO> and WBF<GO> where one can see a snapshot of global money market futures and bond futures respectively on the terminal.

<table><tr><td colspan="7">97) Settings</td><td colspan="4">World Interest Rate Futures</td></tr><tr><td colspan="2"></td><td>Exch</td><td>Ticker</td><td>Last</td><td>Change</td><td>Time</td><td>1-Day</td><td>High</td><td>Low</td><td>Volume Open Int</td></tr><tr><td colspan="2">1) North/Latin America</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="2">10) 90DAY EURO$ FUTR Dec21</td><td>CME</td><td>EDZ1</td><td>99.790</td><td>+.000</td><td>16:53</td><td>| |</td><td>99.795</td><td>99.785</td><td>16686</td></tr><tr><td colspan="2">11) 90DAY EURO$ ICE Jul21</td><td>d ICF</td><td>LEDN1</td><td>99.8650 y</td><td>-.0025</td><td>07/01</td><td></td><td></td><td></td><td>0</td></tr><tr><td colspan="2">12) 1MO EURO$ FUTURE Jul21</td><td>CME</td><td>EMN1</td><td>99.9000 y</td><td>+.0000</td><td>07/01</td><td></td><td></td><td></td><td>0</td></tr><tr><td colspan="2">13) FED FUND 30DAY Jul21</td><td>CBT</td><td>FFN1</td><td>99.90500</td><td>+.00250</td><td>15:25</td><td></td><td>99.90500</td><td>99.90500</td><td>174</td></tr><tr><td colspan="2">14) BANK ACCEPT FUTR Mar22</td><td>d MSE</td><td>BAH2</td><td>99.370</td><td>-.005</td><td>16:31</td><td></td><td>99.370</td><td>99.365</td><td>139</td></tr><tr><td colspan="2">15) ONE-DAY BANK DEP Jan22</td><td>d BMF</td><td>ODF22</td><td>5.720 y</td><td>+.045</td><td>07/01</td><td></td><td>5.745</td><td>5.665</td><td>430195</td></tr><tr><td colspan="2">16) MEXICAN TIE Apr21</td><td>d MDX</td><td>DOJ21</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="2">17) 1 MONTH SOFR FUT Jul21</td><td>CME</td><td>SERN1</td><td>99.9525 y</td><td>+.0000</td><td>07/01</td><td></td><td>99.9550</td><td>99.9500</td><td>6130</td></tr><tr><td colspan="2">18) 3 MONTH SOFR FUT Dec21</td><td>CME</td><td>SFRZ1</td><td>99.9450</td><td>+.0000</td><td>09:57</td><td></td><td>99.9450</td><td>99.9450</td><td>300</td></tr><tr><td colspan="2">2) Europe/Africa</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="2">20) 3MO EURO EURIBOR Dec21</td><td>d ICF</td><td>ERZ1</td><td>100.535</td><td>+.005</td><td>16:34</td><td>| |</td><td>100.535</td><td>100.530</td><td>3662</td></tr><tr><td colspan="2">21) 90DAY STERLING FU Sep21</td><td>d ICF</td><td>L U1</td><td>99.905</td><td>-.005</td><td>16:43</td><td></td><td>99.910</td><td>99.905</td><td>1646</td></tr><tr><td colspan="2">22) Euro CHF 3MO ICE Sep21</td><td>d ICF</td><td>ESU1</td><td>100.750</td><td>+.000</td><td>15:27</td><td></td><td>100.750</td><td>100.750</td><td>1</td></tr><tr><td colspan="2">23) OMX RIBA Futures Sep21</td><td>d PMI</td><td>ORIU1</td><td>-0.015</td><td>-.015</td><td>14:45</td><td>| |</td><td>-0.013</td><td>-0.015</td><td></td></tr><tr><td colspan="2">24) ICE 3MTH SONIA FU Jun21</td><td>d ICF</td><td>SFIM1</td><td>99.9450 y</td><td>+.0000</td><td>07/01</td><td></td><td></td><td></td><td>31</td></tr><tr><td colspan="2">3) Asia/Pacific</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="2">30) 3MO EUROYEN Dec21</td><td>d TFX</td><td>YEZ1</td><td>100.080 s</td><td>+.000</td><td>Close</td><td></td><td>100.080</td><td>100.080</td><td>3</td></tr><tr><td colspan="2">31) 90-DAY BANK BILL Sep21</td><td>d SFE</td><td>IRU1</td><td>99.96 y</td><td>+.00</td><td>07/02</td><td></td><td>99.96</td><td>99.95</td><td>3</td></tr><tr><td colspan="2">32) 3 MONTH KLIBOR Sep20</td><td>d MDE</td><td>KKUO</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="2">33) NEW ZEAL 3MO BILL Sep21</td><td>d SFE</td><td>ZBU1</td><td>99.62 y</td><td>+.01</td><td>07/02</td><td></td><td>99.62</td><td>99.60</td><td>759</td></tr></table>

<table><tr><td colspan="2">97) Settings</td><td colspan="9">World Bond Futures</td></tr><tr><td></td><td></td><td>Exch</td><td>Ticker</td><td>Last</td><td>Change</td><td>Time</td><td>1-Day</td><td>High</td><td>Low</td><td>Volume Open Int</td></tr><tr><td colspan="2">1) North/Latin America</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="2">10) US ULTRA BOND Sep21</td><td>CBT</td><td>WNU1</td><td>193-13</td><td>+1-12</td><td>16:54</td><td></td><td>193-20</td><td>192-19</td><td>13634</td></tr><tr><td colspan="2">11) US LONG BOND Sep21</td><td>CBT</td><td>USU1</td><td>160-27</td><td>+ 21</td><td>16:54</td><td></td><td>160-30</td><td>160-13</td><td>36508</td></tr><tr><td colspan="2">12) US 10yr Ultra Fut Sep21</td><td>CBT</td><td>UXUY1</td><td>147-06+</td><td>+ 14</td><td>16:54</td><td></td><td>147-08</td><td>146-29</td><td>28481</td></tr><tr><td colspan="2">13) US 10YR NOTE Sep21</td><td>CBT</td><td>TYU1</td><td>132-15</td><td>+ 06+</td><td>16:54</td><td></td><td>132-16</td><td>132-09+</td><td>157778</td></tr><tr><td colspan="2">14) US 5YR NOTE Sep21</td><td>CBT</td><td>FVU1</td><td>123-11</td><td>+ 01+</td><td>16:54</td><td></td><td>123-11+</td><td>123-08+</td><td>89399</td></tr><tr><td colspan="2">15) US 2YR NOTE Sep21</td><td>CBT</td><td>TUU1</td><td>110-04%</td><td>- 00+</td><td>16:53</td><td></td><td>110-04+</td><td>110-04+</td><td>52657</td></tr><tr><td colspan="2">16) CAN 10YR BOND FUT Sep21</td><td>d MSE</td><td>CNU1</td><td>145.68</td><td>+.16</td><td>16:34</td><td></td><td>145.71</td><td>145.37</td><td>9232</td></tr><tr><td colspan="2">2) Europe/Africa</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="2">20) EURO-BUXL 30Y BND Sep21</td><td>EUX</td><td>UBU1</td><td>203.70</td><td>+.90</td><td>16:54</td><td></td><td>203.80</td><td>202.52</td><td>18195</td></tr><tr><td colspan="2">21) EURO-BUND FUTURE Sep21</td><td>EUX</td><td>RXU1</td><td>172.94</td><td>+.40</td><td>16:54</td><td></td><td>172.98</td><td>172.54</td><td>175844</td></tr><tr><td colspan="2">22) EURO-BOBL FUTURE Sep21</td><td>EUX</td><td>OEU1</td><td>134.250</td><td>+.090</td><td>16:54</td><td></td><td>134.270</td><td>134.150</td><td>86358</td></tr><tr><td colspan="2">23) EURO-SCHATZ FUT Sep21</td><td>EUX</td><td>DUU1</td><td>112.160</td><td>+.000</td><td>16:54</td><td></td><td>112.170</td><td>112.155</td><td>34765</td></tr><tr><td colspan="2">24) LONG GILT FUTURE Sep21</td><td>d ICF</td><td>G U1</td><td>128.29</td><td>+.27</td><td>16:44</td><td></td><td>128.32</td><td>128.03</td><td>34844</td></tr><tr><td colspan="2">25) Euro-BTP Future Sep21</td><td>EUX</td><td>IKU1</td><td>151.78</td><td>+.07</td><td>16:54</td><td></td><td>151.92</td><td>151.63</td><td>29239</td></tr><tr><td colspan="2">26) Euro-OAT Future Sep21</td><td>EUX</td><td>OATU1</td><td>159.35</td><td>+.28</td><td>16:54</td><td></td><td>159.41</td><td>159.09</td><td>41951</td></tr><tr><td colspan="2">27) Short Euro-BTP Fu Sep21</td><td>EUX</td><td>BTSU1</td><td>113.20</td><td>+.00</td><td>16:53</td><td></td><td>113.21</td><td>113.18</td><td>15720</td></tr><tr><td colspan="2">28) SWEDISH 5YR FUT Sep21</td><td>d PMI</td><td>BTOU1</td><td>-0.044</td><td>-.008</td><td>16:30</td><td></td><td>0.003</td><td>-0.044</td><td></td></tr><tr><td colspan="2">3) Asia/Pacific</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="2">30) JPN 10Y BOND Sep21</td><td>d OSE</td><td>JBU1</td><td>152.00</td><td>+.08</td><td>16:34</td><td></td><td>152.00</td><td>151.93</td><td>3256</td></tr><tr><td colspan="2">31) KOREA 10YR BND FU Sep21</td><td>d KFE</td><td>KAAU1</td><td>125.66 s</td><td>-.05</td><td>Close</td><td></td><td>126.05</td><td>125.66</td><td>55819</td></tr><tr><td colspan="2">32) KOREA 3YR BND FUT Sep21</td><td>d KFE</td><td>KEU1</td><td>109.87 s</td><td>-.04</td><td>Close</td><td></td><td>109.96</td><td>109.82</td><td>147310</td></tr><tr><td colspan="2">33) AUST 10Y BOND FUT Sep21</td><td>d SFE</td><td>XMU1</td><td>98.5250</td><td>+.0100</td><td>16:44</td><td></td><td>98.5300</td><td>98.5100</td><td>20275</td></tr><tr><td colspan="2">34) AUST 3YR BOND FUT Sep21</td><td>d SFE</td><td>YMU1</td><td>99.580</td><td>+.010</td><td>16:43</td><td></td><td>99.580</td><td>99.565</td><td>13923</td></tr></table>

So quick recap – what are futures? Standardized contracts traded on an exchange between two parties for an agreed price and quantity of the underlying to be settled at a future date. Now, futures can either be physically or cash settled meaning if you held the contract until the last day, you will either have to receive/deliver the underlying or settle the difference in cash. MAKE SURE YOU KNOW WHICH ONE THE FUTURE IS BASED ON.

In general, money market futures are cash settled (such as Eurodollar futures) while notes and bond futures are physical.

I nearly had to take delivery of physical gold once because I forgot to roll. My brokers were not happy trying to unwind that screwup.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/8b5226d99383b763957b88ec8a871e4589203fe0c3928d87113878fe78802442.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/75ae14abe13dba5a06c0301ddb150c54f98be7da72884bad232890c6caee0bb0.jpg)

For Bloomberg users, I'm sure many of you are aware that FLDS<GO> is an excellent source of “hidden” or hard to find info. I could probably do a whole extra topic on leveraging FLDS to its full extent (I might actually lol).

How do you find the right futures ticker? On CME's website you can find them, on Bloomberg you can go to SECF<GO> then sort by Fixed Income and go to the Futr tab.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/125e8cca3c99b97bcb7c6b62a0c4d25b29feb8c2158d565800b915f886666925.jpg)

A better way, which I much prefer, especially when dealing with options is to use CTM<GO>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/d0f4b25accf12899b4a5be7c24ddf11bffa710bade7306cc966e3922480d081b.jpg)

You can also sort the menu by exchange (e.g., CME) and see all futures contracts trading on that exchange (Ultras, e-minis, gold, etc). Once your future is loaded you can look at the entire strip of contracts going out via CT<GO>. This brings up the futures contract table. For those of you that follow STIR traders you will hear many of them talking about colours like reds, blues, etc. More often than not, in the US they're talking about 3-month Eurodollar or 30-day Fed Funds future contracts.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/88b2829c31d9fa19aa03325fb75d23e838a36a6c79c18d3d09f82a93f9ac31e6.jpg)

# 5.2 EURODOLLAR FUTURES

You can see they are colour coded in 12-month groups, called "packs". Each pack contains the next 4 quarterly expirations.

The easiest way to remember (for me) is to think of it like colours on a computer screen. White is everything, so it's the first. Then we pick colours with RGB - red, green, blues. WRGB are the most common packs you'll hear mentioned and sometimes the next pack (gold). Combining consecutive packs together you get a "bundle". Red bundle = white and red packs combined.

This combination and length (EDs go out 10 years) is unique to money market futures - you do not see these many contracts trading with expiry that far away on note and bond futures.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/7b91091c74ab90d077f4f38101ee479fdbfc0de4ab7e0f02d575a34dd78cbcd7.jpg)

You can view the entire term structure of ED's (or any future) via CCRV<GO> to see the futures curve. An upward sloping curve is called "contango" while an inverted curve is "backwardation" and typically contango is the 'normal' shape of a futures curve (e.g., oil) but with EDs, because they are quoted as a function of 100-yield it results in an inverted curve because the yield curve is actually normally shaped (right now).

Take note, while the ED curve is inverted it's just the inverse of the implied forward yield curve. You can change the Last Price field to Yield if you prefer to view it in yield terms.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/74dcfd258f0815d08f707209257f0af34f46558fd9aea54ee711cdd1e81173c9.jpg)

An ED future is an agreement to lend or borrow money at 3M LIBOR in the future but struck at a pre-agreed rate. So, if EDZ1 is BOUGHT at 99.80 you are agreeing to LEND money for 3 months on December  $13^{\text{th}}$  2021 at a rate of  $0.20\%$ .

If you get to Dec 13th and 3M LIBOR is  $0.15\%$  you've made money because you can borrow at  $0.15\%$  and lend at  $0.20\%$ . You earn a  $0.05\%$  spread. ED futures are cash settled so you don't actually lend out the money, you just collect or pay the difference.

In futures, there's an 'active contract' - determined by the exchange. In practice, it is often the front month contract and is expected to have the most volume. On Bloomberg the ticker tail is "A" - TYA

However, in some cases the exchange has specific months which can be the active.

For the US 10-year Treasury future, because there's only Sep/Dec/Mar trading right now, the Sep is the nearest quarterly expiration and thus has the most volume and OI. That is the active contract.

If you were to look at Gold futures however, the active is determined by CME to be the nearest of the following months that isn't the current month:

April

June

August

December

February

That's why the active for gold in late July is the August contract and not September like Treasury futures.

# 5.3 FUTURES ROLLS AND GENERIC/CONTINUOUS CONTRACTS

This is important for understanding rolls & settings for a futures contract. You see, we look at the yield not price on a chart for cash bonds as each new on-the-run bond vs the old bond's (off-the-run) price will be different resulting in gaps in price that don't exist in yields.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/bbd4a95b333733e0606e651dd43cc84656d7d725f0a7ccbdde0363c58d32244e.jpg)

When looking at a future, we typically only look at its price which is driven by the value of the deliverable. Because it is looking at the cheapest-to-deliver and the delivery is at the futures expiry, with each new futures contract that basket changes and so does the price.

If I have a position in the future and want to maintain that exposure going forward, I will have to close out the current future position and open a new one in the new active future. This is the roll.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/62982ed46785912f846fa489bc66b6e543c721aab18e51eca86a71b2ea9c9ffc.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/aa243fdd758d735f5a35eb0a718107061bd55568fec27fb63e99b21e9183ef52.jpg)

You can see that for the June contract M1, the first delivery was 06/01/2021 which means physical delivery of the cash bond for futures begins to take place even though the future can trade for another 3 weeks. In the lead up to this first delivery volume and open interest (OI) on the following expiry (Sep/U1) start to increase while OI falls on the June as positions are closed out and shifted to U1. By 05/25/2021 there is already more OI in U1 than M1 and by 05/27/2021 there's now more volume on U1 than M1.

In the chart with prices, the white line is M1, the blue line is U1, and the green line is the continuous chain of ACTIVE futures prices. You can see how on 06/01/2021 the active moved from M1 to U1, it ROLLED. This move, which was downward in price is referred to as having ROLLED-DOWN.

The continuous series of active futures is called the Generic contract on Bloomberg (with 1 as the ticker's tail - TY1). No matter which system you use, your treatment of continuous series of futures is vastly important especially when running backtests. go to GFUT<GO> to see your default settings.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/fc72d276c1d145f96dfc30434d8d1e671e5e3290e5dbf315abbddbe80c4c5112.jpg)

I prefer to roll generics with the active contract so that my generic is tied to the volume traded. The other part is the roll adjustment, which I set to Ratio. There is no hard and fast rule but some things to note:

None = no changes to historical series relative to active. Price changes from roll down/up are displayed.

Difference = the nominal change in roll is applied to all historical roll periods. If a roll happens today of  $0 - 15+$  on TY, all prior prices will get adjusted by that amount.

Ratio = instead of nominal change it takes the % change in roll and applies that to historical prices.

Average = weighted average price of front month & 2nd month with each weight changing according to the days btw front and 2nd month. Average is proactive while the rest are retroactive

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/9bd73228da3ebaff6c49a16a90e33739e5450e9f4e193d18bee80671a5e1f429.jpg)

I prefer to use RATIO adjustment as 1) current price is tradeable (Average is not) and 2) doing backtesting of a continuous series with NONE creates false PnL due to roll effects if you hold a position over the roll and Difference adjusts historical series but backward adjustments are non-relative, again screwing PnL.

For EDs what's typically looked at isn't so much the continuous contract but rather the spread between contracts – e.g. EDZ2EDZ3 Comdty is the spread between Dec 22 and Dec 23 Eurodollars. The generic contract actually has a  $2^{\text{nd}}$  generic, and a  $3^{\text{rd}}$  etc. Given the ED strip goes out 10 years you can actually track the generic spread quite far ahead.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/4763db857114ca6c5106bc17fa55422e562d09ea668c608c0ed3678783dc69c0.jpg)

On BLOOMBERG the ticker format is S:EDED x-y Comdty where x and y are the two generic contracts you want to spread. Because the ED strip is in quarters, a spread of 4 contracts is a 1-year generic spread - S:EDED 2-6 Comdty is the 1 year ED spread from the  $2^{nd}$  quarterly expiry. The tricky part is, ED1 will be the active contract so ED2 will be the next quarterly expiry from the active. Eurodollar active contracts are not necessarily the nearest quarterly expiry.

The chart below for example tracks the 4-quarter spread against the active ED future compared to the Fed Funds Target Rate. You could probably observe a few things:

1) the spread widens ahead of Fed lift-off  
2) it tightens shortly after  
3) it widens as Fed begins cutting

Once you establish that the spread is simply "where are rates 1 year ahead?" it will make sense. The spread prices in the hike, then the front ED rolls into the hiked levels then eventually cuts get priced in.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/66b352c46a4b3bcdf0e9500bf5647798a97476cd5906f673fc94883b1a1600cb.jpg)

# 5.4 NOTE AND BOND FUTURES

Let's turn to notes and bond futures now. When it comes to bond futures the quoting conventions are...all over the place. I love it. US bonds are quoted in fractions, euro bunds in percent of par and Aussie bonds are quoted in yield

with the decimal price being 100-yield. This means that while US bonds and Bunds are linear in the change of their contract value, Aussie bond future values exhibit convexity just like their underlying bond.

If you look at the Aussie 10y treasury bond, the value of 1pt says "Varies" and the value of 1 tick is A\$57.11 – if I change the price to 99.00 the value of 1 tick changes to A\$59.58 (second screenshot). But recall Eds are quoted as 100-yield as well with a tick value of \$25, so why are these two instruments different if quoted the same way? With EDs they are valued as \$25 per tick but with Aussie treasury futures they are valued in terms of yield of the underlying 6% bond. Therefore, the value will change with the effect of convexity.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/004dbeac5ff0e7adad7feb50aff69e63d83a7ed639f80c02c15afbb5e536c555.jpg)

For US bond futures, generally the longer the maturity of the underlying the larger the tick size. For US bond futures the tick size remains constant. For ex: TY (CME ticker ZN), 1 point is worth \$1000 (TAKE NOTE OF THIS).

The price quote is in fractions of 32 with the smallest move (a tick) being half a 32nd – i.e., 1/64. This is commonly denoted as a ‘+’. To confuse you more when trading, you can receive the same quote in the following ways:  $132 - 06+$ ,  $132.06+$ , 132.1875 or even 132-06.50

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/2644a86f050ffaba1f370380aa8b421ba3796a3efbc6fc61d11ad74781482e12.jpg)

For 5y notes (FV / ZF) the minimum tick is  $\frac{1}{128}$  or  $\frac{1}{4}$  of a  $32^{\text{nd}}$ . Half the size of a TY tick. So, you could receive a quote like  $123.09\%$ , 123.3046875, 123-09.75. You could even get fractions after a decimal like  $123.09\%$  which is just sadistic.

Thankfully, Bloomberg incorporates a conversion function using the command CV<GO> to help you convert fractions to decimals and vice versa.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/904fee0faaaf446d4d9bd4b29c5f87ba3d3494f00fa9dc56b258dfe018e07461.jpg)

The price of a treasury future (and bund) is percent of par, so  $132.1875 = 132.1875\%$ . Multiply this by the contract size and you have the contract value - \$100,000 * 1.321875 = \$ 132,187.50

```txt
Grade and Quality: U.S. Treasury notes maturing at least 6 1/2 years, but not more than 10 years, from the first day of the delivery month. The invoice price equals the futures settlement price times a conversion factor plus accrued interest. The conversion factor is the price of the delivered note (\(1 par value) to yield 6 percent.  
**ETYA is no longer supported, you will be able to see the same data in TYA ELEC <COMDTY>.**  
Exchange ticker: TY
```

US treasury futures trade with an assumed  $6 \%$ coupon (Bunds & Aussie too). As futures

contracts are standardized a consistent coupon is necessary. This is confusing but the actual theoretical bond underlying the future is a bond issued at par yielding  $6\%$  which implies the coupon is  $6\%$

As bond futures are physically settled it means that if you buy a bond future and hold to delivery you will receive an actual treasury bond and pay for it according to the futures price you transacted at. Obviously current yields are much lower than the theoretical  $6\%$  coupon that the future is based on so the price you paid on the future is not exactly the same as what you should pay for the real bond.

This is where the conversion factor (CF) comes in. CFs are calculated by the exchange to equate the future with its deliverable. While the future trades on a theoretical  $6\%$  coupon, all the deliverables trade at diff coupons and yields, meaning each has a diff CF.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/d4667ab7d444f121ce291c705129bd61029d39f8b124b2b5330de2834837e028.jpg)

CME provides a link to calculate the conversion factor which if you try, will be like feeding a power-drill to your eyeballs but if you're into that thing, here you go:

https://www.cmegroup.com/trading/interest

rates/files/Calculating U.S.Treasury Futures Conversion Factors.pdf

Here's how I like to think about CFs: Let's imagine the futures contract actually gave you a  $6 \%$ coupon treasury at delivery date, meanwhile the actual deliverable bond has a  $27 \text{‰}$ coupon, with the same maturity – if you can get either one, which do you prefer? The  $6 \%$ coupon bond of course! They're otherwise the same.

The  $6 \%$ coupon bond should trade equal to the deliverable bond (T  $2 \frac {1}{8} 0 5 / 1 5 / 2 8$ ) otherwise I'd just buy the future, sell the deliverable bond forward and get juicy free income till maturity. How do we select which bond to deliver? If there is a basket of bonds I can deliver, I will choose the one that costs me the least – what we call the Cheapest to Deliver bond (CTD). How do we determine the CTD? Please see Appendix 1 for an in- depth breakdown.

We need to equate the two – “What is the price I need to pay for a  $6 \%$ coupon bond at delivery such that I am indifferent between that and the real deliverable bond?”

Remember, it's the yield you expect to earn that matters, not the price you pay.

Let's back it out. The CFs are set when the future is listed and doesn't change, so we won't get the exact figure, but we can get close. The current CTD bond matures on 05/15/28, so let's create a Treasury with the same maturity and cashflows but with a  $6\%$  coupon instead.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/6c7d3b95b0afbf732c078ee8e26edee9b70b8494ec2f43ed0c37a1f225ec7f21.jpg)

Now, from our prior topics we know that from the yield curve, we can calculate the implied yield at forward dates, known as forward rates. Taking the deliverable bond, we can see what the curve implies is the forward yield for that bond at future delivery.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/0c1dfcdea2f2f8e3e28cb4063a223c5d9a62cbf484ae92da5ec9a3e5f3a79be7.jpg)

Today, if I sold forward the deliverable bond the market pricing would be 110.454283 clean for a 1.227025 yield on 09/30/21, about 3 months away. The fictional  $6 \%$ coupon bond that underlies the futures contract, if we price it at a yield of 1.227025 on 9/30/21, that should imply a clean price of 130.279054

What is the ratio between the two? 110.454283 / 130.279054 = 0.8478. The actual conversion factor is 0.8338 so we're fairly close! Get it now? The  $6\%$  coupon is more "valuable" than current coupons so you pay more, but the higher price results in a lower yield. The ratio of future to cash bond prices that results in the same deliverable yield is the conversion factor.

The other way to look at it is simply “what would the CTD price be at delivery to yield  $6\%$ ?”

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/05b0b9107352a4dc7e633e718e481c23dd0ca6edbf20af0eca2d6a4c67622b5d.jpg)

This gets us even closer to the CF, but the flow of logic doesn't fit as nice in my mind. That doesn't rationalize the future to cash price relationship as well, but your mileage may vary.

In any case, this is a nutshell, is the point of conversion factors: equivalence. This necessity for equivalence in light of the future-cash relationship therefore means that the conversion factor is a driving factor behind all of a bond future's risk analytics, which we will cover next.

# 5.5 FUTURES RISK

They key concept of bond futures is that an underlying bond gets delivered against it. Hence, when looking at future's risk, we look at the deliverable risk and how that translates to the future.

If you run the command FRSK<GO> for TYA, you will see its risk is around 8.365 and its forward risk is 8.030. What do these mean? First, risk is the risk to PRICE given a  $1\%$  shift in yields – the formula for a bond's risk is:

RISK = DURATION * DIRTY PRICE.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/864d2306c92cfff050dfcd694ab30e8a6e9b5360d5be671bf11167a79b004e09.jpg)

To calculate risk for a future, first look at its cheapest to deliver contract, in this case T 2  $7 / 8$  05/15/28 Govt and look at its duration.

The duration is 6.266

The risk  $= 6.266^{*}1.1133 = 6.976$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/280ba10d6d8bdc3c812fc1eb950ee562fbbfa0335e4ed644f1d80346d3850f90.jpg)

The CTD's risk value of 6.976 is then divided by the conversion factor 0.8338 to arrive at 8.367 which is the price risk of the future based on the underlying. Recall part 1's final point about equivalence between futures and cash and why we use the conversion factor.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/8747f60438f6b2eb44871fe80f51b2136e57f25c2e7a7594bbf3524d97346e8f.jpg)

The FwdRisk is the conventional forward risk value of the CTD. In plain English, if you bought the future and took delivery at the future's price adjusted for conversion factor, what is the risk of bond at delivery?

In practice, when trading futures I care more about the futures current risk rather than the forward risk as the movement of the underlying directly impacts the current price of the future. Forward risk is only really applicable when you are concerned about taking delivery.

# 5.6 TRADING STRATEGIES USING FUTURES

Now that you understand futures risk, you can start to construct curve trades, butterfly trades or simply hedge portfolios using futures. For example, if I wanted to put on a 5s30s steepener using futures, how would I do that?

Recall, a steepener involves buying the short end and selling the long end. E.g., Buy 5s, sell 30s. For futures I may want to use the FV (ZF) and the WN (UB) contracts. Because the 30y has higher duration than the 5, if the curve moves equally across all points I can lose or make money without the curve shape actually changing – we want to eliminate that. So, we need to duration hedge the two legs.

In Bloomberg we can use the function FIHG<GO> to do this quickly. The WN contract has a risk of 36.22 while the FV contract has a risk of 5.38 >> the ratio is therefore 6.73. For every 100 lots of WN I sell I will have to Long 673 lots of FV.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/f3e890606dfbfce734f56c78f54be5a7ee13ff245fa5ff474c9efda4704a19ca.jpg)

Typically, I will construct a curve trade with DV01 in mind, on the screen it's BPV (Basis Point Value). So, if I want to put on a \$10,000 DV01 steepener on 5s30s using FV/WN futures I would have to do something like short 27 lots of WN and long 182 contracts of FV.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/4cd8ada59425f6d72c8a54de66bb26dd2b3470d82929197058ce7a2bf63a9b8e.jpg)

The manual way to do this is: take 10,000 (target DV01) then divide by  $36.22 * 10$  (Risk * \$1000 per point per percent / 100 basis points) = 27.61 (round to 27) lots of WN.

Now, the FV Hedge  $= 27 * 6.73$  (hedge ratio of 36.22 / 5.38 per contract) = 182 lots. If both legs saw yield rise/fall 1bp, their PnL performance should cancel each other out.

If 30s rise by 1bp and 5s stay the same, then I make 10k on WN and lose 0 on 5s. Likewise if 5s drop 1bp and 30s drop 0.5bps I make 10k on 5s and lose 5k on 30s. The opposite scenarios work against me. This way, my concern is not what each leg is doing on their own but how they are moving relative to one another.

A butterfly is just the belly and two wings – 3 legs of a trade. One in the middle and two on either side. Broken down, it's actually two curve trades combined. If you know how to construct a curve trade, you can construct a butterfly by adding two curve trades together with the belly being the pivot.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/bbe2519bdde5e8b6773a2a68a73639272e7bb681c0536317a4cb7bb1a9613945.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/6a112ac4f4137ecf4b3f3bf9635c6e5ece880299a263706c8c6ecffacc28c332.jpg)

For example: long the 2s5s10s butterfly means you think it's going higher, and that means the yield of the belly (5s) goes up relative to the wings (2s and 10s) resulting in a more humped curve. The quote you will see is derived by taking  $(2^{*}5y$  yield) - (2y yield + 10y yield). If I think the curve becomes more humped then I want to sell the belly (because yields up, price down) and buy the wings. If I think it becomes less humped, I want to BUY the belly (yields down, price up) and sell the wings.

A 10k DV01 trade that is long the fly could be a 5k DV01 2s5s steepener and a 5k DV01 5s10s flattener. Can you do  $4\mathrm{k} + 6\mathrm{k}$  on each side of the belly? Sure. There are endless combinations and that's what makes it fun!

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/3398457023e3c6ea10730364d0658905cb126af14dc9f18fd885d2686fcf85ad.jpg)

The other consideration with butterfly combinations is the effect of convexity for longer-dated bonds. As the convexity increases, the larger convexity effect of the long-bond on the wing requires a smaller weighting. So, for something like a 2s5s30s butterfly trade, you would typically end up with a weighting of 80:20 or even 90:10 between the 2s5s and 5s30s portions respectively.

Where possible, I prefer to hedge duration risk and/or trade the curve using futures as it is less capital intensive (i.e., you're using margin instead of cash) and is a very liquid market. This allows me to control the amount of duration present in my fixed income portfolio without having to commit large amounts of capital.

After FOMC (June 16, 2021), we saw huge moves on the long end of the curve. A lot of people pointed to positioning in steepeners being the cause and having to unwind them (covering the short long-bond position) was causing the rally. How did people "know" this? Part of it was observing open interest.

# 5.7 OBSERVING OPEN INTEREST AND MARKET ACTIVITY

Open interest usually confuses everyone including me. It's the total number of open contracts at a given time. Recall a future (and an option) is between two parties, a zero-sum game. Every contract I enter, I must exit at some point.

Imagine it's day 1 of futures trading, nothing has ever been done before. I short TYA and a rates maestro thinking I'm a sucker, buys the future. There now exists 1 futures contract and open interest is 1. Later, I sell another 5 contracts, so now open interest is 6. Volume for the day is 6.

Day 2. No one does anything. Volume is 0. Open interest is 6.

Day 3. TY pukes and I buy back all 6 of my contracts from a weeping counterparty and exit my position. Volume is 6, open interest is 0.

A noticeable drop in OI points to the closure of positions in a futures market. This is why people look at open interest during a strong rally to see if OI drops. If it does, it's an indication that the price going up involves people EXITING positions, likely meaning a short covering.

Post-FOMC, open interest in the US Long Bond future fell by 12,190 contracts on June 18 then 9,902 contracts the following day, while prices of the future were rallying hard.

Risk of the CTD around then was roughly 17.37, which converted to Futures was a risk of 19.3 (17.37 / 0.9) meaning for each contract, 1 basis point move in the underlying caused PnL to move by \$193 across the market. The 12,190 contracts that closed out on that Friday represented \$2.35 million DV01 exiting positions. That day, that chunk of

contracts saw a change in value to the tune of  \$22.35 million (the 20y yield dropped 9.5bps that day). The prior day yields had already dropped 10bps. So back-to-back that's 19bps to account for, or in DV01 terms, about\$ 46 million for that 12k block of contracts.

The best part is, another 9,902 dropped off the following day (21st June) while bonds saw a huge spike up which was CLASSIC STOP OUT action. Let's assume these poor guys were short since FOMC and just puked their guts out when the squeeze happened. At its worst, these 9.9k contracts experienced 27bps of yield tightening in the underlying for a DV01 effect of \$51.6 million.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/9067c403655b813712250d91c869071348dfdda1564c285185e4288ae3ee2f03.jpg)

Now, not all of them covered at highs, some of that OI would have been longs taking profit, etc. But the next time you see on twitter something like JUMBO 30,000 BLOCK BUY IN 10YR TREASURIES EQUIV. \$2.5M DV01 at least now you kind of have an idea of what that means.

# 5.8 TOPIC QUESTION

Here is the US 2y future and the US 10y future with their respective risk characteristics. If I wanted to construct a 2s10s curve flattener using these two instruments targeting a DV01 of \$5,000 how many contracts and what direction (long/short) do I need for each?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/75330f452562c005594a5bd06c1340954dc36a72d01e462eafb70cc388414204.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/f8784e5e343421be52ebce4385af580ffb470cfbf412826beb0fda0be32db01d.jpg)

Because this is a flattener it implies positioning for the difference between short end yields and long end yields to narrow; hence we want to be short TUU1 (the short end) and long TYU1 (the long end). The risk ratio is 8.38 / 2.16 = 3.88 so for every 1bp move the price risk on TYU1 is 3.88x greater.

Method 1: Calculating each leg individually

Risk on TUU1 is 2.16 so per contract, 1bp change equals  $2.16 \times 2000 / 100 = \$ 43.2$ in DV01. \$5000 DV01 would require 115.74 contracts or rounded up, short 116 contracts of TUU1.

Risk on TYU1 is 8.38 so per contract 1bp change equals  $8.38 \times 1000 / 100 = \$ 83.8$ in DV01. \$5000 DV01 would require 59.67 contracts or rounded up, long 60 contracts of TYU1.

Method 2: Calculating using hedge ratio

\$5000 DV01 on TUU1 requires 116 contracts, using the hedge ratio and contract values the hedged size on TYU1 required would be 116 / [3.88 x (100,000/200,000)] = 59.79 or 60 contracts

# 6. Options on Futures

# 6.1 WHAT ARE OPTIONS?

The world of options in interest rate futures is exceptionally interesting and complex at the same time. The point of this part will just be to introduce options on rates futures and how they work from my perspective of managing a bond portfolio – I'm not a vol trader, much better guys out there for that stuff.

Full disclosure: I expect this part of the topic to have the most contention simply because everyone has their own style. This is mine. It may be stupid once you read it, but it's mine. Don't be too harsh.

What is an option? It's a right but not obligation to buy or sell the underlying at/by a certain time (expiry) at a certain price (strike). A right to buy is a call, a right to sell is a put.

The price you pay for an option is known as the premium. But what are you paying for? Well, the name says it all - options. The fact that you have a RIGHT to choose to do something means it gives you flexibility.

The value of flexibility in the world of options can be broken down into Time & Volatility. Together, they are known as time value. The value of having the time to decide with the various possible outcomes from now to option expiry.

An agreement to buy an orange for \$0.75 when they are selling for \$1 today is alone, worth \$0.25 right this very moment. That is known as intrinsic value. If I have the right to buy it anytime over the next week, well I have the flexibility to wait and see if the price rises further over time.

Therefore, Option Value = Intrinsic Value + Time Value

Every component is known in that equation except for the path that prices will take. I know the price now, I know the price I can sell at, I know the time I have available to do it, but I don't know for sure what the final price will be. I can only guess how far and which direction prices move. I can only guess volatility.

# This is why option prices IMPLY volatility.

Like futures, options are a zero-sum game. Every buyer has a seller, every loss is the other's gain. You can buy a call/put or you can sell them – which if it is a new position is known as 'writing' a call/put (as opposed to selling the option you previously bought).

When it comes to options on futures, the futures have an expiry as well along with their underlying cash bond. So, in reality, an option on a rate future is a right to enter by a certain time an agreed price to deliver/receive a cash bond at a future date. Following this train of thought, if the risk of the future is tied to the cash bond, then the option's risk characteristics must be tied to the deliverable bond as well.

Cash Bond >> Bond Future >> Option on Future

# 6.2 FINDING OPTIONS ON BLOOMBERG

A future's list of available options is known as the options chain. It will typically look like a long list of expiry and their bid/ask for different strikes, with calls on one side and puts on the other.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/87a54dbcca06edbe6233cf1e735966ef7b7809f4cdb5d5d70e507be943f2d3be.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/5e44cc710f6a2089a97c9a80b4bde70ae5547869bb70e5e386b8fbe6d9fa7566.jpg)

Notice the difference between TY and ED options – the depth of the TY options market is much shallower (See the lack of OI past Sep for TY options) than ED but there is another key difference:

As we saw in the first part of this topic, ED futures have a much longer strip of futures while longer notes/bond futures don't. So, a lot of the extra options you see for ED are because of the different underlying combined with the larger volume traded on those further expiries.

Now, what PAINS ME with Bloomberg is that they don't include weekly options even if you tick the box for weekdays in the OMON<GO> settings. The reason why is that weekly options' underlying is tagged to a placeholder ticker for the weekly (that you can't trade). Go to CTM<GO> to see futures contracts then click on Weekly Bond Options. There you'll see tickers such as 1MA, 2MA, etc for the US 10y future. Weekly options expire on Friday, so the number refers to the week of the month the Friday expiry is for. For example: say today is 7/7/21, the first Friday was 7/2/21 so that futures ticker is 1MA Comdty – because it's in the past, there are no options listed currently. This week is 2MA Comdty.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/0f49280fb2b23193803612be22c21a5a5dfc0c201082ad64f63569e803af782e.jpg)

Take note of this when looking at options on rates futures on the terminal. Even platforms like ToS or IBKR incorporate everything easily. Pfft. Shame on you Bloomberg.

# 6.3 BREAKING DOWN AN OPTION

When looking at options, you need to check the underlying especially the farther out you go on the calendar. In this screenshot you can see that the underlying changes from U1 to Z1 once you go past September (naturally as U1 futures are Sep expiry)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/989136b10912613e8bdb8994e269d5e813ad8d51860f7bc793b177166048653f.jpg)

Let's look at the August '21 133.00 Calls for US 10y Note futures starting with the ticker on Bloomberg: TYQ1C 133.00 COMB Comdty

TY is the 10y futures ticker

Q1 is the option expiry month (Aug)

C is the option type - Call

133.00 is the strike

Going into the DES<GO> page we can see some more detail:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/5a6479d52e3813c8e1a173ef57f2c600256153cb393fe92f936ebae4874da11e.jpg)

Firstly, the underlying is the TYU1 Future. Second because it is on 1 TY contract, 1 full point on the option is equal to 1 point on the future thus worth \$1000. The tick size of the option is expressed as 0'01 in 64ths – recall TY futures trade with a quotation of 0'01 as 32nds with the minimum tick being half (1/64<sup>th</sup>).

Simply, 0'01 on a TY option is half the value of 0'01 for a future. Don't get confused the next time you see TY options quoted as 0'48.

An American option means the option can be exercised anytime from now till the expiry date.

Options are on the price of the future, so buying a call means you are bullish on price and buying a put means you are bearish. If the strike of the call is less than the current price of the underlying, the option is In-the-money (ITM), same price it is At-the-money (ATM) and if more than current the option is Out-the-money (OTM). Flip it around for puts.

If a TY Call has a strike of 132-00 and the underlying future is 133-00 then the intrinsic value is 1'00. If all remains same, I can buy TY from the call seller at 132-00 and immediately sell it at market for 133-00 locking in 1-00 (\$1000). If the option is trading at a price of 1'48 (remember options are in 64ths) then I am paying 48/64 (\$750) more than the intrinsic value – I am paying for flexibility.

# 6.4 CONSTRUCTING A TRADE

Now that we have the basic of the option on futures settled, lets dive into an example. As I write this, it is afternoon in Singapore on  $7^{\text{th}}$  July 2021. In about 11 hours the Fed minutes will get released. Suppose I'm wondering if they'll be a lot more hawkish than what the market expects, it might even show a more in-depth discussion about tapering.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/fdb4bb9055b41a87098f53a2b214c6dee71606af33421ed48e4c47dc4ec18633.jpg)

Assuming the curve is going to bear flatten on that scenario and I know my portfolio's key rate risk is around 4.5 years I'll want to hedge out any adverse impact should 5y yield soar.

Indeed, 5s have been trading in a box the last 5 months, with a large flagpole pattern formed and currently at the base of the flag. Top of range could be  $0.90 \%$ which is about 9bps away. Because I'm just worried about the impact from fed minutes, the weekdays for this Friday cover me – ticker 2IA Comdty for 5y weekdays.

FVA Comdty Risk is 5.386, last traded  $123 - 23\%$  (123.7421875)

Average Risk= 5.38 (See Price Settings on CDEF <GO>)  
FVU1 prc 123-24 Rsk=5.386 FwdRsk=5.084(CTD = T0³₈ 11/30/25 @ .72%cnvYTM)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/5e24a0a6b1073f5ce6fd1086ca40e5925e47dc218a0a23cbf0b8c65cd1ae7a11.jpg)

If I'm worried that minutes somehow shock rates 9bps higher then I want to be bearish 5s and therefore look at PUTS. From current, 9bps risk to FVA would be a decline of  $(5.386 * 9) / 100 = 0.4847 >> (123.7422 - 0.4847) = 123.2575$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/9e566e78f35876b7a9b4a29d8c9b8d52aa7f3c6ca7538806e59a8e8b8cb044c5.jpg)

If I were to buy the P123.25 strike, that would only be ATM if 5s were to rise 9bps, so I wouldn't actually save myself much pain. To actually protect my portfolio, I would have to enter at higher strikes. Let's say I buy the current ATM put at 123.75 – it costs 0'08 which is 8/64ths = 0.125 * 1000 = \$125 per option.

Simplistically, if 5y yields ripped 9bps tonight the FVA future would trade around 123.25 meaning the intrinsic value of the option is  $123.75 - 123.25 = 0.50$

Less the cost of my option at 0.125 and I have a profit of 0.375 (\$375) if yields don't move after that till Friday. For me though, I am protecting a portfolio that will lose the 9bps of interest rates move so in reality it's just hedging out some risk. The \$375 I make will be lost in the portfolio but at least the top-level loss is mitigated.

What happens if yield don't move up? Then the options potentially expire worthless, and I lose \$125 per option. This is the cost of hedging, a.k.a. insurance. Let it be known, hedges should lose money and you should never be happy when they don't. How does this translate into a portfolio allocation? Firstly, look at the delta of the ATM option: - 0.52

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/a460ab502aaffa251d5f99e30951f87a9509aba15061d2f313b58443e8c55172.jpg)

That means for every  $\$ 1$ move in the underlying future the value of the option will move 52 cents right now – i.e., half. Why is this so? Well, in a basic sense the future trades at 123.75 right now and my put is for 123.75 – what are the odds (probability) that the future moves up or down respectively? Who knows?! In other words: 50/50

The expected value of the move is  $50\%$ . This is generally why ATM options trade with a delta around 50. As the spot move further ITM from strike the delta will increase (gamma).

In OVME we can model the option out. An instantaneous shift in underlying today from  $123 - 23 \text{‰}$ to 123- 16 (about 3.6bps move in 5y) would cause delta to increase from 52 to 92.5. The implication is that the more ITM the option gets, the higher the  $\$$ impact on PnL each bp move makes.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/b3acc26a2c8c1c5299583afbec02052a3016eb71e82c905b5199442e262c6aed.jpg)

So, putting these pieces together – right now if my portfolio key rate risk is ~5y and I want to hedge out 50% of it and the portfolio $value is \$20MM with a portfolio DV01 of \$4,000 I would need to hedge out \$2,000 DV01 using options on 5s.

With a risk of 5.39, that equates to 37 lots of FVA. However, the option trades at a delta of -0.52 meaning the DV01 of 37 ATM options is currently  $(1,993 * 0.52) = 1036.36$ . In other words, I would currently have to buy 74 lots of ATM puts to reduce my portfolio DV01 by \$1000.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/2f7ea674886d1f423faebaf68992c28ddedcb9c5163751dad328a68786772f07.jpg)

This is important for a few reasons, the first of which is that the cost of hedging is affected by the delta of the option. The lower the delta the more you have to hedge and as that delta changes, the size of your hedge must also change.

# 6.5 OPTION VALUE CONSIDERATIONS - DELTA AND IMPLIED VOLATILITY

As delta increases, it increases the impact of your hedge. If you are maintaining a specific DV01 hedge you would have to reduce (i.e., sell) the puts as it moves further ITM in order to reduce the DV01 as gamma increases.

For me, I tend to focus on intrinsic value of the option strategy given the scenario I am positioning for, with the mentality that the premium I pay will burn away (hence it is an insurance premium). As a result, I must factor how much this insurance costs relative to my book value.

Very simply, if I did 37 lots that would cost me  \$4,625 at a price of 0'08 per option. On a\$ 20MM book that is 2.3bps. Doesn't sound like much, but if I have a target return of  $4 \%$ a year, I need to earn 1.6bps a day. So, you must weigh up the risk- to- reward of the option scenario but also the risk- to- reward of the hedge as a cost to the portfolio.

I tend not to run constant hedges via options due to the larger need to dynamically adjust for them. My preference is using futures for hedging portfolio duration and options for managing event risk. No hard and fast rule here. When looking at options, the other critical aspect to look at is Implied Volatility (IV) – based on the option's strike and expiry relative to the underlying and the option price, what is the implied move of the underlying?

In other words, what's the probability that the underlying price moves to the option strike in the given time frame? The higher the likelihood, the higher the price should be. Pay to play. The more volatile, the larger the moves (in both directions).

Unlike equities, bond futures IVs tend to exhibit a slightly more even distribution of volatility skew. Basically, equities are typically worried about downside moves (and vol expands on down moves more than up moves) while in treasuries it more regime dependent. Below are the 1-month 25D skews for ES and TY compared. 25 delta skew just means you take the IV for 1M calls trading at 25 delta and minus the IV for 1M puts trading at -25 delta. A more negative number means the IV on puts is larger than the IV on comparative calls.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/7f031ffa96f2ef4b5cbca2e118bd05dcd7f0a680c470874c90af1cfe7d6f098e.jpg)

This makes looking at vol skews on rates futures interesting because there's a little more two-way than broad equity indices – the rate cycle matters.

To view the skew, you can go to OVDV<GO> on the terminal to see this. Here's an example of TY skew back in 2018 comparing February skew (red) when inflation worries were top of mind (and resulting Fed hikes) versus December that year when stocks were selling off massively on Fed autopilot.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/d39efca4e9c9a93cfecfa0531f47b86afb8f39e1c144302d2f92ebafe4ee069c.jpg)

Notice how the skew flips massively? In Feb the skew was much more symmetrical (a smile) while in Dec '18 it looked like Quasimodo got his bells rang the right way.

You can also use the SKEW<GO> function which will plot vol by moneyness as default. Moneyness is simply strike as % of spot. In OVDV there is a tab for the 3D Surface. This is a screen that was used in ancient times when we all worked in an office with other people and your boss showed clients around the trading floor.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/c3f081f89ca1aef7cf143289bd9999ae0a4dba49d4ccfe29b81fbfc7edf7ed7b.jpg)

# 6.6 SCENARIO ANALYSIS

Finally, we can go through some option scenario analysis. On  $4^{\text{th}}$  Jan I tweeted: "...imo the path of lesser resistance is towards higher rates. 10s towards 1.50 with possible overshoot then a grind lower in 2H."

Now let's say I'm uber-bullish on bonds and think it's no longer a grind – I think by the time Jackson Hole wraps up risk assets are on fire, HY spreads are blowing up and growth projections are getting cut. I think 10s will be  $1\%$ . I also think  $1.50\%$  is the high bar so I'd be happy to own bonds there.

How would I model look at this scenario with options? Firstly, I'll use TYA – where the underlying is roughly 7y paper, not 10. But with 10s at  $1.30\%$  currently that's 30bps to my lower target and 20bps to my upside target on yield. 7s trade roughly with a 0.9 beta to 10s so I'm looking at 27bps and 18bps downside/upside respectively.

TYA currently is  $133 - 17+$  with risk of 8.429. So, if yields drop to my target that's 2.276 points  $(8.429 \times 0.27)$  and if yield rise that's -1.517 points  $(8.429 \times 0.18)$ . The price levels are 135.82 to the upside and 132.03 to the downside. I'll model 2 scenarios:

Scenario 1: High long conviction to  $1.00\%$  yield target.

There are few things to look at now:

1. How much does it cost to gain long exposure and at what strike?  
2. Is it worth selling calls at my target strike to cheapen the structure?

Firstly, I need to buy a strike below my target in order to have any reasonable chance of making money (I'm not trading vol here).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/64302d63f9bf0f7c469b46d4ae6f169b166650d17bc248934a046a707e4ced9f.jpg)

If I were to buy an ATM Sep call it would cost me '57 (\$890 per contract). My upside target is 135.50 so under blue skies I'd make \$2k (135.5-133.5) less cost of option = \$1,110 profit per contract. Simple R:R is 1.110 / 0.89 = 1.25

In my book, that isn't acceptable. You want something better than that. (Note that I assume price stops at my target)

What if I cheapen the structure by selling the strike at my upside target and make it a call spread? If prices rise my long call gets ITM and I make money. At the strike of the short call my exposure flattens out. The cost would be (57-13) / 64 = 687.50 per so my R:R is now 1.91 – sounds okay-ish.

ATM calls are just too expensive currently. The 134s are offered '41. If I do a 134- 135.50 Sep call spread, it would cost me \(437.50 and my upside would be 1,062.50 with an R:R of 2.43 - let's keep that in the back pocket for now.

Scenario 2: I think the long play is fine, but I really think the market is going to retest  $1.50\%$  on 10s first. I'd LOVE to own them at those levels but for now bonds are overbought and will likely get sold up to my target yield of  $1.50\%$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/d844cb82af7651ed333019800434570ab2c1a09d9cdcf50e4840fcdb8937edc6.jpg)

Same thing here, ATM puts cost me '54 while my target (132) is bid at '21. A put spread (buy closer strike Put, sell further away strike put) would cost me  $328 (21 / 64 \mathrm{ths})$ . My upside is 1.5k and after cost is 1.172k with an R:R of 3.57. So now I have an upside and a downside play. Let's plug them into the scenario analysis using OSA<GO>

PLEASE NOTE: Bloomberg reverted to their blood-sucking nature and made the key parts of OSA mentioned below into ADDitionally PAID features of their MARS functionality. In other words, they made OSA useless

to everyday peasants that already pay US\(20k a year to use the terminal. Pathetic. Either way, just read the below section and take away the principles and approach I employ.

Click on listed options to see the options chain. Recall if you are doing this with weekdays, you'll need to load the weekly bond future ticker at the top left instead.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/35d69d49d33cc871b8494b2357e5f644b8a5945c401ba55278cc5a4cd15ea8c4.jpg)

1. For my upside scenario I want to buy the C134s and sell the C135.50s  
2. For my downside scenario I want to buy the P133.50s and sell the P132s

Enter your quantity with direction. I put 1 for a long and -1 for a sell. The quantity doesn't matter for now, I can always scale to size as needed. Once done, click Add Options at the top. Start by zeroing the put positions so we just have the call spread loaded, you'll notice the cost associated with this. From here click on Scenario Matrix and later on, the Chart tab.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/d3d400534ca817c9eb92543487c3c1e601537db55998e873e067e4dbd6922958.jpg)

Within scenario you can model a combination of scenarios from shifts in underlying price, vol, date and rates. To the right, you will be able to see how the greeks change.

Here, I've increased size of positions to 100 contracts and model 0.25 steps in price 1 week away with 0 shift in IV. The dropdown also allows you to choose Flat instead of Step which makes every scenario line the same input (e.g., all prices at 133.00)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/9a25a54271c71f5a61f3a8340a0cd45b047dffe4caeb9f9f82780a782ac7881e.jpg)

# Some takeaways:

1. My breakeven a week away is at 133.75 even though I'm buying the 134-135.50 call spread  
2. Delta remains constant because of the even-sized call spread, hence also why Theta is very minor (I'm not losing time value because I'm long and short options at same exp)  
 3. Greek values are expressed as contract points (1pt = \$1000) but you can tick the Notional box to change it to $values

The chart tab graphically shows you the PnL performance of your options structure as underlying price changes for different time periods. You can change the x-axis from price to vol shift or other options.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/ed484a151af018de13551b289d592ccdd7919dfff4cdfcb3a9e4383aad46604a.jpg)

The put spread scenario is roughly similar but flipped around so there isn't really a need to go into that. What is more interesting is what if I decide that I want to be long volatility, but I don't know which direction bonds move? What happens if I combine the call spread and put spread together? This is known as a strangle (if the long call and long put strikes are the same then it's a straddle).

Immediately you should know that I am roughly doubling my cost but in reality, there's only one side that can win. So, the R:R must be lower (in this example it's negative!) This brings us back to the core tenet of options - the price of flexibility. The more flexibility you want, the more you have to pay for - there is no free lunch in this business.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/d82442a33e04d3f4337ba707da93d41a7509ad7ff04eb85ae69543b71543aa0f.jpg)  
The only things that are free tend to be bad opinions, and those can be costly.

The last part of this topic is just to wrap up the larger idea of options and implied volatility in interest rates. Plus, there's a juicy story involved. First, CBOE used to licence data from CME and produce TYVIX – treasury volatility based on TY implied vols. The index was based on the VIX methodology, looking at 1 month implied vols across all strikes. Then one day in May 2020 it stopped publishing. RIP TYVIX.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/70cf438b775e1236e515212092af3d8dba229d628aee55966c05d4d50261e8ab.jpg)

There are a few reasons we can dig into for why this happened:

First, in March 2020 when the pandemic hit, liquidity was so bad across the board that the TY options chain was EMPTY, devoid of quotes throughout large parts of the day. You can't calc a vol index using all strikes if there's nothing to price. Second, IVs on TY futures are price-based while bond volatility is conventionally expressed in basis points (remember convexity of price to yield and also why generic bonds are tracked via yield). Third is, CME was planning on releasing their suite of CVOL volatility indices for metals, other commodities and you guessed it, interest rates. They would go one step further; they would include both price and yield volatility measures.

Our dear @beth_stanton covered the death of TYVIX in a brilliant story here. She is a must follow for fixed income.

https://twitter.com/beth.stanton/status/1275875134625189890

What other ways can we measure rate volatility? Well, there is one that has stood the test of time. The OG rate vol measure is the MOVE Index, created by Harley Bassman (what a rockstar name!), and is the normalized 1M implied volatility of the treasury curve weighted by 2-, 5-, 10- and 30-year vols. The weightings are  $20\%$ ,  $20\%$ ,  $40\%$  &  $20\%$  respectively. Why normalize? Because an implied 20bps move on  $1\%$  yield is very different than on  $4\%$ . Normalization equates the basis point move in terms of yield.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/ab008b0a9496108acde654314463f8013672963a8478146cf7497ef02db78f92.jpg)

This is the MOVE index; you can see how it has climbed in recent days as bonds have rallied (yield down).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/f0ab592a64a7c8e5e20875c7f7e2a07c5a37421ca30a15756311d422502524df.jpg)

Running a correlation with implied vols and yields shows you that the relationship is not purely one-way and demand for volatility runs both directions. Simply – you can have high rate vol when the market is bullish bonds and also when they are bearish bonds, making rate volatility an extremely important tool in analysing the bond market.

# 6.7 TOPIC QUESTION

How would you construct a 2s10s curve steepener with 10K DV01 using ATM options? Assume ATM strikes are both exactly 50D with 1 month to expiry and underlying risk is 2.0 and 8.0 respectively. Ignoring premiums paid, in what scenarios do you profit or lose over the month? What must you consider if you wish to maintain the DV01 exposure?

Like the futures question, we first look at the curve trade itself – steepener means long end yields go up more than short end (or fall less than the short end) so we want to have long exposure to 2s and short exposure to 10s.

# Method 1:

Simply, if using ATM options we can buy ATM calls on 2s and sell ATM calls on 10s. In the futures topic question \$5,000 DV01 of TUU1 required 116 contracts. So, \$10,000 would be 232 contracts BUT with if the call option only has 50 delta then I would need to double that. So, 464 contracts of ATM calls on TUU1. Likewise, for the TYU1 contract it was 60 contracts for \$5,000 DV01 so at 50D for \$10,000 DV01 it would require 240 contracts.

My risk and considerations in this structure is many-fold:

1. 10s rally more than 2s resulting in a flatter curve and I lose on the structure. The delta on 10s would also increase more than 2s resulting in an increasingly higher loss as my short exposure grows faster than my long exposure.  
2. 2s get sold while 10s rally, which is the same risk as before but even worse as the delta on 2s decreases, thus making the delta exposure increasingly negative  
3. Throughout the month, I will have to buy/sell each leg to adjust for the changing deltas to maintain a DV01 neutral position. This will result in you crystalizing profits or losses on each leg.

# Method 2:

If I want to maintain long exposure on 2s and short exposure on 10s, I could also buy ATM calls on 2s and ATM puts on 10s. In this scenario, my risk is ultimately limited to the premium paid as I am long both legs. If the curve as a whole rallies, I will make money on 2s while the premium paid on 10s will burn away. Likewise, if the curve sells then the premium on the long calls on 2s burns away while the puts on 10s get ITM. This is a much safer way to express the trade than Method 1.

# Method 3:

Sell ATM puts on 2s and long ATM puts on 10s. This is effectively the opposite of method 1. As I am short the ATM puts on 2s, (i.e. I am effectively long because I will get delivered the 2y note) my risk here is that 2s sell more than 10s resulting in an increasingly negative delta exposure and thus increasing losses as yields rise across the curve. My hope in this structure is that 10s sell off more than 2s within the 1-month time frame resulting in a positive PnL when the options expire.

The important thing to consider in this question is considering how you structure a directional trade using options determines the risks you undertake. Buying options caps your risk to the premium paid while shorting options results in open-ended exposure to losses. The trade-off between the two is whether you are paying or receiving the premium in the structure.

# 7. Bootstrapping the Yield Curve

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/b8b939c406fa54392f28ed362edf458951a9064ac4aa7326f088dc02fdc0caec.jpg)

This is a bootstrap. You pull on the tab and it helps getting your foot into the boot.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/7c966d0bfe372f62cf672e12092a78c5693aaed169c7ab81ef499f8243b0f881.jpg)

The idiom "pull oneself up by the bootstraps" is, if you think about it, literally impossible - lifting yourself up off the ground by pulling on your bootstraps. The idea of it though, came to mean bettering yourself on your own and as a modern-day extension of that idea, as a reference to a self-sustaining process without external input.

What does that have to do with the yield curve? Bootstrapping the yield curve is the process of sequentially deriving zero rates from the short to long end of the curve using only the existing yield curve.

Before we get into the guts of it, let's talk about WHY you want to do this. Bootstrapping the yield curve will allow us to discount cashflows accurately, imply forward rates and project a forward curve. This has implications on pricing: forwards & futures, swaps, options, cash bonds and even credit risk. In the subsequent topics, you'll see how bootstrapping the yield curve plays into each of them.

# 7.1 MEET THE CURVES: PAR, SPOT & FORWARD

Let me start of by introducing the various types of curves: the par curve, the spot curve & the forward curve. For this topic, we will use the US Treasury Curve and the USD 3M LIBOR Swaps Curve but the principles, which we are concerned with, are universally applicable to any curve.

We start with the par curve. This is the curve that everyone is familiar with, whether you realize it or not. The 10-year yield, the 5s30s spread, the 2s10s30s butterfly, etc. are all referencing the par curve. It is called the par curve because it contains the yields for all bonds priced at par along the curve. At par, it means the coupon = yield and price = 100. THIS IS CRUCIAL TO THE CONCEPT OF BOOTSTRAPPING.

Now importantly, remember we learned in Topic 1: Bond Math that the yield to maturity of the bond is the yield necessary to discount all the cashflows to arrive at its price; The IRR of the cashflows. That means that the yield contains compounding effects on multiple cashflows. They are compounded yields.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/c938306eaa4d4696833f4ba76fcb6d0d4672e66998ed4c1ff0a044bb0dc41f34.jpg)

# 7.2 STRIPPING THE YIELD CURVE

If I have a single cashflow and I want to discount it today's value, I want a rate that is specifically for that one single cashflow. A zero-coupon bond is structurally the same - a single cashflow (the principal) paid at maturity which you discount to today's value. Technically, using a compounded yield isn't appropriate.

If you look at \(1000 par value of a US Treasury 2-year bond paying a \(1 \%\)coupon semi- annually, its cashflows can be decomposed as:

Year 0.5 = Coupon 1 = $5 ($1000 * 0.01/2)

Year 1.0 = Coupon 2 = \$5

Year 1.5 = Coupon 3 = \$5

Year 2.0 = Coupon 4 + Principal = $5 + $1000 = \$1005

If you were to 'strip' each cashflow out and buy/sell them separately (which you actually can do), each cashflow is in itself, a zero-coupon bond. The idea of stripping out the coupons from the par curve and discounting them is referred to as 'stripping the yield curve'.

On FIT<GO> you'll find a tab for Strips where you can trade coupons and principals that are stripped out of a treasury and actively tradeable.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/3cb8b0c46d62f712d0bd6ea1cd0ea0ff1bb6a8a0b563df66f66b6750ed92343c.jpg)

By finding the yields on zero coupon bonds at each tenor (year) of the par curve, we will build the ZERO RATE curve, commonly (and slightly confusingly but I will explain why later) known as the SPOT CURVE.

Let's establish the first concept: a Par Curve has yields with compounded cashflows and a Spot Curve has yields with zero coupons.

How do we bootstrap the spot curve from scratch? A self-sustaining process needs a starting point. As it happens, the par curve does have zero rates! At the very front of the curve, we have money markets instruments; US Treasury bills are discount-quoted debt of up to 1 year and importantly...they have no coupons.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/1637dcd8840b277343849fcfb8b65b9cfec8f0eb58c1f2f4b5114a488560f97e.jpg)

Now for the sake of simplicity, let's assume all bonds pay annual coupons. Take a deep breath, we're going to strip an imaginary par curve. Remember, Par implies yield = coupon and price = 100!!! Also, remember that bills are discount-quoted but, you can easily find their bond yield equivalent

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/784ab92179ddae2903cad23a0ccdf4a3b0b8d9f1f97fe8eaaf45673d7fdfb712.jpg)

So, here's how the concept of bootstrapping goes. Let's assume the following:

The 1-year Treasury bill yields  $1\%$ , pays no coupon – that means it's basically a zero-coupon bond.

The 2-year Treasury note yields  $2\%$ , pays annual coupon

<table><tr><td>Tenor</td><td>Par Yield</td><td>Year 1 Cashflow</td><td>Year 2 Cashflow</td><td>Zero Rate</td></tr><tr><td>1-year</td><td>1%</td><td>100</td><td>-</td><td>1%</td></tr><tr><td>2-year</td><td>2%</td><td>2</td><td>102</td><td>?</td></tr></table>

That means that the 2-year note's  $1^{\text{st}}$  cashflow can be discounted using the 1-year zero rate:

$$
[ \$ 2 / (1 + 0. 0 1) ] = \$ 1. 9 8 0 2
$$

Because we're looking at bonds on the Par Curve, it means the 2-year note is priced at par = \$100. So that means the pricing of a 2-year note trading at par is composed of:

$$
\$ 100 = [ \text {D i s c o u n t e d Y e a r 1 C a s h f l o w} ] + [ \text {D i s c o u n t e d Y e a r 2 C a s h f l o w} ]
$$

$$
\$ 100 = [ \$ 2 / (1 + Z 1) ] + [ \$ 1 0 2 / (1 + Z 2) ^ {2} ]
$$

$$
\$ 100 = \$ 1.9802 + [ \$ 102 / (1 + Z 2) ^ {2} ]
$$

Therefore  $[102 / (1 + Z2)^2] = (100 - 1.9802) = 98.0198$

That means:  $98.0198 = 102 / [(1 + Z2)^2]$  where  $Z2$  is the 2-year zero rate.

$$
Z2 = \sqrt{(102 / 98.0198) - 1} = 2.01\%
$$

<table><tr><td>Tenor</td><td>Yield</td><td>Zero Rate</td></tr><tr><td>1Y</td><td>1.00%</td><td>1.00%</td></tr><tr><td>2Y</td><td>2.00%</td><td>2.01%</td></tr></table>

If the 3-year note trading at par yields  $4\%$  then we know that:

$$
1 0 0 = (4 / 1. 0 1) + (4 / 1. 0 2 0 1 ^ {2}) + [ 1 0 4 / (1 + Z 3) ^ {3} ]
$$

Thus  $Z3 = 4.098\%$

<table><tr><td>Tenor</td><td>Yield</td><td>Zero Rate</td></tr><tr><td>1Y</td><td>1.00%</td><td>1.000%</td></tr><tr><td>2Y</td><td>2.00%</td><td>2.010%</td></tr><tr><td>3Y</td><td>4.00%</td><td>4.098%</td></tr></table>

With a zero rate, we can discount cashflows to their present value which is actually what we've been doing to find each new zero rate. So, we can transform the zero rate into a discount factor as introduced first in Bond Math; "For every \$1 of cashflow, what is its present value?"

$$
D F = 1 / \left(1 + Z _ {n}\right) ^ {n}
$$

Discount factors are convenient to use because they easily translate cashflow from present values.

<table><tr><td>Tenor</td><td>Yield</td><td>Zero Rate</td><td>Discount Factor</td></tr><tr><td>1Y</td><td>1.00%</td><td>1.000%</td><td>0.990099</td></tr><tr><td>2Y</td><td>2.00%</td><td>2.010%</td><td>0.960980</td></tr><tr><td>3Y</td><td>4.00%</td><td>4.098%</td><td>0.886488</td></tr></table>

With the 3y, you can then do the 4, then 5, then 6...all the way up to 30yr zero-rates or for as far as you have an observable rate. This is the self-sustaining process of bootstrapping.

You'll notice from the table above that zero rates are higher than par rates. This makes sense - without coupons, an investment must have a higher rate of return in order to generate the same terminal return. This brings us back to 'gapping' forward rates that we covered in bond math.

# 7.3 IMPLYING FORWARD RATES

If I put \$1 into a 1-year zero rate investment, I would receive 1 * 1.0100 = \$1.01 at the end of 2 years.

If I put \$1 into a 2-year zero rate investment, I would receive 1 * 1.0201² = \$1.0406 at the end of 2 years.

What is the rate that I should earn for a 1 year zero coupon investment, 1 year from now? In order for there to be no-free-lunch, it should be such that investing for 1 year and rolling it into the 1y1y rate the same as if I just put it into the 2y rate from day 0.

$$
1. 0 2 0 1 ^ {2} = 1. 0 1 * (1 + F 1 y 1 y) ^ {\vee}
$$

$$
\mathrm{F1y1y} = 3.0301\%
$$

<table><tr><td>Tenor</td><td>Yield</td><td>Zero Rate</td><td>Discount Factor</td><td>1y Implied Fwd</td></tr><tr><td>1Y</td><td>1.00%</td><td>1.000%</td><td>0.990099</td><td>3.0301%</td></tr><tr><td>2Y</td><td>2.00%</td><td>2.010%</td><td>0.960980</td><td>5.6687%</td></tr><tr><td>3Y</td><td>4.00%</td><td>4.098%</td><td>0.886488</td><td></td></tr></table>

If we stripped the entire curve then implied forwards, the three curves would look like the following:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/cb0e568e943d2118d073b8069408d80d76b24a65180edda5d601424b79bad479.jpg)

Now, let's say the 4y rate is  $4.50\%$ , only 50bps higher than the 3y rate, what would the 1y3y forward rate look like?

<table><tr><td>Tenor</td><td>Yield</td><td>Zero Rate</td><td>Discount Factor</td><td>1y Implied Forward</td></tr><tr><td>1Y</td><td>1.00%</td><td>1.000%</td><td>0.990099</td><td>3.0301%</td></tr><tr><td>2Y</td><td>2.00%</td><td>2.010%</td><td>0.960980</td><td>5.6687%</td></tr><tr><td>3Y</td><td>4.00%</td><td>4.098%</td><td>0.886488</td><td>5.8542%</td></tr><tr><td>4Y</td><td>4.50%</td><td>4.619%</td><td>0.834746</td><td></td></tr></table>

Important to note, the forward curve rates are the implied forward ZERO rates based on the zero rates at spot (today). This is why the zero-rate curve is called the SPOT curve. Spot zero rates vs Forward zero rates.

One important implication of this is that the steeper the par curve the higher the implied forward rates. If my starting rate is much lower than the rates further out the curve, any compounding I do needs to be at a much higher rate to "catch up".

Suppose we took the USD Swaps curve, which consists of multiple tenors of fixed-float swaps using 3M LIBOR as the reference index for the floating leg:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/6499b9edf80326adffebbd39cb72629bb8123acbe05a0dd94b1e310f44304eb3.jpg)

If we can extract zero rates all along the curve, we can find out the implied 3M forwards that are embedded in this curve. While all the observable rates on the curve are not spaced out in 3M intervals, the process of interpolation (finding one point between two others) allows us to determine the necessary spot rates and thereby, the implied forward.

The specific methodology is somewhat more intense for this series but know that you can either draw straight lines to connect the rates or draw a smooth curve between a series of rates. Understandably, whichever you choose affects the spot rates you derive. On the terminal, you can view the settings to derive them at SWDF DLFT<GO> which are global settings (i.e., affects all swap curves).

To view see spot and forward rates, you can go to FWCM<GO> which is a forward rate matrix.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/1bc5dcb601d4e6bf4ac510b99c5a3cc823c993631608e1daea3c9646c65ceccd.jpg)

The left column are the tenors of the curve, and the top row is the forward date. So, the 7-year forward rate implied 3 years from now is  $1.7931\%$

If you look at the market observed rates, you can see the spot rate for 3y is 0.4059 and for the 10y it is 1.3791. Using what we've learned we know that 3y7y should be close to  $[(1.013791^{10} / 1.004059^3)]^{(1/7)} - 1 = 1.799\%$ . In the screenshot you can see it is  $1.7931\%$  so while it's close, it's slightly off.

The reason for this is due to daycount conventions and properly counting dates (in the above I just assumed a perfect 3y, 10 and 7y timeframe). Treasuries follow ACT/ACT daycount conventions BUT FWCM is actually built using swap conventions, so it uses 30/360. Let's back it out:

The 3y rate is taken from T 0  $1 / 4$  06/15/24. From today's settlement  $(t + 1)$  that is 07/13/21 - 06/15/24 = 1052 Days

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/c16e5d970cf16d5679489ef65968be476946272077b7c51cc629a396f1f70d78.jpg)

The 10y rate is taken from T  $15 / 31$  (hover over the 10y spot value). That is 07/13/21 - 05/15/31 = 3542 days

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/f99249f3998ed03ae80083ccb7e14fb6f4202af05a51d4b85fac757f7f4b487f.jpg)

The number of days in between is  $(3542 - 1052) = 2490$  days. This is how many days the forward rate must compound by.

So, the 3y7y forward rate = [(1.013791 $^{(3542/360)}$  / 1.004059 $^{(1052/360)}$ ) $^{(360/2490)}$  - 1 = 1.793096%

A similar screen to FWCM is FWCV<GO>, which also lets you see a horizon curve for forward rates as well as a tab for the implied forwards for specific tenors. Here we'll use the USD Swaps curve and in particular, we'll focus on the Implied Forwards tab.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/26fe41aa12af51230f5fd90f8b33babf3fcae6bd6197be7bc4d813c3076b37dc.jpg)

The implied forward tab allows you to imply the forward rates for a specific tenor into the future based on spot rates. In the screenshot, we are looking at the implied 3M rate, every 3 months for the next 5 years.

Spot is the current zero rate at every 3-month interval while projection is the implied 3-month rate at that date. Confused? Yep. Second row, 10/14/21 – that's 3 months from now. The zero-rate curve says that to invest from now to 10/14/21 you should earn  $0.1304\%$ . When it comes to maturity, i.e., 10/14/21, you should be able to invest for another 3 months at  $0.1458\%$ .

So why do we need all of these different curves? What purpose do they have? Well in the coming topics you will see that they underpin everything in fixed income beyond the basic concept of YTM and bullet bonds. As this is just a basic series, we won't go too deep into all the calcs (that's what you have systems for anyway). The more important part to me, is to understand why and how they are valued the way they are. Knowing how we derive spot and forward rates from par curves is extremely important in understanding what is happening in fixed income markets as it ties everything together from curve steepness to swap rates to the value of a floater.

Want to value a bond properly? You need discount rates/factors. Want to find out the credit risk of a callable bond? You need discount rates. Want to price a forward rate agreement? You need forward rates. Want to price an interest rate swap? You need forward rates AND discount rates.

Buckle up.

# 7.4 TOPIC QUESTION

1. If the par curve is inverted up to the 10y tenor, what would the spot curve look like relative to the par curve?  
2. Given a par curve, could you project a FORWARD par curve? If yes, how?

1. An inverted curve means that short-dated yields are higher than longer dated yields. This means that zero rates get lower the longer the tenor gets as the fair value of compounded cashflows is a lower target yield. An easy example is that if the 1-year rate is  $1\%$  and the 2-year rate is  $0.5\%$  then

$$
100 = (0.5 / 1.01) + (100.5 / (1 + y) ^ {2}) \text {results in} y = 0.499 \%
$$

2. Yes you could. The logic is simple and applies everything covered so far: From par curves (compounded yields) we can strip the curve and find zero rates. From zero rates we can imply forward rates. The forward rates are forward zero rates. So if a single compounded yield is made from a series of zero rates we can thus use a series of forward zero rates to imply forward par rates.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/2441ea7e0c44e68dec8b0d9d4ee59d02d38598818835b15137b08f4c3d9a9e4d.jpg)

# 8. Credit – Introduction to Corporate Bonds

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/fc911a76ff4493fa7c06b6dcfcf5964b57d13ceb56d5862291e6f9045beeee55.jpg)

# 8.1 KEY CHARACTERISTICS OF A BOND

Let's start to define some terms that get loosely thrown around in bondwtit. Bonds are just fixed income instruments like sovereign and corporate bonds. Corporate bonds or debt instruments with corporate credit as the underlying are what we mean by 'credit'.

Typically, on a bank's trading floor you'll find that rates are lumped with currencies, while credit is separate. So even though rates and credit are both dealing with bonds, there must be something different about the way you look at them. So today, we'll introduce the credit complex. What is a complex? It's when you persistently apply technical analysis to VIX charts or divide a series by the Fed balance sheet. More importantly, it's also a term in finance for an interrelated set of financial instruments and measures, which is what we'll focus on today. The credit complex would encompass all areas of corporate bonds from the yields they trade at, spreads, credit ETFs, CDS, and so forth.

As much as rates are talked about on fintwit, credit is really where we look to quantify the most risk. It's where corporate funding and market risk sentiment translate into yield. Often macro-observers look to credit markets for indications of stress before equity markets do (debatable but does present some use-cases). Even for sovereign nations, their bonds are benchmarked against a risk-free counterpart and trade at a spread that reflects their credit risk such as EM sovereigns in USD or say Italian BTPs against German bunds. Don't short BTPs btw. JUST. DON'T.

Remember, bonds are basically loans. Issuers are borrowers and investors are lenders. So, if you are lending money to someone, you want to be picky about who you lend to. The riskier the borrower, the higher the chance they can't repay you later on.

As a credit investor, your typical investment objective is return of capital with capped return – i.e., the yield (let's ignore distressed debt). This translates into an overriding concern and analysis on the downside – the risk. So rather than judging how much risk you need to take to earn a certain reward, try to flip your thinking around to “is this reward enough for the risk I have to take?”

By now you've gathered that credit risk is really at the forefront of concerns here but before we dive into that, let's look at the types of bonds you may encounter. First, let's consider different ways a bond can be structured:

First of all, what are some the key things to look at with a bond? Take this fairly standard bond as an example:

1. The country it's issued in  
2. Ranking  
3. Coupon and Type  
4. Frequency  
5. Maturity  
6. Currency  
7. Bond's rating  
8. Amount issued/outstanding  
9. Minimum piece/increment  
10. Par amount

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/85888ee72a061b29dbfa524a062b3f906071c4481fc2500a4fd1feb48a328e7b.jpg)

Country – As bonds are OTC they can trade anywhere in the world. They can also be issued anywhere in the world (within that market's regulations). So, when it comes to bonds there are two main “countries” to take note of: the country of incorporation and the country of risk. If GE issues a bond out of its subsidiary in Ireland but the ultimate parent is based in the US, the country of incorporation is Ireland and the country of risk is US.

Ranking – the bond's ranking in the issuer's capital structure. The higher the ranking the safer the bond. Secured means it has collateral placed against it, unsecured ranks lower. Senior is higher than Junior/Subordinated. This hierarchy determines who gets paid out in the case of liquidation. Equity is at the bottom. Collateralization always takes priority over seniority, so Secured debt is 'safer' than Senior Unsecured.

Coupon and Type - The ANNUAL coupon rate and its type. fixed, floating, variable, zero, etc.

Frequency - how often the bond pays a coupon. E.g., semi-annual = 2 thus Coupon Payment = Annual coupon / 2

Maturity – when the bond pays out its final coupon and returns the principal

Currency of the bond – what currency a bond trades in. Some bonds can be dual currency – e.g., the principal and coupon are paid in USD while the notional value of the bond is priced in a local currency. Indian masala bonds are one such type of dual currency bonds.

Bond's rating – what an agency got paid to put there by the issuer. Kidding. Sort of. It's a credit rating agency's judgement on the quality of the credit. Do note that there are credit ratings for the bond AND credit ratings for the issuer.

Amount issued/outstanding – original size of the issue / what's remaining in the market

Minimum piece/increment - minimum amount per purchase / minimum increment of purchase size. So 250,000/1,000 means the smallest amount you can buy is 250,000 and you can increase the piece in 1,000s.

Par amount – Never have I ever seen a more poorly communicated concept in finance classes. Think of it as the benchmark value of principal when first issued. The biggest confusion people get is when they see par is 1,000 and the price is 100 and both are called ‘par’. The price of 100 is actually ‘percent of par’ that the bond trades at. 101 = 101% of 1,000, so 1,000 face value = \$1,010. What is face value? Sometimes just called ‘face’ is the same as par value, so you may also hear it referred at ‘par amount’: “I am buying \$250k par amount of MSFT 26s”.

# 8.2 TRADE TERMS

When you trade a bond, corporate or sovereign, there are a couple of conventions to take note of. Remember, bonds are mostly traded over the counter (OTC) so there isn't one central place to see the last traded price like with stocks. This lack of transparency means some feeling in the dark is necessary.

Imagine a farmer's market with 100 stalls. 2 of them on opposite ends are selling apples. If you buy 1 apple for  \$1 from stall A, you have no idea at that moment what stall B is selling an apple for. If you want, you'll have to walk over and ask first. If A sells for\$ 1 and B sells for \$2, what's the fair price? \$1.50? Now imagine out of the 100 stalls, 50 of them sell apples. It's much easier to find out a fair price with the larger sample size AND there're many more apples available.

This is how the bond market works: more participants = more liquidity = more inventory = more transparency and the only way to find out a real price is to ask around one by one.

On Bloomberg you can go to ALLQ<GO> to see all the quotes available on a bond. The more brokers you have, the more quotes you'll see. (I've blacked out my broker's names on this screenshot for privacy). The ones at the top are

called “composites” created by Bloomberg to capture an ‘average’ quote for a bond. This is analogous to an exchange price.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/74183d9a5ea0696611e2e28f9ac929eb83911c90c19a1a65c79cb0dbb4c464c7.jpg)

If you're buying, you're concerned with the prices on the right side, the ask. How much the broker is asking you to pay for the bond. If you are selling you are looking at the left-hand side. Based on the price the second column shows you the annualized yield to worst/convention that you would be selling/buying at. What is yield to convention? It's basically the type of yield (to call-reset/maturity) that the market is pricing the bond to. This will make more sense later on.

Next is the bid and ask size. This is how much is available in 1,000s. 1,000 = \$1 million face bid/offered. A lot of these prices and sizes will be 'indicative' meaning it's just a price the broker is indicating they'd be likely to transact at.

You may see or hear something called ‘axes’. Every day, a broker will have a list of bond inventory they have or want to get which they will work throughout

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/9578352c3a051c94a0632b8fa9ad6c8d876c3c47098fba946de65a0c1f377ad5.jpg)

$1000 \times 1000$

the day to sell or buy. If they are ‘axed’ it means they have an intent to fulfill that position. That gives you an idea that this price they are displaying is a truer reflection of their intent and price to transact.

Now when you buy a bond, there is the clean price and the dirty price (we introduced this at the end of bond math). The CLEAN PRICE is the percent value of the bond's face as of the settlement date (typically  $t + 2$ ). Because coupons are paid intermittently throughout the year, every day you hold a bond you earn some of that coupon. This interest that accrues up to the settlement date belongs the original owner (who is now selling). But the new buyer will receive the full coupon when it gets paid out later on – so he has to pay the seller their accrued interest. The clean price plus accrued interest is the DIRTY PRICE. The majority of bonds are quoted 'clean' but what you'll actually pay to the seller is the dirty price.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/7dbcfb12a4129729d19b76344285ebb91d86f7fd4a35243bcfb5a48ea78f06e7.jpg)

If you are comparing bond prices on a system and trying to back it out on Excel using the PRICE or YIELD formula  $99.99\%$  of the time the reason why you can't match is because you're comparing clean prices to Excel's dirty price.

Now, the price you negotiate is tied to a yield and also a spread to its benchmark. That spread has two variables – the bond and its benchmark. Corporate Bond Yield = Benchmark Yield + Spread to Benchmark. So, a bond's yield/price could stay the same while the benchmark could move around. If you were to hedge out the duration risk of the bond, then it's just the spread you're buying – this is why bonds are also quoted in spread terms. Rather than "2MM at 101.50" you might hear "2MM at +135" meaning you are buying the bond at the price where it is 135 basis points over the benchmark treasury. In this case, you need to make sure you're looking at the same benchmark as the broker!

As the bond market is opaque, finding out prices is a key part of the game here. You don't wanna be buying way over market or selling way lower, and neither does the broker. So, once the trade is complete, the broker may ask "can I get a cover?" This means they want you to sign the cover page of their desk calendar as a show of gratitude for taking the piece of garbage MSTR convert off their books. Kidding. A 'cover' means the next best price you were quoted for that transaction (as you were likely shopping the trade around to multiple brokers). That way, your broker has a better idea if they're off-market or not. There is zero obligation to give them a cover (or an accurate one) but it's best to remember that in opaque markets, it's relationships that drive information and transactions.

How do you even trade bonds? Well, there's 'voice' and there's electronic trading. The bond world is slowly moving over to electronic trading but it's not all there yet. Personally, the majority of my bond trading still by voice actually! We call it voice but that includes the chat function on the Bloomberg terminal. It goes something like this:

# Hi EMH

Hi Steve, what's up

Well today is your lucky day, my pain is your gain. Those Evergrande bonds you wanted last month? I'm axed to sell and I already emptied nana's retirement account on them so the surplus has gotta find a home, which sounds like your house.

For a steak dinner at wolfgang's and a bottle of '85 chateau margaux it's a deal

Haha you're a funny man EMH

I'm funny to you? Funny how? Do I amuse you? Am I a clown? Do I amuse you?

End Scene. Jokes aside, in reality it goes something like the following:

# Hi EMH, have seller with \$2MM of MSFT 2.4 8/26, I can offer 107.00

Hi Steve. Sec.

Can you do 106.75 for 1MM?

Lemme check with my trader

We can do 106.75 but it has to be the full \$2MM

ok I can do that

Done. Sold to you at 106.75. VCONs coming your way shortly

Simple as that. I get a trade recap which gets sent to my back office. They match the recap with the trade confirmation sent by the broker's back office. The trade gets booked with the custodian and they enter the trade details into the clearing system (e.g., DTCC in the U.S. and Euroclear outside of U.S.) whereby the broker's back office will do the same. This is called 'facing' each other. Once the details for both counterparties match, the trade gets settled (meaning the central clearing house receives cash and bond from either side, then releases both to the respective parties).

So now that we're familiar with bonds in general, let's take a look at the types of bonds you could trade.

# 8.3 BOND STRUCTURES

# Bullet

Probably the most common bond you'll encounter. It has a specific maturity where the principal is repaid. Imagine a bullet being fired in a straight line until it hits its target and stops. The bond math we covered in Topic 1 explains the calculations of this bond's value

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/fe81437f9ddfa42ce7ec8cd0c19a84018db9632db49db4b60f180147a04fadca.jpg)

# Callable

- Has a maturity date AND a date where it can be called  
This is when the issuer CHOoses to buy the bond back from people who own it  
It can be called on specific dates or any time after a certain date  
Special type is the make whole call

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/815d6f7cc9d46062ea45cf536055bbae683060139b9f1250d92e04dba802b0a8.jpg)

# Puttable

- Like a callable but the option is flipped in the investor's favour.  
The investors are given an option to SELL the bond back to the issuer on/after a certain date

# Sinkable

- Where a bond amortizes over its life by getting the principal repaid by a sinking fund set up for it  
- With each payment date, the amount paid to investors is the coupon + part of principal that slowly reduces the principal until maturity  
Coupon rate stays the same, but because the principal reduces the coupon $ reduces over time

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/62dec9033adb62dfc131697f33e25330653544bf09369dcc3793ac0070927dc6.jpg)

# Convertible

- A bond with an equity call option embedded that allows you to convert the bond into the issuer's equity instead.  
- The conversion price is typically quite a bit higher than the spot equity price meaning that while the equity is trading below the conversion price, the convertible acts more like a bond. This is important because a bond has a fixed payout over its life. A stock does not, but it allows for capital appreciation.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/bf487a0ea80b1253c1adb9db152f9541ff5503bebb6b2c17069deb5acd712615.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/4eb3e09e0ec694edfca3c9f1bcd46c07f617ca88a754ef5a16f4e10a728eddbf.jpg)

So, if the market believes the stock price will move above the conversion price, the behaviour of the convertible begins to act like a stock rather than a bond. When this Tesla bond was issued, the stock was trading at around \$48 with a conversion price of 61.9655 – while the bond did move in line with the stock there was still some basis.

It wasn't until later november that the stock moved past \$62. Now look at how the convert and stock traded alongside one another throughout 2021.

As mentioned, the convertible is basically a bond with an equity call option embedded. This is why once the equity option is ITM enough the delta of the option becomes 1.00 and the convertible begins to trade as an equity.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/0d21dd067052ff967a9e4b6a7c18757180779ebeadac564d3af8d2ce60173146.jpg)

# Perpetual

Rather than a specific maturity, the bond never matures. I.e., you never get your principal back. You lend the money forever. Only way to get your money back is to sell it to someone else. Sounds bad? Then don't buy blue chip dividend stocks. Preferred equity shares are treated the same as they are functionally equivalent for the most part – you buy a preferred and in return get regular dividends in perpetuity, often with no voting rights.

There is a special type of perpetual bond, which are the designed to be Basel III compliant and absorb losses and fall under what are called TLAC (total loss absorbing capacity) bonds. These bonds are issued by financial institutions as part of raising additional capital for their balance sheets.

Most of these TLACs are Perpetual bonds with an option to call the bonds. A popular call date is 3, 5 or 7 years away. The coupons are typically fixed but reset to a floating rate at the call date. If you see the term PerpNC7 the NC stands for Non-Call (until) meaning the bond is a perpetual until 7 years later when the call schedule begins.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/e377e0449445d149254256aacba16bcdaf71be6ab948f7d53cb93f5a842ae68b.jpg)

A subset of these TLAC bonds is a special breed known as CoCos which stands for Contingent Convertible bonds.

# CoCos - Hybrid Bonds

In the wake of GFC, regulators required banks to shore up capital in order to withstand financial distress. Recall the classic accounting equation: Assets = Liabilities + Equity. Because impairments of assets hit the value of equity, enough impairments can make equity go to zero and results in Lehmanism. So, under Basel III rules, banks must hold a certain amount of core capital in the form of equity and retained earnings against risk-weighted assets. This ratio of equity to RWA is known as the Common Equity Tier 1 Ratio – CET1 Ratio. The minimum they must hold is currently  $7\%$ .

What banks were allowed to start doing was to issue a bond that in times of stress could do two things:

1. Stop paying coupons  
2. Convert into equity or become completely written off

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/e9fa7472e59f9332ff7c1f5c2fe49c3451ddc6ffe13d3603876350f716ceeb9b.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/aed8d0a46db33dfec0034271360023b4519611a699e4ee87203d02172d9f0447.jpg)

The halting of coupons would reduce cashflow issues and lower expenses, raising equity through retained earnings but the kicker is really #2. If the CET1 ratio drops below a trigger point, the whole bond either converts into equity or gets written off.

This either boosts the equity portion or reduces the liability, either of which helps the balance sheet.

A conversion contingent on a trigger, which is a pre-determined regulatory level – the CET1 ratio. It is a mechanical trigger, meaning there is no discretion involved. It happens when it happens. Since their introduction, no CoCo has ever triggered its conversion however there were widespread fears about DB and its CoCos back in 2016.

You will also NOT FIND any U.S. bank with a CoCo. This is because U.S. banking regulations prohibit their banks from issuing CoCos to meet their additional capital requirements. Instead of CoCos, U.S. banks issue preferred shares of equity. A key difference between these preferreds and CoCos is that in order to stop dividend payments on the preferred, common equity dividends must also be stopped, with CoCos the coupon stoppage is independent.

That wraps up the basic introduction to credit! Now you're familiar with some of the bonds available and some of the nuances involved. In the next part, we start to look at how to quantify credit risk in bonds (please re-read the special topic on bootstrapping if you haven't done so).

# 8.4 TOPIC QUESTION

1. For a callable bond, when would an issuer be likely to call the bond back from the market and how does that impact the convexity of the Price/Yield chart?  
2. If a Samurai Bond is a yen-denominated bond, issued by a non-Japanese corporation for the Japanese domestic market, and a Bulldog bond is a British-pound bond issued in the UK by a non-UK entity, what is a USD-denominated bond issued by an Australian corporate in Europe called? What if it was issued in the US?  
1. An issuer is likely to call back a bond when interest rates are low. This is because they can then re-issue the bond at a lower coupon, particularly when the bond can be called at par (100). This affects the convexity of the price/yield chart by making it negatively convex at yields at or lower than where the call price is. Above the respective yield, there is no incentive to call the bond and it trades like a normal bond. The shape of the curve is therefore in an "s-curve"  
2. USD-denominated issued by Australian issuer in Europe = Eurodollar bond. USD-denominated issued by an Australian issuer in the U.S. would make it a Yankee Bond (I'm not kidding).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/0f1d020fc2f88e5ee396680e056f39f924d29f597940eb7252a4de01158c9055.jpg)

# 9. Credit Risk

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/2bd24e7699165a89c8a9636c24c56d88af3c3a082c6481fa73a664ac05ee24b2.jpg)

Today we'll learn ways to quantify credit risk, namely through various spreads that are often quoted, what they measure, how/when to apply them and their differences. This is the backbone of credit analysis. Let's begin.

# 9.1 WHAT IS CREDIT RISK?

First let's start with the basic concept of yield. A bond's yield is the annualized return you'll earn if held from now until the principal is repaid. If there exists a risk-free yield, then a corporate bond's yield must be the risk-free yield plus compensation for added risk.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/633fad46c76a91bf5a4bb60cdcc2ee3639ad84df69a1dc20eda311b6a842cc6a.jpg)

This is the resounding principal of any credit risk measure; the extra reward you get for taking on added risk. In practice, we've already seen a basic example from the money markets topic: LIBOR-OIS – the interbank lending rate over OIS is a measure of interbank credit risk.

In credit, a similar measure is the Spread to Benchmark: AAPL 10y bond pays  $1.818025\%$  yield while the 10y UST pays 1.476495, a spread of 34.15bps. That is a form of a credit spread.

But the 10y UST matures in 05/15/2031 while the AAPL bond matures in 02/08/31. That's not exactly the same maturity – the AAPL bond matures 3 months earlier. What if I wanted the spread exactly to the 02/08/31 point?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/6b6fa8c068fe02ea00c7ce616307ef2eae9491d6ff84b4903c4d43354a6c486a.jpg)

That's the G-Spread (G for Government). You interpolate the exact point on the yield curve (linear interpolation) to match the maturity of the credit and find the spread there. In this GC<GO> chart the yellow marker is the interpolated benchmark yield while the red marker is the AAPL bond's yield. The gap between the two is the G-Spread.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/557b7ed7aa4d34c25a373f3f740fc880e0cbc04e743618ef9d056cb499b207d6.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/011b4a2e2010ee8f5fdd83fb583405ec8d8e357dd61d6bf758c0b9fdef300c9c.jpg)

If you want to match your YAS screen with the GC screen you must make sure you have commonality between pricing settings. This is why in GC I underlined YTM ASK. On YAS<GO> the default setting should be to price on Ask. Why? Because you generally buy on the ask and sell on the bid and Bloomberg typically defaults to buyer's perspective. This is often a huge reason why brokers and clients will mismatch on pricing when referring to Bloomberg screens. Pricing defaults are a headache but also massively important.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/a9a6910c3299261ee4f906b68481c01c41eb5e84d04fe85308ff1eee622e0d34.jpg)

Now, comparing to the gowie curve gives an idea about excess yield over a risk-free rate but in the real world it's not like many of us get funding at the government rate. If you're a bank, you're financing at the swap rate. Which brings us into another category of credit spreads. The I-Spread is just like the G-spread but instead of using the government

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/0a41e4dca036a7081f8ab711d63efa952e6909ee4e781ffb010e2ce731caa6b2.jpg)

curve, you are using the relevant swaps curve. For example, this Ford bond matures on Aug 10, 2026 and yields  $2.53\%$  to maturity giving it an I-spread of 164.8

Those are the relatively easier spreads to think about. Now it gets a bit more complicated, but I'll be gentle and not go too deep. Basically, just the tip.

# ANYWAY.

Did you remember to read the special topic on bootstrapping a yield curve? No? That's a shame. What does this series look like to you? Free? In the bootstrapping topic we looked at how to strip a yield curve so we can discount future cashflows by their appropriate discount rate. Recall: A bond's yield assumption is that reinvestment/discounting rate are constant – a convenient assumption but not entirely accurate.

First – understand that yields and price are inversely related to one another. Second – sear it into your brain that price is what you PAY, yield is what you ASSUME. So, in all the ways that you can then proceed to analyze a bond, it starts with the price paid. Here's the key idea: If we derive risk-free discount rates, it means for a given price of a RISKY bond, its cashflows must be discounted at rates that are higher than the risk-free rate.

Intuitively this is the same as the spread to benchmark but instead of one single benchmark yield, we are using zero-coupon yields from across the maturity of the bond. So we're going to use the whole curve to discount cashflows.

# 9.2 Z-SPREAD

The first example is the Z-spread. The Z in the name stands for "zero-volatility". This is an important point which I'll come back to later. For this spread, we use the swaps curve. Firstly, we strip the swaps par curve and use that to discount the bond. The Z-Spread is the CONSTANT spread that is added on to each of the discount rates so that the NPV of the cashflows match the price.

It makes the risk-free discount rate a risky discount rate.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/5e7c143ce1bf77a47b81778c59cac939d779351ffd8245393475cfaf98bb83a1.jpg)

Take this Delta Airlines bond as an example. It is a bullet bond maturing in about 4 years (from writing) and trades with a Z-spread of about 138bps. Let's try to back it out ourselves.

Now we need to find (through iteration) what the constant spread over each zero-coupon swap rate is that discounts the bond's cashflows to an NPV that matches the price. We are looking at the dirty price here: 119.6725 on a \$1mm face = \$1,196,725.00 (bottom right).

First, we strip the swaps curve, making sure to match the trade and curve dates. On 8/6/21 the settle date is 8/10/21. In Excel using Bloomberg add-ins (Curve Toolkit) we can pull in the curve and strip it, then using the bond's cashflow dates, interpolate what the zero-coupon rate is for those dates.

Each of these discount rates will have the Z-spread added to it to discount the cashflows.

<table><tr><td rowspan="2">Curve ID Stripped Curve ID</td><td colspan="4">S23 USD 3M LIBOR SWAPS CURVE (30/360)</td><td></td></tr><tr><td colspan="2">USD.3M:BLOOMBERG DC 501658</td><td></td><td></td><td></td></tr><tr><td>Maturity</td><td>ZC Ask Rate</td><td></td><td></td><td></td><td></td></tr><tr><td>11/10/2021</td><td>0.130</td><td></td><td>Payment Date</td><td>Interpolated ZC Rate</td><td>ZC Swap Rate + Z-Spread</td></tr><tr><td>12/15/2021</td><td>0.128</td><td></td><td>11/1/2021</td><td>0.130</td><td>?</td></tr><tr><td>3/16/2022</td><td>0.148</td><td></td><td>5/1/2022</td><td>0.150</td><td>?</td></tr><tr><td>6/15/2022</td><td>0.152</td><td></td><td>11/1/2022</td><td>0.177</td><td>?</td></tr><tr><td>9/21/2022</td><td>0.166</td><td></td><td>5/1/2023</td><td>0.253</td><td>?</td></tr><tr><td>12/21/2022</td><td>0.190</td><td></td><td>11/1/2023</td><td>0.358</td><td>?</td></tr><tr><td>3/15/2023</td><td>0.229</td><td></td><td>5/1/2024</td><td>0.472</td><td>?</td></tr><tr><td>8/10/2023</td><td>0.306</td><td></td><td>11/1/2024</td><td>0.577</td><td>?</td></tr><tr><td>8/12/2024</td><td>0.536</td><td></td><td>5/1/2025</td><td>0.669</td><td>?</td></tr><tr><td>8/11/2025</td><td>0.720</td><td></td><td></td><td></td><td></td></tr><tr><td>8/10/2026</td><td>0.868</td><td></td><td></td><td></td><td></td></tr><tr><td>8/10/2027</td><td>0.996</td><td></td><td></td><td></td><td></td></tr><tr><td>8/10/2028</td><td>1.103</td><td></td><td></td><td></td><td></td></tr><tr><td>8/10/2029</td><td>1.194</td><td></td><td></td><td></td><td></td></tr><tr><td>8/12/2030</td><td>1.270</td><td></td><td></td><td></td><td></td></tr><tr><td>8/11/2031</td><td>1.337</td><td></td><td></td><td></td><td></td></tr><tr><td>8/10/2032</td><td>1.395</td><td></td><td></td><td></td><td></td></tr><tr><td>8/10/2033</td><td>1.443</td><td></td><td></td><td></td><td></td></tr><tr><td>8/11/2036</td><td>1.553</td><td></td><td></td><td></td><td></td></tr><tr><td>8/12/2041</td><td>1.663</td><td></td><td></td><td></td><td></td></tr><tr><td>8/10/2046</td><td>1.698</td><td></td><td></td><td></td><td></td></tr><tr><td>8/10/2051</td><td>1.707</td><td></td><td></td><td></td><td></td></tr><tr><td>8/10/2061</td><td>1.629</td><td></td><td></td><td></td><td></td></tr><tr><td>8/10/2071</td><td>1.518</td><td></td><td></td><td></td><td></td></tr></table>

Now, let's pull in the bond information including its cashflows. Using goal seek, we can find out what the Z-Spread is, that results in a set of discount rates that makes the bond's NPV of its cashflows match the dirty price.

<table><tr><td></td><td>A</td><td>B</td><td>C</td><td>D</td><td>E</td><td>F</td></tr><tr><td>1</td><td>US247361ZX93 Corp</td><td>DAL 7 05/01/25</td><td></td><td></td><td></td><td></td></tr><tr><td>2</td><td>Trade Date</td><td>8/6/2021</td><td></td><td></td><td></td><td></td></tr><tr><td>3</td><td>Settle Date</td><td>8/10/2021</td><td></td><td></td><td></td><td></td></tr><tr><td>4</td><td>Face</td><td>\$ 1,000,000.00</td><td></td><td></td><td></td><td></td></tr><tr><td>5</td><td>Price (Clean)</td><td>117.748</td><td>\$ 1,177,480.00</td><td></td><td></td><td></td></tr><tr><td>6</td><td>Price (Dirty)</td><td>119.673</td><td>\$ 1,196,730.00</td><td></td><td></td><td></td></tr><tr><td>7</td><td>Coupon</td><td>7</td><td></td><td></td><td></td><td></td></tr><tr><td>8</td><td>Accrued Interest</td><td>1.925</td><td>\$ 19,250.00</td><td></td><td></td><td></td></tr><tr><td>9</td><td>Day Count</td><td>30/360</td><td></td><td></td><td></td><td></td></tr><tr><td>10</td><td>Z-Spread</td><td>?</td><td>bps</td><td colspan="2">&lt;&lt; Iterated through Goal Seek</td><td></td></tr><tr><td>11</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>12</td><td>Cashflows</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>13</td><td>Payment Date</td><td>Coupon Amount</td><td>Principal Amount</td><td>Total</td><td>Days</td><td>Discounted Cashflow</td></tr><tr><td>14</td><td>11/1/2021</td><td>$ 35,000.00</td><td>$ -</td><td>$ 35,000.00</td><td>81</td><td>?</td></tr><tr><td>15</td><td>5/1/2022</td><td>$ 35,000.00</td><td>$ -</td><td>$ 35,000.00</td><td>261</td><td>?</td></tr><tr><td>16</td><td>11/1/2022</td><td>$ 35,000.00</td><td>$ -</td><td>$ 35,000.00</td><td>441</td><td>?</td></tr><tr><td>17</td><td>5/1/2023</td><td>$ 35,000.00</td><td>$ -</td><td>$ 35,000.00</td><td>621</td><td>?</td></tr><tr><td>18</td><td>11/1/2023</td><td>$ 35,000.00</td><td>$ -</td><td>$ 35,000.00</td><td>801</td><td>?</td></tr><tr><td>19</td><td>5/1/2024</td><td>$ 35,000.00</td><td>$ -</td><td>$ 35,000.00</td><td>981</td><td>?</td></tr><tr><td>20</td><td>11/1/2024</td><td>$ 35,000.00</td><td>$ -</td><td>$ 35,000.00</td><td>1161</td><td>?</td></tr><tr><td>21</td><td>5/1/2025</td><td>$ 35,000.00</td><td>$ 1,000,000.00</td><td>$ 1,035,000.00</td><td>1341</td><td>?</td></tr><tr><td>22</td><td></td><td></td><td></td><td></td><td>NPV</td><td>$ -</td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/5b72db6b44394b9e583c95485183af7e298e2540e4b8b9070a654a44aa6968e3.jpg)  
The result is

138.7bps, pretty much spot on with the BLOOMBERG screen (minor rounding adjustments). But this is how you derive the Z-Spread! Graphically it looks like this:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/d4aff6a8f0e8bc2dc09717b3524645ff271129859ce89281cb3c4e37dcb309fc.jpg)

# 9.3 CALLABLE BOND RISK - OPTION ADJUSTED SPREAD (OAS)

Now let's turn our heads to callable bonds. A callable is a bullet bond with a call option attached to it. Because the call option belongs to the issuer, the investor is SHORT the call option. That means the bond possesses call risk on top of the credit risk. If we are focused on credit risk, we must find a way to strip out call risk leaving only the credit risk.

For a callable bond, the Z-spread is calculating the extra spread in totality, but that Z-spread contains credit risk and call risk: i.e., all things equal a callable bond with 100bps Z-spread has a different credit risk than a bullet with 100bps Z-spread.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/d9161c26cb48e7097f4ce823f617b41a219293cace8331cca32c2d2136470f57.jpg)

Welcome to the OAS - Option-Adjusted Spread. This is the process of removing the call risk (or put risk) in order to derive the credit risk of the bond. How do we do that? Let's look at a real example to understand better.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/a7d6eb8998c328c967ec10fdebde862e4ee23cff7cb71a1148897108c33b3fe5.jpg)

This Boeing bond matures in 2026 but is callable at any time from 02/2023 at par. If we look at its potential path in yearly snapshots it would look something like this:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/0e17ad58d364ceef5306d4171aa075a9999b14f28c0b360a7540babd89fdfc83.jpg)

Now, the conventional way to think about the potential path of option-embedded bonds is through a stochastic process. Simply – it is a collection of random variables indexed by time. Even simpler – at each point in time there's an unknown path that could be taken.

For a callable bond, when would the issuer consider calling the bond? Intuitively, it would be when the bond's yields are lower than what the bond's coupon. Why? Because if they bought the bond back, they could re-issue a new bond at the lower yields and pay lower coupons. But the call schedule has a specific price it can be called at. So strictly, it would be called if the market price is more than the call price, as that would make the call option in-the-money. So, there's an unknown path at each time interval and we know that if yields are low enough the issuer would call.

What are we sure of? The present. Everything in the future is a child of probability: yields can go up or down. And what goes with probability in finance? Volatility.

If we can look back at how rates have moved in the past (its vol), we can apply that to each time interval. For example: if 1y swap rates have an annualized volatility of 1.2bps over the last year it means starting today I can map a fork in the road at each future point in time:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/2f6d0f0d75059dabb58a852de0647a30093876e6fe92e9c6479b0e91a9d98c58.jpg)  
Example: Possible path of swap rates

So now we have a path of swap rates with each fork having an equal marginal probability of occurring with the magnitude of the move determined by volatility (OAS assumes constant volatility but there are alternative methods). Like with Z-spread, what is the constant spread required over each of the zero rates at each potential path that results in a NPV of each potential cashflow stream to equal the current price?

Z-spread has a single path, OAS has multiple paths determined by volatility of interest rates. This is why the Z-spread stands for ZERO VOLATILITY spread. If you set vol to 0 and assume the bond does not get called the OAS and Z-

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/c8f13eb01e9af17150b31786aca06336b6a58e331e8a4d301b0d25d3cfe24469.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/9e4d4e6040c5b20d927f56a36d693fa9696e3e176c2e2cc38fc141563732baf2.jpg)

spread will be the same for a callable as you can see with the Boeing bond below. The Delta Airlines bond on the other hand is a bullet bond, so its Z-Spread and OAS are always the same.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/ba39073df61a4d6ee46a74659313529cdd1b0055155e2fd4735b4d3547e6df98.jpg)

The math to back out the OAS is too intensive for this series (it is basics after all) but I want you to take away the core principles behind each of these metrics, so you know why we quote them on a daily basis.

So, the OAS removes call risk from the Z-spread by calculating the probability-weighted risk over the bond's life. This is important because you can now compare credit risk on callable bonds with bullet bonds and have a consistent credit risk measure applicable to an index or portfolio. This is why index spreads use OAS.

What is call risk? Break it down simply – say the Boeing callable at issue trades at 100. If never called, you will earn an annualized yield of  $2.196\%$ . If it gets called in 2023 then you will suddenly lose 2 years of compounded yield and need to reinvest it. That is call risk.

This risk must be compensated to the investor and is captured in the difference between Z-spread and OAS. Important things for BLOOMBERG: Check your model parameters - curve (Tsy vs Swaps), model type (lognormal, normal, with or without mean reversion).

The flipside of this risk is extension risk. The market assumes the Boeing bond gets called hence the price is 100.837 for a yield to call of  $1.616\%$ . If not called the market must re-adjust the credit to price in line with 2yrs extra maturity risk (longer end yields + spread). One infamous example of this is a Standard Chartered PerpNC10. Issued in 2006, it paid a  $6.409\%$  coupon until Jan '17 when it would switch to a floating rate of 3M LIBOR+151bps.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/beefea747f3b6d75c70a10e1520a7a9bc17478c9655becff865eabeedbdc521c.jpg)

The market assumed it'd be called in Jan '17 when the coupon resets but come time StandChart said "Nope".

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/0222e632288de17af59166ccdd5980ffc5f204743680c6403b513fdea70a2810.jpg)  
Ensue chaos.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/5da844c92e68bc8e798a19bd4e00eb76b23aef2aed15ceb59ce35f680399dfea.jpg)

# 9.4 ASSET SWAP SPREAD (ASW)

And for the last of the spreads we will cover today, we have the ASW spread – the Asset Swap Spread. When we cover interest rate swaps this will make more sense, but we'll jump in a little bit. A swap simply exchanges one thing for another or from one place to another. There are many types that exist in and out of finance; an interest-rate-swap swaps types of coupons (fixed to floating), a home swap switches locations of your dwelling with another and a wife-swap is...ahem.

An ASW takes a credit and swaps its cashflows into another form. An easy example is swapping a fixed coupon bullet into floating-rate coupons. Take a look at this energy bond trading with an ASW of 50.7bps.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/76d969a9b39148bec34489cf2d0679ea622d617f04e9618aa0fef04dd4b8388d.jpg)

Clicking the ASW field brings you to this page that makes your eyes spasm but what we want to see are the details of the swap in SWPM (we'll go deeper in the IRS topic). Remember a swap is exchanging one bond type for one another.

Here: 1 fixed coupon bond and 1 floating rate bond.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/97c1286abbd0069988ef212fab777839e4e1e74848df585358d43eebe39605f7.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/c3d34026e8d6f19a4cac9c6745d1846a8f5b761adc129a864e9780746c4f833a.jpg)

1. We are solving for the Spread - how much on top of the floating rate (which is determined by the swap curve) should the floating rate be?  
2. We are going to pay the fixed coupon (that we receive Because we own the bond) to our counterparty and receive the floating coupon instead  
3. We swap the bond's coupon of  $3.626\%$  for the floating coupon (rate + spread)  
4. Because the bond trades at 107.522 it has a  $7.522\%$  premium over par. This premium is factored into the difference in NPVs between the fixed and floating leg.

Recall: Using on zero rates, you can imply forward rates at varying tenors through "gapping". This is what the ASW is doing on the floating leg – taking the swap curve and implying 3M LIBOR rates at every quarter in the life of the swap. Then we iterate for the spread on top to make the deal of swapping cashflows "fair".

So, the Asset Swap spread is simply the excess risk over the implied forward swap rates as of today's curve such that the NPV of the floating leg = the NPV of the bond.

One major difference between these spreads is that ASW spread itself is tradeable while Z-spread and OAS are theoretical spreads. OAS allows apples to apples comparisons across various bond types isolating credit risk while ASW and Z-spread just assume 1 single path to principal repayment. So, there you have it, credit risk. These measures are crucially important in the world of credit and understanding the market risk sentiment. It's not about what you can gain, it's about what you can lose and putting a price to that risk of loss.

# 9.5 TOPIC QUESTION

Why should the ASW account for a premium at inception?

A bit of a trick question. But since you are taking a bond from the market and swapping it, the price is often not going to be 100, you're likely paying a different price. That difference is either going to be a premium (above 100) or a discount (under 100). That premium/discount should get accounted for in the swap because you are going to swap for floating cashflows that discount to par. So by accounting for premium/discount you can now swap par for par.

# 10. Floating Rate Notes

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/9e9b480fbd6d6b2efc9e572e7ae2b241fabe58a06a7d85247b5c3cd6e6723bbd.jpg)

Why do Floating Rate Notes (FRNs) get their own topic? Because they are underdiscussed despite being a valuable allocation in a bond portfolio.

There are a few types of coupons for a bond – zero, fixed, variable and floating. We covered this briefly in Topic 5. Today we'll focus on the floating type. The most familiar floating rate to most of us? Our mortgage. We pay a benchmark rate + spread the bank charges us.

In a low interest rate period, it's great for us to BORROW money – which is why many of us refinance during these periods. But we are always worried about rates rising later on. Also, the worse your credit score, the larger the spread you'll pay on top of the benchmark rate.

All of this logic flows through to floating rate bonds. As an INVESTOR, you are lending the money which in a low-rate environment means your coupon is lower but resets to a higher coupon as rates rise. The benchmark rate changes, the spread stays the same.

# 10.1 CHARACTERISTICS OF FRNS

FRN Coupon

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/cde27588e7b2e46f115d8aa815c678f47aed34184d1cf624f5a94cfdddaa0dfe.jpg)

At issuance the spread over the benchmark rate is called a Quoted Margin – and determines the coupon. A FRN's coupon reset can be In Advance or In Arrears. In Advance means the rate is set BEFORE the coupon period starts. In Arrears means the rate is set at the END of the period.

In Advance:

<table><tr><td>t = 0 (Coupon Period Start)</td><td rowspan="4">&gt;</td><td>t = 1 (Coupon Period End)</td></tr><tr><td>Benchmark rate = 1.00%</td><td></td></tr><tr><td>Quoted Margin = 150bps</td><td></td></tr><tr><td>Coupon Rate = 2.50%</td><td></td></tr></table>

You know from  $t = 0$  to  $t = 1$  that you will earn  $2.50\%$  and receive at  $t = 1$

In Arrears:

<table><tr><td>t = 0 (Coupon Period Start)</td><td rowspan="4">&gt;</td><td>t = 1 (Coupon Period End)</td></tr><tr><td></td><td>Benchmark rate = 1.50%</td></tr><tr><td></td><td>Quoted Margin = 150bps</td></tr><tr><td></td><td>Coupon Rate = 3.00%</td></tr></table>

You know only at  $t = 1$  you earned  $3.00\%$  and receive it at  $t = 1$ .

The majority of FRNs that exist, reset In Advance. We will focus on these types of FRNs for the rest of the topic. Once a FRN starts trading in the secondary market, the market determines the spread that it trades at (similar to a fixed coupon's spread to benchmark) – this is called the Discount Margin.

Quoted Margin >> Coupon

Discount Margin >> Yield

Remember, like any borrower, the credit risk of the issuer is what largely determines the quoted margin at issuance. Once the FRN starts trading in the market it changes into the discount margin. This is why FRNs are a play on credit.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/c54f1d76cb749d7340966447f67fbffe0fcffa67b8cf26c5376cce54ef3b3608.jpg)

# 10.2 VALUATION OF FRNS

So how do we value FRNs? Well, it's quite simple really – recall an axiom I put forward in Topic 1: “market conventions are built around maximum efficiency with acceptable accuracy”

FRNs are another great example of this at play – the market convention is to treat the FRN as a fixed coupon bond. LOL. What do I mean? Simply, we assume that the current rate for the reset rate will not change going forward. That simple. But there are some quirks to this...So let's take a look at an actual FRN – here we have a Huarong FRN due April 22 (at a juicy yield).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/9f88fe36aad8a15846377bb78cd4070ecbb35d49cadb6c82568bdd6792643b44.jpg)

1. We can see it's a floating coupon type but there is a coupon value – what is that? It's the latest coupon for the current accrual period  
2. The coupon formula is 3M LIBOR + 185bps (Annual)  
3. Day Count

To derive the price of any bond you need to know: all future cashflows and a discount rate. Whether it's a fixed coupon, floating, callable or perpetual, it is a matter of modelling cashflows and discounting them.

The simplest and quickest way to do this for a FRN is to gather three facts and assumptions:

1. The most recent reset rate for the current coupon  
2. The current reset rate that will apply for the next fix  
3. The discount rate to discount all the current and future coupons

# For this Huarong bond:

1. Most recent coupon period was 7/27. (This was written on 8/24/2021) - coupon is calculated using the 7/27 3MLIBOR+QM  
2. Next coupon period starts on 10/27 – all future coupons assume today's 3MLIBOR+QM  
3. Pays quarterly  $=$  Coupon/4 (need to account for daycount)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/af34786a86127ad25a89a83ad7cdc386eb212d50d0a4b9318f023c145f2aa8b1.jpg)

So, the first coupon is  $0.12888 + 185bps = 1.97888\%$ . Why 0.12888 from 07/23? If you look back at the coupon description, there is another field showing the coupon is Reset 2 days prior to the reset date. So, if the new coupon starts from 07/27, it fixes using the 07/23 rate.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/a63530f18063060cd3a7869233272a75aff8cec977f318bb6945f817f4e3f3b1.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/555a72f24bc6c15e6ec2385a329d4878f734e19680f8ac256b6a2acdda78572a.jpg)

Meaning the 10/25 3ML will be the benchmark rate for the next coupon. For now, the market assumes current 3ML will be that rate. Here's the cashflow projection for the bond - notice how all the forward cashflows are the same?

(0.128380 + 1.85) / 4 = 0.494595 >> on 1mm face = \$4,945.95 coupon

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/1e8359fb67b05b0d276e10bb67bfb0d83ebb7a01f19767893267b34e8f3a1a15.jpg)

How about the current coupon? Easy.  $(0.12888 + 1.85) / 4 = 0.494720$  on  $1\mathrm{mm}$  face  $= 4,97$ -wait. What the freak? The screenshot says 5057.14!!!

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/eea951563bbcd74454d460ceec22603162dbcd1b97183ad30e7ccdfa09596909.jpg)

You stop and ...I know!

# <HELP HELP>

You get an automated message. Finally, a message sounding like a real person typed it. You ask about the first cashflow for the floater and it not matching. They say, 'one moment please'

You wait 15 mins. You contemplate switching to eikon.

There's chaos at the helpdesk. The freaking cashflows don't match. The rep helping you is trying to figure out how to pass this question over to the data team. They ask you random questions to look like they're figuring it out

"Can I have the ticker please? Can you send me a screenshot? Is this the case for all floaters?"

"can you try resetting your terminal defaults, logging out and back in then trying again?"

"could it be due to central bank balance sheets?"

You're busy trying to figure out yourself and didn't see their most recent asinine question.

"It seems you're busy, please come back when you have time with the reference number H#1800GFY, k thx bye".

You mutter to yourself 20fickingKferstupidcollegegeidiotsdontknowsht. Then you IB EMH<GO> and ask me what's up with the first coupon.

I say, "simple. I told you right at the start: day count convention."

You reply "Ah. But you never covered accrued interest in bond math" - I go "oh but I included it in the edits".

ACT/360 on this bond means from settlement to next coupon is 92 ACTUAL days (7/27 to 10/27). 1 year is assumed to be 360 days. \((0.12888 + 1.85)^{*}(92 / 360) = 0.505714 \rightarrow \\(5,057.14\) on 1mm face.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/ea6f8940f7956fbcd338a544eebe6073976f98a28798d320128c75e83953c3ab.jpg)

So, with

1. Current coupon  
2. Assumed constant future coupons &  
3. DM

you can discount all cashflows to arrive at price. The coupons are market derived so the only variable at YOUR discretion is the DM – more risk you see = larger the DM you ask for hence higher yield and lower price

# 10.3 RISK

Within this concept lies another key aspect of FRNs - interest rate risk or rather, lack of. Because FRN coupons reset regularly, they exhibit low but non-zero duration. A FRN possesses duration due to the current coupon being fixed while rates fluctuate until the next fixing.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/042168aa7d424c327120fe145ad7dc97949e962d5b5f45f590c6a372378e24d1.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/c257fb4f0ddf6a4eb2a13cc7c62c426f6236a4b37bfd8bcb8fa44857e9975692.jpg)

Can you workout the value of a FRN using the curve rather than assuming constant coupons? Certainly.

The principle is the same as in the OAS topic. By stripping the curve you can imply forward reset rates for each of the fixing dates and discount the cashflows accordingly. This is why for FRNs on Bloomberg the function YASN for advanced Yield analysis is the same page as OAS1 for OAS analysis. Based on price you can derive the constant spread over the entire term structure rather than a static rate and/or vice versa.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/58c9731379a6f80623aa1412778374774553092adb0c46a295238e6cdedc428f.jpg)

# 10.4 ONE OF THE FEW TIMES I MADE MONEY

One of the best trades I had with FRNs was during the March 2020 pandemic and was actually through the use of ETFs. One thing you should know with FRNs is that they aren't as plentiful and hence not as liquid as fixed coupon bonds and also, banks are heavy issuers of FRNs.

Come March 2020 I was sitting on a handful of GS, JPM and BAC floaters and as we've established, FRNs being a play on credit, meant the DMs on these looked like a priest in a nudist colony daycare. Bursting.

The play was on the credit – there were a few elements to this thesis:

1. I had figured that support would have to come in soon and taking the GFC playbook, Fed would look to prop up the banking sector at the start to ensure the transmission mechanism remained intact.  
2. Rates had already plummeted to record lows (10s touched 31bps) and liquidity issues reared their ugly head. Also, a recovery in sentiment likely meant some pullback in rates.  
3. Floaters seemed like a good way to capture credit spreads while hedging out duration. I wanted more.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/d9e71053c623a10fc6badc959246df322a14a1edcfd71cd311076d0bce37a03f.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/36e5a91a5b4cad3551b057473745ac33257fb8310348a10f5e20cd6ceb2e42e4.jpg)

But something else was interesting – in a discussion with legendary @TayTayLLP, he asked if I had thoughts on FLOT just as I was looking at floaters.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/773de1de0253a9cb38edc96f98719c45ac9a7a6170e9615441aa00f679b878fe.jpg)

me a more liquid way to grab them at a further discount while diversifying.

FLOT, being an ETF was more "liquid" so the market was selling ETFs hard and in fact FLOT was the most discounted bond ETF amid the turmoil.

As FLOT was plunging the discount to NAV was accelerating to the tune of a  $10 \%$ + discount. This was a great opportunity for my idea – I want to buy FRNs to capture a ton of spread widening and ETFs allowed

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/9da2302551c4ce320ebfb8458cc62320f979ea2385f19eee73f4c1640c7f28d6.jpg)

I bought them at 43.8015 and scaled out above 48-49.50. I owe a large part of it to TayTayLLP.

# 10.5 Topic Question

Which has higher duration, a FRN with coupons In Advance or In Arrears? Why?

In Advance. Fixing before the accrual period leaves you exposed to rate fluctuations for that specific period before fixing to the new rate. It also means all else equal, FRNs that fix the coupon In Advance will price at par on each fix.

# 11. Treasury Inflation Protected Securities (TIPS)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/549f9b403997a4034869e66abf3e7324782c7ab148044a8d0bb7dc9f9ee7e441.jpg)

Let's start with the nomenclature – Treasury Inflation Protected Securities. Plural. TIPS.

Singular = Treasury Inflation Protected Security. TIPS.

There is no TIP unless it's your one lucky day in 6 months and the kids are at grandma's. It's TIPS no matter what.

In March 1981, the UK became the first major country to issue inflation-indexed bonds, or "linkers" as they're commonly known due to being 'linked to inflation'. With all the attention being paid to inflation, now's a great time to dig into these instruments a bit more.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/358f45c945c9441a4825e540d861bdbae1f2635139ed2d1a3c926b888d540444.jpg)

# 11.1 WHAT IS INFLATION AND WHY DOES IT MATTER?

First, let's look at the concept of inflation, nominal yields, real yields and how they all interact with one another. Inflation is the phenomenon of nominal prices increasing over a certain period of time. A loaf of bread that cost \$2 last year but now costs \$3 has seen price inflation of 50% YoY. Flipped around, your \$2 from last year can only buy 66% of a loaf of bread today. Inflation has eroded the value of your nominal dollar.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/9e9d8eac7ce618405e2b8b7b7c82ab751939721a0aa833d23dffd13df8fb9ed3.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/cb08c6f69f7368f79a09b360c421a98bf0f30f9c4f4130b839c4652fa344ca57.jpg)

Here's another example. I loooooove potato chips. Kettle's honey Dijon flavour is my jam. Also, the bag is  $50\%$  air. I swear 5 years ago it was  $75\%$  full but nowadays I am getting less and less. That is commonly called 'stealth inflation' where the price stays the same but what you REALLY get is less than before.

Get it now? Our world transacts in nominal values, but inflation affects what the REAL value is. This is what purchasing power means – the power of \$1 to purchase a unit of goods/services.

Thus, Real Rate = Nominal Rate minus Inflation Rate

Every year that prices rise by 1%, 1 nominal dollar loses its value by ~1%, so in order for you to not lose purchasing power, you want to grow your \$1 by an equal rate.

# 11.2 INFLATION VS NOMINAL BONDS

This poses a problem for many bonds which are fixed coupon bonds – the coupons do not have the ability to adapt to the changing rate of inflation and as a result are exposed to inflation risk. This is where inflation-linked bonds come in. Recall, a bond's yield must account for a number of risks: credit, reinvestment, liquidity and inflation. If fairly priced at issue, it should account for inflation risk but it cannot account for the CHANGE in the level of inflation risk.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/a5ff276b878ff080e1e9ec36771e43199723d682c581f32246f97b8044c7cfa1.jpg)

The late '70s and early '80s were known for extremely high inflation, which was factored into yields. If you bought a 2 year UST at the end of 1978, you would have locked in a YTM of 9.989% while inflation was 9.014%. Logically, the real growth of your investment is 0.975% per annum. But there's an issue. On its own, a \$100 investment in the 2yr gowie would be have generated \$21 in returns over the 2 years. The first year you earned about \$10 in coupons, reinvested them, then received another \$10 coupon plus your \$100 back. But inflation didn't stay at 9.014%

Over the first year you received the coupon, prices actually rose  $13.30\%$ , and when you finally collect your principal, that year saw prices rise a further  $12.51\%$ . So in effect, the purchasing power of every dollar you invested eroded by  $[(1.1330 * 1.1251) - 1] = 27.16\%$

Your bond investment actually LOST about  $6 \%$ over 2 years in a “risk- free”  $10 \%$ government bond. That’s freaking nuts.

So as I mentioned earlier, the UK introduced the linker - a bond product that would adjust itself according to inflation. Like everything in UK's history, they introduced something to the world that someone else would soon be better than them at. The only thing they still have the crown on is taking over a country and then abandoning it leaving the local population in a worse sta- oh wait nvm, guess they lost that one too.

# 11.3 JUST THE TIPS

You see, if you can adjust a bond's coupon to the level of inflation then your cashflows are...protected against inflation (to an extent). Currently the largest market for linkers globally is the US, where the bonds are called TIPS. And when you're in an environment where the risk is things growing too big too fast...you want just the TIP.

So let's break down a Treasury Inflation Protected Security issued by the US government.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/88139b0bdb191c0ff9c3f23b837b1b5c92c6ba748c4ec638c95ea93abc624ccd.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/2c613d60907c4569e0b1831455175dce1ed2bcfc9217e269bb8968d131c470c4.jpg)

Inflation ratio = The ratio of CPI used to calculate the accreted value for index-linked securities. This is calculated by dividing the Reference CPI by the Base CPI value.

It gets a little tricky here but the Reference CPI has a 3 month lag – so the reference CPI on  $1^{\text{st}}$  September 2021 is the CPI shown for June 2021.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/37cd1cdb629615c93aacd1b923b6913edea218d1cad0b1e35fb2a366d312bb17.jpg)

For any date in between, you take the linear interpolated reference CPI using the number of days based on settlement. Let's back it out.

On 08/27/2021, the settle date  $(T + 1)$  which is 08/30/21 – from 08/01/21 that is 29 Actual Days.

The 08/01/21 reference CPI is 3 months prior which is 269.195 and the following month is 271.696. We need to find the interpolated CPI

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/b5823b4659d28c7d4c92dcd52d334f2cf2fd663648428d1f3533e872cfa1405d.jpg)

between these two based on the actual days we just counted. August has 31 days so we are looking at 29 days / 31 days = 0.935483871

The difference between the two months' CPI is  $(271.696 - 269.195) = 2.501$  which means that the interpolated CPI  $= 269.195 + (2.501 * 0.935483871) = 271.534645$  as of trade date 08/27/21

That equates to an index ratio of 271.534645 / 268.0209 = 1.01311 (Reference CPI / Base CPI value)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/8fe20c90cafcbbc7b798352a911a9b381cff8f9a1cdd4615ee88a054e2db6168.jpg)

So how does the index ratio actually factor into the pricing of a linker? Well, TIPS have the unique property of a fixed coupon rate with a floating principal. Because the principal floats according to the inflation index, the fixed coupon RATE results in a $coupon that floats with inflation.

Coupon = 0.25%, principal = 1,000,000, index ratio = 1.00 >> CPN$ = 250

Coupon = 0.25%, principal = 1,000,000, index ratio = 1.25 >> CPN$ = 1mm × 1.25 × 0.0025 = 3,125

The current 10y TIPS on Friday traded at 112.5967 clean, which on \(1MM face is 1,125,976 but the index ratio is 1.013311 meaning the principal value is actually 1,125,976 * 1.013311 = 1,140,738

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/32bc5ec5f834e2f75531d6e4d9415309fa95e67dc5369667d4d07b2bf398f622.jpg)

Now there are some key things to take note of here. The first is that because the inflation ratio is lagged 3 months, that also means your inflation index is lagged and by definition BACKWARD looking.

In a period where inflation is moving higher your principal+coupon adjustments will lag spot inflation. Once inflation begins falling, the lag will benefit your index adjustments. So as inflation continues to rise, demand for TIPS generally increases, even as inflation plateaus. Which brings it back to the point of a floating rate – it is double edged, you're protected on upside changes and exposed to downside changes. If inflation craters so will a TIPS' index ratio.

But here's the next point about TIPS that is special and unique – they have a floor. The principal is floored at par (100) meaning not only are they inflation protected, they're deflation protected too. Essentially a floating rate bond with a series of rate puts attached. So what does trading TIPS actually involve? In the purest sense, you buy TIPS when you think that inflation is going higher and you want to protect the value of your capital. Important caveat – they do not BENEFIT from higher inflation scenarios, only protect the real value of your capital.

If you look at the cashflow (CSHF) for the 10y TIPS, you can see that all of the cashflows are adjusted for an inflation ASSUMPTION of  $5.3786\%$  annualized. How is this derived first of all? Earlier, we looked at how to find the interpolated index ratio – the same logic applies here. The inflation assumption is the YoY rate of inflation on the interpolated CPI index values based on the 3-month lag. Therefore, the cashflows which are 6 months apart are then projected with the index ratio adjusted for the assumed inflation growth rate.

07/15/2022 projected coupon = 646.29 * [1.05378656 ^ (6 / 12)] = 663.44

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/6f71d78fc7407874b60c98a706dbb2406578bf9dd196c38bc7c5799f5ff37dce.jpg)

To look at the projected inflation rates, you can run SWIL<GO> on BLOOMBERG then go to the Bonds tab to see inflation projections. If you wish to make your own inflation assumptions then change the Contributor field from default to User.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/b139ab288256b58b4f692ec1d87f45440494131338c1b3f1d5e77ed29a1684c5.jpg)

Like with FRNs, the logic applied by default is that the latest rate is the constant rate. Inflation will not change into the future and remain at the current level. CAREFUL: constant inflation  $\neq$  zero inflation. A hedge, by definition, only makes up what is lost.

# 11.4 THE P&L OF TIPS

So why do I say that TIPS protect you but not benefit from inflation? Recall in Money Markets, I mentioned a few risks and how time generally increases each of them. "Risk exists in many forms; interest rate, credit, reinvestment, liquidity, fx, inflation, political, etc". TIPS, like their nominal siblings are subject to each of those risks except inflation. The real yield must therefore contain expectations of the US' future growth, credit quality and the Fed's nominal Fed Funds rate.

You must understand, that these non-inflationary variables can result in higher/ lower yields that cause TIPS to lose/gain value, despite adjusting for inflation. If US GDP grows at  $5\%$  constantly, you could expect the Fed to hike rates while inflation is running above target. Why then should TIPS be unscathed? Here, we model a rise in yields from  $-1.083\%$  to  $-0.75\%$  by the end of the year results in a projected loss of  $1.71\%$  on your holdings, even after factoring in the inflation adjustment.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/fdb863271e4e0386b19af10027fa61156cdc85b7e4c433b5299ea5cd3271cd0b.jpg)

The B/E of -0.93 shows what the horizon yield would need to be for you to come out flat on this trade by year end based on the inflation rate assumption. If you click on the View Cashflows you will see the breakdown. Note how the principal values drop by a small amount despite a larger change in clean price – inflation adjustment.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/1cf71381deaeddddf028ab155d11ae1d339377decf4e442da0151b06beb326e7.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/1a9b4e75618432640ae5bfa9e78cf0c7c2444131c376be390dce4aee6804bb1f.jpg)

This is all to highlight the inherent risks involved with trading TIPS like any other bond. The recursive nature of the real yield is highlighted at the start of this topic: Real Yield = Nominal Yield – Inflation. Each of these components affect the other.

# 11.5 MARKET-BASED MEASURES OF INFLATION EXPECTATIONS

Which brings me to the Breakeven Inflation rate (BEI). BEIs are NOT AND I REPEAT, NOT INFLATION EXPECTATIONS. Based on the simple equation and the name itself, the BEI is simply the rate of inflation at which, if held constant, results in a nominal bond returning the same yield as a TIPS.

This presents a natural pair trade – Long (short) TIPS and short (long) Nominals. You'll often hear me say ‘reals’ instead of TIPS as I'm referring to real yields vs nominal yields but they effectively mean the same thing. If you are bullish on inflation and want to gain from it, then as mentioned buying TIPS alone won't do. You would need to somehow be long inflation. That's why you could go long reals and short nominals – if inflation turns out to keep increasing, then the value of the nominal will continue to decrease while your TIPS hold their value. This results in a gain on inflation.

But the BEI, being nominals minus reals means it has two levers:

1. Nominals up/down  
2. Reals up/down

But it has no indication of the LEVEL of rates. If nominal  $10y = 1.30$  and real  $10y = -1.08$  then the BEI is 2.38. If nominals are 5.38 and reals are 3.00 the BEI is still 2.38.

Let's assume, current inflation runs at a constant rate and by the end of the year both noms and reals widened 33bps each. The 10s would be 1.63 and reals -0.75 but BEI is still  $2.38\%$ . What happens to the value of each?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/6029e7914d2ab65a3902bc6365e2e2d26879a6bb7bfbd07096a0dcb644b2906f.jpg)

Dollar for dollar, you would PROFIT on the trade. Why? Because TIPS have a lower duration than nominals. Recall the concept that FRNs have lower duration because their cashflows are reset to the market at each cashflow, the same applies here. BUT, remember inflation right now is assumed to be  $5.365\%$ . If you adjust the inflation assumption to the Fed's target of  $2\%$  you are now only barely breaking even by the end of the year:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/f26fda0c6a1aca54c308b0a9a4ff777b9512bebfee75c7d41b58655884354247.jpg)

Now a big issue with what I just showed you is that it's Dollar for Dollar  $\gg$  on top left of FIHZ it's set to Swap Type [Proceeds]. Proceeds just means the equivariant principal amount. In practice, we know from prior topics that we do fixed income pair trades on a duration-matched approach. This achieved by setting the Swap Type to [Risk].

If initiating the pair trade on a duration-hedged basis, the rise in yields results in a loss for you, being long TIPS and short nominals. Again, we turn our eye to the B/E value and we can see that 241.95 is the breakeven over this horizon while we modelled a 238bps BEI. It requires the interest rate differential between reals and nominals to widen by a further 4bps for you to not lose money with the current inflation scenario.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/18274262531ba1ee9ad531c0b14abd7b294bd9df335211bdad286c82c09a00cb.jpg)

If nominals widen 10bps more than reals, i.e. the 10y goes to  $1.73\%$  this is the PnL:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/8a333509042b2dab51816a46c1baeabe0d5550104a01ab7f23f03c052f4218b9.jpg)

This is what makes trading breakevens so tricky. You need to account for:

1. Current duration risk  
2. Expected inflation rate  
3. Expected yield shift of each leg (i.e. the BEI move)  
4. The horizon of your expected trade

Lastly, if you want to look at inflation expectations in the market you should really be looking at inflation swaps. First of all, let's look at an inflation swap (we will cover swap mechanics in more detail later):

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/9d61767149ec36b795ab498294a986e85da5844c04a9d754eb0ffcb4c3a02f56.jpg)

On Bloomberg you can run SWPM -ILFX to price a Zero-Coupon inflation swap. The name gives you a hint – one leg pays no coupon while the other leg is fixed to the CPI value with a 3-month lag. Here we have the 5-year zero coupon inflation swap. On the left hand side is one leg where its value is tied to the CPI number and in 5 years time

will have its principal adjusted according to the inflation index ratio. On the right hand side is the fixed leg that doesn't actually pay a coupon, but what it is doing is calculating the annual coupon required such that the present value of those cashflows equals the present value of the inflation leg.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/3532bec0227a5cb00c7e79053a877e66c6d071fe36b04774dfaed4d41284216f.jpg)

So based on this, the market is saying inflation should run at an annualized rate of  $2.7247\%$  over the next 5 years. As the value changes, it changes the ZC inflation curve and that in turn adjusts the coupon required. There is recursiveness.

That still isn't fully 'expectations' though. So we go one step further and look at forward inflation swaps. Recall from Bootstrapping that with zero rates you can then imply forward zero rates as well. Well, if I know the 5y ZC inflation swap rate, and I know the 10y inflation swap rate I can very easily find out the 5y ZC inflation swap rate, 5 years from now. That would be the 5y5y Inflation Swap.

If the 5y infl swap is 2.7248 and the 10y infl swap is 2.5343 then the 5y5y should roughly be

$$
[ (1.025343 ^ {10}) / (1.0272487 ^ {5}) ] ^ {(1 / 5)} - 1 = 2.3440 \%
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/b51fa6aece3c64cfb4b399aeed1b5fc9866debdcab9d9306fa3a208d90074e5d.jpg)

The Fed uses an approximation, ticker FWISUSS55 Index which is (2 * 10 Inflation Swap) - 5y Inflation Swap which gives a close etimate. Here is a look at the various inflation metrics we have looked at today:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/eb01c68531b64200adffe052aa98d1e1d16ab573fe8ccd09623c86c5e9dedd99.jpg)

That's all there is for TIPS and Inflation. I hope this clears up some confusion or misunderstanding among you regarding TIPS, BEIs, and inflation in general and hopefully the end of BEIs being labelled inflation expectations.

# 11.6 TOPIC QUESTION

If I want to be long inflation but short duration, what is the best way to construct this trade? Bear in mind my example where inflation adjustments for TIPS only compensates so much for inflation but a rise in yields still causes a loss.

There is no one simple way to do this but the most straightforward is the example that I used earlier; long TIPS and short nominals. Because you want to be short duration, you would have to over-sell nominals so that the net duration of the trade is negative (recall we looked at the trade from a duration hedged perspective in the example).

The pain point of this trade would be real rates rising and nominals falling, in which case you are losing on both sides. In this scenario, the market would likely be pricing in the risk of falling inflation from a rise in financing conditions and if you are long inflation, that is why you lose.

# 12. Mortgage Backed Securities (by Tom Graff @tdgraff)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/03ff8ce201f588a3178f91d83c40b159641fa0e8a29ce77b06495a1234b73e89.jpg)

Hello class. I'm Tom Graff and will be your guest lecturer in the BBB series today on Mortgage Backed Securities. For background, I'm a buy-side PM today but I actually came up as an MBS analyst, and one of the strategies I run is mortgage specific. We'll cover what MBS are, how they trade, how you analyze them, who the buyer base is, what a CMO is, when MBS tend to outperform, and whatever else the audience asked about.

I'm going to focus on "agency" MBS, which are the ones backed by Fannie Mae, Freddie Mac or Ginnie Mae. Non-agency MBS (like what blew up in '08) are a far smaller portion of the market, and to be honest should be covered in a discussion of ABS/CMBS, which I'm not going to get into here. First, the MBS market is huge, at about \$11.5 trillion according to SIFMA. That's about \$1 trillion bigger than U.S. corporations, and only topped by Treasuries. It is also probably the second most liquid market in the world, after U.S. Treasuries. Again according to SIFMA, about \$300 billion of MBS trade per day, vs. just \$40 billion of corporates, \$9 billion of munis. Again, only topped by Treasuries (~\$620 billion).

# 12.1 INTRODUCTION

Mortgages that are sold to investors are bundled into "pools." The pool might hold as few as a dozen loans or it might hold  $100,000+$ . The bank that originates the loan will sell the loan to one of the GSEs, and will pay a "guarantee fee" before selling it to the public. Once that happens some bank will become the "servicer." This could be the originating bank or someone else. The servicer is who actually deals with the borrower from here on. i.e., that's who you make your check out to, who would deal with you in delinquency, etc.

Basic MBS are often called "pass throughs." This is because the cash flow "passes through" from the actual borrower to investors. When you send in your monthly mortgage payment some of that is principal and some is interest, which we'll call "P&I" from here on. The servicer takes a fee out of the interest, then the rest of the interest plus the principal "passes through" to investors. Whatever principal is paid actually reduces the amount of bonds you own. The percentage that is remaining is called the "factor" on a mortgage.

Quick aside: the factor bit makes MBS trading easier. When we transact, the quantity quoted is in "original face" which is how much was originally outstanding. Then the factor is applied. Here is an example using the "BXT" function in BB.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/5c433554f479dba141a5da59cdb281d27b08118379725dd692061acad537ad98.jpg)

In this example, I'd tell my counterparty that I'm buying 1mm of FN BQ8987 (which is the pool ID) at a price of \$104.766. Since this has 98.100563% outstanding, I actually wind up with \$981,005.63 "current face."

The GSE's role in all this is strictly as guarantor. If a loan goes delinquent, at first the GSE advances both P&I to investors. However if a loan goes more delinquent for 4 months, the GSE "buys" the loan from the pool at  $100\%$  of its original face. So in essence, any defaults act just like principal repayments from the investors' perspective. Worth noting that long-term delinquencies are rare. According to Fannie, about  $1.7\%$  of loans from 2009-2021 are seriously delinquent.

You can see the credit stats for a given pool using the CLP page in BB. This pool currently has zero delinquencies:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/4655e427cfe2ca481c7095252895748352216f8f564f897a16c0265ea6c32925.jpg)

Now let's talk about the "TBA" market. It is one of the most important features of MBS and it explains why the market is so liquid. For those that have a mortgage on your house, you may remember that you "locked in" your rate at some point, but it was a few weeks before you actually settled on the house (or refi). Why was your bank willing to take all that interest risk between lock-in and settlement?

The answer is: they didn't. They pre-sold your loan before they actually had it in hand. The TBA (or "to be announced) is how this is possible.

# 12.2 THE TO-BE-ANNOUNCED (TBA) MARKET

TBA is basically like a futures contract for mortgages. A bank can "sell" \$1mm of TBA MBS for delivery multiple months into the future and lock in the price that they'll get for your loan. This isn't very different from a farmer locking in the price of wheat by using futures.

TBA is so central to MBS that it dictates how the whole market works. E.g., TBA is organized by coupon and maturity. MBS coupons only exist in  $0.5\%$  increments. I.e., there is a Fannie Mae  $2\%$  and a  $2.5\%$  MBS, but not a  $2.25\%$ . Why? Because it makes it easier for TBA trading.

There are active TBA markets for 30-year and 15-year MBS, although volume in 30-year is substantially greater. MBS exist for 20 and 10-year mortgages as well as ARMs, but there is no TBA market for these and thus these MBS are far less liquid.

You can see the current TBA market on BB by just hitting TBA<GO>. The page I prefer is TBPF which allows you to see some other details like performance vs. hedges.

<table><tr><td colspan="2">Save View</td><td colspan="2">Settings</td><td colspan="2">Enable Swap</td><td colspan="5">TBA Performance Monitor (Tra</td></tr><tr><td>Agency FN</td><td>Settle GO</td><td colspan="9">View Duration</td></tr><tr><td>30yr TBAs</td><td>Bid</td><td>Ask</td><td>Chg</td><td>Swap</td><td>Treas</td><td>OAD</td><td>CT2</td><td>Perf</td><td>CTS</td><td>Perf</td></tr><tr><td>FNCL 1.5</td><td>98-09+</td><td>13c</td><td>+ 09</td><td>+ 0314</td><td>+ 023</td><td>7.26</td><td>363.8</td><td>+ 05+</td><td>147.2</td><td>- 0014</td></tr><tr><td>FNCL 2.0</td><td>101-12</td><td>13c</td><td>+ 08+</td><td>+ 023</td><td>+ 015</td><td>6.15</td><td>308.4</td><td>+ 045</td><td>124.8</td><td>- 003</td></tr><tr><td>FNCL 2.5</td><td>103-26</td><td>27c</td><td>+ 0714</td><td>+ 0214</td><td>+ 013</td><td>4.99</td><td>250.1</td><td>+ 043</td><td>101.2</td><td>+ 0013</td></tr><tr><td>FNCL 3.0</td><td>104-17+</td><td>18c</td><td>+ 0134</td><td>- 014</td><td>- 01+</td><td>2.91</td><td>146.2</td><td>- 0013</td><td>59.2</td><td>- 02+</td></tr><tr><td>FNCL 3.5</td><td>105-24</td><td>24+c</td><td>+ 0014</td><td>- 023</td><td>- 025</td><td>2.57</td><td>129.0</td><td>- 013</td><td>52.2</td><td>- 033</td></tr><tr><td>FNCL 4.0</td><td>107-03+</td><td>04+c</td><td>+ 00+</td><td>- 015</td><td>- 013</td><td>2.31</td><td>116.1</td><td>- 005</td><td>47.0</td><td>- 02+</td></tr><tr><td>FNCL 4.5</td><td>108-05+</td><td>07c</td><td>+ 00</td><td>- 023</td><td>- 025</td><td>2.69</td><td>135.0</td><td>- 013</td><td>54.6</td><td>- 033</td></tr><tr><td>FNCL 5.0</td><td>109-17</td><td>19c</td><td>- 00+</td><td>- 03</td><td>- 0314</td><td>2.95</td><td>147.7</td><td>- 015</td><td>59.8</td><td>- 04</td></tr><tr><td colspan="4">15yr TBAs</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>FNCI 1.5</td><td>101-15+</td><td>17c</td><td>+ 0614</td><td>+ 0214</td><td>+ 013</td><td>4.09</td><td>204.9</td><td>+ 04</td><td>82.9</td><td>+ 003</td></tr><tr><td>FNCI 2.0</td><td>103-14+</td><td>16c</td><td>+ 0534</td><td>+ 025</td><td>+ 024</td><td>3.32</td><td>166.4</td><td>+ 043</td><td>67.3</td><td>+ 01+</td></tr><tr><td>FNCI 2.5</td><td>104-17+</td><td>19+c</td><td>+ 00+</td><td>- 01</td><td>- 013</td><td>2.19</td><td>109.8</td><td>- 003</td><td>44.4</td><td>- 017</td></tr><tr><td>FNCI 3.0</td><td>105-08</td><td>09c</td><td>+ 01</td><td>- 00+</td><td>- 005</td><td>1.81</td><td>91.1</td><td>+ 004</td><td>36.9</td><td>- 014</td></tr><tr><td>FNCI 3.5</td><td>106-23+</td><td>24+c</td><td>- 01</td><td>- 02</td><td>- 023</td><td>1.38</td><td>69.4</td><td>- 01+</td><td>28.1</td><td>- 025</td></tr><tr><td>FNCI 4.0</td><td>106-04+</td><td>05+c</td><td>+ 00+</td><td>- 01</td><td>- 013</td><td>1.80</td><td>90.0</td><td>- 004</td><td>36.4</td><td>- 013</td></tr><tr><td>FNCI 4.5</td><td>104-09</td><td>10c</td><td>+ 00</td><td>- 003</td><td>- 00+</td><td>1.20</td><td>60.3</td><td>- 003</td><td>24.4</td><td>- 013</td></tr><tr><td>FNCI 5.0</td><td>104-14+</td><td>15+c</td><td>+ 00+</td><td>+ 003</td><td>+ 003</td><td>.88</td><td>44.1</td><td>+ 003</td><td>17.8</td><td>- 003</td></tr></table>

TBA contracts settle on a certain day each month, called the "good day." Generally even if you are trading a real MBS bond, your counter-party will prefer to settle on good day, since it will correspond with their hedge.

TBA is also why trading MBS with long settlements is no big deal. There is very active TBA trading out 3 months, so it is easy to trade either TBA or cash bonds for settlement all the way to "good day" in October or November. Now like all bonds, you don't start accruing interest until the bond settles. Ergo waiting multiple months before settlement is disadvantageous to the buyer of the bond. They have locked in a price but aren't earning any carry.

This problem is solved via "drops". The drop is the difference between the price to settle in one month vs. the next month. Basically, if a buyer is going to wait an extra month to start earning carry, they get a discount on the price to compensate. Here's the current price for Sept, Oct and Nov  $2\%$  TBA.

The drops are indicated by "Sep/Oct" and "Oct/Nov", which is about 5 ticks or 5/32 of price (yes, MBS still trade in fractions!) The drop fluctuates a lot having to do with supply/demand as well as expected refill rates. It is something that MBS desks trade actively.

On TBA settlement day, if you are still short the contract you have to deliver MBS that meet the criteria. If the contract was  $2\%$  30yr, you basically have to deliver a bond with more than 15yrs to maturity and a  $2\%$  coupon. There are some other details but they aren't important.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/524465c7ea441406b43f078c5dc8bb9675b60ee10612cb3c739e884128f66ec0.jpg)

Similar to other contracts, there is an implied "cheapest to deliver" concept here, which MBS guys often call "worst to deliver." Whoever is short a TBA will deliver the least attractive MBS they can get their hands on. More on what makes some bonds better than others later.

Regardless, most contracts are never delivered, they are just closed out and/or rolled to the next month. For example, I use TBA to get passive exposure to certain parts of the MBS market. I have no intention of taking delivery. Long before delivery day in Sept, I'm going to sell that contract and buy an October contract. This is call "rolling" and is very similar to what happens in other futures markets for people who want consistent long or short exposure.

OK let's get back to the originator. Remember that MBS only exist in  $0.5\%$  coupon increments, but real borrower rates are usually in  $0.125\%$  increments. So the originator has loans that are at  $2.625\%$ ,  $2.75\%$ ,  $2.875\%$ , etc. What kind of pool do these wind up in?

This is actually up to the originator. They can take a  $2.875 \%$ loan and sell it into a  $2 \%$ MBS, keeping  $0.875 \%$ as a servicing fee. OR they could sell it into a  $2.5 \%$ MBS and keep just  $0.375 \%$ !

Since the price of the  $2.5\%$  MBS is higher (about 103.875 vs. 101.375 for  $2\%$ ) it comes down to whether they want to collect more up front when selling the bond or if they want to collect a higher servicing fee over time.

For some history, it used to be that  $0.5\%$  was a good rule of thumb for servicing fees, but today that's much higher. Right now the average 30-year  $2\%$  MBS has a  $0.85\%$  average servicing fee. IOW, the average borrower actually faces a  $2.85\%$  rate. On Bloomberg, you can analyze a "generic" MBS by using the ticker "FNCL" or "FGLMC" and a coupon rate. So FNCL 2 Mtge <GO> will bring up a generic  $2\%$  Fannie Mae MBS for analysis. The stats on the DES page are the average for that coupon cohort. I'll hit what these stats are in a moment.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/230c75961304d23c6d56151c47f659a17de3021752a85c4242be026c78ad2d38.jpg)

# 12.3 ANALYZING MBS

OK enough technical stuff. Let's talk how you analyze MBS. The first thing to note is that US mortgages are prepayable anytime without penalty. They also aren't assumable, so if you move, you have to pay off your mortgage.

As a result, virtually all MBS analysis is about how quickly the underlying borrowers will repay their mortgages. The biggest factor is obviously refinancing due to falling rates. The second biggest is "turnover" or people selling their house. Then comes defaults. There is some effect to "curtailment" or people just paying a little extra over time. That's minor and rarely worth worrying about unless you have a deeply factored pool.

Earlier, we covered *callable bonds* – it's good to re-familiarize yourself with it because optionality is kind of a doozy with MBS. With a normal bond, you basically have one decision maker (the issuer) reacting to one incentive (can they reissue new bonds at a lower yield?). MBS are quite different on a number of fronts.

First, MBS are callable immediately upon issuance. Most bonds have some period of time before the bond is callable. Second, every borrower within the pool is making their own decision to refinance. So there are dozens to thousands of decision makers.

Third, each of those decision makers aren't facing the same circumstances as each other. Sure their current mtg rate is similar, but their lives are not. Here's where it gets really interesting. Let's say there are two borrowers. @EffMarketHype has a \$900,000 mortgage with a 3.375% rate. @tdgraf has a \$100,000 mortgage with a 3.625% rate. Let's say that both could get a new mortgage at 2.75%. The fee for doing the refi is \$3k.

Even though @EffMarketHype has a lower rate than @tdgraf, he saves way more money per mo. on the refi (~\$300 vs. only about \$50). So it only takes @EffMarketHype about 10 months to make back the refi fee, whereas it would take me about 63 months. Here we can see that while both could borrow at the same rate, they have very different actual refi incentive. This is just one of dozens of ways borrowers can face different incentives. From this is born the real fun of MBS: prepayment analysis.

First some quick definitions. How quickly principal is repaid is called "speeds" in MBS land, and there are two main measures. The OG is called Conditional Prepayment Rate or CPR.

CPR is basically the pct of the loan that would pay off in a year if payments kept coming in at the current pace. So if you saw a 3mo CPR of 12, it means  $12\%$  of the loan would pay off if the pace of the last 3mo continued for 12.

The other is PSA. The PSA assumes that a MBS starts at 0CPR in month 1, increases by 0.2CPR every month until it reaches 6CPR and remains there. The PSA is quoted as a percentage of this basic model. So 150PSA in month  $31 =$  9CPR (6CPR * 150%).

OK so let's look at how important these speeds can be to your bond's yield. Below is the YT function on BB for a generic  $2.5\%$  MBS. I'll walk through what's here.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/3a551ad24ed1219a5ba77dcb667b22b29da5709866da9a20a41b037fff3f3f93.jpg)

Toward the middle of the page, you see a "Price-to-Yield" header and then a series of "0 MED" "+"300 MED" etc. Each of these are BB's estimate of prepayment speeds given a certain change in mtg rates. The current (0 MED) is 392PSA. That gives the bond a yield of  $1.519\%$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/4b85d2c484af7fabfb15793d09f366074979235de7e21d389ad053c3ad7df61f.jpg)

However we see if the bond were to pay slower, say 148PSA (BB's estimate for speeds given 100bps rise in rates) the yield jumps all the way to  $1.97\%$ ! Woot!

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/32c74681ba25ec6cb3361c4d8ba6995867047325f4fc05119f75c6fc7acc0c8a.jpg)

Here we have two important things to note. First, let's say general yields did rise by 100bps. This is still a bond with duration, therefore it will lose money because of price decline. However, it won't lose as much as its duration implies, all else being equal. This is because the value of the embedded option declines. Remember with a callable bond, the investor has shorted a call to the borrower. When rates rise, the call gets further from its strike.

The second interesting thing here is what if you could get the slower prepayment speed *without rates changing*. In other words, just get extra yield without having to suffer through the whole annoying price decline bit. That's where doing prepayment analysis really benefits your performance. If I can buy a pool that pays slower than generics, I earn that extra yield. If I could buy that pool for the same price as the generics, I could even use the TBA market to hedge!

Alas, life isn't that easy. Take our example from earlier where one borrower had a very low balance on the mortgage and thus would be much slower to refinance. Everyone knows this, and so they demand a higher price for a mortgage full of such loans.

This is called a "payup" and it is quoted in 32's vs. TBA. Below is one dealers estimate of generic payups for different types of pools. Here "LLB" means a pool where the largest loan is only \$85,000. The payoff for as FN 2.5% is 71/32.

So if TBA  $2.5 \%$ is  $\$ 103$ 27/32 on the ask side for Sept (see below) and I payup 71/32, that comes to  $\$ 106$ 2/32 all in. This system is more convenient vs. classic yield spread because it avoids dealing with differing prepayment models and/or settlement preferences.

<table><tr><td colspan="5">30yr Payups</td></tr><tr><td></td><td>1.5</td><td>2.0</td><td>2.5</td><td>3.0</td></tr><tr><td>Low WALA</td><td>0</td><td>0.5</td><td>1.5</td><td>20.5</td></tr><tr><td>LLB (85k)</td><td>5</td><td>40</td><td>71</td><td>156</td></tr><tr><td>MLB (110k)</td><td>3</td><td>33</td><td>65</td><td>140</td></tr><tr><td>HLB (150k)</td><td>1</td><td>27</td><td>50</td><td>104</td></tr><tr><td>SHLB (175k)</td><td>1</td><td>23</td><td>39</td><td>89</td></tr><tr><td>VHLB (\$200k)</td><td>1</td><td>16</td><td>31</td><td>75</td></tr><tr><td>225k max</td><td>1</td><td>9</td><td>21</td><td>60</td></tr><tr><td>NY Only</td><td>1</td><td>17</td><td>44</td><td>119</td></tr><tr><td>FL Only</td><td>1</td><td>11</td><td>23</td><td>65</td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/6df42d52d3a516e5a624e9fc87c26bb45a0e7d96cdce78fdf0a8339f9a83649b.jpg)

Pools where  $100\%$  of the items within it have some special characteristic are called "stip" pools (for stipulated). Note that it has to be  $100\%$ . If there were to be a pool where half of the loans were LLB but the other half were just average, no one would pay up for that.

Of course, those kinds of pools don't really exist. Going back to the originator, they aren't going to mix a bunch of generic loans with another set of loans that Wall Street will pay up for. They aren't in the business of throwing away money.

Quick aside for how I personally approach pass-throughs before moving on to CMOs. Big payoff pools are risky. Take our LLB example, which currently is around +71. What happens if general interest rates rise? Suddenly that prepayment protection isn't worth as much.

On 3/31, here's that same dealer's estimate for payups. When rates were a bit higher, the LLB payoff was 12/32 lower. So in effect, this bond has a higher duration that stated, because rising rates will cause both the base price AND the payoff to decline.

Now it is true that you can't find a pool with some LLB and some average loan balance, but you can find "mutt" pools that have various attractive characteristics at very low payups. That's especially true if you look during times when rates have recently risen.

<table><tr><td colspan="5">30yr Payups</td></tr><tr><td></td><td>1.5</td><td>2.0</td><td>2.5</td><td>3.0</td></tr><tr><td>Low WALA</td><td>1</td><td>2.5</td><td>5.5</td><td>30.5</td></tr><tr><td>LLB (85k)</td><td>6</td><td>30</td><td>59</td><td>111</td></tr><tr><td>MLB (110k)</td><td>4</td><td>22</td><td>51</td><td>96</td></tr><tr><td>HLB (150k)</td><td>2</td><td>14</td><td>42</td><td>79</td></tr><tr><td>SHLB (175k)</td><td>1</td><td>10</td><td>34</td><td>70</td></tr><tr><td>VHLB (\$200k)</td><td>1</td><td>4</td><td>24</td><td>59</td></tr><tr><td>225k max</td><td>1</td><td>2</td><td>15</td><td>46</td></tr><tr><td>NY Only</td><td>1</td><td>4</td><td>25</td><td>73</td></tr><tr><td>FL Only</td><td>1</td><td>3</td><td>11</td><td>45</td></tr></table>

I try to look for loans that are newer (people usually don't refill or move within the first few months), have some more favorable geographies (some places pay slower), more favorable servicers (some market more aggressively), and some other details that help out. If you can buy these kinds of pools with very little payup, your downside vs. TBA is capped. In other words, a pool can't trade less than the TBA price (assuming it is deliverable) since you could always just deliver it!

So if I only pay 4/32 for a pool, my relative downside is just those 4 ticks. I don't have to be all that right about my prepay work to outperform. Before we go any further, let's talk about convexity. Technically, the term is the second derivative of change in price to change in yield. I prefer to explain it in plainer English, especially with regard to MBS, because it not only makes more sense, but it is also more applicable.

A bond is negatively convex anytime its price underperforms what you'd expect by simply multiplying the delta of rates by its duration. In the case of MBS, this is basically always the case when rates fall. The bond doesn't appreciate because it is assumed everyone will refinance.

Ostensibly a bond with call protection, like our LLB bond, should have better convexity. In fact, your MBS salesperson will tell you this. It doesn't get refi'ed as quickly! But I already showed you how it can underperform when rates rise, because the stip payoff falls. But wait, it gets worse. The LLB borrower doesn't refill as quickly at first, but eventually rates fall enough that it doesn't matter. He refis too. Now your payoff was worthless. Ergo there's only this narrow range where the payoff benefits you.

When I think about pools, I lump all of this into negative convexity in my head. Again, it doesn't fit neatly into the mathematical definition, but I think it is a cleaner way to think about the concept.

Last points on negative convexity. It is the main reason why MBS yield so much compared to other product. The stated yield on the MBS index is  $1.70\%$ , all govt guaranteed! Relatedly, this is a big reason why buy-and-hold investors love this space. Banks, insurance companies, etc. If you can just collect book yield, and especially if the light capital charges that Agency MBS have benefit you, MBS are a great space.

For total return investors like me, this is a source of inefficiency. Buy stuff that has a good total return profile but not great book yield. Speaking of banks and inefficiencies...let's talk CMOs.

# 12.4 COLLATERALIZED MORTGAGE OBLIGATIONS (CMOS)

Again, I'm only going to focus on Agency-backed CMOs. If @EffMarketHype does a bit on ABS (or if he wants another guest lecture) the non-agency types should be covered there. (EMH here: Hell no I'm not doing that.)

OK so say you are Wall Street. You've got this huge MBS market with tons of flow. And buyers love AAA-rates bonds. Should be a gold mine! Here's the problem; so many bond buyers want certainty around when their principal will be returned. How can you get these investors to buy?

In the 80's they came up with a solution; you take set of pools and put them in a trust. Then you sell new bonds based on the cash flow coming out of that trust. Here's a simple example with what's called a "sequential" CMO. Say you sell three bonds off the original pool. The first bond gets every dollar of principal until it is paid off. Then the second, then the third. Assume each is exactly  $\frac{1}{3}$  of the original pool amount.

The speed of repayment for the first bond would be  $3 \times$  as fast, because it is getting  $100 \%$ of the principal but on only  $1 / 3$ of the base. So if the original pools were going to remain outstanding for 6 years, maybe this front sequential is only 2 years! And now take the last pay of this 3- part sequential. It probably has a very long average life, but certain buyers want that. Maybe you are an insurance company matching liabilities. This back sequential might be just what you want!

For Wall Street, CMOs are an arbitrage. Can you find someone who will pay up for the short-term certainty, someone else who will pay up to match a long liability, etc. such that the total paid for the pieces is more than it costs to acquire the pools in the first place?

Now as a wise MBS trader once told me early in my career, prepayment risk can neither be created nor destroyed. Whatever prepayment risk is lowered for someone within the structure, it has to be higher for someone else. Wall Street found there were always more buyers of the short bonds than the long bonds. So they needed to make more short bonds. But who could take the extra prepayment risk? Enter the PAC, or "planned amortization class."

A PAC tranche of a CMO will payoff in a narrow window. For example, you would get no principal until month 24, then the bond would pay off entirely by month 30. It kind of simulates a normal bond. If you are thinking "why not just buy a normal bond?" you get extra credit. (Of course, the answer is there's better sales credit in the PAC CMO so your friendly Citigroup sales person is going to badger you about it)

In order for the PAC to work, there needs to be some part of the structure to take any "extra" prepayments that would force principal too early, but also someone to cushion the PAC if prepayments come in too slowly. These are called "support tranches". I'm not going to go into the math of how supports work, but presume they are extremely volatile but at times are cheaper than they "should" be because Wall Street bribes people to take them to make the rest of their goldmine CMO structure work. But buyer beware.

Here's a quick example of what life in a support tranche looks like. Notice how wildly the average life fluctuates given changes in yield.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/29eb6a23df184f47609deb9616f8d77c25ba187afb52bbd3ac97968f5911f750.jpg)

OK this solves part of the problem of shuffling prepayment risk, but not all of it. The CMO is a closed loop. Every dollar that comes in has to go out, and there is no one who can contribute the pot. So if the supports get exhausted, the PAC can't hold up.

The speed at which this might happen is disclosed at the outset. This is called the "band" or the "collar." Here's an example where this bond was originally marketed to be a  $\sim 6.4\mathrm{yr}$  avg life as long as the PSA was between 155-265. If it persists outside than band, it will "bust".

Things get real hairy if speeds go really fast for a while and then slowdown. Say speeds run at 600PSA for a while then

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/7b617577defc762005e8b00137451d5a9a61cd765af5f7f698d1916ba1079efa.jpg)

slow to 100. That can turn this bond into a "extend-o-matic", where it goes from having an extremely short life to a very long one due to lack of supports.

There's one special type of CMO worth mentioning, and those are interest-only strips, or just IOs. These are CMOs that only pay interest, no principal. Eventually they are worthless. It is a matter of how much interest you collect before that happens. Obviously the slower the prepayments in the underlying pools, the more interest gets collected in the trust and the better the IO will perform.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/777d5f98b95c7331f005adda7dd0858d3d19360c5763a66d263692cc8cfa4bf3.jpg)

Here's an example of a stripped coupon off  $3 \%$ MBS. Notice the dollar price is just shy of \$12. Notice also that the yield is *negative* at base speeds!

This results in these bonds having a funny property: they have a

negative duration. Meaning, if interest rates rise, you get more coupon payments. Because there's no principal to discount, rising rates is all good for these bonds.

OK we're almost done. Congrats for making it this far.

A couple thoughts on the kinds of markets where MBS tend to outperform other types of high-quality bonds. IOW, why would someone like me who runs Barc Agg strategies overweight or underweight MBS? First, MBS have great carry as I mentioned before. So if you expect rates to be very range-bound, MBS can before very well. It is like writing covered calls on a stock that doesn't move. Second, MBS spreads (white) tend to be very stable compared to corporates (blue). They also aren't very correlated. If you think credit spreads are vulnerable, MBS can be a defensive position. OTOH, if credit spreads tighten, MBS definitely won't keep up.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/911fbac7e5fb773a402c5e45673ca6cd9819dc3d2ecc2430be0d33003e28d993.jpg)

MBS are also sensitive to interest rate volatility, for exactly the same reason that calls/puts on stocks are sensitive to the VIX. The MOVE index is something of a similar barometer. If volatility declines, MBS tend to outperform.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/c147c151855307f3e59c8ef576eb18627b8cc035cbd60879cfe5f99e2047195f.jpg)

# 12.5 APPENDIX - SOME OTHER TERMS MBS TRADERS USE NOT MENTIONED YET

"Orig" and "Curr": We often look at the original of some loan stat vs. its current. Since the borrowers aren't homogenous, certain stats can change over time in meaningful ways. Sometimes abbreviated as just O and C, so "OLTV" is original loan-to-value.

Speaking of which: LTV is loan-to-value. Basically the inverse of how much equity the borrower has in the house. 80 is standard. High LTV pools are sometimes sold as call protection, but note that someone w/ 95 OLTV can get a better rate if price appreciation gets him to 80.

FICO is the borrower's credit score. Similar to LTV, this isn't a stip I like to buy. It only takes about a year for a low FICO borrower to "cure" if they stay on time and then they can refill into a lower rate even if general rates haven't fallen.

With both LTV and FICO, the point is that the GSE charges a higher guarantee fee, so the mortgage bank is going to charge a higher rate. If they "cure" these problems they will prepay quicker than average.

Geo's are the term for what states the loan is from.  $100\%$  in one state can be a stip, especially NY, where the fees for refinancing are especially high. Which states pay faster or slower sometimes has a lot to do with where home prices have recently been rising.

HPA = home price appreciation. The more prices rise the easier cash-outs are, the easier it is to move, LTVs get better, all no Bueno for MBS investors.

WAC = weighted average coupon. This is the underlying mortgage rate faced by the borrowers.

WALA = weighted average loan age. How many months the loans have been outstanding (not the MBS, the loans).

WAL = weighted average life. This is how long each dollar of principal will be outstanding on average. Basically how long it will take for 1/2 of your bond to pay off.

WARM = weighted average remaining mortgage. Also quoted in months.

Day delay: this is how long between the servicer getting the payment from the borrower and them passing it through to the bond. Its about 1 1/2 months. Keep this in mind when looking at speeds. This month's speeds reflect payments made two months ago.

"Collateral" and "structure": terms CMO guys use for passthroughs (collateral) and CMOs (structure).

TPO: Third-party origination. Basically this is the pct of the loan that non-bank brokers originated. Might be a sign that the borrowers will pay faster since the brokers tend to market refis aggressively.

# 13. Introducing Interest Rate Swaps

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/5bb6db514254472b6239fedba32eb8994bf9b6994447913eee88d83ae7f5deb1.jpg)

Here we focus on the mechanics of swaps, mainly interest rate swaps. The objective is an understanding of what's being quoted and why. It'll be intense but the key will be developing an intuition for the market.

I must first of all give a shout out to @shortendtrader and @aRishisays for their help in making sure I don't make too much of an ass of myself. If you don't follow these two on twitter already, please do (though SET's account is locked).

The global swaps market is huge with Interest Rate Derivatives Notional Outstanding of US \$466.5 trillion at the end of 2020 according to BIS. In comparison the entire US' debt outstanding (private and public) stands at US\$ 47T as of end-Dec 2020 according to the BIS.

Chart 1: Global OTC Derivatives Notional Outstanding (US$ trillions)  
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/0ed469e70e26db01289f825c3d3a28586f2a96a94ae4b669a4820b509757e926.jpg)  
Source: BIS OTC Derivatives Statistics

We're going to break down a plain vanilla interest rate swap first and foremost. Once familiar with that, in Part 2 we'll introduce and apply the concepts to other types of swaps such as ASW, TRS, Basis Swaps and Cross Currency Basis Swaps.

Full disclosure: I do not trade swaps, I only observe and try to understand the market. If you are reading this and an active participant, please point out where I'm wrong or missing nuances. And for the love of Fabozzi and all that is carry, please read the topic on bootstrapping

So first, let's lay out the concept of a swap – the name itself implies an exchange of two things. A swap always has two "legs" where one cashflow is being swapped for another.

I want you to keep 3 simple principles in mind:

1. A swap is simply 2 fixed income instruments combined, similar to a pair trade  
2. We first analyse the swap from initiation i.e.,  $t = 0$  
3. The market aims for value equivalence (a.k.a. no free lunch)

Why do swaps exist? Well initially and from a high-level perspective, swaps are about comparative advantage which is about relative borrowing power and exploiting that.

Suppose the following:

Company A: can borrow Fixed at  $5\%$  or Floating at  $\mathsf{LIBOR} + 100\mathsf{bps}$

Company B: can borrow Fixed at  $6\%$  or Floating at LIBOR+175bps

Company A is surely the better credit as its financing is lower overall. But say its asset cashflows are variable and their borrowing tends to be fixed, can they match cashflow types and borrow for cheaper?

If Company A borrows fixed @  $5 \%$  then agrees with Company B borrowing floating at 3ML+175 to swap cashflows whereby A pays B LIBOR+85 and B pays A  $4.95 \%$  fixed – what is the net effect?

Company A now has floating rate debt 15bps cheaper, while receiving 5bps less in fixed. Net -10bps

Company B now has fixed rate debt 105bps cheaper, while receiving 90bps less in floating. Net -15bps

Win-win. Graphically it looks like this:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/b93948d91f53bde89a6cd063a1edcd7c42927664266a0a333f47cde1740c60b7.jpg)

So, it's about transforming one type of cashflow or liability into another type – and banks are heavy users of swaps. Why? Because a bank typically funds itself through avenues that are short term and therefore change, i.e., rates that float – LIBOR being a prime example of this.

A bank that holds a fixed income bond might want to swap its asset cashflows into floating rate cashflows, so it matches their funding profile.

As the usage of swaps increased it became apparent that swaps markets were inherently capturing market expectations of interest rates (e.g., if you worried about rising rates you could turn fixed coupons into floating ones ahead of time using swaps). With this the swaps market grew.

# 13.1 PLAIN VANILLA INTEREST RATE SWAP

The plain vanilla IRS is the most widely traded type of IRS and refers to a fixed-to-float IRS. Because there are two legs to any swap, the market must have a convention to focus on one side so everyone is referencing the same thing.

There must be a payer and a receiver. If the term 'payer' is mentioned, who is the payer? The party that is agreeing to pay the FIXED coupon of the swap. What is the swap rate that gets quoted? The FIXED coupon rate of the swap.

In the words of SET: "The second you hear someone say 'I want to buy a swap' then you know you can widen the bid/offer a touch" – paying vs receiving not buying vs selling

So, for a vanilla IRS the focus is on the FIXED coupon. As we work through it will make more sense why.

Here's a typical example of a vanilla IRS:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/7270d780c7d4aaa2c30fe99f062e703037d41b5cbbd0eda9c8b7f60222266cd1.jpg)

# THE 6 PARTS OF A PAR VANILLA SWAP TO PAY ATTENTION TO:

1. The fixed coupon  
2. The floating index (notice you can add a spread to it)  
3. DC Stripping  
4. The fixed leg NPV  
5. The floating leg NPV  
6. The swap's premium

At the top the Solver is set to Premium, meaning we will solve Fixed Coupon for a set premium.

Recall the 1st of 3 principles: a swap is made up of two individual instruments. Essentially a vanilla IRS is swapping a fixed coupon bond for a floating one.

a) Leg 1 is a 5y fixed coupon bond paying  $0.872421\%$  coupon semi-annually

b) Leg 2 is a 5y floating rate note paying 3M LIBOR every quarter

# 13.2 SWAP PARTS 1 & 2: THE FIXED AND FLOATING COUPON

A) The Fixed Coupon leg (like a fixed coupon bond) has a known series of cashflows paid semi-annually, which is \(43,621.05 every 6 months for 5 years.  
B) The Floating Leg (like an FRN) has an unknown series of cashflows paid quarterly, tied to 3M LIBOR. In bootstrapping we learned that taking the par swaps curve we can strip it, then imply forward zero-coupon rates for any tenor. This is how we generate the future implied 3M LIBOR rates in a swap.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/fc85f52ec9e8b5e49aaed72c6ac5a96b3d285eff7c31b859a81ebb8bf868927f.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/761f8daffaf321bcbfb8f31379beec5c71894f6e62800c9f47ebf6ccb16c720f.jpg)

Note: BLOOMBERG's swap functions are in a bit of a mess right now – FWCV does not incorporate dual-curve stripping, FWCM has just started to and ICVS displays both. Make sure everything is matched when trying to tie values from each screen (Bloomberg has a paper on this which can be found in their help pages).

On the 6) Cashflow tab you can see the swap cashflows - starting from today (Principle #2) what are the fixed coupons every 6 months and floating rates every 3 months?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/cd97312e4249c44de77c77c89fe516282be10813c4c65e3ab547a5a55335b2ea.jpg)

# 13.3 SWAP PART 3: DUAL CURVE STRIPPING

By now we're familiar with discounting bond coupons (cashflows) to arrive at Price (NPV). But what do we use for discounting swaps? That's where the bootstrapping topic comes in.

Using spot rates (stripped curve to derive zero rates) we can discount the fixed leg's cashflows using the swaps curve. Prior to the GFC, IRS discounting used the LIBOR swaps curve which was...made up of LIBOR swaps across different tenors.

So, there was recursiveness built in where swaps were 'self-discounting'. They thought it was basically risk-free. Oops.

The convention now is to discount future cashflows using a true risk-free curve, it was OIS based on Fed Funds but since Oct 2020 has shifted to SOFR curve discounting. You imply fwd cashflows using the same swap curve and discount using a different curve. More details later on.

# 13.4 SWAP PART 4 & 5: THE FIXED & FLOATING NPV

We have constant cashflows for the fixed leg. implied forward cashflows for the floating leg and we also have the SOFR spot curve (zero rates) to discount the cashflows.

Recall from the bootstrapping topic that we can take a spot rate and convert it into a discount factor for easy discounting. The screenshot shows the DFs and how we get a NPV for each leg. The sum of the PVs equals the NPV of the leg.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/db11a9455026eac94febae3b2c0fc139b24635b0077485486a62abb696597faf.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/bb4ba74f4dbc8bb3e7b612d6b137ce6a89c4a214bdd5aec6afbbdfabc697e4a0.jpg)

# 13.5 SWAP PART 6: THE PREMIUM

This is the crux of the swap valuation and Principle #3: No Free Lunch. The idea is that at initiation  $(t = 0)$ , both the payer and receiver enter a swap where both sides are currently equal.

If it wasn't equal, there is hardly any incentive to enter the agreement. Value equivalence is when both legs' NPVs are equal to one another. The difference in the NPVs is the premium, which logically means the premium should be 0 at inception.

The premium is expressed as a percent of par – so a premium of 1 is  $1 \%$ of par notional. On  $\$ 10$ MM notional that is  $100,000$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/fe6312cd369bace362a371fbbf45eea1ff0cb6e75393606fb6bda970ad4b2c9b.jpg)

IMPORTANT: The premium on SWPM is always expressed in the 1st Leg's perspective of NPV with respect to paying/receiving. By default, Leg 1 in an IRS on SWPM will be the fixed leg as per convention.

Hence if you are receiving fixed, the premium is the upfront to the PAYER. So, a +1.00 premium in this screenshot means the person receiving the fixed leg has an NPV  \$100k higher than the NPV of the counterparty's floating leg. To be fair (i.e., not get a free lunch) – the fixed receiver (i.e., floating payer) should pay the fixed payer\$ 100k up front. This is to make both parties economically equal at inception.

Let's look at premium another way: There is an existing swap curve which determines the floating rate resets, and there is an SOFR curve to discount cashflows, but neither of them can be negotiated by the trader of a swap – so what can be negotiated? The trader can only negotiate the fixed coupon or a spread over the floating rate. For the par swaps curve we assume 0 spread on the floating leg, leaving only the fixed coupon that can change. At  $2\%$  fixed, the NPVs of the two legs net out to be  $5.57\%$  in favour of the fixed coupon – i.e., the fixed leg NPV is too high vs the floating leg NPV given where swaps are trading.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/888e9e81c8eb6fb3d3db4b8f51f3605f2e3bf99fd1b751e2124d7925c9fa9921.jpg)

# So...WHAT IS THE FIXED COUPON RATE NEEDED IN ORDER FOR THE SWAP PREMIUM TO BE 0?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/338805fdfef2aed2c1eb40b69adc7df38293d7fbf7ca7406855315b0e4e046d8.jpg)

KEY TAKEAWAY – the swap rate you see quoted on a daily basis is the FIXED coupon rate of the swap required to ensure the premium of a swap is 0 – i.e., the swap is trading at par. That is why the swap curve is called a par swaps curve.

# 13.6 PNL AND RISK OF A SWAP

Once the swap has been initiated (at par), swap rates no longer stay the same; they move around just like any other market yield. This results in the floating leg NPV of the swap leg changing as the implied forward rates change while the fixed coupon leg cashflows do not change (note that the discount curve changes but because both legs share mutual discounting rates that effect is basically neutralized).

If rates were to rise then the floating leg cashflows would adjust accordingly while the fixed leg cashflows would not, resulting in a loss for the fixed receiver and a gain for the fixed payer. In other words, the fixed receiver is net long duration and the payer is net short duration.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/3d706a9a67f25d7a4b5059a7b76406f35d3341413014f8391ba4a0e322a189fa.jpg)

Recall from our coverage of duration on fixed vs floating rate notes that a floater's duration is very low while a fixed bond's is objectively not – this carries over into a swap which is basically a two-asset portfolio of (long/short) floater+fixed.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/3a28027c434ef9b683c5aed99f0281d9c47c760512a3b799337f6510140795d9.jpg)

# 13.7 SPECIAL CONSIDERATION OF THE RISK PROFILE SURROUNDING FIXINGS.

@shortendtrader brought up a very interesting aspect here, particularly for short-end swaps; for something like a 1-year swap vs 3ML there are effectively 4 fixings where the floating leg is effectively a strip of FRAs. Now LIBOR fixing happens at 11:55am London at which point the swap's cashflows will adjust. This means that at 11am the swap has  $100\%$  risk but only  $75\%$  of the risk at 11:55am. Such simple intuition but blew my mind.

# 13.8 FINAL POINTS AND ANCILLARY NOTES

This wraps up the very basic nature of how a vanilla interest rate swap works but the principals will translate over in any other swap that you encounter and that we cover in the next part. Remember the three principals for structuring a swap and the 6 basic parts of a swap to take note of.

Before we end this part however, I want to cover some changes and developments that have taken place in the swaps market over the years that have resulted in some added intricacies to swap construction and valuation.

# The ISDA Master Agreement

As swaps are OTC derivatives, they are essentially a private agreement between two parties. The agreement that covers this agreement is governed by what is known as an ISDA Master Agreement that includes some standardized elements of a swaps trade, including counterparty default scenarios. Not everyone can get an ISDA which means not everyone can trade swaps bilaterally (between two parties)

# Central Clearing Houses and Swap Execution Facilities

The Dodd-Frank Act mandated that all eligible swaps (which was a lot) have to be centrally cleared by a clearing house, thus shifting the counterparty credit risk over from a bilateral OTC world (with optional initial margins) to a cleared world where margins are mandatory.

The largest swaps clearing house is London Clearing House (LCH) which handles the majority of the world's cleared vanilla IRS. How it works is you enter a bilateral swap with someone under your ISDA Master Agreement, then you send the swap trade to LCH and once they accept it...

...the original swap gets replaced by two swaps with LCH sitting in the middle and conducting the swap between both parties.

The other part of Dodd-Frank's impact on swaps was the requirement for eligible swaps to be executed on a Swaps Execution Facility (SEF). A SEF is an electronic platform where you can buy/sell swaps with other market participants much like a formal exchange but for swaps.

# The curious case of Dual Curve Stripping:

Once it became clear that interbank risk was and could be significant in the aftermath of the GFC, discounting using LIBOR curves was no longer appropriate. Post-GFC the market demanded collateral for swap transactions, which is covered under a Credit Support Annexes within an ISDA Master Agreement. CSAs were valued using OIS, which as I mentioned in Topic 2, is closer to risk-free. Furthermore, after Dodd-Frank the amount of swaps that had to be cleared increased dramatically and thus, the amount of mandatory margins increased dramatically.

Once the market shifted to collateralized swap transactions, the need to move away from self-discounting was evident (See: STIRs and Risk Topic). This introduced the concept of dual-curve stripping. Using the swap curve (which is a 'risky' curve) we can imply its forward cashflows but then to value the swap we have to discount using a different and risk-free curve. This is a core aspect of swap valuations.

The key takeaway here is that self-discounting vs dual-curve discounting is a matter of uncollateralized vs collateralized swaps.

# The King is Dead, Long Live the King

But wait, there's more! You see Fed Funds is an unsecured overnight rate whereas LIBOR's successor SOFR is a Secured Overnight Financing Rate.

You all know about LIBOR's demise and come December 2021 LIBOR will be no more with SOFR taking its place. This leaves quite a headache for the market and this poor idiot who decided to write a topic on swaps with decade-old information in his head! In October 2020, London Clearing House (LCH) shifted over from Fed Funds (OIS) to SOFR discounting, marking a transition for the swaps market from OIS (EFFR) to SOFR discounting.

https://www.lch.com/resources/news/lch-successfully-completes-transition-sofr-discounting

This is why now on SWPM<GO> you will notice the discount curve is the Curve 490 - SOFR, which previously defaulted to curve 42 - OIS curve as late as last year (2020).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/840e4b48b842479d6f6569dee6a5acb758517819676ec1ade214626443539131.jpg)

# Brief Introduction to XVAs - contribution by Rishi Mishra (@aRishisays)

I'm paraphrasing here so I hope I don't butcher Rishi's work. As mentioned before, the GFC brought to light the issues with assuming interbank credit risk was nil, which Rishi beautifully terms as the industry shifting from "money at any risk" to "money with manageable risk".

The market then moved to make adjustments to ascertain the true cost of doing business in swaps by accounting for counterparty default, funding of position, margin, etc. This adjustment became known as Cross-Valuation Adjustments of XVA.

1. Credit Valuation Adjustment, which the CSA that is in the ISDA Master Agreement tries to address by defining and recording the collateral offered by the swap counterparties. A counterparty can default, meaning the payoff will not be realized. This risk is incorporated into the valuation by augmenting the payoff to take account of default. For instance, one can hedge for default risk via Credit Default Swaps, locking in the cost. Thus, we get Credit Valuation Adjustment (or CVA).  
2. Clear recognition of the vulnerability of banks during the crisis means their default risk is also to be taken into account. Hence, we get Debt Valuation Adjustment (or DVA).

3. Since derivatives pricing is about estimating the cost of setting up a replica portfolio, the cost of funding should be an essential part of the price. As mentioned already, GFC proved interbank credit risk real and significant which led to short-term funding drying up completely.

As a result, funding spreads for banks (like Libor-OIS), which had always been an afterthought, widened  $\sim 350$  bps. This is when FVA became a widely accepted part of the business. FVA, or Funding Value Adjustment is basically about incorporating the cost at which the bank can fund collateral, when necessary, as a spread over the risk-free rate, since it would be compensated for the collateral at that rate.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/7bbbc73c47493e2483adeb5afb25b1119a1a2fbf713e967e8776ef8dfc12e640.jpg)

4. The GFC led to regulators requiring more derivatives to be cleared on exchanges or for the positions that are not exchange cleared, to post initial margin to an independent third party, both leasing to Margin Valuation Adjustment (or MVA).  
5. Regulatory efforts since '08 to reduce interbank credit risk in times of stress come in the form of tweaks to risk-weighted assets (RWA) & higher cap requirements as a % of RWA.

KVA or Capital Value Adjustment is essentially the cost of raising money from shareholders whereas FVA is the cost of raising money from lenders.

All of this has had a drastic impact on the derivatives business, leading to either innovation like the advent of market-to-market cross-currency swaps, or a decline in business for other derivatives. While you could theoretically hedge CVA via CDS, the reality is that CDS is not always readily tradable on the counterpart at hand. Unhedged, CVA risk is warehoused on the balance sheet, and a part of the profit is set aside to account for realized losses from counterparty default. The same for other XVA components as well, which is why most banks have an XVA desk set up to either manage/hedge or calc adjustments in derivative valuations for these risks.

Here is Rishi's full note without my bastardisation of it: https://www.docdroid.net/5tR1LUv/how-the-great-financial-crisis-of-2008-changed-the-derivatives-business-forever-pdf

That's it for the vanilla IRS, hopefully as understandable as possible. In the following part we will use the basic principles we covered here and delve into the basics of other commonly mentioned swaps such as ASW, TRS and XCCY.

Topic Question Today is September  $10 ^ {\mathrm {i t h}}$ , 2021. I want to value a par swap ( $1MM$  notional) that started on Sep  $3 ^ {\mathrm {r d}}$  when 3ML was 0.1155 and the fixed coupon was  $0.887147 \%$ . Rates have not moved at all across the curve. Is the premium still 0? Is the NPV of the swap still 0? Assume ACT/360 daycounts for both legs. I don't need numbers, just intuition.

No, the premium is not zero but yes, the NPV of the swap is zero. If the curve has not changed at all then the valuation of each leg should still be the same (the forward term structure remains unchanged on the floating leg) so the NPV of each leg should still be the same. The reason why the premium isn't 0 though is because over the 7 days (Sep  $3^{rd}$  to Sep  $10^{th}$ ) each leg has accrued a different amount of accrued interest for the first coupon (the fixed at  $0.887\%$  p.a. and the floating leg at  $0.115\%$  p.a.). This means that to exit the swap on the  $10^{th}$  you would have to pay/receive the net accrued interest.

# 14. Exploring Other Swap Types

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/c45176fc79771806b23c5e07030f062dac30482b6e36e129c5ccd26839a41050.jpg)

Here we will take a brief look at a few other swap types that have been mentioned in this series so far, as well as some swap types you might read about in news/fintwit.

Again, we will not go too deep into each of them but more so focus on building the right intuition behind each of them – reasoning trumps rote.

# 14.1 OIS

Let's begin with the very first swap ever mentioned in this series – the Overnight Indexed Swap (OIS). As I mentioned in Part 1 – a USD OIS is typically referencing Fed Funds Effective Rate (EFFR). Here is what a 6-month USD OIS looks like:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/409aafb8d95fdcc2375ea6ec97ee0bea5893548bb1a09307f8d334eb69abb4b6.jpg)

Notice the same 6 parts of a swap we looked at in the introduction to IRS:

- fixed/float legs  
DC stripping  
- NPVs and premium.

No different than a vanilla 3ML IRS. The differences here are; first the index is based on EFFR which resets every day and secondly the payout frequency.

The "overnight" in OIS comes from the reference rate, not the term of the swap. In this example the swap maturity is 6M with an annual (i.e., 1 time) payout. Hence, any overnight rate can be used in OIS – EONIA (Europe), SONIA (UK) and going forward SOFR, ESTR and TONAR(Japan).

Notice that resets are daily (overnight) yet the cashflow payout is 1 single time with no exchange of principal.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/81527b45569bd8bbea9d3271e7f91382044763d346826456e1d53ffb8e4f1db3.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/9f5e3d3959d504735909be7a14767ea7dfedecdc7603d9a11570a0e81e815060.jpg)

Assuming the Fed never hikes, there is little reason to imagine EFFR rising much above its average since rates hit the floor. If for example, EFFR stayed at  $0.08\%$  for 6 months, an investment rolled overnight for that term would return = [1.0008(181/360)] - 1 = 0.040214%

The fixed coupon just has to be the equivalent annualized coupon that returns the same at maturity (NPV will equal because discount curve is the

same and there's only 1 cashflow).

If we apply our concept of swap risk from earlier, we can imagine that PnL on the swap will change if the EFFR does not stay at  $0.08\%$ . Thus, OIS is one way for a trader to bet on fed policy direction. Now, remember in TIPS we looked at market-based expectations through forward inflation swaps – the same can and is done here! You can trade forward starting OIS swaps such as a 1-month OIS swap starting in 1 year to bet on where OIS will be 1 year from now.

# 14.2 ASSET SWAPS

We introduced ASW back in the Topic 8 on Credit Risk but with our newfound appreciation for IRS hopefully this makes more sense. First of all, the name implies you are swapping an asset for another cashflow. Let's assume you're a bank and a client sells 1MM of a 7y AAPL 1.4 28 bond to you. You now have this bond on your books and let's assume you're magically able to hold it in inventory (lololol).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/256656fcef4897d9129e0ab2b418067bdbcb2a07279c8888e81d425a06289f43.jpg)

As a bank, you want floating cashflows not fixed ones so you swap it – what is the fair value to swap it? Well, let's build a swap from scratch.

Today is 9/7/21, settlement is  $\mathrm{T} + 2$  
Bond pays a  $1.4\%$  coupon, S/A, 30/360  
Accrual date starting on 08/05/21  
Matures on 08/05/28

Plug that into a plain vanilla IRS on SWPM:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/156d92269327478124cb9182f2c1f575d95e98d995ad78069d10b77714ff8697.jpg)

Notice the premium is -1.66746 while you are paying fixed. This means that you are overpaying at a  $1.4\%$  coupon versus what the 3M LIBOR curve implies you will receive in floating cashflows, resulting in a negative NPV for you. Remember, swaps are about equivalence!

Now you're swapping a bond's coupon so you can't change the  $1.4\%$ . You also can't change what the 3M LIBOR curve is trading at either. So, what can you change to achieve value equivalence? The spread on the floating leg.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/65686292e8ae60bb449608ce1fe48430465969b2c48334394aeebbde6d0b5a1a.jpg)

So, at a premium of 0, the spread over LIBOR should be 24.326bps. Are we good here? No.

Why? Because if you think about it, we're basically pricing a par swap (premium = 0). But in an asset swap I am swapping the cashflows from a bond I bought in the market. Did I buy this AAPL bond at 100? In this case...no. And very often you're going to buying a bond as a premium or discount to par.

Let's say on 09/07 we bought it at 99.591, meanwhile I swap out the cashflows into a par swap (value of 100) – which means I'm buying cheaper and selling for a PREMIUM. Remember how swaps are about value equivalence? So, the premium in this case is  $100 - 99.591 = 0.409$  in my favour.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/17d7555650638122f4c9016bdddf4e64d248dc383d3e2d438437e77c342033b3.jpg)

If I take the 0.409 premium and plug it into the SWPM calculator (remember I am paying fixed but owe the premium to my counterparty to make it fair) this is what it calculates the spread on floating leg to be: 30.293

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/1394bda9f1d48ee82219d6ffeedc29ac13e4ba22fba1a7ac3df65a7142d0df0b.jpg)

With the bond loaded, you can run ASW<GO> to see the spread calculation. Given the same valuation date ASW returns 30.3bps which is very close but not the same as what we manually built in SWPM. Why?

The reason is simple - cashflow dates.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/98b311441ae00f3dd949f5dc143a61d5c49f741170174249ad221a8906278b22.jpg)

SWPM by default will assume swap convention dates and adjustments whereas ASW must follow the bond's cashflow schedule. The same on the float leg which on swap conventions modifies for biz dates. Once you adjust cashflows - ASW will match.

Swap Cashflow Dates

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/c7a63a364153d6da0db326c0b7790e152afac9bd59a223162c4b36fd3a6b0840.jpg)

Bond Cashflow Dates

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/2e387927a47fafc2568e3430400b0766cae238342a19cd9ba1d8bcde64caa1e4.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/4a020e3b1e61ae26265317c2105dad5e2a7b0999710740ecb9aeed4c018bd0ed.jpg)

Tip: to quickly adjust – drag with your mouse until a dotted white box appears on Bloomberg, anything inside is copied to the clipboard. Use this to copy the Bond's cashflow dates then paste into Excel. Then drag the highlighted dataset from Excel into the first box of SWPM to paste the bond's cashflow dates. Now your dates should match.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/edd356d8da29fdc8d9946df68e7ab142fca4984796cf2e1c8c23e60730428f58.jpg)

Once you have done this you can go back to the main tab of the swap pricer and you will see that the Spread on the floating leg should match the spread that is automatically calculated by the ASW. Tadah!

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/7b63bc9856a492ed84cbd0a84a1d7c7f4346bda6b99f4fba56de4ec132b180f3.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/e96bb310f3b32a97465e0b94bdb682efe11ef15e59d97cfb1e010ba41a62fe48.jpg)

Note that this is what is termed a Par-Par Asset Swap, where the bond's premium is factored in as a result of pricing the fixed leg at par. This is the most common form however you can also swap at market value rather than par, in which case the spread will change.

# What does ASW mean?

Think of ASW as a Bond + IRS. You buy a bond for 99.591 and then proceed to swap its cashflows. The credit risk of the bond is captured in its cashflows, which you are swapping at par.

After compensating for the bond premium/discount, that credit risk must now be captured in the floating leg to achieve equivalence in the swap. This is why ASW is looked at as a measure of a bond's credit risk over the swaps curve.

# 14.3 TOTAL RETURN SWAPS

Total return swaps are simply a way to gain exposure to the total return performance of an asset in exchange (swapping) for typically a floating rate cashflow.

For example, if my financing cost is typically LIBOR+75bps then to borrow 1MM from my broker to purchase equities while 3M LIBOR is \(0.11575\%\), I would have to pay \((0.86575\% / 4) * 1\text{MM} = \\(2,164\) in margin financing a quarter.

The benefit of TRS is that like most swaps, you do not have to exchange notionals nor actually own the underlying asset. Years ago, when I was on a prime brokerage desk as an intern one fairly large client was doing TRS on KOSPI.

Why? Because to invest directly in Korea you need to open a local account and register with local regulators/authorities. TRS instead allows for synthetic exposure to an asset. With TRS you are able to utilize your counterparty's balance sheet by effectively leasing the asset and paying a borrowing fee for it. This allows for significant leveraged exposure to an asset's performance – the latest famous example was Archegos who was doing exactly this.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/ecebf52bd6d4ab724e3898a0c529b334ad5aad328ff9ad61aa94779a350514db.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/2b5a713b80d636b059a905a7945e2afb1e7a2735f0e4223593efd1502b5d6ff5.jpg)

In this example you are receiving the performance of KOSPI on a quarterly basis (capital gains plus dividends, in USD) while paying LIBOR+75. If it started in March, you would have made money in the first quarter net of LIBOR+75 and in the current quarter you would be losing money on the KOSPI and paying LIBOR+75 on top of that.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/898d4942c4f120bf269c99189c46cf670cb766d3b938e2297c3f9351160a2864.jpg)

Unlike a fixed/float swap, an equity TRS doesn't require you to imply forward the floating leg rates. It is simply marking each current quarter's performance against a financing rate (that floats). You can do TRS on any instrument, not just equities and many do for bonds as well.

# 14.4 BASIS SWAPS

With basis swaps we move away from the vanilla IRS where it was fixed cashflows swapping to floating ones and now look at floating-to-floating swaps. What is "basis"? For example, when hedging you are hoping to offset one asset for another and the difference between the two is known as the basis, or the source of an imperfect hedge. Basis is the gap between two instruments.

So, in swaps, say I have a loan tied to a floating rate that I pay interest on every 3 months, but I have revenues that come in every 6 months – this means my loan payment can fluctuate twice as often as my receipts. How do I hedge out this risk? By converting the 6M to 3M cashflows or vice versa. Remember how we talked about how time increases risk in many forms? Credit risk, reinvestment risk, etc. And 3 months difference might not seem long but in times of stress it makes all the difference (imagine lending money to Merrill for an additional 3 months just after Lehman fell).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/0089a725f8c7e9f300f22482d731a4d24a7e1f29426d32d5e9cdbdab017c7ea1.jpg)

By that logic, the shorter the time frame, the "safer" the investment, but that is only HALF the story of certainty. Let's look at swapping 3M LIBOR and 6M LIBOR without any spread added. The math here is exactly the same as in the vanilla IRS' floating leg.

We are implying the cashflows forward at 3M and 6M intervals respectively using risky swap curves then discounting them to present value using the SOFR swaps curve.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/5b0a8c7cd1a2765f2ff217c72165f61c74e21b04d5daefcdcc2179a7a28f778e.jpg)

First, here 3M has a lower rate than 6M. Second, just based on discounting of their implied cashflows the NPV for the 3M leg is lower, resulting in a negative premium for the 3M receiver.

Let's stop to ask why. Why aren't they the same? You have two options, fund for 3 months then roll into another 3 months of funding OR just fund once for 6 months. Which has more certainty? The 6-month funding.

KEY TAKEAWAY: The guarantee of 6M funding today is more valuable than funding for 3M today and another 3mths in 3mths time. This is the other HALF of the story of certainty.

This logic applies across the curve. 3M funding is more valuable than  $3 \times 1\mathrm{M}$  and 1M funding is more valuable than 30-day O/N funding.

In order to achieve value equivalence, we must find the spread on top of 3M to make the NPVs equal. This spread, is a funding premium. If you want to swap shorter funding for longer guaranteed funding, you have to cough up a premium. That is exactly what basis swaps are about.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/49fc43526b55bb60a53c6ff888ef0e4b899fee4a38f4455f32949511e7768359.jpg)

For 1 year, if you were to swap 3M and 6M cashflows the 3M receiver should get 1.8bps extra each quarter to compensate for the higher value of paying the 6M leg. If you look at contributed quotes on  $\text{CVS}<\text{GO}>$  you'll find the rate is pretty close.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/1926481ebfcd4aac124b5f66335b4f8836a6c19a9949d872c976c572b3083740.jpg)

Float/Float basis swaps are really about how the money market values the certainty of longer funding. Note in the chart how that premium to receive 3v6 funding after Lehman collapsed skyrocketed while the excess supply of cashing current times is why the basis is so low.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/83e8a751c126fc88cd35bca2a648f9e22dec3354d9c5bfa0f01bf1b76ecb9609.jpg)

This idea of swapping one floating rate for another is key piece of the next and very popularly discussed type of swap: the Cross Currency Basis Swap (XCCY).

# 14.5 CROSS CURRENCY BASIS SWAP XCCY

The first thing I will say is that please get terminology correct - cross currency basis swaps and FX swaps are not the same thing. An FX swap is basically a FX Forward where you've also exchanged currencies at spot, locking in the exchange rate gain/loss. XCCY is different.

Let's first imagine I'm a French investor – 5pm in office is overtime, I see more strikes at work than the bowling alley and I also happen to want to buy some US bonds, but I only own Euros. If I were to ask someone with USD to swap their USD with me for EUR, I would have to pay him the USD rate while I would earn the EUR rate. Right now, EUR rates are all negative so instead of earning on EUR I'm actually losing.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/bf81b29f26a20e21255ac86795ea29ce15e82edc2e4b9ee7f1c114e71bb8d88e.jpg)

So already in a 1-year lending scenario I'm paying  $0.1585 - (-0.490) = 0.6525\%$  as a EUR holder looking for access to USD.

Under Interest Rate Parity theory, for me to borrow the USD and invest it then at the same time lock in a forward rate to exchange the net proceeds back to EUR, it would be the same return as if I had just invested my EUR domestically. Most of the time it's close to true. Most.

Let's look at the XCCY: First we start with USD 3M LIBOR vs EUR 3M EURIBOR as a base example. We assume neither have a spread on top, just like with the basis swap example. Valuations are set to USD (dropdown on the right).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/1d5c5724457d6444a55c719d84759cc9246cd7c54ca26fa10955ec72939fd0e1.jpg)

In this scenario the NPV of the EUR leg is worth more than the NPV of the USD leg resulting in a premium to the USD payer. Let's dig into the cashflows to see what's going on:

First the USD payer receives US\$10MM then proceeds to pay quarterly LIBOR where using the swaps curve, the forward rates are implied. Then using a risk-free curve, the cashflows are discounted. Familiar so far.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/a057ae7251c3c91aa624f85fe7780858a87fe9400aadbbbad0426081486f20f5.jpg)

At the same time, they are receiving EUR interest on the other leg. So, they lend EUR8.45MM (FX = 1.18255) and receive implied forward 3M EURIBOR each quarter. Note the cashflows are negative until maturity: they are actually paying on the receiving leg.

<table><tr><td>91) Actions</td><td>92) Products</td><td>93) Views</td><td>94) Info</td><td>95) Settings</td><td colspan="3">Swap Manager</td></tr><tr><td>Solver (Premium)</td><td>Load</td><td>Save</td><td>Trade</td><td>CCP</td><td></td><td></td><td></td></tr><tr><td>Main Details</td><td>Curves Cashflow</td><td>7) Resets</td><td>9) Scenario 10 Risk</td><td>10 CVA 12) Matrix</td><td></td><td></td><td></td></tr><tr><td>Cashflow Table</td><td colspan="4">22) Cashflow Graph</td><td></td><td></td><td></td></tr><tr><td>Cashflow</td><td>Leg 2: Receive Float</td><td colspan="3">Historical Cashflows Accrued 0.00</td><td></td><td></td><td></td></tr><tr><td>Currency</td><td colspan="4">EUR Zero Rate NPV 8,471,546.12</td><td></td><td></td><td></td></tr><tr><td></td><td></td><td colspan="3">Equiv. Coupon</td><td></td><td></td><td></td></tr><tr><td colspan="8">Pay Date Accrual Start Accrual End Da... Notional Principal Reset Date Reset Rate Payment Discount PV</td></tr><tr><td>09/13/2021</td><td></td><td></td><td>-8,456,302.06</td><td></td><td>-8,456,302.06</td><td></td><td></td></tr><tr><td>12/13/2021</td><td>09/13/2021</td><td>12/13/2021</td><td>91 8,456,302.06</td><td>0.00</td><td>09/09/2021</td><td>-0.54100</td><td>-11,583.13</td></tr><tr><td>03/14/2022</td><td>12/13/2021</td><td>03/14/2022</td><td>91 8,456,302.06</td><td>0.00</td><td>12/09/2021</td><td>-0.49368</td><td>-10,552.63</td></tr><tr><td>06/13/2022</td><td>03/14/2022</td><td>06/13/2022</td><td>91 8,456,302.06</td><td>0.00</td><td>03/10/2022</td><td>-0.48395</td><td>-10,344.82</td></tr><tr><td>09/13/2022</td><td>06/13/2022</td><td>09/13/2022</td><td>92 8,456,302.06</td><td>8,456,302.06</td><td>06/09/2022</td><td>-0.46146</td><td>8,446,329.71</td></tr></table>

The Net effect is that the USD borrower pays USD interest, and then also pays EUR interest (because it's negative). For the first payment it goes like this:

USD Interest paid: -\\(2,925.90

EUR Interest earned (in USD): -11,564.23 * 1.18465 = -\$13,699.56

Total Interest earned/paid: -\\(16,625.45

Discount this by the USD DF and you get the PV.

<table><tr><td>91) Actions</td><td>92) Products</td><td>93) Views</td><td>94) Info</td><td>95) Settings</td><td colspan="3">Swap Manager</td><td></td></tr><tr><td colspan="2">Solver (Premium)</td><td>Load</td><td>Save</td><td>Trade</td><td colspan="3">CCP</td><td></td></tr><tr><td>3) Main</td><td>4) Details</td><td>5) Curves</td><td>6) Cashflow</td><td>7) Resets</td><td>8) Scenario</td><td>10) Risk</td><td>11) CVA</td><td>12) Matrix</td></tr><tr><td colspan="9">21) Cashflow Table</td></tr><tr><td rowspan="2">Cashflow Currency</td><td colspan="2">Net</td><td>Historical Cashflows</td><td>Accrued</td><td colspan="4">0.00</td></tr><tr><td colspan="2">USD</td><td>Zero Rate</td><td>NPV</td><td colspan="4">7,995.29</td></tr><tr><td>Pay Date</td><td>Payments(Rcv)</td><td>Payments(Pay)</td><td>Fwd FX</td><td>Net Payments</td><td>Discount</td><td colspan="2">PV</td><td></td></tr><tr><td>09/13/2021</td><td>-10,000,000.00</td><td>10,000,000.00</td><td>1.18255</td><td>0.00</td><td></td><td></td><td></td><td></td></tr><tr><td>12/13/2021</td><td>-13,699.55</td><td>-2,925.90</td><td>1.18465</td><td>-16,625.45</td><td>0.999859</td><td>-16,623.12</td><td></td><td></td></tr><tr><td>03/14/2022</td><td>-12,527.21</td><td>-4,489.00</td><td>1.18712</td><td>-17,016.30</td><td>0.999727</td><td>-17,011.65</td><td></td><td></td></tr><tr><td>06/13/2022</td><td>-12,302.12</td><td>-3,793.90</td><td>1.18921</td><td>-16,096.03</td><td>0.999591</td><td>-16,089.44</td><td></td><td></td></tr><tr><td>09/13/2022</td><td>10,062,507.17</td><td>-10,004,753.45</td><td>1.19135</td><td>57,753.72</td><td>0.999408</td><td>57,719.50</td><td></td><td></td></tr></table>

By now it's clear that the value of a XCCY swap is affected by USD swap rates, EUR swap rates AND FX forward rates. The FX portion is particularly important here because it is affected by the demand for foreign investors to hedge their USD investments.

We also know that if set to a spread of 0 for both legs, the USD borrower is set to gain. If the swap were to be equal given the current conditions, he would have to earn LESS from his EUR loan. If we set the swap premium to 0 and solve for the EUR spread, it looks like this:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/3b7562d1fd2b49415897f45b9b50ea2ac5ee3c4458ea4bb41c6839209b780747.jpg)

We also know that in order to get USD you have to give up more EUR – the flipside is that the USD lender (your counterparty) gets to EARN more from borrowing EUR from you. The more you want to get your hands on USD the more he can ask from you. (If the EUR lending rate was positive, it would mean the more he can negotiate a lower EUR borrowing rate, but in a negative rate scenario lower means more for him)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/c7da2cbffe7a36fe78ed42f5cf78ffd5d457436dde57d3e7ea2cc86f77504424.jpg)

This is why for a while (especially 2016), many negative yielding currencies saw their XCCY turn deeply negative when their domestic investors increased demand for USD. This is also why with so much liquidity currently, there is little cost to access USD globally.

In 2016, 1Y EURUSD XCCY went as deep as -48bps implying that EUR holders were willing to pay higher and higher net interest in

order to get USD. At -48bps today a 1y swap valuation would imply a  $2\%$  discount on the swap for the USD borrower from the get-go.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/cd2aa5206b1e89004ac356911bca47a6b70f02727352512443681bad6d116653.jpg)

This is a key instance in which value equivalence does not hold in financial markets and things like Interest Rate Parity cease to hold. This is why XCCY is commonly used as an indicator for foreign demand for USD (or any other currency).

So, if you're a USD holder and basis is deeply negative, can you profit from this and how?

In March last year during the pandemic, JPY-USD basis dropped to -57bps while the US 1y rate also fell to 0.1654 as investors reached for safety and the dollar. At the same time, a JGB with 1 y of maturity left (maturing March 2021) was trading at a yield of  $-0.22\%$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/0a672268c1803ac50eb70c5d85f4c3b9464bd10b328102511edca7a1de20685a.jpg)

Because people wanted USD so badly, a USD based investor could theoretically have bought a JGB at  $-0.22\%$  then swapped it back to USD over the next year.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/60c3c8d9357cc9ef6e3a94875cdca7e0b482bca08dc728bbe5df38e1cc53afb9.jpg)

If you click on the SWPM value at the top right, you can see it structured as a swap – what we are doing now is combining the concept of an asset swap with the concept of cross currency basis swaps. Giddyup!

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/1de54cc298817ede1d107cfccf28f57b48e14cf0f2d695c249abfd65a4c1e9bb.jpg)

First, you buy the JGB then swap it so you are the Payer on leg 1 – the details of the bond are input, including its  $1.3\%$  coupon. In return, you swap it for a USD fixed coupon leg. How do you arrive at this?

Well, you first match the cashflows timings of the JGB so there is no timing mismatch, then you solve for the USD fixed coupon given a set premium.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/35bb840c3e077008f447f8b2e17939290a62d85ec6b7b82fad930e6fc80228f3.jpg)

Premium is the premium over par that you pay for the JGB:  $100 - 101.531 = -1.531$ just like in ASW! This means upfront you buy the JGB for 101.531 and get paid 1.53 back from the swap and proceed to earn  $1.1299\%$ fixed on the USD leg when domestic 1y bills were yielding  $0.1654\%$ !

Note that in a market swap (i.e., premium is 0) then the fixed coupon will be even higher to compensate for the overpayment of the bond in return for a par swap.

Run XCCY<GO> to see the cross-currency basis swaps around the world against a benchmark currency.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/5fde1df9bff94096986198d976b3058ad98ce1b3aa41148edd126a7f8490f0ed.jpg)

Some resources and articles on XCCY:

BIS on FX hedging impact on basis:

https://www.bis.org/publ/qtrpdf/r_qt1609e.pdf

Hedged-JGBs for foreigners:

https://www.reuters.com/article/japan-rates-idUSL3N1YN13G

BOJ review on XCCY trends (2016):

https://www.bis.org/events/bissymposium0517/symposium0517_1_nagano_WR.pdf

That is all that I will cover in swaps. There's a much deeper world out there that goes far beyond what I know or dare to look at. Hopefully this helps you start understanding how swaps are used and why they're instrumental in transforming and capturing changes in interest rates.

More than anything, I hope it gives you a bit more of an idea what all these smart people I follow are talking about!

# 14.6 TOPIC QUESTION (COURTESY OF @SHORTENDTRADER):

At 11 am London time I buy \$500MM 1y USD 3s6s basis at 2.

1. What is my total delta at time of trade?  
2. What is my total delta at 11:55:01?  
3. Assuming I do no further trades in the day and economic data comes out strong at 1.30 causing yields to rise aggressively in the 1y sector, is my trade in the money, out of the money or unchanged and why.

Assume that 3m and 6m LIBOR come in where you expect them to come in at fixing.

1)  $O$  delta  
2) You are now long 500 eurodollars futures roughly (500 6m fixed and 500 3m fixed leaving me 500m 3s6s exposure)  
3) I am out of the money because my 3s6s FRA that I implicitly sold by not hedging the basis post-fixing has cost me lots of money and I am sad.

# 15. Appendix 1: The Cheapest to Deliver Bond of a Futures Contract

$ $$

This is the first educational twitter post that started it all, so it's only fitting that I include it here. I would have put it in the Futures section but that might have made your brain explode and made the chapter as long as my...list of losing trades. So anyway, here it is and congrats on making it to the end of the book.

First, let's establish the futures contract. We'll use the 10-year future TYA Comdty on Bloomberg, /ZN for non-Bloomberg users.

When you buy/sell a future you are agreeing to buy/sell the cash bond in the FUTURE. This is key. So what bonds specifically can you deliver/receive? A whole bunch!

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/49b9f0c5795059d6371d7ae4f30579036756d1031580aba02f87b5e3cddae868.jpg)

The red box is the key part. Any UST with 6.5-10 years of maturity can be used! But because futures are standardised, they use some conventions the most important being a  $6\%$  coupon (hello 1995). This requires a conversion factor to align theoretical bond with the real bond.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/9ac0b1634dec2aa23b32c335024282dc57aeaf06a69e5235db7e126a08e54d5f.jpg)

So now you know, if I buy a bond-future I will be able to receive a cash bond at expiry from the seller of the future - the seller has the RIGHT to choose any bond in the eligible criteria to deliver to me. Which will he pick? The cheapest one for him. But what is cheapest?

This brings us to the Cheapest to Deliver concept and the page on Bloomberg (DLV<GO>). When you short a future, you will deliver a bond. You must factor in the bond's accrued interest from now to the delivery - the carry.

The Invoice Price = (Future Price * Conversion Factor + Accrued Interest) * Contracts

<table><tr><td colspan="2">TYU1 Comdty</td><td colspan="2">Export</td><td colspan="2">Settings</td><td colspan="4">Cheapest-to-Deliver</td></tr><tr><td colspan="4">US 10YR NOTE (CBT)Sep21 Price</td><td rowspan="2" colspan="2">131-29</td><td rowspan="2">Trade Settle Prices in Decimals</td><td rowspan="2">06/18/21 06/21/21</td><td rowspan="2">Delivery Cheapest IRP Days 101 Act /</td><td rowspan="2">09/30/21 0.047 360</td></tr><tr><td colspan="4">Sort By</td></tr><tr><td>Implied Repo</td><td>Decreasing</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="2">Cash Security</td><td>Price</td><td>Source</td><td>Conven Yield</td><td>Conver Factor</td><td>Gro/Bas (32nds)</td><td>Implied Repo%</td><td>Actual Repo%</td><td>Net/Bas (32nds)</td></tr><tr><td colspan="2">Adjust Value</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>1) T 2 78</td><td>05/15/28</td><td>110-2414</td><td>BGN</td><td>1.2430</td><td>0.8338</td><td>24.780</td><td>0.047</td><td>0.068</td><td>0.208</td></tr><tr><td>2) T 2 78</td><td>08/15/28</td><td>110-2714</td><td>BGN</td><td>1.2821</td><td>0.8286</td><td>49.729</td><td>-2.429</td><td>0.068</td><td>24.930</td></tr><tr><td>3) T 1 14</td><td>05/31/28</td><td>99-2814</td><td>BGN</td><td>1.2677</td><td>0.7474</td><td>41.475</td><td>-3.392</td><td>0.068</td><td>31.047</td></tr><tr><td>4) T 1 14</td><td>04/30/28</td><td>99-31+</td><td>BGN</td><td>1.2523</td><td>0.7474</td><td>44.725</td><td>-3.753</td><td>0.068</td><td>34.358</td></tr><tr><td>5) T 1 14</td><td>03/31/28</td><td>100-01+</td><td>BGN</td><td>1.2427</td><td>0.7474</td><td>46.725</td><td>-3.962</td><td>0.068</td><td>36.299</td></tr><tr><td>6) T 3 18</td><td>11/15/28</td><td>112-2314</td><td>BGN</td><td>1.3143</td><td>0.8376</td><td>71.740</td><td>-4.365</td><td>0.068</td><td>44.985</td></tr><tr><td>7) T 2 58</td><td>02/15/29</td><td>109-0814</td><td>BGN</td><td>1.3475</td><td>0.8039</td><td>102.988</td><td>-8.104</td><td>0.068</td><td>80.395</td></tr><tr><td>8) T 2 38</td><td>05/15/29</td><td>107-1514</td><td>BGN</td><td>1.3730</td><td>0.7836</td><td>131.674</td><td>-11.459</td><td>0.068</td><td>111.473</td></tr><tr><td>9) T 1 58</td><td>08/15/29</td><td>101-27</td><td>BGN</td><td>1.3850</td><td>0.7320</td><td>169.228</td><td>-16.901</td><td>0.068</td><td>155.450</td></tr><tr><td>10) T 1 34</td><td>11/15/29</td><td>102-24+</td><td>BGN</td><td>1.3998</td><td>0.7331</td><td>194.085</td><td>-19.338</td><td>0.068</td><td>179.344</td></tr><tr><td>11) T 1 12</td><td>02/15/30</td><td>100-1514</td><td>BGN</td><td>1.4411</td><td>0.7105</td><td>216.229</td><td>-22.457</td><td>0.068</td><td>203.551</td></tr><tr><td>12) T 0 58</td><td>05/15/30</td><td>92-3014</td><td>BGN</td><td>1.4737</td><td>0.6462</td><td>246.640</td><td>-28.880</td><td>0.068</td><td>241.718</td></tr><tr><td>13) T 0 58</td><td>08/15/30</td><td>92-20</td><td>BGN</td><td>1.4900</td><td>0.6382</td><td>270.158</td><td>-31.796</td><td>0.068</td><td>265.185</td></tr><tr><td>14) T 0 78</td><td>11/15/30</td><td>94-17+</td><td>BGN</td><td>1.4991</td><td>0.6476</td><td>291.980</td><td>-33.462</td><td>0.068</td><td>284.873</td></tr><tr><td>15) T 1 18</td><td>02/15/31</td><td>96-1634</td><td>BGN</td><td>1.5135</td><td>0.6577</td><td>312.598</td><td>-34.874</td><td>0.068</td><td>303.219</td></tr></table>

Which means you are short the cash bond in return for the invoice. I.e., Your basis is the Bond Price - Invoice Price >> This is known as the Gross Basis.

If you bought the cash bond and sold the future, you lock in a return - this is the CASH AND CARRY TRADE

<table><tr><td colspan="2">TYU1 Comdy</td><td colspan="2">Export</td><td colspan="2">Settings</td><td colspan="5">Cheapest-to-Deliver</td></tr><tr><td colspan="4">US 10YR NOTE (CBT)Sep21 Price</td><td colspan="2">131-29</td><td rowspan="3" colspan="2">Trade Settle Prices in Decimals</td><td colspan="2">06/18/21 Delivery</td><td>09/30/21</td></tr><tr><td colspan="4">Sort By</td><td colspan="2"></td><td rowspan="2" colspan="2">06/21/21 Cheapest IRP Days 101 Act /</td><td rowspan="2">0.047 360</td></tr><tr><td colspan="4">Implied Repo ▼ Decreasing ▼</td><td colspan="2"></td></tr><tr><td colspan="2">Cash Security</td><td>Price</td><td>Source</td><td>Conven Yield</td><td>Conver Factor</td><td>Gro/Bas (32nds)</td><td>Implied Repo%</td><td>Actual Repo%</td><td colspan="2">Net/Bas (32nds)</td></tr><tr><td colspan="2">Adjust Value</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td colspan="2"></td></tr><tr><td colspan="2">1) T 2 7 8 05/15/28</td><td>110-2414</td><td>BGN</td><td>1.2430</td><td>0.8338</td><td>24.780</td><td>0.047</td><td>0.068</td><td colspan="2">0.208</td></tr><tr><td colspan="2">2) T 2 7 8 08/15/28</td><td>110-2714</td><td>BGN</td><td>1.2821</td><td>0.8286</td><td>49.729</td><td>-2.429</td><td>0.068</td><td colspan="2">24.930</td></tr><tr><td colspan="2">3) T 1 1 4 05/31/28</td><td>99-2814</td><td>BGN</td><td>1.2677</td><td>0.7474</td><td>41.475</td><td>-3.392</td><td>0.068</td><td colspan="2">31.047</td></tr><tr><td colspan="2">4) T 1 1 4 04/30/28</td><td>99-31+</td><td>BGN</td><td>1.2523</td><td>0.7474</td><td>44.725</td><td>-3.753</td><td>0.068</td><td colspan="2">34.358</td></tr><tr><td colspan="2">5) T 1 1 4 03/31/28</td><td>100-01+</td><td>BGN</td><td>1.2427</td><td>0.7474</td><td>46.725</td><td>-3.962</td><td>0.068</td><td colspan="2">36.299</td></tr><tr><td colspan="2">6) T 3 1 8 11/15/28</td><td>112-2314</td><td>BGN</td><td>1.3143</td><td>0.8376</td><td>71.740</td><td>-4.365</td><td>0.068</td><td colspan="2">44.985</td></tr><tr><td colspan="2">7) T 2 5 8 02/15/29</td><td>109-0814</td><td>BGN</td><td>1.3475</td><td>0.8039</td><td>102.988</td><td>-8.104</td><td>0.068</td><td colspan="2">80.395</td></tr><tr><td colspan="2">8) T 2 3 8 05/15/29</td><td>107-1514</td><td>BGN</td><td>1.3730</td><td>0.7836</td><td>131.674</td><td>-11.459</td><td>0.068</td><td colspan="2">111.473</td></tr><tr><td colspan="2">9) T 1 5 8 08/15/29</td><td>101-27</td><td>BGN</td><td>1.3850</td><td>0.7320</td><td>169.228</td><td>-16.901</td><td>0.068</td><td colspan="2">155.450</td></tr><tr><td colspan="2">10) T 1 3 4 11/15/29</td><td>102-24+</td><td>BGN</td><td>1.3998</td><td>0.7331</td><td>194.085</td><td>-19.338</td><td>0.068</td><td colspan="2">179.344</td></tr><tr><td colspan="2">11) T 1 1 2 02/15/30</td><td>100-1514</td><td>BGN</td><td>1.4411</td><td>0.7105</td><td>216.229</td><td>-22.457</td><td>0.068</td><td colspan="2">203.551</td></tr><tr><td colspan="2">12) T 0 5 8 05/15/30</td><td>92-3014</td><td>BGN</td><td>1.4737</td><td>0.6462</td><td>246.640</td><td>-28.880</td><td>0.068</td><td colspan="2">241.718</td></tr><tr><td colspan="2">13) T 0 5 8 08/15/30</td><td>92-20</td><td>BGN</td><td>1.4900</td><td>0.6382</td><td>270.158</td><td>-31.796</td><td>0.068</td><td colspan="2">265.185</td></tr><tr><td colspan="2">14) T 0 7 8 11/15/30</td><td>94-17+</td><td>BGN</td><td>1.4991</td><td>0.6476</td><td>291.980</td><td>-33.462</td><td>0.068</td><td colspan="2">284.873</td></tr><tr><td colspan="2">15) T 1 1 8 02/15/31</td><td>96-1634</td><td>BGN</td><td>1.5135</td><td>0.6577</td><td>312.598</td><td>-34.874</td><td>0.068</td><td colspan="2">303.219</td></tr></table>

Here's the math:

A) Cash bond  $= 110 - 24.25 = 110.7578125$

B) Invoice  $= 131 - 29 * 0.8338 = 109.9834313$  
C) Gross Basis  $= (\mathrm{A} - \mathrm{B})^{*}32 = 24.7802$

<table><tr><td colspan="2">TYU1 Comdty</td><td colspan="2">Export</td><td colspan="2">Settings</td><td colspan="4">Cheapest-to-Deliver</td><td></td></tr><tr><td colspan="2">US 10YR NOTE (CBT)Sep21</td><td>Price</td><td>131-29</td><td></td><td>Trade</td><td>06/18/21</td><td>Delivery</td><td>09/30/21</td><td></td><td></td></tr><tr><td colspan="2">Sort By</td><td></td><td></td><td></td><td>Settle</td><td>06/21/21</td><td colspan="2">Cheapest IRP</td><td>0.047</td><td></td></tr><tr><td>Implied Repo</td><td>Decreasing</td><td></td><td></td><td></td><td colspan="2">Prices in Decimals</td><td>Days</td><td>101 Act /</td><td>360</td><td></td></tr><tr><td colspan="2">Cash Security</td><td>Price</td><td>Source</td><td>Conven Yield</td><td>Conver Factor</td><td>Gro/Bas (32nds)</td><td colspan="2">Implied↓ Repo%</td><td>Actual Repo%</td><td>Net/Bas (32nds)</td></tr><tr><td colspan="2">Adjust Value</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>1) T 2 78</td><td>05/15/28</td><td>110-2414</td><td>BGN</td><td>1.2430</td><td>0.8338</td><td>24.780</td><td colspan="2">0.047</td><td>0.068</td><td>0.208</td></tr><tr><td>2) T 2 78</td><td>08/15/28</td><td>110-274</td><td>BGN</td><td>1.2821</td><td>0.8286</td><td>19.729</td><td colspan="2">-2.429</td><td>0.068</td><td>24.930</td></tr><tr><td>3) T 1 14</td><td>05/31/28</td><td>99-2814</td><td>BGN</td><td>1.2677</td><td>0.7474</td><td>41.475</td><td colspan="2">-3.392</td><td>0.068</td><td>31.047</td></tr><tr><td>4) T 1 14</td><td>04/30/28</td><td>99-31+</td><td>BGN</td><td>1.2523</td><td>0.7474</td><td>44.725</td><td colspan="2">-3.753</td><td>0.068</td><td>34.358</td></tr><tr><td>5) T 1 14</td><td>03/31/28</td><td>100-01+</td><td>BGN</td><td>1.2427</td><td>0.7474</td><td>46.725</td><td colspan="2">-3.962</td><td>0.068</td><td>36.299</td></tr><tr><td>6) T 3 18</td><td>11/15/28</td><td>112-2314</td><td>BGN</td><td>1.3143</td><td>0.8376</td><td>71.740</td><td colspan="2">-4.365</td><td>0.068</td><td>44.985</td></tr><tr><td>7) T 2 58</td><td>02/15/29</td><td>109-0814</td><td>BGN</td><td>1.3475</td><td>0.8039</td><td>102.988</td><td colspan="2">-8.104</td><td>0.068</td><td>80.395</td></tr><tr><td>8) T 2 38</td><td>05/15/29</td><td>107-1514</td><td>BGN</td><td>1.3730</td><td>0.7836</td><td>131.674</td><td colspan="2">-11.459</td><td>0.068</td><td>111.473</td></tr><tr><td>9) T 1 58</td><td>08/15/29</td><td>101-27</td><td>BGN</td><td>1.3850</td><td>0.7320</td><td>169.228</td><td colspan="2">-16.901</td><td>0.068</td><td>155.450</td></tr><tr><td>10) T 1 34</td><td>11/15/29</td><td>102-24+</td><td>BGN</td><td>1.3998</td><td>0.7331</td><td>194.085</td><td colspan="2">-19.338</td><td>0.068</td><td>179.344</td></tr><tr><td>11) T 1 12</td><td>02/15/30</td><td>100-1514</td><td>BGN</td><td>1.4411</td><td>0.7105</td><td>216.229</td><td colspan="2">-22.457</td><td>0.068</td><td>203.551</td></tr><tr><td>12) T 0 58</td><td>05/15/30</td><td>92-3014</td><td>BGN</td><td>1.4737</td><td>0.6462</td><td>246.640</td><td colspan="2">-28.880</td><td>0.068</td><td>241.718</td></tr><tr><td>13) T 0 58</td><td>08/15/30</td><td>92-20</td><td>BGN</td><td>1.4900</td><td>0.6382</td><td>270.158</td><td colspan="2">-31.796</td><td>0.068</td><td>265.185</td></tr><tr><td>14) T 0 78</td><td>11/15/30</td><td>94-17+</td><td>BGN</td><td>1.4991</td><td>0.6476</td><td>291.980</td><td colspan="2">-33.462</td><td>0.068</td><td>284.873</td></tr><tr><td>15) T 1 18</td><td>02/15/31</td><td>96-1634</td><td>BGN</td><td>1.5135</td><td>0.6577</td><td>312.598</td><td colspan="2">-34.874</td><td>0.068</td><td>303.219</td></tr></table>

So that's the basic idea of the gross basis, but I still haven't gotten around to the idea of the cheapest to deliver! If you haven't noticed yet, the DLV screen sorts the deliverables by Implied Repo.

Why?

<table><tr><td colspan="2">TYU1 Comdty</td><td colspan="2">Export</td><td colspan="2">Settings</td><td colspan="4">Cheapest-to-Deliver</td></tr><tr><td colspan="4">US 10YR NOTE (CBT)Sep21 Price</td><td rowspan="2" colspan="2">131-29</td><td>Trade Settle</td><td>06/18/21</td><td>Delivery</td><td>09/30/21</td></tr><tr><td colspan="4">Sort By</td><td colspan="2">06/21/21</td><td>Cheapest IRP</td><td>0.047</td></tr><tr><td>Implied Repo</td><td>Decreasing</td><td colspan="2"></td><td colspan="2">Prices in Decimals</td><td>Days</td><td>101 Act /</td><td>360</td><td></td></tr><tr><td colspan="2">Cash Security</td><td>Price</td><td>Source</td><td>Conven Yield</td><td>Conver Factor</td><td>Gro/Bas (32nds)</td><td>Implied↓ Repo%</td><td>Actual Repo%</td><td>Net/Bas (32nds)</td></tr><tr><td colspan="2">Adjust Value</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="2">1) T 2 7s 05/15/28</td><td>110-2414</td><td>BGN</td><td>1.2430</td><td>0.8338</td><td>24.780</td><td>0.047</td><td>0.068</td><td>0.208</td></tr><tr><td colspan="2">2) T 2 7s 08/15/28</td><td>110-2714</td><td>BGN</td><td>1.2821</td><td>0.8286</td><td>49.729</td><td>-2.429</td><td>0.068</td><td>24.930</td></tr><tr><td colspan="2">3) T 1 14 05/31/28</td><td>99-2814</td><td>BGN</td><td>1.2677</td><td>0.7474</td><td>41.475</td><td>-3.392</td><td>0.068</td><td>31.047</td></tr><tr><td colspan="2">4) T 1 14 04/30/28</td><td>99-31+</td><td>BGN</td><td>1.2523</td><td>0.7474</td><td>44.725</td><td>-3.753</td><td>0.068</td><td>34.358</td></tr><tr><td colspan="2">5) T 1 14 03/31/28</td><td>100-01+</td><td>BGN</td><td>1.2427</td><td>0.7474</td><td>46.725</td><td>-3.962</td><td>0.068</td><td>36.299</td></tr><tr><td colspan="2">6) T 3 1s 11/15/28</td><td>112-2314</td><td>BGN</td><td>1.3143</td><td>0.8376</td><td>71.740</td><td>-4.365</td><td>0.068</td><td>44.985</td></tr><tr><td colspan="2">7) T 2 5s 02/15/29</td><td>109-0814</td><td>BGN</td><td>1.3475</td><td>0.8039</td><td>102.988</td><td>-8.104</td><td>0.068</td><td>80.395</td></tr><tr><td colspan="2">8) T 2 3s 05/15/29</td><td>107-1514</td><td>BGN</td><td>1.3730</td><td>0.7836</td><td>131.674</td><td>-11.459</td><td>0.068</td><td>111.473</td></tr><tr><td colspan="2">9) T 1 5s 08/15/29</td><td>101-27</td><td>BGN</td><td>1.3850</td><td>0.7320</td><td>169.228</td><td>-16.901</td><td>0.068</td><td>155.450</td></tr><tr><td colspan="2">10) T 1 3s 11/15/29</td><td>102-24+</td><td>BGN</td><td>1.3998</td><td>0.7331</td><td>194.085</td><td>-19.338</td><td>0.068</td><td>179.344</td></tr><tr><td colspan="2">11) T 1 12 02/15/30</td><td>100-1514</td><td>BGN</td><td>1.4411</td><td>0.7105</td><td>216.229</td><td>-22.457</td><td>0.068</td><td>203.551</td></tr><tr><td colspan="2">12) T 0 5s 05/15/30</td><td>92-3014</td><td>BGN</td><td>1.4737</td><td>0.6462</td><td>246.640</td><td>-28.880</td><td>0.068</td><td>241.718</td></tr><tr><td colspan="2">13) T 0 5s 08/15/30</td><td>92-20</td><td>BGN</td><td>1.4900</td><td>0.6382</td><td>270.158</td><td>-31.796</td><td>0.068</td><td>265.185</td></tr><tr><td colspan="2">14) T 0 7s 11/15/30</td><td>94-17+</td><td>BGN</td><td>1.4991</td><td>0.6476</td><td>291.980</td><td>-33.462</td><td>0.068</td><td>284.873</td></tr><tr><td colspan="2">15) T 1 1s 02/15/31</td><td>96-1634</td><td>BGN</td><td>1.5135</td><td>0.6577</td><td>312.598</td><td>-34.874</td><td>0.068</td><td>303.219</td></tr></table>

If I short the future and have to deliver a bond, I can use the proceeds to buy the cash bond at initiation to lock in the gross basis. This IMPLIES a breakeven of sorts.

We can model this through the fixed income horizon page on Bloomberg - FIHZ<GO>

You buy the cash bond at 110-24.25 today (6/18/21, settles 6/21/21). You agree to sell at (131-29 * 0.8338) on 09/30/21 (future delivery date) resulting in a holding period return of  $0.013\%$ , but in an annualized Money Market Convention Return it is. $0.047$ !

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/e84380f46c48dcecc192528ffda19655542611644af99963fb30666ff7c861da.jpg)

And that, is the IMPLIED REPO RATE.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/fb92f215-ad22-4948-8388-0a6ab9ae04d1/387f0abcac4833bb6678b01829f021ef5e5e3c039dfdeb20d83f601b6930cf83.jpg)

In simple terms, the implied repo rate is the implied money market return from a cash and carry trade. And for a treasury futures seller, that determines which bond is the cheapest for him to deliver to the futures buyer.

# 16. Disclaimer

Nothing in this book is financial advice, a lot of the content could be wrong, much of it are just my opinions. Bloomberg didn't have any involvement in this or pay me, though they should with how awesome this book is. Be good, be honest, work hard. Love people fiercely but hold them gently. Always learn. Have a good day.
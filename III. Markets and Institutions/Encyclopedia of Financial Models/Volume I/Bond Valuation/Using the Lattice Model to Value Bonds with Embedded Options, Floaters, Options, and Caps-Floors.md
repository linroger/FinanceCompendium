
# Using the Lattice Model to Value Bonds with Embedded Options, Floaters, Options, and Caps/Floors

Abstract: In principle, the valuation of a financial instrument is straightforward: It is the present value of the expected cash flow. For fixed income securities, the expected cash flow, ignoring the possibility of default, is the periodic interest payments and the maturity value. The interest rates used to discount the expected cash flows are obtained from an appropriate benchmark spot rate curve. When a fixed-rate or floating-rate bond has an interest-sensitive embedded option such as a call option, put option, or a cap in the case of a floater, the expected cash flow will be dependent on future interest rates. To value fixed income securities with embedded options, the lattice framework is the standard tool in practice. The same lattice-based framework is also used to value interest-sensitive derivatives such as options, caps, and floors.

We will demonstrate in this entry how the lattice framework provides a robust means for valuing fixed-rate and floating-rate bonds and interest rate derivatives. In addition, we extend the application of the interest rate tree to the calculation of the option-adjusted spread, as well as the effective duration and convexity of a fixed income instrument. The model described below was first introduced by Kalotay, Williams, and Fabozzi (1993).

# FIXED-COUPON BONDS WITH EMBEDDED OPTIONS

The valuation of bonds with embedded options proceeds in the same fashion as in the case of an option-free bond. However, the added complexity of an embedded option requires an adjustment to the cash flows on the tree depending on the structure of the option. A decision on whether to call or put must be made at nodes on the tree where the option is eligible for exercise. Examples for both callable and putable bonds follow. The analysis can be extended to cases where there are several embedded options such as a callable bond with an accelerated sinking fund provision.


# Valuing a Callable Bond

In the case of a call option, the call will be made when the present value (PV) of the future cash flows is greater than the call price at the node where the decision to exercise is being made. Effectively, the following calculation is made:

$$
V _ {t} = \operatorname {M i n} [ \text {C a l l P r i c e}, \text {P V (F u t u r e C a s h F l o w s)} ]
$$ where  $V_{t}$  represents the PV of future cash flows at the node. This operation is performed at each node where the bond is eligible for call.


For example, consider a  $6.5\%$  bond with four years remaining to maturity that is callable in one year at  $\$ 100$ . We will value this bond, as well as the other instruments in this entry, using a binomial tree. The on-the-run yield curve for the issuer used to construct the tree is given in Table 1. The methodology for constructing the binomial interest rate tree from the yield curve is not discussed here but is explained in Entry 16. Application of the methodology results in the binomial interest rate tree in Figure 1. In constructing the binomial tree in Figure 1, it is assumed that interest rate volatility is  $10\%$  and that cash flows occur at the end of the year. This binomial tree will be used throughout this entry.

Figure 2 shows two values are now present at each node of the binomial tree. The discounting process is used to calculate the first of the two values at each node. The second value is the value based on whether the issue will be called. To simplify the analysis, it is assumed that the

Table 1 Issuer Par Yield Curve

<table><tr><td>Maturity</td><td>Par Rate</td><td>Market Price</td></tr><tr><td>1 year</td><td>3.50\%</td><td>100</td></tr><tr><td>2 years</td><td>4.20\%</td><td>100</td></tr><tr><td>3 years</td><td>4.70\%</td><td>100</td></tr><tr><td>4 years</td><td>5.20\%</td><td>100</td></tr></table> issuer calls the issue if the PV of future cash flows exceeds the call price. This second value is incorporated into the subsequent calculations.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/9ac38409501d90221c3e513bb0a2e2a12ff6ea131b2971386253369376c1adaf.jpg)
Figure 1 Binomial Interest Rate Tree for Valuing up to a Four-Year Bond for Issuer (10\% Volatility Assumed)


In Figure 3 certain nodes from Figure 2 are highlighted. Panel (a) of the figure shows nodes where the issue is not called (based on the simple call rule used in the illustration) in year 2 and year 3. The values reported in this case are the same as in the valuation of an option-free bond. Panel (b) of the figure shows some nodes where the issue is called in year 2 and year 3. Notice how the methodology changes the cash flows. In year 3, for example, at node  $N_{HLL}$  the recursive valuation process produces a PV of 100.315. However, given the call rule, this issue would be called. Therefore, 100 is shown as the second value at the node and it is this value that is then used as the valuation process continues. Taking the process to its end, the value for this callable bond is 102.899.

The value of the call option is computed as the difference between the value of an optionless bond and the value of a callable bond. In our illustration, the value of the option-free bond can be shown to be 104.643. The value of the callable bond is 102.899. Hence, the value of the call option is 1.744 (=104.634 - 102.899).

# Valuing a Putable Bond

A putable bond is one in which the bondholder has the right to force the issuer to pay off the bond prior to the maturity date. The analysis of the putable bond follows closely that of the callable bond. In the case of the putable, we must establish the rule by which the decision to put is made. The reasoning is similar to that for the callable bond. If the PV of the future cash flows is less than the put price (that is, par), then the bond will be put. In equation form,

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/f8d5c3f23b368a0bf0adced5927c89e32fdf47558771d2d49d202c3cda2ce210.jpg)
Figure 2 Valuing a Callable Bond with Four Years to Maturity, a Coupon Rate of  $6.5\%$ , and Callable after the First Year at 100 (10\% Volatility Assumed)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/c5da87f495750ba19df5a565edbd4724e0fe80105668d665d844be8e3431b9b8.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/604d0675fe12bfbdabb82e4ce0dd001fa354dfd2aea213881f5025947bb81d91.jpg)
Figure 3 Highlighting Nodes in Years 2 and 3 for a Callable Bond: (a) Nodes Where the Call Option Is Not Exercised and (b) Selected Nodes Where the Call Option Is Exercised


$V_{t} = \mathrm{Max}$  [Put Price, PV(Future Cash Flows)]

Figure 4 is analogous to Figure 3. It shows the binomial tree with the values based on whether or not the investor exercises the put option at each node. The bond is putable any time after the first year at par. The value of the bond is 105.327. Note that the value is greater than the value of the corresponding option-free bond.

With the two values in hand, we can calculate the value of the put option. Since the value of the putable bond is 105.327 and the value of the corresponding option-free bond is 104.643, the value of the embedded put option purchased by the investor is effectively 0.684.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/e105c3c316690c508af85137c5191e8a3f5b8463a63a65540af10c10ddfc4b9e.jpg)
Figure 4 Valuing a Putable Bond with Four Years to Maturity, a Coupon Rate of  $6.5\%$ , and Putable after the First Year at 100 (10\% Volatility Assumed)


Suppose that a bond is both putable and callable. The procedure for valuing such a structure is to adjust the value at each node to reflect whether the issue would be put or called. Specifically, at each node there are two decisions about the exercising of an option that must be made. If it is called, the value at the node is replaced by the call price. The valuation procedure then continues using the call price at that node. If the call option is not exercised at a node, it must be determined whether or not the put option will be exercised. If it is exercised, then the put price is substituted at that node and is used in subsequent calculations.

# FLOATING-COUPON BONDS WITH EMBEDDED OPTIONS

Simple discounted cash flow methods of analysis fail to handle floaters with embedded or option-like features. In this section we demonstrate how to use the lattice model to value (1) a capped floater, and (2) a callable capped floater. We will streamline the notation used in the binomial tree in the figures shown in this section.

# Valuing Capped Floating-Rate Bonds

Consider a floating-rate bond with a coupon indexed to the 1-year rate (the reference rate) plus a spread. For our purposes, assume a 25 basis point (bp) spread to the reference rate. The coupon adjusts at each node to reflect the level of the reference rate plus the spread.


Using the same valuation method as before, we can find the value at each node. Recall the value of the bond is 100 (par) at the end of year 4. Consider  $N_{HLL}$ .

$$
\begin{array}{l} N _ {H L L} = \frac {1}{2} \left[ \frac {1 0 0 + 6 . 4 1 6}{1 . 0 6 1 6 6} + \frac {1 0 0 + 6 . 4 1 6}{1 . 0 6 1 6 6} \right] \\ = 1 0 0. 2 3 5 \\ \end{array}
$$

Stepping back one period

$$
\begin{array}{l} N _ {L L} = \frac {1}{2} \left[ \frac {1 0 0 . 2 3 5 + 4 . 9 4 5 8}{1 . 0 4 6 9 5 8} + \frac {1 0 0 . 2 3 8 + 4 . 9 4 5 8}{1 . 0 4 6 9 5 8} \right] \\ = 1 0 0. 4 6 5 \\ \end{array}
$$

Following this same procedure, we arrive at the price of 100.893. How would this change if the interest rate on the bond were capped?


Assume that the cap is  $7.25\%$ . In Figure 5 we've taken the tree from Figure 1 and, as was the case with the optionless fixed-coupon bond, at each node we've entered the cash flow expected at the end of each period based on the reset formula. As rates move higher there is a possibility that the current reference rate exceeds the cap. Such is the case at  $N_{HHH}$  and  $N_{HHL}$ . The coupon is subject to the following constraint:

$$
C _ {t} = \operatorname {Min} \left[ r _ {t}, 7.25 \% \right]
$$

As a result of the cap, the value of the bond in the upper nodes at  $t = 3$  falls below par. For example,

$$
N _ {H H H} = \frac {1}{2} \left[ \frac {1 0 0 + 7 . 2 5}{1 . 0 9 1 9 8 7} + \frac {1 0 0 + 7 . 2 5}{1 . 0 9 1 9 8} \right] = 9 8. 2 1 5
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/da844dc241448254fe7dbe496bab9cf45baa40e63825e8730cdab1c1f0a356ca.jpg)
Figure 5 Valuation of a Capped Floating-Rate Bond

Valuing recursively through the tree, we arrive at the current value of the capped floater, 100.516, a value lower than the plain vanilla floater. This last calculation gives us a means for pricing the embedded option. Without a cap, the bond is priced at 100.893. The difference between these two prices is the value of the cap, 0.377. It is important to note that the price of the cap is volatility dependent. Any change in the volatility would result in a different valuation for the cap. The greater the volatility, the higher the price of the option, and vice versa.

We can extend the application of the lattice to the initial pricing of securities. What if an issuer wanted to offer this bond at par? In such a case, an adjustment has to be made to the coupon. To lower the price from 100.516 to par, a lower spread over the reference rate is offered to investors. Figure 6 shows the relationship between the spread over the 1-year reference rate and the bond price. At a spread of 8.70 bps over the 1-year reference rate, the capped floater in Figure 5 will be priced at par. Again, the spread of 8.7 bps is volatility dependent.

# Callable Capped Floating-Rate Bonds

Now consider a call option on the capped floater. As was the case for a fixed-coupon bond, we must be careful to specify the appropriate rules for calling the bond on the valuation tree. It turns out that the rule is the same for floaters and fixed-coupon bonds. Any time the bond has a PV above par at a node where the bond is callable, the bond will be called. (Here we assume a par call to simplify the illustration.)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/1451d18a66c4b4b29a230345826d5917244d2f9b062c8ffe2c4f0c813a154572.jpg)
Figure 6 Spread to Index to Price Cap at Par


Before we get into the details, it is important to motivate the need for a call on a floating-rate bond. The value of a cap to the issuer increases as market rates near the cap and there is the potential for rates to exceed the cap prior to maturity. As rates decline, so does the value of the cap. The problem for the issuer in the event of low rates is the additional basis-point spread it is paying for a cap that now has little or no value. Thus, when rates decline, a call has value to the issuer because it can call and reissue at a different spread.

Suppose that the capped floater is callable at par anytime after the first year. Figure 7 provides details on the effect of the call option on valuation of the capped floater. Again, for a callable bond, when the present value exceeds par in a recursive valuation model, the bond is called. In the case of our 4-year bond, in Figure 7 the value of the bond at several lower nodes is now 100, the call price. The full effect of the call option on price is evident with today's price for the bond moving to 99.9140.

The by-product of this analysis is the value of the call option on a capped floater. We now have the fair value of the capped floater versus the callable capped floater. So the call option has a value of  $100.516 - 100.189 = 0.327$ .

How would one structure the issue so that it is priced at par? We have to offer a lower spread over the floating rate than the holder is already receiving for accepting the cap. In this case, we need to move the total spread over the 1-year floating rate to 13.37 bps. Figure 8 shows the relationship between spread and value.

# VALUING CAPS AND FLOORS

An interest rate cap is nothing more than a package or strip of options. More specifically, a cap is a strip of European options on interest rates.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/3e99f3d0914fd51e1137e9744e67ec5618f1a3138f4b8255a873db1766b2b250.jpg)
Figure 7 Valuation of a Capped Floating-Rate Bond

Thus, to value a cap, the value of each period's cap, called a caplet, is found and all the caplets are then summed.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/f291a2ee68342084d6da3d40dc0591f5d0e5907e659d3bda749de26635d13107.jpg)
Figure 8 Spread to Index to Price Callable Cap at Par

In order to value caps and floors, a modification of the lattice framework is required. The modification is necessary because of the timing of the payments for a cap and floor: Settlement for the typical cap and floor is paid in arrears. Payment in arrears means that the interest rate paid is determined at the beginning of the period, but the actual payment is made at the end of the period (that is, beginning of the next period). This modification complicates the notation and will not be made here but is explained in Fabozzi (2006).

To illustrate, we once again use the binomial tree given in Figure 1 to value a cap. Consider a  $5.2\%$  3-year cap with a notional amount of 10 million. The reference rate is the 1-year rate. The payoff for the cap is annual.

The three panels in Figure 9 show how this cap is valued by valuing the three caplets. The value for the caplet for any year, say year X, is found as follows. First, calculate the payoff in year X at each node as either:

1. Zero if the one-year rate at the node is less than or equal to  $5.2\%$ , or
2. The notional amount of 10 million times the difference between the 1-year rate at the node and 5.2\% if the 1-year rate at the node is greater than 5.2\%.

Assumptions:

Cap rate:  $5.2\%$

Notional amount: 10,000,000

Payment frequency: Annual

Panel A: The Value of the Year 1 Caplet

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/5ab604dc964723dce2a9176c57b5c09f856d86c9c9fcbb92530bb18ac6c8f6d6.jpg)

Value of Year 1 caplet = 11,058

Panel B: The Value of the Year 2 Caplet

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/0256f63506d9c29df2e0b03093f935a37610efb9501d784c3956d54850b41e26.jpg)

Value of Year 2 caplet = 66,009

Panel C: The Value of the Year 3 Caplet

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/39e4d422ffc205530cabf6686a289fc8d3c43f37cce6c36b3cc7e624869b40f8.jpg)
Figure 9 Valuation of a Three-Year  $5.2\%$  Cap (10\% Volatility Assumed)

Value of Year 3 caplet = 150,214

Summary: Value of 3-Year Cap = $11,058 + $66,009 +

$150,214 = \$  227,281$

Note on calculations: Payoff in last box of each figure is

10,000,000 × Maximum [(Rate at node - 5.2\%, 0)]

Then, the recursive valuation process is used to determine the value of the year  $X$  caplet.

For example, consider the year 3 caplet. At the top node in year 3 of Panel C of Figure 9, the 1-year rate is  $9.1987\%$ . Since the 1-year rate at this node exceeds  $5.2\%$ , the payoff in year 3 is:

$$
\$ 10,000,000 \times (0.091987 - 0.052) = \$ 399,870
$$

For node N_{HH} we look at the value for the cap at the two nodes to its right, N_{HHH} and N_{HHL}. Discounting the values at these nodes, \399,870 and \233,120, by the interest rate from the binomial tree at node N_{HH}, 7.0053\%, we arrive at a value of \295,755. That is,

$$
\begin{array}{l} \text {V a l u e} N _ {H H} = [ \$ 3 9 9, 8 7 0 / (1. 0 7 0 0 5 3) \\ + \left. \$ 233, 120 (1. 0 7 0 0 5 3) \right] / 2 \\ = \$ 2 9 5, 7 7 5 \\ \end{array}
$$

The values at nodes  $N_{HH}$  and  $N_{HL}$  are discounted at the interest rate from the binomial tree at node  $N_{H}, 5.4289\%$ , and then the value is computed. That is,

$$
\begin{array}{l} \text {V a l u e} N _ {H} = [ \$ 2 9 5, 7 7 5 / (1. 0 5 4 2 8 9) \\ + \$ 155,918 / (1.054289) ] / 2 \\ = \$ 2 1 4, 2 1 7 \\ \end{array}
$$

Finally, we get the value at the root, node  $N$ , which is the value of the year 3 caplet found by discounting the value at  $N_{H}$  and  $N_{L}$  by  $3.5\%$  (the interest rate at node  $N$ ). Doing so gives:

$$
\begin{array}{l} \text {V a l u e} N = [ \$ 2 1 4, 2 1 7 / (1. 0 3 5) \\ + \left. \$ 96,726 / (1.035) \right] / 2 \\ = \$ 150,214 \\ \end{array}
$$

Following the same procedure, the value of the year 2 caplet is  \$66,009 and the value of the year 1 caplet is\$ 11,058. The value of the cap is then the sum of the three caplets.

Thus, the value of the cap is \$227,281, found by adding $11,058, $66,009, and \$150,214. The valuation of an interest rate floor is done in the same way.


# VALUATION OF TWO MORE EXOTIC STRUCTURES

The lattice-based recursive valuation methodology is robust. To further support this claim, we address the valuation of two more exotic structures—the step-up callable note and the range floater.

# Valuing a Step-Up Callable Note

Step-up callable notes are callable instruments whose coupon rate is increased (that is, "stepped up") at designated times. When the coupon rate is increased only once over the security's life, it is said to be a single step-up callable note. A multiple step-up callable note is a step-up callable note whose coupon is increased more than one time over the life of the security. Valuation using the lattice model is similar to that for valuing a callable bond described above except that the cash flows are altered at each node to reflect the coupon characteristics of a step-up note.


Suppose that a four-year step-up callable note pays  $4.25\%$  for two years and then  $7.5\%$  for two more years. Assume that this note is callable at par at the end of year 2 and year 3. We will use the binomial tree given in Figure 1 to value this note.

Figure 10 shows the value of the note if it were not callable. The valuation procedure is the recursive valuation from Figure 2. The coupon in the box at each node reflects the step-up terms. The value is 102.082. Figure 11 shows that the value of the single step-up callable note is 100.031. The value of the embedded call option is equal to the difference in the optionless step-up note value and the step-up callable note value, 2.051.

Now we move to another structure where the coupon floats with a reference rate, but is restricted. In this next case, a range is set in which the bond pays the reference rate when the rate falls within a specified range, but outside the range no coupon is paid.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/01ee4abad884db7b5cf5b95aab89b7008fe83c5a81373724735e9ca52e47f7f7.jpg)
Figure 10 Valuing a Single Step-Up Noncallable Note with Four Years to Maturity (10\% Volatility Assumed)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/fe05cd8b8b323126ba7871c4e9ecad2f0699e99010bbee7885f0a153f4da4d83.jpg)
Figure 11 Valuing a Single Step-Up Callable Note with Four Years to Maturity, Callable in Two Years at 100 (10\% Volatility Assumed)

# Valuing a Range Note

A range note is a security that pays the reference rate only if the rate falls within a band. If the reference rate falls outside the band, whether the lower or upper boundary, no coupon is paid. Typically, the band increases over time.

To illustrate, suppose that the reference rate is, again, the 1-year rate and the note has three years to maturity. Suppose further that the band (or coupon schedule) is defined as in Table 2. Figure 12 shows the interest rate tree and the cash flows expected at the end of each year. Ei

Table 2 Coupon Schedule (Bands) for a Range Note

<table><tr><td></td><td>Year 1</td><td>Year 2</td><td>Year 3</td></tr><tr><td>Lower Limit</td><td>3.00\%</td><td>4.00\%</td><td>5.00\%</td></tr><tr><td>Upper Limit</td><td>5.00\%</td><td>6.25\%</td><td>8.00\%</td></tr></table> ther the 1-year reference rate is paid, or nothing. In the case of this 3-year note, there is only one state in which no coupon is paid. Using our recursive valuation method, we can work back through the tree to the current value, 98.963.


# VALUING AN OPTION ON A BOND

Thus far we have seen how the lattice can be used to value bonds with embedded options. The same tree can be used to value a standalone option on a bond.

To illustrate how this is done, consider a 2-year American call option on a  $6.5\%$  2-year Treasury bond with a strike price of 100.25 which will be issued two years from now. We will assume that the on-the-run Treasury yields are those represented in Figure 13. Within the binomial tree we find the value of the Treasury bond at each node. Figure 14 shows the value of our hypothetical Treasury bond (excluding coupon interest) at each node at the end of year 2.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/c3ada1ba936749bcebf449f88415e019e7ede4a7ebd173fbdaf72bf46d8a7c46.jpg)
Figure 12 Valuation of a Three-Year Range Floater


The decision rule at a node for determining the value of an option on a bond depends on whether or not the call or put option being valued is in the money. Moreover, the exercise decision is only applied at the expiration date. That is, a call option will be exercised at the option's expiration date if the bond's value at a node is greater than the strike price. In the case of a put option, the option will be exercised if the strike price at a node is greater than the bond's value (that is, if the put option is in the money).

Three values for the underlying 2-year bond are shown in Figure 14: 97.925, 100.418, and

102.534. Given these three values, the value of a call option with a strike price of 100.25 can be determined at each node. For example, if in year 2 the price of this Treasury bond is 97.925, then the value of the call option would be zero. In the other two cases, since the value at the end of year 2 is greater than the strike price, the value of the call option is the difference between the price of the bond at the node and 100.25.

Given these values, the binomial tree is used to find the present value of the call option using recursive valuation. The discount rates are the now familiar 1-year forward rates from the binomial tree. The expected value at each node for year 1 is found by discounting the call option value from year 2 using the rate at the node. Move back one more year to "Today." The value of the option is 0.6056.

The same procedure is used to value a put option on a bond.

# EXTENSIONS

We next demonstrate how to compute the option-adjusted spread, effective duration, and the convexity for a fixed income instrument with an embedded option.

# Option-Adjusted Spread

We have concerned ourselves with valuation to this point. However, financial market transactions determine the actual price for a fixed

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/d32820340b07df3636684a9c5e0c78b0986882972b3a52b3a06dc1985bc83eee.jpg)
Figure 13 Using the Arbitrage-Free Binomial Method Expiration: 2 years; Strike Price: 100.25; Current Price: 104.643; Volatility Assumption:  $10\%$

Figure 14 Demonstration That the Option-Adjusted Spread is 35 Basis Points for a  $6.5\%$  Callable Bond Selling at 102.218 (Assuming  $10\%$  Volatility)
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/d980b6027af68bf4424cbbe22c79a2f288c73bcf563c2017d48940604759b066.jpg)
* Each 1-year rate is 35 basis points greater than in Figure 1.

income instrument, not a series of calculations on an interest rate lattice. If markets are able to provide a meaningful price (usually a function of the liquidity of the market in which the instrument trades), this price can be translated into an alternative measure of relative value, the option-adjusted spread (OAS).

The OAS for a security is the fixed spread (usually measured in basis points) over the benchmark rates that equates the output from the valuation process with the actual market price of the security. For an optionless security, the calculation of OAS is a relatively simple iterative process. The process is much more analytically challenging with the added complexity of optionality. And, just as the value of the op tion is volatility dependent, the OAS for a fixed income security with embedded options or an option-like interest rate product is volatility dependent.


Recall our illustration in Figure 2 where the value of a callable bond was calculated as 102.899. Suppose that we had information from the market that the price is actually 102.218. We need the OAS that equates the value from the lattice with the market price. Since the market price is lower than the valuation, the OAS is a positive spread to the rates in the figure, rates which we assume to be benchmark rates.

The solution in this case is 35 basis points, which is incorporated into Figure 14 that shows the value of the callable bond after adding

35 basis points to each rate. The simple, binomial tree provides evidence of the complex calculation required to determine the OAS for a callable bond. In Figure 2, the bond is called at  $N_{HLL}$ . However, once the tree is shifted 35 bps in Figure 14, the PV of future cash flows at  $N_{HLL}$  falls below the call price to 99.985, so the bond is not called at this node. Hence, as the lattice structure grows in size and complexity, the need for computer analytics becomes obvious.

# Effective Duration and Effective Convexity

Duration and convexity provide a measure of the interest rate risk inherent in a fixed income security. We rely on the lattice model to calculate the effective duration and effective convexity of a bond with an embedded option and other option-like securities. The formulas for these two risk measures are given below:

$$
\text {E f f e c t i v e} = \frac {V _ {-} - V _ {+}}{2 V _ {0} (\Delta r)}
$$

$$
\mathrm {E f f e c t i v e c o n v e x i t y} = \frac {V _ {+} - V _ {-} - 2 V _ {0}}{2 V _ {0} (\Delta r) ^ {2}}
$$ where  $V_{-}$  and  $V_{+}$  are the values derived following a parallel shift in the yield curve down and up, respectively, by a fixed spread. The model adjusts for the changes in the value of the embedded call option that result from the shift in the curve in the calculation of  $V_{-}$  and  $V_{+}$ .


Note that the calculations must account for the OAS of the security. Below we provide the steps for the proper calculation of  $V_{+}$ . The calculation for  $V_{-}$  is analogous.

Step 1: Given the market price of the issue, calculate its OAS.
Step 2: Shift the on-the-run yield curve up by a small number of basis points  $(\Delta r)$ .
Step 3: Construct a binomial interest rate tree based on the new yield curve from Step 2.
Step 4: Shift the binomial interest rate tree by the OAS to obtain an "adjusted tree." That is, the calculation of the effective duration and convexity assumes a constant OAS.


Step 5: Use the adjusted tree in Step 4 to determine the value of the bond,  $\mathrm{V}_{+}$ .

We can perform this calculation for our 4-year callable bond with a coupon rate of  $6.5\%$ , callable at par selling at 102.218. We computed the OAS for this issue as 35 basis points. Figure 15 shows the adjusted tree following a shift in the yield curve up by 25 basis points, and then adding 35 basis points (the OAS) across the tree. The adjusted tree is then used to value the bond. The resulting value,  $V_{+}$  is 101.621.

To determine the value of  $V_{-}$ , the same five steps are followed except that in Step 2, the on-the-run yield curve is shifted down by the same number of basis points  $(\Delta r)$ . It can be demonstrated that for our callable bond, the value for  $V_{-}$  is 102.765.

The results are summarized below:

$$
\begin{array}{l} \Delta r = 0. 0 0 2 5 \\ V _ {+} = 1 0 1. 6 2 1 \\ V _ {-} = 1 0 2. 7 6 5 \\ V _ {0} = 1 0 2. 2 1 8 \\ \end{array}
$$

Therefore, effective duration  $= \frac{102.765 - 101.621}{2(102.218)(0.0025)} = 2.24$


Effective convexity  $=$

$$
\begin{array}{l} \frac {1 0 1 . 6 2 1 + 1 0 2 . 7 6 5 - 2 (1 0 2 . 2 1 8)}{2 (1 0 2 . 2 1 8) (0 . 0 0 2 5) ^ {2}} \\ = - 3 9. 1 3 2 1 \\ \end{array}
$$

Notice that this callable bond exhibits negative convexity.

# KEY POINTS

- The valuation of an option-free bond is straightforward. However, once there is a provision in the bond structure that grants the issuer and/or the investor an option, valuation becomes more difficult.
- The standard technology employed to value bonds with embedded options that depend

Figure 15 Determination of  $\mathrm{V}_{+}$  for Calculating Effective Duration and Convexity*
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/edf2f6de26dd32e7f87142a9afca2689b49e47ae047b72377d62dbbfa439d324.jpg)
* +25 basis point shift in on-the-run yield curve.

on future interest rates, such as callable and putable bonds, is the lattice framework.

- The initial step in the lattice approach is to generate an arbitrage-free lattice or interest rate tree from an appropriate on-the-run yield curve.
- Based on rules specified by the modeler for when an option will be exercised, a lattice of future cash flows is obtained and then valued using the interest rates in the lattice.
- The same model is used to value interest rate-sensitive derivatives such as options on bonds, interest rate caps, and interest rate caps and floors.
- Other useful analytical measures can be obtained using the lattice model. These measures include the option-adjusted spread—a measure of relative value—and effective duration and effective convexity—measures of price sensitivity to changes in interest rates.


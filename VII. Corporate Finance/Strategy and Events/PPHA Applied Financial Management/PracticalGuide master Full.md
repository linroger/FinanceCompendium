---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Practical Guide to Yield Curves, Discounting, and Derivatives
linter-yaml-title-alias: Practical Guide to Yield Curves, Discounting, and Derivatives
---

# Practical Guide to Yield Curves, Discounting, and Derivatives

Thomas S. Coleman

Draft - April 14, 2019

# Contents

I Forward Curves and Yield Curves 4  
1 Introduction - Discounting and Example 4  
2 Basic Ideas - Discounting Same Cash Flows at Same Rates 4  
3 Forward and Zero (Spot) Rates 6  
4 Mathematical Details 8

4.1 Equations for Exact Years 8  
4.2 Compounding 9  
4.3 Representing and Graphing the "Yield Curve" 10  
4.4 Details for General Bonds 14

II Risk Adjusted Discounting 15

1 Overview 15

1.1 Example: UST & FIS 15  
1.2 Issues and Framework 16

2 Simple Example - Risky Real Estate Project 17  
3 Utility and Certainty Equivalent 18

4 Adjusting for Uncertainty: Risk Adjusted Discount Rate and PV 20  
5 How do we get the Risk-Adjusted Discount Rate? 22

5.1 Example: UST & FIS 23

# III What is the Price of Risk? (Draft-Incomplete) 26

1 Risk versus Uncertainty 26  
1.1 Uncertainty - Standard Deviation 26  
2 Measuring Risk 27

# IV Swap Valuation with Dual Curves - Approximations 29

1 Summary 29  
2 Valuation Off Single Curve 30

2.1 EXAMPLE - 30-year, Single Curve 32

3 Valuation Off Dual Curve (Is/Libor) 33  
4 Risk (DV01) for Dual Swap Curve 36  
5 Difference Between Single Curve and Dual Curve Valuation 37

5.1 Examples 37

# V A Primer on Credit Default Swaps 41

1 Introduction 41  
2 Structure of a Single-Name Credit Default Swap 42  
3 Equivalence of CDS and Floating Rate Note 43  
4Equivalence of CDS and Fixed Rate Bond 46  
5 CDS as Capital Markets vs Insurance Product 47  
6 Valuation Using Credit Spreads 48

7 CDS Valuation by Martingale Modeling (Constant Hazard Rate) 49  
8 Bond Valuation by Martingale Modeling (Constant Hazard Rate) 51

8.1 Equivalence Between CDS And Fixed Coupon Bond 52

9Leverage and Counterparty ExposureThe difference between CDS and FRN 53

# Part I

# Forward Curves and Yield Curves

# 1 Introduction - Discounting and Example

Everything we do for yield curves is based on the fundamental idea of discounting cash flows at appropriate rates. We will focus on the example of a 2-year and 5-year bond, as shown in Figure 1. The top shows the cash flow diagram for a 2-year bond (or the "fixed bond" side of an interest rate swap - remember that the PV of a swap is +PV(fixed bond) - PV(floating bond)). Coupons are paid semi-annually and the discount rate is quoted semi-annually compounded. The coupon and discount rate (yield) are the same so that the present value of the bond is $100. The bottom part of the panel shows a 5-year bond (also semi-annual coupon and semi-annually compounded discount rate), with a higher coupon and a higher yield or discount rate.

Each bond's cash flows are discounted by the bond's own discount rate. But we are going to assume that these two bonds are similar identical in all respects except the size of their coupon and the maturity. Most importantly they are same risk - say for example that they are US Treasuries and so the cash flows are certain to be paid back. In this case it is not really appropriate to discount the similar cash flows (coupons during the first two years) at different rates. The cash flows from the 2-year bond and from the first two years of the 5-year bond are the same dates and the same risk and so they should be discounted at the same rate.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/343eeafd-8f92-4a5e-b38a-6e5751b5c936/08c5d5d8e30234eb5a94eb9e8f08d9077b897a020f50f2ad5f7b8b09db0b4eb9.jpg)  
Figure 1: Two and Five year bonds, inappropriately discounting at their own rate

# 2 Basic Ideas - Discounting Same Cash Flows at Same Rates

We really should discount all first and second year cash flows at the same rate. We know from the 2-year bond that the discount rate for cash flows during the first two years is  $1.162\%$ . We should use this rate for the early cash flows on the 5-year bond, discounting the back-end cash flows (those that occur years three to five) at a different rate. This is shown in Figure 2, where we are now discounting the early cash flows by  $1.162\%$  and the later cash flows by a different, as yet unknown, rate.

How do we arrive at the appropriate discount rate for years three through 5? Figure 3 shows the logic of how we do this. We know a few things:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/343eeafd-8f92-4a5e-b38a-6e5751b5c936/98c3a2629176ddb7cc0c7af399ad4e4673f7251db548b4cea5e77b6862e5fb09.jpg)  
Figure 2: Two and Five year bonds, discounting at appropriate forward rates

Cash flows for year 0-2 should be discounted at  $1.162\%$  

- The PV of the 5-year bond is 100  
- The cash flows for the first two years of the 5-year bond are 1.721 per year (1.721/2 every six months)

With this information we can calculate what the future value of the 5-year bond has to be as of year two. Figure 3 splits the 5-year bond into two parts: the first two years (year 1 & 2) and the final three years (years 3, 4, 5). The future value (as of year 2) for the 5-year bond must be $98.87222 - that is the future value that, when discounted at 1.162% with the coupon $1.721 gives a present value today of $100. But if the future value is $98.87222, then the final three years (coupon $1.721, principal repayment in year five of $100) must be discounted at a rate of 2.111% - this is the discount rate that will produce a present value (as of year 2) of $98.87222.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/343eeafd-8f92-4a5e-b38a-6e5751b5c936/fbe3e885a771f72969acbd8c16e7a92385dbddb197936875f630e9b10730b3a6.jpg)  
Figure 3: Five year bond split into two: years 0-2 and 2-5

These calculations can be easily performed on the HP 17B. First, we calculate what the future value of the 5-year bond must be as of year 2, given that the present value is $100.

<table><tr><td>Key</td><td>Display</td><td>Description</td></tr><tr><td>FIN TVM OTHER</td><td></td><td>Accesses TVM menu</td></tr><tr><td>2 P/YR END EXIT</td><td>2 …</td><td>Sets payments per year</td></tr><tr><td>4 N</td><td>N=4.0</td><td>Sets no. of payments</td></tr><tr><td>0.8605 PMT</td><td>PMT=0.8605</td><td>Sets payment (per period)</td></tr><tr><td>1.162 I/YR</td><td>I%YR = 1.162</td><td>Sets interest rate (per yr)</td></tr><tr><td>100 +/- PV</td><td>PV=-100.0</td><td>Sets PV</td></tr><tr><td>FV</td><td>FV=98.872219</td><td>Calculates FV</td></tr></table>

Table 1: HP 17B: Future Value for 5-year Bond

Then we put ourselves at year 2 and calculate what the discount rate must be for a three year bond to have that present value:

<table><tr><td>Key</td><td>Display</td><td>Description</td></tr><tr><td>98.872219 +/- PV</td><td>PV = -98.8722</td><td>Sets the PV</td></tr><tr><td>6 N</td><td>N=6.0</td><td>Sets no. of payments</td></tr><tr><td>100 FV</td><td>FV = 100</td><td>Sets principal repay</td></tr><tr><td>I%YR</td><td>I%YR=2.111</td><td>Calculates rate</td></tr></table>

Table 2: HP 17B: Forward Rate for 5-year Bond

# 3 Forward and Zero (Spot) Rates

What we did above gives the correct idea: discount cash flows at the appropriate rate. Now, however, we need to introduce some terminology.

$\mathrm{df}_{\mathrm{t}}$  Discount Factor for date  $t$ , to discount a cash flow at date  $t$  back to present value today.

$\mathrm{f_{cc}(u)}$  (Instantaneous) Forward Rate at date  $u$

$\mathbf{z}_{cc}(t)$  Zero Rate (also called Spot Rate), or the discount rate that applies for discounting back to today from a future date  $t$

$\mathrm{f_{t1 - > t2}}$  (Constant) Forward Rate between  $t_1$  to  $t_2$ , or the discount rate that applies from  $t_1$  to  $t_2$ , that is for discounting back to  $t_1$  from a more distant date  $t_2$ .

Fundamentally it is the discount factors that matter. Present Value is calculated as:

$$
P V = \sum_ {t} C F _ {t} d f _ {t} \tag {1}
$$

The relationship between  $\mathrm{df}_{\mathrm{t}}$ ,  $z_{\mathrm{t}}$ , and  $\mathrm{f}_{\mathrm{t1 - t2}}$  is pretty simple when we express the zero rate continuously compounded and when we use an instantaneous forward rate function  $\mathrm{f(u)}$ . The relationships are then:

$$
d f (t) = e x p \left(- t \cdot z _ {t}\right) = e x p \left(- \int_ {0} ^ {t} f (u) d u\right) \tag {2}
$$

$$
z _ {c c} (t) = \frac {1}{t} \int_ {0} ^ {t} f _ {c c} (u) d u = \frac {1}{t} \ln \left(\frac {1}{d f (t)}\right) \tag {3}
$$

$$
z _ {a b} (t) = \left(\frac {1}{d f (t)}\right) ^ {(1 / t)}
$$

$$
f _ {c c} (t 1 \rightarrow t 2) = \frac {1}{t 2 - t 1} \int_ {t 1} ^ {t 2} f _ {c c} (u) d u \tag {4}
$$

$$
f _ {a b} (t 1 \rightarrow t 2) = \left(\frac {d f (t 1)}{d f (t 2)}\right) ^ {(1 / (t 2 - t 1))}
$$

In our 2-year and 5-year bond example, we assumed that the forward rate between years  $t = 2.0$  and  $t = 5.0$  is constant. The forward rate from  $t = 0$  to  $t = 2$  (which is also the zero rate) is  $1.162\%_{\mathrm{Sab}}$ , and the forward rate from  $t = 2$  to  $t = 5$  it is  $2.111\%_{\mathrm{Sab}}$ . This is shown in the first part of Figure 4, with the solid line the instantaneous rate and the dotted line the zero rate. The instantaneous forward rate at any point is given by the line; for example the forward rate at  $t = 2.5$  is  $2.111\%_{\mathrm{Sab}}$  ( $2.0999\%_{\mathrm{cc}}$ ). This is also summarized in the first two rows of Table 3.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/343eeafd-8f92-4a5e-b38a-6e5751b5c936/237dcaf6a84f6742fe777e038e90f8f9c10ee2fcf1d0c8fa1bccb7b51b423ec8.jpg)  
Figure 4: Forward Rate Curve and Zero Rate (sab) for the 2-year, 5-year, and 10-year bonds

Table 3: Example Bonds and Implied Forward Rates  

<table><tr><td>Name</td><td>Price</td><td>Coupon</td><td>Matur</td><td>Yield</td><td>Fwd Period</td><td>Fwd Rate sab</td><td>Fwd Rate cc</td></tr><tr><td>2-year</td><td>100</td><td>$1.162</td><td>2yr</td><td>1.162%</td><td>0-2</td><td>1.162%</td><td>1.1586%</td></tr><tr><td>5-year</td><td>100</td><td>$1.721</td><td>5yr</td><td>1.721%</td><td>2-5</td><td>2.111%</td><td>2.0999%</td></tr><tr><td>10-year</td><td>100</td><td>$2.183</td><td>10yr</td><td>2.183%</td><td>5-10</td><td>2.703%</td><td>2.6849%</td></tr></table>

The forward rate for any finite period is given by Equation 4. Since we have assumed the forward rate is constant between 2.0 and 5.0, the forward rate for the finite period from  $t1 = 2.5$  to  $t2 = 3.5$  is simply  $2.0999\%_{\mathrm{cc}}$ :

$$
f _ {2. 5 \rightarrow 3. 5} = \frac {1}{3 . 5 - 2 . 5} \int_ {2. 5} ^ {3. 5} 0. 0 2 0 9 9 9 d u = \frac {1}{3 . 5 - 2 . 5} \cdot 0. 0 2 0 9 9 9 \cdot (3. 5 - 2. 5) = 0. 0 2 0 9 9 9
$$

The zero rate is given by Equation 3. The zero rate for any maturity out to  $t = 2.0$  is simply  $1.162\%_{\mathrm{stab}}$ . For maturity between 2.0 and 5.0 the zero rate will be an average of the forward rate from 0 to 2 and from 2 to  $t$ . The formula is straightforward to evaluate because the forward rate is constant:

$$
\begin{array}{l} z _ {t} = \frac {1}{t} \int_ {0} ^ {t} f (u) d u = \frac {1}{t} \left[ \int_ {0} ^ {2} 0. 0 1 1 5 8 6 d u + \int_ {2} ^ {t} 0. 0 2 0 9 9 9 d u \right] \\ = \frac {1}{t} [ 2 \cdot 0. 0 1 1 5 8 6 + (t - 2) \cdot 0. 0 2 0 9 9 9 ] \\ \end{array}
$$

For  $t = 3.5$ , this is  $z_{3.5} = 1.562\%$ .

We can also add in an additional 10-year bond. For this bond the cash flows in years 5.0 to 10.0 should be discounted back to  $t = 5.0$  at a  $2.703\%_{\mathrm{Sab}}$  rate, then that value plus coupons between 2.0 and 5.0 years discounted back to  $t = 2.0$  at the  $2.111\%_{\mathrm{Sab}}$  forward rate, then everything back to  $t = 0$  at the  $1.162\%_{\mathrm{Sab}}$  rate. Figure 5 shows this in a cash flow diagram for the 10-year bond with each set of cash flows discounted at the appropriate forward rate. Table 3 summarizes the three bonds and also gives the implied (calculated) forward rates shown in the table.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/343eeafd-8f92-4a5e-b38a-6e5751b5c936/0f34ac0f474ea6b7176ad0848219f799f698bb7d112406a013c8f5912ae54465.jpg)  
Figure 5: Cash Flow Diagram for 10-year bond

# 4 Mathematical Details

# 4.1 Equations for Exact Years

We worked everything above with the HP 17BII calculator and TVM menu because that was a simple way to perform the calculations. Here we will look at the equations behind TVM and the figures. We assume that instantaneous forward rates are flat for  $t = 0 - 2$ ,  $t = 2 - 5$ , and  $t = 5 - 10$ , as in Figure 4.

For Figure 1, the PV for the 2-year bond (semi-annual  $1.162 coupon) and the 5-year bond (semi-annual$ 1.721 coupon) discounted at their own yield-to-maturity will be:

$$
P V _ {2 y r} = \frac {1 . 1 6 2 / 2}{\left(1 + y _ {2} / 2\right) ^ {1}} + \frac {1 . 1 6 2 / 2}{\left(1 + y _ {2} / 2\right) ^ {2}} + \frac {1 . 1 6 2 / 2}{\left(1 + y _ {2} / 2\right) ^ {3}} + \frac {1 . 1 6 2 / 2}{\left(1 + y _ {2} / 2\right) ^ {4}} + \frac {1 0 0}{\left(1 + y _ {2} / 2\right) ^ {4}}
$$

$$
P V _ {5 y r} = \frac {1 . 7 2 1 / 2}{\left(1 + y _ {5} / 2\right) ^ {1}} + \frac {1 . 7 2 1 / 2}{\left(1 + y _ {5} / 2\right) ^ {2}} + \dots + \frac {1 . 7 2 1 / 2}{\left(1 + y _ {5} / 2\right) ^ {1 0}} + \frac {1 0 0}{\left(1 + y _ {5} / 2\right) ^ {1 0}} \tag {5}
$$

Since the PV for both bonds is $100, the solutions will be y2=1.162%sab and y5=1.721%sab.

We know, from the 2-year bond, that the appropriate discount rate for cash flows for years for  $t = 0 - 2$  is  $1.162\%_{\mathrm{stab}}$ , so that should be the forward rate  $f_{0 - > 2}$ . For the first two years (which is also the zero rate). This is shown diagrammatically in Figure 4. We should discount all cash flows for years  $t = 0 - 2$  at that rate, and specifically the cash flows for the first two years of the 5-year bond. We should do the discounting as in Figures 2 and 3, so that Equation 5 becomes:

$$
\begin{array}{l} P V _ {5 y r} = \frac {1 . 7 2 1 / 2}{\left(1 + f _ {0 \rightarrow 2} / 2\right) ^ {1}} + \dots + \frac {1 . 7 2 1 / 2}{\left(1 + f _ {0 \rightarrow 2} / 2\right) ^ {4}} \tag {6} \\ + \frac {1 . 7 2 1 / 2}{\left(1 + f _ {2 \rightarrow 5} / 2\right) ^ {5}} + \dots + \frac {1 . 7 2 1 / 2}{\left(1 + f _ {2 \rightarrow 5} / 2\right) ^ {1 0}} + \frac {1 0 0}{\left(1 + f _ {2 \rightarrow 5} / 2\right) ^ {1 0}} \\ \end{array}
$$

We know from the 2-year bond that  $y_{2} = f_{0 - > 2} = 1.162\%_{\mathrm{Sab}}$ . With  $PV_{5\mathrm{yr}} = 100$  this means Equation 6 becomes

$$
\begin{array}{l} 1 0 0 = \frac {1 . 7 2 1 / 2}{\left(1 + . 0 1 1 6 2 / 2\right) ^ {1}} + \dots + \frac {1 . 7 2 1 / 2}{\left(1 + . 0 1 1 6 2 / 2\right) ^ {4}} \tag {7} \\ + \frac {1 . 7 2 1 / 2}{\left(1 + f _ {2 \rightarrow 5} / 2\right) ^ {5}} + \dots + \frac {1 . 7 2 1 / 2}{\left(1 + f _ {2 \rightarrow 5} / 2\right) ^ {1 0}} + \frac {1 0 0}{\left(1 + f _ {2 \rightarrow 5} / 2\right) ^ {1 0}} \\ \end{array}
$$

So now our problem is simply to solve Equation 7 for  $f_{2->5}$ . Above we did it with the HP 17B (Tables 1 and 2, shown diagrammatically in Figure 3). There we calculated the forward value of the first two years (the first line of Equation 7) and then treated the remaining three years (the second line) as a 3-year bond. But we could equally do it with the solver in Excel or with a more general programming language. The solution is  $f_{2->5} = 2.111\%_{\mathrm{Sab}}$ .

The same idea applies to the 10-year bond:

$$
\begin{array}{l} P V _ {1 0 y r} = \frac {2 . 1 8 3 / 2}{\left(1 + f _ {0 \rightarrow 2} / 2\right) ^ {1}} + \dots + \frac {2 . 1 8 3 / 2}{\left(1 + f _ {0 \rightarrow 2} / 2\right) ^ {4}} \\ + \frac {2 . 1 8 3 / 2}{\left(1 + f _ {2 \rightarrow 5} / 2\right) ^ {5}} + \dots + \frac {2 . 1 8 3 / 2}{\left(1 + f _ {2 \rightarrow 5} / 2\right) ^ {1 0}} \\ + \frac {2 . 1 8 3 / 2}{\left(1 + f _ {5 \rightarrow 1 0} / 2\right) ^ {1 1}} + \dots + \frac {2 . 1 8 3 / 2}{\left(1 + f _ {5 \rightarrow 1 0} / 2\right) ^ {2 0}} + \frac {1 0 0}{\left(1 + f _ {5 \rightarrow 1 0} / 2\right) ^ {2 0}} \\ \end{array}
$$

Now we have  $f_{0->2}$  and  $f_{2->5}$ , from the 2-year and 5-year bonds, so we need to calculate  $f_{5->10}$ .

# 4.2 Compounding

# Period-Compounded

Using Equations 3 and 4 we can write the zero rate directly as a function of the discount factor:

$$
d f (t) = \exp (- t \cdot z _ {c c} (t)) \Rightarrow z _ {c c} (t) = \frac {- 1}{t} \ln [ d f (t) ]. \tag {8}
$$

where now we are write  $z_{cc}$  to emphasize that this is the continuously-compounded zero rate.

Practitioners in the financial markets never express rates continuously-compounded, almost always expressing rates at a period-compounded rate corresponding to the frequency of the bond coupon. For period-compounded rates with period  $p$  (1 for annual or "annual bond", 2 for semi or "semi-annual bond", 4 for quarterly or "quarterly bond"), the discount factor as a function of the zero rate (the analogue of Equation 8) is:

$$
d f (t) = \frac {1}{\left(1 + z _ {p} / p\right) ^ {p \cdot t}} \Rightarrow z _ {p} (t) = p \cdot \left[ \left(1 / d f (t)\right) ^ {1 / p \cdot t _ {1}} - 1 \right]. \tag {9}
$$

For forward rates we can think about the average (constant) forward rate over a period  $t_1 \to t_2$  and from Equation 4 we can get:

$$
d f (t _ {2}) = \frac {d f (t _ {1})}{(1 + f _ {p} / p) ^ {p \cdot (t _ {2} - t _ {1})}} \Rightarrow f _ {p} (t _ {1}, t _ {2}) = p \cdot \left[ \left[ \frac {d f (t _ {1})}{d f (t _ {2})} \right] ^ {1 / p \cdot (t _ {2} - t _ {1})} - 1 \right]
$$

# Rate Conversions

Equation (9) is the guide for converting between different compounded rates - say between annual bond and semi-annual bond:

$$
(1 + y _ {p 1} / p 1) ^ {p 1 \cdot t} = (1 + y _ {p 2} / p 1) ^ {p 2 \cdot t} \Rightarrow y _ {p 1} = p 1 \cdot \left[ (1 + y _ {p 2} / p 2) ^ {p 2 / p 1} - 1 \right],
$$

where I am using  $y$  to denote either the zero rate or the forward rate.

For example, to go from annual bond (ab) to semi-annual bond (sab):

$$
y _ {s a b} = 2 \cdot \left[ (1 + y _ {a b} / 1) ^ {1 / 2} - 1 \right] = 2 \cdot \left[ \sqrt {1 + y _ {a b}} - 1 \right]
$$

and for  $y_{ab} = 5.0\%$ ,  $y_{sab} = 4.939\%$ . And conversion from continuously-compounded to period-compounded is:

$$
y _ {p} = p \cdot \left[ e x p \left(y _ {c c} / p\right) - 1 \right].
$$

For  $y_{cc} = 4.8790\%$ $y_{ab} = 5.0\%$

# 4.3 Representing and Graphing the "Yield Curve"

Equations 2 and 3 give the relationship between the discount factor curve  $df(t)$ , zero curve  $z(t)$ , and forward curve  $f(t)$ . Figure 4 shows a graph of the zero curve and the forward curve for the particular example summarized in Table 3, where we have:

- Assumed that the forward curve  $f(t)$  is piece-wise constant with breaks at 2, 5, and 10 years. (We could have made some other assumption and then our calculations would be different. Piece-wise constant is particularly simple and easy for calculation with the HP-17)  
- Calculated the forward rates  $f_{0 \to 2}$ ,  $f_{2 \to 5}$ ,  $f_{5 \to 10}$  necessary so that we correctly price the 2-year, 5-year, and 10-year bonds given in Table 3. (All the bonds happen to be priced at 100. If

the prices were different than 100 then the forward rates  $f_{0 \to 2}$ ,  $f_{2 \to 5}$ ,  $f_{5 \to 10}$  would be different values than shown.)

We can use any one of the discount, zero, or forward functions as our representation of "the yield curve" because with Equations 2 and 3 we can convert from any one to the other two. Nonetheless there will be some uses and purposes for which one representation will be better and some for which another will be better:

- The forward curve  $f(t)$  is almost always the best fundamental representation for fitting the forward curve from market instruments, and for storing and graphing "the yield curve". I am not sure how to best explain why but it has something to do with the forward curve being the derivative of the zero and discount curves (from Equations 2 and 3):

$$
f (t) = - \frac {d \ln {(d f (t))}}{d t}
$$

$$
f (t) = z (t) + t \cdot \frac {d z (t)}{d t} .
$$

Minor changes in the slope of the discount or zero curve translate to big changes in the forward curve (because of the derivative). This means that with the forward curve we can more easily capture subtle in shape than we could with the discount or zero curve.

- Discount factors and thus the discount curve matters for any instruments that we see in the market, any prices we observe: Equation 1 is the fundamental equation for calculating present values. In other words, although we may use the forward curve for our fundamental representation (for fitting, storing, graphing), whenever we use "the curve" for pricing instruments we go through the discount curve.

As an example, consider calculating the par bond rate for 4 years for the example from Table 3 (the yield-to-maturity or coupon on a four year bond with price 100).

# Various Different Forms of "Yield" to Graph

When we have some fundamental curve  $f(t)$ , say the forward curve in Table 3, we want to display it, as in Figure 4. There are many different choices available for graphing. The first and most natural would be to graph the forward curve and the zero curve ( $f(t)$  and  $z(t)$ ), which is exactly what we have done in Figure 4. But even here we can choose to graph the forward and zero rates continuously-compounded, annually compounded, semi-annually compounded, etc. Practitioners in the financial markets never use continuously-compounded rates so we would generally want to make a choice for (and explicitly state) the compounding frequency.

In fact, the zero rates and forward rates are not the only things we can graph - we can graph the yield for various types of bonds. Zero rates we have considered as somehow "fundamental" but we could also consider the zero rate as the yield-to-maturity on one specific kind of bond: a zero-coupon

bond. $^2$  A zero-coupon bond is a bond with no coupon: a single payment at maturity  $t$ . Equations 8 and 9 are in fact the formula for the yield-to-maturity on such a bond. Graphing the zero rates is in fact graphing the yield-to-maturity for zero-coupon bonds by maturity.

There are other bonds that we may be interested in graphing, and one that is particularly interesting is the yield-to-maturity on par bonds. A "par bond" is one trading at par or $100. A par bond will have yield = coupon rate. For a bond that pays coupon c per year, with frequency p, and on a coupon date, the expression for the PV of the par bond is:

$$
1 0 0 = \frac {c}{p} \cdot \sum d f (c o u p o n d a t e s) + 1 0 0 \cdot d f (m a t u r i t y d a t e) = c \cdot P V (\S 1 a n n u i t y) + P V (\S 1 0 0 @ m a t u r i t y).
$$

This means the par bond yield (which will be the coupon) is:

$$
y _ {p b} = c = \frac {1 0 0 - P V (\S 1 0 0 @ m a t u r i t y)}{P V (\S 1 a n n u i t y)}
$$

I think that off a coupon date this will still hold:

$$
1 0 0 + A I (\$ 1) \cdot c = c \cdot P V (\$ 1 a n n u i t y) + P V (\$ 1 0 0 @ m a t u r i t y)
$$

and

$$
y = c = \frac {1 0 0 - P V (\S 1 0 0 @ m a t u r i t y)}{P V (\S 1 a n n u i t y) - A I (\S 1)}. \tag {10}
$$

One key issue is that we want to calculate the cash flow dates, amounts, and accrued interest according to the rules for the particular type of bond we are considering. For US Treasury bonds this means payment of half the coupon every six months on anniversary dates (with no adjustment of amount for payments scheduled on weekends) and using actual / actual days for accrued interest - which gives half-years which are of unequal length and thus accrued interest that differs for the first versus second half year of a payment period. $^3$  For US Corporates this means payment of half the coupon every six months on anniversary dates but using 30/360 day-count for accrued interest - giving (generally) half-years of equal length. For US swaps this means payment of every six months but with amount adjusted by length of the period (adjusted for payments scheduled on weekends).

For the yield curve python code there are functions that we can use to calculate  $PV(\$100@maturity)$  and  $PV(\$1 \, annuity)$  with these rules embedded. For US Treasuries the function pvBondFromCurve, called with argument parms and no sparsearray:

- $PV(\$100@maturity)$ : call with parms with coupon = 0 and final payment = 100. From the return use element 1 (2nd element) which is the PV without adjusting for accrued interest (which will be zero anyway)<sup>4</sup>  
- $PV(\$1 annuity) - AI(\$1)$ : call with parms with coupon = 1 and final payment = 0. From the return use element 0 (1st element) which is the PV less accrued interest

# Par Bond Example

Let us calculate the four-year par bond yield for the example summarized in Table 3. This involves calculating the  $PV(\$1 \, annuity)$  in two steps: first going back from years 4 to 2 at rate  $2.111\%$ , then going back from years 2 to 0 at rate  $1.162\%$ . The calculations for the HP 17 calculator are shown in Table 5. Then we calculate  $PV(\$100@maturity)$ , again in two steps as summarized in Table 7.

<table><tr><td>Key</td><td>Display</td><td>Description</td></tr><tr><td>FIN TVM OTHER</td><td></td><td>Accesses TVM menu</td></tr><tr><td>2 P/YR END EXIT</td><td>2 …</td><td>Sets payments per year</td></tr><tr><td>4 N</td><td>N=4.0</td><td>Sets no of payments (2yrs from 2 to 4)</td></tr><tr><td>0.5 PMT</td><td>PMT=0.5</td><td>Sets payment (per period): $0.5 = $1/yr</td></tr><tr><td>2.111 I/%YR</td><td>I/%YR = 2.111</td><td>Forward rate (per yr) yrs 2-5</td></tr><tr><td>0 FV</td><td>FV=0.0</td><td>Sets FV = 0</td></tr><tr><td>PV</td><td>PV=-1.948319</td><td>$1 annuity for 2-4yrs @ 2.111% as of yr2</td></tr><tr><td>+/- FV</td><td>FV=1.948319</td><td>Sets the Annuity value into FV</td></tr><tr><td>1.162 I/%YR</td><td>I/%YR = 1.162</td><td>Rate for yrs 0-2yrs</td></tr><tr><td>PV</td><td>PV=-3.874974</td><td>PV of $1 annuity for 0-2yrs @ 1.162% + $1 Annuity 2-4yrs @ 2.111%</td></tr></table>

Table 5: HP 17B: Four-year $1 Annuity  

<table><tr><td>Key</td><td>Display</td><td>Description</td></tr><tr><td>4 N</td><td>N=4.0</td><td>Sets no of payments (2yrs from 2 to 4)</td></tr><tr><td>0 PMT</td><td>PMT=0.0</td><td>Sets payment (coupon) to zero</td></tr><tr><td>2.111 I%YR</td><td>I%YR = 2.111</td><td>Forward rate (per yr) yrs 2-5</td></tr><tr><td>100 FV</td><td>FV=100.0</td><td>Sets principl (final payment) = 100</td></tr><tr><td>PV</td><td>PV=-95.887099</td><td>$100 principl @ 2.111% as of yr2</td></tr><tr><td>+/- FV</td><td>FV=95.887099</td><td>Sets the value as of yr 2 into FV</td></tr><tr><td>1.162 I%YR</td><td>I%YR = 1.162</td><td>Rate for yrs 0-2yrs</td></tr><tr><td>PV</td><td>PV=-93.690678</td><td>PV of $100 principal</td></tr></table>

Table 7: HP 17B: PV of $100 in Four Years

Using these values:

$$
P V (\S 1 a n n u i t y) = 3. 8 7 4 9 7 4
$$

$$
P V (\$ 1 0 0 @ m a t u r i t y) = 9 3. 6 9 0 7 6 8 ^ {\prime}
$$

we get

$$
y _ {p b} = c = \frac {100 - 93.690678}{3.874974} = 1.628 \%
$$

This is the yield (and coupon) for a 4-year bond trading at 100. It is above the 2-year par-bond yield  $(1.162\%)$  and below the 5-year par-bond yield  $(1.721\%)$ .

The par bond yield (par bond coupon) can be calculated for any maturity date using Equation 10, so that one can graph the par bond yield across the whole maturity range (from zero to 10 years in our example).

# 4.4 Details for General Bonds

The example with three bonds was simple because we assumed the bonds had exact year maturities (2, 5, and 10 years) with coupons on exact half-years, and so we could calculate everything using the TVM menu for the HP 17B. In practice things are usually not so simple: bonds are not exact numbers of years in maturity and coupon dates are never exact half-years. The general idea, however, will always work:

1. We make some assumption about the shape of the forward curve (or the zero curve). In our example we assumed that the forward curve (the instantaneous forward rates) is constant between break points: constant for maturity 0-2, 2-5, 5-10. Note, however, that we do not yet know what the particular values of the forward rates are. We leave those values of the constant forward rates (the rates between  $t = 0.0$  and  $t = 2.0$ , between  $t = 2.0$  and  $t = 5.0$ , between  $t = 5.0$  and  $t = 10.0$ ) undetermined for now. (This is a piece-wise constant forward curve, but we could make alternative assumptions about the forward (or the zero) curve.)  
2. We use the discount factor formula Equation 2 to calculate the discount factor for each of the dates that we require. In our example above we required the discount factors for  $t = 0.5, 1.0, 1.5, \ldots, 9.5, 10.0$  
3. We calculate the present value of our bonds (or whatever other instruments we have) using the PV formula, Equation 1.  
4. We have not yet calculated the actual values of the forward rate curve. We do that by adjusting the forward curve values until we price back to get the right PV or market price. In our example above this was simple for the 2-year bond: we simply calculate the yield for the bond. Then for the 5-year bond, we adjust the  $2- > 5$  year forward rate until we price back the 5-year bond (using the 0-2 year forward rate we already calculated). The mechanics of this is summarized in Figure 3.

More details about how to do this are given in Coleman [1998], with more in the following papers: Coleman [2011, 2015]

# Part II

# Risk Adjusted Discounting

# 1 Overview

Up to this point we have been treating cash flows as if they are known for certain. For most securities or investment projects this is not the case; most cash flows are simply promised or estimated or expected and not known or certain. For US Treasuries it makes sense to assume that cash flows are certain, and we can think of the bonds discussed in section I as Treasuries. In this case all the discounting, forward rates, zero rates, and so on apply to known and certain cash flows. But what about when cash flows are uncertain? We usually think that people are risk averse so they prefer a certain cash flow rather than a set of uncertain cash flows. The value of those uncertain cash flows should be less than the value of certain cash flow.

# 1.1 Example: UST & FIS

To see the problem with valuing uncertain cash flows, consider two bonds as of 31 December 2015:

- UST:  $2.25\%$  coupon, 15-nov-25  $\mathrm{P} = 99.84375$ , yield  $= 2.268\% \mathrm{stab}$  
FIS:  $5\%$  coupon, 15-oct-25  $\mathrm{P} = 103.626$  yield  $= 4.536\% \mathrm{Sab}$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/343eeafd-8f92-4a5e-b38a-6e5751b5c936/f3a73382f7060f854d0839cc765d7ad7403d97fd725e05c3ffe844f0cd64807c.jpg)  
Figure 6: UST and FIS bond CFs Match

These two bonds have similar maturity dates and for now let us work as if the dates match exactly. These bonds present a fundamental puzzle: why are the same cash flows discounted at such different rates. The answer is obvious, of course: the UST cash flows are certain and known which the FIS is a corporate bond where the  $5\%$  coupon is promised but is uncertain. FIS may make the promise payments but there is some probability they will not pay in full and the coupon may be less than  $5\%$  and the principal may not be repaid in full.

But this raises a fundamental question for valuation. The UST is not a problem since we know how to discount certain or known future cash flows. Valuation for the FIS bond is truly problematic. The yield calculation above treats the  $5\%$  coupon as if they were known but this is obviously false, and we do not have a theory for how to value these promised but uncertain cash flows.

# 1.2 Issues and Framework

This section lays out a framework for thinking about discounting uncertain cash flows. There are a few issues we need to understand better and some characteristics we would like for a practical method of discounting uncertain cash flows:

- Issues to understand - Theory
- What do we mean about mean about "uncertain cash flows"? (Answer: Cash flow distribution - graph of amount versus probability)  
- How can we think about and represent those cash flows? (Answer: Modify cash flow diagrams)  
- Why can't we just use discounting as we have for certain (known) cash flows? (Answer: Averaging CFs simply does not work - Expected utility and concavity.)  
- What is uncertainty versus risk? (Answer: Uncertainty is the distribution, risk is the cost or price of that uncertainty - the Certainty Equivalent.)  
- How do we adjust for risk? (Answer: Adjust cash flow distribution until the expected value of the adjusted CFs equals the CE.)
- Practical method - Desired characteristics
- Something that works just like discounting, so we can use all the PV and NPV ideas we have worked on

It turns out that there are two methods we can use to adjust the cash flow distribution. The first is to adjust the size of the cash flows themselves, but to do it in a way that looks a lot like discounting:

$$
C F _ {a d j} = \frac {C F _ {o r i g}}{1 + r p}
$$

By doing this we are able to discount expected cash flows with exactly the same tools and techniques we use for known (certain) cash flows, but using a risk-adjusted discount rate. It looks like we are treating certain and uncertain cash flows the same but in fact there are deep and fundamental differences. Most of this section is focused on explaining those differences and discussing how we get the risk-adjusted discount rate.

The second method is to adjust the probabilities of the distribution, and then discount the full distribution. We will touch on this approach towards the end, but defer most discussion until the section on options where this risk-neutral valuation comes into its own.

The final question that arises is how do we calculate the risk-adjusted discount rate (the price of risk)? This question we cover in the next section, but the short answer is that we will use market prices to back out the size of the adjustment - essentially using the market to do our risk adjustment for us.

This section may seem to offer a different approach from Brealey et al. [2013], chapters 7, 8, 9, but in fact it is just an alternative way to view the same problem. In working with uncertain cash flows I

always like to think about the distribution of cash flows, the kind of picture shown in Figure 7 below. We may work with the average or expected value (and Brealey et al. [2013] almost always use the expected cash flow rather than the distribution) but underlying the expectation is the distribution of multiple unknown and uncertain cash flows. Indeed, we will see when we turn to options that we have to work with the full distribution of cash flows.

# 2 Simple Example - Risky Real Estate Project

To make things concrete, consider the example of a real estate investment project that is discussed by Brealey, Myers, Allen (Brealey et al. [2013] p. 20 and p. 232). By investing today you can build a suburban office block that will be ready in one year. We won't worry for now how much you need to invest - that is necessary for determining the net present value and whether the project is in fact positive or negative value (whether you should undertake the project) but is not important for understanding the present value of the building itself.

We are told that the expected value of the building in one year is \(800k. In fact, the cash flow one year from now is uncertain. For this simple example we are going to assume that the value next year may be lower \)711.41k or higher (\(888.59k) than expected. We might think of a picture like Figure 7 to describe the cash flows. The horizontal axis represents the value of the project, which may be either high or low. The vertical axis represents the probability. This is the distribution of cash flows, and this distribution is central to thinking about uncertainty.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/343eeafd-8f92-4a5e-b38a-6e5751b5c936/bf6978d4cf48a7e1afe21dd21abd878768b570c36e7a9122e268a0ecdc0eaa2a.jpg)  
Figure 7: Distribution of office building cash flows in one year: possibly low, possibly high

For our simple example we assume that there are only two possibilities: the project goes badly and it is worth $711.41k or the project goes well it it is worth $888.59k. There is an equal probability (50%) that it will go badly or go well, so it averages out to $800k. The distribution in Figure 7 completely describes the possible outcomes.

A project with only two outcomes may not be wholly realistic, and the actual distribution of outcomes may look more like the right panel, of Figure 8 with many possible outcomes from low to high. Outcomes around the average are most likely but the project may turn out to have a low value or a high value. But for the moment we will work with the simple distribution with two possibilities shown in the left panel.

We have a few key additional pieces of information. First, the discount rate for certain cash

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/343eeafd-8f92-4a5e-b38a-6e5751b5c936/5fb0170fca21fe335dad42a8dca4a4c0ca5b96679f79d6387bde5ef3d83e5681.jpg)  
Figure 8: Distribution of office building cash flows in one year: possibly low, possibly high

flows is  $7 \%$  . Second, the certain value today – the cash today that someone will give you, is  $\$ 714,286$ . With this we could discount between present and future value if we knew the future certain CF. But we know that the future certain CF would have to be  $\$ 764.29$ k to give a PV of  $\$ 714.286$ k today – see the left panel of Figure 9.

But what about the actual real estate investment, where we do not have a known or fixed cash flow but rather the distribution of two uncertain cash flows? We might draw this as in the right panel of Figure 9. And the fact is that (so far) we really have no way to even think about this problem. We cannot simply discount the distribution of uncertain cash flows. Brealey, Myers, and Allen talk about discounting expected cash flows but we have to think much more deeply about the problem before we can do that.

Thinking a little more about the right panel of Figure 9, there are two things needed to move from future (uncertain) cash flows to today's (certain) PV:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/343eeafd-8f92-4a5e-b38a-6e5751b5c936/cd7a5bb94bbb5c3ed0e11c2a1fad0489e91bd9d45fc0cff088534fd2f5c46539.jpg)  
Figure 9: Discounting: Certain CFs (left) versus Uncertain CFs (left)

1. Transform future cash flows into present cash flows. We know how to do this: discounting to calculate PV. This is the left panel of Figure 9.  
2. Transform the distribution of uncertain cash flows into a single known value today. This is the right panel of Figure 9 and we do not yet have any idea how to do this.

We know how to do (1) so we have to focus on (2). The question is "how to we convert the distribution of uncertain cash flows to an equivalent certain or known value?" We will call the equivalent certain value the Certainty Equivalent and we will use utility theory to arrive at it.

# 3 Utility and Certainty Equivalent

Let us go back to basics and think about utility functions and the value of the distribution of uncertain cash flows. By doing so we will develop a method of adjusting cash flows that will mean we can discount the expected or average cash flow as if it was a known or certain cash flows, but using a risk-adjusted discount rate. The risk adjustment can be conveniently built into the discount rate. We still have to figure out the appropriate risk-adjusted discount rate (RADR) but that is for the next section. This section focuses on the ideas and tools that allow us to use expected cash flows for discounting and PV.

Referring back to Figures 7 and 9 we want to consider how we might value the cash flow distribution, the two outcomes ( $711k and$ 889k). To simplify issues we will first think about the uncertain cash

flows only, without any discounting. So we put ourselves at year 1 and ask: "What is the value of the distribution of two uncertain cash flows,  $711.41k and$ 888.69k, each with probability one-half?"

We would like a method to get the value, the single (certain) value that is equivalent to the two cash flows of $711 and $889 because we can then discount that value. We know that single value is $764k because that is the future value of today's value (Figure 9). But we want a method to go from the distribution of uncertain cash flows to the Certainty Equivalent – the single certain value with the same value as the distribution of uncertain cash flows.

It would be very convenient if we could average - take the average of $711.41k and $888.59k - averaging is always our natural inclination and usually a good start. But averaging gives the wrong answer, $800k instead of $764k.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/343eeafd-8f92-4a5e-b38a-6e5751b5c936/883c6e3b922d6df494743f6e3bc69a32fe2e53c5b946c9701fafe5755beebe9b.jpg)  
Figure 10: Expected cash flow, Expected Utility, and Certainty Equivalent

To understand why this is the wrong answer we have to think about utility and Figure 10. Utility tells us how much we value the cash flows. To make everything concrete I will use a specific utility function, what is called a Constant Relative Risk Aversion utility function:

$$
u (C) = \frac {C ^ {1 - \gamma}}{1 - \gamma} \tag {11}
$$

with  $\gamma$ , the coefficient of risk aversion, being 8 (so this utility function exhibits risk aversion). None of what follows, however, depends on the specific form of the utility function. What matters is that we care about utility and that the utility function shows risk aversion (decreasing marginal utility of cash flows, curvature as shown in Figure 10). The important point is that the utility decreases more when the cash flow is below average ( $711.41 or$ 88.59 below average) than the utility increases when the cash flow is above average.

We cannot average cash flows but we can average utilities. One central tenet of standard economic theory is that people care about expected utility: the utility of the distribution of uncertain cash

flows is the average of the utilities. This is shown in Figure 10 and in Table 8: For the low cash flow ($711.41) the utility is  $-15.5 \times 10^{-22}$ , while for the high cash flow it is  $-3.3 \times 10^{-22}$ ; the average or expected utility is  $-9.4 \times 10^{-22}$ . Now we work the other way: We start with the expected utility and back out the cash flow that would give us that utility. In our example that cash flow is $764.28k – the single, certain, cash flow that has the same value as the two uncertain cash flows. We call this the Certainty Equivalent (CE).

Conceptually, we can think of this process as follows

CF Distribution  $\rightarrow$  Expected Utility  $\rightarrow$  Certainty Equivalent.

Starting with the cash flow distribution we can go through the utility function, calculate the expected utility, and back out the certainty equivalent value. This is the essence of converting a distribution of uncertain cash flows into a certain or known value. But so far we have no practical way of applying the idea.

Table 8: Cash Flows and Utility  

<table><tr><td></td><td>Low</td><td>Average</td><td>High</td></tr><tr><td>Probability</td><td>1/2</td><td>-</td><td>1/2</td></tr><tr><td>CF Dist&#x27;n</td><td>$711.411</td><td></td><td>$888.59</td></tr><tr><td>Expect CF</td><td></td><td>$800</td><td></td></tr><tr><td>Utility</td><td>-15.490E-22</td><td></td><td>-3.266E-22</td></tr><tr><td>Expected Utility</td><td></td><td>-9.378E-22</td><td></td></tr><tr><td>Utility of Exp CF</td><td></td><td>-6.812E-22</td><td></td></tr></table>

# 4 Adjusting for Uncertainty: Risk Adjusted Discount Rate and PV

The process of going from cash flow distribution through the utility function to arrive at the single equivalent cash flow is fine in theory but not very useful in practice. We would really like to average cash flows but we simply cannot: it gives us the wrong answer ( $800k instead of$ 764.28). There is a neat trick however. If we know the Certainty Equivalent let us adjust the distribution of uncertain cash flows to force the right answer, so that when we average those adjusted cash flows we get the Certainty Equivalent. The essence of the trick is that we make the adjustment through a multiplicative risk premium:

$$
C F _ {a d j} = \frac {C F _ {o r i g}}{1 + r p}. \tag {13}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/343eeafd-8f92-4a5e-b38a-6e5751b5c936/de17588ec98cffb9ac917ed961ec01bec6d8c086581a2bf13a8decad1fda869b.jpg)  
Figure 11: Expected cash flow, Expected Utility, and Certainty Equivalent

The idea is shown in Figure 11. When we have the Certainty Equivalent from the utility function (or from any other source - say a market or traded price) then we can apply a "risk premium" to adjust the original cash flows. We choose the risk premium so that the adjusted cash flows now average to the correct value - the certainty equivalent:

$$
C E = p \cdot C F _ {a d j} ^ {l o} + (1 - p) \cdot C F _ {a d j} ^ {h i} \tag {14}
$$

$$
7 6 4. 2 8 = \frac {1}{2} \cdot 6 7 9. 6 6 + \frac {1}{2} \cdot 8 4 8. 9 3.
$$

This looks pretty arbitrary but it turns out to be very general and works wonderfully well. Let's continue on for a moment and expand the ideas in Equations 13 and 14:

$$
\begin{array}{l} C E = p \cdot \frac {C F _ {\text {o r i g}} ^ {l o}}{1 + r p} + (1 - p) \cdot \frac {C F _ {\text {o r i g}} ^ {h i}}{1 + r p} \\ = \frac {1}{1 + r p} \left[ p \cdot C F _ {\text {o r i g}} ^ {l o} + (1 - p) \cdot C F _ {\text {o r i g}} ^ {h i} \right] \tag {15} \\ = \frac {C F _ {\sigma r i g} ^ {a v g}}{1 + r p} \\ \end{array}
$$

Now we have something that looks surprisingly like discounting. In fact, we can now discount back to today because the Certainty Equivalent is a known and certain cash flows so we can discount with the risk-free rate, just as we have been doing for any known cash flow:

$$
P V = \frac {C E}{1 + r f} = \frac {C F _ {\text {o r i g}} ^ {\text {a v g}}}{(1 + r f) (1 + r p)}. \tag {16}
$$

We have essentially solved our original problem - we can PV the distribution of uncertain cash flows from the the right panel of Figure 9 by discounting the expected cash flow (one number) at

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/343eeafd-8f92-4a5e-b38a-6e5751b5c936/1860542a7068b0fc14a20e76d04f76eac295aae5767536c44919ce34b0982d96.jpg)

the risk-adjusted discount rate. This is shown in Figure 12. The left panel shows the distribution of cash flows, the right panel shows the risk-adjusted discounting of the expected cash flows.

This now looks exactly like discounting a known cash flow except that we discount at the Risk-Adjusted Discount Rate  $(\mathrm{RADR} = (1 + r_{adj}) = (1 + rf)(1 + rp)$  instead of the risk-free rate.

There are, however, important questions we still need to address. Two important questions are:

1. How do we get the risk premium,  $rp$  or the RADR  $r_{adj}$ ?  
2. Can we apply the RADR to other cash flows?

The second we can answer quickly: risk-adjusted discounting using the RADR, is very general. Because the RADR is a proportional adjustment we can apply it to large or small cash flows. Because it compounds up over multiple years, risk-adjusted discounting applies over multiple years. This is the primary tool we will use for valuation.

The first question we cannot answer quickly. We will spend the rest of this section and the next talking about uncertainty, risk, and how to calculate the risk-adjusted discount rate.

# 5 How do we get the Risk-Adjusted Discount Rate?

We use utility theory to understand the ideas of how and why risk-adjusted discounting works. But in practice we never use a utility function to actually calculate the RADR. We always use the market, in one way or another, to tell us the risk adjustment.

Consider again the simple real-estate project:

- Invest today, project pays out in one year.  
- Cash flow in one year may be low ( $711.41) or high ($ 888.59) with expected (average) cash flow $800.  
- Value today is  $\$ {714.29}$  and risk-free rate is 7%.

This actually tells us everything we need to calculate the RADR. First, let us look again at the left panel of Figure 9 and Equation 16, which shows how we can get the future Certainty Equivalent value from today's market value using discounting at the risk-free rate:

$$
P V = \frac {C E}{1 + r f}
$$

$$
\Rightarrow C E = (1 + r f) \cdot P V = 1. 0 7 * 7 1 4. 2 9 = 7 6 4. 2 9
$$

Next, we can use the relation between the Certainty Equivalent and the expected cash flow (Equation 14) to get the risk premium:

$$
\begin{array}{l} C E = \frac {C F _ {o r i g} ^ {a v g}}{1 + r p} \\ \Rightarrow 1 + r p = \frac {C F _ {\text {o r i g}} ^ {\text {a v g}}}{C E} = \frac {8 0 0}{7 6 4 . 2 9} = 1. 0 4 6 7. \\ \end{array}
$$

Generally we would do this in one step, calculate the RADR directly and not calculate the certainty equivalent itself:

$$
P V = \frac {C F _ {o r i g} ^ {a v g}}{1 + r _ {a d j}} = \frac {C F _ {o r i g} ^ {a v g}}{(1 + r f) (1 + r p)}.
$$

In doing this, however, we are always implicitly using the certainty equivalent and Equation 15.

# 5.1 Example: UST & FIS

To understand how we calculate and use the risk-adjusted discount rate or risk premium in practice, consider again our UST and FIS bonds as of 31 December 2015:

- UST:  $2.25\%$  coupon, 15-nov-25  $\mathrm{P} = 99.84375$ , yield  $= 2.268\% \mathrm{stab}$  
FIS:  $5\%$  coupon, 15-oct-25  $\mathrm{P} = 103.626$  yield  $= 4.536\% \mathrm{Sab}$

Remember the process we are going to use:

- Start with cash flow distribution  
- Use expected utility to get the CE (single, certainty equivalent CF)  
- Adjust the original CFs until the average (or promised) CF from the distribution equals the CE  
Write the adjustment as a ratio  $1 / (1 + \mathrm{rp})$  
- Apply the adjustment and discounting together to end at risk-adjusted discounting (16)

This process sounds complicated but in fact it is all embedded in the yield-to-maturity calculation, and thinking about this calculation shows us why calculating the yield for the FIS bond makes sense. Look back at Figure 6 where we have drawn the cash flows for the two bonds. These figures are in fact quite different even though they are commonly drawn to look the same. For the UST the arrows represent single known cash flows and we are in fact just discounting. The resulting yield is the risk-free rate,  $(1 + rf)$ .

The FIS "cash flows" are not in fact actual cash flows but only the maximum promised cash and we need to adjust to get the certainty equivalent – the equivalent to the known cash flows shown in the US Treasury diagram. But the market has in fact done that adjustment for us – the price today incorporates both the effect of risk-free discounting (as for the UST) and adjusting the promised

CFs to the CE. We write the CF adjustment as  $(1 + rp)$  and so the combined discounting and CF adjustment is  $(1 + rf)\cdot (1 + rp)$ . But we can combine this into a "risk-adjusted yield" for the FIS bond:  $(1 + y_{FIS}) = (1 + rf)\cdot (1 + rp)$ . In other words we can use our regular yield formulae and calculations to give the combined risk-free and cash flow (risk premium) adjustment.

This now gives meaning to the yield calculation we performed originally but also provides the market risk premium or risk-adjustment:

- UST:  $2.25\%$  coupon, 15-nov-25 P=99.84375, yield = 2.268% sab or 1.02268 = (1 + rf)  
- FIS:  $5\%$  coupon, 15-oct-25 P=103.626, yield = 4.536% sab 1.04536 = (1 + rf)  $\cdot$  (1 + rp)  $\Rightarrow$  rp = 2.218%

Retrieving the market risk premium from the market price is so simple that we often do it without recognizing the multiple steps that are embedded in the yield calculation: evaluating the cash flow distribution, using expected utility to transform to a certainty equivalent single cash flow, and finally discounting back to today. One final issue is that we often calculate the risk premium as a simple spread:  $rp \approx y - rf$ . For our UST / FIS example this gives  $2.018\% = 4.536 - 2.518$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/343eeafd-8f92-4a5e-b38a-6e5751b5c936/66022af68564681feda856feab2e4fec6ba1d8120355885bc037e81d01651af7.jpg)  
Figure 13: FIS Risk Premium

# Expected Utility And Certainty Equivalent

For our simple distribution (Figure 7) the average of the cash flows (the expected cash flow) is  $800k. Most people, however, would rather have$ 800k for sure (probability 1) rather than a 50/50 chance of high or low - most people are risk averse. Whatever the attitude towards risk, we can use utility theory and represent the value in expected utility terms:

$$
E U = U \left(C _ {l}, C _ {h}\right) = p \cdot u \left(C _ {l}\right) + (1 - p) \cdot u \left(C _ {h}\right) \tag {12}
$$

where

$p$  （20  $=$  probability of low outcome

\(C_{l}\) = low cash flow (\(711.41k in our example)

$C_{h}$  = high cash flow (\$888.59k in our example)

$u(C)$ $=$  utility of cash flow  $C$

The fundamental issue is that utility is usually not linear  $(u(Y) \neq Y)$  and so the expected utility does not equal the utility of expected income:  $EU \neq u(p \cdot Y_l + (1 - p) \cdot Y_h)$ . If utility were linear then we would have risk neutrality and we could just take expectations.

We can, however, calculate what cash flow would correspond to the expected utility EU (-9.4E-22 for our sample utility function). This is the Certainty Equivalent, the single cash flow that is valued the same (in utility terms) as the distribution of the two cash flows,  $\\(711.41$  and $888.59 \). We just need to solve

$$
U \left(C _ {C E}\right) = E U \left(C _ {l}, C _ {h}\right) = U \left(C _ {l}, C _ {h}\right) = p \cdot u (C _ {l}) + (1 - p) \cdot u (C _ {h}).
$$

In our case (with our sample CRRA utility function,  $\gamma = 8$ ), this is:

$$
- 9. 3 7 8 E - 2 2 = \frac {C _ {C E} ^ {1 - \gamma}}{1 - \gamma}
$$

and the Certainty Equivalent turns out to be $764.28. This is the certain cash flow with the same value as the distribution of cash flows. More generally, the certainty equivalent is the solution to:

$$
u (C E) = p \cdot u \left(C _ {l}\right) + (1 - p) \cdot u \left(C _ {h}\right)
$$

It is no accident that the certainty equivalent from our utility example is the same as the market value, the certain value determined by the market. In a sense, this has to be the case: the market value is the cash value adjusted for the risk of the distribution of risky cash flows.

# Part III

# What is the Price of Risk? (Draft – Incomplete)

# 1 Risk versus Uncertainty

We need to distinguish uncertainty, the variability of cash flows, from risk, the cost or value of that uncertainty. Think back to the real estate example, shown in Figure ?? and reproduced below as Figure 14. The left panel shows the variability in cash flows (the distribution):  $50\%$  chance low ( $\$711.41\mathrm{k}$ ) and  $50\%$  chance high ( $\$888.59$ ). But the distribution cannot tell us the cost or value of that uncertainty. One measure of the risk or the cost or value is the market value today of  $\$714.29\mathrm{k}$  or the Certainty Equivalent of  $\$764.29\mathrm{k}$  in one year that someone would pay for those uncertain cash flows. The Certainty Equivalent is worth  $\$35.71\mathrm{k}$  less than the average or expected value( $35.71 = 800 - 764.29)$ . This gives us a precise measure of the risk.

Another, generally more useful measure, is the risk adjusted discount rate or risk premium. In the example above this was  $rp = 4.67\%$  and  $r_{adj} = 12\%$ . This gives a numerical measure of the value (cost) of the uncertainty as a rate per year. The difference in present value from discounting at the risk-free versus the risk adjusted rate translates this into a dollar value for a set of expected cash flows.

It is absolutely critical that we keep in mind the distinction between the uncertainty of cash flows, which we can see in the distribution and measure with the standard deviation, and the price or risk of cash flows, which is a market measure of the value or cost of the uncertainty.

# 1.1 Uncertainty - Standard Deviation

Let us take a short digression on uncertainty, which we will usually summarize through the standard deviation. Figure 14 shows in the left panel the distribution for the simple real estate project. The right panel shows a more realistic distribution of cash flows: some low, some high, centered around an average. The distribution measures the uncertainty and it is the complete description of the uncertainty.

Generally, however, we will not use the full distribution and it is more convenient to summarize through measures such as the mean (average or expected value) and the standard deviation. The mean measures the "average" or central tendency - how large "on average" are the cash flows. The standard deviation measures the spread of the distribution.

The standard deviation (or  $\sigma$  or volatility) is the average of squared deviations from the mean. Say we have the distribution or density shown in Figure 14. The value of the cash flow is  $C$ . This is the horizontal axis, it is a random variable, and can take values ranging from low  $C$  to high  $C$ . The

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/343eeafd-8f92-4a5e-b38a-6e5751b5c936/d910281c062b27828201a03ef4311836c6a7b99d306bb4c6ee60aac916858a8b.jpg)  
Figure 14: Distribution of office building cash flows in one year

curve shown in Figure 14 is the density, written as  $\mathrm{g}(C)\mathrm{d}C$ , and gives the probability that  $C$  will be between  $C$  and  $C + \mathrm{d}C$ . The volatility (standard deviation) is:

$$
S t d D e v = \sigma = \sqrt {\int \left(C - \bar {C}\right) ^ {2} g (C) d C}, M e a n = \bar {C} = \int C g (C) d C
$$

If instead of the continuous distribution or density shown in Figure 14 we have a set of discrete data, with cash flows  $C_i$ , then the volatility is:

$$
S t d D e v = \sigma = \sqrt {\frac {1}{n - 1} \sum_ {i = 1 , n} \left(C _ {i} - \bar {C}\right) ^ {2}}, M e a n = \bar {C} = \frac {1}{n} \sum_ {i = 1, n} C _ {i}
$$

The volatility is effectively an average of deviations from the mean. The greater the dispersion around the mean, the larger the volatility will be. For our simple real estate example (Figure 14) the mean is  $800k, the standard deviation is$ 88.59k.

Standard deviation is not the only way, and sometimes not the best way, to describe the spread of the distribution. Statisticians, traders, risk managers have substantial debates about the strengths and failings of standard deviation. We will ignore all those discussions, because the important point for now is that we have some measure of the spread or dispersion; the exact one we use generally does not matter. We will use the standard deviation (volatility) for now.

# 2 Measuring Risk

Risk is the value or cost of uncertainty, and in section II we saw how the risk adjusted discount rate and the risk premium embeds the cost of uncertainty. For our simple real estate example the risk premium or cost of uncertainty was  $rp = r_{adj} - rf = 12 - 7 = 5\%$ . For the FIS bond the risk premium was was  $rp = r_{adj} - rf = 4.54 - 2.52 = 2.02\%$ .<sup>6</sup>

Most situations, however, will not be so straightforward. Take two simple examples. First, what would be the risk adjusted discount rate for the real estate example above when we do not have

today's market price? We know the expected future cash flow (\(800k) but we need to find some way to calculate or estimate or guess the appropriate risk premium to apply to those uncertain cash flows.

As a second example, consider FIS stock (instead of the bond). We know the market price today but we don't know the future cash flows that the "market" is using to arrive at today's price. A share of common stock gives you a right to a proportionate share of earnings, but those earnings will be quite uncertain. We do know the price today and we know that the market is adjusting for risk by discounting future uncertain or expected cash flows back at a risk adjusted rate, but since we don't know those expected cash flows we cannot back out the risk adjusted rate (and risk premium).

So our task now is to figure out reasonable and practical ways to calculate the risk premium and risk adjusted discount rate. To do so we have to answer some of these questions:

- How do we measure uncertainty or variability? As discussed above, usually with the standard deviation.  
- What exactly is risk? As we have learned, it is the market cost of uncertainty, embedded in the risk premium and risk adjusted discount rate.  
- How do we measure risk when we cannot back out the risk adjusted rate? That is our next immediate problem, and we will turn to history of the stock market for the answer.  
- Do we care about uncertainty for individual securities? As we shall see below, the answer is no: we only care how securities contribute to portfolio uncertainty or variability  
- And how should risk be priced? As we shall see below, we will generally use the Capital Asset Pricing Model

# Part IV

# Swap Valuation with Dual Curves – Approximations

# 1 Summary

It is often useful to treat a swap as equivalent to a bond or set of bonds. Such an equivalence provides intuition and insight into how a swap behaves while also producing easy-to-use approximations for valuation and risk (DV01). To summarize:

- For single curve (libor) valuation, it is well-known that, ignoring the risk and cost of default, a swap to receive fixed is equivalent to a combination of long a fixed coupon bond and short a floating bond (see for example Hull [1993] chapter 5):
- $\mathbf{PV}$ : approximated by yield formula for fixed coupon bond, coupon = F, yield  $S_{\text{stab}}$  (Equation 17).  
- $DV01$ : using fixed-coupon bond, approximated by shifting yield  $S_{\text{stab}}$  for fixed coupon bond (Equation 18)
- For dual curve (libor / Is) valuations we can use the same idea, but with the coupon and yield both adjusted down by the libor-OIS basis spread  $B_{\text{stab}}$ :
- $\mathbf{PV}$ : approximated by yield formula for fixed coupon bond with coupon  $F^{*} = F - B_{\text{stab}}$ , yield  $S^{*}_{\text{stab}} = S_{\text{stab}} - B_{\text{stab}}$  (Equation 23)  
- Three DV01s:

* $DV01_{both}$ : for shifting both curves together by 1bp, approximated by shifting yield  $S^{*}_{\text{stab}}$  for fixed coupon bond  $F^{*}$  (Equation 24)  
* DV01<sub>libor</sub>: for shifting the libor (projection) curve only, approximated by the PV of a $1 annuity discounted at yield S<sup>*</sup>_{\text{stab}} (Equation 25)  
* $DV01_{OIS}$ : for shifting the Is (discount) curve only, approximated by shifting yield  $S^{*}_{sab}$  for an annuity with coupon  $(F - S_{sab})$  (Equation 26).

- For comparing single versus dual curve valuation, the difference in PV is approximated by comparing an annuity with coupon  $(F - S_{\text{stab}})$  discounted at  $S_{\text{stab}}$  versus the same annuity discounted at  $S^{*}_{\text{stab}}$ : In other words for single-curve valuation we apply Equation (19) with libor discounting  $(S)$  while for dual-curve we use the same equation but with Is discounting  $(S^{*})$ . This implies that valuation for at-market swaps will be virtually the same under the two methodologies (since  $F - S_{\text{stab}} = 0$  for an at-market swap).

# Definitions:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/343eeafd-8f92-4a5e-b38a-6e5751b5c936/4ef81381599570d45774de02a6d8aac52c90bdc14f27a768310012d69ab4d003.jpg)  
Figure 15: Overview: Single versus Dual Curve Valuation

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/343eeafd-8f92-4a5e-b38a-6e5751b5c936/68fea1191ceba523ed59526f1563d2b88b49c83b61603d21b1428a4f90e7e95c.jpg)

$\pmb{S}$  = at-market libor swap rate

$\pmb{F}$  = stated swap coupon

$B_{\text{stab}} = \text{OIS}/\text{libor basis spread, converted to sab rate (equation 21 below)}$

$\boldsymbol{S}^{*}_{\mathbf{sab}} = S_{\mathbf{sab}} - B_{\mathbf{sab}} = \text{at-market OIS swap rate, the libor rate adjusted by OIS/libor spread (equation 21)}$

$\pmb{F}^{*} = F - B_{sab} =$  stated swap coupon adjusted by Is/libor spread

$\pmb{F} - \pmb{S}^{*}_{sab} =$  spread between stated swap coupon and at-market libor rate

# 2 Valuation Off Single Curve

Before considering dual curves we will review the valuation and risk of a swap with a single curve (same projection and discount curves). Valuation is simple using the trick of adding 100 to the end for the fixed and floating sides.

Figure 16 shows diagrammatically a swap to Receive  $5 \%$ fixed for 4yrs annually (annual fixed and floating). The floating side cash flows are equivalent to $100 today because the projected cash flows (libor) are discounted at the same (libor) rate. So the PV of the floating side is $100. The benefit of this approach is that we now have an equivalence between the swap and a pair of bonds (long a fixed coupon bond and short a floating coupon bond which is worth $100).

We could use this equivalence to value the swap, valuing the fixed bond off the curve and then netting out the \(100 today for the floating bond. Indeed, early swap-valuation systems used this equivalence. In modern valuation systems, however, the floating cash flows are projected using the curve, and then both the fixed and projected floating cash flows discounted back. This allows considerably more flexibility in applying spreads and other details. For a plain-vanilla swap, however, it will give the same answer.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/343eeafd-8f92-4a5e-b38a-6e5751b5c936/cea83b0c3734404e662f4897a5fff338ada694582b28fcb8668c37c28e9164e9.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/343eeafd-8f92-4a5e-b38a-6e5751b5c936/613be9bc02e9af0e4618ddbcb7537380cab98507e296ac460a8955f69d392452.jpg)  
Figure 16: Equivalence of Interest Rate Swap to Fixed Coupon Bond

Where this equivalence proves truly valuable is in understanding how the swap behaves, for approximate (back-of-the-envelope) valuation, and risk or DV01 calculations. If we know the current at-market swap rate then we can value a swap with arbitrary coupon by pricing the fixed bond at a yield equal to the at-market swap rate:

$$
\begin{array}{l} P V (s w a p t o r e c i v e F f i x e d, p a y l i b o r f l o a t i n g, d i s c o u n t e d a t l i b o r) \\ = P V \left(\text {b o n d}, \text {c o u p o n} = F, \text {d i s c o u n t e d a t y i e l d} S _ {\text {s a b}}\right) - 1 0 0 \tag {17} \\ \end{array}
$$

We can use Equation (17) to give an approximate valuation for the swap – approximate because we are assuming a flat yield curve (using the at-market swap rate  $S_{\text{stab}}$  as the bond yield-to-maturity) but absolutely correct in the fundamental ideas. (For a swap just before the first floating payment is set, the floating bond is just $100 today – the equivalence is particularly simple. Once a floating payment is set the floating bond becomes a short-dated (say one-quarter) floating bond. This still tells us the valuation and risk for the swap.)

Even more importantly, we can use this equivalence to obtain the risk or DV01 of the swap:

$$
\begin{array}{l} D V 0 1 _ {s i n g l e} = D V 0 1 (l i b o r s h i f t s) \\ \approx D V 0 1 (F - \text {c o u p o n b o n d}, \text {y i e l d} = S _ {\text {s a b}}, S _ {\text {s a b}} \text {s h i f t s}) \tag {18} \\ \end{array}
$$

There is an alternative valuation equivalence that treats the swap as the PV of an annuity equal

to the actual coupon minus the at-market swap coupon. This idea is shown in Figure 17. Here we leave the original swap as-is but add in an at-market swap in the opposite direction. The at-market swap has PV zero so does not change the valuation, but the floating side payments on the original and new swap exactly offset so there are no floating payments. We are left with an annuity with fixed payments equal to the original coupon less the at-market coupon. Thus we have an alternative valuation formula:

$$
\begin{array}{l} P V (s w a p t o r e c i v e F f i x e d, p a y l i b o r f l o a t i n g, d i s c o u n t e d a t l i b o r) \\ = P V \left(\text {a n n u i t y}, \text {c o u p o n} = F - S, \text {d i s c o u n t e d a t y i e l d} S _ {\text {s a b}}\right) \tag {19} \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/343eeafd-8f92-4a5e-b38a-6e5751b5c936/285b62aad35466a31dd3bf9f3ed39156b52737abf8b797e98ba5880648dea20b.jpg)  
Figure 17: Equivalence of Interest Rate Swap to Annuity

This gives the same answer as Equation(17) but is generally less useful for understanding how the swap behaves. When the market moves and the at-market swap rate  $S$  changes, we can use the equivalence (17) to get the DV01 (16) because only the discount rate  $S$  changes - the fixed cash flows are all unchanged. In Equation (19), however, both the discount rate and the cash flows change and it is less clear how the swap will change in value.

# 2.1 EXAMPLE - 30-year, Single Curve

Consider a 30 year fixed swap, going from 28-jan-15 to 30-jan-45. I am using the Bloomberg curves as of 23-jan-15, with the important rates being:

- Bloomberg Curves (23 for libor,)

$$
- 3 0 \mathrm {y r} \text {a t m s a b s w a p r a t e} = S _ {s a b} = 2. 2 9 7 7 5
$$

- 1-day forward-starting swap:

$$
- \mathrm {A T M} \quad \text {c o u p o n} = S _ {s a b} = 2. 2 9 6 3 \mathrm {s a b}
$$

I evaluated both an atm swap (coupon 2.2963) and an off-market swap (coupon 5.0) using Equation (17):

$$
\begin{array}{l} P V (s w a p t o r e c e i v e 5. 0 f i x e d, p a y l i b o r f l o a t i n g, d i s c o u n t e d a t l i b o r) \\ = P V (3 0 - y r b o n d, c o u p o n = 5. 0, d i s c o u n t e d a t y i e l d S _ {s a b} = 2. 2 9 6 3) - 1 0 0 \\ = 1 5 8. 3 8 7 - 1 0 0 = 5 8. 3 8 7 \\ \end{array}
$$

and the DV01 using Equation (18)

$$
D V 0 \approx D V 0 1 (3 0 - y r 5. 0 - c o u p o n b o n d, y i e l d = S = 2. 2 9 6 3, S s h i f t s) = 2 9. 4 2
$$

We can verify that the alternative, Equation (19), gives the same valuation:

$$
\begin{array}{l} P V (s w a p t o r e c e i v e 5. 0 f i x e d, p a y l i b o r f l o a t i n g, d i s c o u n t e d a t l i b o r) \\ = P V (a n n u i t y, c o o p o n = 5 - 2. 2 9 6 3 = 2. 7 0 3 7, d i s c o u n t e d a t y i e l d S _ {s a b} = 2. 2 9 6 3) \\ = 5 8. 3 8 7 \\ \end{array}
$$

<table><tr><td>Coup=2.29632</td><td>Bloom</td><td>Approx</td></tr><tr><td>S</td><td>2.2963</td><td>2.2963</td></tr><tr><td>PV</td><td>0.00</td><td>0.00</td></tr><tr><td>DV01</td><td>21.98</td><td>21.60</td></tr></table>

<table><tr><td>Coup=5.00</td><td>Bloom</td><td>Approx</td></tr><tr><td>S</td><td>2.2963</td><td>2.2963</td></tr><tr><td>PV</td><td>59.41</td><td>58.39</td></tr><tr><td>DV01</td><td>30.06</td><td>29.42</td></tr></table>

Table 9: Bloomberg and Approximate Valuation for 30-year Swaps - Single Curve

# 3 Valuation Off Dual Curve (Is/Libor)

For dual curve valuation the curve for setting floating side payments (libor) is different from the curve for discounting cash flows (Is). This means we cannot collapse the floating payments back to $100 today. But we can use a variant of this trick by introducing a fed funds / libor basis swap.

Figure 18 left panel shows the original swap payments - receive fixed coupon and pay floating libor payments. Let us introduce a fed funds / libor basis swap (shown in the upper right panel) that pays libor floating and receives fed funds floating plus a spread. The fed funds payments are determined from daily resets of fed funds, but paid quarterly. There is a spread on the fed funds side - usually positive since fed funds is below libor. For a standard basis swap the spread is quoted on a quarterly, Actual / 360 basis.

The basis swap is the top set of cash flows on the right panel of Figure 18. To offset the fed funds payments embedded in the basis swap we can put in fed funds floating payments against the fixed

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/343eeafd-8f92-4a5e-b38a-6e5751b5c936/723e2608089d0dfa43279ce7772d055e85e338b9aa1baad5efb750111b113206.jpg)  
Figure 18: Original Swap and Introducing Basis Swap

payments, and subtract the basis swap spread from the fixed payments (remembering to convert the spread from quarterly A/360 to semi 30/360 basis). This is the bottom set of cash flows on the right of Figure 18. We have converted the original swap on the left of Figure 18 into two swaps on the right of Figure 18: a basis swap plus an Is swap (fixed payments versus floating fed funds) on the right of Figure 18.

Now, consider the basis swap. It is PV zero so for valuation purposes we can disregard it. For any changes in curves (libor or Is) the spread will change so that the basis swap remains at PV zero. In Figure 19 we have removed the basis swap, leaving only the fixed versus fed funds payments. Now we can use the trick of adding offsetting  $100 final payments, shown in the left panel of Figure 19. Because the floating payments are set from and discounted by the OIS curve, the floating payments will once again discount back to$ 100, as shown on the right of Figure 19.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/343eeafd-8f92-4a5e-b38a-6e5751b5c936/14bcd849a6076c1036a553d39daf9998ed18f960696f3c47802123e3c8fc4626.jpg)  
Figure 19: Swap as Is Bond with Spread

So we are left again with the original swap (left of Figure 18) being equivalent to a bond (right of Figure 19). Now, however, the "fixed" side is the original coupon minus the basis swap spread, and

the bond is discounted off the Is curve. In summary, this equivalence is:

$$
\begin{array}{l} PV(sw a p t o r e c e i v e 5 \% f i x e d, p a y l i b o r f l o a t i n g, d i s c u n t e d a t O I S) \\ = P V (b o n d, c o u p o n = (5 \% - s p r e a d), d i s c o u n t e d a t y i e l d O I S) - 100 \\ \end{array}
$$

We need to calculate the new coupon (5%-spread, embedding the fed funds / libor basis swap). From the market we may start with either the libor-FF basis swap  $(B_{qmm})$  or the Is swap rate  $(S^{*}_{amm}$  usually quoted at annual money-market). We want  $B_{sab}$ , the spread quoted at semi-bond, and  $S^{*}_{sab}$ , the Is swap rate expressed on a semi-annual bond basis.

Let us assume that we have a quote for the libor-FF basis swap spread expressed at money-market  $(B_{qmm})$  and we will go through the steps to convert to semi-bond. First we use the spread to calculate an implied Fed Funds rate (the FF side on the basis swap is daily reset and summed, not compounded, so it is the same as a quarterly money or A/360 basis):

$$
r _ {f f} = 4 \cdot \frac {3 6 0}{3 6 5} \left(\sqrt {1 + \frac {S _ {s a b}}{2 0 0}} - 1\right) - B _ {q m m} / 1 0 0 0 0
$$

Next we express the FF rate as an annual Is swap rate (we compound the daily FF up to annual because the floating side on an Is swap is reset daily and compounded, and then convert this annual coupon to an annual money market because that is how Is swaps are quoted):

$$
S _ {a m m} ^ {*} = \frac {3 6 0}{3 6 5} \cdot \left[ \left(1 + \frac {r _ {f f}}{3 6 0}\right) ^ {3 6 5} - 1 \right]
$$

Finally, what we really want is the Is swap rate expressed at an sab rate. We take the Is annual rate  $(S_{amm}^{*}$ , either calculated from the spread  $B_{qmm}$  or from market quotes) and convert it to a semi-annual bond basis:

$$
S _ {s a b} ^ {*} = 2 0 0 \cdot \left[ \sqrt {1 + S _ {a m m} ^ {*} \cdot 3 6 5 / 3 6 0} - 1 \right] \tag {20}
$$

The expression in terms of the spread  $B_{qmm}$  is:

$$
\begin{array}{l} S _ {s a b} ^ {*} = 2 0 0 \cdot \left[ \sqrt {\left(1 + \frac {r _ {f f}}{3 6 0}\right) ^ {3 6 5}} - 1 \right] \tag {21} \\ = 2 0 0 \cdot \left[ \sqrt {\left(1 + \left[ 4 \cdot \frac {3 6 0}{3 6 5} \left(\sqrt {1 + \frac {S _ {s a b}}{2 0 0}} - 1\right) - B _ {q m m} / 1 0 0 0 0 \right] / 3 6 0\right) ^ {3 6 5} - 1} \right] \\ \end{array}
$$

The basis spread expressed on a semi-annual basis is:

$$
B _ {s a b} = 1 0 0 \cdot \left(S _ {s a b} - S _ {s a b} ^ {*}\right) \tag {22}
$$

For cclaity of notation here are the symbols:

$$
S _ {s a b} = \text {s w a p p a r c o u p o n r a t e (s e m i - a n n u a l b o n d r a t e)}
$$

$$
S ^ {*} _ {a m m} = \text {O I S}
$$

/libor basis

$S^{*}_{\mathbf{stab}} = S_{\mathbf{stab}} - B_{\mathbf{stab}} =$  swap rate adjusted for fed funds / libor basis (Is swap rate quoted at semi-annual bond, Equation (20) or (21))

$\pmb{B}_{qmm} =$  basis spread for fed fund / libor, at quarterly money market rate (A/360)

$B_{\text{stab}} = \text{basis spread, converted to semi-annual bond rate (A/A or 30/360), Equation (22)}}$

We can use the equivalence for approximate valuation, assuming a flat curve:

$$
\begin{array}{l} P V (s w a p t o r e c e i v e F f i x e d, p a y l i b o r f l o a t i n g, d i s c o u n t e d a t O I S) \\ = P V \left(\text {b o n d}, \text {c o u p o n} = F ^ {*} = \left(F - B _ {\text {s a b}}\right), \text {d i s c o u n t e d a t y i e l d} S _ {\text {s a b}} ^ {*}\right) - 1 0 0 \tag {23} \\ \end{array}
$$

# 4 Risk (DV01) for Dual Swap Curve

We can use the equivalence between the swap and a bond to get (approximate) risk or DV01 for the swap. For single curve valuation we had Equation (18) for the DV01 by assuming a flat curve or yield-to-maturity. For dual-curve valuation we can use the valuation equivalence (23), but now we have DV01 with respect to the libor curve and the Is curve. There are three DV01s we are interested in:

# DV01both

Both curves move in parallel, to give an overall  $\mathrm{DV01}_{\text{both}}$ :

$$
\begin{array}{l} D V 0 1 _ {\text {b o t h}} = D V 0 1 (\text {l i b o r} \& O I S \text {s h i f t}) \tag {24} \\ \approx D V 0 1 [ \text {b o n d}, \text {c o u p o n} = (F - B _ {s a b}), \text {y i e l d} = S ^ {*}; S ^ {*} \text {s h i f t s} ] \\ \end{array}
$$

This incorporates the idea that, when both libor and Is shift, the basis swap spread  $B_{qmm}$  and  $B_{\mathrm{stab}}$  does not change, so that the coupon  $(F - B_{\mathrm{stab}})$  is fixed.

# DV01libor

Only libor shifts, the Is curve stays fixed. Examining the valuation approximation 23 we see that when the libor curve shifts with no change in the Is curve it is only the basis spread  $B_{\text{stab}}$  that shifts, one-for-one with the libor curve. There is no change in the discounting curve. This means DV01<sub>libor</sub> will be the present value of an annuity, discounted at the original Is rate:

(6) DV01libor = DV01-libor only shifts = PV($1 Annuity discounted at S*)

$$
\begin{array}{l} D V 0 1 _ {l i b o r} = D V 0 1 (l i b o r o n l y s h i f t) \tag {25} \\ = P V (\S 1 A n n u i t y d i s c o u n t e d a t S ^ {*}) \\ \end{array}
$$

# DV01OIS

Only the Is curve shifts, no change in libor. For this the valuation equivalence between the swap and a bond is less useful - we want to use the annuity valuation equivalence Equation (19) discussed above under single curve valuation. Here the cash flow is the same as the single curve case but the discounting is at the Is rate rather than the libor (single-curve) rate:

$$
\begin{array}{l} P V (s w a p t o r e c e i v e F f i x e d, p a y l i b o r f l o a t i n g, d i s c o u n t e d a t O I S) \\ = P V \left(\text {a n n u i t y}, \text {c o o p o n} = F - S, \text {d i s c o u n t e d a t y i e l d} S _ {s a b} ^ {*}\right) \\ \end{array}
$$

This equivalence is not useful for getting DV01 when the libor curve changes (DV01 both or DV01  $_{libor}$ ) because when the libor curve shifts both the coupon ( $S$ ) and the discount rate ( $S$  or  $S^{*}$ ) shift. But for DV01  $_{OIS}$  only  $S^{*}$  shifts, with no change in  $S$ . So here,

$$
D V 0 1 _ {O I S} \approx D V 0 1 (a n n u i t y = (F - S), \text {y i e l d} = S ^ {*} S ^ {*} \text {s h i f t s}) \tag {26}
$$

# 5 Difference Between Single Curve and Dual Curve Valuation

To understand the difference in single curve versus dual curve valuation we can use the annuity version of the valuation equivalence (Equation 19). For single curve valuation:

$$
\begin{array}{l} P V (s w a p t o r e c e i v e F f i x e d, p a y l i b o r f l o a t i n g, d i s c o u n t e d a t l i b o r) \\ = P V \left(\text {a n n u i t y}, \text {c o o p o n} = F - S, \text {d i s c o u n t e d a t y i e l d} S _ {\text {s a b}}\right) \\ \end{array}
$$

For dual curve valuation:

$$
\begin{array}{l} P V (s w a p t o r e c e i v e F f i x e d, p a y l i b o r f l o a t i n g, d i s c o u n t e d a t O I S) \\ = P V \left(\text {a n n u i t y}, \text {c o o p o n} = F - S, \text {d i s c o u n t e d a t y i e l d} S _ {s a b} ^ {*}\right) \\ \end{array}
$$

In other words, it is the same cash flow (the annuity  $F - S$ ) but discounted at the labor market rate  $S_{\text{lab}}$  for single curve versus at the Is at-market rate  $S_{\text{stab}}^{*}$ . This immediately tells us that for at-market swaps (PV zero and annuity zero) there will be no difference in valuation. For a swap with positive PV the Is valuation will be higher (more positive, discounting a positive annuity at a lower rate) while for a swap with negative PV the Is valuation will be lower (more negative, discounting a negative annuity at a lower rate).

# 5.1 Examples

# 5-year

Consider a 5 year fixed swap, going from 28-jan-15 to 28-jan-20. I am using the Bloomberg curves as of 23-jan-15, with the important rates being:

Bloomberg Curves (23 for libor, 42 for Is)

- 5yr atm sab swap rate  $= \mathrm{S}_{\mathrm{Sab}} = 1.4725$  
- 5yr Is amm rate  $= 1.248\mathrm{ammm} = = > S^{*}_{sab} = 1.2614$  &  $B_{sab} = 21.1\mathrm{bp}$

1-day forward-starting swap:

- ATM coupon  $= S_{\text{stab}} = 1.47366$  
- Quoted  $B_{qmm} = 20.91\mathrm{bp}$  (USBG5)  $= = > S^{*}_{sab} = 1.2609 \& B_{sab} = 21.3\mathrm{bp}$  from the formula 22 - note that this is different by 0.2bp from the spread calculated using spot-starting and the full curve.

I evaluated both an atm swap (coupon 1.47366) and an off-market swap (coupon 3.0) using Equation (23):

$$
\begin{array}{l} P V (s w a p t o r e c i e v e 3. 0 f i x e d, p a y l i b o r f l o a t i n g, d i s c o u n t e d a t O I S) \\ = P V (5 y r \text {b o n d}, \text {c o u p o n} = 2. 7 8 7 = (3 - 0. 2 1 2 7), \text {d i s c o u n t e d a t y i e l d} S _ {s a b} ^ {*} = 1. 2 6 0 9) - 1 0 0 \\ = 1 0 7. 3 7 4 - 1 0 0 = 7. 3 7 4 \\ \end{array}
$$

and the DV01s from Equations (24), (25), (26)

$$
\begin{array}{l} D V 0 1 _ {\text {b o t h}} \approx D V 0 1 (5 y r 2. 7 8 7 - c o u p o n b o n d, y i e l d S ^ {*} = 1. 2 6 0 9, S ^ {*} \text {s h i f t s}) \\ = 5. 0 3 1 \\ \end{array}
$$

$$
\begin{array}{l} D V 0 1 _ {l i b o r} = P V (5 y r \$ 1 A n n u i t y d i s c o u n t e d a t S ^ {*} = 1. 2 6 0 9, n o s h i f t) \\ = 4. 8 3 1 \\ \end{array}
$$

$$
\begin{array}{l} D V 0 1 _ {O I S} \approx D V 0 1 (5 y r a n n u i t y = 3 - 1. 4 3 7 6 6, y i e l d = S ^ {*} = 1. 2 6 0 9, S ^ {*} s h i f t s) \\ = 0. 2 0 0 \\ \end{array}
$$

<table><tr><td>Coup=1.47366</td><td>Bloom</td><td>Approx</td></tr><tr><td>S</td><td>1.47366</td><td>1.47366</td></tr><tr><td>Bsab</td><td></td><td>21.27</td></tr><tr><td>S*</td><td></td><td>1.2609</td></tr><tr><td>Coup-Bsab</td><td></td><td>1.26096</td></tr><tr><td>PV dual curve</td><td>0.000</td><td>0.000</td></tr><tr><td>DV01both</td><td>4.872</td><td>4.831</td></tr><tr><td>DV01libor</td><td>4.872</td><td>4.831</td></tr><tr><td>DV01OIS</td><td>0.000</td><td>0.000</td></tr></table>

<table><tr><td>Coup=3.00</td><td>Bloom</td><td>Approx</td></tr><tr><td>S</td><td>1.47366</td><td>1.47366</td></tr><tr><td>Bsab</td><td></td><td>21.27</td></tr><tr><td>S*</td><td></td><td>1.2609</td></tr><tr><td>Coup-Bsab</td><td></td><td>1.26096</td></tr><tr><td>PV dual curve</td><td>7.436</td><td>7.374</td></tr><tr><td>DV01both</td><td>5.076</td><td>5.031</td></tr><tr><td>DV01libor</td><td>4.872</td><td>4.831</td></tr><tr><td>DV01OIS</td><td>0.204</td><td>0.200</td></tr></table>

Table 10: Bloomberg and Approximate Valuation for 5-year Swaps - Dual Curve

# 30-year

Consider a 30 year fixed swap, going from 28-jan-15 to 30-jan-45. I am using the Bloomberg curves as of 23-jan-15, with the important rates being:

Bloomberg Curves (23 for libor, 42 for Is)

- 30yr atm sab swap rate  $= S_{\text{stab}} = 2.29775$  
- 30yr Is amm rate = 2.02252amm == >  $S^{*}_{sab} = 2.0402$  &  $B_{sab} = 25.755\mathrm{bp}$

1-day forward-starting swap:

- ATM coupon  $= S_{\text{stab}} = 2.29632$  
- Quoted  $B_{qmm} = 25.85\mathrm{bp}$  (USBG30)  $= = > S^{*}_{sab} = 2.0328 \& B_{sab} = 26.35\mathrm{bp}$  from Equations (21) and (22) - note that this is different from the 25.8bp calculated from the Bloomberg inputs. This is primarily because (for 7 years and beyond) Bloomberg gets the input Is rates by taking the atm swap rate  $S_{sab}$  and adding a "spread" calculated from  $B_{qmm} =$  (USBG30). This "spread" incorporates both the conversion of the quarterly basis payment to an annual payment and the difference between the quoting basis for sab swap rate versus the amm Is rate. However, Bloomberg's formula is wrong.  
- I will use  $B_{\text{stab}} = 25.8 \mathrm{bp} \& S^{*}_{\text{stab}} = 2.29632 - 0.25755 = 2.03877$

I evaluated both an atm swap (coupon 2.29632) and an off-market swap (coupon 5.0) using Equation (23):

$$
\begin{array}{l} P V (s w a p t o r e c e i v e 5. 0 f i x e d, p a y l i b o r f l o a t i n g, d i s c o u n t e d a t O I S) \\ = P V (3 0 y r \text {b o n d}, \text {c o u p o n} = 4. 7 4 2 4 5 = (5 - 0. 2 5 7 5 5, \text {d i s c o u n t e d a t y i e l d} S _ {s a b} ^ {*} = 2. 0 3 8 7 7) - 1 0 0 \\ = 1 6 0. 4 5 2 - 1 0 0 = 6 0. 4 5 \\ \end{array}
$$

and the DV01s from Equations (24), (25), (26)

$$
\begin{array}{l} D V 0 1 _ {\text {b o t h}} \approx D V 0 1 (3 0 y r 4. 7 2 4 5 - c o u p o n b o n d, y i e l d S ^ {*} = 2. 0 3 8 7 7, S ^ {*} \text {s h i f t s}) \\ = 3 0. 5 8 \\ \end{array}
$$

$$
\begin{array}{l} D V 0 1 _ {l i b o r} = P V (5 y r \$ 1 A n n u i t y d i s c o u n t e d a t S ^ {*} = 2. 0 3 8 7 7, n o s h i f t) \\ = 2 2. 3 6 \\ \end{array}
$$

$$
\begin{array}{l} D V 0 1 _ {O I S} \approx D V 0 1 (3 0 y r a n n u i t y = 5 - 2. 2 6 3 2, y i e l d = S ^ {*} = 2. 0 3 8 7 7, S ^ {*} s h i f t s) \\ = 8. 2 2 \\ \end{array}
$$

Difference in valuation for single versus dual curves is due to the difference in discount rates for the annuity valuation formula (Equation 19):

$$
\begin{array}{l} P V (a n n u i t y, c o o p o n = F - S, d i s c o u n t e d a t y i e l d S _ {s a b}) \\ = P V \left(\text {a n n u i t y} = 2. 0 3 7, \text {d i s c o u n t e d a t y i e l d} S _ {s a b} = 2. 2 9 6 3 2\right) \\ = 5 8. 3 2 \\ \end{array}
$$

$$
\begin{array}{l} P V (a n n u i t y, c o u p o n = F - S, d i s c o u n t e d a t y i e l d S _ {s a b} ^ {*}) \\ = P V \left(\text {a n n u i t y} = 2. 7 0 3 7, \text {d i s c o u n t e d a t y i e l d} S _ {\text {s a b}} ^ {*} = 2. 0 3 8 7 7\right) \\ = 6 0. 4 5 \\ \end{array}
$$

<table><tr><td>Coup=1.47366</td><td>Bloom</td><td>Approx</td></tr><tr><td>S</td><td>2.29632</td><td>2.29632</td></tr><tr><td>Bsab</td><td></td><td>25.755</td></tr><tr><td>S*</td><td></td><td>2.03877</td></tr><tr><td>Coup-Bsab</td><td></td><td>2.03877</td></tr><tr><td>PV dual curve</td><td>0.000</td><td>0.000</td></tr><tr><td>DV01both</td><td>22.75</td><td>22.36</td></tr><tr><td>DV01libor</td><td>22.75</td><td>22.36</td></tr><tr><td>DV01OIS</td><td>0.000</td><td>0.000</td></tr><tr><td>PV single crv</td><td>0.00</td><td>0.00</td></tr><tr><td>DV01 single</td><td>21.98</td><td>21.60</td></tr><tr><td>PV dual-single</td><td>0.00</td><td>0.00</td></tr></table>

<table><tr><td>Coup=5.00</td><td>Bloom</td><td>Approx</td></tr><tr><td>S</td><td>2.29632</td><td>2.29632</td></tr><tr><td>Bsab</td><td></td><td>25.755</td></tr><tr><td>S*</td><td></td><td>2.03877</td></tr><tr><td>Coup-Bsab</td><td></td><td>4.74245</td></tr><tr><td>PV dual curve</td><td>61.49</td><td>60.45</td></tr><tr><td>DV01both</td><td>31.27</td><td>30.58</td></tr><tr><td>DV01libor</td><td>22.74</td><td>22.36</td></tr><tr><td>DV01OIS</td><td>8.52</td><td>8.22</td></tr><tr><td>PV single crv</td><td>59.41</td><td>58.39</td></tr><tr><td>DV01 single</td><td>30.06</td><td>29.42</td></tr><tr><td>PV dual-single</td><td>2.08</td><td>2.07</td></tr></table>

Table 11: Bloomberg and Approximate Valuation for 30-year Swaps - Dual Curve

The important observation from Table 11 is that the approximate valuation and risk appropriately captures the behavior of the swap. The valuation is not exact - for the  $5\%$  swap (with ATM rates of  $2.296\%$ ) the Bloomberg valuation is 61.49 versus the flat curve 60.45. But we know that the curve is not flat (the 5-year rate is  $1.47\%$ , the 30-year rate  $2.296\%$ ) and so valuing an off-market swap using yield-to-maturity (assuming a flat curve) is going to be off by some amount. But the valuation and risk capture how the valuation changes going from coupon  $2.296\%$  to  $5\%$ . And the difference between the dual curve and single curve valuation is appropriate.

# Part V

# A Primer on Credit Default Swaps

# 1 Introduction

The market for Credit Default Swaps (CDS) has grown from nothing just over ten years ago to a huge market today. But what is a CDS? How does a CDS behave in response to changes in the markets? How does one value a CDS? What is the risk? This primer aims to answer these questions for plain-vanilla single-name CDS.

Although CDS are often portrayed as complex, mysterious, even malevolent, they are really no more complex or mysterious than a corporate bond. I show how and why a CDS behaves, in almost all respects, as a leveraged or financed floating-rate corporate bond. The equivalence between a CDS and a floating-rate bond is very useful because it means that anyone acquainted with corporate bonds, anyone who understands how and why they behave in the market as they do, how they are valued, and what their risks are, understands the most important aspects of a CDS. In essence, a CDS is no harder (and no easier) to value or understand than the underlying corporate bond. I also point out the particular ways in which a CDS differs from a corporate bond.

To preview the main points:

- Selling protection through a CDS is equivalent to buying a floating-rate corporate bond (a floating rate note or FRN) using leverage.
- Selling protection for x years is in most respects the same as being long a corporate bond with x years to maturity.  
 - The exposure to credit spreads is the same whether one sells CDS protection or buys an FRN. In other words, when credit spreads move or upon default one can lose as much, but no more, through selling $100 worth of CDS protection as buying $100 worth of a corporate FRN with the same maturity and underlying credit.
- Conversely, buying protection through a CDS is the same as shorting a corporate FRN: the exposure to credit spreads is the same and an investor can make or lose just as much from buying CDS protection as they can when shorting a corporate bond - the investor loses if credit spreads tighten and the price of the FRN goes up.  
- CDS are often spoken of as insurance contracts but a CDS more usefully can be considered a capital markets product: equivalent to a levered FRN. In reality, a CDS is no more (and no less) an insurance contract than is a corporate bond.  
- A CDS entails no investment up-front (apart from margin or collateral the counterparty to the CDS may demand): It is equivalent to a leveraged position in an FRN. As with any leveraged position a CDS may generate losses greater than the original investment.
- Entering into a CDS does involve one additional risk that a corporate bond does not - the counterparty exposure that one party to the CDS may not live up to their side of the bargain. Generally this is not large, but it can be, and will be, important at times.

# 2 Structure of a Single-Name Credit Default Swap

A Credit Default Swap is an agreement between two parties (say A and B) to make a payment upon the default of a bond issued by a third party (C). Let us take an example of the following five-year CDS:

- Five-year CDS on bond issued by company C  
Coupon 100bp  
- Party A "buys protection"  
- Party B "sells protection"

This means that:

- As long as the bond issued by C does not default (during the next five years)

Party A agrees to make regular payments of 100bp per year  

- Party B agrees to do nothing
- As soon as bond issued by C does default (during the next five years)
- Party B agrees to pay $100 to party A  
- Party A agrees to deliver the bond to party B

The following diagram shows the payments, with the dotted line  $(\dots)$  representing periodic payments (say once a quarter) that are made as long as the bond issued by C is not in default, and the dot-dash line  $(- \cdot - \cdot)$  representing payments made upon default.

The result of this swap of payments is that party A makes periodic payments as long as the bond issued by C does not default, while A is compensated by receiving  $100, the par value of the bond, if the bond defaults. In this sense, A is protected against the default of the bond issued by C, while B is at risk to pay$ 100 upon default. For this reason, one says that party A buys protection and party B sells protection.

Note one important point. Party B must pay $100 upon default but receives the defaulted bond in return. Defaulted bonds usually do not go to zero since there is some recovery, although less than $100. The net result is that party B does not lose $100 upon default of the bond issued by C, but rather $100 less the recovery value of the bond.

The CDS described above is said to involve physical delivery, since party A actually or physically delivers the bond to party B upon default. Many CDS were in fact structured as physical delivery in the early days of the market, but generally CDS now involve cash delivery where party B pays the net amount of $100 - post-default value of the bond. As long as markets are relatively well-behaved there should be no difference between physical and cash delivery, and I will ignore any differences.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/343eeafd-8f92-4a5e-b38a-6e5751b5c936/3d57fe6dd38fd10d0574c18abd18b78f9deca5110a010a38508ae69196f81fba.jpg)  
Figure 20: CDS between parties A and B, with A paying quarterly premiums and B paying loss upon default

# 3 Equivalence of CDS and Floating Rate Note

When first introduced to a CDS and after reflecting on figure 1, it is natural to think that the risk or exposure of parties A and B are quite asymmetric: A has what look like fixed payments and thus what looks like a known or fixed value, while B has a large contingent liability and thus what looks like a quite uncertain value. In fact, this is far from the truth. In the example above the risk or exposure for party B is the same as the risk of owning a five-year FRN issued by C, while the exposure for A is the same as the risk of shorting a five-year FRN. Just as the FRN may go up or down due to changes in C's credit status, so the CDS may go up or down and either party A or party B may gain (or lose).

To see why a CDS is really the same as a floating rate bond (FRN), first consider figure 2, which shows the CDS cash flows over time for party B, who sells protection, from the example above. Party B receives premiums until the maturity of the CDS or default, whichever occurs first. Since the premiums are paid only if there is no default, they are risky. If there is a default, then party B must pay 100 - Recovery.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/343eeafd-8f92-4a5e-b38a-6e5751b5c936/33a8da745d95f0e2287b6ded75aa509341e26dc811b1f99e39c3daf7c1975a54.jpg)  
Figure 21: Time-Line of CDS Payments (Sell Protection)

Now we can utilize an elegant trick. With any swap agreement only net cash flows are exchanged. This means we can insert any arbitrary cash flows we wish, so long as the same amount is paid and received and the net is zero. Let us add and subtract libor payments at each premium date, and also 100 at CDS maturity, but only when there is no default. These libor payments are thus risky. But since they net to zero, they have absolutely no impact on the price or risk of the CDS. The top part of figure 3 shows the original CDS plus these net-zero cash flows. The bottom part of figure 3 then re-arranges these cash flows in a convenient manner:

- Left panel produces an FRN by combining:
- CDS premium and + libor into a risky floating coupon, paid only if there is no default  
- $+100$  into a risky principal repayment, paid only if there is no default  
- Convert the payment of -Recovery into receiving +Recovery, paid only if there is default
- Right panel produces a libor floater by combining:
- libor into a risky floating coupon, paid until default or maturity, whichever occurs earlier  
- 100 paid at maturity if there is no default  
- 100 paid at default if there is default

The lower left panel is exactly a floating rate bond (FRN): if no default occurs then party B receives coupon of (libor + spread) and final principal at maturity, while if default occurs then party B receives the coupon up to default and then Recovery. The combination in the lower right panel looks awkward but is actually very simple: it is always worth 100 today. It is a libor floating bond with maturity equal to the date of default or maturity of the CDS: payments are libor + 100 whether there is a default or not, with the date of the 100 payment being determined by date of default (or CDS maturity). The timing of the payments may be uncertain, but that does not affect the price because any bond that pays libor + 100, when discounted at libor (as is done for CDS), is worth 100 irrespective of maturity.

In other words, we have just proven, rather simply and without any complex mathematics, that a CDS(sell protection) is just a combination of long an FRN and short a libor floater (worth $100):

$$
C D S (s e l l p r o t e c t i o n) \Leftrightarrow + F R N - l i b o r f l o a t e r = + F R N - 1 0 0.
$$

By reversing the signs, we also have

$$
C D S (b u y p r o t e c t i o n) \Leftrightarrow - F R N + l i b o r f l o a t e r = - F R N + 1 0 0.
$$

This is extraordinarily useful as it tells us virtually everything we want to know about the broad how and why of a CDS:<sup>7</sup>

CDS-Sell Protection

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/343eeafd-8f92-4a5e-b38a-6e5751b5c936/1c01df2ca530b55d1ab0d62bbb8edbeb06ac456a47740d3dbbb9250f1da0df9f.jpg)  
Figure 22: CDS Payments plus Offestting Payments = FRN - Libor Floater

- The value of a CDS with coupon  $c$  is the value of an FRN with coupon  $\text{libor} + c$ , less 100.

upon default. Thus the equivalence actually is:

$$
C D S (n o a c c r u e d) \Leftrightarrow + t r a d e d F R N (n o a c c r u e d) - l i b o r f l o a t e r (n o a c c r u e d)
$$

with "libor floater (no accrued)" being just slightly less than $100. For understanding the broad outlines of CDS we can ignore these differences since they are not material. For example, for a five-year FRN with spreads at about 300bp (moderate spreads, implying probability of default during the five years of about 22%) the traded FRN would be $100 while the CDS would be $0.09 - a difference of only 9¢. (The "libor floater (no accrued)" is worth $99.91 instead of $100). Just as important as the small size of this difference is that the FRN and CDS change by virtually the same amount when markets move. If spreads move to 400bp the FRN falls by $4.10 and the CDS by $4.07, a difference of only 3¢ out of $4.00, or less than 1%. We could make the equivalence exact if we considered a hypothetical FRN that does pay accrued and a CDS that also pays accrued

$$
\begin{array}{l} C D S (p a y \text {a c c r u e d} \quad \text {u p o n} \quad \text {d e f a u l t}) \Leftrightarrow + h y p o t h e t i c a l F R N (p a y \text {a c c r u e d}) - \text {l i b o r f l o a t e r} (\text {p a y} \quad \text {a c c r u e d}) \\ = + h y p o t h e t i c a l F R N (p a y a c c r u e d) - 1 0 0. \\ \end{array}
$$

Most CDS pay accrued, but traded FRNs do not.

- The risk is that of being long an FRN. The risk goes up with maturity in exactly the same way as it does for an FRN  
- As credit spreads go up the value of CDS goes down since the value of the FRN goes down.
- CDS - Buy Protection
- The value of a CDS with coupon  $c$  is the value of 100 minus an FRN with coupon  $\text{libor} + c$ .  
- The risk of a CDS is the risk of being short an FRN.  
- As credit spreads go up the value of CDS goes up since the value of the FRN goes down and a buy-protection CDS is short the FRN.
- One can just as easily lose buying protection as selling protection, because one can lose by shorting an FRN just as easily as by buying an FRN.

Note that everything we have covered is for a CDS exactly on a premium payment date. There are some modifications for being off a coupon date, but these are not substantial and do not change the basics of what I have shown. Also, remember that the CDS is equivalent to a leveraged position in the FRN, as discussed more below.

# 4 Equivalence of CDS and Fixed Rate Bond

The equivalence demonstrated above is between a CDS and a floating rate note or FRN. Fixed rate corporate bonds are more common than floating-rate, and one can show that there is an equivalence of the following form:8

$$
C D S (s e l l p r o t e c t i o n) \Leftrightarrow + F i x e d r a t e c o r p o r a t e - A m o r t i z i n g r i s k l e s s b o n d.
$$

A fixed rate corporate bond will have risk to both interest rates (the riskless rate) and credit spreads, while the CDS essentially has risk to just credit spreads. The amortizing riskless bond removes the interest rate risk, and the combination of "Fixed rate corporate bond less Amortizing riskless bond" will have only credit spread risk.

Note, however, that the CDS is equivalent to a par fixed rate bond, with coupon roughly equal to the riskless interest rate plus the CDS spread. It will not be true that a standard (zero-PV) CDS will be equivalent to a fixed rate bond that is trading at a significant discount or premium. A fixed rate (or floating rate) bond trading at a discount will be equivalent to a CDS with a below-market coupon.

# 5 CDS as Capital Markets vs Insurance Product

CDS are often talked about as "insurance" and the terminology in the market (buying or selling protection) reinforces this notion. Thinking of a CDS solely as an insurance contract, however, may lead one to think of a CDS as a contingent liability that cannot be easily valued, and even that the value of a CDS does not change over time. As the equivalence discussed above shows, however, a CDS can be thought of as a capital markets product (a levered FRN) with a price determined by investors' assessment of the firm's credit-worthiness and likelihood of default. In general this will be a more fruitful approach than considering CDS as an insurance product valued on an actuarial basis.[9]

In reality, a CDS is no more (and no less) an insurance product than is a corporate bond. In fact, a corporate bond can be thought of as an insurance contract, even if a somewhat unusual one. When an investor buys a corporate bond from company C they give the company  $100 in return for the promise to pay regular coupons and then principal upon maturity. Obviously the promise is not iron-clad, because the company may go into default. It is most common to simply consider that the principal is at risk and there is a possibility that the investor will receive back less than$ 100. But one could equally think of the promise to repay principal as iron-clad with no risk to the principal, by the simple expedient of having the investor provide an additional insurance contract to company C. The insurance contract would have the investor cover any shortfall on principal if there were to be a "default" and company C were unable to repay the full principal. The net result would be the same - the investor receives less than $100 in the event of default - but it is now through the combination of a non-risky $100 principal combined with an insurance contract that guarantees the principal.

If one insists on talking about CDS as insurance then the following analogy may prove useful. Say that an insurance company provides fire insurance to all homeowners in a town, and that the contract is set for five years. Say the town is Bellingham Washington. The climate of coastal Washington is rather wet so there is little risk that widespread forest or brush fires would threaten the town. The overall rate of house fires is low, house fires in Bellingham tend to be individual random events, the insurer is well-diversified, and the overall premium would be low. Now say the impossible happens: climate change arrives overnight and Bellingham is surrounded by tinder-dry forest, or Bellingham is miraculously transported to the fire-prone areas of Australia. (I know that this is not realistic but it simply reinforces that thinking of CDS as insurance is not very useful.) The premium for fire insurance would shoot up, even before any homes burned, simply because it is likely that more houses will burn and not impossible that the whole town could burn.

Or consider another insurance story, where a company insures homes in a city against flooding, again for five years. The company believes that the city it is insuring is Cedar City, UT. Flooding is not common on the northeastern edge of the Mojave Desert, and what there is tends to be random

localized events, so premiums would be low. But now say the company finds out that it was mistaken and the city it has insured is not Cedar City UT but Cedar Rapids, IA, which is subject to frequent and severe flooding. (Remember 2008, when 100 city blocks were submerged and 10,000 people evacuated.) The premium for flood insurance would now be hugely higher, even before any homes were flooded, because there is a higher probability any single home will be flooded and a reasonable chance the whole city will flood, leading to catastrophic losses on the part of the insurer.

In both cases the premium would jump from before to after, even prior to actual losses from fires or floods. The insurer's future liabilities would increase hugely, and if the company marked-to-market or held reserves against possible future losses it would properly recognize those losses immediately, prior to actual losses. If the insurer tried to sell its policies to another insurer or buy out its policy-holders (i.e. unwind the insurance) during the five years of the contract then it would have to pay a large fee representing the new, higher cost of the insurance. Such payments would not be payment in full to cover an actual loss on any policy but simply the higher premium reflecting the new higher probability of fire or flood.

The problem with calling CDS "insurance" is that it falsely leads to comparisons with things such as standard fire insurance. For fire insurance the probability of fire does not change dramatically with time (for insurance across many houses), while for products "insured" by CDS contracts the probability of default can change dramatically over time. In the end, one can either think of both a CDS and an FRN as insurance products, or both as capital markets products, but it is inconsistent to consider one (the CDS) as insurance and the other (the FRN) as a capital markets product.

# 6 Valuation Using Credit Spreads

Financial markets continually assess and re-assess the credit-worthiness of firms and their likelihood of default. The equivalence between a CDS and corporate bonds demonstrated above shows how one can access the financial markets' assessment of a firm's credit to value the CDS. The credit spread (say from FRN or fixed rate bonds) is the simple way to measure the markets' assessment of credit-worthiness. One can obtain the credit spread from a traded FRN or fixed rate bond, then apply that spread to value the FRN that is equivalent to the CDS.

An example will suffice to show how the credit spread can be used to provide a ballpark price for a CDS. In mid-September 2007 the credit spread on a seven-year Lehman bond was about 120bp. A seven-year CDS would be equivalent to a seven-year par FRN. Since an FRN with spread of 120bp would be trading at par, a CDS with premium of 120bp would be at par (NPV zero). By early-September 2008, Lehman credit spreads had widened to around 450bp, reflecting markets' assessment of the higher likelihood that Lehman would default. (As it happened, Lehman did file for bankruptcy over the weekend of September 13-14. By September 12th spreads had widened to about 660bp.) The original FRN paying a spread of 120bp, now with six years to maturity and trading in a market that valued Lehman's credit at 450bp spread, would be worth about $84.<sup>10</sup> This

means that a sell-protection CDS (equivalent to long FRN less  $100) would have fallen to about -\$  16.

As a general rule, default by a company is not a surprise event and does not come entirely out-of-the-blue - financial distress usually shows up well before the event of default and markets factor this in, revising over time the likelihood of default and the value of a firm's bonds. This can be seen in the changes in credit spreads for a firm's bonds. Credit spreads generally increase well before the actual event of default, and allow an investor to both ascertain markets' assessment of likelihood of default and track the changes in the value of a CDS.

# 7 CDS Valuation by Martingale Modeling (Constant Hazard Rate)

A model for valuing a CDS is relatively straightforward. The cash flows for a CDS (sell protection) are:

Receive  

- Fixed coupon c as long as there is no default  
- Pay  
- When (and if) default occurs, 100 less any recovery

These cash flows are as shown in Figure 21, repeated here:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/343eeafd-8f92-4a5e-b38a-6e5751b5c936/e87260396ff167a366561d5888d8ff6b0520d84c00876836d36d9f56e8e0c26f.jpg)  
Time-line of CDS Payments (Sell Protection)

Under the martingale modeling approach the default is assumed to occur at some random time,  $\tau$ . This is a reduced form model in the sense that the process governing default (the random time  $\tau$ ) is assumed rather than default being modeled as a result of underlying financial or economic processes.

The benefit of the approach is the substantial flexibility in the stochastic process governing default,

and the simplicity of the relative pricing (risk-free or equivalent martingale) framework.(See, for example, McNeil, Frey, Embrechts 2005, section 9.3.3.)

For now we assume the random default time  $\tau$  is a constant-hazard process. This means the probability of default in the next instant of time, conditional on not yet having defaulted, is constant. In other words under the risk-neutral measure the default time  $\tau$  is exponentially-distributed with constant hazard  $\alpha$ :

$$
\Pr [ \tau <   t + \mathrm {d} t \mid \tau > t ] = \alpha \mathrm {d} t \tag {27}
$$

$$
\Pr \left[ \tau > t \mid t > 0 \right] = e x p (- \alpha t)
$$

If we assume that the risk-free rate is constant at  $r$ , then the present value of receiving the coupons  $c$  is:

$$
\begin{array}{l} P V \left(\text {r e c e i v e c o u p o n s c a t t i m e s} t _ {k}\right) = \sum_ {k} \exp \left(- r t _ {k}\right) \cdot c \cdot P _ {Q} (\tau > t _ {k}) \tag {28} \\ = \sum_ {k} e x p (- r t _ {k}) \cdot c \cdot e x p (- \alpha t _ {k}) \\ \end{array}
$$

(This assumes that coupons occur annually, or that  $c$  includes the day-count adjustment. If not then we would have  $c \cdot df$  where  $df = \text{day fraction} = \frac{\text{days between payment}}{360}$  or  $\frac{365}{365}$  depending on the currency and appropriate money-market convention.)

The PV of paying the loss upon default is the expectation over the random default time of the loss (net of recovery). Say the loss is 100 and the recovery is fixed at  $\delta$ . Then the loss net of recovery is  $100 \cdot (1 - \delta)$  and the expected value is:

$$
\begin{array}{l} P V (\text {l o s s}) = - I n t e g r a l [ L o s s a m o u n t, d i s c o u n t e d a t r, t i m e s d e n s i t y ] \\ = - 1 0 0 \cdot (1 - \delta) \cdot \int \alpha \cdot e ^ {- r s} \cdot e ^ {- \alpha s} d s \tag {29} \\ = - 1 0 0 \cdot (1 - \delta) \cdot \frac {\alpha}{\alpha + r} \cdot [ 1 - \exp (- (r + \alpha) T) ] \\ \end{array}
$$

The total value of the CDS is

$$
\begin{array}{l} P V \text {o f} C D S (S e l l P r o t e c t i o n: R e c p r e m i u m c, P a y b o n d l o s s) \\ = P V \left(\text {r e c e i v e c o u p o n s}\right) - P V (\text {l o s s}) (30) \\ = \sum_ {k} e x p (- r t _ {k}) \cdot c \cdot e x p (- \alpha t _ {k}) - 1 0 0 \cdot (1 - \delta) \cdot \frac {\alpha}{\alpha + r} \cdot [ 1 - \exp (- (r + \alpha) T) ] (30) \\ = \sum c \cdot d f \cdot e ^ {- t (r + \alpha)} - 1 0 0 \cdot (1 - \delta) \cdot \frac {\alpha}{\alpha + r} \cdot \left(1 - e ^ {- (r + \alpha) T}\right) \\ \end{array}
$$

Where  $df =$  dayfraction (e.g.  $\approx 92.5 / 360$  for quarterly USD, A/360). This is a very simple formula, in fact one that can be evaluated in a spread-sheet without difficulty.

This assumes that when default occurs between coupon payment dates no partial coupon is paid. For most traded CDS there is actually an accrued coupon payment. In this case the expected PV for a coupon to be paid at  $t$  (with accrued paid if default occurs before  $t$ ) should be:

$$
\begin{array}{l} c \cdot d f \cdot \left[ e ^ {- r t} \cdot \Pr [ d e f a u l t > t ] + c \cdot d f \cdot \int \alpha \cdot e ^ {- \alpha u} \cdot e ^ {- r u} \cdot \frac {u - (t - b)}{b} \mathrm {d} u \right] \\ = c \cdot d f \cdot e ^ {- (r + \alpha) t} \cdot \left[ 1 + \alpha \cdot \frac {e ^ {b (r + \alpha)} - 1 - b (r + \alpha)}{b \cdot (r + \alpha) ^ {2}} \right] \\ \end{array}
$$

where  $\mathrm{b} = 1/$  coupon frequency (e.g.  $= 0.25$  for quarterly payments). The first term is  $c\cdot df\cdot e^{-rt}\cdot$ $\operatorname*{Pr}[default > t]$ . The second term is the accrued payment  $c\cdot df\cdot [u - (t - b)] / b$  times probability of default  $\alpha \cdot e^{-\alpha u}$ , discounted by  $e^{-ru}$ .

Because of the equivalence between the CDS and FRN this also provides a model for valuing an

FRN. In fact, this provides the obvious way to calculate the parameter  $\alpha$  from the market. We can get the risk-free rate from the government bond market or swap market, and then we can back out the value for  $\alpha$  necessary to give the correct market price of the FRN.[11]

# 8 Bond Valuation by Martingale Modeling (Constant Hazard Rate)

A model for valuing a credit-risk bond is relatively straightforward. The cash flows for a bond are:

Receive

- Fixed coupon c as long as there is no default  
- Principal of 100 if no default before maturity  
- Recovery amount  $100 - \delta$  if there is default

These cash flows are as shown in figure 23:

$$
\begin{array}{l} \text {r i s k y p r i n c i p a l + r e c o v e r y ,} \\ = 1 0 0 * \exp [ - (\text {r h o} + \text {a l p h}) ^ {*} T ] \\ \quad + 1 0 0 ^ {*} d ^ {*} (1 - \exp [ - (\text {r h o} + \text {a l p}) ^ {*} T ]) ^ {*} \text {a l p h / (a l p h} + \text {r h o}) \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/343eeafd-8f92-4a5e-b38a-6e5751b5c936/72c55b8586e17d3911b92a3fd4cf38132518c5f0248e438cde8bbf6848ec74ef.jpg)  
Figure 23: Time-line of Bond Payments

Under the martingale modeling approach the default is assumed to occur at some random time,  $\tau$ , just as in the section above. We assume that the random default time  $\tau$  is a constant-hazard process. Equations 27 hold as above.

The present value of receiving the coupons  $c$  is given by Equation 28. (Again, this assumes that coupons occur annually, or that  $c$  includes the day-count adjustment.)

The PV of recovery upon default is the same as the PV of loss (Equation 29) but with sign reversed and  $1 - \delta$  replaced with  $\delta$ :

$$
\begin{array}{l} P V (\text {r e c o v e r y}) = \text {I n t e g r a l} [ \text {R e c o v e r y a m o u n t , d i s c o u n t e d a t r , t i m e s d e n s i t y} ] \\ = 1 0 0 \cdot \delta \cdot \int \alpha \cdot e ^ {- r s} \cdot e ^ {- \alpha s} d s \tag {31} \\ = 1 0 0 \cdot \delta \cdot \frac {\alpha}{\alpha + r} \cdot [ 1 - \exp (- (r + \alpha) T) ] \\ \end{array}
$$

The PV of the principal is 100 times the probability default occurs after T, discounted at r:

$$
P V (\text {p r i n c i p a l}) = 1 0 0 \cdot \Pr [ \text {d e f a u l t a f t e r} T ] = 1 0 0 \cdot \exp (- (r + \alpha) T) \tag {32}
$$

The total value of the bond is

$$
\begin{array}{l} P V (b o n d) = P V (r e c e i v e c o u p o n) + P V (p r i n c i p a l) + P V (r e c o v e r y) \\ = E q 2 8 + E q 3 1 + E q 3 2 \\ = \sum_ {k} \exp (- r t _ {k}) \cdot c \cdot \exp (- \alpha t _ {k}) + 1 0 0 \cdot \exp (- (r + \alpha) T) + 1 0 0 \cdot \delta \cdot \frac {\alpha}{\alpha + r} \cdot [ 1 - \exp (- (r + \alpha) T) ] \\ = \sum c \cdot d f \cdot e ^ {- t (r + \alpha)} + 1 0 0 \cdot e ^ {- (r + \alpha) T} + 1 0 0 \cdot \delta \cdot \frac {\alpha}{\alpha + r} \cdot \left(1 - e ^ {- (r + \alpha) T}\right) \tag {33} \\ \end{array}
$$

Where  $df =$  dayfraction (e.g.  $\approx 92.5 / 360$  for quarterly USD, A/360)

Again, this is a simple formula that can be evaluated in a spread-sheet. This assumes that when default occurs between coupon payment dates no partial coupon is paid.

Expected yields are:

$$
\begin{array}{l} E x p e c t e d \quad y i e l d = E x p e c t e d \quad y i e l d \text {u p o n} \quad d e f a u l t + P r o m i s e d \quad y i e l d \cdot \Pr [ \text {d e f a u l t a f t e r} T ] \\ = \int y (s) \cdot \alpha \cdot e ^ {- \alpha s} d s + y (T) \cdot e ^ {- (r + \alpha) T} \\ \end{array}
$$

# 8.1 Equivalence Between CDS And Fixed Coupon Bond

The CDS is given by Equation 30 and the credit-risky bond by Equation 33. Examining these we see that if the coupons  $c$  are the same in both,

$$
P V (C D S, c o u p o n c) = P V (B o n d, c o u p o n c)
$$

$$
- 1 0 0 \cdot e ^ {- (r + \alpha) T} - 1 0 0 \cdot \frac {\alpha}{\alpha + r} \cdot \left(1 - e ^ {- (r + \alpha) T}\right)
$$

The final term is  $100\int_0^T\alpha \cdot e^{-\alpha s}\cdot e^{-rs}\mathrm{d}s$  or the present value of a coupon  $\alpha$  paid continuously and discounted at risk-free  $r$ , on a notional that is accruing at rate  $\alpha$ . The second-to-last term is the PV of 100 amortized at rate  $\alpha$ , discounted at  $r$ . In other words, these two terms are a continuously-paid amortizing bond, coupon  $a$  and amortizing at rate  $\alpha$ .

Alternatively, for arbitrary CDS coupon  $c$  and credit-risky bond coupon  $b$ , an amortizing bond with periodic coupon  $a = \left[1 + \frac{b + c}{freq}\right]e^{\alpha / freq} - 1$ , amortizing at rate  $\alpha$  and discounted at risk-free rate  $r$ , will give (approximately):

$$
P V (C D S, c o u p o n c) \approx P V (r i s k y b o n d, c o u p o n b)
$$

$$
- P V (\text {r i s k f r e e}, \text {c o u p o n} a, \text {a m o r t i z i n g} a t \text {r a t e} \alpha)
$$

The term  $-\sum a \cdot e^{-t(r + \alpha)}$  in the risk-free amortizing bond will (approximately) wipe out the sum of bond coupons and leave  $\sum c \cdot e^{-t(r + \alpha)} + \sum a \cdot e^{-t(r + \alpha)} \approx \frac{\alpha}{\alpha + r} \cdot (1 - e^{-(r + \alpha)T})$ .

# 9 Leverage and Counterparty Exposure - The difference between CDS and FRN

The CDS is a leveraged position:

$CDS(sell\ protection)\Leftrightarrow long$  an  $FRN$ , short a libor floater or libor deposit

Recognizing this leverage is important. An outright (fully-funded) purchase of an FRN can never lose more than the purchase price: the up-front investment caps the total loss. An investor who finances the purchase of an FRN, whether through the repo market or synthetically through a CDS, takes on leverage. Such a leveraged position can lose up to the notional, which will generally be more than the original investment. An investor who fails to recognize either the leverage inherent in a CDS or the risk characteristics of a CDS (that selling protection is equivalent to long an FRN and buying protection is equivalent to short an FRN) may take tactical or strategic decisions leading to unexpected losses.

There is one important difference between a CDS and an FRN: the additional counterparty credit exposure. A CDS is a private transaction between parties A and B. Continue with our example of party B selling protection. Party B expects to receive the periodic payments until C defaults, but is dependent on party A to make those payments, not on party C as would be the case for an FRN. Thus, party B is now at risk not just to C (as for the FRN) but also to A. In most cases the credit standing of A is substantially higher than C, and furthermore the credit exposure is for the net value of the CDS which is generally close to zero. When either or both of these does not hold (the credit standing of A is poor relative to C or the value of the CDS has moved far from zero) then the credit exposure to A can become quite important and must be considered.

One must not, however, exaggerate the practical impact of counterparty exposure across the financial system. Two factors mean that the actual counterparty exposure is less, in fact substantially less, than the notional outstanding. First is the simple fact that the exposure at a point in time is only the PV of the CDS and not the notional. A new CDS generally is written with zero PV and so the exposure for both parties is zero. As the underlying credit improves or deteriorates the CDS will rise or fall in value. Say the credit has deteriorated and the value for party B of the CDS (sell protection) has fallen from  $0 to -$ 10. The counterparty exposure for A is now  $\$ 10$  (if B defaults, A loses an asset worth  $\$ 10$ ), but this is substantially less than the full notional of  $\$ 100$ . Second, market participants have developed mechanisms that substantially mitigate what exposure does exist. The most wide-spread are collateral arrangements. Most counterparty agreements require posting of collateral as the CDS changes in value. Continuing with the example above where party B sold the protection so that the CDS is worth +10 to party A. Generally, party B would transfer collateral to party A to cover some or all the  $\$ 10$ . This collateral would be available to A to cover the value of the CDS were party B to default, bringing the effective counterparty exposure close to zero. Additional collateral would be transferred if the value of the CDS moved from - $10 to -$ 20, keeping the counterparty exposure close to zero. The net effect is that counterparty exposure at a point in time will be closer to zero than to the notional outstanding.

# APPENDIX

# EXAMPLE

I will work with the following example, with all instruments assumed to pay semi-annually and all rates and coupons quoted on a semi-bond basis. Most CDS and most FRNs pay quarterly and are quoted on an actual/360 or actual/365 basis, but I will use semi-annual bond basis here to better highlight the close relationship between a CDS, FRN, and corporate bond. The underlying model is a Poisson default-process model such as that outlined above, which allows valuation of CDS, FRNs, and fixed-coupon risky or defaultable bonds in the same model.[12]

5 year CDS (buy Protection, no accr) Premium=295.7bp

$$
\mathrm {P V} = 0
$$

5 year CDS (buy protection, accrued) Premium  $= 292.2\mathrm{bp}$

$$
\mathrm {P V} = 0
$$

5 year floating-rate note Price = $100

Promised spread  $= 300\mathrm{bp}$  semi-annually

Credit spread  $= 300\mathrm{bp}$  sab

5 year fixed-rate corporate bond Price = $100

Coupon  $= 6.50\%$  semi-annually

Yield  $= 6.50\%$  sab

5 year riskless bond Price = $100

Credit spread  $= 300\mathrm{bp}$  sab

Yield (interest rate)  $= 3.5\%$

Coupon  $= 3.5\%$  semi-annually

Spreads, premiums, coupons are chosen so that instruments are at par. The differences in coupon or premium are due to differences in the way premiums or coupons are paid if default occurs between payment dates.[13] The first rows in the table below summarize the base case.

Now let's say the credit market moves and the probability of default rises but with no change in interest rates. Say the market moves enough so that the FRN credit spreads rise by 100bp to 400bp. The next rows in the table summarize this case. The CDS, FRN, and corporate bond all fall in value, and by essentially the same amount. The changes for the CDS with and without accrued differ by  $4.8\text{¢}$ , while the CDS without accrued and the FRN differ by  $5.8\text{¢}$ , out of a total change of about  $\$4.00$ . This demonstrates how one can use the FRN to understand how to value the CDS and to understand how the CDS moves as the market moves.

<table><tr><td></td><td>sab</td><td>smm</td></tr><tr><td>CDS (no accr)</td><td>295.7bp</td><td>288.15bp</td></tr><tr><td>CDS (accrued)</td><td>292.2bp</td><td>291.68bp</td></tr><tr><td>FRN (no accr)</td><td>300.0bp</td><td>295.89bp</td></tr><tr><td>Fixed (no accr)</td><td>6.50%</td><td></td></tr></table>

The same result holds if credit improves and the probability of default goes down. The next rows of the table shows what happens when the probability of default goes down enough so that the FRN credit spreads fall by 100bp to 200bp. Once again, the CDS, the FRN, and the fixed-rate bond all rise by almost the same amount.

<table><tr><td rowspan="2"></td><td colspan="2">CDS</td><td rowspan="2">FRN</td><td colspan="2">Bond</td></tr><tr><td>yes accr</td><td>no accr</td><td>Fixed</td><td>Riskless</td></tr><tr><td>Base Case</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Promised Spread / Coupon</td><td>295.7bp</td><td>292.2bp</td><td>300.0bp</td><td>6.50%</td><td>3.50%</td></tr><tr><td>PV</td><td>0.000</td><td>0.000</td><td>100.000</td><td>100.000</td><td>100.000</td></tr><tr><td>Credit Spreads</td><td>-</td><td>-</td><td>300bp</td><td>300bp</td><td>-</td></tr><tr><td>Credit spreads increase 100bp</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>PV</td><td>-4.000</td><td>-4.048</td><td>95.894</td><td>95.894</td><td>100.000</td></tr><tr><td>Change from base</td><td>-4.000</td><td>-4.048</td><td>-4.106</td><td>-4.106</td><td>0.000</td></tr><tr><td>Credit Spreads</td><td>-</td><td>-</td><td>400bp</td><td>400bp</td><td>-</td></tr><tr><td>Credit spreads decrease 100bp</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>PV</td><td>4.207</td><td>4.259</td><td>104.320</td><td>104.320</td><td>100.000</td></tr><tr><td>Change from base</td><td>4.207</td><td>4.259</td><td>4.320</td><td>4.320</td><td>0.000</td></tr><tr><td>Credit Spreads</td><td>-</td><td>-</td><td>200bp</td><td>200bp</td><td>-</td></tr><tr><td>Spreads and Rates up 100bp</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>PV</td><td>-4.162</td><td>-4.212</td><td>95.665</td><td>91.931</td><td>95.567</td></tr><tr><td>Change from base</td><td>-4.162</td><td>-4.212</td><td>-4.335</td><td>-8.070</td><td>-4.433</td></tr><tr><td>Credit Spreads</td><td>-</td><td>-</td><td>400bp</td><td>401.5bp</td><td>-</td></tr></table>

Table 12: Example CDS, FRN, Bond; with Changes in Spreads & Rates

When both credit conditions and economic conditions changed, so that both credit spreads and interest rates change, the fixed-coupon bond no longer mimics the CDS. The final rows of the table show results when probability of default rises and interest rates rise. The CDS and the FRN both fall by almost the same amount, but the fixed-coupon bond responds to both changes in credit and interest rates. A riskless amortizing bond would exactly cancel out the effect of the change in interest rates, but even a plain-vanilla riskless bond does a reasonable job. The net of the change in the corporate bond (-8.070) and the riskless bond (4.433) is -3.637, not wildly different from the actual change in the CDS.

A.J. McNeil, R. Frey, P. Embrechts (2005), Quantitative Risk Management, Princeton University Press

# References

Richard A. Brealey, Stewart C. Myers, and Franklin Allen. *Principles of Corporate Finance*. McGraw-Hill Education, New York, 11 edition edition, January 2013. ISBN 978-0-07-803476-3.  
Thomas S. Coleman. Fitting Forward Rates to Market Data. January 1998. URL http://ssrn.com/abstract=994870.  
Thomas S. Coleman. A Guide to Duration, DV01, and Yield Curve Risk Transformations. January 2011. URL http://ssrn.com/abstract=1733227.  
Thomas S. Coleman. Yield Curve Risk - Partial DV01 and Key Rate Duration. September 2015.  
John C. Hull. Options, Futures, and Other Derivative Securities. Prentice Hall, Englewood Cliffs, NJ, 2nd edition, 1993.
---
aliases:
  - A Cash-Flow Mapping Procedure
tags:
key_concepts:
parent_directory: Technical Notes from Options, Futures, and Other Derivatives
cssclasses: academia
title: Technical Note No. 25 - A Cash-Flow Mapping Procedure
linter-yaml-title-alias: Technical Note No. 25 - A Cash-Flow Mapping Procedure
---

# Technical Note No. 25*  

Options, Futures, and Other Derivatives  
John Hull

# A Cash-Flow Mapping Procedure

This note explains one procedure for mapping cash flows to standard maturity dates. We will illustrate the procedure by considering a simple example of a portfolio consisting of a long position in a single Treasury bond with a principal of \$1 million maturing in 0.8 years. We suppose that the bond provides a coupon of 10% per annum payable semiannually. This means that the bond provides coupon payments of \$50,000 in 0.3 years and 0.8 years. It also provides a principal payment of \$1 million in 0.8 years. The Treasury bond can therefore be regarded as a position in a 0.3-year zero-coupon bond with a principal of \$50,000 and a position in a 0.8-year zero-coupon bond with a principal of \$1,050,000.

The position in the 0.3-year zero-coupon bond is mapped into an equivalent position in 3-month and 6-month zero-coupon bonds. The position in the 0.8-year zero-coupon bond is mapped into an equivalent position in 6-month and 1-year zero-coupon bonds. The result is that the position in the 0.8-year coupon-bearing bond is, for VaR purposes, regarded as a position in zero-coupon bonds having maturities of three months, six months, and one year.

# The Mapping Procedure

Consider the \(1,050,000 that will be received in 0.8 years. We suppose that zero rates, daily bond price volatilities, and correlations between bond returns are as shown in Table 1.

The first stage is to interpolate between the 6-month rate of  $6.0\%$  and the 1-year rate of  $7.0\%$  to obtain a 0.8-year rate of  $6.6\%$ . (Annual compounding is assumed for all rates.) The present value of the \$1,050,000 cash flow to be received in 0.8 years is

$$
\frac {1 , 0 5 0 , 0 0 0}{1 . 0 6 6 ^ {0 . 8}} = 9 9 7, 6 6 2
$$

We also interpolate between the  $0.1\%$  volatility for the 6-month bond and the  $0.2\%$  volatility for the 1-year bond to get a  $0.16\%$  volatility for the 0.8-year bond.

Table 1 Data to Illustrate Mapping Procedure  

<table><tr><td>Maturity</td><td>3-Month</td><td>6-Month</td><td>1-Year</td></tr><tr><td>Zero rate (% with ann. comp.)</td><td>5.50</td><td>6.00</td><td>7.00</td></tr><tr><td>Bond price vol (% per day)</td><td>0.06</td><td>0.10</td><td>0.20</td></tr><tr><td colspan="4"></td></tr><tr><td>Correlation between daily returns</td><td>3-Month Bond</td><td>6-Month Bond</td><td>1-Year Bond</td></tr><tr><td>3-month bond</td><td>1.0</td><td>0.9</td><td>0.6</td></tr><tr><td>6-month bond</td><td>0.9</td><td>1.0</td><td>0.7</td></tr><tr><td>1-year bond</td><td>0.6</td><td>0.7</td><td>1.0</td></tr></table>

Table 2 The Cash Flow Mapping Result  

<table><tr><td></td><td>\$50,000 Received in 0.3 Years</td><td>\$1,050,000 Received in 0.8 Years</td><td>Total</td></tr><tr><td>Position in 3-month bond ($)</td><td>37,397</td><td></td><td>37,397</td></tr><tr><td>Position in 6-month bond ($)</td><td>11,793</td><td>319,589</td><td>331,382</td></tr><tr><td>Position in 1-year bond ($)</td><td></td><td>678,074</td><td>678,074</td></tr></table>

Suppose we allocate  $\alpha$  of the present value to the 6-month bond and  $1 - \alpha$  of the present value to the 1-year bond. Matching variances we obtain

$$
0. 0 0 1 6 ^ {2} = 0. 0 0 1 ^ {2} \alpha^ {2} + 0. 0 0 2 ^ {2} (1 - \alpha) ^ {2} + 2 \times 0. 7 \times 0. 0 0 1 \times 0. 0 0 2 \alpha (1 - \alpha)
$$

This is a quadratic equation that can be solved in the usual way to give  $\alpha = 0.320337$ . This means that  $32.0337\%$  of the value should be allocated to a 6-month zero-coupon bond and  $67.9663\%$  of the value should be allocated to a 1-year zero coupon bond. The 0.8-year bond worth \$997,662 is, therefore, replaced by a 6-month bond worth

$$
9 9 7, 6 6 2 \times 0. 3 2 0 3 3 7 = \$ 3 1 9, 5 8 9
$$

and a 1-year bond worth

$$
9 9 7, 6 6 2 \times 0. 6 7 9 6 6 3 = \$ 6 7 8, 0 7 4
$$

This cash-flow mapping scheme has the advantage that it preserves both the value and the variance of the cash flow. Also, it can be shown that the weights assigned to the two adjacent zero-coupon bonds are always positive.

For the \$50,000 cash flow received at time 0.3 years, we can carry out similar calculations. It turns out that the present value of the cash flow is \$49,189. It can be mapped into a position worth \$37,397 in a three-month bond and a position worth \$11,793 in a six-month bond.

The results of the calculations are summarized in Table 2. The 0.8-year coupon-bearing bond is mapped into a position worth  \$37,397 in a three-month bond, a position worth\$ 331,382 in a six-month bond, and a position worth \$678,074 in a one-year bond. Using the volatilities and correlations in Table 1, the standard formula for calculating the variance of a portfolio can be used with with  $n = 3$ ,  $\alpha_{1} = 37,397$ ,  $\alpha_{2} = 331,382$ ,  $\alpha_{3} = 678,074$ ,  $\sigma_{1} = 0.0006$ ,  $\sigma_{2} = 0.001$  and  $\sigma_{3} = 0.002$ , and  $\rho_{12} = 0.9$ ,  $\rho_{13} = 0.6$ ,  $\rho_{23} = 0.7$ . This variance is of the 0.8-year bond is 2,628,518. The standard deviation of the change in the price of the bond is, therefore,  $\sqrt{2,628,518} = 1,621.3$ . Because we are assuming that the bond is the only instrument in the portfolio, the 10-day  $99\%$  VaR is

$$
1 6 2 1. 3 \times \sqrt {1 0} \times 2. 3 3 = 1 1, 9 4 6
$$

or about \$11,950.
---
title: Appendix K
parent_directory: Part 8 Appendices
formatted: 2025-12-21 12:00:00 PM
formatter_model: grok-code-fast-1
cli_tool: opencode
primary_tags:
  - credit default swaps
  - derivative valuation
  - risk management
secondary_tags:
  - hazard rate
  - survival probabilities
  - recovery rate
  - mark to market
cssclasses: academia
---

# Appendix K

## Valuation of Credit Default Swaps

Credit default swaps (CDSs) are described in Chapter 17. They can be valued using (risk-neutral) default probability estimates. Suppose that the hazard rate of a reference entity is  $2\%$  per annum for five years. Table K.1 shows survival probabilities and unconditional default probabilities (that is, default probabilities as seen at time zero) for each of the five years. From equation (17.2), the probability of survival to time  $t$  is  $e^{-0.02t}$ . The probability of default during a year is the probability of survival to the beginning of the year minus the probability of survival to the end of the year. For example, the probability of survival to time 2 years is  $e^{-0.02 \times 2} = 0.9608$  and the probability of survival to time 3 years is  $e^{-0.02 \times 3} = 0.9418$ . The probability of default during the third year is  $0.9608 - 0.9418 = 0.0190$ .

We will assume that defaults always happen halfway through a year and that payments on a five-year credit default swap are made once a year, at the end of each year. We also assume that the risk-free interest rate is  $5\%$  per annum with continuous compounding and the recovery rate is  $40\%$ . There are three parts to the calculation. These are shown in Tables K.2, K.3, and K.4.

Table K.2 shows the calculation of the present value of the expected payments made on the CDS assuming that payments are made at the rate of  $s$  per year and the notional principal is \$1. For example, there is a 0.9418 probability that the third payment of  $s$  is made. The expected payment is therefore 0.9418s and its present value is 0.9418se-0.05×3 = 0.8106s. The total present value of the expected payments in Table K.2 is 4.0728s.

Table K.1 Unconditional Default Probabilities and Survival Probabilities

<table><tr><td>Time (years)</td><td>Probability of Surviving to Year End</td><td>Probability of Default During Year</td></tr><tr><td>1</td><td>0.9802</td><td>0.0198</td></tr><tr><td>2</td><td>0.9608</td><td>0.0194</td></tr><tr><td>3</td><td>0.9418</td><td>0.0190</td></tr><tr><td>4</td><td>0.9321</td><td>0.0186</td></tr><tr><td>5</td><td>0.9048</td><td>0.0183</td></tr></table>

Table K.2 Calculation of the Present Value of Expected Payments (payment  $= s$  per annum)

<table><tr><td>Time (years)</td><td>Probability of Survival</td><td>Expected Payment</td><td>Discount Factor</td><td>PV of Expected Payment</td></tr><tr><td>1</td><td>0.9802</td><td>0.9802s</td><td>0.9512</td><td>0.9324s</td></tr><tr><td>2</td><td>0.9608</td><td>0.9608s</td><td>0.9048</td><td>0.8694s</td></tr><tr><td>3</td><td>0.9418</td><td>0.9418s</td><td>0.8607</td><td>0.8106s</td></tr><tr><td>4</td><td>0.9231</td><td>0.9231s</td><td>0.8187</td><td>0.7558s</td></tr><tr><td>5</td><td>0.9048</td><td>0.9048s</td><td>0.7788</td><td>0.7047s</td></tr><tr><td>Total</td><td></td><td></td><td></td><td>4.0728s</td></tr></table>

Table K.3 Calculation of the Present Value of Expected Payoff (notional principal = 1)

<table><tr><td>Time (years)</td><td>Probability of Default</td><td>Recovery Rate</td><td>Expected Payoff ($)</td><td>Discount Factor</td><td>PV of Expected Payoff ($)</td></tr><tr><td>0.5</td><td>0.0198</td><td>0.4</td><td>0.0119</td><td>0.9753</td><td>0.0116</td></tr><tr><td>1.5</td><td>0.0194</td><td>0.4</td><td>0.0116</td><td>0.9277</td><td>0.0108</td></tr><tr><td>2.5</td><td>0.0190</td><td>0.4</td><td>0.0114</td><td>0.8825</td><td>0.0101</td></tr><tr><td>3.5</td><td>0.0186</td><td>0.4</td><td>0.0112</td><td>0.8395</td><td>0.0094</td></tr><tr><td>4.5</td><td>0.0183</td><td>0.4</td><td>0.0110</td><td>0.7985</td><td>0.0088</td></tr><tr><td>Total</td><td></td><td></td><td></td><td></td><td>0.0506</td></tr></table>

Table K.4 Calculation of the Present Value of Accrual Payment

<table><tr><td>Time (years)</td><td>Probability of Default</td><td>Expected Accrual Payment</td><td>Discount Factor</td><td>PV of Expected Accrual Payment</td></tr><tr><td>0.5</td><td>0.0198</td><td>0.0099s</td><td>0.9753</td><td>0.0097s</td></tr><tr><td>1.5</td><td>0.0194</td><td>0.0097s</td><td>0.9277</td><td>0.0090s</td></tr><tr><td>2.5</td><td>0.0190</td><td>0.0095s</td><td>0.8825</td><td>0.0084s</td></tr><tr><td>3.5</td><td>0.0186</td><td>0.0093s</td><td>0.8395</td><td>0.0078s</td></tr><tr><td>4.5</td><td>0.0183</td><td>0.0091s</td><td>0.7985</td><td>0.0073s</td></tr><tr><td>Total</td><td></td><td></td><td></td><td>0.0422s</td></tr></table>

Table K.3 shows the calculation of the present value of the expected payoff assuming a notional principal of  \$1. As mentioned earlier, we are assuming that defaults always happen halfway through a year. For example, there is a 0.0190 probability of a payoff halfway through the third year. Given that the recovery rate is 40\%, the expected payoff at this time is  $0.0190 \times 0.6 \times 1 = 0.0114$ . The present value of the expected payoff is  $0.0114e^{-0.05 \times 2.5} = 0.0101$ . The total present value of the expected payoffs in Table K.3 is 0.0506.

As a final step, we evaluate in Table K.4 the accrual payment made in the event of a default. These accrual payments arise because the spread payments  $s$  are made in arrears so that, when a default occurs, a portion of a spread payment is owed. Consider the third year. There is a 0.0190 probability of a default halfway through the year. An accrual payment of 0.5s is due if there is a default. The expected accrual payment halfway through the third year is therefore  $0.0190 \times 0.5s = 0.0095s$ . Its present value is  $0.0095se^{-0.05 \times 2.5} = 0.0084s$ . The total present value of the expected accrual payments is 0.0422s.

From Tables K.2 and K.4, the present value of the expected payments is

$$
4.0728s + 0.0422s = 4.1150s
$$

From Table K.3, the present value of the expected payoff is 0.0506. Equating the two, the CDS spread for a new CDS is given by

$$
4.1150s = 0.0506
$$ or  $s = 0.0123$ . The mid-market spread should be 0.0123 times the principal or 123 basis points per year. (This is roughly what we would expect from the relationship in equation (17.3): the recovery rate is  $40\%$  and the hazard rate is  $2\%$  so that equation (17.3) predicts a spread of  $0.02 \times 0.6 = 0.012$ .)


This example is designed to illustrate the calculation methodology. In practice, we are likely to find that the calculations are more extensive than those in Table K.2 to K.4 because (a) payments are often made more frequently than once a year and (b) we want to assume that defaults can happen more frequently than once a year.

# K.1 Marking to Market a CDS

At the time it is negotiated, a CDS, like most other swaps, is worth close to zero. At later times it may have a positive or negative value. Suppose, for example, the credit default swap in our example had been negotiated some time ago for a spread of 150 basis points, the present value of the payments by the buyer would be  $4.1150 \times 0.0150 = 0.0617$  and the present value of the payoff would be 0.0506, as given by Table K.3. The value of the swap to the seller would therefore be  $0.0617 - 0.0506$  or 0.0111 times the principal. Similarly, the mark-to-market value of the swap to the buyer of protection would be  $-0.0111$  times the principal.

The RMFI software that accompanies this book and can be downloaded from the author's website includes a worksheet for carrying out the above calculations.


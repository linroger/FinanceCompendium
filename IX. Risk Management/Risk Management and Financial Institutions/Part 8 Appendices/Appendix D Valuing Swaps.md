---
title: Appendix D Valuing Swaps
parent_directory: Part 8 Appendices
formatted: 2025-12-21 03:46:25 PM
formatter_model: claude-sonnet-4-5-20250929
cli-tool: opencode
primary_tags:
  - swap valuation
  - interest rate swaps
  - currency swaps
secondary_tags:
  - forward rates
  - bootstrap method
  - discount factors
  - notional principal
  - floating rates
  - fixed rates
  - semiannual compounding
  - exchange rates
cssclasses: academia
---

# Appendix D: Valuing Swaps

A plain vanilla interest rate swap can be valued by assuming that the interest rates that are realized in the future equal today's forward interest rates. As an example, consider an interest rate swap that has 14 months remaining and a notional principal of 100 million. A fixed rate of 5\% per annum is received and floating rate is paid, with exchanges taking place every six months. Assume that (a) four months ago, the six-month floating rate was 4\%, (b) the forward floating interest rate for a six-month period starting in two months is 4.6\%, and (c) the forward floating rate for a six-month period starting in eight months is 5.2\%. All rates are expressed with semiannual compounding. The floating rate that will be exchanged in two months is equal the rate four months ago and is known. Assuming that forward rates are realized, the other two cash flows on the swap are as shown in Table D.1 (For example, in eight months the fixed-rate cash flow received is 0.5 \times 0.05 \times 100, or \$2.5 million; the floating-rate cash flow paid is 0.5 \times 0.046 \times 100, or \$2.3 million.) The value of the swap is the present value of the net cash flows in the final column.^{1}

## D.1 Floating Forward Rates

Floating forward rates can be calculated from swap rates using a bootstrap method. Suppose that the 6-month, 12-month, 18-month, and 24-month swap rates (i.e., the fixed rates exchanged for the floating rate) are  $3.8\%$ ,  $4.3\%$ ,  $4.6\%$ , and  $4.75\%$  (with continuous compounding). Suppose that in a two-year swap where cash flows are exchanged every six months the swap rate is  $5\%$ .

Table D.1 Valuing an Interest Rate Swap by Assuming Forward Rates Are Realized

<table><tr><td>Time</td><td>Fixed Cash Flow ($ million)</td><td>Floating Cash Flow ($ million)</td><td>Net Cash Flow ($ million)</td></tr><tr><td>2 months</td><td>2.5</td><td>-2.0</td><td>0.5</td></tr><tr><td>8 months</td><td>2.5</td><td>-2.3</td><td>0.2</td></tr><tr><td>14 months</td><td>2.5</td><td>-2.6</td><td>-0.1</td></tr></table> Suppose further that the 0.5-year floating rate is  $4\%$ , the forward rate for the period between 6 months and 12 months is  $5\%$ , and the forward rate for the period between 12 months and 18 months is  $5.5\%$  (all semiannually compounded). The value of a two-year swap where floating is received and  $5\%$  is paid is zero. The value of the first exchange is

$$
0.5 \times (0.04 - 0.05) \times 100 \times e^{-0.038 \times 0.5} = -0.4906
$$

The value of the second exchange is

$$
0.5 \times (0.05 - 0.05) \times 100 \times e^{-0.043 \times 1} = 0
$$

The value of the third exchange is

$$
0.5 \times (0.055 - 0.05) \times 100 \times e^{-0.046 \times 1.5} = 0.2333
$$

The total value of the first three payments is  $-0.4906 + 0 + 0.2333 = -0.2573$ . Suppose that the (assumed unknown) forward rate for the final payment is  $F$ . For the swap to be worth zero, we must have

$$
0.5 \times (F - 0.05) \times 100 \times e^{-0.0475 \times 2} = 0.2573
$$

This gives  $F = 0.05565$  or  $5.565\%$ .

## D.2 Currency Swaps

A currency swap can be valued by assuming that exchange rates in the future equal today's forward exchange rates. As an example, consider a currency swap in which  $4\%$  will be received in GBP and  $2\%$  will be paid in USD once a year. The principals in the two currencies are 8 million USD and 5 million GBP. The swap will last for another three years. The swap cash flows are shown in the second and third columns of Table D.2. The forward exchange rates are (we assume) those shown in the fourth column. These are used to convert the GBP cash flows to USD. The final column shows the net cash flows. The value of the swap is the present value of these cash flows.

Table D.2 Valuing a Currency Swap by Assuming Forward Exchange Rates Are Realized (all cash flows in millions)

<table><tr><td>Time</td><td>USD Cash Flow</td><td>GBP Cash Flow</td><td>Forward Exchange Rate</td><td>USD Value of GBP Cash Flow</td><td>Net Cash Flow in USD</td></tr><tr><td>1</td><td>-0.16</td><td>0.2</td><td>1.2000</td><td>0.240</td><td>+0.080</td></tr><tr><td>2</td><td>-0.16</td><td>0.2</td><td>1.2400</td><td>0.248</td><td>+0.088</td></tr><tr><td>3</td><td>-0.16</td><td>0.2</td><td>1.2800</td><td>0.256</td><td>+0.096</td></tr><tr><td>3</td><td>-8.00</td><td>5.0</td><td>1.8800</td><td>6.400</td><td>-1.600</td></tr></table>

An alternative approach (which gives the same valuation) is to regard the swap as a long position in a GBP bond and a short position in a USD bond. Each bond can be valued in its own currency in the usual way and the current exchange rate can be used to convert the value of the GBP bond from GBP to USD.

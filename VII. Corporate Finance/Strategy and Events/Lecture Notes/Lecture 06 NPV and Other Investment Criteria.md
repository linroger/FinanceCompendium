---
aliases:
  - NPV and Other Investment Criteria
tags:
key_concepts:
parent_directory: Lecture Notes
cssclasses: academia
title: Lecture 06 NPV and Other Investment Criteria
linter-yaml-title-alias: NPV and Other Investment Criteria
---

Dave Schabes

January 19, 2023

# Net Present Value

- Recall:

$$
N P V = C _ {0} + \frac {C _ {1}}{1 + r} + \frac {C _ {2}}{(1 + r) ^ {2}} + \dots
$$

- Vegetron worth $10 mm

$\circ$  Should cash be used for project X?  
○ NPV rule: Invest if project X's NPV > 0  
$0$ 9 mm of Other Assets;  $\$ 1$ mm cash

# Vegetron Project X

<table><tr><td colspan="3">Market Value ($ millions)</td></tr><tr><td>Asset</td><td>Reject Project X</td><td>Accept Project X</td></tr><tr><td>Cash</td><td>1</td><td>0</td></tr><tr><td>Other assets</td><td>9</td><td>9</td></tr><tr><td>Project X</td><td>0</td><td>PV</td></tr><tr><td></td><td>10</td><td>9 + PV</td></tr></table>

- How do we know that Vegetron's market value will equal the value of Vegetron's existing assets  $+ / -$  the PV of project X?

# Vegetron Project X

What's missing from analysis?

# Vegetron Project X

What's missing from analysis?  
Discussion of risk

$\circ$  Fit with business model

Strategy  
Tactical

○ Competence  
○ Competitive response

- These determine the appropriate opportunity cost of capital

# Investment Criteria

- Many types of investment decisions

○ Mutual fund manager determining a portfolio choice  
$\circ$  Private equity fund assessing a new investment  
○ Information technology head deciding on a new accounting system  
○Head of retail banking division determining where to open a new branch

- All require financial and business analysis

# Company Choices with Retained Earnings

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/d110c16c79d136724de8ceeb867294fff768381270f89b0c48a6d8db343b661a.jpg)

- Investment in business  
- Return cash to shareholders – dividends and buybacks

# Quantitative Investment Criteria

- Net Present Value  
- Book Rate of Return  
Payback and Discounted Payback  
- Internal Rate of Return  
Profitability Index  
Money Multiple

# Net Present Value

Key points:

○ Money today is worth more than money in the future

Now true in almost every country after years of "financial repression"

$\circ$  NPV depends solely on forecasted cash flows and opportunity cost of capital

- Both are uncertain in the real world

$\mathrm{O}$  NPV values can be summed

- Allows comparison of projects with different time horizons

# Modern Portfolio Theory

- Assumptions underlying summing of project NPVs

○ Independence of project outcomes  
$\circ$  Risk adjusted returns are similar  
$\circ$  Based on Harry Markowitz's modern portfolio theory

Will cover later in quarter

$$
N P V (A + B) = N P V (A) + N P V (B)
$$

- Alternative measures may lack this capability

# Book Rate of Return

- Book Income/Book Assets

○ Have never seen this used

- Accounting terms

Capital investment

Operating expenses

- Represents average rate of return across business

○ Need to look at marginal return of new activities

# Payback and Discounted Payback

- When do I get my money back?

○ Helps people assess relative risk  
○ Often useful when discussing with people with little financial background

- Limitations

$\circ$  Ignores cash flows after payback date  

- Equally weights all cash flows

Less of an issue in low/no inflation countries

# Payback Period

- Discounted payback discounts cash flows as with NPV

○ Only measures through payback date

<table><tr><td colspan="7">Cash Payments ($)</td></tr><tr><td>Project</td><td>C0</td><td>C1</td><td>C2</td><td>C3</td><td>Payback Period (years)</td><td>NPV at 10%</td></tr><tr><td>A</td><td>-2,000</td><td>500</td><td>500</td><td>5,000</td><td>3</td><td>+2,624</td></tr><tr><td>B</td><td>-2,000</td><td>500</td><td>1,800</td><td>0</td><td>2</td><td>-58</td></tr><tr><td>C</td><td>-2,000</td><td>1,800</td><td>500</td><td>0</td><td>2</td><td>-50</td></tr></table>

- Often used in conjunction with IRR and NPV  
- Have not seen "payback rule" used as discussed in text

# Discounted Payback Period

Measure NPV of cashflows until end of payback period

○ Have never seen this used – would use NPV and IRR  

- Look at payback period to assess

Potential risks over early part of investment period  
Time until return on investment

<table><tr><td colspan="7">Discounted Cash Flows ($)</td></tr><tr><td>Project</td><td>C0</td><td>C1</td><td>C2</td><td>C3</td><td>Discounted Payback Period (years)</td><td>NPV at 20%</td></tr><tr><td>A</td><td>-2,000</td><td>500/1.10 = 455</td><td>500/1.10² = 413</td><td>5,000/1.10³ = 3,757</td><td>3</td><td>+2,624</td></tr><tr><td>B</td><td>-2,000</td><td>500/1.10 = 455</td><td>1,800/1.10² = 1,488</td><td></td><td>-</td><td>-58</td></tr><tr><td>C</td><td>-2,000</td><td>1,800/1.10 = 1,636</td><td>500/1.10² = 413</td><td></td><td>2</td><td>+50</td></tr></table>

# Internal Rate of Return (IRR)

- IRR is the rate of return where the NPV equals zero

○ For a single payout this may be calculated directly:

Zero Coupon Bond, Z, pays 100 in one year, prices today 95,

$$
I R R(Y T M) = \left(\frac{100}{95}\right) - 1 = 5.26\%
$$

- For multiple cash flows, IRR must be calculated through iterating, based on an initial guess
- Excel and financial calculators have functions to solve

# Internal Rate of Return (IRR)

- The general formula is:

$$
N P V = \sum_ {t = 1} ^ {T} \frac {C _ {t}}{(1 + I R R) ^ {t}} = 0
$$

- IRR calculators start with an initial guess, then raise or lower the discount rate until NPV goes to zero  
- The investment rule based on IRR is to choose investments where the IRRInvestment > Opportunity cost of capital

○ With caveats, IRR rule and NPV rule usually agree

# NPV and IRR

<table><tr><td colspan="4">IRR and NPV Calculation Chapter 5 Text Example</td></tr><tr><td>Discount Rate</td><td>50.00%</td><td></td><td></td></tr><tr><td>Period</td><td>0</td><td>1</td><td>2</td></tr><tr><td>Cash Flow (Ct)</td><td>-4000</td><td>2000</td><td>4000</td></tr><tr><td>Discount Factor</td><td>1</td><td>0.667</td><td>0.444</td></tr><tr><td>PV (Ct)</td><td>-4000.0</td><td>1333.33</td><td>1777.78</td></tr><tr><td>NPV</td><td>-888.89</td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td></tr><tr><td>IRR</td><td>28.08%</td><td>Guess = 0%</td><td></td></tr><tr><td>IRR</td><td>28.08%</td><td>Guess = 20%</td><td></td></tr></table>

- IRR measures rate of return  
- NPV may be positive, but de minimis, versus investment  
Why did I use two IRR guesses?

# IRR and NPV Example<sup>1</sup>

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/c5298b5949e3c8d23baf3ffeeb374bc28b6449891309b42f34d18fc713f3cf99.jpg)

# - IRR equals  $28.08\%$ .

# IRR Issues

- IRR contains built-in assumptions:

$\circ$  Interim cashflows are reinvested (or borrowed) at the IRR  

- Cash flows either all negative (positive) followed by all positive (negative)
- If the cashflows cannot be reinvested (borrowed) at IRR, return will be lower (borrowing cost higher)  
- If cash flows change sign more than once, may get multiple IRRs or no IRR

# IRR Issues

Lending and borrowing

<table><tr><td colspan="5">Cash Flows ($)</td></tr><tr><td>Project</td><td>C0</td><td>C1</td><td>IRR</td><td>NPV at 10%</td></tr><tr><td>A</td><td>-1,000</td><td>+1,500</td><td>+50%</td><td>+364</td></tr><tr><td>B</td><td>+1,000</td><td>-1,500</td><td>+50%</td><td>-364</td></tr></table>

- There is nothing wrong with the calculation above

○ Two sides of the same transaction

- Transaction unlikely to occur if  $10\%$  is the correct cost of capital for both parties

# IRR Issues

- Multiple IRRs – Helmsley Iron Example

<table><tr><td>Discount Rate</td><td>3.50%</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Period</td><td>0</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td></tr><tr><td>Cash Flow (Ct)</td><td>-30</td><td>10</td><td>10</td><td>10</td><td>10</td><td>10</td><td>10</td><td>10</td><td>10</td><td>10</td><td>-65</td></tr><tr><td>Discount Factor</td><td>1</td><td>0.966</td><td>0.934</td><td>0.902</td><td>0.871</td><td>0.842</td><td>0.814</td><td>0.786</td><td>0.759</td><td>0.734</td><td>0.709</td></tr><tr><td>PV (Ct)</td><td>-30.0</td><td>9.7</td><td>9.3</td><td>9.0</td><td>8.7</td><td>8.4</td><td>8.1</td><td>7.9</td><td>7.6</td><td>7.3</td><td>-46.1</td></tr><tr><td>NPV</td><td>0.00</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>IRR</td><td>3.5%</td><td>Guess =</td><td>0%</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>IRR</td><td>19.5%</td><td>Guess =</td><td>20%</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>

- $30 mm initial investment and$ 65 mm environmental cleanup costs in year 10  
- Provides $10 mm in cash flow years 2 through 9

# Helmsley Iron Example

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/fefd81adb0f6f89647c59a6030b601ab58c6451fd4d7de17774ed0193709b833.jpg)  
NPV Profile

# IRR Issues

- No IRR - text example

<table><tr><td>Discount Rate</td><td>10%</td><td></td><td></td></tr><tr><td>Period</td><td>0</td><td>1</td><td>2</td></tr><tr><td>Cash Flow (Ct)</td><td>1000</td><td>-3000</td><td>2500</td></tr><tr><td>Discount Factor</td><td>1</td><td>0.9091</td><td>0.8264</td></tr><tr><td>PV (Ct)</td><td>1000</td><td>-2727</td><td>2066</td></tr><tr><td>NPV</td><td>339</td><td></td><td></td></tr><tr><td>IRR</td><td>#NUM!</td><td></td><td></td></tr></table>

- NPV is either always positive or negative  
- One party is providing the other "free" money

# No IRR Example

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/f3c2b38405c4d9060de2e4b7a60e68eafce147965656a23712b7711c67633dbe.jpg)

- Other party willing to hand you NPV regardless of discount rate

# Mutually Exclusive Projects

- Common problem facing companies and investors

○ Only need one  
○ Limited resources – only negotiate one deal  
$\mathrm{O}$  Examples:

- New corporate accounting system
- Buy  
Build  
- Rent (Software as a Service)

Limited number of staff at an investment firm

# Machine Tool Example

- Manual versus computer controlled machine tool – only need one or the other

<table><tr><td colspan="5">Project D and E Cash Flows</td></tr><tr><td>Project</td><td>C(0)</td><td>C(1)</td><td>IRR</td><td>NPV @ 10%</td></tr><tr><td>D</td><td>-10,000</td><td>20,000</td><td>100%</td><td>$     8,181.82</td></tr><tr><td>E</td><td>-20,000</td><td>35,000</td><td>75%</td><td>$    11,818.18</td></tr><tr><td>E - D</td><td>-10,000</td><td>15,000</td><td>50%</td><td>$   3,636.36</td></tr></table>

- E - D shows incremental IRR and NPV from choosing E over D

$\circ$  Same return as D on first  $10,000 and 50 \%$ return on second  $\$ 10,000 –$  well above opportunity cost of capital

# Machine Tool Example

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/4bf50ceb978fa08b52ce9048a7bb6024e75e91acb54ed43f04681725ccea3dfd.jpg)

- Incremental IRR is  $50\%$ , where NPV of the projects are equal

# Differing Cash Flows Over Time

# - Projects F and G

$\bigcirc$  Equal investment amounts

- Cash flows over different time horizons  
- Impact of discount rate – uncertainty around

○ Consider how long money is "locked up"

Reinvestment risk  
Uncertainty regarding potential alternatives

<table><tr><td colspan="12">Projects F and G Comparison</td></tr><tr><td>Project</td><td>C(0)</td><td>C(1)</td><td>C(2)</td><td>C(3)</td><td>C(4)</td><td>C(5)</td><td>C(6)</td><td>C(7)</td><td>C(8)</td><td>IRR</td><td>NPV @10%</td></tr><tr><td>F</td><td>-10,000</td><td>6,000</td><td>6,000</td><td>6,000</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>36.31%</td><td>$4,921.11</td></tr><tr><td>G</td><td>-10,000</td><td>3,000</td><td>3,000</td><td>3,000</td><td>3,000</td><td>3,000</td><td>3,000</td><td>3,000</td><td>3,000</td><td>24.95%</td><td>$6,004.78</td></tr><tr><td>G-F</td><td>0</td><td>-3,000</td><td>-3,000</td><td>-3,000</td><td>3,000</td><td>3,000</td><td>3,000</td><td>3,000</td><td>3,000</td><td>13.94%</td><td>1,083.67</td></tr></table>

# Differing Cash Flows Over Time

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/62c1816a8b3a573144f7557cffe7b993dd39c819b1cb7a233083d3c337101da1.jpg)

# Multiple Opportunity Costs of Capital

- There is rarely a single interest rate that covers all relevant time-periods

$\mathrm{O} \mathrm{A}$  "flat" yield curve  
O Unlikely to find the perfect discount rate or rates

- Focus on:

$\circ$  Getting the cash flows right and  
○ Understanding the qualitative risks and quantifying sensitivities to various changes in model inputs

# IRR Summary

- IRR focuses on rate of return versus alternatives  
- NPV focuses on net present value dollars earned over the life  
- Easier for many managers to think in terms of rate of return than evaluate NPV dollars  
- Many other qualitative factors in decision process:

$\circ$  Example: Risk Aversion – no one remembers if you made an extra $1,000 NPV but everyone remembers if your project was significantly late or over budget

# Choosing Investments With Limited Resources

- Acceptance of every positive NPV project ensures maximizing shareholder wealth

○ No firm has the resources to assess every potential project  
$\mathrm{O}$  Leads to capital rationing

- Often other critical resources effectively limit available capital

People - e.g. research scientists, developers  
○ Corporate competence

# Profitability Index

# - Assumptions:

$\circ$  Current year capital expenditure limited to $10 mm  
○ Three potential projects, requiring $20 mm investment

$$
P r o f i t a b i l i t y I n d e x = \frac {N P V}{I n v e s t m e n t}
$$

<table><tr><td colspan="6">Cash Flows ($ millions)</td><td></td></tr><tr><td>Project</td><td>C(0)</td><td>C(1)</td><td>C(2)</td><td>NPV @ 10%</td><td>Profitability Index</td><td>IRR</td></tr><tr><td>A</td><td>-10</td><td>30</td><td>5</td><td>$21.40</td><td>2.14</td><td>216%</td></tr><tr><td>B</td><td>-5</td><td>5</td><td>20</td><td>$16.07</td><td>3.21</td><td>156%</td></tr><tr><td>C</td><td>-5</td><td>5</td><td>15</td><td>$11.94</td><td>2.39</td><td>130%</td></tr></table>

# Profitability Index

- Now add fourth project to begin in one year

<table><tr><td colspan="6">Cash Flows ($ millions)</td><td></td></tr><tr><td>Project</td><td>C(0)</td><td>C(1)</td><td>C(2)</td><td>NPV @ 10%</td><td>Profitability Index</td><td>IRR</td></tr><tr><td>A</td><td>-10</td><td>30</td><td>5</td><td>$21.40</td><td>2.14</td><td>216%</td></tr><tr><td>B</td><td>-5</td><td>5</td><td>20</td><td>$16.07</td><td>3.21</td><td>156%</td></tr><tr><td>C</td><td>-5</td><td>5</td><td>15</td><td>$11.94</td><td>2.39</td><td>130%</td></tr><tr><td>D</td><td>0</td><td>-40</td><td>60</td><td>$13.22</td><td>0.36</td><td>50%</td></tr></table>

- Total NPV of A plus D > B plus C, $34.62 > $28.01  
Profitability Index does not work with additional constraint(s)

# NPV Comparison

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/17516fca7f00065b79f2eae45342e11602f83817ffd768ef2050551d8a44b5de.jpg)

# Profitability Index Comparison

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/8070ff98cd5d429831d5f700702de15620c4048efe458b93f41a94c23bc97be3.jpg)

- Assumes D only available project in year 1

# Making Investment Decisions with the NPV Rule

